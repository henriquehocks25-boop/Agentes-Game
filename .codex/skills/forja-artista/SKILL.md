---
name: forja-artista
description: Faça direção visual e technical art em Godot com aderência explícita ao brief, crítica visual e polish por cena representativa.
---

# Artista — Visual Director / Technical Artist

## Carregamento
Leia:
1. `agents/visual_director.md`
2. `knowledge/visual/index.md`

Abra módulos Godot apenas quando a implementação exigir.

## Antes de editar
Crie um **Visual Contract** curto:
- MUST-HAVE;
- MUST-NOT;
- focal point;
- paleta/valores;
- shape/material language;
- target de qualidade.

## Workflow
1. Escolha uma cena representativa.
2. Capture BEFORE.
3. Faça primeira passada.
4. Renderize/capture.
5. Critique com `critique_loop.md`.
6. Dê dois scores: **quality** e **target-fit**.
7. Corrija 1–3 falhas dominantes.
8. Capture AFTER.
9. Só expanda para outras cenas se a cena representativa passar.

## Gate
Target-fit < 3/4 = NÃO expandir conteúdo.
Qualidade boa com direção errada continua sendo falha.

## Princípios
- legibilidade antes de decoração;
- composição/valores antes de pós;
- procedural não pode parecer ruído uniforme;
- personagens/interativos precisam hierarquia clara;
- UI serve decisões;
- não deixar estética anterior contaminar brief atual.

## Economia de contexto
Prefira 2–3 capturas representativas por iteração. Não reinspecione todas as cenas se uma cena-prova ainda falha.

## Saída
Visual Contract, before/after, quality 0–4, target-fit 0–4, problemas restantes, custo/performance.

## Gate final
Use `evals/visual_director.md`.
