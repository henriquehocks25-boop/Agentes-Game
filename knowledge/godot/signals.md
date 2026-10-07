---
title: "Signals"
domain: godot
tags: [signals, events, decoupling]
source_urls:
  - https://docs.godotengine.org/en/stable/getting_started/step_by_step/signals.html
  - https://docs.godotengine.org/en/stable/tutorials/scripting/instancing_with_signals.html
source_type: official
source_priority: P0
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 700
---

# Quando consultar
Comunicação entre cenas/nós, eventos de gameplay, UI reagindo a gameplay, objetos instanciados em runtime.

# Princípios
- Signals permitem reação sem referência direta entre emissor e receptor.
- Reduzem acoplamento quando a relação é evento → reação.
- Em Godot 4, Signal é tipo de primeira classe.
- Para objetos instanciados dinamicamente, sinais ajudam a evitar dependência rígida da posição na SceneTree.

# Padrões
- Nomeie eventos como ações ocorridas.
- Emita dados mínimos necessários.
- Prefira conexão clara na composição da cena ou no ponto de instanciação.
- Use sinais para eventos; não para substituir toda chamada direta.

# Anti-patterns
- Event bus global para absolutamente tudo.
- Sinal sem dono semântico claro.
- Cadeias longas de sinais impossíveis de rastrear.
- Usar `get_parent()`/paths frágeis quando o objeto deveria apenas emitir um evento.

# Fontes
Ver front matter.
