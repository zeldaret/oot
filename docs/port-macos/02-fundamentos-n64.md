# 02 — Fundamentos do Nintendo 64

Para portar o jogo você precisa entender **o que o código assume sobre a máquina**. Este documento explica o
hardware do N64 do ponto de vista do código em `src/`, sem aprofundar em eletrônica.

> Para júnior: não tente decorar. Leia uma vez, depois volte aqui sempre que um documento citar um termo.
> Cada seção termina com **"O que isso significa para o port"**.

---

## 1. Visão geral da máquina

```
          ┌──────────────────────────── Cartucho (ROM 32–64 MB) ─────────────┐
          │                                                                  │
          │ PI (Peripheral Interface) — DMA da ROM para a RAM                 │
          ▼                                                                  │
 ┌─────────────────┐       barramento        ┌────────────────────────────┐  │
 │  CPU  VR4300    │◄──────────────────────► │   RDRAM  4 MB (8 MB c/ Exp.)│  │
 │  MIPS R4300i    │                         └────────────▲───────────────┘  │
 │  93,75 MHz      │                                      │                  │
 │  big-endian     │                         ┌────────────┴───────────────┐  │
 └─────────────────┘                         │  RCP (Reality Co-Processor) │  │
                                             │  ┌───────┐   ┌───────┐      │  │
                                             │  │  RSP  │──►│  RDP  │      │  │
                                             │  │vetorial│  │raster │      │  │
                                             │  └───────┘   └───────┘      │  │
                                             │  VI (vídeo)  AI (áudio)     │  │
                                             │  SI (controles)  PI ◄───────┼──┘
                                             └─────────────────────────────┘
```

## 2. CPU: MIPS VR4300

- Arquitetura **MIPS III**, mas o jogo roda em modo 32 bits: **ponteiros têm 4 bytes**, `long` tem 4 bytes.
  Flags do Makefile: `-mabi=32`, `-march=vr4300`.
- **Big-endian**: o byte mais significativo de um inteiro fica no endereço menor.
- `char` é **sem sinal** (o Makefile passa `-funsigned-char` para o GCC; o IDO já faz assim).
- Possui FPU com `float` (`f32`) e `double` (`f64`); o jogo usa quase só `f32`.

### Endianness em um exemplo

O valor `u32 x = 0x11223344` na memória:

| Endereço | +0 | +1 | +2 | +3 |
|----------|----|----|----|----|
| N64 (big-endian) | `11` | `22` | `33` | `44` |
| Mac (little-endian, arm64 e x86_64) | `44` | `33` | `22` | `11` |

