---
name: forja-artista
description: Dirija e PRODUZA arte de jogos em Godot: personagens, cenários, assets importáveis, animação, UI e VFX; transforme programmer art em arte de qualidade, com comparação visual real. Use para criar assets, implementar direção artística ou corrigir resultado genérico, inclusive JRPG e ASCII colorido.
---

# Artista — Art Direction + Production Art

## Carregamento seletivo
1. Leia `agents/visual_director.md` e `knowledge/visual/index.md`.
2. **Criar/substituir arte** → `asset_production_pipeline.md`.
3. **Personagens** → `character_art_production.md`.
4. **Mundo/biomas** → `environment_art_production.md`.
5. **ASCII/glifos** → `ascii_art_production.md` + `knowledge/godot/ascii_native_rendering.md`.
6. **Auditar/polir** → `visual_validation_lab.md` e `critique_loop.md`.
Abra até 1–3 playbooks por fase, outros apenas sob demanda. Não carregue todos.

## Especialistas de arte disponíveis
Para produção exigente, escolha `character_environment_artist`, `technical_artist`, `shader_engineer`, `animator` ou `vfx_lighting_artist` em `agents/specialists/INDEX.md`. Uma tarefa pode passar por vários **sequencialmente**, com owner e handoff. `visual_reviewer` e `shader_reviewer` devem ser independentes da autoria. Consultar `knowledge/production/art_2d_3d.md`, `technical_art_shaders.md` ou `animation_vfx_lighting.md` só conforme a fase.

Para arte gerada por código, exigir shape grammar, volumes, paleta por material, fonte/seed, controles e prova de silhueta; `knowledge/visual/code_generated_asset_lab.md` dá um experimento mínimo, não arte final automática.

## Decisão obrigatória antes do código
**A tarefa pede desenho de assets ou apenas implementação visual?**
Se exige arte rica, não comece por gerar retângulos, círculos, ruído, linhas e glow como resultado final. Escolha e teste método de authoring (arte-fonte desenhada, SVG em camadas, spritesheet, raster, procedural dirigido ou converter offline). Inspecione ferramentas disponíveis; nunca suponha ImageGen ou software externo ativo.

## Protocolo de produção em 7 passos
1. **Brief → Visual Contract**: MUST-HAVE/MUST-NOT, câmera, tamanho nativo, 1x, qualidade esperada; derive sem inventar nova estética.
2. **Diagnóstico BEFORE**: executar/capturar. Em uma frase por problema: o que está feio, por quê e como perceber melhora.
3. **Lookdev pequeno**: 2–3 thumbnails/silhuetas, paleta funcional e materiais. Escolha uma direção. Arte passa primeiro em shape/value.
4. **Hero sample**: produza **UM personagem/objeto exemplar + UMA porção de cenário** representativa, com source editável quando viável; exporte e integre.
5. **Prova visual**: abrir render real no Godot, capturar 1x e zoom, inspecionar silhouette/grayscale/thumbnail, um frame de ação.
6. **Iterar**: corrigir as 1–3 falhas dominantes, priorizando desenho/shape/volume/identidade; após duas tentativas sem melhora, trocar técnica em vez de acumular efeitos.
7. **Gate + handoff**: BEFORE/AFTER, quality/target-fit/asset-quality/readability (0–4), caminhos, riscos e teste de performance. Só então expandir.

## Regras contra regressão estética
- Não alterar jogo/mecânicas para mascarar art ruim.
- Personagem deve parecer personagem, árvore deve parecer árvore, caminho deve parecer caminho **sem HUD/legenda**.
- Não trocar colorido por ciano/dark se brief for colorido; não impor tema quando não pedido.
- Cena com chão repetido e objetos frágeis não vira "produção" por receber shader.
- Animação verdadeira precisa de poses/timing, não somente deslocar sprite parado.
- Proibir a aprovação baseada somente em testes de engine, código ou autoelogio.
- Se ferramenta/arte-fonte para qualidade-alvo for impossível no ambiente: reportar BLOQUEIO DE PRODUÇÃO com alternativa e evidência, não declarar concluído.

## Definition of Done
O gate está em `evals/visual_director.md`. Autoavaliação é diagnóstica; Guardião deve confrontá-la com o contrato visual. Não expandir arte com target-fit <3/4 ou asset-quality <3/4.
