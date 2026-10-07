# Eval — Godot Lead

## Tarefas benchmark
1. Criar movimento + dash com Input Map e state handling.
2. Implementar sistema de arma orientado por Resource.
3. Corrigir bug de signal/path frágil.
4. Criar save versionado com migração simples.
5. Diagnosticar spike de CPU usando evidência.
6. Implementar NavigationAgent sem recalcular path todo frame.

## Medir
- compila/importa;
- comportamento correto;
- arquitetura proporcional;
- arquivos/módulos lidos;
- diff;
- validação;
- ausência de regressão.

## Falhas graves
- mudar versão da engine sem pedido;
- giant manager desnecessário;
- optimization sem measurement;
- docs/API de Godot 3 usadas como Godot 4.
