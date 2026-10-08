---
title: "Visual Validation Lab — Evidence, Rubric and Failure Modes"
domain: visual
tags: [review, capture, comparison, quality, screenshot, evidence]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/ui/index.html
source_type: derived
source_priority: P0-D
last_verified: 2026-10-07
confidence: high
token_budget: 1150
status: stable
---

# Quando consultar
Antes de aceitar art final, durante auditoria visual, em casos "ficou feio", e sempre que resultado técnico divergir do alvo.

# Evidência visual obrigatória
Execute uma cena real (não basta import headless) e inspecione pelo menos:
- composição inteira no tamanho de jogo;
- recorte do elemento focal;
- frame durante ação/animação relevante.
Capture BEFORE e AFTER comparáveis (mesma câmera/escala/estado se possível). Imagem final precisa ser carregada/inspecionada, não só salva.

# Testes perceptuais
1. **Teste de 3 segundos:** reconhecer gênero, cena, personagem, objetivo?
2. **Silhueta:** reduzir a preto sólido; player/inimigo têm formas distintas?
3. **Grayscale:** valores distinguem hierarquia sem depender de cor?
4. **Thumbnail:** em 25–50% da dimensão, formas ainda são legíveis?
5. **Sem HUD:** cenário/characters ainda comunicam o jogo?
6. **Congelado vs ação:** arte e timing funcionam nos dois?
7. **Paleta:** há famílias de cores exigidas, contrastes coerentes, saturação funcional?
8. **Originalidade:** sem copiar uma referência específica.

Ferramentas automáticas podem medir luminância, saturação, cor dominante, transparência e FPS; **não** substituem julgamento de silhueta, anatomia, composição ou atratividade.

# Rubrica 0–4 com critérios ancorados
**Target fit:** 0 contradiz brief; 1 direção errada; 2 parcial; 3 claramente correto; 4 correto + identidade.
**Asset quality:** 0 placeholder; 1 formas rudimentares; 2 reconhecível mas genérico; 3 desenhado intencionalmente com materiais/volume; 4 qualidade de produção consistente.
**Hierarchy/readability:** 0 ilegível; 1 muito ambíguo; 2 aceitável; 3 bom no tamanho real; 4 exemplar.
**Environment:** 0 grade/vazio; 1 repetição grosseira; 2 bioma reconhecível mas genérico; 3 lugar com landmark/material/variedade orgânica; 4 memorável e coerente.
**Motion/VFX:** 0 ausente; 1 translado simples sem pose; 2 funcional; 3 poses e tempo claros; 4 expressivo/coerente.
**Technical:** 0 quebrado; 1 regressões; 2 funciona com ressalvas; 3 import/render/perf adequado; 4 validado amplamente.

# Gate sugerido para vertical slice visual
- target-fit >=3;
- asset quality >=3;
- hierarchy >=3;
- nenhuma falha explícita MUST-NOT;
- requisitos técnicos preservados.
Um score autoatribuído não é prova. O Guardião deve revisar evidência; se imagem não pôde ser inspecionada, marque PENDENTE.

# Loop focal
A cada rodada: escreva **observação visual concreta → causa visual → mudança proposta → screenshot comparativa → resultado**.
Se não houver melhora clara após duas iterações: troque de método de produção ou marque bloqueio técnico. Não acrescente ruído/glow indiscriminadamente.

# Eficácia e custo
Meça quantas iterações, quantas capturas inspecionadas e quanto trabalho novo ficou descartável. Pare quando o ganho marginal for pequeno, mas não chame de pronto um alvo que não foi atingido.
