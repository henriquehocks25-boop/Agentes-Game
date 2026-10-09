# FORJA_PROJECT — Contrato verificável do projeto

> **M0 / Versão de planejamento 0.1.** CONFIRMADO = pedido explícito do usuário; PROPOSTO = hipótese; TBD = aberto. Não converter hipótese em requisito aprovado.

## Identidade
- Nome: TBD (pasta técnica: novo-jogo)
- Gênero: **CONFIRMADO — Sobrevivência / Construção**
- Experiência desejada: **PROPOSTO — transformar ambiente hostil em abrigo funcional**
- Pilares (até 4): **PROPOSTOS** — coleta com propósito; construção com consequência; pressão legível; progressão tangível
- Godot versão exata: TBD (base de conhecimento de Godot 4.x; não equivale a seleção da versão do projeto)
- Renderer: TBD
- Plataformas: TBD (PC como hipótese, não decisão)
- Câmera / resolução / aspect: TBD (alternativas avaliadas em GDD)
- Hardware mínimo / target FPS: TBD
- Cena inicial (res://): TBD, sem projeto Godot criado
- Branch / projeto isolado: **main**, arquivos de planejamento em projects/novo-jogo/ no repositório Agentes-Game

## Design
- Core loop: **PROPOSTO** — explorar → coletar madeira e pedra → construir/abastecer fogueira → sobreviver à noite
- Meta loop: **PROPOSTO FUTURO** — melhorar acampamento e explorar
- Progressão/economia: **PROPOSTO** — madeira disputa construção e combustível; pedra entra no custo estrutural
- World/level layout: **PROPOSTO M1** — um mapa pequeno fixo, uma clareira, nós de recursos
- InputMap / controles: TBD
- Save schema version: TBD (nenhum save no M1 proposto)

## Visual
- Referências, MUST-HAVE, MUST-NOT, paleta/valores: TBD
- Silhueta/material de personagem: TBD
- Ambiente/biomas: TBD (clareira é só cenário de teste proposto)
- Arte-fonte e pipeline: TBD
- Restrições do renderer: TBD

## Arquitetura e dependências
- Scenes/autoloads/resources principais: TBD após Godot/visão aprovados
- Contratos de signals/events/interfaces: TBD
- Plugins/SDK/licenças: TBD
- Paths sob responsabilidade: projects/novo-jogo/
- ADRs aprovadas: nenhuma

## Validação
- Critérios de aceite: documentados como **proposta** em GDD.md §6 e ROADMAP.md
- Testes existentes: nenhum executado
- Cena representativa: **PROPOSTA** — clareira com madeira, pedra, fogueira e primeira noite
- Risco central: **PROPOSTO** — loop coleta/construção/frio pode não gerar escolha interessante
- Baseline performance: não medida
- Known bugs/limites: nenhum jogo implementado
- Evidências verificadas: somente artefatos Markdown do planejamento no GitHub
- Campos não verificados: versão Godot, câmera, plataforma, estética, mecânicas, controles, renderer, performance

## Pendências para sair de M0
1. Confirmar perspectiva e dimensionalidade.
2. Confirmar estética/atmosfera e plataforma.
3. Aprovar ou adaptar o loop fogueira/frio.
4. Revisar contrato de projeto e critérios antes de executar código.
