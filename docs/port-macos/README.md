# Port nativo macOS — Documentação técnica e de arquitetura

> **Status:** planejamento (nenhum código do port foi escrito ainda).
> **Branch de trabalho:** `feat/macOS-native-port`
> **Público-alvo:** engenheiros do projeto, inclusive desenvolvedores júnior em C/C++ e programação low-level.

Esta pasta é a **fonte canônica** de como o port nativo de *The Legend of Zelda: Ocarina of Time* para macOS
será construído. Ela complementa (não substitui) a documentação do projeto de decompilação em [`docs/`](../) e o
[`README.md`](../../README.md) da raiz, que continuam sendo a referência para o build *matching* (ROM N64).

Se algo aqui contradizer o código, **o código vence** — abra um PR corrigindo o documento.

---

## Como ler esta documentação

Os documentos são numerados na ordem em que devem ser lidos por quem está chegando agora.

| #  | Documento | Para quê |
|----|-----------|----------|
| 00 | [Guia de estudo para júnior](00-guia-de-estudo.md) | Trilha de aprendizado: o que estudar antes de cada fase, exercícios práticos |
| 01 | [Visão geral do port](01-visao-geral.md) | O que é (e o que não é) este port, objetivos, não-objetivos, restrições legais |
| 02 | [Fundamentos do Nintendo 64](02-fundamentos-n64.md) | Hardware que o código original assume: CPU MIPS, RCP, memória, DMA, display lists |
| 03 | [Arquitetura atual do jogo](03-arquitetura-oot-atual.md) | Como o código de `src/` funciona hoje: threads, game states, overlays, segmentos, arenas |
| 04 | [Arquitetura do port](04-arquitetura-do-port.md) | Arquitetura-alvo: camadas, módulos, modelo de threads, loop de frame, build |
| 05 | [Problemas de portabilidade](05-problemas-de-portabilidade.md) | Catálogo de tudo que quebra ao compilar para 64-bit little-endian, com exemplos reais |
| 06 | [Subsistema de gráficos](06-graficos.md) | Interpretador de display lists (GBI → Metal) |
| 07 | [Subsistema de áudio](07-audio.md) | Emulação de alto nível do microcode de áudio + saída CoreAudio |
| 08 | [Plataforma: input, save, arquivos, empacotamento](08-plataforma.md) | Controles, rumble, SRAM, diretórios, `.app`, assinatura |
| 09 | [Plano de implementação](09-plano-de-implementacao.md) | Marcos (milestones), tarefas e critérios de saída de cada fase |
| 10 | [Estratégia de testes](10-estrategia-de-testes.md) | O que cada camada de teste precisa cobrir e como |
| 11 | [Convenções e fluxo de trabalho](11-convencoes.md) | Regras de código, `#if`, commits, PRs, como não quebrar o build *matching* |
| —  | [Glossário](glossario.md) | Termos de N64, decomp e low-level usados nestes documentos |
| —  | [ADRs](adr/) | Registros de decisões de arquitetura (o *porquê* de cada escolha grande) |

### Se você só tem 30 minutos

1. [01 — Visão geral](01-visao-geral.md)
2. O diagrama de camadas em [04 — Arquitetura do port](04-arquitetura-do-port.md#2-visão-em-camadas)
3. A tabela-resumo em [05 — Problemas de portabilidade](05-problemas-de-portabilidade.md#resumo)

---

## Decisões de arquitetura (ADRs)

| ADR | Decisão | Status |
|-----|---------|--------|
| [0001](adr/0001-estrategia-source-port.md) | Port de código-fonte (compilar `src/` nativamente) em vez de emulação ou recompilação estática | Proposta |
| [0002](adr/0002-sdl3-e-metal.md) | SDL3 para janela/input/áudio, Metal para renderização | Proposta |
| [0003](adr/0003-modelo-de-threads.md) | Colapsar as threads do libultra em um loop principal + thread de áudio | Proposta |
| [0004](adr/0004-assets-e-segmentos.md) | Assets compilados no binário (fase 1) e tradução de endereços segmentados | Proposta |
| [0005](adr/0005-build-cmake-separado.md) | Build nativo em CMake, separado do Makefile *matching* | Proposta |
| [0006](adr/0006-tipos-e-ponteiros-64bit.md) | Tipos de largura fixa e `Gfx` alargado para ponteiros de 64 bits | Proposta |

Uma ADR muda de **Proposta** para **Aceita** quando o time revisa e aprova o PR que a altera.

---

## Fontes canônicas usadas

- `CLAUDE.md` (arquivo local, ignorado pelo git) — escopo do projeto: port nativo de OoT para executável macOS a partir desta decompilação.
- [`README.md`](../../README.md) — versões suportadas, `make setup`, build matching.
- [`docs/BUILDING_MACOS.md`](../BUILDING_MACOS.md) — dependências Homebrew e toolchain MIPS no macOS.
- [`docs/compilers.md`](../compilers.md) — IDO 5.3/7.1 e EGCS.
- [`docs/libu64.md`](../libu64.md) — organização de `src/libu64`.
- [`docs/includes.md`](../includes.md) — estilo de `#include` e includes condicionais.
- [`docs/Documenting.md`](../Documenting.md) — estilo Doxygen.
- [`docs/retail_versions.md`](../retail_versions.md) — versões retail e `#if PLATFORM_*`.
- [`docs/assets/`](../assets/) e [`docs/audio/`](../audio/) — extração e formato de assets/áudio.
