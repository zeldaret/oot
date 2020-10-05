#ifndef _Z_EN_FHG_H_
#define _Z_EN_FHG_H_

#include "ultra64.h"
#include "global.h"

struct EnfHG;

typedef void (*EnfHGActionFunc)(struct EnfHG*, GlobalContext*);

typedef struct EnfHGPainting {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ s16 yRot;
} EnfHGPainting; // size = 0x10;

typedef struct EnfHG {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u8 bossPGintroState;
    /* 0x014D */ u8 bossPGinPainting;
    /* 0x014E */ u8 killActor;
    /* 0x014F */ u8 fhgFireKillWarp;
    /* 0x0150 */ Vec3f cameraEye;
    /* 0x015C */ Vec3f cameraAt;
    /* 0x0168 */ Vec3f cameraEyeVel;
    /* 0x0174 */ Vec3f cameraAtVel;
    /* 0x0180 */ Vec3f hoofSfxPos;
    /* 0x018C */ Vec3f inPaintingPos;
    /* 0x0198 */ f32 inPaintingVelX;
    /* 0x019C */ f32 inPaintingVelZ;
    /* 0x0198 */ f32 damageSpeedMod;
    /* 0x01A4 */ f32 approachRate;
    /* 0x01A8 */ f32 cameraSpeedMod;
    /* 0x01AC */ f32 cameraPanZ;
    /* 0x01B0 */ char unk_1B0[0x10];
    /* 0x01C0 */ s16 gallopTimer;
    /* 0x01C2 */ s16 curPainting;
    /* 0x01C4 */ s16 targetPainting;
    /* 0x01C6 */ s16 turnAround;
    /* 0x01C8 */ s16 spawnedWarp;
    /* 0x01CA */ s16 cutsceneState;
    /* 0x01CC */ s16 cutsceneCamera;
    /* 0x01CE */ char unk_1CE[6];
    /* 0x01D4 */ s16 timers[5];
    /* 0x01DE */ s16 hitTimer;
    /* 0x01E0 */ s16 turnRot;
    /* 0x01E2 */ char unk_1E2[2];
    /* 0x01E4 */ char unk_1E4[4];
    /* 0x01E8 */ f32 unk_1E8;
    /* 0x01EC */ f32 unk_1EC;
    /* 0x01F0 */ f32 unk_1F0; //These have something to do with fog
    /* 0x01F4 */ f32 unk_1F4;
    /* 0x01F8 */ f32 unk_1F8;
    /* 0x01FC */ EnfHGActionFunc actionFunc;
    /* 0x0200 */ char unk_200[4];
    /* 0x0204 */ PSkinAwb skin;
} EnfHG; // size = 0x0294

extern const ActorInit En_Fhg_InitVars;

#endif
