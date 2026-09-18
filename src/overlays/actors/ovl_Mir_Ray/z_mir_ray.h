#ifndef Z_MIR_RAY_H
#define Z_MIR_RAY_H

#include "ultra64.h"
#include "actor.h"
#include "light.h"

struct MirRay;

typedef struct MirRay {
    /* 0x000 */ Actor actor;
    /* 0x14C */ ColliderJntSph unk14C;
    /* 0x16C */ ColliderJntSphElement unk16C;
    /* 0x1AC */ ColliderQuad unk1AC;
    /* 0x22C */ f32 lightReflectionFactor;
    /* 0x230 */ Vec3f reflectionOriginModelPositions[6];
    /* 0x278 */ f32 shieldForwardNormalizeFactor;
    /* 0x27C */ Vec3f coneFrustumCenterTop;
    /* 0x288 */ Vec3f coneFrustumCenterBase;
    /* 0x294 */ s16 coneFrustumRadiusTop;
    /* 0x296 */ s16 coneFrustumRadiusBase;
    /* 0x298 */ s16 pointLightRadius;
    /* 0x29A */ char pad29A[2];
    /* 0x29C */ LightNode* lightNode;
    /* 0x2A0 */ LightInfo lightInfo;
    /* 0x2AE */ u8 unk2AE;
    /* 0x2AF */ char pad2AF[1];
} MirRay; // size = 0x02B0

#endif
