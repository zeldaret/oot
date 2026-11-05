# 10 — Estratégia de testes

## 1. Princípios

1. **Testes são a especificação do shim.** Quando reimplementamos `osRecvMesg` ou `aResample`, o teste descreve o
   comportamento do original. Se o teste e o original divergirem, o original vence e o teste é corrigido.
2. **A maior parte dos testes roda sem ROM.** Dados sintéticos, gerados no próprio teste. Nenhum byte de asset
   do jogo entra no repositório.
3. **Testes que precisam da ROM** existem, são marcados (`LABELS rom`) e rodam localmente ou num runner próprio que
   tenha a ROM do desenvolvedor. Eles **pulam** (não falham) se a ROM não estiver presente.
4. **Determinismo antes de tudo.** O jogo é determinístico dado o mesmo input e a mesma semente; os testes de
   *replay* dependem disso. Qualquer não determinismo introduzido pelo port (tempo real, threads, endereços) é bug.
5. **Todo bug corrigido ganha um teste** que falhava antes da correção.

## 2. Ferramentas

| Ferramenta | Uso |
|------------|-----|
| **GoogleTest** (via CMake `FetchContent`) | Framework de testes unitários e de integração (C++; testa código C via `extern "C"`) |
| **CTest** | Execução; *labels* `unit`, `integration`, `rom`, `golden`, `replay`, `slow` |
| **ASan / UBSan** | Configurações de build `ASan` e `UBSan`; todos os testes `unit` e `integration` rodam nelas no CI |
| **TSan** | Testes do ring buffer de áudio e de qualquer código com threads |
| **libFuzzer** (`-fsanitize=fuzzer`) | *Fuzzing* do interpretador GBI, do Acmd e do descompressor Yaz0 |
| **llvm-cov** | Cobertura da camada `port/` (meta: ≥ 80% de linhas em `port/src/ultra`, `gfx/`, `audio/`) |

Comandos:

```sh
ctest --test-dir build-native -L unit            # rápidos, sem ROM
ctest --test-dir build-native -L rom             # exigem ROM em baserom/
ctest --test-dir build-native -L replay -j1      # replays, sequenciais
```

## 3. Camadas de teste

```
                ▲ poucos, lentos, exigem ROM
   ┌─────────────────────────────┐
   │ 3.6 Replay / determinismo    │
   │ 3.5 Golden (imagem, áudio)   │
   │ 3.4 Integração com ROM       │
   ├─────────────────────────────┤
   │ 3.3 Integração sem ROM       │
   ├─────────────────────────────┤
   │ 3.2 Unitários                │
   │ 3.1 Estáticos (compilação)   │
   └─────────────────────────────┘
                ▼ muitos, rápidos, sem ROM
```

### 3.1 Testes estáticos (em tempo de compilação/CI)

