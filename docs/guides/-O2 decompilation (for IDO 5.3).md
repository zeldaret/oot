# -O2 decompilation (for IDO 5.3)

## Decompiling a file:
1. Move each function from .s into .c, using `GLOBAL_ASM` blocks. Replace asm `.ifdef`s by C `#ifdef`s.
2. Migrate bss, data and rodata, using `GLOBAL_ASM`'s `.late_rodata` for literals, and C syntax for everything else. This can affect codegen, see "Rodata literals" and "Reused %hi", so it's best to do it early (although the cases where it does don't come up super often).
3. Decompile the functions one by one. Maybe start with the small ones, to get experience with -O2 decomp and more information about structs and typical code patterns?
4. Come up with a behaviorally equivalent function, e.g. using mips_to_c.
5. Fix the control flow to match the asm's ordering of basic blocks (it's very predictable, so this is simple; mips_to_c generally does it automatically).
6. Fix large reorderings.
7. Ensure the same set of saved registers are used (e.g. by making sure to reuse variables, duplicating expressions rather than putting them in variables, etc.).
8. Fix small reorderings.
9. Fix regalloc.

https://github.com/simonlindholm/asm-differ is a nice diff script, which diffs primarily based on instruction, secondarily on instruction arguments, and colors regalloc differences. Use together with a config like the following: https://hackmd.io/mBVvaZuRSR2e7PX43p6SoA

https://github.com/simonlindholm/decomp-permuter may be useful in fixing mismatches towards the end, or pointing out which parts of the code need to be changed.

## Checklists

### Regalloc differences

- move statements around
- introduce temporary variables for subexpressions, and move their assignments around
- in particular, try moving statements between different basic blocks
- duplicate expressions and use the compiler's deduplication machinery
- reuse variables
- fiddle with int promotion if relevant
- special compiler-generated patterns, like turning `(x ^ A) < 1` back into `x == A`, or recognizing bit field access
- initialize other variables within loop headers, like `for(i = 0, someothervar = 4; i < 4; i++)`

### Reorderings

- move statements around
- introduce temporary variables for subexpressions, and move their assignments around
- separate statements via `,` instead of `;`, or put them on the same line
- change the control flow, e.g. `?:` vs `if`/`else`, or early returns vs normal control flow
- copy a whole struct rather than copying member individually

### Extra `mov`'s

- `if (condition)` causes different behavior than `if (condition != 0)`

## Compiler behavior

### Stack placement

`-g` and `-O2` place things on the stack in the same way. (TODO: verify this.) However, the optimizer can then move some variables into registers, leaving slots empty. If an explicitly declared stack variable is unused or placed in a register, and it is last in the declaration order, it won't affect `sp`. (Thus, a strategy for getting correct stack usage is to first move all stack-placed variables to their correct place on the stack, then either pad with unused variables at the top of the stack to increase stack size, or move registers variables from the start to the end of the declaration order to decrease it.)

Hypothesis: the compiler does a naive codegen pass, involving creating pseudo registers for a lot of expressions, each of which gets an assigned place on the stack. Then the optimizer runs and places most expressions in registers, but they keep their reserved stack space.

### Function declarations matter

`void f(void)` uses 4 bytes more stack than `void f()`.

Calling a function that returns a value consumes stack, even if the return value is ignored.

### Variables matter

Creating a temporary variable for an expression doesn't do anything, except possibly affect regalloc if the assignment is moved to another basic block.

However, *reusing* a variable for several different computations can have weird effects (reorderings, different regalloc, ...). In particular the compiler generally tries to keep each variable in a single register. I guess a conclusion we can draw from this is that IDO does not use SSA form...

Sometimes an extra `move` operation is an indicator that a variable was used.

### Types mostly don't matter

I.e. all pointer types behave the same, `u32` and `s32` are hard to distinguish, etc. Exceptions:
- type casts can affect order of commutative operations like + and == (see "Order of commutative operations" further down).
- calling a function that takes `u32` vs `s32` with a `u8` variable can result in wildly different codegen (or just register changes).
- bitfields: Use an arithmetic vs a logical shift depending on the signedness: `srl` (`u32`) vs `sra` (`s32`)

