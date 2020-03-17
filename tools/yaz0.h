#ifndef _YAZ0_H_
#define _YAZ0_H_

int yaz0_encode2(uint8_t *src, uint8_t *dest, int uncompressedSize);

void yaz0_decode(uint8_t* src, uint8_t* dst, int uncompressedSize);

int yaz0_encode(uint8_t *src, uint8_t *dest, int srcSize);

#endif  // _YAZ0_H_
