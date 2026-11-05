# 01 — Visão geral do port

## 1. O ponto de partida

Este repositório é uma **decompilação**: código C escrito à mão que, compilado com os compiladores originais
(IDO 5.3/7.1, EGCS para iQue), gera uma ROM **byte a byte idêntica** à original. O próprio
[`README.md`](../../README.md) avisa: *"It is not producing a PC port."*

Hoje o build produz `build/<versão>/oot-<versão>.z64`, um arquivo que só roda em um Nintendo 64 (ou emulador).

## 2. O que queremos

Um **executável nativo de macOS** (`.app`) que roda o jogo diretamente na CPU do Mac (Apple Silicon `arm64`,
e opcionalmente Intel `x86_64`), sem emulador, usando:

- o **código C do jogo** que já está em `src/` (lógica, atores, câmera, colisão, menus, áudio de alto nível);
- uma **camada de plataforma nova** que substitui o hardware do N64 (vídeo, áudio, controle, cartucho, threads);
- os **assets extraídos da ROM do próprio usuário** (texturas, modelos, sons, textos).

## 3. Os três jeitos de rodar um jogo de N64 num PC — e por que escolhemos um

| Abordagem | Como funciona | Prós | Contras |
|-----------|---------------|------|---------|
| **Emulação** (ex.: emuladores tradicionais) | Um programa imita a CPU MIPS instrução por instrução e o RCP | Funciona com qualquer ROM | Não usa a decomp; custo alto de CPU; não é "nativo" |
| **Recompilação estática** | Uma ferramenta traduz o binário MIPS da ROM para C/LLVM automaticamente | Não depende de a decomp estar completa | O código gerado é ilegível; não aproveita nomes, structs nem documentação |
| **Port de código-fonte** (*source port*) | Compilamos o C da decomp com o clang do macOS e trocamos a camada de hardware | Código legível, depurável, modificável; desempenho nativo | Exige corrigir tudo que assume 32-bit/big-endian/MIPS; exige reimplementar o RCP |

**Escolha: port de código-fonte.** Justificativa completa em [ADR-0001](adr/0001-estrategia-source-port.md).
Resumo: esta decomp já é *matching* e muito documentada; o valor dela está justamente em ter código legível.

## 4. Objetivos

1. **G1 — Jogável do início ao fim** em macOS 14+ (Apple Silicon), com áudio, controles e save.
2. **G2 — Fidelidade:** a lógica do jogo deve se comportar como no N64 (mesma física, mesmos *glitches*
   documentados). Divergências precisam ser intencionais e documentadas.
3. **G3 — Não quebrar a decomp:** `make VERSION=<v>` deve continuar gerando a ROM idêntica (`OK` no md5).
   Toda alteração em `src/` e `include/` precisa ser neutra para o build *matching*.
4. **G4 — Código estudável:** a camada de plataforma deve ser pequena, testada e documentada.
5. **G5 — Testável sem ROM** para a maior parte das camadas (testes unitários com dados sintéticos).

## 5. Não-objetivos (por enquanto)

- Distribuir binários com assets embutidos (ver §6).
- Suporte a Windows/Linux (a arquitetura não deve impedir, mas não é meta).
- Melhorias gráficas (60 FPS interpolado, widescreen, texturas HD). Ficam para depois do marco M7
  ([09 — Plano](09-plano-de-implementacao.md)) e devem ser opcionais.
- Suporte a N64DD (`src/n64dd`, `src/libleo`) e a recursos do iQue Player (`src/libultra/bb`).
- Multiplayer, mods, randomizer.

## 6. Restrições legais e de distribuição

- O repositório **não contém** assets do jogo (ver [`README.md`](../../README.md)): eles são extraídos da ROM do usuário
  em `make setup`. O port mantém essa regra.
- Na fase 1 os assets são compilados para dentro do executável ([ADR-0004](adr/0004-assets-e-segmentos.md)).
  Portanto **o executável gerado contém material protegido e não pode ser distribuído** — cada pessoa compila
  o seu a partir da própria ROM.
- Uma fase posterior pode separar os assets num arquivo de recursos gerado localmente, permitindo distribuir só
  o executável. Isso é decisão futura.

## 7. Qual versão do jogo portar

O Makefile suporta 16 versões (`VERSION=`). O port compila **uma versão por vez**, usando as mesmas macros
(`OOT_VERSION`, `PLATFORM_N64/GC/IQUE`, `DEBUG_FEATURES`) que o build matching.

| Fase | Versão | Motivo |
|------|--------|--------|
| Desenvolvimento (M0–M5) | `gc-eu-mq-dbg` (padrão do Makefile) | Tem `DEBUG_FEATURES=1`: seleção de mapa, câmera de debug, editor de registradores, `PRINTF` de log. É a versão mais documentada. |
| Produto (M6+) | `ntsc-1.0` **ou** `gc-us` | Versões retail. Decidir quando chegarmos lá; a camada de plataforma não depende disso. |

> **Atenção:** `PLATFORM_GC` aqui significa *"o código da versão GameCube do jogo"* (que era uma ROM de N64
> rodando num emulador oficial), **não** que estamos portando para GameCube. Para o port, criamos um eixo
> separado de macros — ver [11 — Convenções](11-convencoes.md#2-macros-de-compilação).

## 8. Escala do trabalho (números reais deste repositório)

| Item | Quantidade |
|------|------------|
| Arquivos `.c` em `src/` | ~957 |
| Linhas de C em `src/` | ~431 mil |
| Overlays em `src/overlays/` (atores, efeitos, game states, misc) | ~476 |
| Arquivos assembly `.s` em `src/` | 43 |
| Usos de `SEGMENTED_TO_VIRTUAL` | ~675 |
| Pontos com `#pragma increment_block_number` (só servem ao IDO) | ~61 |

A boa notícia: **a imensa maioria dos ~431 mil linhas não precisa mudar**. O trabalho se concentra em:
`include/ultra64/` (tipos, GBI), `src/libultra/` (substituído), `src/boot/`, `src/code/` de sistema
(`main.c`, `graph.c`, `sched.c`, `irqmgr.c`, `padmgr.c`, `z_std_dma.c`, `z_DLF.c`...), `src/libu64/` (overlays),
`src/audio/internal/` (interface com o RSP) e algumas dezenas de pontos espalhados com casts de ponteiro e
dependência de *endianness* ([05](05-problemas-de-portabilidade.md)).
