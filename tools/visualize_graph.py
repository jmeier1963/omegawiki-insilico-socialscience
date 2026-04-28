#!/usr/bin/env python3
"""Generate an interactive vis.js graph of the ΩmegaWiki knowledge graph.

Usage:
    python tools/visualize_graph.py wiki/ [--output wiki/graph/graph.html]

Requires internet access to load vis.js from CDN (unpkg.com).
No external Python dependencies — stdlib only.
"""

import argparse
import json
import pathlib
import re
import sys

# ── Color palettes ────────────────────────────────────────────────────────────

NODE_COLORS = {
    "papers":      {"background": "#4e79a7", "border": "#2d5a8a", "highlight": {"background": "#6b9fc8", "border": "#2d5a8a"}},
    "concepts":    {"background": "#f28e2b", "border": "#c06a10", "highlight": {"background": "#f5ac60", "border": "#c06a10"}},
    "foundations": {"background": "#76b7b2", "border": "#4a8f8a", "highlight": {"background": "#99cec9", "border": "#4a8f8a"}},
    "claims":      {"background": "#e15759", "border": "#b52b2d", "highlight": {"background": "#ea8183", "border": "#b52b2d"}},
    "topics":      {"background": "#59a14f", "border": "#3a7233", "highlight": {"background": "#7dc472", "border": "#3a7233"}},
    "people":      {"background": "#b07aa1", "border": "#7d4d72", "highlight": {"background": "#c89fba", "border": "#7d4d72"}},
    "ideas":       {"background": "#ff9da7", "border": "#d96b77", "highlight": {"background": "#ffbec5", "border": "#d96b77"}},
    "experiments": {"background": "#9c755f", "border": "#6e4f3e", "highlight": {"background": "#b89384", "border": "#6e4f3e"}},
}

EDGE_COLORS = {
    "supports":      "#59a14f",
    "contradicts":   "#e15759",
    "extends":       "#4e79a7",
    "addresses_gap": "#f28e2b",
    "derived_from":  "#b07aa1",
    "inspired_by":   "#edc948",
    "tested_by":     "#76b7b2",
    "invalidates":   "#d62728",
    "supersedes":    "#9c755f",
}

EDGE_DASHED = {"contradicts", "invalidates"}

NODE_DIRS = ["papers", "concepts", "foundations", "claims", "topics", "people", "ideas", "experiments"]

# ── Frontmatter parser (stdlib only) ─────────────────────────────────────────

def _fm_scalar(fm: str, key: str) -> str:
    m = re.search(rf'^{key}:\s*["\']?(.*?)["\']?\s*$', fm, re.MULTILINE)
    return m.group(1).strip("\"'") if m else ""

def parse_frontmatter(text: str) -> dict:
    m = re.match(r"^---\n(.*?\n)---", text, re.DOTALL)
    if not m:
        return {}
    fm = m.group(1)
    meta: dict = {}
    for key in ("title", "domain", "status", "venue", "year"):
        v = _fm_scalar(fm, key)
        if v:
            meta[key] = v
    im = re.search(r"^importance:\s*(\d)", fm, re.MULTILINE)
    if im:
        meta["importance"] = int(im.group(1))
    cm = re.search(r"^confidence:\s*([\d.]+)", fm, re.MULTILINE)
    if cm:
        meta["confidence"] = float(cm.group(1))
    tags_m = re.search(r"^tags:\s*\[(.*?)\]", fm, re.MULTILINE | re.DOTALL)
    if tags_m:
        meta["tags"] = [t.strip().strip("\"'") for t in tags_m.group(1).split(",") if t.strip()]
    return meta

# ── Data collection ───────────────────────────────────────────────────────────

def collect_nodes(wiki_root: pathlib.Path) -> dict:
    nodes = {}
    for dir_name in NODE_DIRS:
        d = wiki_root / dir_name
        if not d.exists():
            continue
        for md in sorted(d.glob("*.md")):
            slug = md.stem
            node_id = f"{dir_name}/{slug}"
            text = md.read_text(encoding="utf-8", errors="ignore")
            meta = parse_frontmatter(text)
            nodes[node_id] = {
                "id": node_id,
                "type": dir_name,
                "slug": slug,
                "title": meta.get("title") or slug.replace("-", " ").title(),
                "importance": meta.get("importance", 3),
                "domain": meta.get("domain", ""),
                "venue": meta.get("venue", ""),
                "year": meta.get("year", ""),
                "status": meta.get("status", ""),
                "confidence": meta.get("confidence"),
                "tags": meta.get("tags", []),
            }
    return nodes


