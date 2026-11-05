# ADR-0006 — Tipos de largura fixa e `Gfx` de 64 bits

- **Status:** Proposta
- **Data:** 2026-11-01

## Contexto

- [`include/ultra64/ultratypes.h`](../../../include/ultra64/ultratypes.h) define `s32`/`u32` como `long`, que tem
  8 bytes no macOS ([05 §1](../05-problemas-de-portabilidade.md#1-modelo-de-dados-long-tem-64-bits-no-macos)).
- [`include/ultra64/gbi.h`](../../../include/ultra64/gbi.h) define `Gwords { unsigned int w0; unsigned int w1; }` e
  `Mtx_t` como `long int[4][4]`.
- `w1` frequentemente guarda um endereço (DL, vértices, matriz, textura). Com assets compilados nativamente
  ([ADR-0004](0004-assets-e-segmentos.md)), esses endereços são ponteiros de 64 bits.

## Decisão

Sob `TARGET_NATIVE`:

1. `s32`/`u32` → `int32_t`/`uint32_t`; `Mtx_t` → `int32_t[4][4]`. O ramo original fica intacto para o *matching*.
2. `Gwords` → `{ uintptr_t w0; uintptr_t w1; }` (`sizeof(Gfx) == 16`). As macros de `gbi.h` que fazem
   `(unsigned int)(ptr)` passam a usar `(uintptr_t)(ptr)`; as que montam `w0` com `_SHIFTL` não mudam.
3. `_Static_assert`s de tamanho para `s32`, `u32`, `Mtx` (64), `Vtx` (16), `OSContPad` (6), `Gfx` (16).
4. `w0` continua contendo só os 32 bits do comando; o interpretador lê `w0` como `uint32_t`.

## Alternativas consideradas

| Alternativa | Prós | Contras |
|-------------|------|---------|
| Manter `Gfx` com 8 bytes e guardar em `w1` um **índice** numa tabela de ponteiros | `sizeof(Gfx)` igual ao original; pools de DL do mesmo tamanho | Toda macro que recebe ponteiro precisa registrar na tabela em tempo de execução; inicializadores estáticos (DLs nos assets) não podem chamar funções → inviável |
| Alocar todo o jogo abaixo de 4 GB (`mmap` com `MAP_FIXED` ou `-pagezero_size` pequeno) para ponteiros caberem em 32 bits | Muda pouco código | Contraria a premissa de [ADR-0004](0004-assets-e-segmentos.md) (detecção por `__PAGEZERO`); o executável e a pilha não ficam abaixo de 4 GB; frágil |
| **`Gfx` de 16 bytes** | Ponteiros nativos funcionam inclusive em inicializadores estáticos; abordagem usada por outros ports de N64 | Pools de DL dobram de tamanho (`PORT_MEM_SCALE`); código que assume 8 bytes por comando precisa ser auditado |

## Consequências

- (+) Todos os assets e DLs estáticas compilam com ponteiros reais.
- (−) Pools de DL e qualquer cálculo "manual" de tamanho de DL precisam ser revisados ([05 §2.3](../05-problemas-de-portabilidade.md#23-display-lists-gfxw1-tem-32-bits), [§7](../05-problemas-de-portabilidade.md#7-memória-e-orçamentos)).
- (−) `gbi.h` ganha blocos `#if TARGET_NATIVE`; o arquivo é grande e central — PR dedicado, revisão cuidadosa,
  e build *matching* verificado em várias versões.
