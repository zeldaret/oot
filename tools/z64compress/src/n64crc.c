/* snesrc - SNES Recompiler
 *
 * Mar 23, 2010: addition by spinout to actually fix CRC if it is incorrect
 *
 * Copyright notice for this file:
 *  Copyright (C) 2005 Parasyte
 *
 * Based on uCON64's N64 checksum algorithm by Andreas Sterbenz
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include <assert.h>

#define ROL(i, b) (((i) << (b)) | ((i) >> (32 - (b))))
#define BYTES2LONG(b) ( (b)[0] << 24 | \
                        (b)[1] << 16 | \
                        (b)[2] <<  8 | \
                        (b)[3] )

#define N64_HEADER_SIZE  0x40
#define N64_BC_SIZE      (0x1000 - N64_HEADER_SIZE)

#define N64_CRC1         0x10
#define N64_CRC2         0x14

#define CHECKSUM_START   0x00001000
#define CHECKSUM_LENGTH  0x00100000
#define CHECKSUM_CIC6102 0xF8CA4DDC
#define CHECKSUM_CIC6103 0xA3886759
#define CHECKSUM_CIC6105 0xDF26F436
#define CHECKSUM_CIC6106 0x1FEA617A


static void gen_table(unsigned int crc_table[256])
{
	unsigned int crc, poly;
	int	i, j;

	poly = 0xEDB88320;
	for (i = 0; i < 256; i++) {
		crc = i;
		for (j = 8; j > 0; j--) {
			if (crc & 1) crc = (crc >> 1) ^ poly;
			else crc >>= 1;
		}
		crc_table[i] = crc;
	}
}


static unsigned int crc32(
	unsigned int crc_table[256]
	, unsigned char *data
	, int len
)
{
	unsigned int crc = ~0;
	int i;

	for (i = 0; i < len; i++) {
		crc = (crc >> 8) ^ crc_table[(crc ^ data[i]) & 0xFF];
	}

	return ~crc;
}


static int N64GetCIC(unsigned int crc_table[256], unsigned char *data)
{
	switch (crc32(crc_table, &data[N64_HEADER_SIZE], N64_BC_SIZE)) {
		case 0x6170A4A1: return 6101;
		case 0x90BB6CB5: return 6102;
		case 0x0B050EE0: return 6103;
		case 0x98BC2C86: return 6105;
		case 0xACC8580A: return 6106;
	}

	return 0;
}


static int N64CalcCRC(
	unsigned int crc_table[256]
	, unsigned int *crc
	, unsigned char *data
)
{
	int bootcode, i;
	unsigned int seed;
	unsigned int t1, t2, t3;
	unsigned int t4, t5, t6;
	unsigned int r, d;

	switch ((bootcode = N64GetCIC(crc_table, data))) {
		case 6101:
		case 6102:
			seed = CHECKSUM_CIC6102;
			break;
		case 6103:
			seed = CHECKSUM_CIC6103;
			break;
		case 6105:
			seed = CHECKSUM_CIC6105;
			break;
		case 6106:
			seed = CHECKSUM_CIC6106;
			break;
		default:
			return 1;
	}

	t1 = t2 = t3 = t4 = t5 = t6 = seed;

	i = CHECKSUM_START;
	while (i < (CHECKSUM_START + CHECKSUM_LENGTH)) {
		d = BYTES2LONG(&data[i]);
		if ((t6 + d) < t6)
			t4++;
		t6 += d;
		t3 ^= d;
		r = ROL(d, (d & 0x1F));
		t5 += r;
		if (t2 > d)
			t2 ^= r;
		else
			t2 ^= t6 ^ d;

		if (bootcode == 6105)
			t1 += BYTES2LONG(&data[N64_HEADER_SIZE + 0x0710 + (i & 0xFF)]) ^ d;
		else
			t1 += t5 ^ d;

		i += 4;
	}
	if (bootcode == 6103) {
		crc[0] = (t6 ^ t4) + t3;
		crc[1] = (t5 ^ t2) + t1;
	}
	else if (bootcode == 6106) {
		crc[0] = (t6 * t4) + t3;
		crc[1] = (t5 * t2) + t1;
	}
	else {
		crc[0] = t6 ^ t4 ^ t3;
		crc[1] = t5 ^ t2 ^ t1;
	}

	return 0;
}


/* recalculate rom crc */
void n64crc(void *rom)
{
	unsigned int crc_table[256];
	unsigned char CRC1[4];
	unsigned char CRC2[4];
	unsigned int crc[2];
	unsigned char *rom8 = rom;
	
	assert(rom);
	
	gen_table(crc_table);

	if (!N64CalcCRC(crc_table, crc, rom))
	{
		unsigned int kk1 = crc[0];
		unsigned int kk2 = crc[1];
		int i;
		
		for (i = 0; i < 4; ++i)
		{
			CRC1[i] = (kk1 >> (24-8*i))&0xFF;
			CRC2[i] = (kk2 >> (24-8*i))&0xFF;
		}
		
		for (i = 0; i < 4; ++i)
			*(rom8 + N64_CRC1 + i) = CRC1[i];
		
		for (i = 0; i < 4; ++i)
			*(rom8 + N64_CRC2 + i) = CRC2[i];
	}
}

