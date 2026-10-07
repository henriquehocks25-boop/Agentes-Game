---
title: "Low-Level Servers"
domain: godot
tags: [servers, low-level, performance]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/performance/using_servers.html
source_type: official
source_priority: P2
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 600
status: stable
---

# Quando consultar
Somente quando profiling mostra overhead relevante da SceneTree ou quando milhares de objetos exigem caminho mais baixo nível.

# Princípios
Server APIs podem reduzir overhead, mas aumentam complexidade e reduzem ergonomia da SceneTree.

# Regra
Não migrar para servers por antecipação. Meça antes e mantenha uma camada de abstração clara.
