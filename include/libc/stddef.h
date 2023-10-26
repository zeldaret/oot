#ifndef STDDEF_H
#define STDDEF_H

#define NULL ((void*)0)

#if defined(_MIPS_SZLONG) && (_MIPS_SZLONG == 64)
typedef unsigned long size_t;
#else
typedef unsigned int  size_t;
#endif

#ifdef __GNUC__
#define offsetof(structure, member) __builtin_offsetof (structure, member)
#else
#define offsetof(structure, member) ((size_t)&(((structure*)0)->member))
#endif

#endif
