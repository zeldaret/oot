# 05 — Problemas de portabilidade

O código de `src/` foi escrito para: **CPU MIPS 32-bit, big-endian, compilador IDO, 4 MB de RAM, um núcleo**.
O Mac é: **arm64/x86_64 64-bit, little-endian, clang, GBs de RAM, vários núcleos**. Este documento cataloga
tudo que quebra nessa travessia, com **exemplos reais do repositório**, a correção adotada e o teste que a protege.

> Para júnior: cada seção segue o formato **Problema → Exemplo real → Por que quebra → Correção → Como achar
> outros casos → Teste**. Leia [02 — Fundamentos](02-fundamentos-n64.md) antes.

## Resumo

| # | Problema | Gravidade | Onde se concentra | Correção (resumo) |
|---|----------|-----------|-------------------|-------------------|
| 1 | `s32`/`u32` são `long` → viram 64 bits | **Crítica** | `include/ultra64/ultratypes.h`, `gbi.h` (`Mtx_t`) | Tipos de largura fixa sob `TARGET_NATIVE` |
| 2 | Ponteiros de 64 bits em campos/casts de 32 | **Crítica** | `Gfx.w1`, casts `(u32)ptr`, `OS_K0_TO_PHYSICAL` | `Gfx` alargado; casts para `uintptr_t` |
| 3 | Overlays e relocação | Alta | `z_actor.c`, `z_DLF.c`, `z_kaleido_manager.c`, `z_effect_soft_sprite.c`, `src/libu64` | Linkagem estática + deslocamento zero |
| 4 | Endianness | Alta | texturas, unions, `Mtx`, dados binários | Regra "memória do RCP é big-endian" + helpers |
| 5 | Endereços segmentados | **Crítica** | 675 usos de `SEGMENTED_TO_VIRTUAL`, display lists | Tradução nativa usando o `__PAGEZERO` do macOS |
| 6 | Diferenças de compilador/CPU e UB | Alta | espalhado | Flags do clang + correções pontuais |
| 7 | Memória e orçamentos fixos | Média | arenas, espaço de objetos, pools de DL | Fatores de escala + instrumentação |
| 8 | Assembly | Média | 43 arquivos `.s` | Equivalentes em C |
| 9 | Pragmas e detalhes do IDO | Baixa | 61 `#pragma increment_block_number` | Ignorados no clang |
| 10 | Código que lê o próprio código | Baixa | `gWaveSamples[8]` | Tabela de ruído fixa |
| 11 | Threads, prioridade e tempo | Alta | `sched.c`, `irqmgr.c`, áudio | Ver [ADR-0003](adr/0003-modelo-de-threads.md) |

---

## 1. Modelo de dados: `long` tem 64 bits no macOS

### Problema

[`include/ultra64/ultratypes.h`](../../include/ultra64/ultratypes.h):

```c
typedef signed long            s32;
typedef unsigned long          u32;
```

No N64 (ILP32) `long` tem 4 bytes. No macOS (LP64) `long` tem **8 bytes**. Então `u32` vira um inteiro de 64 bits.
O mesmo vale para [`include/ultra64/gbi.h`](../../include/ultra64/gbi.h):

```c
typedef long int Mtx_t[4][4];   // 64 bytes no N64 → 128 bytes no Mac
```

### Por que quebra

- Toda struct com `s32`/`u32` muda de tamanho e de *offsets* → dados vindos da ROM, save e assets ficam desalinhados.
- `Mtx` dobra de tamanho e o layout `intPart`/`fracPart` deixa de bater com `m`.
- Overflow que no N64 "dava a volta" em 32 bits deixa de dar a volta.

### Correção

```c
#if TARGET_NATIVE
#include <stdint.h>
typedef int32_t  s32;
typedef uint32_t u32;
typedef int32_t  Mtx_t[4][4];  // em gbi.h
#else
typedef signed long   s32;     // original, necessário para o matching
typedef unsigned long u32;
#endif
```

Além disso, `port/include/port/port.h` contém `_Static_assert`s:

```c
_Static_assert(sizeof(s32) == 4, "s32 deve ter 4 bytes");
_Static_assert(sizeof(Mtx) == 64, "Mtx deve ter 64 bytes");
_Static_assert(sizeof(Vtx) == 16, "Vtx deve ter 16 bytes");
_Static_assert(sizeof(OSContPad) == 6, "OSContPad deve ter 6 bytes");
```

### Como achar outros casos

`grep -rn "\blong\b" src include` — revisar cada um; `long long` (64 bits) está correto.