### Int promotion matters

This code:
```
u8 mask = some->global.u8var;
if (mask & 1) { ... }
if (mask & 2) { ... }
```
is by C the same as
```
u8 mask = some->global.u8var;
if ((u32)mask & 1) { ... }
if ((u32)mask & 2) { ... }
```
which gets deduplicated to
```
u8 mask = some->global.u8var;
u32 mask2 = mask;
if (mask2 & 1) { ... }
if (mask2 & 2) { ... }
```
but with different regalloc, which cannot be triggered by writing that code manually. `s32` and `u32` behave the same for this purpose, but smaller types are affected.

As another example, I had a longer version of
```
void f(u16 x) {
    if (x != 0) { ... }
}
```
involve an int promotion for `x`, which computed `x_int` as `x & 0xffff` and used that everywhere as `x`'s u16-reduced version, while
```
void f(u16 x) {
    if (x) { ... }
}
```
did not do that int promotion, and `x` was instead fetched from `sp + 0x22` each time it was needed. (At least, that's my best hypothesis for what was going on...)

### Volatile variables

If `x` is declared `volatile`, reading/writing to `x` will first compute its address, and then do a load/store:
```
lui   $t6, %hi(x)
addiu $t6, %lo(x)
sw    $zero, ($t6)
```
If `x` is not `volatile`, the compiler usually (but not always?) folds the `%lo` into the load/store:
```
lui   $t6, %hi(x)
sw    $zero, %lo(x)($t6)
```

### Loop unrolling

The compiler unrolls "small" loops, by a factor 2 or 4. (The definition of "small" varies wildly, and needs to be figured out.)

Adding a `continue;` or `i++; i--;` can prevent loop unrolling; I don't know if it has side effects (it's certainly a good sign that you're missing something). Passing `-Wo,-loopunroll,0` to the compiler disables loop unrolling completely.

Large struct copies are also done with unrolled loops (with a factor 3), but that obeys its own rules.

### Deduplication

The compiler has a Global Value Numbering pass which deduplicates expressions. However, the act of deduplication affects register allocation. Thus one can sometimes force different regalloc by duplicating various expressions, hoping they will get deduplicated by the compiler. (Hypothesis: deduplication pushes a new expression onto an expression list (last), and regalloc traverses assigns registers to expressions in order of appearance within this list.)

### Rematerialization of constants

If a local variable contains a constant (e.g. a memory address), and is referred to across a function call, the compiler might initialize it again on the other side of the function call, rather than storing it in a register or on the stack.

In some sense this does the opposite of the deduplication pass above, resulting in the funny effect that to make sure a label/pointer address is recomputed from scratch after a function call, you might want to put it in a local variable, while if it is preserved in a single register or on the stack, refer to it literally.

### Rodata literals

Are treated as "really const", while `extern const`s aren't. Thus, their loads can be e.g. hoisted to the start of a function and put in saved registers.

### Reused `%hi`

Two variables which are both referred to via `%hi`/`%lo` and which have the same `%hi` can share the register used to keep the `lui`. In general this is tricky for the compiler to know, because it runs before the linker phase -- however, when both variables are `non-extern` and within the same 16-byte block, the compiler is able to share `%hi`s.

### `,` vs `;`

Separating statements by `,` instead of `;` can sometimes cause reorderings, similar to putting statements on the same line. See Whitespace below.

### Ternaries

`a = (b ? c : d)` and `if (b) a = c; else a = d;` generate the same code, but occasionally with some reordering and regalloc differences. `(b ? (a = c) : (a = d))` generates the same code as the other ternary. This could be because the compiler needs to come up with a single value for the entire expression (even though it discards it later), or because it treats expressions and statements fundamentally differently. (Edit: or maybe this is just whitespace sensitivity again! I should re-test.)

### `&a[i]` vs `a + i`

While nominally the same thing, using `&a[i]` within a loop may trigger the compiler to keep an additional loop counter for `&a[i]`. `a + i`, on the other hand, is often computed by addition and multiplication. `&a[i]` might also cause main iterator to become a multiple of the array type size.

Ex: 
```c
s32 i;
s32 *arr;
for (i = 0; i < 10; i++)` {
    s32 x = arr[i];
    ...
}
```
may get compiled to:
```c
s32 i;
s32 *arr;
s32 *arr_tmp = arr;
for (i = 0; i < 40; i += 4, arr_tmp++) {
    s32 x = *arr_tmp;
    ...
}
```
or if 10 is a constant and the array global
```c
s32 i;
s32 *arr;
s32 *arr_tmp;
s32 *arr_end = &arr[10];
for (arr_tmp = arr; arr_tmp != arr_end; arr_tmp++) {
    s32 x = *arr_tmp;
    ...
}
```

### source reg = target reg

If a register is both source and target for an operation, e.g. `xori t5,t5,0x1`, then either the same variable was both source and target, or that operation is an extension of the previous computation of that register. In the case of `xori`, it was probably a negated conditional (`a >= b` turned into `!(a < b)`); for `addi`, part of an address computation (e.g. `&x->array[index]`).

### Permanent (callee-save) registers

If a variable needs to survive past a function call (or several?), and it is read/written several times (?), it may get placed in a callee-save register (`s*`). Changing `a = b + c;` to `a = b; a += c;` might cause `a` to be placed in such a register.

### Assignment reorderings

`a->x = X; a->y = Y;` may be reordered as `a->y = Y; a->x = X;` if `X`/`a`/`Y`/`b` involve large computations. However, the computations, stack restores and register allocation of `X`/`Y` are still done in original order.

Similarly, the compiler can reorder stores to disjoint globals. This can be used to observe whether a temporary variable was used for an address -- alias analysis does not look at variable values.

If `x` and `y` are stack variables and `X`/`Y` don't involve function calls or branches, the assignment order is generally irrelevant -- the emission order instead depends on when they are used.

### Order of commutative operations

`a + b` and `b + a` tend to generate the same code, and similar for ==, !=, ^, &, |. The order used is not currently known; it seems to depend on at least whether a and b include array indexing, and type casts can also matter (even casting a variable to its own type). Maybe it depends on when a and b were created, and on their complexity? Speculation: this normalization might be done to make deduplication passes more powerful.

### Bitfields

```c
struct A {
    u8 x;
}
struct A glob;
...
glob.x |= 8;
```

and

```c
struct A {
    u8 a : 4;
    u8 b : 1;
}
struct A glob;
...
glob.b = 1;
```

generate the same code, except the latter allocates more registers (without using them).

Bitfields are allocated top-down, so in the above set of bitfields `a` would correspond to `x & 0xf0`, and `b` to `x & 0x8`.

Conditions like `if (glob.singleBitField)` are sometimes (but not always) emitted as:
- load 32 bits (regardless of the underlying type of `singleBitField`)
- shift left until the bit is in the sign bit
- branch on the sign bit (i.e. `bgt zero, x`)

### Struct copies

Copying a struct generates reorderings compared to copying each data member separately. It might also copy padding data (?), and if the size is 3 (mod 4) it may also generate `lwr`/`swr` instructions (like array initialization).

### Register allocation

TODO: we really need to figure this out.

For a simple test program, the order in which registers got allocated for variables was: v0, v1, a0, a1, a2, a3, t0, t1, t2, t3, t4, t5. After that point things started getting put on the stack. t6 and on might serve other roles than variable storage.

### Switch statements
For short switch statements the default case is often hoisted to the top so that the branches to the other cases just fall through. Instruction ordering can be affected by the order of the cases so moving default to the end (where most programmers would usually put it) can help. Switches sometimes cause code to be duplicated into all the cases, either from before the switch or after it.

### Whitespace
Surprisingly, putting statements on the same line can cause instructions reorderings and (rarely) regalloc changes. Adding a line break between two statements generally lessens the amount of intertwinedness of the two statements. This typically happens because of:
- macros, which put their contents on a single line (`\` glues lines together; there is no way in a macro to generate a newline)
- for loops, whose declaration, condition and post-expression are all on the same line
- `,`-expressions, which have the same effect

## Code patterns

### Casts

`u32` -> `u8` does `(x << 24) >> 24`. `s32` -> `s8` is the same but with arithmetic `>>`.
`u32` -> `f32` does a `s32` -> `f32` convert and adds `2^32` if `x < 0`.

### Comparisons

`x > y` is generally replaced by `x >= y + 1` when `y` is a constant (or vice versa?)

### Branch-Likelys

Here's a hypothesis: the compiler starts off not caring about delay slots. Then at the very end, if it is able to reorder a branch with its preceding instruction, it does so. If it can't, it emits a branch-likely instruction pointing one step down from its real target. (This hypothesis isn't entirely correct, because sometimes there are branches with nop delay slots... Maybe branch-likely's are only used for forward jumps?)

### Constant/Literal differences

Although both are treated as `f32`, `1.0f` and `1` can lead to different placements of the constant load instruction(s). In particular the instructions for `1` are deferred until they are used while `1.0f` can occur earlier.

### Goto

TODO: confirm. A `goto` will place the instruction at the target branch location inside the delay slot. This is similar to the behavior of branch-likely's except with normal branch instructions.

`break` is *not* equivalent to a goto to just outside the loop.

## Debug

### `uopt` debug traces

Compiling with `-Wo,-zdbug:n` results in debug output being printed to a file `uoptlist`. `n` should be a number between 1 and 7, yielding output which the man page describes as follows:

1. the local hash table and the global hash table are printed.
2. the local hash table, the global hash table are printed; the bit vectors for the local attributes are then printed on a per-basic-block basis.
3. the global hash table is printed, followed by the bit vectors for the partial redundancy data flow analysis.
4. the global hash table is printed, followed by the bit vectors to determine the live ranges of global common subexpressions.
5. the global hash table is printed, followed by the live range information for all the register-residing candidates, followed by the bit vectors related to register allocation.
6. a trace of the global register allocation via priority-based coloring is printed.
7. the inter-procedural register allocation information is printed.

I have not tried to reverse engineer any of the formats.

Example output for "-Wo,-zdbug:6": https://gist.github.com/simonlindholm/968fdb616544377555d626039004bf46

### `ugen` debug traces

`ugen` also has debug traces, available using `-Wc,-d`. Example output: https://gist.github.com/simonlindholm/6325556897d903e7684e91691f28713a

`ugen` dumps the tree at certain points: (TODO: are these points always the same?)
- "after Build"
- "after Translate"
- "after 1st localopt"
- "after 1st label phase"
- "after 2nd label phase"

DataType (`dtype`):
- `A` - address (pointer)		 
- `U` - procedure entry point	   
- `F` - C pointer to function	
- `H` - address that only points to heap  
- `J` - integer, single word 	   
- `L` - non-negative integer, single word
- `M` - array or record	
- `P` - procedure, untyped		
- `Q` - real, double word	
- `R` - real, single word		
- `S` - set		
- `X` - extended precision	
- `G` - address of label	
- `N` - non-local labels	
- `I` - integer, double word
- `K` - unsigned integer, double word 
- `X` - reserved		
- `Z` - undefined


MemType (`mtype`):
- `Z`, -	
- `M` - complex variables
- `P` - parameters			
- `R` - register
- `S` - statically allocated memory	 
- `T` - temporaries
- `A` - Parameter build area

After the tree dumps, it posts a [Trace of current_lines?] and emits instructions

The `emit_*` lines are of the following form:
- `emit_{OPERAND_TYPES}`:
    - `r` - single register
    - `i` - intermediate
    - `ll` - line offset  
    - `a` - address (offset)
    - `o` - offset
    - `b` - base 
- `z{INSTRUCTION}` (TODO: why the `z` prefix?)
- `operands`:
    - registers are of the form `xr{REGISTER_NUMBER}` (TODO: why the `x` prefix?)

The ugen pass is run after the uopt one.
