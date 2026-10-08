---
title: "UI/UX, Accessibility and PC Input"
domain: production
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/ui/index.html
  - https://docs.godotengine.org/en/stable/tutorials/inputs/inputevent.html
  - https://docs.godotengine.org/en/stable/tutorials/inputs/controllers_gamepads_joysticks.html
  - https://gameaccessibilityguidelines.com/
source_type: official-plus-guidelines
godot_version: "4.x stable; pin exact"
last_verified: 2026-10-08
confidence: medium-high
token_budget: 1450
status: active
---

# UX é fluxo, não decoração
O jogador deve saber o que pode fazer, qual estado mudou, como desfazer e como navegar sem memorizar controles ocultos.

## Níveis
Básico: HUD e botões, fontes/contraste, InputMap. Intermediário: inventário/mapa/settings, navegação de foco, mouse/teclado/gamepad, prompts dinâmicos, layouts responsivos. Avançado: remap com conflitos, deadzones/sensibilidade, hotplug, localização, leitura por tecnologias assistivas quando disponível, caption design, testes de usabilidade. Profissional: matrizes de resolução, acessibilidade por necessidade, telemetria ética, experimentos de UX e suporte de hardware.

## Godot
`Control`, `Container`, anchors/offsets, theme e focus neighbors; UI de jogo consome estado sem duplicar regras. `InputMap` actions e `InputEvent` para remap, guardar configuração por dispositivo quando necessário; separar input do gameplay. Configurar stretch/scaling e testar 16:9, 16:10, ultrawide, 720p/1080p/4K e windowed/fullscreen conforme escopo.

## PC específico
Teclado (layout regional e teclas repetidas), mouse (cursor/foco, sensibilidade, captura), gamepad (deadzone, drift, stick vs D-pad, desconexão/reconexão, glyph prompts, rumble opcional), múltiplos controles, navegação de menu sem mouse. Não assumir XInput em todo dispositivo; conferir suporte da engine.

## Acessibilidade
Tamanho de fonte/escala UI, alto contraste, cor + forma + texto para estados, legendas configuráveis, indicadores visuais para sons críticos, remap, hold/toggle, redução de camera shake/flashes, assistência de dificuldade, tempo de reação e controles. Daltonismo não se resolve apenas com filtro de cor global. Usuários com necessidades diversas devem participar do teste quando possível.

## Testes
Caminho completo só com gamepad e só com teclado; tab/focus; cancel/back; tooltips; remap duplicado; troca de resolução em runtime; clipping/truncation; pausas; salvar/recarregar preferências; feedback de erro; UI com texto longo/localizado; cor sem cor.

## Referências
Steve Krug, *Don't Make Me Think*; Celia Hodent, *The Gamer's Brain*; Game Accessibility Guidelines. Analisar *Celeste* (assistência), *Hades* (HUD), *Factorio* (densidade de informação), *Portal 2* (feedback).
