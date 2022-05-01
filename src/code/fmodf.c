#include "global.h"

/**
 * Computes one `x` modulo `y` for floats.
 *
 * Acts like the standard C fmodf except does not handle Infinity. See https://en.cppreference.com/w/c/numeric/math/fmod
 * for the details. It summarizes this function as follows:
 * "The floating-point remainder of the division operation x/y calculated by this function is exactly the value x - n*y,
 * where n is x/y with its fractional part truncated.
 *
 * The returned value has the same sign as x and is less or equal to y in magnitude."
 *
 * @param x dividend
 * @param y modulus
 *
 * @return f32 0.0f if y is 0.0f, or x modulo y otherwise
 */
f32 fmodf(f32 x, f32 y) {
    s32 n;

    if (y == 0.0f) {
        return 0.0f;
    }
    n = x / y;

    return x - (n * y);
}
