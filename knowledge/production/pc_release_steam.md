---
title: "PC Release — Godot Export, Windows and Steamworks"
domain: production
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/export/index.html
  - https://docs.godotengine.org/en/stable/tutorials/editor/command_line_tutorial.html
  - https://partner.steamgames.com/doc/sdk
  - https://partner.steamgames.com/doc/features/cloud
  - https://partner.steamgames.com/doc/features/achievements
source_type: official
godot_version: "4.x stable; pin exact"
last_verified: 2026-10-08
confidence: medium-high
token_budget: 1200
status: active
---

# Release começa cedo
Exportar não basta: distribuição exige save estável, configuração, licença de assets, input, compatibilidade, crash reporting e rollback.

## Níveis
Básico: export preset + template + executável Windows. Intermediário: versões, settings, saves em `user://`, packaging e smoke fora do editor. Avançado: Steamworks, achievements, cloud, build depots, CI, branches beta e migração. Profissional: release candidate, matriz hardware/driver, rollback, crash triage e suporte pós-lançamento.

## Godot
Fixar versão exata, renderer e export templates compatíveis. Criar `export_presets.cfg` apropriado, automatizar CLI após validar preset, testar binário em ambiente limpo sem editor, paths e permissões de escrita, idioma e resoluções, mouse/gamepad, janela/fullscreen, performance e assets importados. Não publicar segredos no repo.

## Steamworks
Integração exige conta/AppID, SDK ou extensão/plugin compatível e configuração do painel Steamworks. **Não presumir Steam API embutida na Godot.** Achievements/stats via interface apropriada, checar inicialização e modo offline. Steam Cloud pode ser Auto-Cloud (configuração de paths) ou API; testar conflitos de versões, múltiplas máquinas e corrupção de save. A configuração do painel é trabalho externo que deve ser comprovado, não inventado.

## Release checklist
Versionamento e changelog; backups/migrações de saves; copyright/licenças; build limpo; smoke 20–30 min; configurações e remap; crash/softlock; estabilidade; desempenho; UI/resolução; instalador/depot; ícone e metadados; testes offline; rollback e release notes.

## Anti-patterns
Só testar no editor; build exportada não iniciar; usar arquivo absoluto local; publicar plugin sem validar licença; assumir Cloud sincroniza automaticamente; declarar achievement testado sem Steamworks real.

## Referências
Docs oficiais Godot export e Steamworks SDK/Cloud/Achievements. Procedimentos de publicação variam por conta/plataforma; verifique documentação atual antes do lançamento.
