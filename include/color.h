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

typedef struct {
    f32 r, g, b, a;
} Color_RGBAf;

#endif
