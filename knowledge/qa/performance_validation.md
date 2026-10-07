---
title: "Performance Validation"
domain: qa
tags: [performance, profiler, regression]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/performance/cpu_optimization.html
  - https://docs.godotengine.org/en/stable/tutorials/scripting/debug/debugger_panel.html
source_type: official
source_priority: P0
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 650
status: stable
---

# Processo
1. cenário reproduzível;
2. hardware/renderer/resolução registrados;
3. baseline;
4. profiler CPU e/ou Visual Profiler;
5. mudança;
6. repetir medição;
7. comparar.

# Reporte
frame time/FPS quando medido, spike, função/passo dominante, GPU/CPU provável e evidência.

# Anti-patterns
- "parece mais rápido";
- comparar editor com export;
- mudar resolução entre runs;
- otimizar sem baseline.
