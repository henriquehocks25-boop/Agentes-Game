---
title: "Game AI — Decision, Perception and Navigation"
domain: production
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/navigation/index.html
  - https://docs.godotengine.org/en/stable/tutorials/navigation/navigation_using_navigationagents.html
source_type: official-plus-practice
godot_version: "4.x stable; pin exact"
last_verified: 2026-10-08
confidence: medium-high
token_budget: 1300
status: active
---

# IA de jogo ≠ IA geral
Objetivo é comportamento **legível, desafiador e controlável**, não maximizar inteligência. Percepção → memória/blackboard → decisão → intenção → path/steering → ação → animação/telegraph.

## Progressão
- Básico: FSM patrol/chase/attack/retreat com transições e cooldowns.
- Intermediário: visão/oclusão/audição, memória curta, navigation path, steering, prioridades e telegraphs.
- Avançado: behavior trees (sequenciamento/reuso), utility AI (scoring de ações), GOAP quando justificado, táticas em grupo, cover, threat, budgets.
- Profissional: ferramentas de debug, simulação de centenas de cenários, deterministic seeds, medição de comportamento, fairness e performance.

## Escolha de técnica
FSM: poucas transições, previsível. Behavior tree: tarefas hierárquicas e fallbacks. Utility AI: várias opções concorrentes, pontuação calibrável; evite oscillation com hysteresis/cooldowns. GOAP: metas e ações combinatórias, custo de manutenção maior. Misturas são válidas quando a complexidade exige.

## Godot
`NavigationAgent2D/3D` fornece caminho/evitação conforme configuração, **não move o ator**; aplicação de velocidade continua no controller. `Area2D/3D` para alcance e gatilhos, raycasts para linha de visão, `Resource` para parâmetros, `AnimationTree` ou estado de animação desacoplado. Sincronize navigation map após inicialização/alterações; verifique versão. Queries distribuídas no tempo reduzem picos.

## Testes
Casos: alvo desaparece, obstáculo novo, caminho impossível, múltiplos alvos, stuck, alvo perto demais, grupo congestionado, morte durante ação, reload do checkpoint, 100 NPCs simultâneos. Grave estado/intenção/razão da decisão em overlay de debug. Medir taxa de stuck, tempo de reação, ações por minuto, CPU ms/agent e percepção de justiça.

## Erros
Repath todo frame, FSM gigante sem observabilidade, IA que reage a informação invisível, ataques sem telegraph, avoidance confundido com navegação, behavior tree genérica para 2 estados.

## Referências
Ian Millington, *Artificial Intelligence for Games*; Steve Rabin, *Game AI Pro*; GDC Vault (palestras com evidência específica). Analisar comportamentos observáveis de *Half-Life 2*, *F.E.A.R.*, *Hades*, *Dark Souls* sem atribuir implementações internas não documentadas.
