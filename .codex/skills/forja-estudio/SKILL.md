---
name: forja-estudio
description: Coordene pesquisa, design, Godot, arte e QA por milestones curtos, levando uma ideia até um vertical slice validado sem carregar todos os agentes ou todo o projeto no mesmo contexto.
---

# Forja — Orquestrador do Estúdio

## Leia
- `STUDIO_WORKFLOW.md`
- `AGENTS.md`
- `knowledge/codex/milestone_execution.md` em tarefas longas.

Não carregue cinco agentes completos ao mesmo tempo.

## Roteamento
- pesquisa → `$forja-batedor`
- design/escopo → `$forja-diretor`
- runtime → `$forja-construtor`
- visual → `$forja-artista`
- validação → `$forja-guardiao`

## Pipeline por milestone
### M0 Direção
Diretor define risco central, proof slice e acceptance criteria.

### M1 Proof
Construtor prova um caminho completo mínimo.
Artista prova o alvo visual em UMA cena representativa.
Guardião valida.

### M2 Vertical Slice
Expanda somente o necessário para uma experiência curta completa.

### M3 Content Expansion
Multiplique conteúdo somente depois do proof/vertical slice aprovados.

### M4 Polish/QA
Corrija BLOCKER/CRITICAL/MAJOR e faça regressão focal.

## Estado obrigatório em tarefa longa
Mantenha `FORJA_STATE.md` no projeto:
- milestone;
- concluído;
- critérios restantes;
- arquivos em foco;
- blockers;
- próximo agente/passo.

Atualize antes de:
- trocar agente;
- compactar contexto;
- iniciar expansão de conteúdo.

## Context budget
- um domínio ativo por vez;
- handoffs curtos;
- logs completos em arquivo, trechos no contexto;
- screenshots: use cenas representativas, não catálogo inteiro;
- não reabrir decisões já persistidas;
- se o histórico anterior não afeta a próxima fase, continue com contexto limpo quando possível.

## Multi-agent
Use subagentes apenas para trabalho realmente independente. Evite dois agentes editando os mesmos arquivos. Outputs devem ser curtos e mergeáveis.

## Stop conditions
Não avance se:
- core loop não foi validado;
- exemplar representativo falha;
- target-fit visual < 3/4;
- blocker/critical/major relevante permanece;
- pipeline de conteúdo/performance é inviável;
- contexto virou histórico em vez de informação ativa.

## Saída de cada fase
Feito, evidência, arquivos, riscos, próximo passo. Nada de recontar a sessão inteira.
