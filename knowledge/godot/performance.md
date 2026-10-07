---
title: "Performance"
domain: godot
tags: [performance, profiling, cpu, gpu, memory]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/performance/general_optimization.html
  - https://docs.godotengine.org/en/stable/tutorials/performance/cpu_optimization.html
  - https://docs.godotengine.org/en/stable/tutorials/scripting/debug/debugger_panel.html
source_type: official
source_priority: P0
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 950
status: stable
---

# Regra central
`medir → localizar gargalo → alterar causa dominante → medir novamente`.

# Distinguir
- CPU scripting/physics;
- CPU rendering;
- GPU rendering;
- stalls/carregamento;
- memória/alocação.

# Padrões
- baseline reproduzível;
- profiler padrão para CPU geral;
- Visual Profiler para rendering CPU/GPU;
- comparar mesma resolução/cenário/hardware;
- otimizar algoritmo/arquitetura antes de microdetalhe.

# Anti-patterns
- pooling universal sem medição;
- preload universal de conteúdo pesado;
- reduzir qualidade gráfica quando gargalo é CPU;
- benchmark só no editor;
- otimização que aumenta complexidade sem ganho observado.
