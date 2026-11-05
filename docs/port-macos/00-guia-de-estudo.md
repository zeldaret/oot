# 00 — Guia de estudo para quem está começando

Este guia é para quem sabe programar mas ainda não tem experiência com C/C++ de baixo nível, hardware de console
ou ports. Ele diz **o que estudar, em que ordem, e como praticar no próprio código deste repositório**.

Não é preciso saber tudo antes de começar: cada marco do [plano](09-plano-de-implementacao.md) exige um
subconjunto. Estude o bloco do marco em que você vai trabalhar.

---

## Como estudar o código deste repositório

1. **Leia com um objetivo.** Ex.: "como um ator é criado?" → comece em `Actor_Spawn` ([`src/code/z_actor.c`](../../src/code/z_actor.c)).
2. **Use o editor para navegar** (ir para definição, achar referências). Configuração do clangd/VS Code em [`docs/vscode.md`](../vscode.md).
3. **Desenhe.** Fluxos de chamada e máquinas de estado em papel fixam mais que ler duas vezes.
4. **Gere a documentação Doxygen** (`doxygen Doxyfile`, ver [`docs/Documenting.md`](../Documenting.md)) para navegar no navegador.
5. **Anote dúvidas** e traga para a revisão: "não entendi por que X" é uma ótima pergunta num PR.

---

## Bloco 1 — C de verdade (pré-requisito para M0/M1)

**Tópicos**
- Ponteiros, aritmética de ponteiros, arrays vs ponteiros, ponteiros para função.
- `struct`, `union`, alinhamento e *padding*, `sizeof`, `offsetof`.
- Tipos inteiros: tamanhos, `stdint.h` (`int32_t`, `uintptr_t`), conversões implícitas, promoção de inteiros, com/sem sinal.
- Pré-processador: `#define`, macros com argumentos, `#if`, *X-macros* (ex.: [`include/tables/actor_table.h`](../../include/tables/actor_table.h) usado em [`src/code/z_actor_dlftbls.c`](../../src/code/z_actor_dlftbls.c)).
- Comportamento indefinido (UB): o que é, por que o compilador pode "quebrar" seu código.
- Compilação e linkagem: unidade de tradução, símbolos, `extern`, `static`, o que o linker faz.

**Exercícios**
1. Escreva um programa que imprime `sizeof` de `char`, `short`, `int`, `long`, `long long`, `void*` no seu Mac.
   Compare com a tabela de [05 §1](05-problemas-de-portabilidade.md#1-modelo-de-dados-long-tem-64-bits-no-macos). Por que `u32` quebra?
2. Declare `struct { u8 a; u32 b; u8 c; }` e imprima `sizeof` e `offsetof` de cada campo. Reordene para minimizar *padding*.
3. Leia [`src/code/z_actor_dlftbls.c`](../../src/code/z_actor_dlftbls.c) e rode só o pré-processador
   (`clang -E -I include ...`) para ver o que as X-macros geram.
4. Ache em [`src/code/z_DLF.c`](../../src/code/z_DLF.c) a linha que quebra em 64 bits e explique por escrito o motivo.

**Leitura**
- *The C Programming Language* (Kernighan & Ritchie).
- *Computer Systems: A Programmer's Perspective* (Bryant & O'Hallaron) — capítulos de representação de dados,
  linkagem e memória virtual. **O livro mais útil para este projeto.**
- Documentação do clang sobre *sanitizers* (AddressSanitizer, UndefinedBehaviorSanitizer).

---

## Bloco 2 — Representação de dados e endianness (M1/M2)

**Tópicos**
- Big-endian vs little-endian; como inspecionar bytes (`xxd`, `hexdump`, `memory read` no lldb).
- Reinterpretação de memória: unions, casts de ponteiro, *strict aliasing*, `memcpy` como forma segura.
- Ponto fixo (s15.16, Q15): como representar frações em inteiros.
- `float` em IEEE-754; por que `a*b+c` pode dar resultado diferente com FMA.

**Exercícios**
1. Imprima os bytes de `uint32_t x = 0x11223344` com um `uint8_t*`. Depois implemente `BE32(const void*)` e teste.
2. Explique por que `Color_RGBA8_u32` ([`include/color.h`](../../include/color.h)) dá cor errada em little-endian e
   escreva um teste que demonstre.
3. Converta à mão `1.5f` para s15.16 e para os campos `intPart`/`fracPart` de `Mtx`
   ([`include/ultra64/gbi.h`](../../include/ultra64/gbi.h)).

---

## Bloco 3 — Hardware do N64 e a arquitetura do jogo (M2)

**Tópicos**
- Leia [02 — Fundamentos](02-fundamentos-n64.md) e [03 — Arquitetura atual](03-arquitetura-oot-atual.md).
- Threads, prioridade, preempção; filas de mensagens como mecanismo de sincronização.
- Memória: heaps, arenas, fragmentação.

**Exercícios**
1. Leia `Graph_ThreadEntry` e `Graph_Update` ([`src/code/graph.c`](../../src/code/graph.c)) e desenhe o fluxo de um frame.
2. Liste todas as chamadas `osCreateThread` do repositório (`grep -rn osCreateThread src`) e preencha uma tabela
   thread → prioridade → quem manda mensagem para ela.
