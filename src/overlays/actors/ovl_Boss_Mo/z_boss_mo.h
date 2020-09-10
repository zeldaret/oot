#ifndef _Z_BOSS_MO_H_
#define _Z_BOSS_MO_H_

#include <ultra64.h>
#include <global.h>

struct BossMo;

typedef void (*BossMoActionFunc)(struct BossMo*, GlobalContext*);

typedef struct BossMoParticle {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f vel;
    /* 0x18 */ Vec3f accel;
    /* 0x24 */ u8 type;
    /* 0x25 */ u8 timer1;
    /* 0x26 */ u8 stopTimer;
    /* 0x28 */ s16 unk_28; // unused?
    /* 0x2A */ s16 opacity;
    /* 0x2C */ s16 unk_2C;
    /* 0x2E */ s16 unk_2E;
    /* 0x30 */ f32 scale;
    /* 0x34 */ f32 unk_34;
    /* 0x38 */ f32 unk_38;
    /* 0x3C */ Vec3f* unk_3C;
} BossMoParticle; //size = 0x40

typedef struct BossMo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ Actor* otherTent;
    /* 0x0150 */ BossMoActionFunc actionFunc;
    /* 0x0154 */ u8 tent2KillTimer;
    /* 0x0155 */ u8 hitCount;
    /* 0x0156 */ u8 tentSpawnPos;
    /* 0x0158 */ s16 actionState;
    /* 0x015A */ s16 pulseTimer;
    /* 0x015C */ s16 rippleTimer;
    /* 0x015E */ s16 damageFlashTimer;
    /* 0x0160 */ s16 invincibilityTimer;
    /* 0x0162 */ s16 baseTex1x;
    /* 0x0164 */ union{s16 corePos; s16 baseTex1y;};
    /* 0x0166 */ union{s16 drawShadow; s16 baseTex2x;};
    /* 0x0168 */ union{s16 waitUnderwater; s16 baseTex2y;};
    /* 0x016A */ s16 tentWidthIndex;
    /* 0x016C */ s16 tentPulseTimer;
    /* 0x016E */ s16 tentAngle;
    /* 0x0170 */ s16 unk_170;
    /* 0x0172 */ s16 cutIndex;
    /* 0x0174 */ s16 meltIndex;
    /* 0x0176 */ s16 unk_176;
    /* 0x0178 */ s16 mashCounter;
    /* 0x017A */ s16 noBubbles;
    /* 0x017C */ s16 unk_17C;
    /* 0x017E */ s16 timers[5];
    /* 0x0188 */ f32 unk_188;
    /* 0x018C */ f32 unk_18C;
    /* 0x0190 */ f32 unk_190;
    /* 0x0194 */ f32 unk_194;
    /* 0x0198 */ f32 unk_198;
    /* 0x019C */ f32 unk_19C;
    /* 0x01A0 */ f32 unk_1A0;
    /* 0x01A4 */ f32 baseOpacity;
    /* 0x01A8 */ f32 cutScale;
    /* 0x01AC */ f32 waterTex1x;
    /* 0x01B0 */ f32 waterTex1y;
    /* 0x01B4 */ f32 waterTex2x;
    /* 0x01B8 */ f32 waterTex2y;
    /* 0x01BC */ f32 waterLevel;
    /* 0x01C0 */ f32 unk_1C0;
    /* 0x01C4 */ f32 waterTexOpacity;
    /* 0x01C8 */ f32 waterLevelMod;
    /* 0x01CC */ s16 baseBubblesTimer;
    /* 0x01CE */ s16 unk_1CE;
    /* 0x01D0 */ u8 unk_1D0; //unused?
    /* 0x01D1 */ u8 drawActor;
    /* 0x01D2 */ u8 linkHitTimer;
    /* 0x01D4 */ Vec3f targetPos;
    /* 0x01E0 */ f32 tentRippleSize;
    /* 0x01E4 */ PosRot grabPosRot;
    /* 0x01F8 */ f32 tentWidth[300];
    /* 0x06A8 */ Vec3f tentStretch[41]; 
    /* 0x0894 */ Vec3f tentScale[41];
    /* 0x0A80 */ Vec3f tentRipple[41];
    /* 0x0C6C */ Vec3s tentRot[41];
    /* 0x0D64 */ f32 tentMaxAngle;
    /* 0x0D68 */ f32 tentSpeed;
    /* 0x0D6C */ f32 tentPulse;
    /* 0x0D70 */ Vec3f tentPos[41];
    /* 0x0F5C */ f32 cameraZoom;
    /* 0x0F60 */ s16 cutsceneState;
    /* 0x0F62 */ s16 cutsceneCamera;
    /* 0x0F64 */ s16 targetIndex;
    /* 0x0F68 */ Vec3f unk_F68;
    /* 0x0F74 */ Vec3f unk_F74;
    /* 0x0F80 */ Vec3f unk_F80;
    /* 0x0F8C */ char unk_F8C[0x18]; //unused?
    /* 0x0FA4 */ Vec3f unk_FA4;
    /* 0x0FB0 */ Vec3f unk_FB0;
    /* 0x0FBC */ Vec3f unk_FBC;
    /* 0x0FC8 */ Vec3f unk_FC8;
    /* 0x0FD4 */ Vec3f unk_FD4;
    /* 0x0FE0 */ Vec3f unk_FE0;
    /* 0x0FEC */ f32 unk_FEC;
    /* 0x0FF0 */ f32 unk_FF0;
    /* 0x0FF4 */ char unk_FF4[8]; //unused?
    /* 0x0FFC */ f32 unk_FFC;
    /* 0x1000 */ f32 unk_1000;
    /* 0x1004 */ f32 unk_1004;
    /* 0x1008 */ f32 unk_1008;
    /* 0x100C */ f32 unk_100C;
    /* 0x1010 */ Vec3f unk_1010;
    /* 0x101C */ ColliderJntSph collider1;
    /* 0x103C */ ColliderJntSphItem colliderItems[19];
    /* 0x14FC */ ColliderCylinder collider2;
    /* 0x1548 */ char tent2KillTimer8[0x44]; //unused?
} BossMo; // size = 0x158C

extern const ActorInit Boss_Mo_InitVars;

#endif
