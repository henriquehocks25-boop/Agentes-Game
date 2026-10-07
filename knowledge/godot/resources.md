---
title: "Resources"
domain: godot
tags: [resources, data, configuration]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/scripting/resources.html
source_type: official
source_priority: P0
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 700
status: stable
---

# Quando consultar
Defs de armas, skills, inimigos, itens, configs, tabelas e assets reutilizáveis.

# Princípios
Resource é um contêiner de dados serializável e integrado ao editor. Nodes pertencem ao runtime/SceneTree; Resources são adequados para dados e configuração.

# Padrões
- custom Resource para definições;
- Resource injetado em Node via export;
- diferencie definição compartilhada de estado runtime;
- duplique ou instancie dados quando mutação compartilhada seria bug.

# Anti-patterns
- singleton global só para tabelas;
- duplicar números de design em scripts;
- mutar Resource compartilhado sem intenção.
