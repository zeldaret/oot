#ifndef _Z_EN_TEST_H_
#define _Z_EN_TEST_H_

#include <ultra64.h>
#include <global.h>

struct EnTest;

typedef void (*EnTestActionFunc)(struct EnTest*, GlobalContext*);

typedef struct EnTest {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ Vec3s bodyPartsPos[10];
    /* 0x0188 */ SkelAnime skelAnime_188;
    /* 0x01CC */ Vec3s limbDrawTable_1CC[61];
    /* 0x033A */ Vec3s transitionTbl_16E[61];
    /* 0x04A8 */ SkelAnime skelAnime_4A8;
    /* 0x04EC */ Vec3s limbDrawTable_4EC[61];
    /* 0x065A */ Vec3s transitionTbl_65A[61];
    /* 0x07C8 */ u8 unk_7C8;
    /* 0x07CC */ EnTestActionFunc actionFunc;
    /* 0x07D0 */ s16 unk_7D0;
    /* 0x07D2 */ s16 unk_7D2;
    /* 0x07D4 */ s16 unk_7D4;
    /* 0x07D6 */ char unk_7D6[0x2];
    /* 0x07D8 */ s16 unk_7D8;
    /* 0x07DA */ char unk_7DA[0x2];
    /* 0x07DC */ u8 unk_7DC;
    /* 0x07DD */ char unk_7DD[0x1];
    /* 0x07DE */ u8 unk_7DE;
    /* 0x07E0 */ s16 iceTimer;
    /* 0x07E2 */ u8 unk_7E2;
    /* 0x07E4 */ s32 unk_7E4;
    /* 0x07E8 */ s32 timer;
    /* 0x07EC */ f32 unk_7EC;
    /* 0x07F0 */ struct_80032E24 unk_7F0;
    /* 0x0808 */ s8 atOn;
    /* 0x080C */ s32 effectIndex;
    /* 0x0810 */ ColliderCylinder collider;
    /* 0x085C */ ColliderQuad swordCollider;
    /* 0x08DC */ ColliderCylinder shieldCollider;
} EnTest; // size = 0x0928

typedef enum {
    /* 0 */ STALFOS_INVISIBLE,
    /* 1 */ STALFOS_1,
    /* 2 */ STALFOS_2,
    /* 3 */ STALFOS_CEILING,
} StalfosType;

extern const ActorInit En_Test_InitVars;

#endif