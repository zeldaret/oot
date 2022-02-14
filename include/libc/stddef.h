#ifndef STDDEF_H
#define STDDEF_H

#define NULL ((void*)0)

typedef unsigned long size_t;

typedef long ptrdiff_t;
typedef long intptr_t;
typedef unsigned long uintptr_t;

#ifdef __GNUC__
#define offsetof(structure, member) __builtin_offsetof (structure, member)
#else
#define offsetof(structure, member) ((size_t)&(((structure*)0)->member))
#endif

#endif