def collect_edges(wiki_root: pathlib.Path) -> list:
    edges_file = wiki_root / "graph" / "edges.jsonl"
    if not edges_file.exists():
        return []
    edges = []
    for line in edges_file.read_text(encoding="utf-8").splitlines():
        line = line.strip()
        if line:
            try:
                edges.append(json.loads(line))
            except json.JSONDecodeError:
                pass
    return edges

# ── vis.js dataset builders ───────────────────────────────────────────────────

def build_vis_nodes(nodes: dict) -> list:
    vis_nodes = []
    for node_id, n in nodes.items():
        colors = NODE_COLORS.get(n["type"], {"background": "#aaa", "border": "#666"})
        if n["type"] == "papers":
            size = 8 + (n["importance"] - 1) * 5   # 8–28
        elif n["type"] == "foundations":
            size = 20
        elif n["type"] in ("claims", "topics"):
            size = 15
        else:
            size = 11

        raw_title = n["title"]
        label = (raw_title[:38] + "…") if len(raw_title) > 38 else raw_title

        tt = [f"<b>{raw_title}</b>", f"<i>{n['type']}</i>"]
        if n["domain"]:
            tt.append(f"Domain: {n['domain']}")
        if n["type"] == "papers":
            if n["venue"]:
                tt.append(f"Venue: {n['venue']}" + (f" {n['year']}" if n["year"] else ""))
            tt.append(f"Importance: {'★' * n['importance']}{'☆' * (5 - n['importance'])}")
        if n["status"]:
            tt.append(f"Status: {n['status']}")
        if n["confidence"] is not None:
            tt.append(f"Confidence: {n['confidence']:.0%}")
        if n["tags"]:
            tt.append("Tags: " + ", ".join(n["tags"][:5]))

        vis_nodes.append({
            "id": node_id,
            "label": label,
            "title": "<br>".join(tt),
            "color": colors,
            "size": size,
            "group": n["type"],
            "font": {"size": 10, "color": "#222"},
        })
    return vis_nodes


def build_vis_edges(edges: list, known_nodes: set) -> list:
    vis_edges = []
    for i, e in enumerate(edges):
        src, tgt, etype = e.get("from", ""), e.get("to", ""), e.get("type", "supports")
        if src not in known_nodes or tgt not in known_nodes:
            continue
        evidence = e.get("evidence", "")
        short_ev = (evidence[:180] + "…") if len(evidence) > 180 else evidence
        color = EDGE_COLORS.get(etype, "#999999")
        vis_edges.append({
            "id": i,
            "from": src,
            "to": tgt,
            "label": etype.replace("_", " "),
            "title": f"<b>{etype}</b><br>{short_ev}",
            "color": {"color": color, "highlight": color, "opacity": 0.75},
            "dashes": etype in EDGE_DASHED,
            "arrows": "to",
            "font": {"size": 8, "color": "#555", "background": "rgba(255,255,255,0.85)", "strokeWidth": 0},
            "smooth": {"type": "curvedCW", "roundness": 0.12},
            "_etype": etype,  # kept for JS filter, stripped before serialization
        })
    return vis_edges

# ── HTML template ─────────────────────────────────────────────────────────────

