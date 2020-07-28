#ifndef _ULTRA64_TYPES_H_
#define _ULTRA64_TYPES_H_

typedef signed char            s8;  // size = 0x01
typedef unsigned char          u8;  // size = 0x01
typedef signed short int       s16; // size = 0x02
typedef unsigned short int     u16; // size = 0x02
typedef signed int             s32; // size = 0x04
typedef unsigned int           u32; // size = 0x04
typedef signed long long int   s64; // size = 0x08
typedef unsigned long long int u64; // size = 0x08

typedef volatile u8  vu8;  // size = 0x01
typedef volatile u16 vu16; // size = 0x01
typedef volatile u32 vu32; // size = 0x02
typedef volatile u64 vu64; // size = 0x02
typedef volatile s8  vs8;  // size = 0x04
typedef volatile s16 vs16; // size = 0x04
typedef volatile s32 vs32; // size = 0x08
typedef volatile s64 vs64; // size = 0x08

typedef float  f32; //size = 0x04
typedef double f64; //size = 0x08


typedef long int Mtx_t[4][4];
typedef union {
    Mtx_t m;
    long long int forc_structure_alignment;
} Mtx;

typedef float MtxF_t[4][4];
typedef union {
    MtxF_t mf;
    struct {
        float xx, xy, xz, xw,
              yx, yy, yz, yw,
              zx, zy, zz, zw,
              wx, wy, wz, ww;
    };
} MtxF;

#endif
