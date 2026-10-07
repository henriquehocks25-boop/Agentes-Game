---
title: "Multiplayer Optional Module"
domain: godot
tags: [multiplayer, networking, rpc]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/networking/high_level_multiplayer.html
source_type: official
source_priority: P2
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 850
status: stable
---

# Quando consultar
Somente quando multiplayer é requisito real.

# Princípios
Rede muda arquitetura, autoridade, estado e teste. Não adicione por antecipação.

# Decisões iniciais
- authority model;
- host/client/dedicated;
- estado replicado;
- tolerância a latência;
- reconnect;
- segurança/validação.

# Anti-patterns
- RPC espalhado sem autoridade definida;
- confiar em cliente para estado crítico;
- adaptar jogo single-player tardiamente sem revisar arquitetura;
- carregar este módulo em todo projeto.
