#ifndef ASM_H
#define ASM_H

#ifdef __sgi
#define _MIPS_ISA_MIPS1 1
#define _MIPS_ISA_MIPS2 2
#define _MIPS_ISA_MIPS3 3
#define _MIPS_ISA_MIPS4 4

#define _MIPS_SIM_ABI32     1   /* MIPS MSIG calling convention */
#define _MIPS_SIM_NABI32    2   /* MIPS new 32-bit abi */
                                /* NABI32 is 64bit calling convention but 32bit type sizes) */
#define _MIPS_SIM_ABI64     3   /* MIPS 64 calling convention */
#endif

#ifndef _LANGUAGE_C

#ifdef __GNUC__
#define TYPE(x, t) .type x, @t
#define SIZE(x)    .size x, . - x
#else
#define TYPE(x, t)
#define SIZE(x)
#endif

#define LEAF(x)                 \
    .align 2                   ;\
    .globl x                   ;\
    TYPE(x, function)          ;\
    .ent x, 0                  ;\
    x:                         ;\
        .frame sp, 0, ra

#define XLEAF(x)                \
    .align 2                   ;\
    .globl x                   ;\
    TYPE(x, function)          ;\
    .aent x, 0                 ;\
    x:

#define NESTED(x, fsize, ra)    \
    .globl x                   ;\
    .ent x, 0                  ;\
    x:                         ;\
        .frame sp, fsize, ra

#define XNESTED(x)              \
    .globl x                   ;\
    .aent x, 0                 ;\
    x:

#define END(x)                  \
    SIZE(x)                    ;\
    .end x

#define EXPORT(x)               \
    .globl x                   ;\
    x:

#ifdef __sgi
#define IMPORT(sym, size)       \
    .extern sym, size
#else
#define IMPORT(sym, size)
#endif

#define DATA(x)                 \
    .align 2                   ;\
    .globl x                   ;\
    TYPE(x, object)            ;\
    x:

#define ENDDATA(x)              \
    SIZE(x)

#define MFC0(dst, src) \
    .set noreorder; mfc0 dst, src; .set reorder
#define MTC0(dst, src) \
    .set noreorder; mtc0 dst, src; .set reorder

#define CACHE(op, base)  \
    .set noreorder; cache op, base; .set reorder

#define CFC1(dst, src) \
    .set noreorder; cfc1 dst, src; .set reorder
#define CTC1(src, dst) \
    .set noreorder; ctc1 src, dst; .set reorder

#define NOP \
    .set noreorder; nop; .set reorder

#define TLBWI \
    .set noreorder; tlbwi; .set reorder

#define TLBR \
    .set noreorder; tlbr; .set reorder

#define TLBP \
    .set noreorder; tlbp; .set reorder

#ifndef __GNUC__
#define ABS(x, y)   \
    .globl  x;      \
    x = y
#else
#define ABS(x, y)   \
    .globl x;       \
    .set x, y
#endif

#endif

/**
 *  Stack Alignment
 */
#if   (_MIPS_SIM == _ABIO32)
#define NARGSAVE 4      /* space for 4 args must be allocated */
#define ALSZ    (8-1)
#define ALMASK ~(8-1)
#elif (_MIPS_SIM == _ABIN32 || _MIPS_SIM == _ABI64)
#define NARGSAVE 0      /* no caller responsibilities */
#define ALSZ    (16-1)
#define ALMASK ~(16-1)
#endif

#define FRAMESZ(size) (((size) + ALSZ) & ALMASK)

/**
 *  Register Size
 */
#if   (_MIPS_ISA == _MIPS_ISA_MIPS1 || _MIPS_ISA == _MIPS_ISA_MIPS2)
#define SZREG 4
#elif (_MIPS_ISA == _MIPS_ISA_MIPS3 || _MIPS_ISA == _MIPS_ISA_MIPS4)
#define SZREG 8
#endif

#endif
