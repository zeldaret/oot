# 03 — Arquitetura atual do jogo (como `src/` funciona hoje)

Antes de mudar um sistema, entenda como ele funciona. Este documento descreve o **fluxo real** do código
deste repositório. Todos os nomes de função e arquivo foram conferidos no código; use-os como ponto de
partida para ler o fonte.

---

## 1. Mapa de diretórios

| Diretório | Conteúdo | Destino no port |
|-----------|----------|-----------------|
| [`src/boot/`](../../src/boot/) | Primeiro código a rodar: boot, thread *idle*, DMA manager, descompressão Yaz0 | **Substituído** em grande parte pela camada de plataforma |
| [`src/code/`](../../src/code/) | Núcleo do jogo: game loop, atores, colisão, câmera, cenas, mensagens, sistemas (`graph.c`, `sched.c`, `padmgr.c`...) | **Compilado**; arquivos de sistema recebem `#if` ou são substituídos |
| [`src/overlays/`](../../src/overlays/) | Atores, efeitos, *game states*, menu de pausa (*kaleido*), Player | **Compilado** (todos linkados estaticamente) |
| [`src/audio/`](../../src/audio/) | Motor de áudio (sequências, notas, síntese de comandos para o RSP) | **Compilado**; `internal/thread.c` e `internal/os.c` adaptados |
| [`src/libultra/`](../../src/libultra/) | SDK da Nintendo (OS, I/O, `gu`, `libc`) | **Não compilado**; substituído por um *shim* |
| [`src/libu64/`](../../src/libu64/) | Biblioteca intermediária: carregamento de overlays, `gfxprint`, `pad`, `debug` (ver [`docs/libu64.md`](../libu64.md)) | Parcial: relocação de overlays vira *no-op* |
| [`src/libc64/`](../../src/libc64/) | `malloc` próprio, `sprintf`, `qrand`, matemática | **Compilado** (exceto `fp.s`) |
| [`src/libc/`](../../src/libc/) | `sqrt`, `fabsf`, `memmove` etc. | Substituído pela libc do macOS onde for asm |
| [`src/buffers/`](../../src/buffers/) | Grandes buffers estáticos: pools de gráficos, Z-buffer, heap de áudio | **Compilado** (tamanhos revistos) |
| [`src/libleo/`](../../src/libleo/), [`src/n64dd/`](../../src/n64dd/) | 64DD | **Fora do escopo** |
| [`src/makerom/`](../../src/makerom/), [`src/dmadata/`](../../src/dmadata/), [`src/elf_message/`](../../src/elf_message/) | Cabeçalho da ROM, tabela DMA, mensagens da Navi | `makerom`/`dmadata` fora; `elf_message` compilado |
| [`include/`](../../include/) | Headers do jogo e do libultra (`include/ultra64/`) | Compartilhados; `ultra64/` recebe ajustes para 64-bit |
| [`spec/`](../../spec/) | Descreve como os `.o` viram segmentos da ROM | Usado só como **referência** para saber o que compilar |
| [`assets/xml/`](../../assets/) + `extracted/<v>/` | Descrições de assets e assets extraídos (C, PNG, binários) | Fonte dos assets do port |

## 2. Sequência de boot

```
bootproc (src/boot/boot_main.c)
   │  inicializa libultra, cria a thread Idle
   ▼
Idle_ThreadEntry (src/boot/idle.c)
   │  configura VI (modo NTSC/PAL), cria a thread Main, vira "idle" (prioridade 0)
   ▼
Main_ThreadEntry (src/boot/idle.c)
   │  DmaMgr_Init()            → cria a thread DMA manager
   │  DMA do segmento "code" da ROM para a RAM, zera o BSS dele
   ▼
Main (src/code/main.c)
   │  Fault_Init, SysCfb_Init (framebuffers), Runtime_Init (heap do sistema)
   │  IrqMgr_Init   → thread IRQ manager
   │  Sched_Init    → thread Scheduler
   │  AudioMgr_Init → thread Audio manager
   │  PadMgr_Init   → thread Pad manager
   │  osCreateThread(Graph_ThreadEntry) → thread Graph (o jogo propriamente dito)
   ▼
 espera mensagens (PreNMI / NMI)
```

O detalhe importante: **no N64 o segmento `code` não está na RAM no início** — é copiado por DMA em
`Main_ThreadEntry`. No port tudo já está no executável, então essa cópia desaparece.

## 3. Threads e comunicação

