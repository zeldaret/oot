#ifndef _Z_EN_ANUBICE_H_
#define _Z_EN_ANUBICE_H_

#include "ultra64.h"
#include "global.h"
#include "overlays/actors/ovl_Bg_Hidan_Curtain/z_bg_hidan_curtain.h"

struct EnAnubice;

typedef void (*EnAnubiceActionFunc)(struct EnAnubice*, struct GlobalContext*);

typedef struct EnAnubice {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[16];
    /* 0x01F0 */ Vec3s morphTable[16];
    /* 0x0250 */ EnAnubiceActionFunc actionFunc;
    /* 0x0254 */ s16 timeAlive;
    /* 0x0256 */ s16 unk_256;
    /* 0x0258 */ s16 unk_258;
    /* 0x025A */ s16 deathTimer;
    /* 0x025C */ s16 knockbackTimer;
    /* 0x025E */ s16 isMirroringLink;
    /* 0x0260 */ s16 isLinkOutOfRange;
    /* 0x0262 */ s16 isKnockedback;
    /* 0x0264 */ s16 hasSearchedForFlameCircles;
    /* 0x0268 */ f32 hoverVelocityTimer;
    /* 0x026C */ f32 animLastFrame;
    /* 0x0270 */ f32 targetHeight;
    /* 0x0274 */ f32 playerHeightOffset; // How high above the player to hover at
    /* 0x0278 */ f32 unk_278;
    /* 0x027C */ f32 focusHeightOffset;
    /* 0x0280 */ Vec3f fireballPos;
    /* 0x028C */ Vec3f fireballRot;
    /* 0x0298 */ Vec3f home;
    /* 0x02A4 */ Vec3f knockbackRecoveryVelocity;
    /* 0x02B0 */ BgHidanCurtain* flameCircles[4];
    /* 0x02C0 */ char unk_2C0[0x8];
    /* 0x02C8 */ ColliderCylinder col;
} EnAnubice; // size = 0x0314

#endif
