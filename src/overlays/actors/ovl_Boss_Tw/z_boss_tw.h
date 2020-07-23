#ifndef _Z_BOSS_TW_H_
#define _Z_BOSS_TW_H_

#include <ultra64.h>
#include <global.h>

struct BossTw;

typedef void (*BossTW_ActionFunc)(struct BossTw* this, GlobalContext* globalCtx);

typedef struct BossTw {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ BossTW_ActionFunc actionFunc;
    /* 0x0150 */ s16 unk_150;
    /* 0x0152 */ s16 unk_152;
    /* 0x0154 */ s16 unk_154;
    /* 0x0156 */ s16 unk_156;
    /* 0x0158 */ s16 unk_158;
    /* 0x015A */ s16 invincibilityTimer;
    /* 0x015C */ s16 fogTimer;
    /* 0x015E */ s16 unk_15E;
    /* 0x0160 */ s16 unk_160;
    /* 0x0162 */ s16 unk_162;
    /* 0x0164 */ s16 unk_164;
    /* 0x0166 */ s16 unk_166;
    /* 0x0168 */ s16 unk_168;
    /* 0x016A */ char unk_16A[0xE];
    /* 0x0178 */ s16 unk_178[5];
    /* 0x0182 */ s16 unk_182;
    /* 0x0184 */ f32 unk_184;
    /* 0x0188 */ f32 unk_188;
    /* 0x018C */ f32 unk_18C;
    /* 0x0190 */ f32 unk_190;
    /* 0x0194 */ f32 unk_194;
    /* 0x0198 */ f32 unk_198;
    /* 0x019C */ f32 unk_19C;
    /* 0x01A0 */ f32 unk_1A0;
    /* 0x01A4 */ f32 unk_1A4;
    /* 0x01A8 */ f32 unk_1A8;
    /* 0x01AC */ f32 unk_1AC;
    /* 0x01B0 */ f32 unk_1B0;
    /* 0x01B4 */ f32 unk_1B4;
    /* 0x01B8 */ f32 unk_1B8;
    /* 0x01BC */ f32 unk_1BC;
    /* 0x01C0 */ f32 unk_1C0;
    /* 0x01C4 */ f32 unk_1C4;
    /* 0x01C8 */ f32 unk_1C8;
    /* 0x01CC */ f32 unk_1CC; // has to do with the floating up anim
    /* 0x01D0 */ f32 unk_1D0;
    /* 0x01D4 */ f32 fogR;
    /* 0x01D8 */ f32 fogG;
    /* 0x01DC */ f32 fogB;
    /* 0x01E0 */ f32 fogMin;
    /* 0x01E4 */ f32 fogMax;
    /* 0x01E8 */ Vec3f blastTailPos[50];
    /* 0x0440 */ s16 unk_440;
    /* 0x0442 */ char unk_442[0x2];
    /* 0x0444 */ Vec3f unk_444;
    /* 0x0450 */ Vec3f unk_450[5];
    /* 0x048C */ Vec3f unk_48C;
    /* 0x0498 */ Vec3f unk_498; // Left hand pos only used for tw
    /* 0x04A4 */ Vec3f unk_4A4; // right hand pos
    /* 0x04B0 */ Vec3f unk_4B0;
    /* 0x04BC */ Vec3f unk_4BC;
    /* 0x04C8 */ f32 unk_4C8;
    /* 0x04CC */ s16 unk_4CC;
    /* 0x04CE */ s16 unk_4CE;
    /* 0x04D0 */ f32 unk_4D0;
    /* 0x04D4 */ f32 unk_4D4;
    /* 0x04D8 */ f32 spawnPortalAlpha;
    /* 0x04DC */ f32 unk_4DC;
    /* 0x04E0 */ f32 spawnPortalScale;
    /* 0x04E4 */ f32 unk_4E4;
    /* 0x04E8 */ f32 unk_4E8;
    /* 0x04EC */ f32 unk_4EC;
    /* 0x04F0 */ f32 unk_4F0;
    /* 0x04F4 */ u8 twinrovaStun; // stuns twinrova when set
    /* 0x04F8 */ f32 unk_4F8;
    /* 0x04FC */ s16 unk_4FC;
    /* 0x04FE */ s16 unk_4FE;
    /* 0x0500 */ Vec3f unk_500;
    /* 0x050C */ Vec3f unk_50C;
    /* 0x0518 */ f32 unk_518;
    /* 0x051C */ f32 unk_51C;
    /* 0x0520 */ f32 unk_520;
    /* 0x0524 */ Vec3s unk_524;
    /* 0x052C */ f32 unk_52C;
    /* 0x0530 */ char unk_530[0xC];
    /* 0x053C */ f32 unk_53C;
    /* 0x0540 */ f32 unk_540;
    /* 0x0544 */ f32 unk_544;
    /* 0x0548 */ f32 unk_548;
    /* 0x054C */ Vec3f unk_54C;
    /* 0x0558 */ Vec3f unk_558;
    /* 0x0564 */ u8 unk_564;
    /* 0x0565 */ u8 unk_565;
    /* 0x0566 */ s16 unk_566;
    /* 0x0568 */ SkelAnime skelAnime;
    /* 0x05AC */ ColliderCylinder collider;
    /* 0x05F8 */ u8 unk_5F8;
    /* 0x05F9 */ u8 unk_5F9;
    /* 0x05FA */ s16 unk_5FA; // camera state?
    /* 0x05FC */ s16 unk_5FC; // cam id? 
    /* 0x05FE */ s16 unk_5FE;
    /* 0x0600 */ Vec3f unk_600; // eye
    /* 0x060C */ Vec3f unk_60C; // at
    /* 0x0618 */ char unk_618[0x88];
    /* 0x06A0 */ f32 unk_6A0;
    /* 0x06A4 */ f32 unk_6A4;
    /* 0x06A8 */ f32 unk_6A8;
    /* 0x06AC */ f32 unk_6AC;
    /* 0x06B0 */ f32 unk_6B0;
} BossTw; // size = 0x06B4

extern const ActorInit Boss_Tw_InitVars;

#endif
