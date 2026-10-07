---
title: "Debugging and Profiling"
domain: godot
tags: [debug, profiler, cpu, gpu, bottleneck]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/scripting/debug/index.html
  - https://docs.godotengine.org/en/stable/tutorials/scripting/debug/debugger_panel.html
  - https://docs.godotengine.org/en/stable/tutorials/performance/general_optimization.html
source_type: official
source_priority: P0
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 850
---

# Quando consultar
FPS baixo, stutter, spikes, suspeita de gargalo, vazamentos/objetos, regressão de performance.

# Princípios
- Medir antes de otimizar.
- Distinguir custo de script/física de custo de renderização.
- O Visual Profiler mede trabalho de renderização CPU/GPU; não substitui profiler geral.
- Compare execuções em viewport/hardware equivalentes.
- Mudanças de performance precisam ser medidas novamente.

# Loop
1. Reproduzir cenário.
2. Medir baseline.
3. Identificar gargalo dominante.
4. Alterar uma causa relevante.
5. Repetir medição.
6. Reverter otimização que aumenta complexidade sem ganho material.

# Anti-patterns
- otimização prematura;
- reduzir qualidade gráfica sem prova de gargalo GPU;
- otimizar microfunções enquanto arquitetura/algoritmo domina o custo;
- comparar perfis com resoluções ou hardware diferentes sem marcar isso.
