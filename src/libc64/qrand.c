/**
 * @file rand.c
 *
 * This file implements the primary random number generator the game relies on. The generator is pseudo-random and
 * implemented as a Linear Congruential Generator (LCG).
 *
 * A LCG computes random numbers sequentially via the relation
 *      X(n+1) = (a * X(n) + c) mod m
 * where m is the modulus, a is the multiplier and c is the increment.
 *
 * These three parameters (a,c,m) completely specify the LCG and should be chosen such that
 *  - m > 0
 *  - 0 < a < m
 *  - 0 <= c < m
 *
 * The period of the LCG (a, c, m) is the smallest period p such that X(n + p) = X(n), past n=p the sequence will repeat
 * itself in its outputs.
 * A good LCG should have the maximum possible period, which will be equal to m as there are at most m possible values
 * for X. This occurs when (Hull, T.E., & Dobell, A.R. (1962). Random Number Generators. Siam Review, 4, 230-254.):
 *  - m,c are relatively prime, that is the only integer that divides both m and c with no remainder is 1.
 *  - a - 1 is divisible by all prime factors of m.
 *  - a - 1 is divisible by 4 if m is divisible by 4.
 *
 * Ideally m is chosen to be a large power of 2 so that the modulo operation is inexpensive to compute. In this case the
 * prime factors of m = 2^k are just k copies of 2. For k > 1 m is divisible by 4, so a - 1 must be divisible by 4. 2^k
 * and c can easily be made relatively prime by making c an odd number.
 * If we let k=32 to match the size of an integer, the modulo operation is made implicit by the width of the data type
 * and becomes free to compute.
 *
 * The parameter a should be selected such that a-1 is divisible by 4 (and hence divisible by 2) and c should be any odd
 * number. The precise values should fare well against the spectral test, a measure of "how random" a particular LCG is.
 * A pair (a,c) that satisfies these requirements is (1664525, 1013904223), recommended by "Numerical Recipes in C: The
 * Art of Scientific Computing" (p. 284).
 *
 * Therefore, the LCG with parameters (1664525, 1013904223, 2^32) that is implemented in this file has a maximal period
 * of 2^32 and produces high-quality pseudo-random numbers.
 *
 * @note If sampling the LCG for a n-bit number it is important to use the upper n bits instead of the lower n bits of
 * the LCG output. The lower n bits only have a period of 2^n which may significantly worsen the quality of the
 * resulting random numbers compared to the quality of the full 32-bit result.
 */
#include "libc64/qrand.h"
#include "z64math.h"

#define RAND_MULTIPLIER 1664525
#define RAND_INCREMENT 1013904223

/**
 * The latest generated random number, used to generate the next number in the sequence.
 */
static u32 __qrand_idum = 1;

#if !PLATFORM_N64
/**
 * Space to store a value to be re-interpreted as a float.
 */
static FloatInt __qrand_itemp;
#endif

/**
 * Gets the next integer in the sequence of pseudo-random numbers.
 */
u32 qrand(void) {
#if PLATFORM_N64
    u32 next = __qrand_idum * RAND_MULTIPLIER + RAND_INCREMENT;

    __qrand_idum = next;
    return next;
#else
    return __qrand_idum = __qrand_idum * RAND_MULTIPLIER + RAND_INCREMENT;
#endif
}

/**
 * Seeds the pseudo-random number generator by providing a starting value.
 */
void sqrand(u32 seed) {
    __qrand_idum = seed;
}

/**
 * Returns a pseudo-random floating-point number between 0.0f and 1.0f, by generating the next integer and masking it
 * to an IEEE-754 compliant floating-point number between 1.0f and 2.0f, returning the result subtract 1.0f.
 *
 * @note This technique for generating pseudo-random floats is recommended as a particularly fast but potentially
 *       non-portable generator in "Numerical Recipes in C: The Art of Scientic Computing", pp. 284-5.
 */
f32 fqrand(void) {
#if PLATFORM_N64
    fu v;
    f32 vf;

    // Note this samples the lower 23 bits, effectively reducing the LCG period from 2^32 to 2^23.
    // This was fixed in Gamecube versions and Majora's Mask.
    v.i = (qrand() & 0x007FFFFF) | 0x3F800000;
    vf = v.f - 1.0f;
    return vf;
#else
    __qrand_idum = __qrand_idum * RAND_MULTIPLIER + RAND_INCREMENT;
    // Samples the upper 23 bits to avoid effectively reducing the LCG period.
    __qrand_itemp.i = (__qrand_idum >> 9) | 0x3F800000;
    return __qrand_itemp.f - 1.0f;
#endif
}

#if !PLATFORM_N64
/**
 * Returns a pseudo-random floating-point number between -0.5f and 0.5f by the same manner in which fqrand
 * generates its result.
 *
 * @see fqrand
 */
f32 fqrand2(void) {
    __qrand_idum = __qrand_idum * RAND_MULTIPLIER + RAND_INCREMENT;
    __qrand_itemp.i = (__qrand_idum >> 9) | 0x3F800000;
    return __qrand_itemp.f - 1.5f;
}
#endif

//! All functions below are unused variants of the above four, that use a provided random number variable instead of the
//! internal `__qrand_idum`

/**
 * Seeds a pseudo-random number at rndNum with a provided starting value.
 *
 * @see sqrand
 */
void sqrand_r(u32* rndNum, u32 seed) {
    *rndNum = seed;
}

/**
 * Generates the next pseudo-random integer from the provided rndNum.
 *
 * @see qrand
 */
u32 qrand_r(u32* rndNum) {
    return *rndNum = (*rndNum) * RAND_MULTIPLIER + RAND_INCREMENT;
}

/**
 * Generates the next pseudo-random floating-point number between 0.0f and 1.0f from the provided rndNum.
 *
 * @see fqrand
 */
f32 fqrand_r(u32* rndNum) {
#if PLATFORM_N64
    fu v;
    f32 vf;
    u32 next = qrand_r(rndNum);

    v.i = (next & 0x007FFFFF) | 0x3F800000;
    vf = v.f - 1.0f;
    return vf;
#else
    u32 next = (*rndNum) * RAND_MULTIPLIER + RAND_INCREMENT;

    __qrand_itemp.i = ((*rndNum = next) >> 9) | 0x3F800000;
    return __qrand_itemp.f - 1.0f;
#endif
}

#if !PLATFORM_N64
/**
 * Generates the next pseudo-random floating-point number between -0.5f and 0.5f from the provided rndNum.
 *
 * @see fqrand, fqrand2
 */
f32 fqrand2_r(u32* rndNum) {
    u32 next = (*rndNum) * RAND_MULTIPLIER + RAND_INCREMENT;

    __qrand_itemp.i = ((*rndNum = next) >> 9) | 0x3F800000;
    return __qrand_itemp.f - 1.5f;
}
#endif
