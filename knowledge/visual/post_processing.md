---
title: "Post Processing"
domain: visual
tags: [post, tonemap, fog, glow]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/3d/environment_and_post_processing.html
  - https://docs.godotengine.org/en/stable/tutorials/rendering/renderers.html
source_type: official
source_priority: P1
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 700
status: stable
---

# Princípios
Pós é acabamento, não fundação. Renderer define disponibilidade de features.

# Padrões
- tonemap/exposure primeiro;
- glow moderado;
- fog com função de profundidade;
- efeitos customizados só com necessidade;
- testar UI junto.

# Anti-patterns
- vignette/aberration/grain por padrão;
- pós mascarando material/lighting fraco;
- recurso Forward+ usado sem fallback em Mobile/Compatibility.
