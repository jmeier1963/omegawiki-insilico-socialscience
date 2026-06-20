# ΩmegaWiki — in-silico social science (wiki surface)

> CS/AI ΩmegaWiki. Powered by Claude Code.
> This is the product surface. The **authoritative runtime contract is not here** —
> it lives at the repo root and in `runtime/`. This file is a short orientation only.

## Where the rules actually live

| Need | Source |
|---|---|
| Top-level contract / hard rules | `../CLAUDE.md` (root, synced from `i18n/en/CLAUDE.md`) |
| Page frontmatter fields, enums, defaults, lifecycle | `../runtime/schema/entities.yaml` |
| Page body section structure | `../runtime/templates/{kind}.md.tmpl` |
| Edge types, attributes, direction | `../runtime/schema/edges.yaml` |
| Forward → reverse link rules | `../runtime/schema/xref.yaml` |
| Slug rule, ownership, edge storage | `../runtime/schema/conventions.yaml` |
| Field/edge write permissions per skill | `../runtime/policy/writers.yaml` |
| Changing the contract / regen | `../runtime/CLAUDE.md` |

Do **not** re-document schema rules in this file — they drift. Read `runtime/` instead.

## Entity kinds (this wiki)

Per `runtime/schema/entities.yaml`: `papers/`, `concepts/`, `topics/`, `people/`,
`ideas/`, `methods/`, `experiments/`, `Summary/`, `foundations/`.
`graph/` is auto-generated (edit only via `tools/research_wiki.py`).

## Notes for this fork

- **No `claims/` entity.** Upstream's schema has no testable-claim type. The 147
  claim pages this fork accumulated were migrated into `ideas/` on 2026-06-20
  (status map: proposed/weakly_supported → `proposed`, supported → `validated`,
  challenged → `failed`). Each migrated idea keeps a `PROVENANCE` block with its
  original claim frontmatter (`evidence`/`confidence`/`conditions`) for recovery.
  Do not recreate a `claims/` directory; record testable propositions as `ideas`.
- `index.md` is the catalog (regenerate with `research_wiki.py rebuild-index`);
  `log.md` is append-only.
- This fork **tracks** its `wiki/` content and `raw/papers/` PDFs in git
  (unlike upstream's template `.gitignore`, which treats them as per-user data).
