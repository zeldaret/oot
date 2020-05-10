#ifndef _MATH_H_
#define _MATH_H_

#define M_PI 3.14159265358979323846f
#define M_SQRT2 1.41421356237309504880f
#define FLT_MAX 340282346638528859811704183484516925440.0f
#define SHT_MAX 32767.0f
#define SHT_MINV (1.0f / SHT_MAX)
#define DEGTORAD(x) (x * M_PI / 180.0f)

float sinf(float);
double sin(double);
float cosf(float);
double cos(double);
float sqrtf(float f);

#endif
