---
title: "Navigation and AI Movement"
domain: godot
tags: [navigation, ai, pathfinding, navigationagent]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/navigation/index.html
  - https://docs.godotengine.org/en/stable/tutorials/navigation/navigation_optimizing_performance.html
source_type: official
source_priority: P1
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 850
status: stable
---

# Princípios
NavigationAgent auxilia pathfinding/path following/avoidance; o código do ator ainda aplica movimento.

# Arquitetura
separe percepção/decisão, path request, steering/movimento e animação/feedback.

# Performance
- não redefina target sem necessidade;
- evite queries redundantes;
- distribua recalculações caras entre frames quando apropriado;
- profile muitos agentes no hardware alvo.

# Anti-patterns
- IA inteira dentro do NavigationAgent;
- path recalculado todo frame;
- confundir pathfinding com tomada de decisão.
