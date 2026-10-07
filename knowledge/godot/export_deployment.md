---
title: "Export and Deployment"
domain: godot
tags: [export, deployment, presets, platform]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/export/index.html
  - https://docs.godotengine.org/en/stable/tutorials/editor/command_line_tutorial.html
source_type: official
source_priority: P1
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 700
status: stable
---

# Princípios
Export é parte do produto, não tarefa final. Presets, templates, permissões e requisitos de plataforma precisam ser validados cedo.

# Padrões
- preset versionado quando apropriado;
- build automatizável via CLI;
- smoke test no binário exportado;
- testar input, filesystem, shaders e resolução no alvo real;
- manter assets/source não necessários fora do pacote conforme configuração.

# Anti-patterns
- validar somente dentro do editor;
- deixar configuração de plataforma para release;
- presumir que comportamento desktop = mobile/web.