Enquanto o código só lê e escreve `x` como `u32`, tudo funciona igual. **O problema surge quando o mesmo
pedaço de memória é visto com tipos diferentes** (union, cast de ponteiro, leitura byte a byte de dados que
vieram da ROM). Ver [05 §4](05-problemas-de-portabilidade.md#4-endianness).

**O que isso significa para o port:** precisamos (1) trocar tamanhos de tipo para 64-bit, (2) caçar todo
lugar que reinterpreta memória, (3) forçar `-funsigned-char` no clang (no macOS arm64 `char` é *com* sinal).

## 3. Memória e endereços

- RAM física começa em `0x00000000`. A CPU acessa a RAM pelo segmento **KSEG0**: endereço virtual
  `0x80000000 + físico`. Por isso todo ponteiro do jogo parece `0x80xxxxxx`.
- Macros de conversão em [`include/ultra64/convert.h`](../../include/ultra64/convert.h):
  `OS_K0_TO_PHYSICAL(x)` subtrai `0x80000000` e faz cast para `u32`.
- `K0BASE` (`0x80000000`) aparece em [`include/segmented_address.h`](../../include/segmented_address.h).
- O jogo **não usa `malloc` do sistema**: ele divide a RAM em *arenas* fixas (ver [03 §6](03-arquitetura-oot-atual.md#6-memória-arenas-e-orçamentos)).

**O que isso significa para o port:** no Mac, ponteiros são endereços virtuais de 64 bits dados pelo sistema.
"Físico" e "virtual" passam a ser a mesma coisa; as macros de conversão viram identidade.

## 4. Endereços segmentados

O RSP (e o jogo) usam um truque de indireção: um **endereço segmentado** de 32 bits

```
 31      24 23                                0
 ┌────────┬──────────────────────────────────┐
 │ segmento│          offset (24 bits)        │
 └────────┴──────────────────────────────────┘
   0x06       0x001234        → "byte 0x1234 do segmento 6"
```

Uma tabela de 16 entradas (`gSegments[16]`, em [`include/segmented_address.h`](../../include/segmented_address.h))
guarda o endereço físico base de cada segmento. Definições em [`include/ultra64/mbi.h`](../../include/ultra64/mbi.h):
`SEGMENT_NUMBER(a)`, `SEGMENT_OFFSET(a)`, `SEGMENT_ADDR(num, off)`.

Convenção do OoT (as mais importantes):

| Segmento | Conteúdo |
|----------|----------|
| `0x00` | endereço físico direto |
| `0x02` | arquivo da cena atual |
| `0x03` | arquivo da sala (*room*) atual |
| `0x04` | `gameplay_keep` (assets sempre carregados) |
| `0x05` | `gameplay_field_keep` / `gameplay_dangeon_keep` |
| `0x06` | objeto do ator que está sendo desenhado |
| `0x08`–`0x0D` | texturas/DLs dinâmicos (olhos, boca, materiais animados) |

Por que isso existe: o mesmo modelo (ex.: `object_link_boy`) pode ser carregado em qualquer lugar da RAM.
Os assets são *linkados* no endereço `0x06000000` (veja `number 6` em [`spec/objects.inc`](../../spec/objects.inc))
e, antes de desenhar, o jogo diz ao RSP "segmento 6 agora começa no endereço X".

**O que isso significa para o port:** este é um dos pontos mais delicados. Ver [ADR-0004](adr/0004-assets-e-segmentos.md).

## 5. RCP: RSP + RDP

### RSP (Reality Signal Processor)

Um processador vetorial programável. Ele **não tem programa fixo**: a CPU envia um *microcode* e uma lista de
comandos (uma **tarefa**, `OSTask`). OoT usa:

| Microcode | Uso | Onde aparece |
|-----------|-----|--------------|
| `gspF3DZEX2` (variantes `NoN_fifo`, `PosLight`) | gráficos 3D | [`src/code/sys_ucode.c`](../../src/code/sys_ucode.c) |
| `gspS2DEX2` | sprites/fundos 2D | idem |
| `aspMain` | síntese de áudio | [`src/audio/internal/thread.c`](../../src/audio/internal/thread.c) |
| microcode JPEG | decodificar fundos JPEG | [`src/code/z_jpeg.c`](../../src/code/z_jpeg.c) |

Para gráficos o RSP transforma vértices (matrizes, luz, *fog*, clipping) e alimenta o RDP.

### RDP (Reality Display Processor)

O rasterizador: desenha triângulos com texturas, combina cores (*color combiner*), mistura com o framebuffer
(*blender*), testa profundidade (Z-buffer). É configurado por comandos na mesma display list.

### Display lists (GBI)

O jogo não chama uma API como OpenGL; ele **escreve uma lista de comandos de 64 bits** na memória
(tipo `Gfx`, [`include/ultra64/gbi.h`](../../include/ultra64/gbi.h)) usando macros como
`gSPDisplayList`, `gSPMatrix`, `gSPVertex`, `gSP2Triangles`, `gDPSetCombineMode`, `gDPLoadTextureBlock`.
Cada comando tem dois inteiros de 32 bits: `w0` (opcode + parâmetros) e `w1` (parâmetro ou **endereço**).

```c
typedef struct Gwords {
    unsigned int w0;
    unsigned int w1;   // ← muitas vezes um endereço segmentado de 32 bits
} Gwords;
```

**O que isso significa para o port:** precisamos de um **interpretador de display lists** que leia esses
comandos e os traduza para Metal. Ver [06 — Gráficos](06-graficos.md).

## 6. Periféricos

| Interface | Função | Código que usa |
|-----------|--------|----------------|
| **PI** | DMA ROM → RAM | [`src/boot/z_std_dma.c`](../../src/boot/z_std_dma.c), `src/libultra/io/pi*.c` |
| **VI** | Sinal de vídeo; troca de framebuffer; interrupção de *retrace* (60 Hz NTSC / 50 Hz PAL) | `src/libultra/io/vi*.c`, [`src/code/sched.c`](../../src/code/sched.c) |
| **AI** | Toca um buffer de PCM estéreo 16-bit (32 kHz no OoT) | `osAiSetNextBuffer` em [`src/audio/internal/thread.c`](../../src/audio/internal/thread.c) |
| **SI** | Controles, Controller Pak, Rumble Pak | [`src/code/padmgr.c`](../../src/code/padmgr.c), `src/libultra/io/cont*.c` |
| **SRAM** | Save do cartucho (32 KB) | [`src/code/z_sram.c`](../../src/code/z_sram.c) |

## 7. Sistema operacional: libultra

O N64 não tem sistema operacional no sentido de macOS/Linux. A Nintendo fornecia uma biblioteca, **libultra**
(`src/libultra/`), linkada dentro do jogo. Ela oferece:

- **Threads** com prioridade fixa e preempção, **um único núcleo** (`osCreateThread`, `osStartThread`).
- **Filas de mensagens** (`OSMesgQueue`, `osSendMesg`, `osRecvMesg`, `osJamMesg`) — o único mecanismo de
  sincronização. Interrupções de hardware viram mensagens (`osSetEventMesg`).
- **Tempo**: `osGetTime`, `osGetCount` em ciclos de CPU (`OS_CPU_COUNTER`, [`include/ultra64/convert.h`](../../include/ultra64/convert.h)).
- **Gerenciadores**: VI manager, PI manager.
- **Matemática gráfica** `gu*` (matrizes, `sins`, `coss`) e `mgu*` (versões em assembly).

**O que isso significa para o port:** `src/libultra` **não é compilado** no port. Escrevemos um *shim* com a
mesma API (`include/ultra64/*.h`) implementado sobre pthreads/SDL — ou, onde possível, simplificamos
(ver [ADR-0003](adr/0003-modelo-de-threads.md)).

## 8. Tempo de frame

- O VI gera 60 interrupções/s (NTSC) ou 50 (PAL).
- O OoT roda sua lógica normalmente a **20 FPS** (1 update a cada 3 *retraces*), controlado por
  `R_UPDATE_RATE` ([`include/regs.h`](../../include/regs.h)).
- O áudio é gerado em blocos por "frame de áudio", sincronizado com o *retrace*.

**O que isso significa para o port:** o loop principal precisa reproduzir esse ritmo, independente da taxa
de atualização do monitor (60/120 Hz ProMotion). Ver [04 §5](04-arquitetura-do-port.md#5-o-loop-de-frame).

---

## Para aprofundar

- *N64 Programming Manual* e *N64 Functions Reference* (documentação oficial da Nintendo, amplamente
  referenciada por projetos de homebrew; procure as versões espelhadas pela comunidade).
- Wiki **N64brew** — registradores, RSP, RDP, formatos de textura.
- Os headers em [`include/ultra64/`](../../include/ultra64/) — eles *são* a especificação de fato da API que
  precisamos reimplementar.
