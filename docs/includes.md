# Includes Style Guide

## Include what you use

We go by "include what you use", which basically means that for any symbol used by a .c file, the .h where that symbol is from must be included.

A tool exists to help with this: `apt install iwyu`.

This tool (and clangd) understands IWYU pragmas: we currently only make use of `IWYU pragma: export` and `IWYU pragma: begin_exports`/`IWYU pragma: end_exports`.

For further details see https://github.com/include-what-you-use/include-what-you-use

## Includes ordering

The include should be ordered like this and sorted alphabetically within each group:

- for overlays: the .h for the overlay
- libc (files from `include/libc`)
- `ultra64.h` if needed
- `libc64/*.h`
- `libu64/*.h`
- `versions.h` if needed
- remaining includes
- assets

There should be no empty line between groups, except:

- after an overlay .h include
- before assets includes
- in-between assets includes, as needed

## Square brackets vs quotes

Use square brackets for libc includes (files from `include/libc`), and quotes for everything else.

Example:

```c
#include <stddef.h>
#include "actor.h"
```

## Conditional includes

Some header files should be conditionally included, for example:

```c
#if PLATFORM_N64
#include "n64dd.h"
#endif
```

This should be done when a .h does not make sense to be included for all versions, for example because it provides symbols that a version doesn't even link (include in the spec).

A list of such files is:

- `cic6105.h` behind `PLATFORM_N64`
- `inflate.h` behind `PLATFORM_IQUE`
- `n64dd.h` behind `PLATFORM_N64`
- `yaz0.h` behind `!PLATFORM_IQUE`
