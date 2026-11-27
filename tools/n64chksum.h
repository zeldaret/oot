#ifndef _N64CHKSUM_H_
#define _N64CHKSUM_H_

bool n64chksum_calculate(const uint8_t *romData, int cicType, uint32_t *chksum);

#endif
