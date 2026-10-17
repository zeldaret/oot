#ifndef Z_EN_NIW_LADY_H
#define Z_EN_NIW_LADY_H

#include "ultra64.h"
#include "actor.h"

struct EnNiwLady;

typedef void (*EnNiwLadyActionFunc)(struct EnNiwLady*, struct PlayState*);

typedef struct EnNiwLady {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[16];
    /* 0x01F0 */ Vec3s morphTable[16];
    /* 0x0250 */ EnNiwLadyActionFunc actionFunc;
    /* 0x0254 */ Vec3s headRot;
    /* 0x025A */ Vec3s torsoRot;
    /* 0x0260 */ s16 unusedTimer;
    /* 0x0262 */ s16 endTextState; // "message_end_code"
    /* 0x0264 */ s16 unusedTimer2;
    /* 0x0266 */ s16 unusedRandomTimer;
    /* 0x0268 */ s16 cuccosInPen;
    /* 0x026A */ s16 mostCuccosInPen;
    /* 0x026C */ s16 minigameState;
    /* 0x026E */ s16 nextAnimation;
    /* 0x0270 */ s16 currentAnimation;
    /* 0x0272 */ u8 unk_272;
    /* 0x0273 */ u8 isHoldingPocketCucco;
    /* 0x0274 */ u8 hasSpokenAboutPocketCucco;
    /* 0x0275 */ u8 isSwaying;
    /* 0x0276 */ u8 isWorryingAboutCuccos;
    /* 0x0277 */ u8 hasSpokenAboutCojiro;
    /* 0x0278 */ s16 isInImpasHouse;
    /* 0x027A */ s16 adultTextIndex;
    /* 0x027C */ s16 faceState;
    /* 0x027E */ s16 isLoaded;
    /* 0x0280 */ s8 aneObjectSlot;
    /* 0x0281 */ s8 osAnimeObjectSlot;
    /* 0x0284 */ s32 getItemId;
    /* 0x0288 */ NpcInteractInfo interactInfo;
    /* 0x02B0 */ ColliderCylinder collider;
} EnNiwLady; // size = 0x02FC

#endif
