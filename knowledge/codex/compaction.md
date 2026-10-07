---
title: "Compaction and Long Sessions"
domain: codex
tags: [compaction, sessions, context]
source_urls:
  - https://openai.com/index/unrolling-the-codex-agent-loop/
source_type: official
source_priority: P0
last_verified: 2026-10-07
confidence: high
token_budget: 550
---

# Quando consultar
Quando uma tarefa longa acumular histórico e o agente começar a carregar decisões antigas demais.

# Princípios
A OpenAI descreve compactação automática no loop do Codex para preservar uma representação útil da conversa quando o contexto cresce.

# Recomendação desta KB
Antes que histórico operacional vire dependência implícita:
- escreva decisões duráveis no repositório;
- mantenha `TASK.md` curto quando necessário;
- registre arquitetura em documentação estável;
- use handoff resumido para trocar de agente/sessão.

Compaction ajuda a janela de contexto, mas não substitui documentação versionada no repositório.

# Anti-pattern
Confiar que uma conversa longa é a única memória do projeto.
