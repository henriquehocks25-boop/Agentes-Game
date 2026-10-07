---
title: "Tool Surface Minimization"
domain: codex
tags: [tools, mcp, routing, context]
source_urls:
  - https://openai.com/index/unlocking-the-codex-harness/
source_type: official-plus-derived
source_priority: P0-D
last_verified: 2026-10-07
confidence: medium-high
token_budget: 500
status: stable
---

# Quando consultar
Ao configurar MCPs, conectores e ferramentas disponíveis a um agente.

# Princípios
Ferramentas ampliam capacidade, mas também ampliam escolhas, permissões e chance de usar a ferramenta errada.

# Padrões
- exponha somente ferramentas relevantes ao papel;
- prefira interfaces de alta semântica a dezenas de comandos redundantes;
- mantenha permissões mínimas necessárias;
- desative ferramentas que não serão usadas naquela execução quando o ambiente permitir.

# Anti-patterns
- conectar todo MCP disponível;
- usar ferramenta externa para algo que busca local resolve;
- conceder escrita quando somente leitura é necessária.

# Classificação
A existência do harness/tooling é oficial; a minimização da superfície é recomendação operacional desta KB.
