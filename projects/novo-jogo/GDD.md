# GDD v0.1 — Sobrevivência e Construção

**Status:** proposta de design para discussão (M0). **Confirmado pelo usuário:** gênero sobrevivência/construção. Câmera, arte, tema, multiplayer e demais mecânicas **não aprovados**.
**Fonte de conhecimento:** ../../knowledge/game_design/pillars_core_meta_loops.md, systems_design.md e scope_vertical_slice.md; ../../STUDIO_WORKFLOW.md.

## 1. Visão do jogo — proposta
Um sobrevivente isolado em um ambiente natural começa com recursos escassos. Explora uma área pequena, coleta materiais, constrói proteção e administra uma ameaça ambiental periódica. O objetivo é **fazer escolhas interessantes de uso de recursos**, não construir muitos sistemas antes de validar um só.

**Fantasia principal:** "transformar um lugar hostil em um abrigo funcional, peça por peça".
**Escopo-alvo inicial:** experiência solo pequena, sem mundo aberto gigante.
**Nome definitivo, narrativa, perspectiva e estética:** TBD.

## 2. Pilares propostos
1. **Coleta com propósito:** todo material obtido deve alimentar uma decisão concreta.
2. **Construção com consequência:** o abrigo melhora a sobrevivência; localização, custo e ordem importam.
3. **Pressão legível:** o jogador entende quando está em risco e qual ação o protege.
4. **Progressão tangível:** cada ciclo deixa o acampamento visivelmente melhor.

**Teste de feature:** identificar a decisão criada, pilar, feedback e custo. Cortar features sem efeito claro no loop.

## 3. Core loop (hipótese a validar)
Explorar → coletar madeira/pedra → escolher entre construir e guardar combustível → construir/abastecer fogueira → preparar-se para a noite → sobreviver → repetir com mais capacidade de construção.

**Tensão central:** madeira alimenta o fogo e serve como material de construção; gastar tudo na estrutura pode ameaçar a sobrevivência.

**Meta loop futuro (não entra em M1):** tornar o acampamento mais eficiente, desbloquear construções, explorar novas regiões.

## 4. Sistema mínimo proposto — M1 Proof
- **Mundo:** um mapa pequeno e fixo com uma clareira e nós de recurso identificáveis.
- **Personagem:** movimentação, proximidade de objeto e ação de coleta.
- **Recursos:** madeira e pedra; inventário em números simples.
- **Construção:** 1 estrutura (fogueira) com posicionamento e custo. Custo inicial de referência: 5 madeiras + 2 pedras; ajustar por playtest.
- **Sobrevivência:** ciclo dia/noite curto e risco de frio durante a noite; a fogueira acessa combustível de madeira e fornece zona de calor.
- **Condição:** vencer após sobreviver uma noite; perder caso o frio ultrapasse um limite, com reinício claro.
- **HUD mínimo:** recursos, tempo até/noite, estado do frio, combustível e instruções contextuais.
- **Sem save em M1** e sem arte final. Um exemplo completo primeiro.

### Estados e regras observáveis
- Nó de recurso pode ser coletado uma quantidade definida de vezes; sinaliza quando esgotado.
- Construir consome recursos somente se o local for válido e houver saldo suficiente.
- Fogueira acesa com combustível protege dentro de um raio legível; fora dele, o frio avança na fase noturna.
- Sem recursos para construir/abastecer, jogo informa o motivo de forma explícita.
- Valores de custo, raio, ciclo e velocidade do frio são dados ajustáveis, não constantes enterradas em scripts.

## 5. Primeiro exemplar e risco central
**Exemplar:** uma clareira com personagem, árvores/rochas, uma fogueira posicionável e a primeira noite.
**Risco principal:** o tripé coleta ↔ construção ↔ frio pode ser chato, trivial ou frustrante antes de virar um loop divertido.

**Experimento:** observar se o jogador entende por que precisa de madeira e se escolhe conscientemente entre construir e abastecer a fogueira.

## 6. Critérios para aceitar M1
- [ ] O jogador move e coleta madeira/pedra; recebe feedback imediato.
- [ ] A interface apresenta custos e saldos corretamente.
- [ ] É possível posicionar uma fogueira em posição válida; posicionamento inválido ou custo insuficiente não consome itens.
- [ ] Uma noite completa pode terminar em sucesso ou derrota de modo reproduzível.
- [ ] O frio e o benefício da fogueira são legíveis sem explicação externa extensa.
- [ ] Há reinício da sessão e nenhuma falha crítica observada em 10 ciclos manuais.
- [ ] Evidência: captura do loop, logs de execução e checklist preenchido.
- [ ] Registrar resultado PASS/FAIL/NOT_RUN; **nenhum teste foi executado neste planejamento**.

## 7. M2 — Vertical Slice (proposta; somente após M1)
Introduzir **uma** nova construção de abrigo com utilidade clara, 1 interface de crafting refinada, apresentação visual representativa, sons de interação, persistência mínima e uma sessão curta repetível. Validar target-fit, asset quality, readability e performance antes de adicionar conteúdo.

## 8. Fora do escopo inicial
Multiplayer; combate complexo; centenas de recipes; IA avançada; NPCs; dezenas de biomas; procedural infinito; física estrutural realista; agricultura; veículos; clima dinâmico; árvore tecnológica extensa.

Isso **não veta** features para o jogo completo: impede que inviabilizem a prova do núcleo.

## 9. Alternativas de perspectiva (decisão aberta)
| Opção | Vantagem principal | Custo / risco |
|---|---|---|
| **2D top-down** (recomendação provisória) | Prototipagem e legibilidade de construção | Menos imersão espacial |
| **2.5D isométrico** | Boa leitura do acampamento com profundidade | Sorting, câmera e produção visual mais delicados |
| **3D primeira/terceira pessoa** | Maior imersão na exploração e construção | Custo visual, animação e performance mais altos |

A escolha precisa ser feita pelo usuário antes do contrato visual e da implementação.

## 10. Direção visual (ainda não escolhida)
- MUST-HAVE, MUST-NOT, paleta, silhuetas, referências e target hardware: **TBD**.
- Artista deve criar visual brief e validar uma imagem representativa **antes** de expandir assets.
- Nada de importar estética de outro projeto automaticamente.

## 11. Decisões pendentes
- **D001:** câmera/perspectiva e 2D vs 3D.
- **D002:** estética (pixel art, ilustrado, low-poly, realista etc.).
- **D003:** ambiente/tema e tom (acolhedor, hostil, fantástico etc.).
- **D004:** plataforma, controles e versão exata do Godot.
- **D005:** confirmação ou modificação do protótipo fogueira/frio como primeiro loop.
- **D006:** experiência solo ou multiplayer (M1 proposto solo).

As escolhas propostas não são ADRs aprovadas. Atualizar o contrato somente após decisão explícita.
