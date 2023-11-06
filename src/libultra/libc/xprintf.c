#include "stdarg.h"
#include "stdbool.h"
#include "stdint.h"
#include "stdlib.h"
#include "string.h"
#include "ultra64/xstdio.h"

#define isdigit(x) (((x) >= '0' && (x) <= '9'))
#define LDSIGN(x) (((unsigned short*)&(x))[0] & 0x8000)

#define ATOI(i, a)                \
    for (i = 0; isdigit(*a); a++) \
        if (i < 999)              \
            i = *a + i * 10 - '0';

#define PUT(fmt, _size)             \
    if (_size > 0) {                \
        arg = pfn(arg, fmt, _size); \
        if (arg != NULL)            \
            x.nchar += _size;       \
        else                        \
            return x.nchar;         \
    }

#define MAX_PAD ((int)sizeof(spaces) - 1)

#define PAD(src, m)                    \
    if (m > 0) {                       \
        int i;                         \
        int j;                         \
        for (j = m; j > 0; j -= i) {   \
            if ((unsigned)j > MAX_PAD) \
                i = MAX_PAD;           \
            else                       \
                i = j;                 \
            PUT(src, i);               \
        }                              \
    }

char spaces[] = "                                ";
char zeroes[] = "00000000000000000000000000000000";

void _Putfld(_Pft*, va_list*, char, char*);

int _Printf(PrintCallback pfn, void* arg, const char* fmt, va_list ap) {
    _Pft x;
    x.nchar = 0;

    while (true) {
        static const char fchar[] = " +-#0";
        static const unsigned int fbit[] = { FLAGS_SPACE, FLAGS_PLUS, FLAGS_MINUS, FLAGS_HASH, FLAGS_ZERO, 0 };

        const char* s = fmt;
        char c;
        const char* t;
        char ac[0x20];

        while ((c = *s) != 0 && c != '%') {
            s++;
        }

        PUT(fmt, s - fmt);
        if (c == 0) {
            return x.nchar;
        }

        fmt = ++s;

        for (x.flags = 0; (t = strchr(fchar, *s)) != NULL; s++) {
            x.flags |= fbit[t - fchar];
        }

        if (*s == '*') {
            x.width = va_arg(ap, int);
            if (x.width < 0) {
                x.width = -x.width;
                x.flags |= FLAGS_MINUS;
            }
            s++;
        } else {
            ATOI(x.width, s);
        }

        if (*s != '.') {
            x.prec = -1;
        } else {
            s++;
            if (*s == '*') {
                x.prec = va_arg(ap, int);
                s++;
            } else {
                ATOI(x.prec, s);
            }
        }

        if (strchr("hlL", *s) != NULL) {
            x.qual = *s++;
        } else {
            x.qual = '\0';
        }

        if (x.qual == 'l' && *s == 'l') {
            x.qual = 'L';
            s++;
        }
        _Putfld(&x, &ap, *s, ac);
        x.width -= x.n0 + x.nz0 + x.n1 + x.nz1 + x.n2 + x.nz2;
        if (!(x.flags & FLAGS_MINUS)) {
            PAD(spaces, x.width);
        }
        PUT(ac, x.n0);
        PAD(zeroes, x.nz0);
        PUT(x.s, x.n1);
        PAD(zeroes, x.nz1);
        PUT(&x.s[x.n1], x.n2)
        PAD(zeroes, x.nz2);
        if (x.flags & FLAGS_MINUS) {
            PAD(spaces, x.width);
        }
        fmt = s + 1;
    }
}

void _Putfld(_Pft* px, va_list* pap, char code, char* ac) {
    px->n0 = px->nz0 = px->n1 = px->nz1 = px->n2 = px->nz2 = 0;

    switch (code) {
        case 'c':
            ac[px->n0++] = va_arg(*pap, unsigned int);
            break;

        case 'd':
        case 'i':
            if (px->qual == 'l') {
                px->v.ll = va_arg(*pap, long);
            } else if (px->qual == 'L') {
                px->v.ll = va_arg(*pap, long long);
            } else {
                px->v.ll = va_arg(*pap, int);
            }

            if (px->qual == 'h') {
                px->v.ll = (short)px->v.ll;
            }

            if (px->v.ll < 0) {
                ac[px->n0++] = '-';
            } else if (px->flags & FLAGS_PLUS) {
                ac[px->n0++] = '+';
            } else if (px->flags & FLAGS_SPACE) {
                ac[px->n0++] = ' ';
            }

            px->s = &ac[px->n0];

            _Litob(px, code);
            break;

        case 'x':
        case 'X':
        case 'u':
        case 'o':
            if (px->qual == 'l') {
                px->v.ll = va_arg(*pap, long);
            } else if (px->qual == 'L') {
                px->v.ll = va_arg(*pap, long long);
            } else {
                px->v.ll = va_arg(*pap, int);
            }

            if (px->qual == 'h') {
                px->v.ll = (unsigned short)px->v.ll;
            } else if (px->qual == '\0') {
                px->v.ll = (unsigned int)px->v.ll;
            }

            if (px->flags & FLAGS_HASH) {
                ac[px->n0++] = '0';
                if (code == 'x' || code == 'X') {
                    ac[px->n0++] = code;
                }
            }
            px->s = &ac[px->n0];
            _Litob(px, code);
            break;

        case 'e':
        case 'f':
        case 'g':
        case 'E':
        case 'G':
            px->v.ld = px->qual == 'L' ? va_arg(*pap, LONG_DOUBLE_TYPE) : va_arg(*pap, double);

            if (LDSIGN(px->v.ld)) {
                ac[px->n0++] = '-';
            } else if (px->flags & FLAGS_PLUS) {
                ac[px->n0++] = '+';
            } else if (px->flags & FLAGS_SPACE) {
                ac[px->n0++] = ' ';
            }

            px->s = &ac[px->n0];
            _Ldtob(px, code);
            break;

        case 'n':
            if (px->qual == 'h') {
                *(va_arg(*pap, unsigned short*)) = px->nchar;
            } else if (px->qual == 'l') {
                *va_arg(*pap, unsigned long*) = px->nchar;
            } else if (px->qual == 'L') {
                *va_arg(*pap, unsigned long long*) = px->nchar;
            } else {
                *va_arg(*pap, unsigned int*) = px->nchar;
            }
            break;

        case 'p':
            px->v.ll = (intptr_t)va_arg(*pap, void*);
            px->s = &ac[px->n0];
            _Litob(px, 'x');
            break;

        case 's':
            px->s = va_arg(*pap, char*);
            px->n1 = strlen(px->s);
            if (px->prec >= 0 && px->n1 > px->prec) {
                px->n1 = px->prec;
            }
            break;

        case '%':
            ac[px->n0++] = '%';
            break;

        default:
            ac[px->n0++] = code;
            break;
    }
}
