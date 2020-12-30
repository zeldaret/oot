#ifndef _Z_EN_HONOTRAP_H_
#define _Z_EN_HONOTRAP_H_

#include "ultra64.h"
#include "global.h"

struct EnHonotrap;

typedef void (*EnHonotrapActionFunc) (struct EnHonotrap*, GlobalContext*);

typedef struct EnHonotrap {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnHonotrapActionFunc actionFunc;
    /* 0x0150 */ union {
                    
                    struct {
                        ColliderTris tris;
                        ColliderTrisItem elements[2];
                    };
                    ColliderCylinder cyl;
                } collider;
    /* 0x0228 */ s16 timer;
    /* 0x022A */ s16 unk_22A;
    /* 0x022C */ Vec3f unk_22C;
    /* 0x0238 */ f32 unk_238;
    /* 0x023C */ s16 unk_23C;
    /* 0x023E */ s16 unk_23E;
    /* 0x0240 */ u8 colChkFlags;
} EnHonotrap; // size = 0x0244

extern const ActorInit En_Honotrap_InitVars;

#endif
