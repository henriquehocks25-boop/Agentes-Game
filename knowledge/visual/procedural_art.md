---
title: "Procedural and Code-Generated Art"
domain: visual
tags: [procedural-art, code-art, noise, sdf]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/shaders/index.html
source_type: official-plus-derived
source_priority: P1-D
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: medium-high
token_budget: 850
status: stable
---

# Princípios
Procedural é método de produção, não estilo. Qualidade depende de direção, restrições e crítica visual.

# Bom para
- fogo, energia, água;
- fog, sky;
- patterns/masks;
- terrain/detail;
- VFX;
- variações controladas.

# Pipeline
brief visual → parâmetros limitados → gerar → capturar → comparar com art bible → ajustar.

# Anti-patterns
- noise cru como arte final;
- formas geométricas básicas sem refinamento;
- randomização ilimitada;
- gerar variações sem seleção/curadoria.
