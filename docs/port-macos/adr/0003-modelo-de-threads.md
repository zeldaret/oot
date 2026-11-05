# ADR-0003 — Modelo de threads

- **Status:** Proposta
- **Data:** 2026-11-01

## Contexto

O jogo cria 9 threads libultra ([03 §3](../03-arquitetura-oot-atual.md#3-threads-e-comunicação)) que rodam num
**único núcleo com prioridade estrita**: uma thread de prioridade maior roda até bloquear; uma de prioridade menor
nunca a interrompe. O código usa isso como sincronização implícita — por exemplo, o estado global de áudio
`gAudioCtx` é lido/escrito pela AudioMgr (prioridade 12) e indiretamente pela Graph (11) sem locks.

No macOS, threads rodam **em paralelo** em vários núcleos e o escalonador não respeita prioridades da mesma forma.
Além disso, a janela e os eventos devem ser tratados na thread principal do processo.

## Decisão

**Fase 1 (até M7):** uma única thread de jogo — a thread principal — executa, em ordem determinística, tudo o que
as threads originais faziam ([04 §4](../04-arquitetura-do-port.md#4-modelo-de-threads)):

1. eventos de plataforma;
2. 3 "retraces" virtuais, cada um rodando a atualização de áudio do AudioMgr;
3. leitura de input (PadMgr);
4. `Graph_Update` (lógica + display lists), com a tarefa gráfica executada de forma síncrona;
5. apresentação.

A única outra thread é a de áudio **do sistema**, que só consome um ring buffer de PCM.

O shim de `OSMesgQueue` mantém a semântica original; bloquear numa fila vazia em modo de thread única é tratado
como erro de integração (aborta com diagnóstico) em vez de travar.

**Fase 2 (opcional, pós-M7):** mover a síntese de áudio para thread própria, protegendo `AudioThread_Update` e os
pontos onde o jogo enfileira comandos de áudio com um mutex, **somente** depois de existir a suíte de *replays*.

## Alternativas consideradas

| Alternativa | Prós | Contras |
|-------------|------|---------|
| Uma `pthread` por `OSThread`, com filas sobre mutex/condvar | Menos mudanças no código do jogo | Corridas em dados que o original protegia por prioridade; bugs intermitentes difíceis; não determinístico |
| *Green threads* / corrotinas emulando o escalonador do N64 (troca de contexto com `ucontext`/assembly) | Fidelidade máxima ao escalonamento | `ucontext` é obsoleto no macOS; troca de contexto manual em arm64 é difícil e frágil; difícil para júnior |
| **Thread única + áudio do sistema só consumindo** | Determinístico, sem corridas, simples de testar e depurar | Exige reescrever a orquestração (`Graph_ThreadEntry`, AudioMgr, PadMgr) em funções chamadas pelo loop; *hitch* no frame pode causar *underrun* de áudio |

## Consequências

- (+) *Replays* determinísticos são possíveis desde o M4.
- (+) Sem TSan no código do jogo; TSan só no ring buffer.
- (−) Mudanças com `#if TARGET_NATIVE` em `graph.c`, `audio_thread_manager.c`, `padmgr.c`, `main.c`, `idle.c`.
- (−) Se um frame demorar mais que o buffer de áudio, há *underrun* (mitigado com buffer de ~50–100 ms e, no futuro, Fase 2).
