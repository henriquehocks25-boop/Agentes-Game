---
title: "Godot Gameplay and Scalable Architecture"
domain: production
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/best_practices/index.html
  - https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/static_typing.html
  - https://docs.godotengine.org/en/stable/tutorials/io/saving_games.html
source_type: official-plus-practice
godot_version: "4.x stable; pin exact"
last_verified: 2026-10-08
confidence: medium-high
token_budget: 1600
status: active
---

# Arquitetura orientada a mudanças
Cena = composição e ciclo de vida; Resource = dados/configuração; Signal = comunicação desacoplada quando apropriada; Group = consulta por papel; Autoload = serviço realmente global; não manager por feature. Scripts tipados e APIs pequenas reduzem erros; use composição antes de herança profunda.

## Níveis
- Básico: Node/Scene/GDScript/InputMap, `_process` vs `_physics_process`, sinais e grupos.
- Intermediário: `Resource` de dados, componentes de Health/Hitbox/Hurtbox, FSM, eventos de domínio, save/load e testes.
- Avançado: fronteiras de sistemas, contratos de estado, serialização versionada, streaming/async loading, ferramentas `@tool`, determinismo quando necessário, perf/telemetria.
- Profissional: migração de schema, testes automatizados + build real, ADR, revisão de código, perf budgets e rollback.

## Gameplay por sistema
- **Input/movimento**: actions remapeáveis, `CharacterBody2D/3D`, aceleração/fricção, coyote time/jump buffering conforme gênero, delta e física estável.
- **Câmera**: follow, dead zone, look-ahead, bounds, shake curto e configurável, clipping e motion sickness.
- **Física**: layers/masks e overlap vs raycast, query de estado no tempo certo; não assumir resultado imediato de Area2D.
- **Combate**: pipeline `attack intent → validation → hit detection → damage policy → effects → feedback`; invulnerabilidade, knockback, prioridade, team/faction, cooldown e cancel windows definidos.
- **Inventário/equipamento**: definições imutáveis por Resource, instâncias com IDs, stack/weight, transações atômicas, consistência entre UI/save.
- **Quest/diálogo**: IDs estáveis, condições/eventos, persistência, localizações e proteção contra reentrância.
- **Save/load**: serialize dados, não ponteiros de Nodes; schema_version, migração, escrita segura e teste com arquivos inválidos/antigos.
- **NPC/boss**: contrato de percepção/decisão/ação separado da apresentação; telegraphs e recovery.
- **World progression**: checkpoints, respawn, transições, rollback de estados temporários.

## Estrutura recomendada (exemplo, não dogma)
`core/` (contratos), `features/combat/`, `features/quests/`, `content/` (Resources), `ui/`, `world/`, `tools/`, `tests/`. Cada feature expõe APIs/eventos, não lê detalhes privados de outra feature.

## Teste por camadas
Unit de regras puras; integração de signals/resources/scene; headless smoke; rendered input/visual; manual playtest; export smoke. Use fixtures reproduzíveis, seeds e baseline. Evite teste que passa porque ignora erros de log.

## Anti-patterns
`get_node("../../..")` em massa, Autoload gigante, duplicar estado entre UI e gameplay, salvar nós inteiros, reescrever arquitetura antes de medir custo, mudar API sem atualizar consumidores. Performance é responsabilidade de design e código.
