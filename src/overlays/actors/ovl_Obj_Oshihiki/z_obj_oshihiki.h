#ifndef _Z_OBJ_OSHIHIKI_H_
#define _Z_OBJ_OSHIHIKI_H_

#include <ultra64.h>
#include <global.h>

struct ObjOshihiki;

typedef void (*ObjOshihikiActionFunc)(struct ObjOshihiki*, GlobalContext*);

typedef struct ObjOshihiki {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ObjOshihikiActionFunc actionFunc;
    /* 0x0168 */ u16 unk_168;
    /* 0x016A */ s16 unk_16A;
    /* 0x016C */ f32 yawSin;
    /* 0x0170 */ f32 yawCos;
    /* 0x0174 */ f32 unk_174;
    /* 0x0178 */ f32 unk_178;
    /* 0x017C */ f32 unk_17C; // dyna unk_150 stored here
    /* 0x0180 */ s32 unk_180[5];
    /* 0x0194 */ CollisionPoly* unk_194[5];
    /* 0x01A8 */ f32 unk_1A8[5];
    /* 0x01BC */ s16 unk_1BC;
    /* 0x01BE */ u8 unk_1BE;
    /* 0x01C0 */ struct ObjOshihiki* unk_1C0;
    /* 0x01C4 */ f32 unk_1C4;
    /* 0x01C8 */ f32 unk_1C8;
    /* 0x01CC */ UNK_PTR texture;
    /* 0x01D0 */ Color_RGB8 color;
} ObjOshihiki; // size = 0x01D4

extern const ActorInit Obj_Oshihiki_InitVars;

#endif