| O quê | Como |
|-------|------|
| Tamanho dos tipos e structs de fronteira | `_Static_assert` em `port/include/port/port.h` ([05 §1](05-problemas-de-portabilidade.md#1-modelo-de-dados-long-tem-64-bits-no-macos)) |
| Build *matching* continua idêntico | Job de CI: `make VERSION=<v>` → `OK` (com ROM) |
| Avisos de ponteiro/inteiro não aumentam | Script compara contagem com `port/WARNINGS.md` |
| Regra de dependência entre camadas | Script verifica que `src/` não inclui headers de `port/src/` nem SDL/Metal; que `port/src/ultra` não inclui `gfx/`/`audio/` internos |
| `clang-format` | `format.py`/`check_format.py` já existentes para `src/`; `.clang-format` para `port/` |

### 3.2 Testes unitários — o que precisa ser coberto

#### Shim libultra (`port/src/ultra`)

| Unidade | Casos obrigatórios |
|---------|-------------------|
| `OSMesgQueue` | criar com capacidade N; `osSendMesg` NOBLOCK em fila cheia retorna −1; BLOCK em fila cheia no modo thread única → aborta com mensagem; `osRecvMesg` NOBLOCK em fila vazia retorna −1; ordem FIFO; `osJamMesg` insere na frente; *wrap-around* do índice circular; `msg == NULL` permitido no receive |
| Eventos | `osSetEventMesg(OS_EVENT_SI, q, m)` → o loop entrega `m` em `q` |
| Tempo | `osGetTime` monotônico; conversão ns ↔ ciclos usando `OS_CPU_COUNTER`; `osGetCount` dá a volta em 32 bits; `OS_USEC_TO_CYCLES`/`OS_CYCLES_TO_USEC` ida e volta |
| Timers | `osSetTimer` dispara no tempo certo (± 1 frame) e repete quando periódico |
| PI/DMA | ler da ROM virtual em offset válido; tamanho 0; leitura fora da ROM → erro claro |
| AI | `osAiSetNextBuffer` empurra no ring buffer; `osAiGetLength` reflete ocupação |
| SRAM | ler/escrever 32 KB; escrita atômica (§08); arquivo ausente → SRAM zerada |
| `gu*` | `guMtxF2L`/`guMtxL2F` ida e volta; `guPerspective`, `guLookAt`, `guRotate`, `guTranslate`, `guScale` contra valores de referência; `sins`/`coss` para todos os 65536 ângulos contra a tabela do jogo |

#### Tipos, memória e endereços

| Unidade | Casos |
|---------|-------|
| `endian.h` | `BE16/BE32` em buffers conhecidos; `BSWAP` ida e volta; leitura desalinhada |
| Segmentos | ponteiro nativo (≥ 2³²) passa direto; `0x06001234` com base configurada; segmento 0; endereço de global ≥ 2³² (garante `__PAGEZERO`) |
| `Mtx` | todos os escritores (`Matrix_MtxFToMtx`, `guMtxF2L`, `MtxConv_F2L`) → leitor do interpretador → mesmo `MtxF` (tolerância 1/65536) |
| Overlays | para cada entrada de `gActorOverlayTable`, o `profile` traduzido == `&<Ator>_Profile`; idem game states e efeitos |
| Arenas | alocação/liberação; *high-water mark*; falha de alocação reportada |
| `Color_RGBA8_u32` | `.rgba` == `0xRRGGBBAA` após escrever `r,g,b,a` |
| Yaz0 (se a ROM virtual descomprimir) | entrada sintética comprimida por um compressor de referência → saída idêntica |

#### Gráficos (`port/src/gfx`)

| Unidade | Casos |
|---------|-------|
| Decodificador de comandos | para cada opcode da tabela de [06 §4–5](06-graficos.md): montar `Gfx` com a macro de `gbi.h` e verificar os campos decodificados |
| Fluxo de DL | `G_DL` push/branch; `G_ENDDL` retorna; profundidade máxima; DL vazia; `G_CULLDL` com vértices dentro/fora; `G_BRANCH_Z` |
| Segmentos do RSP | `gSPSegment` dentro da DL afeta só comandos seguintes; não afeta `gSegments` da CPU |
| Pilha de matrizes | push/pop/load/mul; projeção × modelview; *overflow* da pilha tratado |
| Vértices | transformação; iluminação com 1 e N luzes; *texgen*; fog |
| Texturas | cada formato (RGBA16, RGBA32, IA4/8/16, I4/8, CI4/CI8 com paleta RGBA16 e IA16): entrada sintética de 4×4 → RGBA8 esperado; *interleave* de `LOADBLOCK`; `LOADTILE` com sub-retângulo; mirror/clamp/mask |
| Combiner | para cada `G_CC_*` usado no jogo: fórmula avaliada em CPU == esperado; shader gerado compila (só em máquina com Metal) |
| Blender/othermode | mapeamento dos modos usados pelo jogo para estado de *blend*/*depth* |
| Render targets | `SETCIMG` no endereço do Z-buffer + `FILLRECT` → `ClearDepth`; textura a partir de render target |
| `NullRenderer` | DL de um triângulo texturizado gera exatamente a sequência esperada de chamadas |

#### Áudio (`port/src/audio`)

| Unidade | Casos |
|---------|-------|
| Cada comando `Acmd` usado ([07 §3.2](07-audio.md#32-comandos-usados-pelo-oot)) | entrada sintética na DMEM → saída esperada; saturação em ±32767; contagens de 0 e máximas |
| ADPCM | decodificar blocos gerados por um codificador de referência; continuidade entre blocos; loop |
| Resample | pitch 1.0 = identidade (após *warm-up*); pitch 2.0 = metade das amostras; estado preservado entre chamadas |
| Ring buffer | SPSC com threads reais por 5 s sob **TSan**; cheio/vazio; *wrap-around* |

#### Input e plataforma

| Unidade | Casos |
|---------|-------|
| Mapeamento | cada botão; combinação; teclado + gamepad juntos |
| Analógico | centro → 0; *deadzone*; extremos → ±85 (ou valor definido); diagonais octogonais |
| Config | arquivo ausente → padrões; chave inválida → aviso, não crash |

### 3.3 Integração sem ROM

- Compilar arquivos **puros** do jogo junto com os testes e verificar propriedades: [`src/code/sys_math.c`](../../src/code/sys_math.c),
  [`src/code/sys_math3d.c`](../../src/code/sys_math3d.c) (interseções com casos geométricos conhecidos),
  [`src/code/sys_matrix.c`](../../src/code/sys_matrix.c), [`src/libc64/qrand.c`](../../src/libc64/qrand.c) (sequência de números
  idêntica à documentada), `z_lib.c` (`Math_StepToF` etc.).
- Interpretador GBI + `NullRenderer` com DLs sintéticas grandes (centenas de comandos).

### 3.4 Integração com ROM (`LABELS rom`)

| Teste | Critério |
|-------|----------|
| Boot *headless* | `--headless --frames 1200` chega ao FileSelect; código de saída 0; sem erro de ASan/UBSan |
| Varredura de cenas | Para cada entrada do MapSelect: carregar, rodar 300 frames, sair. Nenhum crash; nenhuma arena > 90% |
| Assets | Todos os objetos da tabela de objetos podem ser "carregados" (segmento resolvido, tamanho consistente) |
| Save | Novo jogo → salvar → reiniciar → carregar → `SaveContext` idêntico |

### 3.5 *Golden tests* (imagem e áudio)

- **Imagem:** um *replay* curto leva o jogo a um ponto conhecido (ex.: título, Kokiri em frente à casa do Link);
  o frame N é capturado em 320×240 e comparado com uma referência **gerada localmente** (não versionada, pois
  contém assets). Métrica: diferença por pixel com tolerância e porcentagem máxima de pixels diferentes.
- Referência inicial: captura de um emulador preciso rodando a ROM *matching* da mesma versão, revisada a olho.
  Depois que aceita, a própria saída do port vira a referência de regressão.
- **Áudio:** N segundos de PCM da tela de título; hash exato (se bit-exato) ou erro RMS abaixo do limiar.

### 3.6 *Replay* e determinismo

O teste mais valioso para um port: garante que **a lógica do jogo não mudou**.

1. `--record arquivo.rpl` grava o `OSContPad` de cada frame + versão + semente inicial.
2. `--replay arquivo.rpl --hash-log saida.txt` reproduz e, a cada frame, grava um *hash* do estado relevante:
   posição/rotação do Player, `gSaveContext`, semente do RNG, número de atores por categoria, cena/sala atual.
3. Testes:
   - **Determinismo:** o mesmo *replay* duas vezes → *hash logs* idênticos (pega não determinismo introduzido pelo port).
   - **Regressão:** *hash log* comparado com o aceito anteriormente.
   - **Diferencial com o original (avançado):** um emulador rodando a ROM *matching* com o mesmo input; ler as mesmas
     variáveis da RAM do emulador usando os endereços do arquivo de mapa do build (`build/<v>/oot-<v>.map`). A primeira
     divergência aponta o frame e a variável — e quase sempre um bug de portabilidade ([05](05-problemas-de-portabilidade.md)).

Os arquivos `.rpl` contêm só input (sem assets) e **podem** ser versionados em `port/tests/data/replays/`.

### 3.7 *Fuzzing*

| Alvo | Entrada | Propriedade |
|------|---------|-------------|
| `GbiInterpreter` | sequência arbitrária de `Gfx` | nunca crasha, nunca lê fora dos buffers conhecidos, sempre termina (limite de comandos) |
| `AcmdInterpreter` | sequência arbitrária de `Acmd` | idem; nunca escreve fora da DMEM |
| Yaz0 / leitura da ROM virtual | bytes arbitrários | nunca escreve fora do destino |

## 4. Matriz de cobertura por marco

| Marco | Testes que precisam existir e passar |
|-------|---------------------------------------|
| M0 | Infra GoogleTest; `endian.h`; funções de `sys_math.c` |
| M1 | `_Static_assert`s; contagem de avisos; build *matching* `OK` |
| M2 | `OSMesgQueue`, tempo, timers, PI/DMA, segmentos, overlays, arenas; boot *headless* (rom) sob ASan/UBSan |
| M3 | Decodificador GBI, fluxo de DL, matrizes, texturas, combiner, render targets, `NullRenderer`; primeiros *golden* de imagem |
| M4 | Input, analógico, SRAM, config; *replay* de determinismo; *replay* Kokiri → Deku Tree |
| M5 | Todos os `Acmd`, ADPCM, resample, ring buffer (TSan); *golden* de áudio |
| M6 | Varredura de cenas; orçamentos de memória; *fuzzing* rodando no CI noturno |
| M7 | Suíte de *replays* do *playthrough*; diferencial com emulador para os trechos críticos |

## 5. Exemplo para júnior: testando `OSMesgQueue`

```cpp
// port/tests/unit/os_mesg_test.cpp
#include <gtest/gtest.h>
extern "C" {
#include "ultra64.h"
}

TEST(OSMesgQueue, ReceiveOnEmptyQueueNonBlockingReturnsMinusOne) {
    OSMesgQueue q;
    OSMesg buf[4];
    osCreateMesgQueue(&q, buf, 4);

    OSMesg out = nullptr;
    EXPECT_EQ(osRecvMesg(&q, &out, OS_MESG_NOBLOCK), -1);
}

TEST(OSMesgQueue, JamPutsMessageInFront) {
    OSMesgQueue q;
    OSMesg buf[4];
    osCreateMesgQueue(&q, buf, 4);

    osSendMesg(&q, (OSMesg)1, OS_MESG_NOBLOCK);
    osJamMesg(&q, (OSMesg)2, OS_MESG_NOBLOCK);

    OSMesg out;
    osRecvMesg(&q, &out, OS_MESG_NOBLOCK);
    EXPECT_EQ((uintptr_t)out, 2u);   // o "jam" sai primeiro
    osRecvMesg(&q, &out, OS_MESG_NOBLOCK);
    EXPECT_EQ((uintptr_t)out, 1u);
}

TEST(OSMesgQueue, SendOnFullQueueNonBlockingReturnsMinusOne) {
    OSMesgQueue q;
    OSMesg buf[1];
    osCreateMesgQueue(&q, buf, 1);

    EXPECT_EQ(osSendMesg(&q, (OSMesg)1, OS_MESG_NOBLOCK), 0);
    EXPECT_EQ(osSendMesg(&q, (OSMesg)2, OS_MESG_NOBLOCK), -1);
}
```

Repare: cada teste tem **um** comportamento, o nome diz qual, e não depende de outro teste.

## 6. Regras

- Testes novos em `port/tests/<camada>/<módulo>_test.cpp`.
- Nenhum asset da ROM em `port/tests/data/` — só dados sintéticos e *replays* (input).
- Testes com ROM procuram a ROM em `baseroms/<v>/` e usam `GTEST_SKIP()` se não acharem.
- Um PR que muda `port/src/X` precisa de teste em `port/tests/*/X*` (o revisor cobra).
- Teste *flaky* é bug: abra issue e conserte; não marque como "ignorado" sem prazo.
