# 07 — Subsistema de áudio

## 1. Visão geral

O motor de áudio do OoT (`src/audio/`) é dividido em duas metades:

| Metade | Onde roda no N64 | Arquivos | No port |
|--------|------------------|----------|---------|
| **Lógica**: sequências (música), efeitos, notas, envelopes, decidir *o que* tocar | CPU (thread AudioMgr) | `src/audio/game/*`, `src/audio/internal/{seqplayer,playback,effects,heap,load}.c` | **Compilado sem mudanças** (exceto endianness/ponteiros) |
| **Síntese**: decodificar amostras, reamostrar, aplicar volume, mixar, reverb | RSP, microcode `aspMain` | Lista de comandos gerada por `src/audio/internal/synthesis.c` | **Interpretador `Acmd` em C++** (HLE) |

A saída final é **PCM estéreo de 16 bits a 32 kHz** (ver `session_config.c`: `{ 32000, ... }`), entregue ao
hardware via `osAiSetNextBuffer`.

## 2. Fluxo no port

```
Loop principal, 3× por frame de lógica (um por "retrace" virtual)
  AudioMgr_HandleRetrace-equivalente
    └─ AudioThread_Update()                      (src/audio/internal/thread.c — código do jogo)
         ├─ lê osAiGetLength() → quantas amostras ainda estão no buffer
         ├─ processa comandos do jogo, sequências, notas
         ├─ AudioSynth_Update() → monta lista Acmd   (synthesis.c — código do jogo)
         └─ retorna AudioTask (com ucode aspMain)
    └─ Port: AcmdInterpreter::Run(task->list)    → escreve PCM no buffer AI indicado
    └─ osAiSetNextBuffer(buf, len) (shim)        → Port_AudioPush(): copia para o ring buffer

Thread do CoreAudio (via SDL3 audio stream)
  └─ callback: consome do ring buffer; se vazio, toca silêncio e incrementa contador de underrun
```

O `osAiGetLength` do shim retorna **quantos bytes ainda estão na fila** (amostras × 4), exatamente o que o jogo
usa para decidir quanto gerar — isso cria um laço de realimentação natural que mantém a latência estável.

## 3. Interpretador `Acmd` (HLE do `aspMain`)

### 3.1 Modelo

O microcode trabalha sobre uma memória local chamada **DMEM** (~4 KB) — o jogo endereça buffers dentro dela com
constantes como `DMEM_TEMP 0x3C0`, `DMEM_UNCOMPRESSED_NOTE 0x580` em
[`src/audio/internal/synthesis.c`](../../src/audio/internal/synthesis.c). O interpretador mantém:

```cpp
struct AudioRspState {
    uint8_t  dmem[0x1000];      // DMEM emulada (conteúdo como int16 em ordem NATIVA — ver §4)
    uint16_t in, out, count;    // definidos por aSetBuffer
    int16_t  adpcmTable[8][16]; // carregada por aLoadADPCM
    const void* adpcmLoopState; // aSetLoop
    // envelope (aEnvSetup1/2), filtros (aFilter), etc.
};
```

### 3.2 Comandos usados pelo OoT

Contagem de chamadas em `synthesis.c` (comandos com 0 usos não precisam ser implementados no início; as macros
estão em [`include/ultra64/abi.h`](../../include/ultra64/abi.h)):

| Comando | Usos | Função |
|---------|------|--------|
| `aSetBuffer` | 11 | Define in/out/count para o próximo comando |
| `aDMEMMove` | 8 | Copia dentro da DMEM |
| `aMix` | 7 | Soma com ganho (Q15) |
| `aResample` | 7 | Reamostragem (pitch) com filtro de 4 *taps* |
| `aLoadBuffer` / `aSaveBuffer` | 6 / 6 | RAM ↔ DMEM |
| `aFilter` | 6 | Filtro FIR (efeitos) |
| `aClearBuffer` | 3 | Zera região da DMEM |
| `aADPCMdec` | 2 | **Decodificação VADPCM** (o formato de compressão de amostras do N64) |
| `aEnvSetup1` / `aEnvSetup2` / `aEnvMixer` | 2 / 1 / 1 | Envelope de volume e mix em L/R + efeitos (reverb) |
| `aLoadADPCM`, `aSetLoop`, `aS8Dec`, `aInterleave`, `aDuplicate`, `aResampleZoh` | 1 cada | Tabela ADPCM, estado de loop, PCM 8-bit, intercalar L/R, duplicar, reamostragem *zero-order hold* |

