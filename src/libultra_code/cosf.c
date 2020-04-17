#include "libultra_internal.h"
#include "guint.h"

#pragma weak fcos = __cosf
#pragma weak cosf = __cosf
#define fcos __cosf

/* coefficients for polynomial approximation of cos on +/- pi/2 */

static const du P[] = {
    { 0x3ff00000, 0x00000000 }, { 0xbfc55554, 0xbc83656d }, { 0x3f8110ed, 0x3804c2a0 },
    { 0xbf29f6ff, 0xeea56814 }, { 0x3ec5dbdf, 0x0e314bfe },
};

static const du rpi = { 0x3fd45f30, 0x6dc9c883 };

static const du pihi = { 0x400921fb, 0x50000000 };

static const du pilo = { 0x3e6110b4, 0x611a6263 };

static const fu zero = { 0x00000000 };

/* ====================================================================
 *
 * FunctionName		fcos
 *
 * Description		computes cosine of arg
 *
 * ====================================================================
 */

float fcos(float x) {
    float absx;
    double dx, xsq, poly;
    double dn;
    int n;
    double result;
    int ix, xpt;

    ix = *(int*)&x;
    xpt = (ix >> 22);
    xpt &= 0x1ff;

    /* xpt is exponent(x) + 1 bit of mantissa */

    if (xpt < 0x136) {
        /* |x| < 2^28 */

        /* use the standard algorithm from Cody and Waite, doing
           the computations in double precision
        */

        absx = ABS(x);

        dx = absx;

        dn = dx * rpi.d + 0.5;
        n = ROUND(dn);
        dn = n;

        dn -= 0.5;

        dx = dx - dn * pihi.d;
        dx = dx - dn * pilo.d; /* dx = x - (n - 0.5)*pi */

        xsq = dx * dx;

        poly = ((P[4].d * xsq + P[3].d) * xsq + P[2].d) * xsq + P[1].d;

        result = dx + (dx * xsq) * poly;

        /* negate result if n is odd */

        if ((n & 1) == 0) {
            return ((float)result);
        }

        return (-(float)result);
    }

    if (x != x) {
        /* x is a NaN; return a quiet NaN */

#ifdef _IP_NAN_SETS_ERRNO

        *__errnoaddr = EDOM;
#endif

        return (__libm_qnan_f);
    }

    /* just give up and return 0.0 */

    return (zero.f);
}
