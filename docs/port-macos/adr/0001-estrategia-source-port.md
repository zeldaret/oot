# ADR-0001 — Estratégia: port de código-fonte

- **Status:** Proposta
- **Data:** 2026-11-01

## Contexto

Queremos um executável nativo de macOS que rode Ocarina of Time ([01](../01-visao-geral.md)). Temos uma
decompilação *matching* e bem documentada (~431 mil linhas de C em `src/`). Existem três caminhos conhecidos para
rodar jogos de N64 em PC.

## Decisão

**Compilar o código C de `src/` nativamente com clang** (port de código-fonte), substituindo `src/libultra` e o
hardware do N64 por uma camada de plataforma própria (`port/`).

## Alternativas consideradas

| Alternativa | Prós | Contras | Por que não |
|-------------|------|---------|-------------|
| **Emulação** | Roda qualquer ROM, zero mudanças no jogo | Não é nativo; não usa a decomp; custo de CPU | Não atende ao objetivo do projeto (CLAUDE.md: "port nativo") |
| **Recompilação estática** do binário MIPS (tradução automática para C/LLVM) | Funciona mesmo com decomp incompleta; fidelidade alta da lógica | Código gerado ilegível; perde nomes, structs e documentação; ainda exige reimplementar RCP | A decomp já está completa e é o principal ativo; jogar fora a legibilidade contradiz o objetivo G4 |
| **Port de código-fonte** | Código legível e depurável; desempenho nativo; modificável | Exige corrigir 64-bit, endianness, UB; reimplementar RCP | **Escolhida** |

## Consequências

- (+) Depuração com lldb diretamente no código do jogo, com nomes reais.
- (+) Juniores aprendem no código documentado.
- (−) Trabalho de portabilidade em `include/ultra64` e em pontos espalhados de `src/` ([05](../05-problemas-de-portabilidade.md)).
- (−) Risco de divergência de comportamento → mitigado com testes de *replay* e diferencial ([10 §3.6](../10-estrategia-de-testes.md)).
- (−) Mudanças em `src/` precisam permanecer neutras para o build *matching* ([11](../11-convencoes.md)).
