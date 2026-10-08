---
title: "Asset Production Pipeline — From Brief to In-Game Art"
domain: visual
tags: [production, assets, png, svg, art, iteration]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/assets_pipeline/importing_images.html
  - https://docs.godotengine.org/en/stable/tutorials/2d/2d_sprite_animation.html
source_type: official-plus-derived
source_priority: P0-D
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 1100
status: stable
---

# Quando consultar
Ao criar ou substituir personagens, cenários, props, UI ilustrada, spritesheets e animações. Este módulo é sobre PRODUCTION ART, não apenas shaders ou polish.

# Escolha do método antes de codificar
1. **Assets originais desenhados/gerados em ferramenta visual**, se a ferramenta estiver realmente disponível, os direitos de uso forem adequados e a direção puder ser controlada: produzir fontes editáveis e versões finais importáveis.
2. **Arte vetorial em camadas / SVG autoral**, exportada ou rasterizada para PNG; boa para formas limpas, props, UI e personagens estilizados. No Godot SVG é normalmente rasterizado no import; suporte a recursos SVG complexos é limitado. Validar import/render, nunca assumir fidelidade perfeita.
3. **Arte raster/pixel desenhada em ferramenta adequada**, quando pixel clusters/pintura exigirem controle manual.
4. **Arte procedural paramétrica**, adequada a vegetação, terreno, materiais, variações e VFX. Para personagens finais, só se silhueta, materiais, detalhes e animação atingirem o contrato visual.
5. **Fontes primitivas para debug** apenas temporárias; NÃO confundir com arte aprovada.

Não presuma ImageGen, Photoshop, Blender, Aseprite ou Inkscape instalados. Detecte ferramentas disponíveis. Se faltar meio adequado para qualidade pedida, sinalize lacuna e entregue o melhor exemplar demonstrável; não declare arte final.

# Pipeline de produção por asset
Brief + papel em gameplay → thumbnails/silhuetas 2–3 variações → escolha → blocking de grandes massas → shape language/proporções → separação de materiais → sombras/highlights → detalhe focal → animação → export/import → captura em escala real → revisão.

**Ordem:** silhueta > estrutura/volume > paleta/valores > materiais > microdetalhe. Não pule direto para ruído/partículas.

# Pacote mínimo de asset
- source editável (quando viável);
- runtime asset PNG/WebP ou dados próprios do renderer;
- nome, dimensões, pivot, escala e orientação;
- estados/frames necessários;
- paleta/material definidos;
- miniatura em tamanho real e screenshot em contexto;
- procedência/licença caso tenha fonte externa.

# Qualidade
- Reconhecível sem legenda?
- Leitura em tamanho de jogo, não só com zoom?
- Silhueta distingue função?
- Materiais e volumes reconhecíveis?
- Sem borda/alpha/pivot quebrados?
- Coerente com as outras peças?
- Frames consistentes e não apenas translado do mesmo desenho?

# Stop / fallback
Se depois de duas iterações a técnica escolhida só produz formas primitivas ou ruído, **troque de técnica**. Reescrever shader/colocar glow não resolve ausência de desenho.
Não produza dezenas de variantes ruins. Termine UMA peça exemplar aprovada primeiro.