HTML_TEMPLATE = """\
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ΩmegaWiki Knowledge Graph</title>
<script src="https://unpkg.com/vis-network@9.1.9/standalone/umd/vis-network.min.js"></script>
<style>
  * { box-sizing: border-box; margin: 0; padding: 0; }
  body { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
         display: flex; height: 100vh; overflow: hidden; background: #1a1a2e; color: #e0e0e0; }

  /* ── Sidebar ── */
  #sidebar {
    width: 260px; min-width: 200px; padding: 14px 12px; overflow-y: auto;
    background: #16213e; border-right: 1px solid #0f3460; display: flex;
    flex-direction: column; gap: 14px; font-size: 12px;
  }
  #sidebar h1 { font-size: 14px; font-weight: 700; color: #e0e0e0; letter-spacing: 0.04em; }
  #sidebar h2 { font-size: 11px; font-weight: 600; text-transform: uppercase;
                letter-spacing: 0.08em; color: #888; margin-bottom: 6px; }

  /* search */
  #search { width: 100%; padding: 5px 8px; border-radius: 4px;
            border: 1px solid #0f3460; background: #1a1a2e; color: #e0e0e0;
            font-size: 12px; outline: none; }
  #search:focus { border-color: #4e79a7; }

  /* filter buttons */
  .filter-group { display: flex; flex-wrap: wrap; gap: 5px; }
  .filter-btn {
    padding: 3px 8px; border-radius: 12px; border: 1.5px solid transparent;
    cursor: pointer; font-size: 11px; font-weight: 500; transition: opacity 0.15s;
  }
  .filter-btn.off { opacity: 0.35; }

  /* stats */
  #stats { color: #888; font-size: 11px; line-height: 1.6; }

  /* legend swatches */
  .swatch { display: inline-block; width: 10px; height: 10px;
            border-radius: 50%; margin-right: 5px; vertical-align: middle; }
  .edge-swatch { display: inline-block; width: 18px; height: 3px;
                 border-radius: 2px; margin-right: 5px; vertical-align: middle; }
  .legend-row { display: flex; align-items: center; margin-bottom: 4px; }
  .legend-label { font-size: 11px; color: #bbb; }

  /* layout controls */
  #layout-btns { display: flex; flex-wrap: wrap; gap: 5px; }
  .ctrl-btn {
    padding: 4px 9px; border-radius: 4px; border: 1px solid #0f3460;
    background: #1a1a2e; color: #bbb; cursor: pointer; font-size: 11px;
    transition: background 0.15s;
  }
  .ctrl-btn:hover { background: #0f3460; color: #fff; }

  /* info panel */
  #info {
    flex: 1; background: #16213e; border-radius: 4px; padding: 8px;
    font-size: 11px; color: #aaa; line-height: 1.5; overflow-y: auto;
    min-height: 80px; border: 1px solid #0f3460;
  }
  #info b { color: #e0e0e0; }

  /* ── Canvas ── */
  #network { flex: 1; height: 100vh; }
</style>
</head>
<body>

<div id="sidebar">
  <h1>ΩmegaWiki Graph</h1>

  <div>
    <h2>Search</h2>
    <input id="search" type="text" placeholder="Filter nodes by name…">
  </div>

  <div>
    <h2>Node types</h2>
    <div class="filter-group" id="node-filters"></div>
  </div>

  <div>
    <h2>Edge types</h2>
    <div class="filter-group" id="edge-filters"></div>
  </div>

  <div>
    <h2>Layout</h2>
    <div id="layout-btns">
      <button class="ctrl-btn" onclick="setLayout('physics')">Physics</button>
      <button class="ctrl-btn" onclick="setLayout('hierarchical')">Hierarchy</button>
      <button class="ctrl-btn" onclick="network.fit()">Fit all</button>
      <button class="ctrl-btn" onclick="toggleEdgeLabels()">Labels</button>
    </div>
  </div>

  <div>
    <h2>Node legend</h2>
    <div id="node-legend"></div>
  </div>

  <div>
    <h2>Edge legend</h2>
    <div id="edge-legend"></div>
  </div>

  <div id="stats"></div>

  <div>
    <h2>Selected</h2>
    <div id="info">Click a node to see details.</div>
  </div>
</div>

<div id="network"></div>

<script>
// ── Data ────────────────────────────────────────────────────────────────────
const ALL_NODES = __NODES_JSON__;
const ALL_EDGES = __EDGES_JSON__;

const NODE_COLORS = __NODE_COLORS_JSON__;
const EDGE_COLORS = __EDGE_COLORS_JSON__;
const NODE_DIRS   = __NODE_DIRS_JSON__;
const EDGE_TYPES  = __EDGE_TYPES_JSON__;

// ── State ────────────────────────────────────────────────────────────────────
const hiddenNodeTypes = new Set();
const hiddenEdgeTypes = new Set();
let showEdgeLabels = true;
let searchQuery = "";

// ── vis.js datasets ──────────────────────────────────────────────────────────
const nodesDS = new vis.DataSet(ALL_NODES);
const edgesDS = new vis.DataSet(ALL_EDGES);

const container = document.getElementById("network");
const data = { nodes: nodesDS, edges: edgesDS };

const options = {
  physics: {
    enabled: true,
    forceAtlas2Based: {
      gravitationalConstant: -60,
      centralGravity: 0.005,
      springLength: 120,
      springConstant: 0.06,
      damping: 0.5,
      avoidOverlap: 0.4,
    },
    solver: "forceAtlas2Based",
    stabilization: { iterations: 300, updateInterval: 25 },
  },
  interaction: {
    hover: true,
    tooltipDelay: 150,
    navigationButtons: true,
    keyboard: { enabled: true, bindToWindow: false },
  },
  nodes: { shape: "dot", borderWidth: 1.5, shadow: { enabled: true, size: 4, x: 2, y: 2 } },
  edges: { width: 1.5, selectionWidth: 2.5 },
};

const network = new vis.Network(container, data, options);

// ── Click → info panel ────────────────────────────────────────────────────────
network.on("click", function(params) {
  const info = document.getElementById("info");
  if (params.nodes.length > 0) {
    const nid = params.nodes[0];
    const node = ALL_NODES.find(n => n.id === nid);
    if (node) info.innerHTML = node.title;
  } else if (params.edges.length > 0) {
    const eid = params.edges[0];
    const edge = ALL_EDGES.find(e => e.id === eid);
    if (edge) info.innerHTML = edge.title;
  } else {
    info.textContent = "Click a node to see details.";
  }
});

// ── Filtering ────────────────────────────────────────────────────────────────
function applyFilters() {
  const q = searchQuery.toLowerCase();

  const filteredNodes = ALL_NODES
    .filter(n => !hiddenNodeTypes.has(n.group))
    .filter(n => !q || n.label.toLowerCase().includes(q) || n.id.toLowerCase().includes(q));

  const visibleIds = new Set(filteredNodes.map(n => n.id));

  const filteredEdges = ALL_EDGES
    .filter(e => !hiddenEdgeTypes.has(e._etype))
    .filter(e => visibleIds.has(e.from) && visibleIds.has(e.to));

  nodesDS.clear(); nodesDS.add(filteredNodes);
  edgesDS.clear(); edgesDS.add(filteredEdges);
  updateStats(filteredNodes.length, filteredEdges.length);
}

// ── Search ────────────────────────────────────────────────────────────────────
document.getElementById("search").addEventListener("input", function() {
  searchQuery = this.value.trim();
  applyFilters();
});

// ── Node type filter buttons ──────────────────────────────────────────────────
const nodeFilterDiv = document.getElementById("node-filters");
NODE_DIRS.forEach(type => {
  const count = ALL_NODES.filter(n => n.group === type).length;
  if (count === 0) return;
  const col = NODE_COLORS[type];
  const btn = document.createElement("button");
  btn.className = "filter-btn";
  btn.textContent = `${type} (${count})`;
  btn.style.background = col.background;
  btn.style.color = "#fff";
  btn.style.borderColor = col.border;
  btn.dataset.type = type;
  btn.onclick = () => {
    if (hiddenNodeTypes.has(type)) { hiddenNodeTypes.delete(type); btn.classList.remove("off"); }
    else { hiddenNodeTypes.add(type); btn.classList.add("off"); }
    applyFilters();
  };
  nodeFilterDiv.appendChild(btn);
});

// ── Edge type filter buttons ──────────────────────────────────────────────────
const edgeFilterDiv = document.getElementById("edge-filters");
EDGE_TYPES.forEach(etype => {
  const count = ALL_EDGES.filter(e => e._etype === etype).length;
  if (count === 0) return;
  const col = EDGE_COLORS[etype] || "#999";
  const btn = document.createElement("button");
  btn.className = "filter-btn";
  btn.textContent = `${etype.replace("_", " ")} (${count})`;
  btn.style.background = col;
  btn.style.color = "#fff";
  btn.style.borderColor = col;
  btn.dataset.etype = etype;
  btn.onclick = () => {
    if (hiddenEdgeTypes.has(etype)) { hiddenEdgeTypes.delete(etype); btn.classList.remove("off"); }
    else { hiddenEdgeTypes.add(etype); btn.classList.add("off"); }
    applyFilters();
  };
  edgeFilterDiv.appendChild(btn);
});

// ── Node legend ───────────────────────────────────────────────────────────────
const nodeLegend = document.getElementById("node-legend");
NODE_DIRS.forEach(type => {
  const count = ALL_NODES.filter(n => n.group === type).length;
  if (count === 0) return;
  const col = NODE_COLORS[type]?.background || "#aaa";
  nodeLegend.innerHTML += `<div class="legend-row">
    <span class="swatch" style="background:${col}"></span>
    <span class="legend-label">${type} <span style="color:#666">(${count})</span></span>
  </div>`;
});

// ── Edge legend ───────────────────────────────────────────────────────────────
const edgeLegend = document.getElementById("edge-legend");
EDGE_TYPES.forEach(etype => {
  const count = ALL_EDGES.filter(e => e._etype === etype).length;
  if (count === 0) return;
  const col = EDGE_COLORS[etype] || "#999";
  edgeLegend.innerHTML += `<div class="legend-row">
    <span class="edge-swatch" style="background:${col}"></span>
    <span class="legend-label">${etype.replace("_", " ")} <span style="color:#666">(${count})</span></span>
  </div>`;
});

// ── Stats ─────────────────────────────────────────────────────────────────────
function updateStats(nc, ec) {
  document.getElementById("stats").innerHTML =
    `Showing <b>${nc}</b> nodes &nbsp;·&nbsp; <b>${ec}</b> edges`;
}
updateStats(ALL_NODES.length, ALL_EDGES.length);

// ── Layout switcher ───────────────────────────────────────────────────────────
function setLayout(mode) {
  if (mode === "hierarchical") {
    network.setOptions({
      layout: { hierarchical: { enabled: true, direction: "UD", sortMethod: "directed", nodeSpacing: 120 } },
      physics: { enabled: false },
    });
  } else {
    network.setOptions({
      layout: { hierarchical: { enabled: false } },
      physics: { enabled: true, solver: "forceAtlas2Based" },
    });
  }
}

// ── Edge label toggle ─────────────────────────────────────────────────────────
function toggleEdgeLabels() {
  showEdgeLabels = !showEdgeLabels;
  const updates = ALL_EDGES.map(e => ({ id: e.id, label: showEdgeLabels ? e.label : "" }));
  edgesDS.update(updates);
}
</script>
</body>
</html>
"""

