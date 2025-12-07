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
    /* 0x0199 */ u8 sisFlags;  // uses EnPoSisFlags
    /* 0x019A */ s16 sisTimer; // timer used for various situations
    /* 0x019C */ s16 sisVar; // used in different ways, Meg counts her decoys with this
    /* 0x019E */ Vec3s jointTable[12];
    /* 0x01E6 */ Vec3s morphTable[12];
    /* 0x022E */ Color_RGBA8 sisColor; // (rgb) for eyes, (a) for rest of body
    /* 0x0234 */ Vec3f torchPos[8]; // positions of the torch flame and smaller circling flames
    /* 0x0294 */ f32 circleDist; // distance of Meg when circling Link.
    /* 0x0298 */ LightNode* lightNode;
    /* 0x029C */ LightInfo lightInfo;
    /* 0x02AC */ ColliderCylinder collider;
    /* 0x02F8 */ MtxF unk_2F8;
} EnPoSisters; // size = 0x0338

typedef enum EnPoSisNames{
    EN_POESIS_MEG,    // purple sister, circles Link with decoys
    EN_POESIS_JOELLE, // red sister, hides in portraits
    EN_POESIS_BETH,   // blue sister, hides in portraits
    EN_POESIS_AMY,    // green sister, hides in block puzzle
} EnPoSisNames;

typedef enum EnPoSisFlags{
    EN_POESIS_FLAG_ACCOL=1<<0, // set AC collision
    EN_POESIS_FLAG_ROTATE=1<<1, // set shape.rot.y to world.rot.y
    EN_POESIS_FLAG_VANISH=1<<2, // tick vanishTimer, then disappear if 0.
    EN_POESIS_FLAG_HOVER=1<<3, // hover up and down a few inches
    EN_POESIS_FLAG_BGCHECK=1<<4,// BGCheck floors and walls
    EN_POESIS_FLAG_TORCH=1<<5, // manipulate torch flames
    EN_POESIS_FLAG_SPIN=1<<6, // the real Meg spins as a tell
    EN_POESIS_FLAG_NOMTXF=1<<7, //don't read or write unk_2F8
} EnPoSisFlags;

#define EN_POESIS_DECOY_PARAM 1<<10 // param for Meg's decoys
#define EN_POESIS_INTRO_PARAM 1<<12 // param for Poe Sisters when entering foyer

#endif
