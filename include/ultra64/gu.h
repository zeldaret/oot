#ifndef _ULTRA64_GU_H_
#define _ULTRA64_GU_H_

#define GU_PI 3.1415926
/* Functions */

#define ROUND(x) (s32)(((x) >= 0.0) ? ((x) + 0.5) : ((x) - 0.5))

void guPerspectiveF(float mf[4][4], u16 *perspNorm, float fovy, float aspect,
    float near, float far, float scale);
void guPerspective(Mtx *m, u16 *perspNorm, float fovy, float aspect, float near,
    float far, float scale);

#endif
