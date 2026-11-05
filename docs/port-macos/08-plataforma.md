# 08 — Plataforma: input, save, arquivos e empacotamento

## 1. Input

### 1.1 Contrato com o jogo

O jogo recebe por controle um `OSContPad` ([`include/ultra64/controller.h`](../../include/ultra64/controller.h)):

```c
typedef struct OSContPad {
    /* 0x00 */ u16 button;   // bits: A, B, Z, START, D-pad, L, R, C-buttons
    /* 0x02 */ s8  stick_x;  // ≈ -80..80 num controle real
    /* 0x03 */ s8  stick_y;
    /* 0x04 */ u8  errno;    // 0 = conectado
} OSContPad;
```

O `PadMgr` ([`src/code/padmgr.c`](../../src/code/padmgr.c)) transforma isso em `Input { cur, prev, press, rel }`
([`include/libu64/pad.h`](../../include/libu64/pad.h)) e aplica correção de *stick* (`PadUtils_UpdateRelXY` em
[`src/libu64/pad.c`](../../src/libu64/pad.c), equivalente ao `pad_correct_stick` do mapa citado em [`docs/libu64.md`](../libu64.md)).

### 1.2 Implementação

- **SDL3 Gamepad API** (cobre controles de Xbox, PlayStation, Switch Pro e outros via `GameController.framework`
  no macOS) + teclado.
- `port/src/input/` produz um `OSContPad` por porta (até 4); o shim `osContGetReadData` copia.
- Mapeamento padrão (configurável):

| N64 | Gamepad | Teclado |
|-----|---------|---------|
| A | A (sul) | X |
| B | B / X (oeste) | C |
| Z | gatilho esquerdo | Z |
| R | ombro direito | V |
| L | ombro esquerdo | E |
| START | Start | Enter |
| C-buttons | analógico direito / Y / botões de face | I/J/K/L |
| D-pad | D-pad | T/F/G/H |
| Stick | analógico esquerdo | setas/WASD |

- **Conversão do analógico:** o eixo do SDL vai de −32768 a 32767. O controle de N64 real chega a ≈ ±80 e as
  diagonais são octogonais. Converter com *deadzone* radial, escala para ±85 e recorte octogonal — o jogo tem
  limiares (ex.: correr vs andar) que dependem desses valores.
- **Rumble:** `osMotorStart/Stop` do shim → `SDL_RumbleGamepad`.
- **Teste:** tabela de entradas SDL → `OSContPad` esperado (incluindo *deadzone* e diagonais).

## 2. Save (SRAM)

- [`src/code/z_sram.c`](../../src/code/z_sram.c) lê/escreve 32 KB via `SsSram_ReadWrite` (macros `SRAM_READ`/`SRAM_WRITE`).
- O shim implementa a SRAM como um arquivo de 32 KB:
  `~/Library/Application Support/OoTNative/<versão>/save.sram`.
- **Escrita atômica:** gravar em `save.sram.tmp`, `fsync`, `rename` — nunca corromper o save se o app fechar no meio.
- Leitura na inicialização; escrita quando o jogo escreve (o jogo grava pouco e em momentos discretos).
- Backup rotativo (`save.sram.bak1..3`) opcional.
- Compatibilidade com saves de N64/emulador: **não** na fase 1 (ver [05 §4.6](05-problemas-de-portabilidade.md#46-save)).
- **Teste:** *roundtrip* escrita/leitura; simulação de falha no meio da escrita (arquivo temporário existe, original
  intacto); checksum do `SaveContext` validado pelo próprio jogo após carregar.

## 3. Arquivos e diretórios

| O quê | Onde |
|-------|------|
| Configuração | `~/Library/Application Support/OoTNative/config.toml` |
| Saves | `~/Library/Application Support/OoTNative/<versão>/` |
| Logs | `~/Library/Logs/OoTNative/` |
| Cache de shaders | `~/Library/Caches/OoTNative/` |

Usar as APIs do sistema para descobrir esses caminhos (`NSSearchPathForDirectoriesInDomains` ou o equivalente do SDL,
`SDL_GetPrefPath`), não montar `~` à mão.

## 4. Empacotamento `.app`

```
OoT.app/
└── Contents/
    ├── Info.plist           # CFBundleIdentifier, versão, LSMinimumSystemVersion=14.0, NSHighResolutionCapable
    ├── MacOS/OoT            # executável (universal arm64+x86_64 opcional)
    ├── Frameworks/          # SDL3.framework (se não for estático)
    └── Resources/           # ícone, shaders pré-compilados (opcional)
```

- Gerado pelo CMake (`MACOSX_BUNDLE`).
- **Assinatura:** para uso local, assinatura *ad hoc* (`codesign -s -`) basta e é necessária em Apple Silicon.
  Não fazer *notarização* nem distribuição — o binário contém assets ([01 §6](01-visao-geral.md#6-restrições-legais-e-de-distribuição)).
- *Hardened runtime* não é necessário para uso local; se habilitado, nada no port requer JIT.
- Controles de jogo podem exigir que o app esteja em primeiro plano; testar com o app empacotado, não só pelo
  executável cru.

## 5. Ciclo de vida da janela

- Fechar janela → `Port_Shutdown`: grava save pendente, para o áudio, libera Metal.
- Perder foco → opcionalmente pausar (config).
- Tela cheia nativa do macOS (botão verde) suportada pela SDL.
- Retina: o *drawable* do Metal tem tamanho em pixels ≠ pontos; o renderer usa o tamanho em pixels.

## 6. Reset (NMI)

O N64 tem botão de reset, que gera PreNMI → NMI; o jogo trata em `Graph_Update`/`Main` (`PreNMI_Init`). No port:
atalho de teclado (ex.: ⌘R) envia a mesma mensagem `OS_SC_PRE_NMI_MSG` ([`include/irqmgr.h`](../../include/irqmgr.h))
aos clientes do IrqMgr, preservando o fluxo original.
