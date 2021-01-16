#ifndef _Z_EN_DAIKU_KAKARIKO_H_
#define _Z_EN_DAIKU_KAKARIKO_H_

#include "ultra64.h"
#include "global.h"

struct EnDaikuKakariko;

typedef void (*EnDaikuKakarikoActionFunc)(struct EnDaikuKakariko*, GlobalContext*);

typedef struct EnDaikuKakariko {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnDaikuKakarikoActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ s32 unk_1E0;
    /* 0x01E4 */ s32 unk_1E4;
    /* 0x01E8 */ f32 unk_1E8;
    /* 0x01EC */ s32 unk_1EC;
    /* 0x01F0 */ Vec3s* unk_1F0;
    /* 0x01F4 */ s32 unk_1F4;
    /* 0x01F8 */ s32 unk_1F8;
    /* 0x01FC */ s32 unk_1FC;
    /* 0x0200 */ u16 unk_200;
    /* 0x0202 */ u16 unk_202;
    /* 0x0204 */ struct_80034A14_arg1 unk_204;
    /* 0x022C */ Vec3s jointTable[17];
    /* 0x0292 */ Vec3s morphTable[17];
    /* 0x02F8 */ s32 unk_2F8;
    /* 0x02FC */ Vec3s unk_2FC;
    /* 0x0302 */ Vec3s unk_302;
} EnDaikuKakariko; // size = 0x0308

extern const ActorInit En_Daiku_Kakariko_InitVars;

#endif
