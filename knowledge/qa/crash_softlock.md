---
title: "Crash and Softlock Investigation"
domain: qa
tags: [crash, softlock, repro, blocker]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/scripting/debug/index.html
source_type: official-plus-derived
source_priority: P0-D
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 600
status: stable
---

# Crash
Capture erro/stack, cena, ação anterior, frequência e estado relevante.

# Softlock
Procure estados sem transição de saída: pause, death, loading, modal, cutscene, inventory, scene change e save/load.

# Repro
Reduza para menor sequência determinística possível.

# Severidade
Crash recorrente ou softlock no progresso principal é CRITICAL ou BLOCKER conforme alcance.
