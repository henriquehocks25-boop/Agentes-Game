---
title: "Game Audio and Adaptive Music"
domain: production
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/audio/index.html
  - https://docs.godotengine.org/en/stable/tutorials/audio/audio_buses.html
source_type: official-plus-practice
godot_version: "4.x stable"
last_verified: 2026-10-08
confidence: medium-high
token_budget: 1000
status: active
---

# Por que importa
Áudio confirma ação, material, espaço, risco e emoção; não é trilha colocada por último. Feedback sonoro deve ser informativo e não cansativo.

## Níveis
Básico: `AudioStreamPlayer`, SFX e música, volumes. Intermediário: buses Master/Music/SFX/UI/Voice, snapshots/transições, variação de samples, espacialização `AudioStreamPlayer2D/3D`. Avançado: camadas musicais por intensidade, stingers, ducking, prioridades/voice stealing, occlusion quando justificável, streaming vs memória, mix dinâmica. Profissional: teste auditivo em hardware, níveis consistentes, latência, acessibilidade e integração com eventos de gameplay.

## Pipeline
Event taxonomy (hit, pickup, footstep, danger, menu, ambient) → som com identidade/material → variants/pitch ranges discretos → mixer buses/efeitos → sincronização com frames → teste em contexto de combate e menus → limites de simultaneidade. Sons de impacto têm attack/transient e decay; reverberação comunica espaço mas pode embolar.

## Godot
`AudioServer` e bus layout; eventos semânticos emitidos pelo gameplay e recebidos pelo serviço de áudio, sem o SFX decidir regras de dano. Crossfade via Tween/Audio buses quando adequado. Music state segue intensidade e não a cada frame. Armazenar opções de volume/mute persistentes.

## Testes
Combate com múltiplos inimigos, pausa, mudança de dispositivo quando suportada, áudio mudo, música em loop, clipping, repetição, spatial falloff, menus em volume baixo, captions para pistas sonoras essenciais. Teste em fones e caixas; não declarar mix aprovada apenas por arquivo existente.

## Referências
Karen Collins, *Game Sound*; Michael Sweet, *Writing Interactive Music for Video Games*; GDC audio talks; análise observável de *Hades*, *The Last of Us*, *Doom* e *Stardew Valley*.
