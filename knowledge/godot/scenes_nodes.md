---
title: "Scenes and Nodes"
domain: godot
tags: [scenes, nodes, composition, scenetree]
source_urls:
  - https://docs.godotengine.org/en/stable/getting_started/step_by_step/nodes_and_scenes.html
  - https://docs.godotengine.org/en/stable/tutorials/best_practices/scene_organization.html
source_type: official
source_priority: P0
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 800
status: stable
---

# Princípios
Scenes são árvores reutilizáveis de Nodes. A cena deve representar uma unidade coesa com responsabilidade compreensível.

# Padrões
- prefira composição de cenas menores;
- root node deve representar semanticamente a unidade;
- exponha configuração por exports/Resources;
- mantenha subcena reutilizável independente de caminhos externos;
- use grupos quando a intenção é categoria/consulta, não parentesco.

# Anti-patterns
- Node para qualquer dado puro;
- hierarquia profunda sem função;
- `get_node("../../../../")`;
- cena que conhece detalhes internos de muitas outras cenas.
