# COMBAT_DESIGN v0.1 — Combate em Tempo Real (2D Isométrico)

> **CONFIRMADO**: combate em tempo real para RPG 2D isométrico de sobrevivência/construção. **TBD**: estilo artístico (“outro estilo ainda a definir”), armas, mira, defesa, habilidades, magia, classes e tipos de inimigos. Conteúdo proposto a seguir não é aprovação do usuário nem implementação.

## Propósito do combate
Combate deve criar escolhas de **posicionamento, tempo de ataque, segurança e risco de sair da base**; não ser uma camada solta de dano/XP. Deve coexistir com explorar, coletar, construir e sobreviver, sem prejudicar a legibilidade isométrica.

## Contrato confirmado
- Tempo de resolução: **real time**, sem turno, grade tática ou pausa obrigatória para selecionar ação.
- Mundo e câmera: **2D isométrico**, sem transformar o jogo em 3D apenas para implementar hitboxes.
- Estética: **intencionalmente indefinida**. Não definir automaticamente pixel art, desenho, paleta, shader, sangue, luz ou VFX específicos.

## M1-B — Encontro mínimo proposto
Após a prova básica de coleta/construção/sobrevivência (M1-A), incorporar:
1. **Uma ameaça visível** em região delimitada da clareira.
2. **Um único verbo ofensivo** (ataque básico) de execução em tempo real, com alcance e recuperação verificáveis.
3. **Uma ação hostil antecipável** (telegraph de ataque), com janela de resposta por **posicionamento/movimento**, sem supor esquiva/dash.
4. **Feedback legível** de acerto, erro, dano e término do encontro; possibilidade de perder e reiniciar.
5. **Interação sistêmica simples** a validar: o encontro gera risco para alcançar algum recurso; derrotá-lo permite prosseguir com objetivo, sem exigir grandes tabelas de loot.

### Parâmetros de protótipo (TBD)
Alcance, dano, intervalo de ataque, velocidade do inimigo, HP, aggro, telegraph e recuperação devem ser dados ajustáveis, não valores arbitrários fixados no GDD.

### Decisões que NÃO estão tomadas
- Ataque corpo a corpo ou à distância? Qual arma inicial?
- Mira com mouse, direção do movimento, cursor projetado ou assistência?
- Esquiva/dash, bloqueio, stamina, habilidades ativas ou somente movimentação?
- Inimigos humanos, animais, criaturas, robôs ou outro tema?
- Progressão de combate via perks/skills, classes ou equipamento?
- Morte permanente, perda de itens, respawn ou checkpoint?
- PVE apenas ou algum tipo de PVP? Multiplayer ainda TBD.

## Requisitos de legibilidade
- Projéteis, armas, personagens e telegraphs precisam ser visíveis na vista isométrica.
- Separar **indicação antecipada do perigo** de **efeito de acerto**.
- Cuidar de pivôs, ordenação por profundidade e ocultação atrás de árvores/estruturas.
- Minimizar shake, efeitos excessivos e indicadores que encubram itens ou o chão.
- Registrar critérios de arte somente após o usuário definir estilo.

## Godot 2D — proposta técnica, não código
- Input Map para ações semânticas (ex.: atacar), sem atribuir teclas até confirmar dispositivos.
- Separar intenção do jogador de movimento e resolução física.
- Usar estrutura de colisão/hitbox compatível com a versão de Godot efetivamente selecionada; **não** assumir que consultas de overlap após reposicionar uma `Area2D` reflitam o mesmo frame.
- Prefira lógica de dano e estado isolada da representação de sprite e efeito.
- Versão Godot, renderer, cena e APIs concretas: TBD; revisar `../../knowledge/godot/input_physics.md` ao implementar.

## Critérios de aceite propostos M1-B (NOT_RUN)
- [ ] O jogador consegue iniciar o ataque sem esperar o turno do inimigo.
- [ ] Hitbox e ataque não acertam alvos fora do alcance definido.
- [ ] A ameaça sinaliza uma intenção antes do dano de modo compreensível.
- [ ] É possível reduzir risco por movimento/posicionamento.
- [ ] Dano, recuperação/falha e desfecho do confronto têm feedback distinto.
- [ ] A oclusão isométrica não esconde golpes importantes.
- [ ] O confronto pode ser repetido sem regressões em coleta/construção.
- [ ] Evidência gravada, execução de testes e versão de Godot registradas antes de marcar PASS.

## Conhecimento-base consultado
- `../../knowledge/game_design/combat_design.md`: posicionamento, timing, telegraphs, trade-offs e feedback.
- `../../knowledge/game_design/scope_vertical_slice.md`: provar um exemplar antes de replicar conteúdo.
- `../../knowledge/godot/input_physics.md`: input semântico, resolução física, cuidado com overlaps de Area2D.
- `../../knowledge/visual/visual_contract.md`: não presumir estilo; gate de legibilidade e fidelidade à direção.

**Status:** documentação M0, nenhum script ou execução.
