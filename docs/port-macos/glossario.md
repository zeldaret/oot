# Glossário

| Termo | Significado |
|-------|-------------|
| **ABI** | *Application Binary Interface*: regras de tamanho de tipos, alinhamento, passagem de argumentos. N64 usa MIPS O32 (ILP32); macOS usa LP64 (arm64/x86_64) |
| **Acmd** | Comando de áudio para o microcode `aspMain` (`include/ultra64/abi.h`) |
| **ADPCM / VADPCM** | Compressão de áudio usada nas amostras do N64 (*vector* ADPCM com *codebook*) |
| **AI** | *Audio Interface*: toca PCM da RAM |
| **Arena** | Região de memória fixa gerenciada pelo próprio jogo (`SystemArena`, `ZeldaArena`...) |
| **ASan / UBSan / TSan** | *Sanitizers* do clang: erros de memória / comportamento indefinido / corridas entre threads |
| **Big-endian / little-endian** | Ordem dos bytes de um inteiro na memória: maior primeiro (N64) / menor primeiro (Mac) |
| **BSS** | Seção de variáveis globais zeradas na inicialização |
| **Combiner (color combiner)** | Estágio do RDP que calcula a cor do pixel: `(A − B) × C + D` |
| **Decomp / matching** | Código C que recompila para bytes idênticos ao original |
| **DL / display list** | Lista de comandos `Gfx` para o RSP/RDP |
| **DMA** | Cópia de memória feita por hardware (ROM → RAM no N64) |
| **DMEM / IMEM** | Memórias locais do RSP (dados / instruções), 4 KB cada |
| **F3DZEX2** | Microcode gráfico 3D usado pelo OoT |
| **Fast3D** | Nome informal de interpretadores HLE de display lists em ports |
| **GBI** | *Graphics Binary Interface*: formato dos comandos `Gfx` (`include/ultra64/gbi.h`) |
| **Game state** | Estado de alto nível do jogo (`Play`, `FileSelect`...) |
| **Golden test** | Teste que compara a saída com uma referência aceita (imagem, áudio) |
| **HLE / LLE** | *High/Low-Level Emulation*: emular o efeito dos comandos vs emular o hardware instrução por instrução |
| **IDO** | Compilador C da SGI usado originalmente |
| **ILP32 / LP64** | Modelos de dados: int/long/pointer de 32 bits / long e pointer de 64 bits |
| **K0 / KSEG0** | Faixa `0x80000000+` de endereços virtuais do MIPS mapeada diretamente na RAM |
| **libultra** | SDK/OS da Nintendo linkado no jogo (`src/libultra`) |
| **Microcode (ucode)** | Programa carregado no RSP |
| **Mtx** | Matriz 4×4 em ponto fixo s15.16 usada pela GBI |
| **NMI / PreNMI** | Sinal de reset do console |
| **Object (`object_*`)** | Arquivo de assets (modelos, texturas, animações) carregado por cena |
| **Overlay** | Código relocável carregado sob demanda (atores, game states) |
| **`__PAGEZERO`** | Região de 4 GB sem acesso no início do espaço de endereços de processos 64-bit no macOS |
| **PI / SI / VI** | *Peripheral / Serial / Video Interface* do N64 |
| **RCP / RSP / RDP** | *Reality Co-Processor* / seu processador de sinais / seu rasterizador |
| **Relocação** | Corrigir endereços absolutos de um código carregado em endereço diferente do compilado |
| **Replay** | Gravação de input usada para reproduzir uma sessão de jogo de forma determinística |
| **Retrace (VBlank)** | Momento em que o vídeo termina um quadro; base de tempo do N64 (60/50 Hz) |
| **ROM virtual** | No port: abstração que entrega "arquivos da ROM" para o código que fazia DMA |
| **Segmento / endereço segmentado** | Endereço `0xSSOOOOOO` resolvido por tabela (`gSegments`) |
| **Shim** | Camada fina que imita uma API antiga sobre uma implementação nova |
| **SPSC** | *Single Producer, Single Consumer* — fila com um produtor e um consumidor |
| **SRAM** | Memória de save do cartucho (32 KB) |
| **TMEM** | Memória de texturas do RDP (4 KB) |
| **UB** | *Undefined behavior*: comportamento indefinido pela linguagem C |
| **Yaz0** | Formato de compressão dos arquivos na ROM |
