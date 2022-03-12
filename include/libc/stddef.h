#ifndef STDDEF_H
#define STDDEF_H

#define NULL ((void*)0)

typedef unsigned int size_t;

typedef signed int ptrdiff_t;

#ifdef __GNUC__
#define offsetof(structure, member) __builtin_offsetof (structure, member)
#else
#define offsetof(structure, member) ((size_t)&(((structure*)0)->member))
#endif

#endif