### 3.3 Precisão

O RSP usa aritmética de **ponto fixo com saturação** (clamp em `int16`). Implementar com as mesmas larguras
(`int32` intermediário, `>> 15`/`>> 16`, clamp) — não usar `float`. Diferenças pequenas são audíveis como
estalos, e testes bit-a-bit só são possíveis se a aritmética for a mesma.

## 4. Endianness no áudio

- **Amostras VADPCM e PCM8 vindas dos samplebanks** são bytes → lidas por byte, seguro.
- **Tabelas ADPCM (codebooks)** são `s16`: se vierem de C compilado (soundfont gerado a partir de XML, ver
  [`docs/audio/Soundfont_XML.md`](../audio/Soundfont_XML.md)), estão em ordem nativa; se vierem de binário, estão em BE.
  O interpretador precisa saber a origem. **Decisão:** padronizar como nativo no build do port.
- **DMEM**: no RSP real, `int16` em big-endian. Como só o nosso interpretador acessa a DMEM, guardamos em ordem
  **nativa**; os comandos que copiam de/para RAM (`aLoadBuffer`/`aSaveBuffer`) convertem quando a RAM contém
  dados em ordem N64.
- **Buffer AI de saída**: o jogo nunca lê; geramos em ordem nativa direto para o ring buffer.
- **Sequências `.aseq`**: bytecode lido byte a byte pelo `seqplayer.c` — seguro.

## 5. Saída: SDL3 audio stream / CoreAudio

- Formato: `S16`, 2 canais, 32000 Hz. SDL faz a conversão para a taxa nativa do dispositivo (geralmente 48 kHz).
- **Ring buffer SPSC lock-free** (um produtor: loop do jogo; um consumidor: thread de áudio do sistema) com
  `std::atomic` *acquire/release*. Capacidade ≈ 200 ms; alvo de ocupação definido em `audio.buffer_ms`.
- O *callback* do sistema **nunca** chama código do jogo, aloca memória, trava mutex ou faz log síncrono.
- Telemetria (Debug): contadores de *underrun*/*overrun* e ocupação média.

## 6. Ruído gerado a partir do código

`gWaveSamples[8]` lê o próprio código como amostras ([05 §10](05-problemas-de-portabilidade.md#10-código-que-lê-o-próprio-código)).
Substituir por tabela fixa sob `TARGET_NATIVE`.

## 7. Plano de implementação

1. Ring buffer + saída SDL com um gerador de seno (validar latência e *underruns*).
2. Shim AI (`osAiSetFrequency`, `osAiSetNextBuffer`, `osAiGetLength`).
3. Interpretador com `aClearBuffer`, `aSetBuffer`, `aLoadBuffer`, `aSaveBuffer`, `aDMEMMove`, `aMix`, `aInterleave` → já sai "algo".
4. `aADPCMdec` + `aLoadADPCM` + `aSetLoop` → instrumentos reconhecíveis.
5. `aResample`, `aEnvSetup*`, `aEnvMixer` → pitch e volume corretos.
6. `aFilter`, `aS8Dec`, `aDuplicate`, `aResampleZoh` → efeitos e casos raros.
7. Reverb (feito via comandos de buffer de efeitos em `synthesis.c`) — validar por ouvido e por *golden*.

## 8. Testes deste subsistema

- Unitários por comando: entradas sintéticas na DMEM → saída esperada (vetores calculados à mão para casos
  simples; para ADPCM, um codificador de referência gera os dados de teste).
- Ring buffer: concorrência (produtor/consumidor em threads reais por N segundos, sem perda nem duplicação),
  *wrap-around*, buffer cheio/vazio.
- *Golden* de áudio (local, com ROM): gravar N segundos de PCM da tela de título e comparar com referência
  (hash exato se a implementação for bit-exata; caso contrário, erro RMS abaixo de limiar).
