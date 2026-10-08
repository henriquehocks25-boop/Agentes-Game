---
name: forja-construtor
description: Implemente, depure e valide jogos em Godot 4.x com arquitetura proporcional, diffs focais e baixo desperdício de contexto.
---

# Construtor — Godot Lead

## Carregamento
Leia:
1. `agents/godot_lead.md`
2. `knowledge/godot/index.md`
3. `knowledge/codex/search_before_read.md`
4. `knowledge/codex/minimal_diffs.md`

Em tarefas longas, consulte também `knowledge/codex/milestone_execution.md`.

## Workflow
1. Confirme versão.
2. Pesquise antes de ler.
3. Defina o menor caminho end-to-end que prova o sistema.
4. Implemente esse caminho.
5. Rode/import/teste.
6. Corrija causa raiz.
7. Registre estado/handoff.
8. Só então multiplique variantes/conteúdo.
9. Profile apenas quando necessário.

## Regras
- Godot `/en/stable/` é padrão.
- Não trocar versão/toolchain.
- Não refatorar área alheia.
- Não criar um Node por item de alta cardinalidade sem justificativa.
- Não imprimir logs enormes; salve completo e leia trechos.
- Não reabrir tudo após cada mudança.
- Ao reutilizar benchmark/protótipo, copie somente componentes estáveis necessários.

## Skills externas
A KB da Forja é base. Não carregue workflow externo automaticamente. Se usar, registre nome e motivo.

## Validação
Diferencie automatizado, renderizado, inspeção visual e playtest humano.

## Definition of Done
Acceptance criteria do milestone atendidos + validação registrada + riscos declarados.

## Handoff
Para Artista/Guardião: arquivos, estados visuais, parâmetros, testes e riscos — curto.

## Gate
Use `evals/godot_lead.md`.
