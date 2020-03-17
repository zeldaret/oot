#include <assert.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

#include "n64chksum.h"
#include "util.h"

//Based on uCON64's N64 checksum algorithm by Andreas Sterbenz

#define ROL(i, b) (((i) << (b)) | ((i) >> (32 - (b))))

bool n64chksum_calculate(const uint8_t *romData, int cicType, uint32_t *chksum)
{
    unsigned int seed;
    unsigned int t1, t2, t3, t4, t5, t6;
    size_t pos;

    const size_t START = 0x1000;
    const size_t END = START + 0x100000;

    // determine initial seed
    switch (cicType)
    {
    case 6101:
    case 6102:
        seed = 0xF8CA4DDC;
        break;
    case 6103:
        seed = 0xA3886759;
        break;
    case 6105:
        seed = 0xDF26F436;
        break;
    case 6106:
        seed = 0x1FEA617A;
        break;
    default:
        return false;  // unknown CIC type
    }

    t1 = t2 = t3 = t4 = t5 = t6 = seed;

    for (pos = START; pos < END; pos += 4)
    {
        unsigned int d = util_read_uint32_be(romData + pos);
        unsigned int r = ROL(d, (d & 0x1F));

        // increment t4 if t6 overflows
        if ((t6 + d) < t6)
            t4++;

        t6 += d;
        t3 ^= d;
        t5 += r;

        if (t2 > d)
            t2 ^= r;
        else
            t2 ^= t6 ^ d;

        if (cicType == 6105)
            t1 += util_read_uint32_be(&romData[0x0750 + (pos & 0xFF)]) ^ d;
        else
            t1 += t5 ^ d;
    }

    if (cicType == 6103)
    {
        chksum[0] = (t6 ^ t4) + t3;
        chksum[1] = (t5 ^ t2) + t1;
    }
    else if (cicType == 6106)
    {
        chksum[0] = (t6 * t4) + t3;
        chksum[1] = (t5 * t2) + t1;
    }
    else
    {
        chksum[0] = t6 ^ t4 ^ t3;
        chksum[1] = t5 ^ t2 ^ t1;
    }

    return true;
}
