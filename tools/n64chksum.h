#ifndef N64CHKSUM_H
#define N64CHKSUM_H

#include <stdint.h>

bool n64chksum_calculate(const uint8_t *romData, int cicType, uint32_t *chksum);

#endif
