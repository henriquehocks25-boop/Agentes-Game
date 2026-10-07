---
title: "Project Architecture"
domain: godot
tags: [architecture, project-structure, composition]
source_urls:
  - https://docs.godotengine.org/en/stable/getting_started/introduction/godot_design_philosophy.html
  - https://docs.godotengine.org/en/stable/tutorials/best_practices/project_organization.html
  - https://docs.godotengine.org/en/stable/tutorials/best_practices/scene_organization.html
source_type: official
source_priority: P0
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 900
status: stable
---

# Quando consultar
Estrutura inicial, divisão de features, refactor de dependências e cenas reutilizáveis.

# Princípios
- Godot é scene-based e favorece composição.
- Agrupar assets perto das cenas que os usam melhora manutenção em projetos maiores.
- Cenas reutilizáveis devem minimizar dependência do ambiente externo.
- Estruture por responsabilidade e dependência, não apenas por tipo de arquivo.

# Padrões
- feature folder para cenas/scripts/assets relacionados;
- ponto de entrada claro;
- dados em Resources, comportamento em Nodes/Scenes;
- APIs explícitas entre sistemas.

# Anti-patterns
- script gigante central;
- caminhos rígidos atravessando muitas subcenas;
- dependência da posição exata na SceneTree;
- separar toda feature em pastas globais por extensão sem benefício.
