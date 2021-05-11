# ZAPD: Zelda Asset Processor for Decomp

## Compiling

### Dependencies

ZAPD needs a compiler with C++17 support.

ZAPD has the following library dependencies:

- `libpng`

In a Debian/Ubuntu based environment, those could be installed with the following command:

```bash
sudo apt install libpng-dev
```

### Building

#### Linux / *nix

ZAPD uses the clasic `Makefile` approach. To build just run `make` (or even better `make -j` for faster compilations).

You can configure a bit your ZAPD build with the following options:

- `OPTIMIZATION_ON`: If set to `0`, then optimizations will be disabled (compile with `-O0`). Any other value compiles with `-O2`. Defaults to `1`.
- `ASAN`: If it is set to a non-zero then ZAPD will be compiled with Address Sanitizer enabled (`-fsanitize=address`). Defaults to `0`.
- `DEPRECATION_OFF`: If it is set to a non-zero then deprecation warnings will be disabled. Defaults to `0`.

As an example, if you want to build ZAPD with optimizations disabled and use the address sanitizer, you could use the following command:

```bash
make -j OPTIMIZATION_ON=0 ASAN=1
```

#### Windows

This repository contains `vcxproj` files for compiling under Visual Studio environments. See `ZAPD/ZAPD.vcxproj`.