### Teste

`tests/unit/types_test.cpp`: `sizeof` de todos os tipos básicos e das structs que cruzam fronteiras
(save, `Mtx`, `Vtx`, `OSContPad`, `Gfx`).

---

## 2. Ponteiros de 64 bits

### 2.1 Casts de ponteiro para `u32`/`s32`

**Exemplo real** — [`src/code/z_DLF.c`](../../src/code/z_DLF.c) (`Overlay_LoadGameState`):

```c
overlayEntry->init = (void*)((u32)overlayEntry->init -
                             (s32)((u32)overlayEntry->vramStart - (u32)overlayEntry->loadedRamAddr));
```

No Mac, `(u32)ponteiro` **descarta os 32 bits altos** (depois da correção do §1). O ponteiro resultante é lixo
e o primeiro uso dá `EXC_BAD_ACCESS`.

**Correção:** trocar para `uintptr_t`/`intptr_t`. Note que [`src/code/z_actor.c`](../../src/code/z_actor.c) já faz
do jeito certo (`(uintptr_t)overlayEntry->profile - (intptr_t)(...)`), então o padrão está estabelecido no
projeto e em geral **também dá match** no IDO (porque `uintptr_t` é `u32` no N64). Sempre confirme com
`make VERSION=<v>` que o build continua `OK`.

**Como achar:** compilar o jogo com clang e ligar:

```
-Wpointer-to-int-cast -Wint-to-pointer-cast -Wshorten-64-to-32 -Wformat
```

Cada aviso é uma tarefa. Para estimar o volume: `grep -rEn "\((u32|s32)\)\s*&|\((u32|s32)\)[a-zA-Z_]+(Ptr|Addr|Start|End)" src`.

### 2.2 `OS_K0_TO_PHYSICAL` e afins

[`include/ultra64/convert.h`](../../include/ultra64/convert.h):

```c
#define OS_K0_TO_PHYSICAL(x)    (u32)(((char*)(x)-0x80000000))
```

No port isso precisa ser **identidade** sem truncar: `#define OS_K0_TO_PHYSICAL(x) ((uintptr_t)(x))`.
Idem para `OS_PHYSICAL_TO_K0`, `VIRTUAL_TO_PHYSICAL`, `PHYSICAL_TO_VIRTUAL` e o `+ K0BASE` de
`SEGMENTED_TO_VIRTUAL` (ver §5).

### 2.3 Display lists: `Gfx.w1` tem 32 bits

```c
typedef struct Gwords { unsigned int w0; unsigned int w1; } Gwords;  // gbi.h
```

Comandos como `gSPDisplayList(gfx, dl)`, `gSPVertex(gfx, v, ...)`, `gSPMatrix(gfx, mtx, ...)`,
`gDPSetTextureImage(..., img)` guardam **um ponteiro em `w1`**. Um ponteiro de 64 bits não cabe.

Pior: os assets extraídos são C com DLs estáticas como `gsSPDisplayList(gOtherDL)`. Num inicializador estático,
`(unsigned int)&símbolo` não é uma constante válida em 64 bits → **erro de compilação** (o que é bom: o
compilador acha todos os casos).

**Correção** ([ADR-0006](adr/0006-tipos-e-ponteiros-64bit.md)): no build nativo,

```c
typedef struct Gwords { uintptr_t w0; uintptr_t w1; } Gwords;  // Gfx passa a ter 16 bytes
```

e as macros de `gbi.h` que fazem `(unsigned int)(ptr)` passam a usar `(uintptr_t)(ptr)` sob `TARGET_NATIVE`.
`sizeof(Gfx)` muda de 8 para 16: todo código que usa `sizeof(Gfx)` continua correto; **código que assume 8
literalmente** precisa ser encontrado (`grep -rn "\* 8\b\|<< 3\b" ` nos arquivos de gráficos e revisão manual).

### 2.4 Comentários de offset deixam de valer

Structs do jogo têm comentários como `/* 0x138 */ struct ActorOverlay* overlayEntry;` em
[`include/actor.h`](../../include/actor.h). No port **os offsets mudam** (ponteiros de 8 bytes, alinhamento 8).
Os comentários continuam úteis para o N64 — não os altere. Mas: **nenhum código do port pode depender deles**,
e código do jogo que calcula offsets à mão (`(u8*)actor + 0x138`) precisa virar `offsetof`.

### 2.5 Ponteiros em `printf` com `%08x`

