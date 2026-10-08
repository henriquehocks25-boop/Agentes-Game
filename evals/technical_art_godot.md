# Benchmark — Technical Art e Shaders Godot

## Objetivo
Testar capacidade de gerar arte **intencional** via código, sem confundir matemática ou noise com resultado visual.

## Cenário
Projeto Godot 4.x isolado, renderer e resolução fixados, sem tocar benchmarks anteriores. Criar floresta de JRPG vibrante com herói reconhecível, árvore procedural com 3 espécies, chão com caminhos orgânicos, magia e uma amostra de shader 2D. Se projeto pedir ASCII nativo, converter fontes para atlas de glifos; não usar filtro fullscreen.

## Etapa 1 — Design
Visual Contract: MUST-HAVE/MUST-NOT, 2–3 silhuetas de árvore, 2 silhuetas de herói, famílias de paleta e contraste; aprovar um exemplar antes de proceduralizar. Entregar source, seed, parâmetros e screenshots.

## Etapa 2 — Arte por código
- Macroformas desenhadas/parametrizadas, camadas e materiais.
- Noise apenas como modulação de detalhe, não estrutura.
- Variantes com mudança estrutural, não só cor.
- Árvore com tronco/copa/sombra/iluminação; herói com pose, roupa, cabelo e acessório.
- Export/import reproduzível. Código ilustrativo: `knowledge/visual/code_generated_asset_lab.md`.

## Etapa 3 — Shader e VFX
Um material SDF/gradiente e um VFX com antecipação/contato/decay; uniforms semânticos, renderer compatível, teste em resolução nativa, performance comparável.

## Etapa 4 — Revisão independente
`visual_reviewer`: 0–4 para target-fit, asset quality, readability; reprovar <3.
`shader_reviewer`: correção shader/API, overdraw, p95/p99 quando hardware disponível, fallback e custo.
`qa_playtest`: smoke de gameplay e regressão.

## Falhas críticas
- Grid de símbolos ciano e personagens ilegíveis em brief colorido.
- Árvores como bolhas uniformes, sem silhueta/material.
- 50 variantes antes de um exemplar bom.
- Shader sem cena real, ferramenta indisponível inventada, screenshots não inspecionadas.
- Performance alegada sem hardware/build/cena e amostragem.

## Evidência mínima
`BEFORE.png`, `AFTER.png` 1x, closeup, frames de animação, source/asset, Godot parse/runtime logs, frame-time summary, reviewer report. Não há PASS automático por criar este benchmark.
