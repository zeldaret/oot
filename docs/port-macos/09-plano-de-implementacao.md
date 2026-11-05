# 09 — Plano de implementação

O trabalho é dividido em **marcos (M0–M7)**. Cada marco tem um **critério de saída verificável** — só se
avança quando ele é cumprido. Os marcos são sequenciais; as tarefas dentro de um marco podem ser paralelas.

Legenda de dificuldade: 🟢 boa para júnior · 🟡 júnior com acompanhamento · 🔴 sênior.

```
M0 Fundação ─► M1 Compila e linka ─► M2 Boot headless ─► M3 Primeira imagem ─► M4 Jogável (sem som)
                                                                                    │
                                     M7 Estabilização ◄─ M6 Completude ◄─ M5 Áudio ◄┘
```

---

## M0 — Fundação

**Objetivo:** infraestrutura para compilar e testar código nativo sem tocar no jogo ainda.

- [ ] 🟢 Criar `port/` com a estrutura de [04 §3](04-arquitetura-do-port.md#3-estrutura-de-diretórios-proposta).
- [ ] 🟡 `port/CMakeLists.txt` mínimo: alvo `oot_port_core` (biblioteca), alvo de testes, Ninja, C11/C++17.
- [ ] 🟢 Integrar GoogleTest via `FetchContent`; um teste trivial passando em `ctest`.
- [ ] 🟢 `port/include/port/endian.h` (`BE16`, `BE32`, `BSWAP16/32/64`) + testes.
- [ ] 🟡 Compilar **um** arquivo do jogo nativamente como prova (ex.: [`src/code/sys_math.c`](../../src/code/sys_math.c)) e testar
      2–3 funções puras (ex.: `Math_FactorialF`, `Math_PowF`, `Math_SinF`).
- [ ] 🟡 CI (GitHub Actions, runner macOS arm64): `cmake --build` + `ctest`; job separado garantindo que o build
      *matching* continua `OK` (pode exigir ROM — se não houver ROM no CI, checar ao menos que o C do jogo compila com o
      compilador original ou que nenhum arquivo do jogo mudou sem `#if TARGET_NATIVE`).
- [ ] 🟢 Adicionar `build-native/` ao `.gitignore`.

**Critério de saída:** `cmake -S port -B build-native && cmake --build build-native && ctest` verde local e no CI;
`make VERSION=gc-eu-mq-dbg` continua `OK`.

---

## M1 — Compila e linka

**Objetivo:** todo o código do jogo + assets compilam com clang e linkam num executável (que ainda não faz nada).

### Tipos e headers
- [ ] 🟡 `TARGET_NATIVE` em `ultratypes.h` e `Mtx_t` ([05 §1](05-problemas-de-portabilidade.md#1-modelo-de-dados-long-tem-64-bits-no-macos)).
- [ ] 🔴 `Gfx` alargado e macros de `gbi.h` com `uintptr_t` ([ADR-0006](adr/0006-tipos-e-ponteiros-64bit.md)).
- [ ] 🟡 `convert.h`, `segmented_address.h`: macros nativas ([05 §2.2, §5](05-problemas-de-portabilidade.md)).
- [ ] 🟢 `_Static_assert` de tamanhos em `port/include/port/port.h`.
- [ ] 🟢 `NO_REORDER` vazio sob `TARGET_NATIVE` ([`include/attributes.h`](../../include/attributes.h)).

### Lista de fontes
- [ ] 🟡 `cmake/GameSources.cmake`: lista dos `.c` a compilar, derivada de [`spec/`](../../spec/) para a versão escolhida,
      **excluindo** `src/libultra`, `src/makerom`, `src/libleo`, `src/n64dd`, `.s`, e arquivos de boot substituídos.
      Idealmente gerada por script a partir do `spec` (as condições `#if` dependem da versão).
- [ ] 🔴 Integração de assets: incluir os `.c` de `extracted/<v>/assets` e os `.inc.c` gerados em `build/<v>/assets`
      ([ADR-0004](adr/0004-assets-e-segmentos.md)); alvo `make native-assets`.
- [ ] 🟡 Opção `--byte-array` em [`bin2c.c`](../../tools/assets/n64texconv/src/libn64texconv/bin2c.c) para texturas ([05 §4.1](05-problemas-de-portabilidade.md#41-texturas-compiladas-como-u64)).

### Shim com stubs
- [ ] 🟢 Para cada símbolo de libultra referenciado (o linker lista), criar stub em `port/src/ultra/` que chama
      `PORT_UNIMPLEMENTED("osXxx")` (loga e aborta). Isso transforma "erro de link" em "lista de tarefas".
- [ ] 🟡 Substituir funções dos `.s` ([05 §8](05-problemas-de-portabilidade.md#8-assembly)) por C.

### Correções de compilação
- [ ] 🟡 Corrigir erros de compilação arquivo por arquivo. Para cada tipo de erro recorrente, documentar a correção
      padrão em [05](05-problemas-de-portabilidade.md).
- [ ] 🟡 Ligar `-Wpointer-to-int-cast -Wint-to-pointer-cast -Wshorten-64-to-32` e **registrar** a contagem de avisos
      (não precisa zerar ainda; precisa não crescer).

**Critério de saída:** executável linka; `ctest` com testes de tipos verde; `make` *matching* `OK`; contagem de avisos
registrada em `port/WARNINGS.md`.

---

## M2 — Boot *headless*

**Objetivo:** o jogo inicializa e roda frames de lógica sem janela, sem som, sem crash.

- [ ] 🟡 `OSMesgQueue` completo + testes ([10 §3.2](10-estrategia-de-testes.md)).
- [ ] 🟡 `osGetTime`/`osGetCount`/timers.
- [ ] 🔴 `Port_Main`: reproduzir a sequência de `Idle_ThreadEntry` → `Main_ThreadEntry` → `Main` sem threads
      ([04 §4](04-arquitetura-do-port.md#4-modelo-de-threads)).
- [ ] 🔴 Desmontar `Graph_ThreadEntry` em `Port_GameInit/RunFrame/Shutdown` (com `#if TARGET_NATIVE` em
      [`src/code/graph.c`](../../src/code/graph.c)).
- [ ] 🟡 Overlays: tabelas com deslocamento zero; `Overlay_Load`/`Overlay_Relocate` *no-op*; corrigir casts em
      [`src/code/z_DLF.c`](../../src/code/z_DLF.c) ([05 §3](05-problemas-de-portabilidade.md#3-overlays)).
- [ ] 🔴 "ROM virtual" + `DmaMgr_Request*` síncrono ([ADR-0004](adr/0004-assets-e-segmentos.md)).
- [ ] 🟡 Arenas com `PORT_MEM_SCALE` e *high-water marks* ([05 §7](05-problemas-de-portabilidade.md#7-memória-e-orçamentos)).
- [ ] 🟢 `NullRenderer` (aceita `Port_SubmitGfxTask` e só conta comandos) e `NullAudio`.
- [ ] 🟡 Crash handler (sinal → backtrace → log).
- [ ] 🟢 Flag `--headless --frames N --start-state <estado>`.

**Critério de saída:** `oot --headless --frames 1200` passa por `ConsoleLogo → TitleSetup → FileSelect` (ver log de
transições) e termina com código 0 em build **ASan+UBSan**. Teste de integração automatizado no CI local (exige ROM).

---

## M3 — Primeira imagem

**Objetivo:** ver o jogo na tela.

- [ ] 🟡 Janela SDL3 + `CAMetalLayer`; limpar a tela com uma cor (prova de vida).
- [ ] 🔴 `GbiInterpreter`: fluxo de DL, segmentos do RSP, `G_MTX`, `G_VTX`, `G_TRI1/2`, `G_GEOMETRYMODE`, `G_ENDDL`.
- [ ] 🔴 `RdpState` + geração de shader do combiner (começar com 1 ciclo).
- [ ] 🟡 Decodificadores de textura: RGBA16, RGBA32, I4/I8, IA4/8/16, CI4/CI8 + TLUT, com TMEM e *interleave*.
- [ ] 🟡 `TEXRECT`/`FILLRECT` (HUD, logo, fontes).
- [ ] 🔴 Render targets por endereço (Z-buffer clear, Link no menu, PreRender) ([06 §7](06-graficos.md#7-framebuffer-z-buffer-e-efeitos-que-leem-a-tela)).
- [ ] 🟡 S2DEX2 (`BG_COPY`/`BG_1CYC`) e JPEG para fundos pré-renderizados.
- [ ] 🟡 Inventário e correção de texturas escritas pela CPU ([05 §4.4](05-problemas-de-portabilidade.md#44-dados-escritos-pela-cpu-que-o-rdp-lê)).
- [ ] 🟢 `debug.dump_dl`: despejo textual de uma DL.
- [ ] 🟡 Infra de *golden images* ([10 §3.5](10-estrategia-de-testes.md)).

**Critério de saída:** logo N64/Nintendo, tela de título, seleção de arquivo e Kokiri Forest renderizam corretamente
(comparação lado a lado com emulador, documentada com capturas no PR).

---

## M4 — Jogável (sem som)

- [ ] 🟡 Input SDL3 → `OSContPad` com mapeamento e conversão de analógico ([08 §1](08-plataforma.md#1-input)).
- [ ] 🟡 `FramePacer` 20 Hz/60 Hz virtual ([04 §5](04-arquitetura-do-port.md#5-o-loop-de-frame)).
- [ ] 🟡 SRAM em arquivo com escrita atômica ([08 §2](08-plataforma.md#2-save-sram)).
- [ ] 🟢 Rumble.
- [ ] 🟡 Gravação/reprodução de input (`--record`/`--replay`) — base dos testes de *replay* ([10 §3.6](10-estrategia-de-testes.md)).

**Critério de saída:** criar arquivo, andar em Kokiri, pegar a Kokiri Sword, entrar na Deku Tree, salvar, fechar,
reabrir e carregar o save. Um *replay* desse trajeto roda no CI local sem divergência.

---

## M5 — Áudio

Seguir os passos de [07 §7](07-audio.md#7-plano-de-implementação).

**Critério de saída:** música e efeitos da tela de título e de Kokiri soam corretos (comparação com emulador);
zero *underruns* em 10 minutos de jogo em build Release; testes unitários de todos os comandos `Acmd` usados.

---

## M6 — Completude

- [ ] 🟡 Percorrer **todas as cenas** via MapSelect (script de *replay* automatizado) sem crash; registrar defeitos.
- [ ] 🟡 Menu de pausa completo (itens, mapa, equipamento com Link renderizado, quest status).
- [ ] 🟡 Cutscenes principais; transições; efeitos de tela (lente da verdade, tempestade, sub-aquático).
- [ ] 🔴 Bugs de precisão do RDP (fog, decals, *coverage*, *alpha compare*).
- [ ] 🟡 Perfil de desempenho (Instruments) e correções.
- [ ] 🟢 `.app` empacotado, ícone, `Info.plist`, assinatura *ad hoc* ([08 §4](08-plataforma.md#4-empacotamento-app)).
- [ ] 🟢 Zerar avisos de ponteiro/inteiro (`-Wshorten-64-to-32` etc.).

**Critério de saída:** todas as cenas carregam; um *playthrough* manual até o primeiro boss sem defeitos bloqueantes.

---

## M7 — Estabilização e versão retail

- [ ] 🟡 Trocar para a versão retail escolhida ([01 §7](01-visao-geral.md#7-qual-versão-do-jogo-portar)) e repetir os critérios de M3–M6.
- [ ] 🟡 Suíte de *replays* cobrindo um *playthrough* completo (pode ser montada aos poucos por segmentos).
- [ ] 🟢 Documentação de usuário: como compilar e jogar (`docs/port-macos/USUARIO.md`).

**Critério de saída:** *playthrough* completo em uma versão retail; suíte de *replays* verde.

---

## Depois de M7 (não planejado em detalhe)

- Áudio em thread própria ([ADR-0003](adr/0003-modelo-de-threads.md) fase 2).
- Resolução interna alta, widescreen, interpolação para 60/120 FPS.
- Arquivo de recursos separado do executável ([ADR-0004](adr/0004-assets-e-segmentos.md), alternativa B).
- Outras plataformas.

## Riscos principais

| Risco | Impacto | Mitigação |
|-------|---------|-----------|
| Volume de casts/endianness maior que o estimado | Atraso em M1–M3 | Avisos do clang + ASan/UBSan + inventário incremental |
| Fidelidade do RDP (efeitos visuais) | Bugs visuais longos em M6 | *Golden images* desde M3; priorizar por cena |
| Corridas ao introduzir threads | Bugs intermitentes | Fase 1 com thread única ([ADR-0003](adr/0003-modelo-de-threads.md)) |
| Quebrar o build *matching* | Perder sincronia com o upstream | Job de CI + regra de `#if TARGET_NATIVE` ([11](11-convencoes.md)) |
| Divergência com o upstream (`zeldaret/oot`) | Conflitos de merge | Mudanças pequenas e localizadas em `src/`; *rebase* frequente |
