#ifndef ULTRA64_ULTRATYPES_H
#define ULTRA64_ULTRATYPES_H

#ifdef _LANGUAGE_C

typedef signed char            s8;
typedef unsigned char          u8;
typedef signed short int       s16;
typedef unsigned short int     u16;
typedef signed int             s32;
typedef unsigned int           u32;
typedef signed long long int   s64;
typedef unsigned long long int u64;

typedef volatile u8  vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8  vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float  f32;
typedef double f64;


typedef float MtxF_t[4][4];
typedef union {
    MtxF_t mf;
    struct {
        // Note: The order displayed here is the transpose of the order in which matrices are typically written.
        // For example, [xw, yw, zw] is the translation part of the matrix, not [wx, wy, wz].
        float xx, yx, zx, wx,
              xy, yy, zy, wy,
              xz, yz, zz, wz,
              xw, yw, zw, ww;
    };
} MtxF;

#endif

#endif
