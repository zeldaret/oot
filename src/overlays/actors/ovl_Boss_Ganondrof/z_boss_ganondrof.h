#ifndef _Z_BOSS_GANONDROF_H_
#define _Z_BOSS_GANONDROF_H_

#include <ultra64.h>
#include <global.h>

struct BossGanondrof;

typedef void (*BossGanondrofActionFunc)(struct BossGanondrof*, GlobalContext*);

typedef struct BossGanondrof {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ BossGanondrofActionFunc actionFunc;
    /* 0x0194 */ s16 floatAndParticleTimer;
    /* 0x0196 */ char unk_196[0x6]; // Unusued?
    /* 0x019C */ s16 unk_19C; // Unused?
    /* 0x019E */ s16 unk_19E; // Unused?
    /* 0x01A0 */ s16 invincibilityTimer;
    /* 0x01A2 */ s16 slowPitch;
    /* 0x01A4 */ s16 unk_1A4; // Something to do with distinguishing fast and slow pitch animations
    /* 0x01A6 */ s16 throwCount;
    /* 0x01A8 */ s16 cutsceneMaskOff;
    /* 0x01A8 */ s16 unk_1AA; // Has to do with opening cutscene. Probably set by horse
    /* 0x01AC */ s16 chargeParticleAngle;
    /* 0x01AE */ s16 unk_1AE;
    /* 0x01B0 */ s16 unk_1B0;
    /* 0x01B2 */ s16 unk_1B2; // These are all death cutscene variables
    /* 0x01B4 */ s16 unk_1B4;
    /* 0x01B6 */ s16 unk_1B6;
    /* 0x01B8 */ char unk_1B8[0x4]; // Unused?
    /* 0x01BC */ s16 animationTimer[5];
    /* 0x01C6 */ u8 killActor;
    /* 0x01C7 */ u8 volleyCount;
    /* 0x01C8 */ u8 electricityTimer;
    /* 0x01C9 */ u8 attackMode;
    /* 0x01CA */ u8 returnSuccess;  //Set by fhg_Fire
    /* 0x01CC */ f32 unk_1CC; //Indirectly controls his erratic floating.
    /* 0x01D0 */ f32 unk_1D0;
    /* 0x01D4 */ f32 unk_1D4[4];
    /* 0x01E4 */ char unk_1E4[0x1C];
    /* 0x0200 */ Vec3f unk_200;
    /* 0x020C */ Vec3f unk_20C[1]; // unk size, fix me
    /* 0x0218 */ char unk_218[0xA8];
    /* 0x02C0 */ f32 unk_2C0;
    /* 0x02C4 */ f32 unk_2C4;
    /* 0x02C8 */ f32 unk_2C8;
    /* 0x02CC */ char unk_2CC[0x90];
    /* 0x035C */ s16 unk_35C;
    /* 0x035E */ s16 unk_35E;
    /* 0x0360 */ Vec3f unk_360;
    /* 0x036C */ Vec3f unk_36C;
    /* 0x0378 */ f32 unk_378;
    /* 0x037C */ f32 unk_37C;
    /* 0x0380 */ f32 unk_380;
    /* 0x0384 */ f32 unk_384;
    /* 0x0388 */ f32 unk_388;
    /* 0x038C */ f32 unk_38C;
    /* 0x0390 */ f32 unk_390;
    /* 0x0394 */ f32 unk_394;
    /* 0x0398 */ f32 unk_398;
    /* 0x039C */ f32 unk_39C;
    /* 0x03A0 */ f32 unk_3A0;
    /* 0x03A4 */ f32 unk_3A4;
    /* 0x03A8 */ f32 unk_3A8;
    /* 0x03AC */ f32 unk_3AC;
    /* 0x03B0 */ f32 unk_3B0;
    /* 0x03B4 */ f32 unk_3B4;
    /* 0x03B8 */ f32 unk_3B8;
    /* 0x03BC */ f32 unk_3BC;
    /* 0x03C0 */ f32 unk_3C0;
    /* 0x03C4 */ f32 unk_3C4;
    /* 0x03C8 */ f32 unk_3C8;
    /* 0x03CC */ f32 unk_3CC;
    /* 0x03D0 */ f32 unk_3D0;
    /* 0x03D4 */ f32 unk_3D4;
    /* 0x03D8 */ f32 unk_3D8;
    /* 0x03DC */ f32 unk_3DC[30];
    /* 0x0454 */ f32 unk_454[30];
    /* 0x04CC */ LightNode* unk_4CC;
    /* 0x04D0 */ LightInfo unk_4D0;
    /* 0x04E0 */ ColliderCylinder collider1;
    /* 0x052C */ ColliderCylinder collider2;
} BossGanondrof; // size = 0x0578

extern const ActorInit Boss_Ganondrof_InitVars;

#endif