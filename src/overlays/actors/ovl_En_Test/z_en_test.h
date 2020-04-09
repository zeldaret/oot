#ifndef _Z_EN_TEST_H_
#define _Z_EN_TEST_H_

#include <ultra64.h>
#include <global.h>

typedef struct {                                                                                                                                  
    /* 0x00 */ MtxF* unk_00;
    /* 0x04 */ s16* unk_04;                                                                                                                       
    /* 0x08 */ s16 unk_08;
    /* 0x0A */ char unk_0A[0x02];
    /* 0x0C */ s32* unk_0C;
    /* 0x10 */ s32 unk_10;
    /* 0x14 */ s32 unk_14;                                                                                                                    
} struct_80032E24; // size = 0x18;

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x03C];
    /* 0x0188 */ SkelAnime skelAnime_188;
    /* 0x01CC */ Vec3s actorDrawTbl_1CC[61];
    /* 0x033A */ Vec3s transitionTbl_16E[61];
    /* 0x04A8 */ SkelAnime skelAnime_4A8;
    /* 0x04EC */ Vec3s actorDrawTbl_4EC[61];
    /* 0x065A */ Vec3s transitionTbl_65A[61];
    /* 0x07C8 */ char unk_7C8[0x4];
    /* 0x07CC */ ActorFunc actionFunc;
    /* 0x07D0 */ char unk_7D0[0x20];
    /* 0x07F0 */ struct_80032E24 unk_7F0;
    /* 0x0808 */ char unk_808[0x4];
    /* 0x080C */ u32 effect;
    /* 0x0810 */ ColliderCylinderMain collider_810;
    /* 0x085C */ ColliderCylinderMain collider_85C;
    /* 0x08A8 */ Vec3f unk_8A8;
    /* 0x08B4 */ Vec3f unk_8B4;
    /* 0x08C0 */ Vec3f unk_8C0;
    /* 0x08CC */ char unk_8CC[0x10];
    /* 0x08DC */ ColliderCylinderMain collider_8DC;
} EnTest; // size = 0x0928

extern const ActorInit En_Test_InitVars;

#endif
