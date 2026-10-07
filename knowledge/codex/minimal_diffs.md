---
title: "Minimal Diffs"
domain: codex
tags: [diff, refactor, risk, tokens]
source_urls:
  - https://openai.com/index/harness-engineering/
source_type: derived
source_priority: D
last_verified: 2026-10-07
confidence: high
token_budget: 500
status: stable
---

# Quando consultar
Correções, features pequenas e refactors localizados.

# Princípios
O menor diff correto reduz risco, revisão, regressão e contexto necessário para entender a mudança.

# Padrões
- preserve interfaces não relacionadas;
- altere somente arquivos necessários;
- extraia abstração apenas quando ela resolve repetição/complexidade real;
- rode validação focal antes de ampliar refactor.

# Não significa
"nunca refatorar". Se a causa raiz é arquitetural e o patch local só mascara o problema, faça a mudança necessária e documente o motivo.

# Anti-patterns
- formatar/reordenar arquivo inteiro junto com bugfix;
- renomear APIs sem necessidade;
- reescrever sistema funcional porque outro padrão parece mais elegante.
