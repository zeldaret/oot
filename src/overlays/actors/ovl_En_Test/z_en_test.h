#ifndef _Z_EN_TEST_H_
#define _Z_EN_TEST_H_

#include <ultra64.h>
#include <global.h>

struct EnTest;

typedef void (*EnTestActionFunc)(struct EnTest*, struct GlobalContext*);

typedef struct EnTest {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x03C];
    /* 0x0188 */ SkelAnime skelAnime_188;
    /* 0x01CC */ Vec3s limbDrawTable_1CC[61];
    /* 0x033A */ Vec3s transitionTbl_16E[61];
    /* 0x04A8 */ SkelAnime skelAnime_4A8;
    /* 0x04EC */ Vec3s limbDrawTable_4EC[61];
    /* 0x065A */ Vec3s transitionTbl_65A[61];
    /* 0x07C8 */ s8 unk_7C8;
    /* 0x07C9 */ char unk_7C9[0x3];
    /* 0x07CC */ EnTestActionFunc actionFunc;
    /* 0x07D0 */ char unk_7D0[0xE];
    /* 0x07DE */ u8 unk_7DE;
    /* 0x07DF */ char unk_7DF[0x9];
    /* 0x07E8 */ s32 timer;
    /* 0x07EC */ f32 unk_7EC;
    /* 0x07F0 */ char unk_7F0[0x18];
    /* 0x0808 */ s8 atOn;
    /* 0x07EC */ char unk_809[0x3];
    /* 0x080C */ u32 effectIndex;
    /* 0x0810 */ ColliderCylinder collider;
    /* 0x085C */ ColliderQuad swordCollider;
    /* 0x08DC */ ColliderCylinder shieldCollider;
} EnTest; // size = 0x0928

extern const ActorInit En_Test_InitVars;

#endif