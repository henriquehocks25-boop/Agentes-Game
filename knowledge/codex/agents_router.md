---
title: "AGENTS.md as Router"
domain: codex
tags: [agents-md, routing, progressive-disclosure]
source_urls:
  - https://openai.com/index/harness-engineering/
  - https://developers.openai.com/cookbook/examples/gpt-5/codex_prompting_guide
source_type: official
source_priority: P0
last_verified: 2026-10-07
confidence: high
token_budget: 600
---

# Quando consultar
Ao criar ou revisar instruções persistentes do repositório.

# Princípios
A OpenAI descreve o padrão de usar `AGENTS.md` como mapa para uma KB estruturada, em vez de concentrar tudo num arquivo gigante. O Codex também descobre instruções AGENTS em hierarquia de diretórios.

# Padrões
- Raiz: princípios globais + roteamento.
- Diretórios especializados podem ter instruções locais.
- Preferir links/caminhos para módulos de verdade.
- Regras locais devem sobrescrever apenas o necessário.
- Remover instruções obsoletas.

# Anti-patterns
- Enciclopédia no AGENTS.md.
- Duplicar a mesma regra em muitos níveis.
- Colocar documentação temporal sem versão/data.
- Instruções vagas como "faça código bom".

# Fonte
https://openai.com/index/harness-engineering/
https://developers.openai.com/cookbook/examples/gpt-5/codex_prompting_guide
