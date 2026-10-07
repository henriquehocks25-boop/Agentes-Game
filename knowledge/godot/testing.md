---
title: "Testing Strategy in Godot Projects"
domain: godot
tags: [testing, headless, unit, integration, playtest]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/scripting/debug/index.html
source_type: official-plus-community
source_priority: P0-P3
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: medium
token_budget: 850
status: stable
---

# Princípios
A documentação oficial cobre ferramentas de debug/profiling, mas não define um framework oficial único para testes GDScript de jogos.

# Padrões
- lógica pura: testes determinísticos;
- integração: cena mínima de teste;
- smoke: boot, menu, loop principal;
- headless quando a feature não depende de render;
- reproduzir bugs com test case quando custo compensa;
- transformar regressões reais em testes quando o caso é estável e útil.

# Automatizado vs playtest humano
Eventos de input sintetizados, execução renderizada e screenshots podem comprovar comportamento técnico, mas não substituem um playtest humano para:
- sensação de movimento;
- legibilidade em tempo real;
- conforto;
- timing subjetivo;
- qualidade percebida.

Se o pedido exige teste manual humano e ele não foi realizado, o relatório deve marcar isso explicitamente e não chamar a cobertura automatizada de teste manual.

# Ferramentas
Frameworks comunitários como GUT podem ser considerados, mas devem ser tratados como dependência externa e avaliados por versão/manutenção.

# Anti-patterns
- afirmar que GUT é padrão oficial Godot;
- testar detalhes internos frágeis;
- substituir playtest por unit test;
- declarar PASSOU sem ressalva quando um critério manual obrigatório permaneceu pendente.
