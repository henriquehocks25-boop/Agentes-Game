# Plano de testes M1 — NOT_RUN

O projeto foi escrito, mas **não foi executado no Godot neste ambiente**. Não tratar este documento como resultado de testes.

## Testes de início / importação
- [ ] Importar `project.godot` em Godot 4.7.2 Standard.
- [ ] Verificar parse de todos os GDScript (nenhum erro no painel de depuração).
- [ ] Executar cena principal com F5.
- [ ] Executar teste headless: `godot --headless --path . --script res://tests/smoke.gd`; exigir retorno 0 e mensagem PASS.

## Movimento / Pixel Art
- [ ] WASD move nas quatro direções da tela; Shift corre e consome fôlego.
- [ ] Jogador não sai dos limites do mapa nem atravessa árvores/minérios/abrigos posicionados.
- [ ] Render em 2D isométrico está ordenado por profundidade e os pixels permanecem nítidos.
- [ ] Estados visuais humano idle / caminhada / corrida / ataque / dano / morte aparecem.
- [ ] Verificar o enquadramento em 1280 x 720 com UI legível.

## Sobrevivência, coleta, crafting e construção
- [ ] E recolhe apenas um nó próximo; recurso esgotado desaparece e deixa de bloquear movimento.
- [ ] TAB alterna receitas; C falha sem consumir materiais quando custo insuficiente.
- [ ] É possível produzir espada, machado, lança, arco, escudo e armadura e equipar armas produzidas.
- [ ] R melhora a arma apenas uma vez e aumenta efetivamente o dano em 2.
- [ ] B constrói fogueira e V constrói abrigo apenas em posição livre com inventário suficiente.
- [ ] Noite aumenta frio longe do abrigo/fogo; fogo perde combustível e pode ser reabastecido com E.
- [ ] Construções protegem quando próximas; sem proteção, frio máximo causa dano real.

## Combate / IA / RPG
- [ ] Inimigo detecta, se aproxima e aplica ataque após telegraph; não causa dano fora de alcance.
- [ ] J / clique esquerdo atacam com velocidade e alcance de cada arma.
- [ ] Dano e upgrades são registrados corretamente.
- [ ] Defesa com escudo e armadura reduz dano; esquiva consome fôlego e concede janela invulnerável.
- [ ] Ao derrotar criatura: +couro/+minério/+XP e mudança para estado death.
- [ ] Personagem acumula XP e sobe nível; 7/8 escolhem apenas um talento.
- [ ] Vida <= 0 apresenta derrota e F5 reinicia a cena.

## Gate
- [ ] Executar **10 ciclos manuais** sem falhas críticas.
- [ ] Registrar logs, capturas realistas da cena (não mockups), FPS e versão exata.
- [ ] Revisão independente de código, UX, arte e controle.
- [ ] Somente então atualizar FORJA_STATE.md de NOT_RUN para PASS/PASS_WITH_CAVEATS.

## Itens não implementados (não reprovar M1 por isso)
Magia jogável, vila completa, ruínas exploráveis, IA de navegação sofisticada, equipamentos por tier, inventário visual complexo, persistência, mundo procedural, multiplayer e sprites finais detalhados.
