#ifndef _COLOR_H_
#define _COLOR_H_

typedef union {
    struct {
        u8 r, g, b;
    };
    u8 c[3];
} Color_RGB8;

typedef union {
    struct {
        u8 r, g, b, a;
    };
    u8 c[4];
    u32 rgba;
} Color_RGBA8;

// Variant with one byte alignment.
typedef union {
    struct {
        u8 r, g, b, a;
    };
    u8 c[4];
} Color_RGBA8_n;

typedef struct {
    f32 r, g, b, a;
} Color_RGBAf;

#endif
