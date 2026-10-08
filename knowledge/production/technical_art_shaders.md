---
title: "Technical Art, Shaders and Procedural Visual Systems"
domain: production
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/shaders/shader_reference/shading_language.html
  - https://docs.godotengine.org/en/stable/tutorials/shaders/shader_reference/canvas_item_shader.html
  - https://docs.godotengine.org/en/stable/tutorials/shaders/shader_reference/spatial_shader.html
  - https://docs.godotengine.org/en/stable/tutorials/shaders/screen-reading_shaders.html
  - https://docs.godotengine.org/en/stable/classes/class_fastnoiselite.html
source_type: official-plus-derived
godot_version: "4.x stable; pin exact"
last_verified: 2026-10-08
confidence: medium-high
token_budget: 2200
status: active
---

# Technical Art é engenharia visual com direção
O objetivo é criar **ferramentas e sistemas que produzam imagens intencionais** com parâmetros controláveis. Não confundir ruído matemático com composição ou shader complexo com boa arte.

## Progressão
- Básico: `ShaderMaterial`, uniforms, UV, masks, cor/alpha, `CanvasItem` e `spatial`.
- Intermediário: SDF, gradient, normal maps, vertex displacement, fresnel, triplanar, atlases, partículas e texturas procedurais.
- Avançado: shader stages, dados por instância, render passes, screen/depth textures, lighting models, instancing, mesh procedural, LOD, bake offline, procedural animation.
- Profissional: ferramentas art-directable, medição CPU/GPU, variantes por renderer, fallback, previsibilidade, documentação e revisão de artista independente.

## Linguagem e Godot
A linguagem de shaders Godot é **similar a GLSL ES**, mas não é um arquivo GLSL copiado sem adaptação. Use `shader_type canvas_item;` para 2D e `shader_type spatial;` para 3D; built-ins/stages/render modes variam. Consulte docs oficiais da versão antes de usar SCREEN_TEXTURE, depth, normals, compute, shader preprocessor e render modes. Teste Forward+/Mobile/Compatibility conforme projeto: recursos diferem.

## Padrões técnicos
- **SDF**: distância assinada de círculo/box/segmento, composição por min/max/smooth min, antialias por derivadas quando disponível; útil para máscaras, ícones, shapes e efeitos.
- **Noise**: value/gradient/Perlin-like, simplex-like, Worley/Voronoi, FBM (octaves, lacunarity, gain), domain warping; escolher por estrutura desejada, não por moda. Na Godot há `FastNoiseLite` para dados/texturas; confira o algoritmo específico em uso.
- **Procedural textures**: albedo/roughness/normal com frequências separadas, máscaras por material, seed e histogramas; comparar sob várias luzes.
- **Sprites por código**: vetor autoral em camadas, shape grammar, path curves, gradientes por material, sombras e highlights dirigidos; export offline ou desenhar com CanvasItem quando custo permitir. Noise só acrescenta variação.
- **Terrenos/cavernas**: macroestrutura topológica e travessia primeiro; máscaras, erosão aproximada, cellular automata/graphs, conectividade e seed; validar acesso a saída.
- **Vegetação**: regras botânicas estilizadas (tronco, galhos, folhas em clusters, oclusão, variação), distribuição ecológica e budgets; não randomizar pixels individualmente.
- **Água/fogo/fumaça/magia**: compor forma primária, máscara/gradiente, distorção temporal, emissive/particles e timing; garantir contraste e telegraph.
- **Dissolve**: limiar sobre máscara com borda emissiva limitada, evitar flicker.
- **Pós**: último estágio, nunca substituto de asset. Screen-reading pode afetar transparência e custos; testar composição e resolução.
- **ASCII nativo**: fonte ilustrada → conversão offline em glifos com cor/material → atlas/instancing; não fullscreen filter.

## Pipeline reproduzível
Visual brief → frame alvo → protótipo de um material/objeto → parâmetros com ranges semânticos → captura 1x → revisão visual → profile GPU/CPU → variants/fallback → asset integration → documentação de uso. Entregar seed/config, shader, source data, imagens e benchmarks.

## Medição
Comparar p50/p95/p99 frame time em cena representativa, número de materiais/instâncias, transparência/overdraw, resolução e hardware; testar long stalls. Não afirmar que MultiMesh ou compute é automaticamente mais rápido.

## Erros
Overengineering, shader monolítico, custo oculto de transparência, ruído homogêneo, repetição, aliasing, escala de textura errada, material não reagir à luz, efeitos que cobrem o personagem, declarar "profissional" por código sofisticado.

## Leituras
Inigo Quilez (SDF/procedural techniques, validar exemplos e licenças); Patricio Gonzalez Vivo/Jen Lowe, *The Book of Shaders*; Tomas Akenine-Möller et al., *Real-Time Rendering*; docs Godot shader reference. Estude *Control*/*Ori* pelo resultado observável e talks públicos, não por suposição de código interno.
