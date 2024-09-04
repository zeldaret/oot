#ifndef COLOR_H
#define COLOR_H

typedef struct Color_RGB8 {
    u8 r, g, b;
} Color_RGB8;

typedef struct Color_RGBA8 {
    u8 r, g, b, a;
} Color_RGBA8;

// only use when necessary for alignment purposes
typedef union Color_RGBA8_u32 {
    struct {
        u8 r, g, b, a;
    };
    u32 rgba;
} Color_RGBA8_u32;

typedef struct Color_RGBAf {
    f32 r, g, b, a;
} Color_RGBAf;

typedef union Color_RGBA16 {
    struct {
        u16 r : 5;
        u16 g : 5;
        u16 b : 5;
        u16 a : 1;
    };
    u16 rgba;
} Color_RGBA16;

#endif
