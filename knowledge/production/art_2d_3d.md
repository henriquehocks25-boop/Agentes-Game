---
title: "Art Production — Concept, 2D and 3D"
domain: production
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/assets_pipeline/importing_images.html
  - https://docs.godotengine.org/en/stable/tutorials/assets_pipeline/importing_3d_scenes/index.html
  - https://docs.godotengine.org/en/stable/tutorials/3d/standard_material_3d.html
source_type: official-plus-practice
godot_version: "4.x stable"
last_verified: 2026-10-08
confidence: medium-high
token_budget: 1700
status: active
---

# Direção de arte e autoria
Arte é solução visual para leitura, emoção e identidade. Produzir assets requer *design* e *execução*; cor, shader ou ruído isolados não substituem desenho.

## Competência
- Básico: forma, proporção, contraste, paleta, perspectiva/câmera.
- Intermediário: thumbnails, shape language, silhuetas, value studies, materiais, sprite sheets, kits modulares, style guides.
- Avançado: concept → model/sprite → UV/texture/rig/animation → LOD/atlas/import; direção de iluminação e render; revisão cross-asset.
- Profissional: asset budget, fontes editáveis, licenças, naming, revisão de identidade em 1x, batching, consistência e entrega reproduzível.

## Personagem 2D
Brief narrativo + gameplay role → 3 silhuetas → proporções e pose → grandes massas → cabelo/roupa/arma → material/volume → face/acento → animação. Checar em escala real e sobre fundo real; personagem não pode depender de HUD para identificação. Em pixel art, trabalhar clusters e anti-aliasing intencional; no ASCII nativo, converter fonte com silhueta, não textura ruidosa.

## Ambiente 2D
Composição por massas: espaço navegável, landmark, planos de profundidade, caminhos orgânicos, materiais e clusters; áreas de descanso visual. Terreno não é preenchimento homogêneo de glyphs/noise. Usar variantes controladas, colisões legíveis e pontos de interesse.

## Pipeline 3D
Concept/blockout → base mesh → high-poly/sculpt quando necessário → retopologia para deformação/performance → UV seams/density → bake normal/AO (quando adequado) → PBR albedo/metallic/roughness/normal → rig/weights → animação → glTF import → validação de escala, tangents, pivots, normals, materiais e LOD. Não presumir Blender disponível; verificar ferramentas e plugins.
- PBR não equivale a realismo obrigatório: materiais estilizados também precisam de resposta coerente à luz.
- Escolher densidade de malha/textura por distância/câmera; evitar detalhar superfície invisível.

## Godot
`Sprite2D/AnimatedSprite2D`, `AnimationPlayer`, `CanvasItemMaterial/ShaderMaterial`, `TileMapLayer` conforme versão. Para 3D `MeshInstance3D`, `StandardMaterial3D`, `AnimationTree`, luz/Environment; validar import de glTF e renderer. Preserve source assets fora de runtime quando necessário, com caminho rastreável.

## Testes
1x, grayscale, silhouette, colorblind checks, oclusão, câmera em movimento, iluminação clara/escura, colisões, pivot/alpha, compressão e mipmaps, LOD/pop-in, deformação em animação, CPU/GPU/VRAM. Revisão de artista separada da técnica.

## Erros e referências
Evitar primitive art vendida como final, rig com skin quebrado, UV esticado, albedo com iluminação pintada que conflita com PBR, excesso de detalhe em miniatura, packs de assets sem identidade.
Livros: James Gurney, *Color and Light*; Marcos Mateu-Mestre, *Framed Ink*; Richard Williams, *The Animator's Survival Kit*. Analisar observavelmente *Cuphead* (desenho/animação), *Ori* (composição), *Hades* (silhuetas e interface), *Stardew Valley* (consistência de mundo).
