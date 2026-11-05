# ADR-0004 — Assets e endereços segmentados

- **Status:** Proposta
- **Data:** 2026-11-01

## Contexto

No N64, assets (cenas, salas, objetos) ficam na ROM, comprimidos com Yaz0, e são copiados por DMA para a RAM quando
necessário. Os objetos são linkados no endereço `0x06000000` e acessados por **endereços segmentados**
([02 §4](../02-fundamentos-n64.md#4-endereços-segmentados)). O código usa `SEGMENTED_TO_VIRTUAL` ~675 vezes, e
display lists dentro dos assets contêm endereços segmentados (ex.: `0x08000000` para texturas trocadas em tempo real).

O `make setup` deste repositório **já extrai os assets como C** (`extracted/<v>/assets/...`, ver
[`docs/assets/extraction.md`](../../assets/extraction.md)) e o build gera os `.inc.c` de texturas a partir dos PNG
([`docs/assets/images.md`](../../assets/images.md)).

Os dados estruturados (skeletons, cabeçalhos de cena, colisão) contêm **ponteiros**. Lidos como binário da ROM, eles
têm 32 bits, são big-endian e o layout das structs não bate com o de 64 bits.

## Decisão

**Fase 1: compilar os assets extraídos como C nativo, dentro do executável**, e:

1. **`SEGMENTED_TO_VIRTUAL` nativo** que distingue ponteiro nativo de endereço segmentado usando o `__PAGEZERO` de
   4 GB do macOS: valor ≥ 2³² é ponteiro nativo (devolvido como está); valor < 2³² é segmentado e resolvido pela
   tabela ([05 §5](../05-problemas-de-portabilidade.md#5-endereços-segmentados)).
2. **"ROM virtual"**: uma tabela que associa cada `RomFile` (`vromStart/vromEnd` em `gDmaDataTable`,
   [`include/dma.h`](../../../include/dma.h)) ao símbolo C correspondente e ao tamanho. `DmaMgr_Request*` copia do
   símbolo para o destino quando o jogo realmente precisa dos bytes (ex.: arquivos binários como texto e áudio), ou
   o carregamento de objeto/cena é desviado para apontar o slot diretamente para o símbolo compilado.
3. Texturas geradas como bytes na ordem do N64 ([05 §4.1](../05-problemas-de-portabilidade.md#41-texturas-compiladas-como-u64)).

Detalhe a decidir no M2 (com base em medições): para objetos e cenas, **copiar** os dados compilados para o espaço
de objetos (preserva orçamentos e o comportamento de "recarregar") ou **apontar** o slot para o símbolo
(mais simples, sem cópia). Começar com **apontar**; voltar a copiar se algum ator depender de modificar os dados
carregados (há atores que alteram dados de objeto em RAM — auditar).

## Alternativas consideradas

| Alternativa | Prós | Contras |
|-------------|------|---------|
| **A. Assets como C nativo no executável** | Reaproveita o pipeline existente; ponteiros nativos corretos pelo compilador; endianness resolvida pelo compilador para structs | Executável contém assets → não distribuível; tamanho do binário maior; lógica de "carregar da ROM" vira ficção |
| B. Ler a ROM em tempo de execução e converter cada recurso para structs nativas ("resource manager") | Executável distribuível sem assets; o usuário aponta para a própria ROM | Exige um conversor por tipo de recurso (dezenas de tipos), espelhando o extrator Python em C++; trabalho grande |
| C. Ler a ROM em tempo de execução **sem** converter, mantendo endereços de 32 bits e big-endian e traduzindo em cada acesso | Pouco código novo de assets | Toda leitura de struct de asset no jogo teria de ser trocada por acessores; inviável em ~431 mil linhas |

## Consequências

- (+) Chegamos à primeira imagem muito mais cedo (M3).
- (+) Erros de ponteiro em assets aparecem como erro de compilação, não em tempo de execução.
- (−) **O executável não pode ser distribuído** ([01 §6](../01-visao-geral.md#6-restrições-legais-e-de-distribuição)).
- (−) O build nativo depende de `make setup` + geração de assets (`make native-assets`).
- (−) Garantia do `__PAGEZERO` vira premissa: não linkar com `-pagezero_size` reduzido; teste automatizado confirma.
- Caminho futuro: a alternativa B pode substituir A sem mudar o código do jogo, desde que a ROM virtual e o
  `SEGMENTED_TO_VIRTUAL` nativo sejam as únicas portas de entrada.
