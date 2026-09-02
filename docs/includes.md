# Includes Style Guide

## Include what you use

We go by "include what you use", which basically means that for any symbol used by a .c file, the .h where that symbol is from must be included.

A tool exists to help with this: `apt install iwyu`.

This tool (and clangd) understands IWYU pragmas: we currently only make use of `IWYU pragma: export` and `IWYU pragma: begin_exports`/`IWYU pragma: end_exports`.

For further details see https://github.com/include-what-you-use/include-what-you-use

## Includes ordering

The include should be ordered like this and sorted alphabetically within each group:

- main header(s) for the system/overlay. That is, the .h file(s) that declare what the .c defines (functions, globals).
- `versions.h` if needed
- remaining includes not in this list
- assets
- `src/*.h`
- `libc64/*.h`
- `libu64/*.h`
- `ultra64.h` if needed
- libc (files from `include/libc`)

This minimizes the chance for headers to not be self-contained.

There should be no empty line between groups, except:

- after the main .h include(s)
- before and after assets includes if any
- before and after `src/*.h` includes if any
- in-between assets includes, as needed

## Angle brackets vs quotes

Use angle brackets for libc includes (files from `include/libc`), and quotes for everything else.

Example:

```c
#include "actor.h"
#include <stddef.h>
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
