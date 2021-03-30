#pragma once

#include <stdint.h>

struct Vec3s
{
	int16_t x, y, z;

	Vec3s(int16_t nX, int16_t nY, int16_t nZ)
	{
		x = nX;
		y = nY;
		z = nZ;
	};
};