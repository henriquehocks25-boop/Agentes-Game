---
title: "Performance"
domain: godot
tags: [performance, profiling, cpu, gpu, memory, benchmark]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/performance/general_optimization.html
  - https://docs.godotengine.org/en/stable/tutorials/performance/cpu_optimization.html
  - https://docs.godotengine.org/en/stable/tutorials/scripting/debug/debugger_panel.html
  - https://docs.godotengine.org/en/stable/classes/class_renderingserver.html
source_type: official
source_priority: P0
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 1100
status: stable
---

# Regra central
`medir → localizar gargalo → alterar causa dominante → medir novamente`.

# Distinguir
- CPU scripting/physics;
- CPU rendering;
- GPU rendering;
- stalls/carregamento;
- memória/alocação;
- scheduler/janela/ambiente de desktop.

# Padrões
- baseline reproduzível;
- profiler padrão para CPU geral;
- Visual Profiler/RenderingServer para rendering CPU/GPU quando aplicável;
- mesma resolução, renderer, cena e hardware;
- aquecimento antes da coleta;
- múltiplas repetições quando há alta variância;
- registrar P95/máximo/outliers além da média;
- otimizar algoritmo/arquitetura antes de microdetalhe.

# Benchmarks com pausas/outliers
Se resultados forem não monotônicos ou houver pausas grandes:
- não prometa FPS sustentado;
- preserve os outliers em vez de removê-los silenciosamente;
- repita em ambiente mais isolado;
- registre outros processos/janelas relevantes;
- separe frame time total de CPU/GPU render;
- declare causa desconhecida quando ela não foi isolada.

Baixo tempo de GPU com frame total alto pode indicar que o gargalo não está na GPU.

# Memória
Distingua memória do processo, VRAM, buffers estimados e caches acumulados. Não atribua toda a memória observada a um único sistema sem isolamento.

# Anti-patterns
- pooling universal sem medição;
- preload universal de conteúdo pesado;
- reduzir qualidade gráfica quando gargalo é CPU;
- benchmark só no editor;
- usar uma coleta curta como garantia;
- remover outlier sem justificativa;
- inferir causa de stall apenas pelo FPS;
- otimização que aumenta complexidade sem ganho observado.
