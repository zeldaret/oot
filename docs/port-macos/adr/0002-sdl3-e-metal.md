# ADR-0002 — SDL3 para plataforma, Metal para renderização

- **Status:** Proposta
- **Data:** 2026-11-01

## Contexto

Precisamos de: janela, eventos, teclado, gamepads (com rumble), saída de áudio e uma API de GPU no macOS.
O OpenGL está obsoleto no macOS (congelado em 4.1, sem melhorias). A API nativa de GPU é o Metal.

## Decisão

- **SDL3** para janela, eventos, input (Gamepad API), rumble, saída de áudio (audio streams) e caminhos de
  diretório (`SDL_GetPrefPath`).
- **Metal** para renderização, acessado por uma interface `IRenderer` ([04 §7](../04-arquitetura-do-port.md#7-interfaces-principais-esboço)).
  Implementação em Objective-C++ (`.mm`) ou via `metal-cpp` (headers C++ oficiais da Apple) — escolher no M3 pelo
  que o time achar mais legível.
- Shaders do combiner gerados como texto MSL e compilados em tempo de execução.

## Alternativas consideradas

| Alternativa | Prós | Contras |
|-------------|------|---------|
| Cocoa + GameController + CoreAudio direto | Zero dependências | Muito código de plataforma; mais difícil para júnior; nada reaproveitável em outros SOs |
| SDL2 | Maduro, muito material | API de gamepad/áudio inferior à SDL3; SDL3 é a linha atual |
| **SDL3 + Metal** | Pouca plataforma escrita à mão; Metal é o caminho suportado no macOS | Duas dependências; Metal é só Apple |
| SDL3 GPU API (abstração sobre Metal/Vulkan/D3D12) | Portável para outros SOs | Camada extra para depurar; aceita MSL no macOS, então migrar depois é viável se precisarmos |
| OpenGL | Muito material didático | Obsoleto no macOS; *drivers* com bugs não corrigidos |
| Vulkan via MoltenVK | Portável | Camada de tradução extra; complexidade alta para júnior |

## Consequências

- (+) Input e áudio quase prontos; foco do time no interpretador GBI e no Acmd.
- (+) `IRenderer` permite trocar o backend (ex.: SDL GPU) sem mexer no interpretador.
- (−) Dependência externa: fixar versão da SDL3 no CMake (`FetchContent` com *tag* exata).
- (−) Metal Frame Capture exige Xcode instalado para depuração de renderização.
