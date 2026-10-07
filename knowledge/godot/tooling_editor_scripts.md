---
title: "Tool Scripts and Editor Plugins"
domain: godot
tags: [tool, editorplugin, tooling]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/plugins/running_code_in_the_editor.html
  - https://docs.godotengine.org/en/stable/tutorials/plugins/editor/making_plugins.html
source_type: official
source_priority: P1
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 800
status: stable
---

# Quando consultar
Automação de conteúdo, editores customizados, gizmos, importação e ferramentas internas.

# Princípios
`@tool` executa código no editor. EditorPlugin estende o editor.

# Padrões
- usar ferramenta quando elimina trabalho repetitivo real;
- separar código editor/runtime;
- inicializar em `_enter_tree()` e limpar em `_exit_tree()`;
- versionar ferramenta com o projeto.

# Riscos
Mudanças feitas por tool scripts no editor podem ser permanentes. Trabalhe com version control e operações previsíveis.

# Anti-patterns
- `@tool` em gameplay sem necessidade;
- plugin enorme antes de validar pipeline;
- automação destrutiva sem preview/undo próprio.
