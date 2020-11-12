#include "global.h"

f32 sFactorialTbl[] = { 1.0f,    1.0f,     2.0f,      6.0f,       24.0f,       120.0f,      720.0f,
                        5040.0f, 40320.0f, 362880.0f, 3628800.0f, 39916800.0f, 479001600.0f };

f32 func_800CA540(f32 arg0) {
    f32 ret = 1.0f;
    s32 i;
    for (i = arg0; i > 1; i--) {
        ret *= i;
    }
    return ret;
}

f32 func_800CA63C(u32 arg0) {
    f32 ret;
    s32 i;
    if (arg0 > 12) {
        ret = sFactorialTbl[12];
        for (i = 13; i <= (s32)arg0; i++) {
            ret *= i;
        }
    } else {
        ret = sFactorialTbl[arg0];
    }
    return ret;
}

f32 func_800CA6FC(f32 arg0, s32 arg1) {
    f32 ret = 1.0f;
    while (arg1 > 0) {
        arg1--;
        ret *= arg0;
    }
    return ret;
}

f32 func_800CA720(f32 arg0) {
    return sins((s16)(arg0 * (32767.0f / M_PI))) * SHT_MINV;
}

f32 func_800CA774(f32 arg0) {
    return coss((s16)(arg0 * (32767.0f / M_PI))) * SHT_MINV;
}
