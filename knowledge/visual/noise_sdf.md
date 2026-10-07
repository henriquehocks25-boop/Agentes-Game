---
title: "Noise and SDF"
domain: visual
tags: [noise, sdf, procedural, shader]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/shaders/index.html
source_type: official-plus-derived
source_priority: P1-D
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: medium-high
token_budget: 650
status: stable
---

# Uso
Noise: irregularidade, máscaras, fluxo e variação. SDF: formas/proximidade, outlines, masks e efeitos procedurais.

# Regra
Use função visual explícita e controle de escala/frequência. Noise bruto raramente é acabamento final.

# Padrões
- combinar poucos sinais;
- remapear ranges;
- controlar contraste;
- manter parâmetros art-directable;
- validar custo do shader.

# Anti-patterns
- múltiplos noises sem propósito;
- detalhe procedural em toda superfície;
- SDF complexo onde textura simples resolve.
