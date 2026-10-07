---
title: "Session Strategy"
domain: codex
tags: [sessions, compaction, state]
source_urls:
  - https://openai.com/index/unrolling-the-codex-agent-loop/
source_type: official-plus-derived
source_priority: P0-D
last_verified: 2026-10-07
confidence: high
token_budget: 500
status: stable
---

# Princípios
Sessão longa é útil enquanto o histórico continua relevante. Quando o histórico vira ruído, mova estado durável para o repo e continue com contexto limpo.

# Continue na mesma sessão quando
- a tarefa ainda depende de decisões recentes não documentadas;
- debugging está seguindo uma hipótese ativa.

# Prefira nova sessão/handoff quando
- mudou de domínio;
- a etapa anterior terminou;
- muito histórico não afeta mais a próxima decisão;
- um agente especializado precisa de contexto menor.

# Compaction
Ajuda a preservar continuidade, mas não substitui documentação versionada.
