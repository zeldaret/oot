#ifndef STDINT_H
#define STDINT_H

typedef signed int intptr_t;
typedef unsigned int uintptr_t;

#define INT8_MIN    (-0x80)
#define INT16_MIN   (-0x8000)
#define INT32_MIN   (-0x80000000)
#define INT64_MIN   (-0x8000000000000000)

#define INT8_MAX    0x7f
#define INT16_MAX   0x7fff
#define INT32_MAX   0x7fffffff
#define INT64_MAX   0x7fffffffffffffff

#define UINT8_MAX   0xff
#define UINT16_MAX  0xffff
#define UINT32_MAX  0xffffffff
#define UINT64_MAX  0xffffffffffffffff

#define INTPTR_MIN  (-0x80000000)
#define INTPTR_MAX  0x7fffffff
#define UINTPTR_MAX 0xffffffff


#endif /* STDINT_H */
