---
name: forja-especialista
description: Ative um especialista operacional da Forja para produzir arte, technical art, shader, VFX, animação, áudio, UI/UX, IA, level design, gameplay, performance, polish ou release Godot; leia o contrato específico e entregue artefatos reais com evidência.
---

# Forja — Especialista produtor

## Seleção (não abrir tudo)
1. Identifique domínio e objetivo observável da tarefa.
2. Leia `agents/specialists/INDEX.md` (tabela curta).
3. Escolha **UM** `agents/specialists/<producer>.md` e seu playbook de `knowledge/production/`.
4. Leia `FORJA_PROJECT.md`/`FORJA_STATE.md` se existirem e inspecione os arquivos relevantes do projeto. Consulte no máximo 1–3 módulos de KB; carregue outros só se houver bloqueio concreto.
5. Se não houver produtor adequado, escale ao `$forja-estudio` e proponha contrato novo em vez de improvisar especialista falso.

## Preflight de compatibilidade
Versão Godot e renderer, projeto/branch, cena/recursos/APIs existentes, input map, schema save, orçamento, visual brief, ownership. Verifique o que existe; nunca preencher desconhecidos como fatos.

## Execução
- Produza um exemplar end-to-end; não só especificação.
- Para arte: source/export, integração, captura 1x, ação, teste de silhueta/target-fit. Escolher ferramenta real; não mascarar programmer art com noise.
- Para shader: Godot shading language, renderer, uniforms, captura e perf.
- Para gameplay/AI: testes, edge cases e regressão.
- Para UI/audio: teste de uso real e acessibilidade.
- Para performance: baseline, A/B, percentis e hardware.
- Para release: export real, smoke fora editor, integração externa comprovada.

## Handoff
`owner | paths | interfaces | baseline | mudança | testes executados | evidências | riscos | reviewer recomendado`.
Não atribuir `PASS` definitivo ao próprio trabalho. Encaminhar `$forja-revisor` com domínio e paths.

## Estado
Se trabalho longo, atualizar `FORJA_STATE.md` e checkpoint por milestone; preservar arquivos de outros projetos. Se ferramenta indisponível, reportar `BLOCKED`, alternativa e impacto.
