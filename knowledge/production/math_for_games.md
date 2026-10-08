---
title: "Applied Mathematics for Gameplay, Animation and Graphics"
domain: production
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/math/vector_math.html
  - https://docs.godotengine.org/en/stable/tutorials/math/matrices_and_transforms.html
source_type: official-plus-practice
godot_version: "4.x stable"
last_verified: 2026-10-08
confidence: medium-high
token_budget: 1200
status: active
---

# Princípio
Matemática é ferramenta para descrever movimento, espaço, luz, aleatoriedade e decisões; números sem unidades/escala geram bugs difíceis.

## Progressão
- Básico: escalar, vetores, `length`, `normalized`, distância, ângulo, trigonometria, `delta`.
- Intermediário: dot/cross, projeção, `Transform2D/Transform3D`, bases local/global, interpolação `lerp`, easing, curvas Bézier, distribuição aleatória.
- Avançado: quaternions/SLERP para 3D, derivadas discretas, integração, ruído fractal, SDF, matrizes de câmera/projeção, amostragem e probabilidade.
- Profissional: estabilidade numérica, tolerâncias, limites, unidades, seed determinística, precisão/performance e testes de invariantes.

## Aplicações práticas
- **Movimento**: velocidade em unidades/segundo; `position += velocity * delta` para movimento não físico; física por `_physics_process` e APIs apropriadas.
- **Facing**: dot(dir, forward) testa cone de visão; clamp para evitar `acos` inválido.
- **Curvas**: Tween/Curve para antecipação e recuperação; `lerp(a,b,t)` não é um filtro temporal com t arbitrário.
- **Transform**: separar local e global; escala negativa e rotação afetam normals e pivots.
- **Noise**: seed + frequency + lacunarity + gain controlam variação; ruído não cria composição automaticamente.
- **Shader**: `smoothstep` para transições, SDF para bordas, `fwidth` para antialias quando suportado; atenção a derivadas por estágio/renderer.
- **3D**: quaternion para interpolar orientação; evitar misturar Euler em múltiplos eixos sem testar gimbal lock.

## Testes
Invariantes (normalização, conservação quando aplicável), limites (zero-length vector, delta alto, ângulos 0/π, seed igual), visualizações de vetores/normals e testes de fps variável. Se movimento muda com FPS, diagnosticar integração e update loop.

## Leituras
Eric Lengyel, *Mathematics for 3D Game Programming and Computer Graphics*; Christer Ericson, *Real-Time Collision Detection*; Jason Gregory, *Game Engine Architecture*. Consultar Godot docs para convenções de coordenadas e métodos.
