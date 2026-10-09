# FORJA_PROJECT — Contrato verificável do projeto

> **M0 / planejamento v0.3.** CONFIRMADO = escolha do usuário; PROPOSTO = hipótese; TBD = pendente.

## Identidade
- Nome: TBD; diretório técnico: `projects/novo-jogo/`
- Gênero: **CONFIRMADO — RPG + Sobrevivência + Construção**
- Combate: **CONFIRMADO — em tempo real** (não por turnos); regras específicas TBD
- Dimensionalidade/perspectiva: **CONFIRMADO — 2D isométrico** (sprites/cenários 2D em projeção isométrica)
- Público/experiência: **PROPOSTO** — explorar, evoluir personagem, erguer refúgio e enfrentar riscos
- Pilares (propostos): exploração recompensadora; construção com consequência; progressão RPG com escolhas; sobrevivência legível
- Godot versão exata: TBD (conhecimento Godot 4.x não determina versão do projeto)
- Renderer: TBD
- Plataforma: TBD
- Câmera: **2D isométrica confirmada**, zoom, limites, resolução/aspect TBD
- Hardware e alvo FPS: TBD
- Cena inicial `res://`: TBD; sem código/projeto Godot existente nesta pasta
- Branch: `main`; planejamento isolado em `projects/novo-jogo/`

## Design
- Core loop: **PROPOSTO** — explorar → coletar → XP / decisão de perk → construir → sobreviver a evento noturno → progredir
- Meta loop: **PROPOSTO** — ampliar base e especialização para novas regiões
- RPG: **CONFIRMADO como gênero**; **PROPOSTO M1** — objetivo, XP e escolha entre duas melhorias funcionais
- Combate: **CONFIRMADO — tempo real**. **PROPOSTO M1-B:** 1 encontro de ameaça e ataque básico. **TBD:** armas, mira, defesa, dodge, magia, ritmo, habilidades e IA
- Classes, magia, NPCs, missões narrativas: TBD
- Recursos/economia: **PROPOSTO** — madeira e pedra; madeira para estrutura/combustível
- Mundo: **PROPOSTO M1** — clareira fixa; bioma/ambientação final TBD
- Controles/InputMap: TBD
- Save schema: TBD; M1 proposto sem save

## Visual
- Técnica: **CONFIRMADO — arte/cenários 2D em composição isométrica**, não 3D obrigatório
- Estilo de arte: **TBD por escolha explícita do usuário** (“outro estilo ainda a definir”); não adotar pixel art, ilustração, low-poly ou qualquer default
- Referências, MUST-HAVE/MUST-NOT, cores, silhuetas, ambiente, arte fonte: TBD
- Contrato técnico preliminar: validar pivôs de sprites, camadas e profundidade, oclusão e leitura de construção no Godot 2D; configuração detalhada TBD

## Arquitetura
- Organização preliminar sugerida: cenas/Nodes por feature, dados de itens, receitas e perks independentes; **não implementada**
- Scenes/autoloads/resources/interfaces reais: TBD
- Plugins/SDK/licenças: TBD
- Paths: `projects/novo-jogo/`
- ADRs: decisão confirmada de perspectiva/gênero registrada neste documento; ADR detalhada ainda não criada

## Validação
- Critérios: propostas no `GDD.md` e `ROADMAP.md`
- Exemplar proposto: mapa isométrico, madeira/pedra, fogueira, risco da noite, progressão de 1 perk **e um encontro mínimo de combate em tempo real**
- Risco: repetição do loop sem decisão relevante, combate desconectado da sobrevivência e legibilidade/oclusão isométrica
- Testes: **NOT_RUN**, nenhum projeto Godot executável
- Performance: NOT_RUN
- Evidências: somente arquivos Markdown salvos no GitHub
- Ainda não verificados: Godot exato, **estilo visual**, hardware, plataforma, **detalhes mecânicos de combate**, tempo de jogo, números de balanceamento

## Pendências para completar M0
1. Definir estilo de arte e ambientação, mantendo o estilo TBD até escolha explícita.
2. Definir detalhes de combate em tempo real: arma/ataque inicial, mira e defesa, sem presumir magia/classes.
3. Confirmar plataforma/versão Godot e controles.
4. Aprovar ou ajustar loop inicial fogueira/frio, prova de progressão e encontro mínimo.
5. Revisar escopo de M1 e critérios antes da implementação.
