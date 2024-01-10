#include "stdlib.h"
#include "string.h"
#include "ultra64/xstdio.h"

#define BUFF_LEN 0x18

static char ldigs[] = "0123456789abcdef";
static char udigs[] = "0123456789ABCDEF";

void _Litob(_Pft* args, char code) {
    char buff[BUFF_LEN];
    const char* digs;
    int base;
    int i;
    unsigned long long num;

    if (code == 'X') {
        digs = udigs;
    } else {
        digs = ldigs;
    }

    base = (code == 'o') ? 8 : ((code != 'x' && code != 'X') ? 10 : 16);
    i = BUFF_LEN;
    num = args->v.ll;

    if ((code == 'd' || code == 'i') && args->v.ll < 0) {
        num = -num;
    }

    if (num != 0 || args->prec != 0) {
        buff[--i] = digs[num % base];
    }

    args->v.ll = num / base;

    while (args->v.ll > 0 && i > 0) {
        lldiv_t quotrem = lldiv(args->v.ll, base);

        args->v.ll = quotrem.quot;
        buff[--i] = digs[quotrem.rem];
    }

    args->n1 = BUFF_LEN - i;

    memcpy(args->s, buff + i, args->n1);

    if (args->n1 < args->prec) {
        args->nz0 = args->prec - args->n1;
    }

    if (args->prec < 0 && (args->flags & (FLAGS_ZERO | FLAGS_MINUS)) == FLAGS_ZERO) {
        i = args->width - args->n0 - args->nz0 - args->n1;
        if (i > 0) {
            args->nz0 += i;
        }
    }
}