3. Leia [`src/libultra/os/recvmesg.c`](../../src/libultra/os/recvmesg.c) e [`sendmesg.c`](../../src/libultra/os/sendmesg.c) e escreva os
   testes da fila de mensagens de [10 §5](10-estrategia-de-testes.md#5-exemplo-para-júnior-testando-osmesgqueue) **antes** de implementar o shim.

---

## Bloco 4 — C++ moderno para a camada de plataforma (M2+)

**Tópicos**
- RAII, `std::unique_ptr`, `std::vector`, `std::array`, `std::span` (C++20) ou ponteiro+tamanho.
- Classes, interfaces (classe abstrata), `virtual`, por que destrutor virtual.
- `extern "C"` e a fronteira C/C++.
- Concorrência: `std::thread`, `std::mutex`, `std::condition_variable`, `std::atomic`, ordem de memória
  (*acquire/release*) — necessário para o ring buffer de áudio.
- CMake: alvos, `target_include_directories`, `target_compile_options`, `FetchContent`.

**Exercícios**
1. Implemente um ring buffer SPSC de `int16_t` com `std::atomic<size_t>` e teste com duas threads sob TSan.
2. Escreva um `CMakeLists.txt` que compila uma biblioteca C e um executável de teste em C++ que a usa.

**Leitura**
- *A Tour of C++* (Stroustrup) — visão geral rápida.
- *Effective Modern C++* (Meyers).
- *C++ Concurrency in Action* (Williams) — capítulos de atomics e modelo de memória.

---

## Bloco 5 — Gráficos (M3)

**Tópicos**
- Pipeline de rasterização: vértices → transformação → clipping → rasterização → fragmentos → blending → framebuffer.
- Matrizes de modelo/visão/projeção; coordenadas homogêneas.
- Texturas: formatos, paletas, filtragem, *wrap/clamp/mirror*.
- Shaders e pipelines no Metal; *command buffers*, *render passes*.
- O RDP: combiner, blender, *othermode*, TMEM ([06 — Gráficos](06-graficos.md)).

**Exercícios**
1. Pegue `gsSPVertex` em [`include/ultra64/gbi.h`](../../include/ultra64/gbi.h) e calcule à mão `w0`/`w1` para 4 vértices
   no índice 0. Compare com o que [`src/code/ucode_disas.c`](../../src/code/ucode_disas.c) imprimiria.
2. Implemente o decodificador RGBA16 (5551) → RGBA8 com teste.
3. Faça um programa Metal mínimo que desenha um triângulo colorido numa janela SDL3.
4. Escreva em CPU a fórmula do combiner `(A − B) × C + D` e teste com `G_CC_MODULATEIDECALA`.

**Leitura**
- Documentação oficial do Metal (Apple) e *Metal by Tutorials*.
- Wiki N64brew: seções sobre RDP e formatos de textura.

---

## Bloco 6 — Áudio digital (M5)

**Tópicos**
- PCM, taxa de amostragem, canais, *clipping*/saturação.
- Reamostragem e interpolação.
- ADPCM (ideia geral) e o VADPCM do N64.
- Latência, *buffering*, *underrun*.
- Por que o *callback* de áudio não pode bloquear.

**Exercícios**
1. Gere uma senoide de 440 Hz em PCM 16-bit a 32 kHz e toque via SDL3.
2. Implemente `aMix` (soma com ganho Q15 e saturação) com teste, seguindo [07](07-audio.md).

---

## Bloco 7 — Ferramentas de depuração no macOS

| Ferramenta | Para quê | Comece com |
|------------|----------|------------|
| `lldb` | Depurar | `b Actor_Spawn`, `bt`, `frame variable`, `memory read -s1 -c64 <addr>`, `watchpoint set variable x` |
| ASan/UBSan | Achar erros de memória e UB | build `ASan`; leia o relatório de baixo para cima |
| Instruments | Desempenho e memória | *Time Profiler*, *Allocations* |
| Metal Frame Capture (Xcode) | Depurar renderização | capturar um frame e inspecionar cada *draw call* |
| `nm`, `otool -tv`, `objdump` | Ver símbolos e assembly | `nm build-native/OoT | grep Actor_Spawn` |
| `hexdump -C`, `xxd` | Ver bytes de arquivos | comparar texturas/dados |

---

## Trilha sugerida por marco

| Marco | Blocos | Primeira tarefa recomendada (🟢) |
|-------|--------|-----------------------------------|
| M0 | 1, 7 | `endian.h` + testes |
| M1 | 1, 2 | `_Static_assert`s de tamanho; stubs `PORT_UNIMPLEMENTED` |
| M2 | 3, 4 | Testes de `OSMesgQueue` (antes da implementação) |
| M3 | 5 | Decodificadores de textura |
| M4 | 4 | Mapeamento de input + testes |
| M5 | 6 | Ring buffer + senoide; depois `aMix`/`aClearBuffer` |

## Quando estiver travado

- Releia a seção de [05 — Problemas de portabilidade](05-problemas-de-portabilidade.md) mais próxima do sintoma.
- Compare com o comportamento no emulador rodando a ROM *matching*.
- Rode com ASan/UBSan — muitas vezes o erro aparece no lugar certo.
- Faça a menor reprodução possível (um teste unitário) antes de pedir ajuda.
