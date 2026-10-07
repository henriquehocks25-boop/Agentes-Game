---
title: "Native ASCII / Glyph Rendering"
domain: godot
tags: [ascii, glyphs, multimesh, atlas, batching, offline-conversion]
source_urls:
  - https://docs.godotengine.org/en/stable/classes/class_multimesh.html
  - https://docs.godotengine.org/en/stable/tutorials/shaders/shader_reference/canvas_item_shader.html
  - https://docs.godotengine.org/en/stable/classes/class_renderingserver.html
source_type: official-plus-benchmark
source_priority: P1-D
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: medium-high
token_budget: 950
status: experimental
---

# Quando consultar
Renderer de texto/glifos em alta densidade, terminal-like visuals, ASCII sprites/chunks e conversão offline de imagem para células.

# Arquitetura validada em benchmark
Uma abordagem funcional em Godot 4.7.2:
- atlas compartilhado de glifos;
- dados próprios por célula: glyph + RGBA;
- conversão offline de PNG/frames para asset binário;
- `MultiMeshInstance2D` para instanciar quads;
- uma instância por glifo visível;
- `INSTANCE_CUSTOM` para índice do glifo;
- cor por instância;
- shader apenas para selecionar UV do atlas;
- sem `screen_texture` e sem filtro fullscreen;
- cache de batches por frame/asset.

Isso produz apresentação ASCII nativa no runtime mesmo que o atlas tenha sido gerado a partir de uma fonte.

# Conversão
Luminosidade sozinha é suficiente para protótipo, mas perde orientação de borda e detalhes.

Para qualidade maior, considerar descritores de glifo:
- cobertura/ink ratio;
- orientação de borda;
- centroide;
- distribuição horizontal/vertical;
- contraste local.

A seleção pode buscar o glifo cuja assinatura melhor corresponde à célula.

# Escala e nitidez
Um único atlas com mipmaps/linear filtering pode suavizar glifos pequenos. Para produção, avaliar:
- atlas com padding maior;
- múltiplos tamanhos/LOD;
- filtering adequado ao alvo;
- SDF/MSDF de fonte quando compatível com a estética.

# Mundo grande
Separar:
- ASCII sprite/object para personagens/VFX;
- ASCII chunk para terreno/vegetação/arquitetura.

Chunks permitem culling e atualização por região. Não crie Node por caractere.

# Cache
Cache permanente funciona em demo pequena, mas produção precisa de orçamento/eviction quando houver muitos assets/animações.

# Benchmark
Medir glifos, draw calls, frame time, CPU render, GPU render e memória. Não extrapolar batch estático para milhares de objetos animados.

# Anti-patterns
- pós-processar a tela e chamar de renderer nativo;
- um Label/Node/Sprite por caractere em alta cardinalidade;
- converter imagem em runtime todo frame;
- escolher glifo apenas por luminância como solução final;
- manter todos os frames de todos os assets em cache sem política.
