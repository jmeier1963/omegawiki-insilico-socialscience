#!/usr/bin/env python3
from __future__ import annotations

import argparse
import re
import subprocess
from pathlib import Path


def strip_front_matter(text: str) -> str:
    if not text.startswith("---\n"):
        return text
    parts = text.split("\n---\n", 1)
    if len(parts) == 2:
        return parts[1]
    return text


def demote_headings(text: str) -> str:
    lines = []
    for line in text.splitlines():
        if line.startswith("#"):
            lines.append(f"#{line}")
        else:
            lines.append(line)
    return "\n".join(lines).strip()


def humanize_slug(path: Path) -> str:
    stem = path.stem.replace("-", " ")
    return re.sub(r"\s+", " ", stem).strip().title()


def build_chapter(chapter_title: str, files: list[Path]) -> str:
    blocks = [f"# {chapter_title}", ""]
    if not files:
        blocks.append("_No entries available._")
        blocks.append("")
        return "\n".join(blocks)

    for file_path in sorted(files):
        raw = file_path.read_text(encoding="utf-8")
        body = demote_headings(strip_front_matter(raw))
        blocks.append(f"## {humanize_slug(file_path)}")
        blocks.append("")
        blocks.append(body if body else "_Empty file._")
        blocks.append("")
    return "\n".join(blocks)


def main() -> None:
    parser = argparse.ArgumentParser(description="Build literature PDF from wiki markdown files.")
    parser.add_argument("--root", type=Path, default=Path.cwd(), help="Project root")
    parser.add_argument(
        "--output",
        type=Path,
        default=Path("wiki/outputs/literature-research-in-silico-science.pdf"),
        help="PDF output path relative to project root",
    )
    args = parser.parse_args()

    root = args.root.resolve()
    output_pdf = (root / args.output).resolve()
    output_pdf.parent.mkdir(parents=True, exist_ok=True)

    chapter_dirs = [
        ("Summary", root / "wiki/Summary"),
        ("Topics", root / "wiki/topics"),
        ("Ideas", root / "wiki/ideas"),
        ("Claims", root / "wiki/claims"),
    ]

    markdown_parts = [
        "% Literature Research in-silico science",
        "",
        "\\newpage",
        "",
    ]

    for chapter_name, chapter_dir in chapter_dirs:
        files = list(chapter_dir.glob("*.md")) if chapter_dir.exists() else []
        markdown_parts.append(build_chapter(chapter_name, files))
        markdown_parts.append("\\newpage")
        markdown_parts.append("")

    merged_md = "\n".join(markdown_parts).strip() + "\n"
    temp_md = output_pdf.with_suffix(".tmp.md")
    temp_md.write_text(merged_md, encoding="utf-8")

    cmd = [
        "pandoc",
        str(temp_md),
        "--toc",
        "--number-sections",
        "--pdf-engine=xelatex",
        "-V",
        "geometry:margin=1in",
        "-V",
        "mainfont=Times New Roman",
        "-o",
        str(output_pdf),
    ]
    subprocess.run(cmd, check=True)
    temp_md.unlink(missing_ok=True)

    print(f"PDF created: {output_pdf}")


if __name__ == "__main__":
    main()
