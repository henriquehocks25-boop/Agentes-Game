---
title: "Materials and Textures"
domain: visual
tags: [materials, textures, surfacing]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/3d/standard_material_3d.html
source_type: official-plus-derived
source_priority: P1
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 750
status: stable
---

# Princípios
Material precisa comunicar categoria de superfície e reforçar art direction. Textura não substitui valor/forma.

# Padrões
- biblioteca pequena de famílias materiais;
- parâmetros coerentes;
- escala de texel consistente;
- roughness/specular usados para separar materiais;
- reutilizar materiais quando mantém identidade e reduz custo.

# Anti-patterns
- textura ruidosa em toda superfície;
- normal map exagerado;
- materiais diferentes sem regra;
- resolução alta sem necessidade perceptual.
