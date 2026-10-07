---
title: "Compact Handoffs"
domain: codex
tags: [handoff, agents, state]
source_urls:
  - https://openai.com/index/open-source-codex-orchestration-symphony/
source_type: official-plus-derived
source_priority: P0-D
last_verified: 2026-10-07
confidence: high
token_budget: 450
status: stable
---

# Quando consultar
Troca entre agentes, sessões ou subtarefas independentes.

# Formato
```
HANDOFF
Feito:
- ...
Arquivos:
- ...
Decisões:
- ...
Problemas:
- ...
Próximo:
- ...
```

# Regras
- registrar somente fatos que o próximo agente precisa;
- citar caminhos/símbolos exatos;
- não recontar toda a conversa;
- decisões duráveis devem estar no repositório, não apenas no handoff.

# Anti-patterns
- handoff de milhares de tokens;
- "continue de onde parei" sem estado explícito;
- copiar logs inteiros.
