---
title: "Visual Contract and Target Fit"
domain: visual
tags: [brief, target-fit, art-direction, acceptance]
source_urls:
  - https://gdcvault.com/
source_type: professional-derived
source_priority: P0-D
last_verified: 2026-10-07
confidence: medium
token_budget: 750
status: stable
---

# Quando consultar
Quando há direção visual explícita, paleta, gênero, referência ou proibições.

# Contrato verificável
Registre:
- MUST-HAVE de 3–7 itens reconhecíveis no frame;
- MUST-NOT de 3–7 desvios;
- escala/câmera/resolução alvo;
- silhuetas, cores por função, luz/valores, material e atmosfera;
- herói/objeto/ambiente representativos;
- qualidade exigida: prototype vs polished slice.

Proibições dadas pelo usuário têm prioridade sobre preferências padrão. Não transportar estética de tarefa anterior.

# Eixos separados
**Target fit:** se corresponde ao estilo desejado.
**Asset quality:** se personagens/cenários/props parecem desenhados e finalizados.
**Readability:** se gameplay e hierarquia são claros no tamanho real.
**Technical:** se import, animação, rendering e FPS estão adequados.

Todos são avaliados de 0 a 4 com exemplos no `visual_validation_lab.md`.

# Gate de vertical slice visual
Target fit >=3, asset quality >=3 e readability >=3. Nenhum MUST-NOT pode ser violado.
Se o objetivo for benchmark/placeholder, use gate ajustado e rotule PROVISÓRIO.

# Anti-drift
Antes de aceitar, compare com o brief:
- reconhecer o gênero sem HUD?
- personagens reconhecíveis por forma?
- ambiente tem materiais e locais distintivos?
- paleta corresponde às cores pedidas?
- animação expressiva além de translação?
- a cena usa um default do agente (neon, teal, grid, circles, glow) que não foi pedido?

Um frame tecnicamente correto mas genérico é insuficiente.
