---
title: "UI Controls and Layout"
domain: godot
tags: [ui, control, containers, focus, theme]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/ui/index.html
  - https://docs.godotengine.org/en/stable/tutorials/ui/gui_navigation.html
  - https://docs.godotengine.org/en/stable/tutorials/ui/gui_using_theme_editor.html
source_type: official
source_priority: P0
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 850
status: stable
---

# Princípios
- Controls + Containers resolvem layout responsivo.
- Theme centraliza aparência e estados.
- navegação por teclado/gamepad exige foco coerente.

# Padrões
- Containers antes de posicionamento manual;
- Theme resource para tipografia, cores, margens e estados;
- testar mouse, teclado e controle;
- considerar diferentes resoluções/aspect ratios.

# Anti-patterns
- pixel-perfect manual em toda tela;
- focus neighbors deixados ao acaso;
- estilos locais duplicados em cada botão;
- usar ações `ui_*` como controles de gameplay.
