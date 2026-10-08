---
title: "Task State"
domain: codex
tags: [task, state, continuity]
source_urls:
  - https://openai.com/index/harness-engineering/
source_type: derived
source_priority: D
last_verified: 2026-10-07
confidence: high
token_budget: 550
status: stable
---

# Quando usar
Tarefa longa, múltiplos agentes, múltiplos milestones ou troca de sessão.

# Formato mínimo
```md
# FORJA STATE
Milestone:
Objetivo:
Concluído:
Critérios restantes:
Arquivos em foco:
Decisões:
Blockers:
Próximo agente/passo:
```

# Regras
- curto o bastante para ser relido no início de cada fase;
- caminhos e símbolos exatos, não narrativa;
- atualizar antes de compaction/troca de agente;
- decisões duráveis migram para docs estáveis;
- remover/arquivar quando o projeto não precisar mais desse estado operacional.

# Anti-patterns
- diário completo;
- copiar conversa;
- colar logs;
- registrar cada arquivo irrelevante;
- estado desatualizado que contradiz o projeto.
