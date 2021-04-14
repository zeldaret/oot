#pragma once

static uint32_t CRC32B(unsigned char* message, int size)
{
	int32_t byte, crc;
	int32_t mask;

	crc = 0xFFFFFFFF;

	for (int i = 0; i < size; i++)
	{
		byte = message[i];
		crc = crc ^ byte;

		for (int j = 7; j >= 0; j--)
		{
			mask = -(crc & 1);
			crc = (crc >> 1) ^ (0xEDB88320 & mask);
		}
	}

	return ~(uint32_t)(crc);
}