| Thread | ID / prioridade ([`include/thread.h`](../../include/thread.h)) | Arquivo | Função |
|--------|------------------------|---------|--------|
| Idle | 1 / 10→0 | `src/boot/idle.c` | Ocupa a CPU quando ninguém mais roda |
| Fault | 2 / máx. | `src/code/fault_gc.c`, `fault_n64.c` | Tela de crash e debugger |
| Main | 3 / 15 | `src/code/main.c` | Inicialização; depois só trata PreNMI/NMI |
| **Graph** | 4 / 11 | `src/code/graph.c` | **Loop do jogo**: atualiza o *game state* e gera display lists |
| Sched | 5 / 15 | `src/code/sched.c` | Envia tarefas ao RSP/RDP, troca framebuffers no *retrace* |
| PadMgr | 7 / 14 | `src/code/padmgr.c` | Lê controles pelo SI, rumble |
| AudioMgr | 10 / 12 | `src/code/audio_thread_manager.c` | A cada *retrace*, roda `AudioThread_Update` e manda a tarefa de áudio ao Sched |
| DmaMgr | 18 / 16 | `src/boot/z_std_dma.c` | Atende pedidos de DMA da ROM, descomprime Yaz0 |
| IrqMgr | 19 / 17 | `src/code/irqmgr.c` | Recebe interrupções (VI retrace, PreNMI) e distribui para clientes |

Toda comunicação é por **`OSMesgQueue`**. Exemplo real em [`src/code/graph.c`](../../src/code/graph.c):

```c
osSendMesg(&gScheduler.cmdQueue, (OSMesg)scTask, OS_MESG_BLOCK);  // Graph → Sched: "rode esta tarefa"
Sched_Notify(&gScheduler);
...
osRecvMesg(&gfxCtx->queue, &msg, OS_MESG_BLOCK);                   // Graph espera o RDP terminar
```

### Diagrama de um frame (N64)

```
 VI retrace (60 Hz)
      │
      ▼
   IrqMgr ──msg──► Sched ──► troca framebuffer pronto, despacha próxima tarefa
      │                         ▲            ▲
      ├──msg──► AudioMgr ───────┘ (tarefa de áudio, prioridade)
      │
      └──msg──► PadMgr  (lê controles)

 Graph thread (a cada 3 retraces, R_UPDATE_RATE):
   Graph_Update
     ├─ GameState_Update(gameState)   ← lógica: atores, colisão, câmera, e "draw" que só ESCREVE display lists
     ├─ Graph_TaskSet00               ← empacota as DLs numa OSScTask e manda ao Sched; espera a anterior acabar
     └─ Audio_Update()                ← processa comandos de som do jogo (lado "game" do áudio)
```

## 4. Game states

O jogo é uma máquina de estados de alto nível. Tabela em
[`include/tables/gamestate_table.h`](../../include/tables/gamestate_table.h):

| ID | Estado | Overlay? |
|----|--------|----------|
| 0 | `Setup` | não (interno) |
| 1 | `MapSelect` (debug) | sim (`select`) |
| 2 | `ConsoleLogo` | sim (`title`) |
| 3 | `Play` (o jogo em si) | não (interno) |
| 4 | `TitleSetup` | sim (`opening`) |
| 5 | `FileSelect` | sim (`file_choose`) |

Loop em `Graph_ThreadEntry` ([`src/code/graph.c`](../../src/code/graph.c)):

```c
while (nextOvl != NULL) {
    Overlay_LoadGameState(ovl);                 // carrega o código do estado (se for overlay)
    gameState = SYSTEM_ARENA_MALLOC(ovl->instanceSize, ...);
    GameState_Init(gameState, ovl->init, &gfxCtx);
    while (GameState_IsRunning(gameState)) {
        Graph_Update(&gfxCtx, gameState);       // 1 frame
    }
    nextOvl = Graph_GetNextGameState(gameState);
    GameState_Destroy(gameState);
    ...
    Overlay_FreeGameState(ovl);
}
```

**Este loop é o coração do port.** No Mac ele continua igual; o que muda é que `Graph_Update` passa a ser
chamado pelo nosso loop de plataforma e que "carregar overlay" vira não fazer nada.

## 5. Overlays (código carregado sob demanda)

Com 4 MB de RAM não cabe todo o código ao mesmo tempo. Atores (`ovl_En_*`, `ovl_Bg_*`, `ovl_Boss_*`...),
efeitos, game states e o menu de pausa são **overlays**: blocos de código compilados para um endereço
virtual fictício (`vramStart`) e **relocados** quando carregados.

