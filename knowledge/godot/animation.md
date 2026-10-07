---
title: "Animation"
domain: godot
tags: [animationplayer, animationtree, blending]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/animation/index.html
  - https://docs.godotengine.org/en/stable/tutorials/animation/animation_tree.html
source_type: official
source_priority: P0
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 800
status: stable
---

# Princípios
AnimationPlayer armazena/reproduz animações; AnimationTree coordena blending e transições complexas.

# Padrões
- gameplay possui autoridade sobre estado lógico;
- animação reage a estado e emite eventos quando necessário;
- use blend spaces para parâmetros contínuos;
- evite mutar Resources compartilhados quando espera estado por instância.

# Anti-patterns
- lógica central escondida em tracks;
- duas máquinas de estado concorrentes sem contrato;
- animação dirigir regras de combate sem sincronização explícita.
