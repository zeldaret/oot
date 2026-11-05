# 11 — Convenções e fluxo de trabalho

## 1. A regra número um

> **Nenhuma mudança pode alterar a ROM gerada por `make VERSION=<v>`.**

Antes de abrir um PR que toca `src/` ou `include/`, rode o build *matching* da versão padrão e confira `OK`. Se
a mudança afeta código específico de versão (`#if OOT_VERSION ...`, `#if PLATFORM_N64`), confira também uma
versão N64 e uma GC.

## 2. Macros de compilação

O projeto já usa macros para **qual versão do jogo** está sendo compilada. O port adiciona um eixo independente:
**para qual alvo** estamos compilando.

| Macro | Já existe? | Significado |
|-------|-----------|-------------|
| `OOT_VERSION`, `OOT_REVISION`, `OOT_REGION` | sim | Versão do jogo |
| `PLATFORM_N64` / `PLATFORM_GC` / `PLATFORM_IQUE` | sim | **Variante do jogo** (código da versão N64, GC ou iQue) — não é o alvo de compilação |
| `DEBUG_FEATURES` | sim | Recursos de debug da versão |
| `NON_MATCHING`, `AVOID_UB` | sim | Código correto em vez de código que só dá match |
| `COMPILER_GCC` | sim | Build com GCC (MIPS) |
| **`TARGET_NATIVE`** | **novo** | `1` quando compilando o executável nativo; `0` (padrão) no build da ROM |
| **`TARGET_MACOS`** | **novo** | `1` no executável macOS (para o dia em que houver outro alvo nativo) |

`TARGET_NATIVE` é definido com valor padrão em um header pequeno (`include/target.h`, incluído por `ultra64.h`):

```c
#ifndef TARGET_NATIVE
#define TARGET_NATIVE 0
#endif
```

Assim `#if TARGET_NATIVE` funciona nos dois builds, no mesmo estilo dos `#if PLATFORM_N64` já existentes.

## 3. Como alterar código do jogo

Em ordem de preferência:

1. **Correção que serve aos dois alvos e continua dando match.** Ex.: trocar `(u32)ptr` por `(uintptr_t)ptr`
   (no N64 `uintptr_t` é `u32`). Sem `#if`. Confirme o match.
2. **Correção sob `NON_MATCHING`/`AVOID_UB`** quando o problema é UB que o projeto já reconhece como tal.
3. **`#if TARGET_NATIVE`** quando o comportamento precisa ser diferente no port:

```c
#if TARGET_NATIVE
    // port: o código é linkado estaticamente; não há overlay para relocar.
    // Ver docs/port-macos/05-problemas-de-portabilidade.md §3
    return 0;
#else
    ... código original intocado ...
#endif
```

4. **Substituir o arquivo inteiro** no port (não compilar o original, implementar em `port/src/`) — para arquivos
   que são essencialmente drivers de hardware (`sched.c`, `irqmgr.c`, `src/libultra/*`).

Regras:
- Todo `#if TARGET_NATIVE` tem um comentário `// port:` com o motivo e a seção do documento.
- **Nunca** apague ou "limpe" o ramo original.
- Minimize o tamanho dos blocos `#if` (mesma filosofia de [`docs/retail_versions.md`](../retail_versions.md)).
- Includes condicionais seguem [`docs/includes.md`](../includes.md#conditional-includes).
- Comentários de documentação seguem [`docs/Documenting.md`](../Documenting.md) (Doxygen). Divergências de
  comportamento introduzidas pelo port usam `//! @note port: ...`.

## 4. Código novo em `port/`

| Aspecto | Regra |
|---------|-------|
| Linguagem | C11 para o que o jogo chama diretamente (opcional), C++17 para o resto; Objective-C++ (`.mm`) só onde a API exige (Metal/Cocoa) |
| Fronteira C/C++ | Funções chamadas pelo jogo: `extern "C"`, sem exceções atravessando, sem tipos C++ na assinatura |
| Nomes | Tipos e funções `PascalCase`; variáveis e campos `camelCase`; membros privados com sufixo `_`; constantes `kPascalCase`; namespaces `port::gfx`, `port::audio`, ... |
| Arquivos | `snake_case.cpp/.h`; um módulo por par `.h/.cpp` |
| Memória | RAII; `std::unique_ptr`/`std::vector`; sem `new`/`delete` crus; **nunca** alocar no *callback* de áudio |
| Erros | `PORT_ASSERT(cond, msg)` para invariantes (ativo em Debug e RelWithDebInfo); `PORT_UNIMPLEMENTED("nome")` para stubs; códigos de erro nas APIs C |
| Log | `PORT_LOG(level, ...)`; nada de `printf` solto |
| Formatação | `.clang-format` em `port/` (baseado no do projeto) |
| Comentários | Explicar o *porquê*, citando o comportamento do hardware/original quando for o motivo |
| Headers | `#pragma once` em `port/`; *include guards* no estilo do projeto em `include/` |

## 5. Commits e PRs

- Branch base: `feat/macOS-native-port`. Branches de tarefa: `port/<marco>-<assunto>` (ex.: `port/m2-mesg-queue`).
- Mensagem de commit: `port(<módulo>): <imperativo curto>` — ex.: `port(ultra): implement osJamMesg`,
  `port(gfx): decode G_SETTILE`. Mudanças em `src/`: `port(game): use uintptr_t in z_DLF overlay math`.
- Um PR = uma ideia. PRs que tocam `src/` devem ser **pequenos** (facilita *rebase* sobre o upstream).

Checklist de PR:

- [ ] `make VERSION=gc-eu-mq-dbg` → `OK` (se tocou `src/`/`include/`)
- [ ] `cmake --build build-native` sem erros, sem avisos novos
- [ ] `ctest -L unit` verde (e `-L rom` se relevante, rodado localmente)
- [ ] Testes novos para o comportamento novo ([10](10-estrategia-de-testes.md))
- [ ] Documentação em `docs/port-macos/` atualizada se a arquitetura ou uma decisão mudou
- [ ] Nenhum asset da ROM adicionado ao repositório

## 6. Sincronização com o upstream

Este repositório deriva de `zeldaret/oot` (o projeto de decompilação, que continua evoluindo: renomeações,
documentação, matching de versões retail). Fazer *rebase*/merge de `main` com frequência. Conflitos em `src/` são
esperados quando o upstream renomeia símbolos — por isso mudanças pequenas e localizadas.

## 7. Revisão de código

O revisor verifica, além do usual:
- o PR introduz algum cast ponteiro↔inteiro de 32 bits?
- reinterpreta memória (union, cast de ponteiro) que pode depender de endianness?
- cria estado compartilhado entre threads sem sincronização?
- o comportamento do jogo muda? se sim, está documentado e justificado?
