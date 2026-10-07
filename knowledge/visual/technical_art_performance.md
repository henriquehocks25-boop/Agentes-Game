---
title: "Technical Art Performance"
domain: visual
tags: [technical-art, performance, gpu, renderer]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/scripting/debug/debugger_panel.html
  - https://docs.godotengine.org/en/stable/tutorials/rendering/renderers.html
source_type: official
source_priority: P1
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 750
status: stable
---

# Princípios
Qualidade alvo inclui orçamento técnico. Visual Profiler separa custo de rendering CPU/GPU; renderer determina feature set.

# Verifique
- draw calls;
- overdraw;
- shadow cost;
- transparent particles;
- texture memory;
- shader complexity;
- lights;
- resolução;
- renderer/plataforma.

# Anti-patterns
- otimizar olhando apenas FPS;
- usar feature não suportada no renderer alvo;
- reduzir arte sem localizar gargalo;
- benchmark em cena vazia.
