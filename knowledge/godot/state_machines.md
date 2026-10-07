---
title: "State Machines"
domain: godot
tags: [state-machine, gameplay, ai]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/best_practices/scene_organization.html
source_type: pattern-derived
source_priority: D
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: medium-high
token_budget: 750
status: stable
---

# Quando consultar
Entidades com estados mutuamente exclusivos, transições claras e lógica crescente.

# Princípios
FSM é padrão de arquitetura, não requisito do Godot. Use quando reduz branches e torna transições explícitas.

# Opções
- enum + funções: poucos estados simples;
- objetos/classes State: comportamento complexo;
- Nodes State: útil quando integração com editor/composição compensa custo.

# Anti-patterns
- criar Node por estado trivial;
- FSM para variável booleana simples;
- estado acessar todos os internals da entidade;
- transições espalhadas sem autoridade.

# Regra
Escolha a forma mais simples que preserve clareza e testabilidade.
