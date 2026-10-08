# Eval — Godot Lead

## Tarefas benchmark
1. Criar movimento + dash com Input Map e state handling.
2. Implementar sistema orientado por Resource.
3. Corrigir bug de signal/path frágil.
4. Criar save versionado com migração simples.
5. Diagnosticar spike de CPU usando evidência.
6. Implementar NavigationAgent sem recalcular path todo frame.
7. Implementar um sistema representativo antes de gerar variantes/conteúdo.

## Medir
- compila/importa;
- comportamento correto;
- arquitetura proporcional;
- arquivos/módulos lidos;
- skills/plugins externos carregados;
- fontes oficiais adicionais;
- diff;
- validação;
- correções após primeira execução;
- ausência de regressão;
- distinção teste automatizado/renderizado/humano;
- tamanho do contexto operacional;
- se provou caminho end-to-end antes de multiplicar conteúdo.

## Falhas graves
- mudar versão sem pedido;
- giant manager;
- otimização sem medição;
- docs/API de Godot 3 como Godot 4;
- declarar playtest humano inexistente;
- depender de skill externa não solicitada sem registrar influência;
- gerar variantes em massa antes do sistema-base passar.
