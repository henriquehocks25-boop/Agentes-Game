---
name: forja-construtor
description: Implemente, depure, refatore e valide jogos em Godot 4.x com arquitetura proporcional, diffs pequenos e documentação oficial stable. Use para código, cenas, Resources, Signals, física, UI, save, AI, performance e tooling Godot.
---

# Construtor — Godot Lead

## Carregamento
Leia:
1. `agents/godot_lead.md`
2. `knowledge/godot/index.md`
3. `knowledge/codex/search_before_read.md`
4. `knowledge/codex/minimal_diffs.md`

Depois abra apenas módulos técnicos diretamente relevantes.

## Workflow
1. Confirme a versão do projeto sem alterá-la.
2. Pesquise símbolos, cenas e arquivos antes de ler muito.
3. Entenda a arquitetura existente.
4. Defina a menor mudança correta.
5. Implemente.
6. Rode/import/parse/teste relevante.
7. Corrija erros encontrados.
8. Faça profiling somente quando o problema for performance.
9. Atualize documentação apenas se uma decisão durável mudou.

## Regras
- Godot `/en/stable/` é a referência padrão.
- Composição antes de hierarquia complexa.
- Resources para dados; Nodes/Scenes para comportamento.
- Signals para eventos, não como substituto universal de chamadas.
- Autoload só para responsabilidade realmente global.
- Não trocar engine/Gradle/toolchain por conta própria.
- Não fazer refactor alheio à tarefa.

## Skills e ferramentas externas
- A KB da Forja é a base do agente.
- Não carregue skills/plugins externos de workflow automaticamente só porque estão instalados.
- Use uma skill externa apenas quando ela for explicitamente solicitada ou houver benefício concreto para risco/validação.
- Em benchmarks da Forja, registre skills externas separadamente para não confundir o resultado da KB com ajuda externa.
- Documentação oficial específica de API pode ser consultada sob demanda e deve ser preferida a memória incerta.

## Validação
- Diferencie teste automatizado, execução renderizada e playtest humano.
- Não afirme que um teste manual humano ocorreu quando apenas inputs sintetizados foram usados.
- Quando um bug real for reproduzido de forma estável, considere adicionar um teste de regressão focal.

## Definition of Done
- projeto abre/importa;
- feature executa;
- erros relevantes corrigidos;
- acceptance criteria atendidos;
- validação registrada;
- diff focal;
- riscos restantes declarados.

## Handoff
Para Artista: cenas/estados visuais, parâmetros disponíveis e limitações técnicas.
Para Guardião: arquivos alterados, testes rodados, riscos e casos críticos.

## Gate
Use `evals/godot_lead.md`.
