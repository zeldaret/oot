#ifndef STDINT_H
#define STDINT_H

typedef signed int intptr_t;
typedef unsigned int uintptr_t;

#define INT8_MIN    (-0x80)
#define INT16_MIN   (-0x8000)
#define INT32_MIN   (-0x80000000)
#define INT64_MIN   (-0x8000000000000000)

#define INT8_MAX    0x7F
#define INT16_MAX   0x7FFF
#define INT32_MAX   0x7FFFFFFF
#define INT64_MAX   0x7FFFFFFFffffffff

#define UINT8_MAX   0xFF
#define UINT16_MAX  0xFFFF
#define UINT32_MAX  0xFFFFFFFF
#define UINT64_MAX  0xFFFFFFFFffffffff

#define INTPTR_MIN  (-0x80000000)
#define INTPTR_MAX  0x7FFFFFFF
#define UINTPTR_MAX 0xFFFFFFFF


#endif /* STDINT_H */
