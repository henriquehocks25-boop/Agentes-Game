---
title: "QA, Playtesting and Production Polish"
domain: production
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/debug/index.html
  - https://docs.godotengine.org/en/stable/tutorials/editor/command_line_tutorial.html
source_type: official-plus-practice
godot_version: "4.x stable"
last_verified: 2026-10-08
confidence: medium-high
token_budget: 1250
status: active
---

# Separar correção de qualidade
QA técnico encontra falhas e regressões; playtest humano avalia clareza, diversão, dificuldade e frustração; polish melhora resposta perceptual. Nenhum substitui os demais.

## Níveis
Básico: smoke e bug report. Intermediário: teste de integração, regression suites, fixtures, severity, repro. Avançado: risk-based testing, compatibility matrix, save corruption, soak tests, performance, usability e accessibility. Profissional: release candidate gates, crash telemetry, rollback, triage e cobertura ligada a riscos reais.

## Testes
- Unit: regras puras (dano, cooldown, inventário, loot, progressão).
- Integration: scene/Signal/Resource, save/load e UI.
- Runtime: render, input, animação, áudio, física, câmeras.
- Compatibility: diferentes GPUs/renderers, controles, resoluções, locale, arquivos de usuário.
- Fuzz/edge: pausa durante ataque, morte em transição, save interrompido, input simultâneo, spam, reconexão.
- Playtest: observação sem instruções; registrar confusão, frustração, tempo de recuperação e decisões.

## Polish
Matriz `evento → visual → som → câmera → UI → timing → acessibilidade`. Ex.: hit: hitstop curto quando apropriado, reação de pose, som/material, número de dano, flash limitado, shake ajustável. Evitar empilhar efeitos e aumentar latência. Polimento é consistente quando um mesmo tipo de evento responde do mesmo modo em todo o jogo.

## Reporte
Severidade (BLOCKER/CRITICAL/MAJOR/MINOR/COSMETIC) + repro/esperado/atual/evidência/build/owner. Distinga falha objetiva do contrato visual de gosto pessoal. Ordenar por impacto e risco, não número de tickets.

## Gate
M2 exige core loop + target fit visual + import/runtime + perf provisória; M4 exige export smoke, save migration, regressão, acessibilidade essencial e teste humano registrado (ou ressalva explícita). Teste automático não prova experiência agradável.

## Referências
GDC talks de QA/postmortems; Jesse Schell, *The Art of Game Design*; Celia Hodent, *The Gamer's Brain*. Jogos para observação: *Celeste*, *Hades*, *Portal 2*.
