# FORJA_PROJECT — Contrato verificável do projeto

> **M0 / planejamento v0.2.** CONFIRMADO = escolha do usuário; PROPOSTO = hipótese; TBD = pendente.

## Identidade
- Nome: TBD; diretório técnico: `projects/novo-jogo/`
- Gênero: **CONFIRMADO — RPG + Sobrevivência + Construção**
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
- Combate: TBD (tempo real, turnos, outro ou não focado em combate)
- Classes, magia, NPCs, missões narrativas: TBD
- Recursos/economia: **PROPOSTO** — madeira e pedra; madeira para estrutura/combustível
- Mundo: **PROPOSTO M1** — clareira fixa; bioma/ambientação final TBD
- Controles/InputMap: TBD
- Save schema: TBD; M1 proposto sem save

## Visual
- Técnica: **CONFIRMADO — arte/cenários 2D em composição isométrica**, não 3D obrigatório
- Estilo de arte (pixel art, ilustração etc.): TBD
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
- Exemplar proposto: mapa isométrico, madeira/pedra, fogueira, risco da noite, progressão de 1 perk
- Risco: repetição do loop sem decisão relevante + oclusão/legibilidade isométrica
- Testes: **NOT_RUN**, nenhum projeto Godot executável
- Performance: NOT_RUN
- Evidências: somente arquivos Markdown salvos no GitHub
- Ainda não verificados: Godot exato, arte, hardware, plataforma, combate, tempo de jogo, números de balanceamento

## Pendências para completar M0
1. Definir estilo de arte e ambientação.
2. Definir abordagem de RPG (inclui tipo de combate ou não).
3. Confirmar plataforma/versão Godot e controles.
4. Aprovar ou ajustar loop inicial fogueira/frio e prova de progressão.
5. Revisar o escopo de M1 e os critérios antes da implementação.
