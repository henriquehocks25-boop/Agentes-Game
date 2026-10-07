---
title: "Procedural Generation"
domain: godot
tags: [procedural, rng, generation, validation]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/math/random_number_generation.html
source_type: official-plus-derived
source_priority: P1-D
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: medium-high
token_budget: 800
status: stable
---

# Princípios
Procedural não significa aleatório sem restrições. Gere candidatos, valide regras e registre seed quando reprodução importa.

# Pipeline
1. seed/config;
2. gerar macroestrutura;
3. aplicar constraints;
4. garantir conectividade/progressão;
5. decorar;
6. validar;
7. fallback se inválido.

# Padrões
- RNG explícito por sistema quando isolamento ajuda;
- seed no bug report;
- testes estatísticos/invariantes;
- separar geração de apresentação.

# Anti-patterns
- retry infinito;
- depender de sorte para conteúdo obrigatório;
- misturar geração e spawn visual de forma impossível de testar.
