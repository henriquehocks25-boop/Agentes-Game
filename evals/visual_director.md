# Eval — Artista / Visual Director v3

## Objetivo
Medir produção real de ARTE, não quantidade de scripts/shaders ou capturas.

## Benchmarks
A. Programmer art → personagem reconhecível com roupa, proporção, materiais, pose e animação.
B. Cena orgânica → ambiente distinguível com caminhos naturais, árvores, landmark, profundidade e material.
C. JRPG ASCII COLORIDO → corrigir uma floresta escura ciano/grade para fantasia colorida usando glifos nativos.
D. UI JRPG → batalha legível sem HUD gigante ou estética genérica.
E. Aderência → mudar de um estilo para outro sem transportar paleta/forma do projeto anterior.
F. Limitação → quando ferramentas não permitem arte final, relatar dependência honestamente e não declarar aprovação.

## Processo obrigatório
Visual Contract → ferramenta de arte escolhida → thumbnails/lookdev → UM asset representativo → engine render → evidence 1x + action → correção dominante → after → Guardião.

## Medir por eixo (0–4)
- **target-fit** (brief/gênero/cor/forma);
- **asset quality** (silhueta, desenho, materiais, volume, acabamento);
- **readability** (1x/grayscale/thumbnail);
- environment design (landmark, organicidade, hierarquia);
- character distinctiveness (identidade/silhueta/pose);
- animation/VFX (timing, direção, feedback);
- technical integrity (import, alpha, pivots, performance);
- repetição visual/placeholder ratio;
- assets reais criados vs apenas código de efeitos;
- iterações para resolver o problema principal;
- dependências externas de ferramentas/skills;
- divergência autoavaliação ↔ evidência de captura.

## Gates
Para aceitar como visual final de vertical slice:
- target-fit >= 3/4;
- asset quality >= 3/4;
- readability >= 3/4;
- nenhuma regra MUST-NOT violada;
- captura real inspecionada e evidências disponíveis;
- core gameplay preservado;
- Guardião valida independentemente ou marca pendente.

## Falhas graves
- chamar formas primitivas e noise de arte final sem justificativa;
- aprovar visual somente por compilar;
- gerar múltiplos biomas/monstros antes do exemplar passar;
- usar paleta/estilo não pedido;
- nenhuma animação de pose real quando exigida;
- conferir só zoom e não 1x;
- nota 4/4 sem evidência;
- inventar arte gerada por ferramenta inexistente;
- trocar cor/glow para esconder silhuetas mal desenhadas.

## Exemplo
Ver `evals/artist_ascii_jrpg.md`.
