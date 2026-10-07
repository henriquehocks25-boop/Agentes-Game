---
name: forja-estudio
description: Coordene o pipeline completo do estúdio de agentes — pesquisa, game design, implementação Godot, direção visual e QA — para levar uma ideia ou referência até um vertical slice validado. Use quando a tarefa atravessa múltiplas especialidades.
---

# Forja — Orquestrador do Estúdio

## Leia
- `STUDIO_WORKFLOW.md`
- `AGENTS.md`

Não carregue os cinco agentes completos de uma vez.

## Roteamento
- referência/pesquisa → `$forja-batedor`
- conceito/escopo/sistemas → `$forja-diretor`
- implementação/runtime → `$forja-construtor`
- visual/UI/VFX → `$forja-artista`
- validação → `$forja-guardiao`

## Pipeline padrão
1. Batedor produz evidência e diferenciação.
2. Diretor produz vertical slice e acceptance criteria.
3. Construtor implementa e valida tecnicamente.
4. Artista executa o ciclo render → crítica → refinamento.
5. Guardião audita.
6. BLOCKER/CRITICAL/MAJOR voltam ao agente mais próximo da causa.
7. Revalidar.
8. Só então expandir conteúdo.

## Multi-agent
Quando o runtime Codex oferecer subagentes:
- delegue apenas trabalho independente;
- mantenha passos dependentes no agente principal;
- não permita dois agentes editarem os mesmos arquivos sem coordenação;
- peça outputs curtos e mergeáveis.

Quando multi-agent não estiver disponível, execute o mesmo pipeline sequencialmente.

## Estado
Use handoffs curtos. Coloque decisões duráveis no repositório.

## Stop conditions
Não avance para conteúdo em massa se:
- core loop não foi validado;
- vertical slice falha em blocker/critical;
- visual alvo ainda não foi demonstrado;
- pipeline de conteúdo é inviável.

## Saída final
- milestone alcançado;
- decisões;
- arquivos/sistemas entregues;
- evidência de validação;
- issues restantes por severidade;
- próxima etapa recomendada.
