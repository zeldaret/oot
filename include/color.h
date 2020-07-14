#ifndef _COLOR_H_
#define _COLOR_H_

typedef struct {
    u8 r, g, b;
} Color_RGB8;

typedef union {
    struct {
        u8 r, g, b, a;
    };
    u32 rgba;
} Color_RGBA8;

// Variant without u32 union
typedef struct {
    u8 r, g, b, a;
} Color_RGBA8_n;

typedef struct {
    f32 r, g, b, a;
} Color_RGBAf;

#endif
