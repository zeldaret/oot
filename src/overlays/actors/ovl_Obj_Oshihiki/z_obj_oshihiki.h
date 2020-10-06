#ifndef _Z_OBJ_OSHIHIKI_H_
#define _Z_OBJ_OSHIHIKI_H_

#include <ultra64.h>
#include <global.h>

struct ObjOshihiki;

typedef void (*ObjOshihikiActionFunc)(struct ObjOshihiki*, GlobalContext*);

typedef struct ObjOshihiki {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ObjOshihikiActionFunc actionFunc;
    /* 0x0168 */ u16 stateFlags;
    /* 0x016A */ s16 timer;
    /* 0x016C */ f32 yawSin;
    /* 0x0170 */ f32 yawCos;
    /* 0x0174 */ f32 pushSpeed;
    /* 0x0178 */ f32 pushDist;
    /* 0x017C */ f32 direction; // dyna unk_150 stored here
    /* 0x0180 */ s32 floorBgIds[5];
    /* 0x0194 */ CollisionPoly* floorPolys[5];
    /* 0x01A8 */ f32 floorHeights[5];
    /* 0x01BC */ s16 highestFloor;
    /* 0x01BE */ u8 cantMove;
    /* 0x01C0 */ struct ObjOshihiki* blockUnder;
    /* 0x01C4 */ f32 underDistX;
    /* 0x01C8 */ f32 underDistZ;
    /* 0x01CC */ UNK_PTR texture;
    /* 0x01D0 */ Color_RGB8 color;
} ObjOshihiki; // size = 0x01D4

extern const ActorInit Obj_Oshihiki_InitVars;

#endif
