---
title: "CPU/GPU/Memory Performance Engineering"
domain: production
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/performance/index.html
  - https://docs.godotengine.org/en/stable/tutorials/debug/overview_of_debugging_tools.html
  - https://docs.godotengine.org/en/stable/tutorials/performance/using_multimesh.html
source_type: official-plus-derived
godot_version: "4.x stable; pin exact"
last_verified: 2026-10-08
confidence: medium-high
token_budget: 1350
status: active
---

# Medir antes de otimizar
Frame budget: 60 FPS ≈16,67 ms/frame; 30 FPS ≈33,33 ms/frame. Orçamento é total de CPU/GPU/sincronização; média isolada esconde stutters.

## Níveis
Básico: profiler, FPS e tempo de frame. Intermediário: CPU vs GPU, memória/VRAM, draw calls, overdraw, alocação e física. Avançado: p50/p95/p99, spikes, shader compilation, culling, batching, streaming, threading, data-oriented hotspots. Profissional: hardware tiers, baseline reproduzível, automated perf scenes, regression gates e budgets por sistema.

## Godot
Use profiler/debugger/monitors da versão. Conte Node/process loops, queries de física, allocations, sinais excessivos, CanvasItem draw, transparent overdraw, shadow passes, MultiMesh/instancing e culling. `MultiMesh` reduz overhead de draw mas pode aumentar trabalho por glifo/instância; testar 1k/10k/50k com distribuição real, não concluir ganho por teoria. Escolher renderer Forward+/Mobile/Compatibility por requisitos.

## Experimento
Registrar commit/build, renderer, OS, CPU/GPU/VRAM, resolução, vsync, duração, warmup, cena/seed, carga, captura de frame-time e percentis. A/B altera UMA variável; medir 3 execuções se viável, reportar variação. Diferenciar stalls por compilação de shader, import, GC/alocação, IO, GPU sync e travamentos do runner.

## Orçamentos
Distribuir tempo CPU por IA, física, render submission, UI, áudio, streaming; GPU por geometry, fragment/overdraw, sombras, pós. Orçamento é hipótese de planejamento, calibrado no hardware alvo. Para memory leaks, observar curva após ciclos load/unload.

## Gate
Não afirmar "60 FPS estáveis" com apenas FPS médio ou 5 segundos; registrar p95/p99 e picos. Perf em headless não substitui GPU. Se hardware alvo não disponível, marcar resultado `UNVERIFIED`.

## Leituras
Jason Gregory, *Game Engine Architecture*; *Real-Time Rendering*; docs Godot Performance. Referências de design sistêmico para carga: *Factorio*, *Minecraft*, *Terraria*, mas não inferir otimizações internas sem fonte.
