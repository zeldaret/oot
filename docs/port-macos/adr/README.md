# ADRs — Registros de decisões de arquitetura

Uma ADR (*Architecture Decision Record*) registra **uma** decisão importante: o contexto, as alternativas, o que
foi escolhido e as consequências. Serve para que, daqui a um ano, alguém entenda *por que* o código é assim.

## Ciclo de vida

`Proposta` → (revisão em PR) → `Aceita` → (se mudar no futuro) `Substituída por ADR-XXXX`.

ADRs aceitas não são editadas para mudar a decisão — cria-se uma nova que substitui a antiga.

## Modelo

```markdown
# ADR-XXXX — Título curto

- **Status:** Proposta | Aceita | Substituída por ADR-YYYY
- **Data:** AAAA-MM-DD

## Contexto
O problema e as forças em jogo.

## Decisão
O que foi decidido, em uma ou duas frases, e depois os detalhes.

## Alternativas consideradas
Cada uma com prós e contras.

## Consequências
O que fica mais fácil, o que fica mais difícil, o que precisa ser feito.
```

## Índice

| ADR | Título | Status |
|-----|--------|--------|
| [0001](0001-estrategia-source-port.md) | Estratégia: port de código-fonte | Proposta |
| [0002](0002-sdl3-e-metal.md) | SDL3 + Metal | Proposta |
| [0003](0003-modelo-de-threads.md) | Modelo de threads | Proposta |
| [0004](0004-assets-e-segmentos.md) | Assets e endereços segmentados | Proposta |
| [0005](0005-build-cmake-separado.md) | Build nativo em CMake separado | Proposta |
| [0006](0006-tipos-e-ponteiros-64bit.md) | Tipos de largura fixa e `Gfx` de 64 bits | Proposta |
