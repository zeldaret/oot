#ifndef _Z_EN_GANON_MANT_H_
#define _Z_EN_GANON_MANT_H_

#include "ultra64.h"
#include "global.h"

struct EnGanonMant;

#define GANON_MANT_NUM_JOINTS 12
#define GANON_MANT_NUM_STRANDS 12

typedef struct {
    /* 0x000 */ Vec3f root;                              // root positions along the collar
    /* 0x00C */ Vec3f joints[GANON_MANT_NUM_JOINTS];     // "joints" for deforming the cloak, stemming from root and going down the cloak
    /* 0x090 */ Vec3f rotations[GANON_MANT_NUM_JOINTS];  // normal vector rotations, x and y only
    /* 0x120 */ Vec3f velocities[GANON_MANT_NUM_JOINTS]; // velocities clamped between [-5.0, 5.0], calculated as pointwise differences, tends to decelerate
    /* 0x1B0 */ u8 torn[GANON_MANT_NUM_JOINTS];          // whether the joint is torn?
} MantStrand; // size = 0x1C8

typedef struct EnGanonMant {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ MantStrand strands[GANON_MANT_NUM_STRANDS];
    /* 0x16AC */ f32 minY; // minimum Y value strand joints can have, for emulating floor "collision"
    /* 0x16B0 */ f32 backPush; // larger values push the cape further outwards, negative is away from the actor
    /* 0x16B4 */ f32 backSwayMagnitude; // magnitude of backwards/forwards swaying
    /* 0x16B8 */ f32 sideSwayMagnitude; // magnitude of sideways swaying
    /* 0x16BC */ f32 attachRightArmTimer; // timer for the duration of which the cape is attached to right forearm and left shoulder
    /* 0x16C0 */ f32 attachLeftArmTimer; // timer for the duration of which the cape is attached to left forearm and right shoulder
    /* 0x16C4 */ f32 attachShouldersTimer; // timer for the duration of which the cape is attached to both shoulders
    /* 0x16C8 */ f32 gravity; // strand gravity
    /* 0x16CC */ f32 baseYaw;
    /* 0x16D0 */ f32 minDist; // closests distance the cape can get to the attached actor without being pushed away
    /* 0x16D4 */ Vec3f rightForearmPos;
    /* 0x16E0 */ Vec3f leftForearmPos;
    /* 0x16EC */ Vec3f rightShoulderPos;
    /* 0x16F8 */ Vec3f leftShoulderPos;
    /* 0x1704 */ u8 tearTimer; // tear the cloak for x many frames
    /* 0x1705 */ u8 updateHasRun;
    /* 0x1706 */ u8 frameTimer;
} EnGanonMant; // size = 0x1708

extern const ActorInit En_Ganon_Mant_InitVars;

#endif
