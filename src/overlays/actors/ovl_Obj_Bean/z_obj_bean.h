#ifndef _Z_OBJ_BEAN_H_
#define _Z_OBJ_BEAN_H_

#include "ultra64.h"
#include "global.h"

struct ObjBean;

typedef void (*ObjBeanActionFunc)(struct ObjBean*, GlobalContext*);

typedef void (*ObjBeanUnkFunc)(struct ObjBean*);


typedef struct ObjBean {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ObjBeanActionFunc actionFunc;
    /* 0x0168 */ ColliderCylinder collider;
    /* 0x01B4 */ s16 unk_1B4;
    /* 0x01B6 */ Vec3s unk_1B6;
    /* 0x01BC */ ObjBeanUnkFunc unkFunc;
    /* 0x01C0 */ s16 unk_1C0;
    /* 0x01C2 */ s16 unk_1C2;
    /* 0x01C4 */ s16 unk_1C4;
    /* 0x01C6 */ s16 unk_1C6;
    /* 0x01C8 */ s16 unk_1C8;
    /* 0x01CA */ s16 unk_1CA;
    /* 0x01CC */ s16 unk_1CC;
    /* 0x01CE */ s16 unk_1CE;
    /* 0x01D0 */ s16 unk_1D0;
    /* 0x01D2 */ u16 unk_1D2;
    /* 0x01D4 */ f32 unk_1D4;
    /* 0x01D8 */ Vec3f pathPoints;
    /* 0x01E4 */ f32 unk_1E4;
    /* 0x01E8 */ f32 unk_1E8;
    /* 0x01EC */ f32 unk_1EC;
    /* 0x01F0 */ s16 pathCount;
    /* 0x01F2 */ s16 unk_1F2;
    /* 0x01F4 */ s16 unk_1F4;
    /* 0x01F6 */ u8 unk_1F6;
    /* 0x01F7 */ u8 drawFlags;
} ObjBean; // size = 0x01F8

extern const ActorInit Obj_Bean_InitVars;

#endif
