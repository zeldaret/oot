#ifndef STB_SHA1_H_INCLUDED
#define STB_SHA1_H_INCLUDED

void stb_sha1(unsigned char output[20], unsigned char *buffer, unsigned len);
void stb_sha1_readable(char display[30], unsigned char sha[20]);

#endif /* STB_SHA1_H_INCLUDED */

