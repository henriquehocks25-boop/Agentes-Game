---
title: "Audio Architecture"
domain: godot
tags: [audio, buses, sfx, music]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/audio/index.html
source_type: official
source_priority: P1
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 650
status: stable
---

# Princípios
Áudio também é feedback de gameplay. Use Audio Buses para grupos, efeitos e volumes independentes.

# Padrões
- buses: master/music/sfx/ui/voice quando aplicável;
- eventos de gameplay disparam sons por intenção;
- variação de pitch/sample moderada reduz repetição;
- respeitar prioridade espacial e distância.

# Anti-patterns
- AudioStreamPlayer global para todos os SFX;
- volume hardcoded em cada cena;
- som essencial sem alternativa visual;
- dezenas de sons simultâneos sem prioridade.
