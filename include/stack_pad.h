#ifndef STACK_PAD_H
#define STACK_PAD_H

#include "attributes.h"

#ifndef GLUE
#define GLUE(a, b) a##b
#endif
#ifndef GLUE2
#define GLUE2(a, b) GLUE(a, b)
#endif

#ifndef NON_MATCHING
#define STACK_PAD(type) UNUSED type GLUE2(__stack_pad_, __LINE__)
#define STACK_PADS(type, n) STACK_PAD(type)[(n)]
#else
#define STACK_PAD(type)
#define STACK_PADS(type, n)
#endif

#endif
