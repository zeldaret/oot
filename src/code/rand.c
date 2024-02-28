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
 *
 * @note Original name: qrand.c
 */
#include "ultra64.h"

#define RAND_MULTIPLIER 1664525
#define RAND_INCREMENT 1013904223

/**
 * The latest generated random number, used to generate the next number in the sequence.
 *
 * @note Original name: __qrand_idum
 */
static u32 sRandInt = 1;

/**
 * Space to store a value to be re-interpreted as a float.
 *
 * @note Orignal name: __qrand_itemp
 */
static fu sRandFloat;

/**
 * Gets the next integer in the sequence of pseudo-random numbers.
 *
 * @note Original name: qrand
 */
u32 Rand_Next(void) {
    return sRandInt = sRandInt * RAND_MULTIPLIER + RAND_INCREMENT;
}

/**
 * Seeds the pseudo-random number generator by providing a starting value.
 *
 * @note Original name: sqrand
 */
void Rand_Seed(u32 seed) {
    sRandInt = seed;
}

/**
 * Returns a pseudo-random floating-point number between 0.0f and 1.0f, by generating the next integer and masking it
 * to an IEEE-754 compliant floating-point number between 1.0f and 2.0f, returning the result subtract 1.0f.
 *
 * @note This technique for generating pseudo-random floats is recommended as a particularly fast but potentially
 *       non-portable generator in "Numerical Recipes in C: The Art of Scientic Computing", pp. 284-5.
 *
 * @note Original name: fqrand
 */
f32 Rand_ZeroOne(void) {
    sRandInt = sRandInt * RAND_MULTIPLIER + RAND_INCREMENT;
    // Samples the upper 23 bits to avoid effectively reducing the LCG period.
    sRandFloat.i = (sRandInt >> 9) | 0x3F800000;
    return sRandFloat.f - 1.0f;
}

/**
 * Returns a pseudo-random floating-point number between -0.5f and 0.5f by the same manner in which Rand_ZeroOne
 * generates its result.
 *
 * @see Rand_ZeroOne
 *
 * @note Original name: fqrand2
 */
f32 Rand_Centered(void) {
    sRandInt = sRandInt * RAND_MULTIPLIER + RAND_INCREMENT;
    sRandFloat.i = (sRandInt >> 9) | 0x3F800000;
    return sRandFloat.f - 1.5f;
}

//! All functions below are unused variants of the above four, that use a provided random number variable instead of the
//! internal `sRandInt`

/**
 * Seeds a pseudo-random number at rndNum with a provided starting value.
 *
 * @see Rand_Seed
 *
 * @note Original name: sqrand_r
 */
void Rand_Seed_Variable(u32* rndNum, u32 seed) {
    *rndNum = seed;
}

/**
 * Generates the next pseudo-random integer from the provided rndNum.
 *
 * @see Rand_Next
 *
 * @note Original name: qrand_r
 */
u32 Rand_Next_Variable(u32* rndNum) {
    return *rndNum = (*rndNum) * RAND_MULTIPLIER + RAND_INCREMENT;
}

/**
 * Generates the next pseudo-random floating-point number between 0.0f and 1.0f from the provided rndNum.
 *
 * @see Rand_ZeroOne
 *
 * @note Original name: fqrand_r
 */
f32 Rand_ZeroOne_Variable(u32* rndNum) {
    u32 next = (*rndNum) * RAND_MULTIPLIER + RAND_INCREMENT;

    sRandFloat.i = ((*rndNum = next) >> 9) | 0x3F800000;
    return sRandFloat.f - 1.0f;
}

/**
 * Generates the next pseudo-random floating-point number between -0.5f and 0.5f from the provided rndNum.
 *
 * @see Rand_ZeroOne, Rand_Centered
 *
 * @note Original name: fqrand2_r
 */
f32 Rand_Centered_Variable(u32* rndNum) {
    u32 next = (*rndNum) * RAND_MULTIPLIER + RAND_INCREMENT;

    sRandFloat.i = ((*rndNum = next) >> 9) | 0x3F800000;
    return sRandFloat.f - 1.5f;
}
