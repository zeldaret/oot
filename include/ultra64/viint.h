#ifndef ULTRA64_VIINT_H
#define ULTRA64_VIINT_H

#define VI_STATE_MODE_SET           (1 << 0)
#define VI_STATE_XSCALE_SET         (1 << 1)
#define VI_STATE_YSCALE_FACTOR_SET  (1 << 2)
#define VI_STATE_CTRL_SET           (1 << 3)
#define VI_STATE_BUFFER_SET         (1 << 4)
#define VI_STATE_BLACK              (1 << 5)
#define VI_STATE_REPEATLINE         (1 << 6)
#define VI_STATE_FADE               (1 << 7)

#define VI_SCALE_MASK       0xFFF
#define VI_2_10_FPART_MASK  0x3FF
#define VI_SUBPIXEL_SH      0x10

// For use in initializing OSViMode structures

#define BURST(hsync_width, color_width, vsync_width, color_start) \
    (hsync_width | (color_width << 8) | (vsync_width << 16) | (color_start << 20))
#define WIDTH(v) v
#define VSYNC(v) v
#define HSYNC(duration, leap) (duration | (leap << 16))
#define LEAP(upper, lower) ((upper << 16) | lower)
#define START(start, end) ((start << 16) | end)

#define FTOFIX(val, i, f) ((u32)(val * (f32)(1 << f)) & ((1 << (i + f)) - 1))

#define F210(val) FTOFIX(val, 2, 10)
#define SCALE(scaleup, off) (F210((1.0f / (f32)scaleup)) | (F210((f32)off) << 16))

#define VCURRENT(v) v
#define ORIGIN(v) v
#define VINTR(v) v
#define HSTART START

#endif