O jogo imprime ponteiros com `%08x` (ex.: `PRINTF("...%08x", overlayEntry->vramStart)` em `z_DLF.c`). Passar
um ponteiro de 8 bytes para `%x` é UB (normalmente imprime lixo). Só afeta log; corrigir quando aparecer
(`-Wformat`), usando `%p` sob `TARGET_NATIVE` ou um cast explícito.

---

## 3. Overlays

### Problema

O N64 carrega código de atores sob demanda e o reloca ([03 §5](03-arquitetura-oot-atual.md#5-overlays-código-carregado-sob-demanda)).
No port todo código é linkado estaticamente; **não existe** "código na ROM para copiar".

### Correção

1. Tabelas de overlay (`gActorOverlayTable`, game states, efeitos, kaleido) no build nativo:
   `vramStart = loadedRamAddr = <qualquer valor não nulo, igual nos dois>` (ex.: endereço do próprio profile),
   `vromStart = vromEnd = 0`.
2. `Overlay_Load` → retorna sem copiar; `Overlay_Relocate` → *no-op*.
3. Fórmulas `ptr - (vramStart - loadedRamAddr)` passam a dar `ptr - 0 = ptr`. **Os chamadores não mudam**
   (exceto os casts de §2.1).
4. Contadores de instâncias carregadas (`numLoaded`) e alocação (`allocType`) continuam funcionando — o jogo
   só não libera memória de código.
5. `ACTOR_OVERLAY` com `allocType = ACTOROVL_ALLOC_ABSOLUTE` reserva um bloco fixo para o código; no port esse
   bloco pode continuar sendo alocado (desperdiça memória, mas preserva comportamento de orçamento) ou ser pulado
   com `#if TARGET_NATIVE`. Começar preservando.

### Teste

`tests/unit/overlay_table_test.cpp`: para cada entrada da tabela de atores, `profile` traduzido == `&X_Profile`.

---

## 4. Endianness

### A regra de ouro do port

> **Toda memória que o RSP/RDP original leria como bytes (texturas, paletas, framebuffers de 16 bits, dados
> binários vindos da ROM) é mantida em ordem de bytes do N64 (big-endian). Structs C compiladas nativamente
> (vértices, matrizes, comandos `Gfx`, structs de assets) ficam em ordem nativa.**

O interpretador de gráficos e o de áudio leem bytes big-endian com helpers (`port/include/port/endian.h`):

```c
static inline uint16_t BE16(const void* p) { const uint8_t* b = p; return (uint16_t)((b[0] << 8) | b[1]); }
static inline uint32_t BE32(const void* p) { const uint8_t* b = p; return ((uint32_t)b[0] << 24) | ((uint32_t)b[1] << 16) | ((uint32_t)b[2] << 8) | b[3]; }
```

### 4.1 Texturas compiladas como `u64`

A ferramenta de assets gera texturas como arrays de `u64` cujos literais são os bytes big-endian empacotados
([`tools/assets/n64texconv/src/libn64texconv/bin2c.c`](../../tools/assets/n64texconv/src/libn64texconv/bin2c.c)):

```c
u64 gSomeTex[] = { 0x0123456789ABCDEF, ... };
```

No N64 a memória fica `01 23 45 67 89 AB CD EF`. No Mac fica `EF CD AB 89 67 45 23 01` — cada bloco de 8 bytes
**invertido**. Uma textura RGBA16 sai com pixels trocados de lugar e cores erradas.

**Correção:** no build nativo, gerar texturas como **`u8` byte a byte** (opção nova em `bin2c.c`, ex.:
`--byte-array`), mantendo o tipo do símbolo compatível (`u64 gSomeTex[]` vira `ALIGNED(8) u8 gSomeTex[]` com
alias de tipo nos headers gerados). Alternativa rejeitada: inverter na hora do upload — não funciona porque
texturas geradas pela CPU em tempo de execução (§4.4) já estão em outra ordem.

### 4.2 Unions que reinterpretam bytes

**Exemplo real** — [`include/color.h`](../../include/color.h):

```c
typedef union Color_RGBA8_u32 {
    struct { u8 r, g, b, a; };
    u32 rgba;
} Color_RGBA8_u32;
```

Usado em [`src/libu64/gfxprint.c`](../../src/libu64/gfxprint.c):

```c
gDPSetColor(this->dList++, G_SETPRIMCOLOR, this->color.rgba);
```

No N64, `rgba == 0xRRGGBBAA`. No Mac, `rgba == 0xAABBGGRR` → texto de debug com cores erradas.

**Correção:** sob `TARGET_NATIVE`, inverter a ordem dos campos da struct (`a, b, g, r`) para que `.rgba` continue
valendo `0xRRGGBBAA`. **Atenção:** só é válido se ninguém lê esse union como bytes em memória (ex.: copiado de
dados binários). Auditar os ~29 usos de `.rgba`.

### 4.3 `Mtx`: `intPart`/`fracPart` vs `m`

[`include/ultra64/gbi.h`](../../include/ultra64/gbi.h):

```c
typedef union Mtx {
    Mtx_t m;                                        // 16 × s32
    struct { u16 intPart[4][4]; u16 fracPart[4][4]; };
    long long int force_structure_alignment;
} Mtx;
```

O jogo escreve matrizes de **dois jeitos**:
- por `u16` indexado — [`src/code/sys_matrix.c`](../../src/code/sys_matrix.c) (`Matrix_MtxFToMtx`), [`src/libu64/mtxuty-cvt.c`](../../src/libu64/mtxuty-cvt.c);
- por `s32` empacotando dois `s16` (`guMtxF2L` do libultra / `mtxf2l.s`).

Em big-endian os dois produzem o mesmo layout. Em little-endian, o par de `u16` dentro de cada `s32` fica trocado.

**Correção:** definir uma convenção única para o port — **"o elemento `(i, j)` é `intPart[i][j]` (u16 por
índice)"** — e implementar `guMtxF2L`/`guMtxL2F` do shim usando os campos `u16`. O interpretador lê sempre por
índice `u16`. Nenhum código pode ler `Mtx.m[i][j]` como valor no build nativo (auditar 58 usos de `intPart`
e os usos de `.m[`).

**Teste:** `tests/unit/mtx_test.cpp` — `MtxF → Mtx` por todos os escritores; leitura pelo interpretador; `Mtx → MtxF`
de volta; tolerância de 1/65536.

### 4.4 Dados escritos pela CPU que o RDP lê

Texturas criadas em tempo de execução: o JPEG decodificado em [`src/code/z_jpeg.c`](../../src/code/z_jpeg.c),
framebuffers copiados por [`src/code/PreRender.c`](../../src/code/PreRender.c), fontes/*kanji* em
[`src/code/z_kanfont.c`](../../src/code/z_kanfont.c), texturas procedurais de efeitos. Se o código escreve
`u16 pixel = ...; buf[i] = pixel;`, no Mac o byte baixo vai primeiro — contradiz a regra de ouro.

**Correção:** inventariar esses pontos (tarefa do marco M3) e, sob `TARGET_NATIVE`, escrever via
`buf[i] = BSWAP16(pixel)` **ou** marcar a textura como "nativa" para o interpretador. Preferir o primeiro
(uma regra só).

### 4.5 Dados binários lidos da ROM

Arquivos que o jogo carrega por DMA e interpreta byte a byte: sequências de áudio (`.aseq`), tabelas de
áudio, dados de mensagens, JPEGs, fontes. Leitura por `u8` é segura. Leitura de `u16`/`u32` por cast de ponteiro
(`*(u16*)p`) **não** é. Exemplo seguro já existente: o seqplayer lê `s16` combinando dois bytes.

**Como achar:** com UBSan (`-fsanitize=alignment`) e revisão dos arquivos de `src/audio/internal/` e
`z_message.c`. Testes de *golden* comparam a saída.

### 4.6 Save

`SaveContext` é gravado na SRAM como memória crua. No port, o arquivo `.sav` fica em ordem nativa (o próprio jogo
lê e escreve igual). **Consequência:** saves do N64 não são compatíveis diretamente. Importar save de emulador
é um conversor opcional (fora do escopo inicial).

---

## 5. Endereços segmentados

### Problema

[`include/segmented_address.h`](../../include/segmented_address.h):

```c
extern uintptr_t gSegments[NUM_SEGMENTS];
#define SEGMENTED_TO_VIRTUAL(addr) (void*)(gSegments[SEGMENT_NUMBER(addr)] + SEGMENT_OFFSET(addr) + K0BASE)
```

Com assets compilados nativamente ([ADR-0004](adr/0004-assets-e-segmentos.md)), um símbolo como `gLinkAdultSkel`
**já é um ponteiro real de 64 bits**. Passá-lo pela macro original produz lixo.

Mas **endereços segmentados de verdade continuam existindo**: assets têm DLs que referenciam
`0x08000000` (textura de olho trocada em tempo real com `gSPSegment(POLY_OPA_DISP++, 0x08, eyeTex)`), e o jogo
monta endereços com `SEGMENT_ADDR`.

### Correção — usar uma garantia do macOS

Em processos 64-bit no macOS, os primeiros **4 GB** do espaço de endereços são o `__PAGEZERO`: nenhum ponteiro
válido é menor que `0x1_0000_0000`. Logo:

- valor `< 2^32` → é um endereço segmentado (ou físico) do N64;
- valor `>= 2^32` → é um ponteiro nativo; devolver como está.

```c
static inline void* Port_SegmentedToVirtual(uintptr_t addr) {
    if (addr >= 0x100000000ull) {
        return (void*)addr;                         // já é ponteiro nativo
    }
    uint32_t seg = (addr >> 24) & 0xF;
    return (void*)(gSegments[seg] + (addr & 0x00FFFFFF));  // sem K0BASE
}
#define SEGMENTED_TO_VIRTUAL(addr) Port_SegmentedToVirtual((uintptr_t)(addr))
```

O interpretador de GBI usa a mesma função para `w1` de cada comando, com a tabela de segmentos **do RSP**
(alterada por `gSPSegment` dentro da DL), que é diferente de `gSegments` da CPU.

`gSPSegment(gfx, n, base)` no jogo passa `VIRTUAL_TO_PHYSICAL(base)`; como essa macro vira identidade, a tabela
guarda o ponteiro nativo completo — por isso `gSegments` já é `uintptr_t`.

**Regra para o linker:** o executável deve ser linkado com o `__PAGEZERO` padrão (não use
`-pagezero_size` menor). Um `_Static_assert`/teste em tempo de execução confirma que `&main >= 2^32`.

### Teste

`tests/unit/segments_test.cpp`: ponteiro nativo passa direto; `0x06001234` com `gSegments[6] = base` vira
`base + 0x1234`; segmento 0 = físico; teste de que o endereço de uma variável global é `>= 2^32`.

---

## 6. Compilador, CPU e comportamento indefinido (UB)

| Assunto | N64/IDO | macOS/clang | Correção |
|---------|---------|-------------|----------|
| `char` | sem sinal | **com sinal** em arm64 Apple e x86_64 | `-funsigned-char` (o Makefile já usa para GCC) |
| Fusão `a*b+c` (FMA) | não existe no VR4300 | clang funde por padrão em arm64 (`-ffp-contract=on`) → resultados de `float` diferentes → física divergente | `-ffp-contract=off` |
| `float` → inteiro fora do intervalo (ex.: `(u8)-1.5f`) | resultado "dá a volta" | UB; arm64 **satura** (dá 0 ou 255) | Corrigir pontos encontrados para `(u8)(s32)f`; UBSan `-fsanitize=float-cast-overflow` |
| Divisão inteira por zero | IDO/GCC inserem `break 7` → exceção | arm64 dá 0; x86 gera `SIGFPE` | Achar via UBSan (`integer-divide-by-zero`); decidir caso a caso |
| Overflow de inteiro com sinal | dá a volta | UB, otimizador assume que não ocorre | `-fwrapv` |
| *Strict aliasing* | IDO não explora | clang explora em `-O2` | `-fno-strict-aliasing` |
| Variáveis não inicializadas | "funcionam" pelo layout de pilha do IDO | valor arbitrário | `-Wuninitialized`, `-ftrivial-auto-var-init=zero` só em Debug para comparar; corrigir na fonte |
| Retorno ausente | `BAD_RETURN` ([`include/avoid_ub.h`](../../include/avoid_ub.h)) | UB | `-DAVOID_UB` (já existe, 28 usos) |
| Acesso fora do array | lê memória vizinha (bugs `//! @bug` documentados) | pode cruzar página/ASan dispara | Preservar comportamento quando documentado; ASan mostra os casos |
| Variáveis globais "tentativas" (`int x;` em dois `.c`) | o IDO aceita (símbolos *common*) | erro de link (clang usa `-fno-common` por padrão) | Risco baixo: o build GCC do projeto já usa `-fno-common`. Se aparecer, corrigir com `extern` |
| Alinhamento | `u64` alinhado em 8 | idem; acesso desalinhado é permitido em arm64 mas UB em C | `-fsanitize=alignment` |

Regra geral: **`-DNON_MATCHING -DAVOID_UB` sempre ligados no build nativo** — o projeto já usa essas macros
para separar código que só existe para dar match de código correto.

---

## 7. Memória e orçamentos

- Structs ficam maiores (ponteiros de 8 bytes). Ex.: `Actor` tem dezenas de ponteiros.
- Orçamentos fixos do jogo: espaço de objetos (~1000–1150 KB em `Object_InitContext`, [`src/code/z_scene.c`](../../src/code/z_scene.c)),
  `ZeldaArena`, pools de DL (`TwoHeadGfxArena`, [`src/buffers/gfxbuffers.c`](../../src/buffers/gfxbuffers.c)) e heap de áudio.
- `Gfx` dobra de tamanho (§2.3) → **pools de display list precisam ser pelo menos 2×**.

**Correção:**
1. Macro `PORT_MEM_SCALE` (padrão 2) aplicada aos tamanhos de arenas e pools sob `TARGET_NATIVE`.
2. Contadores de *high-water mark* para cada arena, impressos no log em Debug.
3. Os assets compilados no binário **não** consomem o espaço de objetos de verdade, mas o jogo ainda calcula
   tamanhos com base em `vromEnd - vromStart` → a "ROM virtual" ([ADR-0004](adr/0004-assets-e-segmentos.md)) precisa
   informar tamanhos consistentes.

**Teste:** teste de integração que percorre todas as cenas (via MapSelect em `DEBUG_FEATURES`) e falha se
qualquer arena passar de 90% de uso.

---

## 8. Assembly

Os 43 arquivos `.s` em `src/`:

| Grupo | Arquivos | No port |
|-------|----------|---------|
| libultra OS/cache/exceção | `src/libultra/os/*.s` (`exceptasm.s`, `interrupt.s`, `setsr.s`, `invaldcache.s`...) | Não compilados (shim) |
| libultra libc | `bcopy.s`, `bzero.s`, `bcmp.s` | libc do macOS |
| Matemática | `src/libultra/gu/sqrtf.s`, `libm_vals.s`, `src/libultra/mgu/*.s`, `src/libc/sqrt.s`, `fabsf.s`, `src/libc64/fp.s` | Funções em C equivalentes (`fp.s` tem constantes/rotinas de arredondamento — portar com cuidado e testar) |
| Dados em `.s` | `src/code/kanji_tex.s`, `src/boot/mio0.s` | `kanji_tex` vira `.incbin`/C gerado; `mio0` (descompressor) em C |
| ROM | `src/makerom/*.s` | Não compilados |
| 64DD | `src/libleo/api/*.s` | Fora do escopo |

**Teste:** para cada função matemática portada, comparar com valores de referência (tabela gerada uma vez rodando
o código original num emulador ou extraída de documentação).

## 9. Pragmas e detalhes do IDO

- `#pragma increment_block_number "..."` (61 arquivos): só serve para o IDO gerar o mesmo número de bloco.
  Clang ignora pragmas desconhecidos; compilar com `-Wno-unknown-pragmas`.
- Atributos em [`include/attributes.h`](../../include/attributes.h): `UNUSED` (`__attribute__((unused))`) funciona no clang;
  `NO_REORDER` (`__attribute__((no_reorder))`) é exclusivo do GCC — o clang emite aviso e ignora. Sob
  `TARGET_NATIVE`, definir `NO_REORDER` como vazio.
- Ordem de BSS e ordem de definição de variáveis importam para o matching, **não** para o port.

## 10. Código que lê o próprio código

[`src/audio/internal/thread.c`](../../src/audio/internal/thread.c):

```c
// gWaveSamples[8] interprets compiled assembly code as s16 samples as a way to generate sound with noise.
gWaveSamples[8] = (s16*)((u8*)AudioThread_Update + (gAudioCtx.audioRandom & 0xFFF0));
```

No Mac, ler a seção `__TEXT` é permitido, mas o conteúdo (instruções arm64) é outro → o "ruído" soa diferente, e
`AudioThread_Update + 0xFFF0` pode passar do fim da função para outra região. **Correção:** sob
`TARGET_NATIVE`, apontar para uma tabela fixa de 64 KB de ruído (gerada uma vez a partir da ROM original para
fidelidade, ou pseudo-aleatória). Documentar com `//! @bug`-style comment explicando a divergência.

## 11. Threads, prioridade e tempo

Ver [04 §4](04-arquitetura-do-port.md#4-modelo-de-threads) e [ADR-0003](adr/0003-modelo-de-threads.md). Resumo do risco:
o jogo assume **um núcleo + prioridade estrita**; rodar threads em paralelo cria corridas que nunca existiram.
Também: código que espera em laço por um contador de hardware (`osGetCount`) deve continuar funcionando, pois o
shim retorna tempo real.
