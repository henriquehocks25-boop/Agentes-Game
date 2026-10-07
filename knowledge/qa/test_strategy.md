---
title: "Game QA Strategy"
domain: qa
tags: [qa, smoke, regression, edge]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/scripting/debug/index.html
source_type: official-plus-derived
source_priority: P0-D
last_verified: 2026-10-07
confidence: high
token_budget: 750
status: stable
---

# Camadas
1. smoke;
2. feature;
3. regression;
4. edge;
5. persistence;
6. presentation;
7. performance.

# Smoke mínimo
boot → menu → iniciar jogo → ação principal → pause/resume → salvar/carregar se existir → sair.

# Edge
zero/max, spam input, pause durante evento, reload, disconnect opcional, inventário vazio/cheio.

# Anti-patterns
- happy path apenas;
- bug sem repro;
- lista gigante sem severidade;
- confundir opinião de polish com falha crítica.
