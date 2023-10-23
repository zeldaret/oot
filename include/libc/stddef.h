#ifndef STDDEF_H
#define STDDEF_H

#define NULL ((void*)0)

#if !defined(_SIZE_T) && !defined(_SIZE_T_)
#define _SIZE_T

#if !defined(_MIPS_SZLONG) || (_MIPS_SZLONG == 32)
typedef unsigned int    size_t;
#endif
#if defined(_MIPS_SZLONG) && (_MIPS_SZLONG == 64)
typedef unsigned long   size_t;
#endif

#endif

#ifdef __GNUC__
#define offsetof(structure, member) __builtin_offsetof (structure, member)
#else
#define offsetof(structure, member) ((size_t)&(((structure*)0)->member))
#endif

#endif
