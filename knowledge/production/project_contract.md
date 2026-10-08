---
title: "Project Truth Contract and Compatibility Gate"
domain: production
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/best_practices/project_organization.html
  - https://docs.godotengine.org/en/stable/tutorials/scripting/resources.html
source_type: official-plus-derived
godot_version: "4.x stable; pin per project"
last_verified: 2026-10-08
confidence: medium-high
token_budget: 1250
status: active
---

# Problema
Agentes sem contexto compartilhado inventam cenas, APIs, assets, estados, paletas e convenções incompatíveis.

# Fonte da verdade por projeto
Use `templates/FORJA_PROJECT.template.md` e crie ou atualize `FORJA_PROJECT.md` na raiz do projeto (não global). Formato mínimo:

```yaml
project:
  name: "..."
  engine: "Godot 4.x exact version"
  renderer: "Forward+ | Mobile | Compatibility"
  platform: "Windows PC"
  genre: "..."
  resolution: "..."
  input_devices: ["keyboard", "mouse", "gamepad"]
  pillars: ["..."]
  visual_must_have: ["..."]
  visual_must_not: ["..."]
  performance_targets: { fps: 60, target_hardware: "TBD" }
  scene_entrypoint: "res://..."
  autoloads: []
  architecture: ["..."]
  save_schema_version: 1
  content_pipeline: ["..."]
  owned_paths: {}
  external_integrations: []
  decisions: ["ADR-001 ..."]
  unverified: ["..."]
```

É um EXEMPLO de schema, não fatos sobre qualquer projeto. Não preencher campos desconhecidos com palpites: `TBD` + passo para descobrir.

# Protocolo de verificação (antes de editar)
1. Identificar projeto/raiz/branch e estado do Git; proteger trabalho local não commitado.
2. Ler `project.godot`, `FORJA_PROJECT.md`, `FORJA_STATE.md`, arquivos do sistema-alvo e dependências imediatas.
3. Inspecionar cenas/paths/APIs/recursos realmente existentes com search/list antes de presumir.
4. Registrar invariantes: contrato de sinais, tipo de Resource, coordenadas, grupos, schema de save, renderer, input map, orçamento.
5. Propor diff mínimo + testes + owner/reviewer.
6. Rodar import/headless + runtime quando exigido, comparar com baseline.
7. Atualizar contrato somente após decisão aprovada; não reescrever projeto para acomodar solução imaginada.

# ADRs (Architecture Decision Records)
Uma decisão durável contém: contexto, opções, tradeoffs, decisão, data, evidência, consequência e como reverter. Referenciar `ADR-xxx` no handoff.

# Gate de compatibilidade
Bloquear ou marcar `UNVERIFIED` quando: API não confirmada na versão, asset inexistente, renderer incompatível, schema de save sem migração, input action ausente, fonte/licença desconhecida, performance sem hardware-alvo, ou mudança destrutiva fora do escopo.

# Templates
- `templates/FORJA_PROJECT.template.md`
- `templates/FORJA_STATE.template.md`
- `templates/REVIEW_REPORT.template.md`

# Handoff compacto
`owner → artefato/caminhos → interfaces tocadas → invariantes → evidência → riscos → reviewer → próximo passo`. Revisor não deve ser o mesmo agente que produziu quando há risco relevante.
