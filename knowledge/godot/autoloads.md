---
title: "Autoloads vs Regular Nodes"
domain: godot
tags: [autoload, singleton, global-state, architecture]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/best_practices/autoloads_versus_regular_nodes.html
source_type: official
source_priority: P0
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 700
---

# Quando consultar
Ao propor managers globais, serviços persistentes, troca de cenas, estado global ou sistemas de amplo escopo.

# Princípios
A documentação oficial recomenda considerar cenas, Resources, tipos e sinais antes de transformar funcionalidade em estado global. Autoload é apropriado para sistemas realmente amplos e persistentes.

# Padrões
- Estado local fica na cena que o possui.
- Dados reutilizáveis podem ser Resources.
- Helpers sem estado podem usar funções estáticas.
- Autoload para escopo realmente global/persistente e responsabilidade bem definida.

# Anti-patterns
- "Manager" global para cada subsistema.
- Autoload que manipula internals de todas as cenas.
- Dependências globais invisíveis.
- Tratar Autoload como obrigação arquitetural.

# Nota de versão
Godot 4.1+ suporta `static var`, reduzindo alguns casos em que um autoload era usado só para compartilhar variável.
