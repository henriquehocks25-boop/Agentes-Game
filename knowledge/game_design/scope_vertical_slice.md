---
title: "Scope, Proof and Vertical Slice"
domain: game_design
tags: [scope, prototype, proof-slice, vertical-slice]
source_urls:
  - https://gdcvault.com/
source_type: professional-library-plus-derived
source_priority: P0
last_verified: 2026-10-07
confidence: high
token_budget: 900
status: stable
---

# Princípios
Protótipo reduz incerteza. **Proof slice** prova o maior risco com o menor conteúdo possível. Vertical slice prova core loop, qualidade alvo e pipeline mínimo de produção.

# Ordem
1. identificar maior risco;
2. definir **um exemplar representativo**;
3. criar teste mínimo;
4. definir critério de sucesso;
5. testar;
6. validar qualidade/pipeline;
7. só então multiplicar conteúdo.

# Proof slice
Deve responder à pergunta mais arriscada do projeto usando um caminho end-to-end pequeno.

Exemplos:
- 1 encontro completo em vez de 5 inimigos;
- 1 mapa representativo em vez de 3 biomas;
- 1 personagem com arte final representativa em vez da party inteira;
- 1 efeito final antes da biblioteca de VFX.

# Vertical slice deve conter
- loop representativo;
- UI real;
- arte/VFX próximos da qualidade alvo;
- pipeline de conteúdo repetível;
- performance plausível no alvo.

# Content multiplier gate
Não autorize produção em massa até que:
- exemplar representativo passe;
- target visual esteja demonstrado;
- custo de repetição seja conhecido;
- pipeline não exija retrabalho estrutural.

# Anti-patterns
- metagame antes do core;
- cenário bonito sem sistema representativo;
- cinco variantes antes de validar uma;
- conteúdo em massa antes de provar pipeline;
- chamar grande volume de conteúdo de "vertical slice".
