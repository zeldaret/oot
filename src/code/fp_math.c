#include "z64math.h"
#include "macros.h"

#if PLATFORM_GC
s32 gUseAtanContFrac;
#endif

/**
 * @param angle radians
 * @return tan(angle)
 */
f32 Math_FTanF(f32 angle) {
    f32 sin = sinf(angle);
    f32 cos = cosf(angle);

    return sin / cos;
}

f32 Math_FFloorF(f32 x) {
    return floorf(x);
}

f32 Math_FCeilF(f32 x) {
    return ceilf(x);
}

#if PLATFORM_N64
f64 Math_FAbs(f64 x) {
    return x < 0.0 ? -x : x;
}

f32 Math_FAbsF(f32 x) {
    return x < 0.0f ? -x : x;
}
#endif

f32 Math_FRoundF(f32 x) {
    return roundf(x);
}

f32 Math_FTruncF(f32 x) {
    return truncf(x);
}

f32 Math_FNearbyIntF(f32 x) {
    return nearbyintf(x);
}

#if PLATFORM_GC
/* Arctangent approximation using a Taylor series (one quadrant) */
f32 Math_FAtanTaylorQF(f32 x) {
    static const f32 coeffs[] = {
        -1.0f / 3, +1.0f / 5, -1.0f / 7, +1.0f / 9, -1.0f / 11, +1.0f / 13, -1.0f / 15, +1.0f / 17, 0.0f,
    };

    f32 poly = x;
    f32 sq = SQ(x);
    f32 exp = x * sq;
    const f32* c = coeffs;
    f32 term;

    while (true) {
        term = *c++ * exp;
        if (poly + term == poly) {
            break;
        }
        poly += term;
        exp *= sq;
    }

    return poly;
}

/* Ditto for two quadrants */
f32 Math_FAtanTaylorF(f32 x) {
    f32 t;
    f32 q;

    if (x > 0.0f) {
        t = x;
    } else if (x < 0.0f) {
        t = -x;
    } else if (x == 0.0f) {
        return 0.0f;
    } else {
        return qNaN0x10000;
    }

    if (t <= M_SQRT2 - 1.0f) {
        return Math_FAtanTaylorQF(x);
    }

    if (t >= M_SQRT2 + 1.0f) {
        q = M_PI / 2 - Math_FAtanTaylorQF(1.0f / t);
    } else {
        q = M_PI / 4 - Math_FAtanTaylorQF((1.0f - t) / (1.0f + t));
    }

    if (x > 0.0f) {
        return q;
    } else {
        return -q;
    }
}
#endif

/* Arctangent approximation using a continued fraction */
f32 Math_FAtanContFracF(f32 x) {
    s32 sector;
    f32 z;
    f32 conv;
    f32 sq;
    s32 i;

#if PLATFORM_N64
    if (x > 1.0f) {
        sector = 1;
        x = 1.0f / x;
    } else if (x < -1.0f) {
        sector = -1;
        x = 1.0f / x;
    } else {
        sector = 0;
    }
#else
    if (x >= -1.0f && x <= 1.0f) {
        sector = 0;
    } else if (x > 1.0f) {
        sector = 1;
        x = 1.0f / x;
    } else if (x < -1.0f) {
        sector = -1;
        x = 1.0f / x;
    } else {
        return qNaN0x10000;
    }
#endif

    sq = SQ(x);
    conv = 0.0f;

#if PLATFORM_N64
    z = 24.0f;
    i = 24;
#else
    z = 8.0f;
    i = 8;
#endif

    while (i != 0) {
        conv = SQ(z) * sq / (2.0f * z + 1.0f + conv);
        z -= 1.0f;
        i--;
    }

#if PLATFORM_N64
    if (sector > 0) {
        return M_PI / 2 - (x / (1.0f + conv));
    } else if (sector < 0) {
        return -M_PI / 2 - (x / (1.0f + conv));
    } else {
        return x / (1.0f + conv);
    }
#else
    conv = x / (1.0f + conv);
    if (sector == 0) {
        return conv;
    } else if (sector > 0) {
        return M_PI / 2 - conv;
    } else {
        return -M_PI / 2 - conv;
    }
#endif
}

#if PLATFORM_GC
/**
 * @return arctan(x) in radians, in (-pi/2,pi/2) range
 */
f32 Math_FAtanF(f32 x) {
    if (!gUseAtanContFrac) {
        return Math_FAtanTaylorF(x);
    } else {
        return Math_FAtanContFracF(x);
    }
}
#endif

/**
 * @return angle to (x,y) from vector (1,0) around (0,0) in radians, in (-pi,pi] range
 */
f32 Math_FAtan2F(f32 y, f32 x) {
#if PLATFORM_N64
    if (y == 0.0f && x == 0.0f) {
        return 0.0f;
    }

    if (x == 0.0f) {
        if (y < 0.0f) {
            return -M_PI / 2;
        } else {
            return M_PI / 2;
        }
    } else if (x < 0.0f) {
        if (y < 0.0f) {
            return -(M_PI - Math_FAtanContFracF(fabs(y / x)));
        } else {
            return M_PI - Math_FAtanContFracF(fabs(y / x));
        }
    } else { // x > 0.0f
        return Math_FAtanContFracF(y / x);
    }
#else
    if (x == 0.0f) {
        if (y == 0.0f) {
            return 0.0f;
        } else if (y > 0.0f) {
            return M_PI / 2;
        } else if (y < 0.0f) {
            return -M_PI / 2;
        } else {
            return qNaN0x10000;
        }
    } else if (x >= 0.0f) {
        return Math_FAtanF(y / x);
    } else { // x < 0.0f
        if (y < 0.0f) {
            return Math_FAtanF(y / x) - M_PI;
        } else {
            return M_PI - Math_FAtanF(-(y / x));
        }
    }
#endif
}

/**
 * @return arcsin(x) in radians, in [-pi/2,pi/2] range
 */
f32 Math_FAsinF(f32 x) {
    return Math_FAtan2F(x, sqrtf(1.0f - SQ(x)));
}

/**
 * @return arccos(x) in radians, in [0,pi] range
 */
f32 Math_FAcosF(f32 x) {
    return M_PI / 2 - Math_FAsinF(x);
}
