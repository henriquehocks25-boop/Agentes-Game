# Ruínas do Crepúsculo — Protótipo M1 (nome provisório)

**Versão técnica-alvo:** Godot **4.7.2**, projeto GDScript / 2D / Compatibility. Versão escolhida para testar o protótipo; não houve confirmação da versão instalada do usuário.

**Status:** arquivos do projeto criados no GitHub; **execução no motor NOT_RUN neste ambiente**, pois não há binário Godot instalado. Portanto, não há declaração de build ou gameplay testado. Use o roteiro em `TEST_PLAN.md` para validar no Godot local.

## Abrir
1. Instale Godot 4.7.2 Standard (GDScript) ou uma 4.7.x compatível.
2. Clone ou baixe o repositório Agentes-Game do GitHub.
3. No Godot Project Manager escolha **Import** e aponte para `projects/novo-jogo/game/project.godot`.
4. Pressione **F6/F5** (ou botão executar projeto).

**Comando para Linux:** `godot --path projects/novo-jogo/game --editor`.
**Teste automatizado headless, se o editor estiver instalado:** `godot --headless --path projects/novo-jogo/game --script res://tests/smoke.gd`.

## Controles
| Ação | Entrada |
|---|---|
| Andar | W A S D |
| Correr | Shift |
| Ataque em tempo real | J (na direção do personagem) ou clique esquerdo (mira apontada pelo mouse) |
| Defender | Segure K ou clique direito, após fabricar escudo |
| Esquivar | Espaço (consome fôlego) |
| Coletar/reabastecer fogueira | E, perto de recursos/fogueira |
| Fogueira | B, posiciona na direção à frente do personagem |
| Abrigo | V, posiciona na direção à frente do personagem |
| Escolher receita | Tab |
| Fabricar receita | C |
| Melhorar arma equipada | R (3 minérios e 1 madeira) |
| Equipar armas fabricadas | 1 Espada, 2 Machado, 3 Lança, 4 Arco |
| Escolher talento a partir do nível 2 | 7 Coletor, 8 Resistente |
| Reiniciar após morrer | F5 |

O jogador começa com **espada gasta**. Espada de ferro, machado, lança, arco, escudo e armadura simples são fabricáveis; a seleção de receita aparece na HUD. **Flechas ilimitadas são apenas simplificação deste protótipo** (não é regra definitiva do jogo).

## Loop disponível no código
Explorar clareira isométrica → coletar madeira/pedra/minério → enfrentar criaturas com IA simples → obter couro/minério → fabricar e melhorar equipamento → construir fogueira/abrigo → sobreviver ao frio noturno → subir de nível e escolher um talento.

- Ataques variam em dano, alcance e tempo de recuperação segundo a arma.
- Inimigos perseguem ao detectar jogador, sinalizam um ataque e deixam recursos ao morrer.
- Defesa reduz dano se houver escudo; armadura reduz dano recebido; esquiva usa fôlego e invulnerabilidade curta.
- Estruturas bloqueiam colocação sobre recursos e ajudam a enfrentar o frio.
- Não há conteúdo mágico disponível no começo, conforme o GDD.

## Arte / limites
O código em `scripts/pixel_art.gd` desenha **figuras pixeladas procedurais de teste** para humano, criatura, árvores, minério, pedras, fogueira e abrigo. Estados: **idle, walk, run, attack, hurt e death** no personagem e **idle/walk/windup/attack/hurt/death** na criatura. Isso não substitui sprite sheets de Pixel Art detalhada final; apenas permite testar gameplay sem depender de importação de assets.

O nome “Ruínas do Crepúsculo” é **provisório**, não título aprovado.

**Ainda faltam:** pixel art final, animações desenhadas frame a frame, UI definitiva, áudio, pathfinding sofisticado, save/load, sistema de flechas, várias peças de armadura, escalonamento extenso de equipamentos, biomas, vilarejos, ruínas exploráveis e magia desbloqueável. O ataque do arco usa detecção de alcance simplificada, sem projétil físico.

Consulte o projeto pai: `../GDD.md`, `../FORJA_PROJECT.md`, `../COMBAT_DESIGN.md`, `../MAGIC_SYSTEM.md`.
