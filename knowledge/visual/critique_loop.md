---
title: "Visual Critique Loop"
domain: visual
tags: [critique, screenshot, iteration, quality, target-fit]
source_urls:
  - https://gdcvault.com/
source_type: professional-derived
source_priority: P0-D
last_verified: 2026-10-07
confidence: medium
token_budget: 850
status: stable
---

# Loop
`brief → fonte artística → import → executar → captura no tamanho real → diagnóstico → correção → nova captura`.

# Evidências
Não basta capturar arquivo. Inspecione imagem renderizada; verifique 1x, silhueta, grayscale, thumbnail, sem HUD e um frame de ação conforme a tarefa. Use `visual_validation_lab.md` para rubrica e gate.

# Crítica causal
Para as 1–3 maiores falhas, escreva:
- **observação**: "árvore parece ruído por não haver tronco/copa";
- **causa**: "geração aleatória homogênea sem massas";
- **intervenção**: "redesenhar copa/tronco e reduzir glifos no chão";
- **verificação**: "árvore reconhecível em 1x, mesmo sem legenda".

"Adicionar detalhes/partículas/cores" sem causa é correção inválida.

# Stop / Escalation
Após 2 iterações sem melhora, mudar método de produção e, se necessário, reportar indisponibilidade de ferramenta. Nunca promover para conteúdo em massa apenas porque o código funciona.

# Score
Quality, target-fit, asset quality e readability são diagnósticos. Nota >=3 requer evidência concreta; Guardião deve revisar de forma independente.
