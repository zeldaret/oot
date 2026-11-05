# 06 — Subsistema de gráficos: interpretador GBI → Metal

## 1. Objetivo

Receber a display list mestre que `Graph_TaskSet00` montaria para o RSP e **desenhar o mesmo frame** usando
Metal. Este é o maior componente novo do port.

Essa técnica é chamada de **HLE** (*High-Level Emulation*): em vez de emular o RSP instrução por instrução
(LLE), interpretamos os **comandos** da GBI e reproduzimos o efeito deles numa GPU moderna. Ports de outros jogos
de N64 usam a mesma ideia (o interpretador costuma ser chamado de "Fast3D").

> Decisão sobre reaproveitar uma implementação existente vs escrever a nossa: ver §10.

## 2. Entrada

- Microcodes usados pelo jogo ([02 §5](02-fundamentos-n64.md#5-rcp-rsp--rdp)): **F3DZEX2** (quase tudo) e **S2DEX2**
  (fundos pré-renderizados em [`src/code/z_room.c`](../../src/code/z_room.c) e o mapa em
  [`z_kaleido_map.c`](../../src/overlays/misc/ovl_kaleido_scope/z_kaleido_map.c), trocados no meio da DL com
  `gSPLoadUcodeL(..., gspS2DEX2d_fifo)` e de volta com `gSPLoadUcode`).
- Definição dos comandos: [`include/ultra64/gbi.h`](../../include/ultra64/gbi.h) com `F3DEX_GBI_2` (Makefile:
  `GBI_DEFINES := -DF3DEX_GBI_2`) e [`include/ultra64/gs2dex.h`](../../include/ultra64/gs2dex.h).
- Referência de decodificação já existente no projeto: [`src/code/ucode_disas.c`](../../src/code/ucode_disas.c)
  (o "disassembler" de display lists do modo debug) — excelente para estudar o formato de cada opcode.

## 3. Arquitetura do módulo

```
Port_SubmitGfxTask(masterDL)
        │
        ▼
┌──────────────────────────┐   comandos RDP     ┌───────────────────────┐
│ GbiInterpreter           │──────────────────► │ RdpState              │
│  - pilha de DLs (≤18)    │                    │  othermode H/L        │
│  - tabela de segmentos   │   vértices prontos │  combiner, blender    │
│  - dispatch por opcode   │──────┐             │  tiles (8), TMEM 4 KB │
└──────────┬───────────────┘      │             │  cores prim/env/fog   │
           │ G_MTX, G_VTX,        │             │  color/depth image    │
           │ G_GEOMETRYMODE...    ▼             └──────────┬────────────┘
┌──────────────────────────┐  triângulos  ┌───────────────▼───────────┐
│ RspState                 │─────────────►│ DrawBatcher                │
│  - pilha de matrizes      │              │  agrupa por PipelineKey    │
│  - buffer de 32 vértices │              │  + textura                  │
│  - luzes, lookat, fog     │              └───────────────┬───────────┘
│  - clip/cull              │                              ▼
└──────────────────────────┘              ┌──────────────────────────────┐
                                          │ IRenderer (Metal / Null)     │
                                          │  shaders gerados por chave    │
                                          │  cache de texturas            │
                                          └──────────────────────────────┘
```

## 4. RSP (F3DZEX2) — o que implementar

| Grupo | Comandos | Notas |
|-------|----------|-------|
| Fluxo | `G_DL` (chamar/pular), `G_ENDDL`, `G_BRANCH_Z`, `G_CULLDL` | Pilha de retorno com limite; `G_CULLDL` testa visibilidade de vértices |
| Segmentos e moveword | `G_MOVEWORD` (`G_MW_SEGMENT`, `G_MW_NUMLIGHT`, `G_MW_FOG`, `G_MW_PERSPNORM`, `G_MW_CLIP`) | `gSPSegment` atualiza a tabela **do RSP**, não `gSegments` |
| Matrizes | `G_MTX` (projection/modelview, load/mul, push), `G_POPMTX` | Ler `Mtx` pela convenção de [05 §4.3](05-problemas-de-portabilidade.md#43-mtx-intpartfracpart-vs-m); converter para `float` |
| Vértices | `G_VTX` (até 32 no buffer), `G_MODIFYVTX` | Transformar por MVP, iluminação, *texgen*, fog |
| Triângulos | `G_TRI1`, `G_TRI2`, `G_QUAD` | Índices são `×2` no F3DZEX2 |
| Geometria | `G_GEOMETRYMODE` (Z-buffer, shade, cull front/back, fog, lighting, texgen, smooth shading) | |
| Luzes | `G_MOVEMEM` (`G_MV_LIGHT`, `G_MV_VIEWPORT`, `G_MV_MATRIX`) | Luzes direcionais + ambiente; *lookat* para `texgen` (reflexos) |
| Textura | `G_TEXTURE` (escala S/T, tile, on/off) | |
| Retângulos | `G_TEXRECT`, `G_TEXRECTFLIP`, `G_FILLRECT` | HUD, fontes, `gDPFillRectangle`; usam `G_RDPHALF_1/2` |
| Sync | `G_RDPPIPESYNC`, `G_RDPTILESYNC`, `G_RDPLOADSYNC`, `G_RDPFULLSYNC` | *No-op* |
| Microcode | `G_LOAD_UCODE` | Troca o *dispatcher* F3DZEX2 ↔ S2DEX2 |

S2DEX2: implementar só o que o OoT usa — `G_BG_COPY`/`G_BG_1CYC` (`gSPBgRectCopy`, `gSPBgRect1Cyc`) e
`G_OBJ_*` se aparecerem nas DLs capturadas (verificar com `debug.dump_dl`).

## 5. RDP — o que implementar

| Estado | Comandos | Mapeamento Metal |
|--------|----------|------------------|
| *Othermode* | `G_SETOTHERMODE_H/L`, `G_RDPSETOTHERMODE` | Ciclo 1/2/COPY/FILL, filtro (point/bilinear/*3-point* do N64), Z (compare/update/mode decal/xlu), alpha compare, dithering (ignorar) |
| Color combiner | `G_SETCOMBINE` | **Gerar shader** a partir dos 16 seletores (a−b)·c+d para cor e alfa, 1 ou 2 ciclos |
| Blender | parte do othermode L | Mapear casos comuns para *blend state* do Metal; fog via shader |
| Cores | `G_SETPRIMCOLOR`, `G_SETENVCOLOR`, `G_SETFOGCOLOR`, `G_SETBLENDCOLOR`, `G_SETFILLCOLOR`, `G_SETPRIMDEPTH` | Uniforms |
| Texturas | `G_SETTIMG`, `G_SETTILE`, `G_SETTILESIZE`, `G_LOADBLOCK`, `G_LOADTILE`, `G_LOADTLUT` | Emular a **TMEM (4 KB)** e os 8 *tiles*; decodificar formatos ao amostrar |
| Imagens | `G_SETCIMG`, `G_SETZIMG` | Render targets (ver §7) |
| Scissor | `G_SETSCISSOR` | `setScissorRect` |

### 5.1 Formatos de textura

`RGBA16` (5551), `RGBA32`, `IA4/8/16`, `I4/8`, `CI4/CI8` com paleta `RGBA16` ou `IA16`. Lista completa e convenções
de sufixo em [`docs/assets/images.md`](../assets/images.md). Detalhes que pegam iniciantes:

- **TMEM com *interleave*:** linhas ímpares de texturas carregadas com `LOADBLOCK` têm palavras de 32 bits
  trocadas (o `dxt` do `gDPLoadTextureBlock`). Necessário para texturas corretas.
- **CI usa a metade alta da TMEM** para a paleta.
- **Ordem de bytes:** os bytes na memória seguem a regra de ouro ([05 §4](05-problemas-de-portabilidade.md#4-endianness)):
  ler com `BE16`.
- **Mirror/clamp/mask** por eixo e **shift** S/T por tile: implementar no shader ou expandir a textura.

### 5.2 Cache de texturas

Chave: `(endereço, formato, tamanho, tlut, conteúdo-hash opcional)`. Muitas texturas são animadas trocando o
segmento (olhos) — o endereço muda, então a chave por endereço já funciona. Texturas geradas pela CPU (§7)
precisam de invalidação por *hash* do conteúdo ou por *flag* de "sujo".

## 6. Transformação de vértices: CPU ou GPU?

- **Opção A (recomendada para começar): na CPU**, como o RSP fazia. Facilita implementar *lighting*, *texgen*,
  fog e `G_CULLDL`/`G_BRANCH_Z` exatamente; a GPU recebe vértices já em *clip space*. O volume do OoT (milhares
  de vértices/frame) é trivial para uma CPU moderna.
- Opção B: matrizes e vértices crus para o *vertex shader*. Mais rápido, mais difícil de acertar. Só se o
  *profiler* mostrar necessidade.

Ponto de atenção: o RSP usa **ponto fixo** em várias etapas. Pequenas diferenças são aceitáveis visualmente; mas
`G_CULLDL` e `G_BRANCH_Z` decidem **se** algo é desenhado — testes devem cobrir bordas.

## 7. Framebuffer, Z-buffer e efeitos que leem a tela

O jogo trata framebuffer e Z-buffer como **memória comum**. Casos reais:

| Caso | Arquivo | Estratégia no port |
|------|---------|--------------------|
| Limpar Z-buffer desenhando um retângulo com o Z-buffer como *color image* | [`src/code/z_rcp.c`](../../src/code/z_rcp.c) (`gDPSetColorImage(..., gZBuffer)`) | Detectar `SETCIMG == endereço do Z-buffer` + `FILLRECT` → `ClearDepth()` |
| Renderizar Link num buffer separado para o menu de equipamento | [`src/code/z_player_lib.c`](../../src/code/z_player_lib.c) (`gDPSetColorImage(..., depthFrameBuffer)`) | *Render target* off-screen; quando esse endereço for usado como textura, usar a textura da GPU |
| Fundo do menu de pausa e transições copiando o frame | [`src/code/PreRender.c`](../../src/code/PreRender.c), [`src/code/z_play.c`](../../src/code/z_play.c) | `ReadbackFramebuffer` da GPU para a memória (RGBA5551, big-endian) — lento mas simples; otimizar depois mantendo na GPU |
| Decodificação JPEG usando o Z-buffer como área de trabalho | [`src/code/z_room.c`](../../src/code/z_room.c), [`src/code/z_jpeg.c`](../../src/code/z_jpeg.c) | O decodificador JPEG do jogo usa uma tarefa RSP → implementar o *ucode* JPEG em C (ou decodificar com um decodificador JPEG comum, validando a saída) |
| Filtros de debug (`VisZBuffer`, `VisCvg`) | [`src/code/game.c`](../../src/code/game.c) | Baixa prioridade |

Regra: o interpretador mantém um **mapa endereço → render target**. Sempre que `G_SETCIMG` aponta para um
endereço, desenhamos nesse alvo; quando `G_SETTIMG` aponta para um endereço que é um alvo, usamos a textura da
GPU em vez de ler a memória.

## 8. Resolução

O jogo pensa em **320×240** (`SCREEN_WIDTH`/`SCREEN_HEIGHT`). Fase 1: renderizar a 320×240 e escalar (pixels
nítidos, fiel). Depois: renderizar na resolução da janela multiplicando o *viewport* e o *scissor* — atenção a
`TEXRECT` (HUD) que precisa de coordenadas sub-pixel corretas.

## 9. Shaders do combiner no Metal

Cada combinação de estado vira uma `PipelineKey` (combiner ciclo 1/2, flags de textura, fog, alpha compare,
modo de blend, Z). Gerar o código MSL em texto a partir da chave, compilar em tempo de execução com
`newLibraryWithSource`, guardar em cache (memória + disco). O número de combinações distintas no OoT é da
ordem de centenas.

Exemplo do que a geração produz para `G_CC_MODULATEIDECALA` (cor = textura × shade; alfa = textura):

```metal
float4 combine(float4 tex0, float4 shade, Uniforms u) {
    float3 c = (tex0.rgb - 0.0) * shade.rgb + 0.0;
    float  a = (tex0.a  - 0.0) * 1.0       + 0.0;
    return float4(c, a);
}
```

## 10. Escrever ou reaproveitar?

| Opção | Prós | Contras |
|-------|------|---------|
| Escrever o nosso (este documento) | Controle total, didático, só o que o OoT usa | Mais trabalho, bugs de precisão |
| Reaproveitar um interpretador "Fast3D" de projetos de port existentes | Testado em produção | Verificar **licença** e acoplamento (alguns trazem um framework inteiro); estudar antes |
| Emulação LLE do RDP (ex.: implementações baseadas em *compute shader*) | Precisão máxima | Pesado; geralmente Vulkan (exigiria MoltenVK); perde o ganho de um port nativo |

Recomendação: **escrever o nosso, guiado pelos testes de §11**, usando projetos existentes apenas como
referência de comportamento (respeitando licenças). Reavaliar no fim do M3 se o custo estiver alto.

## 11. Testes deste subsistema

Ver [10 — Estratégia de testes](10-estrategia-de-testes.md). Mínimo:

- decodificação de cada opcode a partir de `Gfx` montados com as macros de `gbi.h`;
- cada formato de textura (entrada sintética → RGBA8 esperado), incluindo *interleave* e TLUT;
- geração de shader: para cada `G_CC_*` usado pelo jogo, o código compila (Metal) e a fórmula em CPU bate;
- pilha de matrizes (push/pop/mul/load) e conversão `Mtx` fixo → float;
- *golden images*: DLs capturadas de cenas reais (só localmente, com ROM) comparadas com imagens de referência
  com tolerância;
- `NullRenderer`: sequência de chamadas esperada para DLs pequenas.
