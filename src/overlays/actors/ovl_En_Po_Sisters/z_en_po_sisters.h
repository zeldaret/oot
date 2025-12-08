#ifndef Z_EN_PO_SISTERS_H
#define Z_EN_PO_SISTERS_H

#include "ultra64.h"
#include "actor.h"
#include "light.h"

struct EnPoSisters;

typedef void (*EnPoSistersActionFunc)(struct EnPoSisters*, struct PlayState*);

typedef struct EnPoSisters {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnPoSistersActionFunc actionFunc;
    /* 0x0194 */ u8 sisterID; // which Poe sister this is
    /* 0x0195 */ u8 decoyID; // if non-zero, index of Meg's decoy
    /* 0x0196 */ u8 hoverPulse;
    /* 0x0197 */ u8 vanishTimer;
    /* 0x0198 */ u8 torchFlames; // number of torch flames to draw
    /* 0x0199 */ u8 sisterFlags;  // uses EnPoSisterFlags
    /* 0x019A */ s16 sisterTimer; // timer used for various situations
    /* 0x019C */ s16 megVar; // Meg and her decoys use it as a behaviour timer
    /* 0x019E */ Vec3s jointTable[12];
    /* 0x01E6 */ Vec3s morphTable[12];
    /* 0x022E */ Color_RGBA8 sisterColor; // (rgb) for eyes, (a) for rest of body
    /* 0x0234 */ Vec3f torchPos[8]; // positions of the torch flame and smaller circling flames
    /* 0x0294 */ f32 circleDist; // distance of Meg when circling Link.
    /* 0x0298 */ LightNode* lightNode;
    /* 0x029C */ LightInfo lightInfo;
    /* 0x02AC */ ColliderCylinder collider;
    /* 0x02F8 */ MtxF torchMtx;
} EnPoSisters; // size = 0x0338

typedef enum EnPoSisterNames {
    EN_PO_SISTERS_MEG,    // purple sister, circles Link with decoys
    EN_PO_SISTERS_JOELLE, // red sister, hides in portraits
    EN_PO_SISTERS_BETH,   // blue sister, hides in portraits
    EN_PO_SISTERS_AMY,    // green sister, hides in block puzzle
} EnPoSisterNames;

#define EN_PO_SISTERS_PARAM(name) (EN_PO_SISTERS_#name << 8) // param for which sister
#define EN_PO_SISTERS_DECOY_PARAM (1 << 10) // param for Meg's decoys
#define EN_PO_SISTERS_INTRO_PARAM (1 << 12) // param for Poe Sisters when first entering foyer

#endif