```
ROM: [código do overlay][dados][tabela de relocação]
          │ DMA
          ▼
RAM (endereço qualquer, ex.: 0x80412340) ──► Overlay_Relocate corrige cada endereço absoluto
```

- Tabela de atores: [`src/code/z_actor_dlftbls.c`](../../src/code/z_actor_dlftbls.c), gerada via
  *X-macro* a partir de [`include/tables/actor_table.h`](../../include/tables/actor_table.h).
- Carregamento: `Overlay_Load` / `Overlay_Relocate` em [`src/libu64/loadfragment2_n64.c`](../../src/libu64/loadfragment2_n64.c)
  e [`src/libu64/load_gc.c`](../../src/libu64/load_gc.c) + [`relocation_gc.c`](../../src/libu64/relocation_gc.c).
- Depois de carregar, o jogo **traduz ponteiros** do espaço "vram" para o endereço real. Exemplo em
  [`src/code/z_actor.c`](../../src/code/z_actor.c) (`Actor_Spawn`):

```c
profile = (overlayEntry->profile != NULL)
    ? (void*)((uintptr_t)overlayEntry->profile -
              (intptr_t)((uintptr_t)overlayEntry->vramStart - (uintptr_t)overlayEntry->loadedRamAddr))
    : NULL;
```

Locais com essa tradução: `z_actor.c`, `z_effect_soft_sprite.c`, `z_kaleido_manager.c`, `z_DLF.c` (game states).
O Player (`ovl_player_actor`) e o menu de pausa (`ovl_kaleido_scope`) usam o *Kaleido Manager*
([`src/code/z_kaleido_manager.c`](../../src/code/z_kaleido_manager.c)).

