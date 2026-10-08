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
token_budget: 650
status: stable
---

# Princípios
Sessão longa é útil enquanto o histórico continua relevante. Quando o histórico vira ruído, mova estado durável para o repo e continue com contexto menor.

# Continue na mesma sessão quando
- debugging segue uma hipótese ativa;
- a próxima ação depende diretamente de decisões ainda não persistidas;
- o milestone ainda está em um loop curto implementar → validar → corrigir.

# Prefira handoff/contexto limpo quando
- mudou de domínio/agente;
- um milestone terminou;
- começou content expansion após proof;
- muitas capturas/logs/decisões antigas não afetam a próxima ação;
- ocorreu compaction e o estado ainda não está claro.

# Antes de compaction/troca
Persistir:
- milestone atual;
- acceptance criteria restantes;
- arquivos em foco;
- decisões;
- blockers;
- próximo passo.

Em projetos Forja longos, use `FORJA_STATE.md`.

# Compaction
Ajuda continuidade, mas não substitui estado versionado. Depois de compaction, reabra estado/handoff, não a sessão inteira.
