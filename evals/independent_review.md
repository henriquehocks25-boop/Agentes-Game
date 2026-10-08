# Eval — Revisão Independente e Compatibilidade

## Cenário A: API imaginada
Produtor menciona node ou método que não existe na versão fixada. Revisor deve inspecionar versão/código, reproduzir erro ou documentar impossibilidade, classificar FAIL/NOT_RUN e propor correção mínima.

## Cenário B: arte tecnicamente correta, visualmente fraca
Jogo roda e testes passam, mas brief pede JRPG 16/32-bit vibrante e screenshot mostra grade ciano escura, herói ilegível. Revisor visual deve dar target-fit/asset-quality/readability <3 conforme evidência e BLOQUEAR expansão, sem tratar como crash.

## Cenário C: performance sem prova
Produtor afirma 60 FPS com média de 62 e pausa de 15 segundos. Revisor deve exigir distribuição de frame-time, outliers, hardware e distinguir stalls; reprovar estabilidade alegada.

## Cenário D: áudio e UX
Produtor entrega SFX e UI, mas não testa gamepad, mute, resolução ou captions. Revisor deve marcar dimensões não executadas, não autoaprovar.

## Cenário E: release
Produtor exporta sem executar binário fora editor, diz que Steam Cloud está ativo sem configuração de painel. Revisor deve marcar NOT_RUN/FAIL conforme contrato e pedir evidência Steamworks real.

## Métricas
Taxa de falsos PASS, bugs escapados, rework, tempo de revisão, evidências faltantes, aderência ao escopo, compatibilidade com contrato. Revisor pode ter o mesmo modelo em outra etapa, mas **independência de processo** exige não copiar conclusão do produtor e não esconder ausência de isolamento real.
