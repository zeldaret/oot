#ifndef Z_BOSS_GANON_H
#define Z_BOSS_GANON_H

#include "ultra64.h"
#include "global.h"

struct BossGanon;

typedef void (*BossGanonActionFunc)(struct BossGanon*, GlobalContext*);

// // float work buffer before merging
// INDEX 0 /* 0x01C8 */ f32 unk_1C8;
// INDEX 1 /* 0x01CC */ f32 animationLength; // used for many things depending on instance
// INDEX 2 /* 0x01D0 */ f32 unk_1D0;
// INDEX 3 /* 0x01D4 */ f32 unk_1D4; // triforce rgba?
// INDEX 4 /* 0x01D8 */ f32 unk_1D8; 
// INDEX 5 /* 0x01DC */ f32 unk_1DC; 
// INDEX 6 /* 0x01E0 */ f32 unk_1E0; // scale for something
// INDEX 7 /* 0x01E4 */ f32 unk_1E4; // alpha for something
// INDEX 8 /* 0x01E8 */ f32 unk_1E8; // scale for something
// /* 0x01EC */ char unk_1EC[0x10];

typedef enum {
    /* 0 */ FWORK_0,
    /* 1 */ FWORK_1,
    /* 2 */ FWORK_2,
    /* 3 */ FWORK_3,
    /* 4 */ FWORK_4,
    /* 5 */ FWORK_5,
    /* 6 */ FWORK_6,
    /* 7 */ FWORK_7,
    /* 8 */ FWORK_8,
    FWORK_MAX
} GanondorfFwork;

typedef struct BossGanon {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 animBankIndex;
    /* 0x0150 */ SkelAnime skelAnime;
    /* 0x0194 */ BossGanonActionFunc actionFunc;
    /* 0x0198 */ u8 unk_198;
    /* 0x0199 */ u8 unk_199;
    /* 0x019A */ u8 unk_19A;
    /* 0x019B */ char unk_19B[0x1];
    /* 0x019C */ s16 unk_19C; // timer
    /* 0x019E */ u8 unk_19E;
    /* 0x019F */ u8 unk_19F;
    /* 0x01A0 */ s8 unk_1A0;
    /* 0x01A1 */ char unk_1A1[0x1];
    /* 0x01A2 */ s16 unk_1A2;
    /* 0x01A4 */ s16 unk_1A4;
    /* 0x01A6 */ s16 unk_1A6;
    /* 0x01A8 */ s16 unk_1A8;
    /* 0x01AA */ s16 unk_1AA;
    /* 0x01AC */ s16 unk_1AC;
    /* 0x01AE */ s16 unk_1AE;
    /* 0x01B0 */ char unk_1B0[0x6];
    /* 0x01B6 */ s16 timers[5];
    /* 0x01C0 */ u8 unk_1C0; // start reflecting
    /* 0x01C1 */ char unk_1C1[0x1];
    /* 0x01C2 */ s16 unk_1C2;
    /* 0x01C4 */ s16 unk_1C4; // timer?
    /* 0x01C6 */ char unk_1C6[0x2];
    /* 0x01C8 */ f32 fwork[FWORK_MAX];
    /* 0x01EC */ char unk_1EC[0x10];
    /* 0x01FC */ Vec3f unk_1FC;
    /* 0x0208 */ Vec3f unk_208;
    /* 0x0214 */ Vec3f unk_214;
    /* 0x0220 */ Vec3f unk_220;
    /* 0x022C */ Vec3f unk_22C;
    /* 0x0238 */ Vec3f unk_238;
    /* 0x0244 */ char unk_244[0x10];
    /* 0x0254 */ f32 unk_254; // scale for something
    /* 0x0258 */ f32 unk_258;
    /* 0x025C */ u8 unk_25C;
    /* 0x025D */ char unk_25D[0x3];
    /* 0x0260 */ Vec3f unk_260; // hand position?
    /* 0x026C */ s16 unk_26C; // timer?
    /* 0x026E */ char unk_26E[0x2];
    /* 0x0270 */ f32 unk_270;
    /* 0x0274 */ u8 unk_274;
    /* 0x0275 */ char unk_275[0x3];
    /* 0x0278 */ Vec3f unk_278;
    /* 0x0284 */ f32 unk_284;
    /* 0x0288 */ f32 unk_288;
    /* 0x028C */ f32 unk_28C;
    /* 0x0290 */ f32 unk_290;
    /* 0x0294 */ f32 unk_294[15];
    /* 0x02D0 */ f32 unk_2D0;
    /* 0x02D4 */ s16 unk_2D4; // timer
    /* 0x02D6 */ char unk_2D6[0x2];
    /* 0x02D8 */ Vec3f unk_2D8;
    /* 0x02E4 */ u8 unk_2E4;
    /* 0x02E5 */ char unk_2E5[0x1];
    /* 0x02E6 */ s16 unk_2E6; // timer
    /* 0x02E8 */ s16 unk_2E8; // timer
    /* 0x02EC */ Vec3f unk_2EC[15];
    /* 0x03A0 */ char unk_3A0[0x24];
    /* 0x03C4 */ Vec3f unk_3C4[18]; // size not known for sure
    /* 0x049C */ f32 unk_49C[18];
    /* 0x04E4 */ s16 unk_4E4[18];
    /* 0x0508 */ f32 unk_508;
    /* 0x050C */ Vec3f unk_50C;
    /* 0x0518 */ char unk_518[0xF8];
    /* 0x0610 */ ColliderCylinder collider;
    /* 0x065C */ char unk_65C[0x10];
    /* 0x066C */ u8 unk_66C;
    /* 0x066D */ char unk_66D[0x1];
    /* 0x066E */ s16 unk_66E; // timer?
    /* 0x0670 */ f32 unk_670;
    /* 0x0674 */ u32 csTimer;
    /* 0x0678 */ s16 cutsceneState;
    /* 0x067A */ s16 csCamIndex;
    /* 0x067C */ char unk_67C[0x4];
    /* 0x0680 */ Vec3f csCamEye;
    /* 0x068C */ Vec3f csCamAt;
    /* 0x0698 */ char unk_698[0xC];
    /* 0x06A4 */ Vec3f csCamEyeMaxStep;
    /* 0x06B0 */ Vec3f csCamAtMaxStep;
    /* 0x06BC */ Vec3f csCamTargetEye;
    /* 0x06C8 */ char unk_6C8[0xC];
    /* 0x06D4 */ Vec3f csCamTargetAt;
    /* 0x06E0 */ char unk_6E0[0xC];
    /* 0x06EC */ f32 csCamMaxStepScale;
    /* 0x06F0 */ f32 csCamMovementScale;
    /* 0x06F4 */ f32 csCamFov;
    /* 0x06F8 */ char unk_6F8[0xC];
    /* 0x0704 */ f32 unk_704;
    /* 0x0708 */ char unk_708[0xC];
    /* 0x0714 */ f32 unk_714;
    /* 0x0718 */ s16 organAlpha;
    /* 0x071A */ u8 unk_71A;
    /* 0x071B */ u8 unk_71B;
} BossGanon; // size = 0x71C

#endif
