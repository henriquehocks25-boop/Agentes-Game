---
title: "Systems Design"
domain: game_design
tags: [systems, emergence, dependencies]
source_urls:
  - https://www.cs.northwestern.edu/~hunicke/MDA.pdf
  - https://www.gamedeveloper.com/keyword/postmortems
source_type: paper-plus-primary-professional
source_priority: P1
last_verified: 2026-10-07
confidence: high
token_budget: 800
status: stable
---

# Princípios
Sistema vale pelas decisões e interações que produz, não pela quantidade de regras.

# Mapeie
- entradas;
- saídas;
- recursos;
- feedback;
- dependências;
- loops positivos/negativos;
- exploits;
- interação com outros sistemas.

# Anti-patterns
- feature órfã;
- complexidade sem decisão;
- dois loops competindo sem reforço;
- copiar sistema de referência sem entender função.
