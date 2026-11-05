# 04 — Arquitetura do port

Este é o documento central. Ele descreve **como o port será estruturado**: camadas, módulos, threads, o loop
de frame e o build. As justificativas de cada decisão grande estão nas [ADRs](adr/).

---

## 1. Princípios

1. **O código do jogo é a fonte da verdade.** Mudamos `src/` o mínimo possível. Preferimos reimplementar a API
   que o jogo chama (libultra) a reescrever quem chama.
2. **Toda mudança em `src/`/`include/` é neutra para o build *matching*.** Usamos `#if TARGET_NATIVE`
   (ver [11 — Convenções](11-convencoes.md#2-macros-de-compilação)). `make VERSION=<v>` continua dando `OK`.
3. **Camadas com dependência em um só sentido:** jogo → shim libultra → serviços da plataforma → SO.
   O jogo nunca inclui headers do SDL/Metal/CoreAudio.
4. **Determinístico primeiro, paralelo depois.** Começamos com um único thread de jogo e otimizamos depois
   ([ADR-0003](adr/0003-modelo-de-threads.md)).
5. **C para o que o jogo chama, C++ para a plataforma.** O shim que substitui libultra expõe API C (`extern "C"`);
   a implementação interna (renderer, áudio, janela) é C++17.
6. **Testável sem janela e sem ROM** sempre que possível: renderer e saída de áudio têm *backends nulos*.

## 2. Visão em camadas

```
┌──────────────────────────────────────────────────────────────────────────────┐
│ CAMADA 1 — CÓDIGO DO JOGO (C, já existe)                                      │
│   src/code  src/overlays  src/audio  src/libc64  src/libu64*  src/buffers      │
│   + assets compilados de extracted/<versão>/ e build/<versão>/assets           │
│   Fala com o "hardware" somente através de include/ultra64/*.h                 │
├──────────────────────────────────────────────────────────────────────────────┤
│ CAMADA 2 — SHIM LIBULTRA (C/C++, novo)          port/src/ultra/              │
│   os:   threads, OSMesgQueue, timers, osGetTime/osGetCount                     │
│   io:   PI/DMA (leitura da "ROM"), VI, AI, SI/controles, SRAM                  │
│   gu:   gu* em C puro (substitui os .s de mgu/)                                │
│   Mesma assinatura dos headers include/ultra64/*.h                             │
├──────────────────────────────────────────────────────────────────────────────┤
│ CAMADA 3 — SERVIÇOS DO PORT (C++, novo)                                        │
│   gfx/    interpretador GBI (F3DZEX2/S2DEX) → abstração de renderer           │
│   audio/  interpretador Acmd (HLE aspMain) → ring buffer PCM                   │
│   input/  mapeamento teclado/gamepad → OSContPad; rumble                       │
│   save/   SRAM em arquivo                                                      │
│   assets/ tabela de segmentos, "ROM virtual", relocação nula                   │
│   core/   loop principal, config, log, crash handler                           │
├──────────────────────────────────────────────────────────────────────────────┤
│ CAMADA 4 — BACKENDS DE PLATAFORMA (C++/Obj-C++, novo)                          │
│   SDL3 (janela, eventos, gamepad, áudio)   Metal (renderização)               │
│   backends nulos para testes (NullRenderer, NullAudio)                         │
├──────────────────────────────────────────────────────────────────────────────┤
│ macOS: Cocoa, Metal, CoreAudio, GameController, POSIX                          │
└──────────────────────────────────────────────────────────────────────────────┘
```

**Regra de dependência:** uma camada só inclui headers da camada imediatamente abaixo. Um teste de CI verifica
isso (ver [10 §4.6](10-estrategia-de-testes.md)).

## 3. Estrutura de diretórios proposta

```
port/
├── CMakeLists.txt              # build nativo (ADR-0005)
├── cmake/
│   ├── GameSources.cmake       # lista de .c do jogo a compilar (derivada de spec/)
│   ├── Assets.cmake            # integra extracted/<v>/ e build/<v>/assets
│   └── Toolchain-macOS.cmake
├── include/port/               # API C exposta ao jogo e entre módulos
│   ├── port.h                  # TARGET_NATIVE, versões, helpers
│   ├── endian.h                # BE16/BE32/BSWAP, leitura big-endian
│   ├── segments.h              # SEGMENTED_TO_VIRTUAL nativo
│   └── platform.h              # Port_Init, Port_RunFrame, Port_Shutdown
├── src/
│   ├── core/                   # main(), loop, config, log, crash handler
│   ├── ultra/                  # shim libultra
│   │   ├── os_thread.cpp  os_mesg.cpp  os_time.cpp
│   │   ├── io_pi.cpp  io_vi.cpp  io_ai.cpp  io_cont.cpp  io_sram.cpp
│   │   └── gu.c                # gu*/mgu* em C
│   ├── gfx/
│   │   ├── gbi_interpreter.cpp # decodifica Gfx, estado do RSP
│   │   ├── rsp_state.cpp       # matrizes, luzes, vértices, clipping
│   │   ├── rdp_state.cpp       # othermode, combiner, blender, TMEM
│   │   ├── texture_decode.cpp  # RGBA16/32, IA, I, CI → RGBA8
│   │   ├── texture_cache.cpp
│   │   ├── renderer.h          # interface abstrata
│   │   ├── metal/              # MetalRenderer (Obj-C++ .mm), shaders gerados
│   │   └── null/               # NullRenderer para testes
│   ├── audio/
│   │   ├── acmd_interpreter.cpp# HLE do aspMain
│   │   ├── adpcm.cpp  resample.cpp  mixer.cpp
│   │   └── output_sdl.cpp      # ring buffer → SDL/CoreAudio
│   ├── input/
│   ├── save/
│   └── assets/
├── tests/                      # ver 10-estrategia-de-testes.md
│   ├── unit/  integration/  golden/  replay/
│   └── data/                   # dados sintéticos (SEM assets da ROM)
└── packaging/                  # Info.plist, ícone, entitlements
```

`port/` fica **fora** de `src/` de propósito: o Makefile *matching* nunca o enxerga.

## 4. Modelo de threads

Detalhes e alternativas em [ADR-0003](adr/0003-modelo-de-threads.md).

### Fase 1 (M1–M6): thread única de jogo

```
Thread principal (obrigatória no macOS para eventos/janela)
 loop:
   1. Platform_PollEvents()            → SDL events, teclado, gamepad, fechar janela
   2. Para cada um dos 3 "retraces" do frame (R_UPDATE_RATE):
        Audio_RetraceTick()            → AudioThread_Update() + Acmd HLE → ring buffer PCM
   3. PadMgr_Poll()                    → preenche OSContPad
   4. Graph_Update(gfxCtx, gameState)  → lógica + gera display lists
        └─ Graph_TaskSet00 → em vez de mandar ao Sched: Gfx_RunDisplayList() imediatamente
   5. Renderer.Present()               → Metal desenha e apresenta (vsync)
   6. FramePacer.Wait()                → mantém 20 Hz de lógica

Thread do CoreAudio (do sistema, não nossa)
   só consome o ring buffer PCM (lock-free SPSC). Nunca toca em estado do jogo.
```

O que acontece com as threads originais:

| Thread original | No port (fase 1) |
|-----------------|------------------|
| Idle, Main | Viram a função `Port_Main` (inicialização sequencial) |
| Graph | Seu corpo (`Graph_ThreadEntry`) é desmontado em `Port_GameInit` / `Port_RunFrame` / `Port_GameShutdown` |
| Sched | Removida. Tarefas gráficas executam síncronas dentro de `Graph_TaskSet00` |
| IrqMgr | Removida como thread. A lista de clientes (`IrqMgr_AddClient`) é mantida e o loop envia a eles as mensagens de retrace e PreNMI, como o original fazia |
| AudioMgr | Corpo chamado 3×/frame pelo loop (`Audio_RetraceTick`) |
| PadMgr | Corpo chamado 1×/frame pelo loop |
| DmaMgr | Removida. `DmaMgr_Request*` copia na hora (`memcpy` + descompressão se necessário) |
| Fault | Handler de sinal + clientes do Fault chamados no crash |

> **Por que não simplesmente mapear cada `OSThread` para uma `pthread`?** Porque o N64 tem **um núcleo** e
> **prioridade estrita**: uma thread de prioridade maior nunca é interrompida por uma menor. O código depende
> disso sem usar locks (ex.: `gAudioCtx` acessado pela Graph e pela AudioMgr). Em um Mac multinúcleo, rodar as
> duas ao mesmo tempo cria *data races* que não existiam. Ver [ADR-0003](adr/0003-modelo-de-threads.md).

Ainda assim, o shim implementa `OSMesgQueue` com semântica correta (bloqueante, não bloqueante, `osJamMesg`),
porque o código do jogo usa filas internamente mesmo quando produtor e consumidor estão no mesmo thread
(ex.: `osRecvMesg(..., OS_MESG_NOBLOCK)` para checar se algo terminou). Em modo de thread única, um
`osRecvMesg(OS_MESG_BLOCK)` numa fila vazia é **um bug de integração** e deve abortar com mensagem clara
em vez de travar.

### Fase 2 (opcional, após M7): áudio em thread própria

Com um mutex global de "prioridade de áudio" envolvendo `AudioThread_Update` e os pontos onde o jogo escreve
comandos de áudio. Só depois de existirem os testes de *replay* ([10](10-estrategia-de-testes.md)).

## 5. O loop de frame

### Ritmo

- Lógica: 20 Hz (NTSC) ou ~16,7 Hz (PAL, 50 Hz / 3), lida de `R_UPDATE_RATE` e do modo de vídeo da versão.
- "Retrace" virtual: 60 Hz (ou 50 Hz). O áudio é atualizado por retrace, como no original.
- Apresentação: o monitor pode ser 60/120 Hz. Na fase 1 apresentamos o mesmo frame até a próxima atualização
  de lógica. Interpolação de frames fica fora do escopo ([01 §5](01-visao-geral.md#5-não-objetivos-por-enquanto)).

### Pacing

`FramePacer` usa `mach_absolute_time()` (via `std::chrono::steady_clock`) e acumula o tempo:

```cpp
// pseudo-código
const double kRetraceHz = 60.0;          // 50.0 para PAL
double acc = 0;
while (running) {
    acc += elapsedSecondsSinceLastLoop();
    while (acc >= 1.0 / kRetraceHz) {    // nunca pula retraces de áudio
        Audio_RetraceTick();
        if (++retraceCount % R_UPDATE_RATE == 0) { RunGameFrame(); }
        acc -= 1.0 / kRetraceHz;
    }
    Present();
}
```

Se o jogo atrasar mais que N frames (ex.: breakpoint no depurador), o acumulador é limitado para não
"correr atrás" executando centenas de frames.

### `osGetTime` / `osGetCount`

O jogo mede tempo em ciclos do N64 (`OS_CPU_COUNTER` = 46.875.000 Hz, [`include/ultra64/convert.h`](../../include/ultra64/convert.h)).
O shim converte o relógio do Mac para essa unidade: `count = ns * OS_CPU_COUNTER / 1e9`. `osGetCount` retorna
32 bits (dá a volta em ~91 s — o jogo já trata isso).

## 6. Mapeamento libultra → shim

| API (header) | Comportamento no port |
|--------------|-----------------------|
| `osCreateThread`, `osStartThread`, `osStopThread`, `osSetThreadPri`, `osYieldThread` (`ultra64/thread.h`) | Registram a thread num registro; fase 1 não cria thread real. Chamadas inesperadas logam aviso |
| `osCreateMesgQueue`, `osSendMesg`, `osRecvMesg`, `osJamMesg` (`ultra64/message.h`) | Fila circular com semântica idêntica; detecção de *deadlock* em modo thread única |
| `osSetEventMesg` | Registra fila para eventos (SI, VI, PRENMI); o loop envia as mensagens |
| `osGetTime`, `osGetCount`, `osSetTimer` (`ultra64/time.h`) | Relógio monotônico convertido; timers verificados a cada iteração do loop |
| `osPiStartDma`, `osEPiStartDma`, `osPiRawStartDma` | Cópia da "ROM virtual" para o destino (ver [ADR-0004](adr/0004-assets-e-segmentos.md)) |
| `osViSwapBuffer`, `osViSetMode`, `osViBlack`, `osViGetNextFramebuffer` | Registram estado; apresentação real é do renderer |
| `osAiSetFrequency`, `osAiSetNextBuffer`, `osAiGetLength` | Frequência → config da saída; `SetNextBuffer` empurra PCM no ring buffer; `GetLength` retorna o nível do buffer |
| `osContInit`, `osContStartReadData`, `osContGetReadData` | Leem do módulo `input/` |
| `osMotorInit/Start/Stop` | Rumble via SDL gamepad |
| `osWritebackDCache`, `osInvalDCache`, `osInvalICache` | *No-op* (não existe cache incoerente com GPU no nosso modelo) |
| `osVirtualToPhysical`, `OS_K0_TO_PHYSICAL` | Identidade (sem truncar para 32 bits!) |
| `osSpTaskLoad/StartGo`, `osDpSetStatus` | Não chamadas (o Sched sai); se chamadas, abortam com mensagem |
| `gu*`, `guMtxF2L`, `guMtxL2F` etc. | Versões em C (os `.s` de `src/libultra/mgu/` não compilam) |
| `bcopy`, `bzero`, `bcmp`, `sqrtf` | `memmove`, `memset`, `memcmp`, `sqrtf` da libc |

## 7. Interfaces principais (esboço)

API C vista pelo jogo/shim (`port/include/port/platform.h`):

```c
#ifndef PORT_PLATFORM_H
#define PORT_PLATFORM_H
#include <stdint.h>
#ifdef __cplusplus
extern "C" {
#endif

int  Port_Init(int argc, char** argv);  // cria janela, áudio, carrega config/save
void Port_RunFrame(void);               // um frame de lógica (chamado pelo loop)
void Port_Shutdown(void);

// Chamado por Graph_TaskSet00 no lugar de enviar a tarefa ao Sched
void Port_SubmitGfxTask(const void* masterDisplayList);

// Chamado pelo shim de AI
void Port_AudioPush(const int16_t* stereoSamples, uint32_t frameCount);
uint32_t Port_AudioQueuedFrames(void);

#ifdef __cplusplus
}
#endif
#endif
```

Interface do renderer (C++, interna à camada 3/4):

```cpp
class IRenderer {
public:
    virtual ~IRenderer() = default;
    virtual void BeginFrame(uint32_t width, uint32_t height) = 0;
    virtual void SetPipeline(const PipelineKey& key) = 0;          // combiner + blender + depth + cull
    virtual TextureHandle UploadTexture(const DecodedTexture& tex) = 0;
    virtual void BindTexture(int tile, TextureHandle tex, const SamplerState& s) = 0;
    virtual void DrawTriangles(const GfxVertex* verts, size_t count) = 0;
    virtual void ClearDepth() = 0;
    virtual void ReadbackFramebuffer(uint16_t* dstRgba5551, int w, int h) = 0; // para PreRender
    virtual void EndFrame() = 0;
};
```

O interpretador de GBI só conhece `IRenderer`. `MetalRenderer` e `NullRenderer` implementam. O
`NullRenderer` grava as chamadas recebidas, o que permite testar o interpretador sem GPU.

## 8. Build

Detalhes em [ADR-0005](adr/0005-build-cmake-separado.md).

```
make setup VERSION=gc-eu-mq-dbg                  # já existe: extrai assets, compila ferramentas host
make VERSION=gc-eu-mq-dbg native-assets          # NOVO alvo: só gera build/<v>/assets (PNG→.inc.c, áudio, textos)
cmake -S port -B build-native -G Ninja -DOOT_VERSION=gc-eu-mq-dbg -DCMAKE_BUILD_TYPE=Debug
cmake --build build-native
ctest --test-dir build-native                     # testes
open build-native/OoT.app
```

Flags obrigatórias do clang para o código do jogo (explicação em [05](05-problemas-de-portabilidade.md)):

```
-std=gnu11 -funsigned-char -fno-strict-aliasing -fwrapv -ffp-contract=off
-DTARGET_NATIVE=1 -DNON_MATCHING -DAVOID_UB
-DPLATFORM_N64=.. -DPLATFORM_GC=.. -DPLATFORM_IQUE=0 -DOOT_VERSION=.. -DOOT_REGION=.. -DDEBUG_FEATURES=..
-DF3DEX_GBI_2
-Wno-... (lista controlada; warnings novos são tratados, não silenciados em massa)
```

Configurações de build:

| Config | Uso |
|--------|-----|
| `Debug` | `-O0 -g`, asserts do port ligados |
| `RelWithDebInfo` | `-O2 -g`, padrão para jogar durante o desenvolvimento |
| `ASan` / `UBSan` | `-fsanitize=address` / `-fsanitize=undefined` — rodados no CI ([10](10-estrategia-de-testes.md)) |
| `Release` | `-O2`, para empacotar |

## 9. Configuração em tempo de execução

Arquivo `~/Library/Application Support/OoTNative/config.toml` (ou flags de linha de comando):

| Chave | Padrão | Descrição |
|-------|--------|-----------|
| `window.scale` | 3 | Janela = 320×240 × escala |
| `window.fullscreen` | false | |
| `render.internal_resolution` | `native` | `native` (320×240) ou `window` |
| `audio.buffer_ms` | 50 | Latência alvo do ring buffer |
| `input.mapping` | padrão | Mapeamento de teclas/botões |
| `debug.log_level` | `info` | `trace`/`debug`/`info`/`warn`/`error` |
| `debug.dump_dl` | false | Grava display lists de um frame para análise |

## 10. Diagnóstico

- **Log**: macro `PORT_LOG(level, fmt, ...)`; o `PRINTF`/`osSyncPrintf` do jogo vai para o mesmo log
  (já existe infraestrutura de `PRINTF` com `DEBUG_FEATURES`).
- **Crash handler**: captura sinal, imprime *backtrace* (`backtrace_symbols_fd`), estado do game state atual,
  ator sendo atualizado (se disponível) e chama os clientes do `Fault`.
- **Captura de display list**: `debug.dump_dl` grava a DL decodificada em texto (reaproveitando ideias de
  [`src/code/ucode_disas.c`](../../src/code/ucode_disas.c)).
- **Ferramentas do macOS**: `lldb`, Instruments (Time Profiler, Allocations), Metal Frame Capture no Xcode.