# ── Main ──────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(description="Visualize ΩmegaWiki knowledge graph")
    parser.add_argument("wiki_root", help="Path to wiki/ directory")
    parser.add_argument("--output", default="", help="Output HTML path (default: wiki/graph/graph.html)")
    args = parser.parse_args()

    wiki_root = pathlib.Path(args.wiki_root).resolve()
    if not wiki_root.is_dir():
        print(f"ERROR: {wiki_root} is not a directory", file=sys.stderr)
        sys.exit(1)

    output = pathlib.Path(args.output) if args.output else wiki_root / "graph" / "graph.html"
    output.parent.mkdir(parents=True, exist_ok=True)

    print("Collecting nodes…")
    nodes = collect_nodes(wiki_root)
    known_ids = set(nodes.keys())

    print("Collecting edges…")
    edges = collect_edges(wiki_root)

    print(f"Building vis.js datasets ({len(nodes)} nodes, {len(edges)} edges)…")
    vis_nodes = build_vis_nodes(nodes)
    vis_edges = build_vis_edges(edges, known_ids)

    # Edge types present in data
    edge_types = sorted({e.get("type", "supports") for e in edges})

    # Strip internal _etype key from serialized edges (kept on object for JS)
    # We pass it as a separate field so the JS can use it for filtering.
    # (vis.js ignores unknown fields on DataSet items.)

    html = HTML_TEMPLATE
    html = html.replace("__NODES_JSON__", json.dumps(vis_nodes, ensure_ascii=False))
    html = html.replace("__EDGES_JSON__", json.dumps(vis_edges, ensure_ascii=False))
    html = html.replace("__NODE_COLORS_JSON__", json.dumps(NODE_COLORS, ensure_ascii=False))
    html = html.replace("__EDGE_COLORS_JSON__", json.dumps(EDGE_COLORS, ensure_ascii=False))
    html = html.replace("__NODE_DIRS_JSON__", json.dumps(NODE_DIRS, ensure_ascii=False))
    html = html.replace("__EDGE_TYPES_JSON__", json.dumps(edge_types, ensure_ascii=False))

    output.write_text(html, encoding="utf-8")
    print(f"OK  Written to {output}")
    print(f"  {len(vis_nodes)} nodes, {len(vis_edges)} edges, {output.stat().st_size // 1024} KB")


if __name__ == "__main__":
    main()
