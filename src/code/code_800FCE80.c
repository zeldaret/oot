#include <ultra64.h>
#include <global.h>
#include <fp.h>

s32 use_cfrac;

f32 Math_tanf(f32 x)
{
    f32 sin = sinf(x);
    f32 cos = cosf(x);
    return sin / cos;
}

f32 Math_floorf(f32 x)
{
    return floorf(x);
}

f32 Math_ceilf(f32 x)
{
    return ceilf(x);
}

f32 Math_roundf(f32 x)
{
    return roundf(x);
}

f32 Math_truncf(f32 x)
{
    return truncf(x);
}

f32 Math_nearbyintf(f32 x)
{
    return nearbyintf(x);
}

/* Arctangent approximation using a Taylor series (one quadrant) */
f32 Math_atanf_taylor_q(f32 x)
{
    static const f32 coeffs[] =
    {
        -1.f / 3,
        +1.f / 5,
        -1.f / 7,
        +1.f / 9,
        -1.f / 11,
        +1.f / 13,
        -1.f / 15,
        +1.f / 17,
        0.f,
    };

    f32 poly = x;
    f32 sq = SQ(x);
    f32 exp = x * sq;
    const f32 *c = coeffs;
    f32 term;

    while (1)
    {
        term = *c++ * exp;
        if (poly + term == poly)
        {
            break;
        }
        poly = poly + term;
        exp = exp * sq;
    }

    return poly;
}

/* Ditto for two quadrants */
f32 Math_atanf_taylor(f32 x)
{
    f32 t;
    f32 q;

    if (x > 0.f)
    {
        t = x;
    }
    else if (x < 0.f)
    {
        t = -x;
    }
    else if (x == 0.f)
    {
        return 0.f;
    }
    else
    {
        return qNaN0x10000;
    }

    if (t <= M_SQRT2 - 1.f)
    {
        return Math_atanf_taylor_q(x);
    }

    if (t >= M_SQRT2 + 1.f)
    {
        q = M_PI / 2 - Math_atanf_taylor_q(1.f / t);
    }
    else
    {
        q = M_PI / 4 - Math_atanf_taylor_q((1.f - t) / (1.f + t));
    }

    if (x > 0.f)
    {
        return q;
    }
    else
    {
        return -q;
    }
}

/* Arctangent approximation using a continued fraction */
f32 Math_atanf_cfrac(f32 x)
{
    s32 sector;
    f32 z;
    f32 conv;
    f32 sq;
    s32 i;

    if (x >= -1.f && x <= 1.f)
    {
        sector = 0;
    }
    else if (x > 1.f)
    {
        sector = 1;
        x = 1.f / x;
    }
    else if (x < -1.f)
    {
        sector = -1;
        x = 1.f / x;
    }
    else
    {
        return qNaN0x10000;
    }

    sq = SQ(x);
    conv = 0.f;
    z = 8.f;
    for (i = 8; i != 0; i--)
    {
        conv = SQ(z) * sq / (2.f * z + 1.f + conv);
        z -= 1.f;
    }
    conv = x / (1.f + conv);

    if (sector == 0)
    {
        return conv;
    }
    else if (sector > 0)
    {
        return M_PI / 2 - conv;
    }
    else
    {
        return -M_PI / 2 - conv;
    }
}

f32 Math_atanf(f32 x)
{
    if (use_cfrac == 0)
    {
        return Math_atanf_taylor(x);
    }
    else
    {
        return Math_atanf_cfrac(x);
    }
}

f32 Math_atan2f(f32 y, f32 x)
{
    if (x == 0.f)
    {
        if (y == 0.f)
        {
            return 0.f;
        }
        else if (y > 0.f)
        {
            return M_PI / 2;
        }
        else if (y < 0.f)
        {
            return -M_PI / 2;
        }
        else
        {
            return qNaN0x10000;
        }
    }
    else if (x >= 0.f)
    {
        return Math_atanf(y / x);
    }
    else if (y < 0.f)
    {
        return Math_atanf(y / x) - M_PI;
    }
    else
    {
        return M_PI - Math_atanf(-(y / x));
    }
}

f32 Math_asinf(f32 x)
{
    return Math_atan2f(x, sqrtf(1.f - SQ(x)));
}

f32 Math_acosf(f32 x)
{
    return M_PI / 2 - Math_asinf(x);
}
