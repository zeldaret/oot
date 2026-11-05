# ADR-0005 — Build nativo em CMake, separado do Makefile

- **Status:** Proposta
- **Data:** 2026-11-01

## Contexto

O [`Makefile`](../../../Makefile) atual é especializado em produzir a ROM *matching*: compiladores IDO/EGCS
recompilados, `spec` → linker script, ferramentas de assets, checksum. Ele também já orquestra a extração e geração
de assets (ferramentas host em `tools/`). O build nativo tem necessidades diferentes: clang/Apple, Objective-C++,
SDL3, GoogleTest, *sanitizers*, `.app` bundle, integração com IDEs.

## Decisão

- **CMake + Ninja** em `port/CMakeLists.txt` para o executável nativo e os testes.
- O **Makefile continua dono dos assets**: um alvo novo `make native-assets VERSION=<v>` gera apenas o que o
  build nativo consome (`build/<v>/assets/...`), sem compilar MIPS.
- A lista de fontes do jogo é **gerada a partir de `spec/`** (pré-processado para a versão escolhida), excluindo
  diretórios substituídos pelo port. Assim, arquivos novos que o upstream adicionar aparecem automaticamente.
- O CMake exporta `compile_commands.json` para o clangd.

## Alternativas consideradas

| Alternativa | Prós | Contras |
|-------------|------|---------|
| Estender o Makefile atual com alvos nativos | Um só sistema de build | Makefile já é complexo; misturar risco de quebrar o *matching*; sem suporte nativo a bundles, testes, IDE |
| Xcode project | Integração total com Xcode | Arquivo de projeto gigante e difícil de revisar em PR; ruim para CI e para outros editores |
| **CMake separado** | Ferramenta padrão, CTest, *presets*, gera projeto Xcode se alguém quiser (`-G Xcode`) | Dois sistemas de build para manter |

## Consequências

- (+) O build *matching* fica intocado.
- (+) `cmake --preset debug|asan|release` simples para júnior.
- (−) Precisamos de um script que transforma `spec/` em lista de fontes, e mantê-lo quando o formato do `spec` mudar.
- (−) Dependência de ordem: `make setup` e `make native-assets` antes do CMake (documentar em mensagem de erro clara
  se `extracted/<v>` não existir).