**No port:** todo o código é linkado no executável. Se fizermos `vramStart == loadedRamAddr`, o
deslocamento é zero e essas fórmulas viram identidade — sem reescrever os chamadores. Ver
[05 §3](05-problemas-de-portabilidade.md#3-overlays).

## 6. Memória: arenas e orçamentos

O jogo administra a própria memória a partir de blocos fixos:

| Região | Onde é criada | Uso |
|--------|---------------|-----|
| *System heap* / `SystemArena` | `Runtime_Init` em [`src/code/main.c`](../../src/code/main.c), espaço entre o fim de `buffers` e o framebuffer | Instâncias de game state, estruturas grandes |
| `ZeldaArena` | [`src/code/z_malloc.c`](../../src/code/z_malloc.c) | Instâncias de atores, dados do Play |
| `DebugArena` | [`src/code/debug_malloc.c`](../../src/code/debug_malloc.c) | Só com `DEBUG_FEATURES` |
| `TwoHeadArena` do game state | [`src/code/TwoHeadArena.c`](../../src/code/TwoHeadArena.c) | Objetos, cena, salas (cresce dos dois lados) |
| Pools de gráficos (`TwoHeadGfxArena`) | [`src/buffers/gfxbuffers.c`](../../src/buffers/gfxbuffers.c), [`src/code/TwoHeadGfxArena.c`](../../src/code/TwoHeadGfxArena.c) | Display lists do frame (double-buffered) |
| Heap de áudio | [`src/buffers/audio_heap.c`](../../src/buffers/audio_heap.c) | Sequências, soundfonts, samples em cache |
| Espaço de objetos | `Object_InitContext` em [`src/code/z_scene.c`](../../src/code/z_scene.c) (~1000–1150 KB conforme a cena) | Arquivos `object_*` carregados por cena |
| Framebuffers / Z-buffer | [`src/code/sys_cfb.c`](../../src/code/sys_cfb.c), [`src/buffers/zbuffer.c`](../../src/buffers/zbuffer.c) | Saída do RDP |

**No port:** as estruturas ficam **maiores** (ponteiros de 8 bytes), então os orçamentos fixos podem estourar.
Plano: manter os mesmos mecanismos, mas com tamanhos multiplicados por um fator configurável e
instrumentados (ver [05 §7](05-problemas-de-portabilidade.md#7-memória-e-orçamentos)).

## 7. Cenas, salas e objetos

- Uma **cena** (`scene`) tem cabeçalho de comandos (`SceneCmd`), lista de salas, entradas, ambiente.
  Carregada no segmento `0x02`.
- Cada **sala** (`room`) tem a geometria e a lista de atores. Segmento `0x03`.
- **Objetos** (`object_*`) têm modelos, skeletons, animações e texturas usados pelos atores. Segmento `0x06`
  (trocado por ator antes de desenhar, via `gSPSegment`).
- Carregamento: DMA da ROM (`DMA_REQUEST_SYNC`/`DmaMgr_RequestAsync`, [`include/dma.h`](../../include/dma.h)) para o
  espaço de objetos; a tabela de arquivos é `gDmaDataTable` (`DmaEntry { RomFile file; romStart; romEnd; }`).

## 8. Gráficos (caminho do dado)

```
Ator_Draw(...)                         // em cada ator
  OPEN_DISPS(gfxCtx)
    gSPMatrix(POLY_OPA_DISP++, MATRIX_FINALIZE(...), G_MTX_...)
    gSPDisplayList(POLY_OPA_DISP++, gSomeObjectDL)   // endereço segmentado 0x06xxxxxx
  CLOSE_DISPS(gfxCtx)
        │
        ▼
Graph_TaskSet00 → OSScTask (ucode F3DZEX2 + ponteiro da DL mestre) → Sched → RSP → RDP → framebuffer
```

Buffers de DL por frame: `POLY_OPA` (opacos), `POLY_XLU` (translúcidos), `OVERLAY` (HUD), `WORK`, e (debug)
`DEBUG`. O RSP percorre recursivamente `gSPDisplayList` e resolve segmentos via `gSPSegment`.

Pontos onde a CPU **lê/escreve diretamente** framebuffer ou Z-buffer (importantes para o port):
- [`src/code/PreRender.c`](../../src/code/PreRender.c) — filtros e cópia do frame (fundo do menu de pausa, *motion blur*);
- [`src/code/sys_cfb.c`](../../src/code/sys_cfb.c) — framebuffers;
- [`src/code/z_jpeg.c`](../../src/code/z_jpeg.c) — fundos pré-renderizados JPEG decodificados via RSP;
- [`src/code/z_room.c`](../../src/code/z_room.c) — usa o **Z-buffer como área de trabalho** para decodificar o JPEG e depois copia com `bcopy`;
- [`src/code/z_play.c`](../../src/code/z_play.c) — transições (`gTransitionTile.zBuffer`) e fundo do menu de pausa (`PreRender_SetValues(..., gZBuffer)`);
- [`src/code/game.c`](../../src/code/game.c) — `gSPSegment(..., 0xE, gZBuffer)` e o filtro de debug `VisZBuffer`.

## 9. Áudio (caminho do dado)

```
Jogo (Graph thread): Audio_PlaySfxGeneral / Audio_Update (src/audio/game/)
        │ comandos (AudioThread cmd queue)
        ▼
AudioMgr thread: AudioThread_Update (src/audio/internal/thread.c)
   ├─ processa sequências (seqplayer.c) e notas (playback.c)
   ├─ AudioSynth_Update (synthesis.c) gera uma LISTA DE COMANDOS Acmd para o RSP
   │     (carregar ADPCM, decodificar, reamostrar, envelope, mixar, reverb)
   └─ monta OSTask com microcode aspMain → Sched → RSP executa → PCM 16-bit estéreo
        ▼
osAiSetNextBuffer → AI toca a 32 kHz
```

**No port:** a lista `Acmd` passa a ser executada por um interpretador em C (HLE do `aspMain`), e o PCM vai para
o CoreAudio. Ver [07 — Áudio](07-audio.md).

## 10. Input

`PadMgr` ([`src/code/padmgr.c`](../../src/code/padmgr.c)) usa `osContStartReadData`/`osContGetReadData` pelo SI
e entrega `OSContPad { u16 button; s8 stick_x; s8 stick_y; u8 errno; }`
([`include/ultra64/controller.h`](../../include/ultra64/controller.h)) ao jogo, que guarda `cur/prev/press/rel` na
struct `Input` ([`include/libu64/pad.h`](../../include/libu64/pad.h)). Rumble via `PadMgr_RumbleSet`.

## 11. Save

[`src/code/z_sram.c`](../../src/code/z_sram.c): o save fica numa SRAM de 32 KB no cartucho, acessada via
`SsSram_ReadWrite` (DMA pelo PI). Estrutura `SaveContext`/`Save` com checksum próprio.

## 12. Fault (crash handler)

[`src/code/fault_gc.c`](../../src/code/fault_gc.c) / `fault_n64.c`: thread de alta prioridade que, em exceção de CPU,
mostra registradores, *stack trace* e permite clientes (callbacks) imprimirem informação. Depende de exceções
MIPS e de acesso direto ao framebuffer. **No port:** substituído por handler de sinal (`SIGSEGV`, `SIGBUS`,
`SIGILL`, `SIGABRT`) + log + `backtrace()`; os *clients* do Fault continuam sendo chamados.
