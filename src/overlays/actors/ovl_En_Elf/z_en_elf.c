/*
 * File: z_en_elf.c
 * Overlay: ovl_En_Elf
 * Description: Fairy
 */

#include "z_en_elf.h"
#include "global.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED | ACTOR_FLAG_UPDATE_DURING_OCARINA)

#define FAIRY_FLAG_TIMED (1 << 8)
#define FAIRY_FLAG_BIG (1 << 9)

void EnElf_Init(Actor* thisx, PlayState* play);
void EnElf_Destroy(Actor* thisx, PlayState* play);
void EnElf_Update(Actor* thisx, PlayState* play);
void EnElf_Draw(Actor* thisx, PlayState* play);
void func_80A053F0(Actor* thisx, PlayState* play);
void func_80A052F4(Actor* thisx, PlayState* play);
void func_80A05208(Actor* thisx, PlayState* play);
void func_80A05188(Actor* thisx, PlayState* play);
void func_80A05114(Actor* thisx, PlayState* play);
void func_80A05040(Actor* thisx, PlayState* play);

// Navi
void func_80A03CF8(EnElf* this, PlayState* play);

// Healing Fairies
void func_80A0329C(EnElf* this, PlayState* play);
void func_80A03610(EnElf* this, PlayState* play);

// Healing Fairies Revive From Death
void func_80A03990(EnElf* this, PlayState* play);
void func_80A03814(EnElf* this, PlayState* play);

// Kokiri Fairies
void func_80A0353C(EnElf* this, PlayState* play);

// Fairy Spawner
void func_80A03604(EnElf* this, PlayState* play);

// Move(?) functions
void func_80A0214C(EnElf* this, PlayState* play);
void func_80A02AA4(EnElf* this, PlayState* play);
void func_80A02A20(EnElf* this, PlayState* play);
void func_80A02B38(EnElf* this, PlayState* play);
void func_80A020A4(EnElf* this, PlayState* play);
void func_80A01FE0(EnElf* this, PlayState* play);

// misc
void func_80A04414(EnElf* this, PlayState* play);
void func_80A0461C(EnElf* this, PlayState* play);
void EnElf_SpawnSparkles(EnElf* this, PlayState* play, s32 sparkleLife);
void EnElf_GetCuePos(Vec3f* dest, PlayState* play, s32 cueChannel);

ActorProfile En_Elf_Profile = {
    /**/ ACTOR_EN_ELF,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnElf),
    /**/ EnElf_Init,
    /**/ EnElf_Destroy,
    /**/ EnElf_Update,
    /**/ EnElf_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 8, ICHAIN_STOP),
};

static Color_RGBAf sInnerColors[] = {
    { 255.0f, 255.0f, 255.0f, 255.0f },
    { 255.0f, 220.0f, 220.0f, 255.0f },
};

static Color_RGBAf sOuterColors[] = {
    { 255.0f, 255.0f, 255.0f, 255.0f },
    { 255.0f, 50.0f, 100.0f, 255.0f },
};

typedef struct FairyColorFlags {
    u8 r, g, b;
} FairyColorFlags;

static FairyColorFlags sColorFlags[] = {
    { 0, 0, 0 }, { 1, 0, 0 }, { 1, 2, 0 }, { 1, 0, 2 }, { 0, 1, 0 }, { 2, 1, 0 }, { 0, 1, 2 },
    { 0, 0, 1 }, { 2, 0, 1 }, { 0, 2, 1 }, { 1, 1, 0 }, { 1, 0, 1 }, { 0, 1, 1 },
};

void EnElf_SetupAction(EnElf* this, EnElfActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void func_80A01C38(EnElf* this, s32 arg1) {
    this->unk_2A8 = arg1;

    switch (this->unk_2A8) {
        case 0:
            this->unk_2AE = 0x400;
            this->unk_2B0 = 0x200;
            this->func_2C8 = func_80A02A20;
            this->unk_2C0 = 100;
            this->unk_2B4 = 5.0f;
            this->unk_2B8 = 20.0f;
            this->skelAnime.playSpeed = 1.0f;
            break;
        case 12:
            this->unk_2AE = 0x400;
            this->unk_2B0 = 0x200;
            this->func_2C8 = func_80A02A20;
            this->unk_2C0 = 100;
            this->unk_2B4 = 1.0f;
            this->unk_2B8 = 5.0f;
            this->skelAnime.playSpeed = 1.0f;
            break;
        case 10:
            this->unk_2AE = 0x400;
            this->unk_2B0 = 0;
            this->func_2C8 = func_80A02A20;
            this->unk_2B8 = 0.0f;
            this->unk_2B4 = 5.0f;
            this->skelAnime.playSpeed = 1.0f;
            break;
        case 9:
            this->unk_2AE = 0x1000;
            this->unk_2B0 = 0x200;
            this->func_2C8 = func_80A02A20;
            this->unk_2B4 = 3.0f;
            this->unk_2B8 = 10.0f;
            this->skelAnime.playSpeed = 1.0f;
            break;
        case 7:
            this->func_2C8 = func_80A02A20;
            this->unk_2AE = 0x1E;
            this->unk_2C0 = 1;
            this->unk_2B4 = 0.0f;
            this->unk_2B8 = 0.0f;
            this->skelAnime.playSpeed = 1.0f;
            break;
        case 8:
            this->unk_2AE = 0x1000;
            this->unk_2B0 = 0x200;
            this->func_2C8 = func_80A02A20;
            this->unk_2B4 = 0.0f;
            this->unk_2B8 = 0.0f;
            this->skelAnime.playSpeed = 1.0f;
            break;
        case 1:
            this->unk_2AE = 0x1000;
            this->unk_2B0 = 0x800;
            this->func_2C8 = func_80A02A20;
            this->unk_2B4 = 5.0f;
            this->unk_2B8 = 7.5f;
            this->skelAnime.playSpeed = 2.0f;
            break;
        case 2:
            this->unk_2AE = 0x400;
            this->unk_2B0 = 0x1000;
            this->func_2C8 = func_80A02AA4;
            this->unk_2B4 = 10.0f;
            this->unk_2B8 = 20.0f;
            this->skelAnime.playSpeed = 1.0f;
            break;
        case 3:
            this->unk_2B0 = 0x600;
            this->func_2C8 = func_80A02B38;
            this->unk_2B8 = 1.0f;
            this->unk_2B4 = 1.0f;
            this->skelAnime.playSpeed = 1.0f;
            break;
        case 4:
            this->unk_2B0 = 0x800;
            this->func_2C8 = func_80A02B38;
            this->unk_2B4 = 20.0f;
            this->unk_2B8 = 10.0;
            this->skelAnime.playSpeed = 2.0f;
            break;
        case 5:
            this->unk_2B0 = 0x200;
            this->func_2C8 = func_80A02B38;
            this->unk_2B4 = 10.0f;
            this->unk_2B8 = 10.0f;
            this->skelAnime.playSpeed = 0.5f;
            break;
        case 6:
            this->unk_2AE = 0x1000;
            this->unk_2B0 = 0x800;
            this->func_2C8 = func_80A02A20;
            this->unk_2B4 = 60.0f;
            this->unk_2B8 = 20.0f;
            this->skelAnime.playSpeed = 2.0f;
            break;
        case 11:
            this->unk_2AE = 0x400;
            this->unk_2B0 = 0x2000;
            this->func_2C8 = func_80A02A20;
            this->unk_2C0 = 42;
            this->unk_2B4 = 5.0f;
            this->unk_2B8 = 1.0f;
            this->skelAnime.playSpeed = 1.0f;
            break;
    }
}

s32 func_80A01F90(Vec3f* this, Vec3f* arg1, f32 arg2) {
    return SQ(arg2) < (SQ(arg1->x - this->x) + SQ(arg1->z - this->z));
}

void func_80A01FE0(EnElf* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (!func_80A01F90(&this->actor.world.pos, &player->actor.world.pos, 30.0f)) {
        this->unk_2B8 = 0.5f;
    } else {
        this->unk_2B8 = 2.0f;
    }

    if (this->unk_2C0 > 0) {
        this->unk_2C0--;
    } else {
        this->unk_2A8 = 1;
        this->unk_2AC = 0x80;
        this->unk_2B8 = Rand_ZeroFloat(1.0f) + 0.5f;
        this->unk_2B0 = Rand_CenteredFloat(32767.0f);
        this->func_2C8 = func_80A0214C;
    }
}

void func_80A020A4(EnElf* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (func_80A01F90(&this->actor.world.pos, &player->actor.world.pos, 50.0f)) {
        if (this->unk_2C0 > 0) {
            this->unk_2C0--;
        } else {
            this->unk_2A8 = 1;
            this->unk_2AC = 0x80;
            this->unk_2B8 = Rand_ZeroFloat(1.0f) + 0.5f;
            this->unk_2B0 = Rand_CenteredFloat(32767.0f);
            this->func_2C8 = func_80A0214C;
        }
    }
}

void func_80A0214C(EnElf* this, PlayState* play) {
    f32 xzDistToPlayer;

    if (this->unk_2C0 > 0) {
        this->unk_2C0--;
    } else {
        xzDistToPlayer = this->actor.xzDistToPlayer;
        if (xzDistToPlayer < 50.0f) {
            if (Rand_ZeroOne() < 0.2f) {
                this->unk_2A8 = 2;
                this->unk_2AC = 0x400;
                this->unk_2B8 = 2.0f;
                this->func_2C8 = func_80A020A4;
                this->actor.speed = 1.5f;
                this->unk_2C0 = (s16)Rand_ZeroFloat(8.0f) + 4;
            } else {
                this->unk_2C0 = 10;
            }
        } else {
            if (xzDistToPlayer > 150.0f) {
                xzDistToPlayer = 150.0f;
            }

            xzDistToPlayer = ((xzDistToPlayer - 50.0f) * 0.95f) + 0.05f;

            if (Rand_ZeroOne() < xzDistToPlayer) {
                this->unk_2A8 = 3;
                this->unk_2AC = 0x200;
                this->unk_2B8 = (xzDistToPlayer * 2.0f) + 1.0f;
                this->func_2C8 = func_80A01FE0;
                this->unk_2C0 = (s16)Rand_ZeroFloat(16.0f) + 0x10;
            } else {
                this->unk_2C0 = 10;
            }
        }
    }

    if (Rand_ZeroOne() < 0.1f) {
        this->unk_2A8 = 1;
        this->unk_2AC = 0x80;
        this->unk_2B8 = Rand_ZeroFloat(0.5f) + 0.5f;
        this->unk_2B0 = Rand_CenteredFloat(32767.0f);
    }
}

void func_80A0232C(EnElf* this, PlayState* play) {
    if (func_80A01F90(&this->unk_28C, &this->actor.world.pos, 100.0f)) {
        this->unk_2A8 = 0;
        this->unk_2AC = 0x200;
        this->func_2C8 = func_80A0214C;
        this->unk_2B8 = 1.5f;
    } else {
        this->func_2C8(this, play);
    }
}

f32 EnElf_GetColorValue(s32 colorFlag) {
    switch (colorFlag) {
        case 1:
            return Rand_ZeroFloat(55.0f) + 200.0f;
        case 2:
            return Rand_ZeroFloat(255.0f);
        default:
            return 0.0f;
    }
}

void EnElf_Init(Actor* thisx, PlayState* play) {
    EnElf* this = (EnElf*)thisx;
    s32 pad;
    Player* player = GET_PLAYER(play);
    s32 colorConfig;
    s32 i;

    Actor_ProcessInitChain(thisx, sInitChain);
    SkelAnime_Init(play, &this->skelAnime, &gFairySkel, &gFairyAnim, this->jointTable, this->morphTable, 15);
    ActorShape_Init(&thisx->shape, 0.0f, NULL, 15.0f);
    thisx->shape.shadowAlpha = 0xFF;

    Lights_PointGlowSetInfo(&this->lightInfoGlow, thisx->world.pos.x, thisx->world.pos.y, thisx->world.pos.z, 255, 255,
                            255, 0);
    this->lightNodeGlow = LightContext_InsertLight(play, &play->lightCtx, &this->lightInfoGlow);

    Lights_PointNoGlowSetInfo(&this->lightInfoNoGlow, thisx->world.pos.x, thisx->world.pos.y, thisx->world.pos.z, 255,
                              255, 255, 0);
    this->lightNodeNoGlow = LightContext_InsertLight(play, &play->lightCtx, &this->lightInfoNoGlow);

    this->fairyFlags = 0;
    this->disappearTimer = 600;
    this->unk_2A4 = 0.0f;
    colorConfig = 0;

    switch (thisx->params) {
        case FAIRY_NAVI:
            thisx->room = -1;
            EnElf_SetupAction(this, func_80A03CF8);
            func_80A01C38(this, 0);
            this->fairyFlags |= 4;
            thisx->update = func_80A053F0;
            this->elfMsg = NULL;
            this->unk_2C7 = 0x14;

            if ((gSaveContext.save.info.playerData.naviTimer >= 25800) ||
                (gSaveContext.save.info.playerData.naviTimer < 3000)) {
                gSaveContext.save.info.playerData.naviTimer = 0;
            }
            break;
        case FAIRY_REVIVE_BOTTLE:
            colorConfig = -1;
            EnElf_SetupAction(this, func_80A03610);
            this->unk_2B8 = Math_Vec3f_DistXZ(&thisx->world.pos, &player->actor.world.pos);
            this->unk_2AC = player->actor.shape.rot.y;
            this->unk_2B0 = -0x1000;
            this->unk_28C.y = thisx->world.pos.y - player->actor.world.pos.y;
            this->unk_2AA = 0;
            this->unk_2B4 = 0.0f;
            break;
        case FAIRY_REVIVE_DEATH:
            colorConfig = -1;
            EnElf_SetupAction(this, func_80A03990);
            this->unk_2B8 = 0.0f;
            this->unk_2AC = player->actor.shape.rot.y;
            this->unk_2B0 = 0;
            this->unk_28C.y = thisx->world.pos.y - player->actor.world.pos.y;
            this->unk_2AA = 0;
            this->unk_2B4 = 7.0f;
            break;
        case FAIRY_HEAL_BIG:
            this->fairyFlags |= FAIRY_FLAG_BIG;
            thisx->shape.shadowDraw = ActorShadow_DrawWhiteCircle;
            FALLTHROUGH;
        case FAIRY_HEAL_TIMED:
            this->fairyFlags |= FAIRY_FLAG_TIMED;
            FALLTHROUGH;
        case FAIRY_HEAL:
            colorConfig = -1;
            EnElf_SetupAction(this, func_80A0329C);
            this->unk_2B4 = Rand_ZeroFloat(10.0f) + 10.0f;
            this->unk_2AA = 0;
            this->unk_2AE = (s16)(Rand_ZeroFloat(1048.0f)) + 0x200;
            this->unk_28C = thisx->world.pos;
            this->unk_2BC = Rand_CenteredFloat(32767.0f);
            this->func_2C8 = func_80A0214C;
            func_80A0232C(this, play);
            this->unk_2C0 = 0;
            this->disappearTimer = 240;
            break;
        case FAIRY_KOKIRI:
            colorConfig = Rand_ZeroFloat(11.99f) + 1.0f;
            EnElf_SetupAction(this, func_80A0353C);
            func_80A01C38(this, 0);
            break;
        case FAIRY_SPAWNER:
            EnElf_SetupAction(this, func_80A03604);
            func_80A01C38(this, 8);

            for (i = 0; i < 8; i++) {
                Actor_Spawn(&play->actorCtx, play, ACTOR_EN_ELF, thisx->world.pos.x, thisx->world.pos.y - 30.0f,
                            thisx->world.pos.z, 0, 0, 0, FAIRY_HEAL);
            }
            break;
        default:
            ASSERT(0, "0", "../z_en_elf.c", 1103);
            break;
    }

    this->unk_2A0 = 3.0f;
    this->innerColor = sInnerColors[0];

    if (colorConfig > 0) {
        this->outerColor.r = EnElf_GetColorValue(sColorFlags[colorConfig].r);
        this->outerColor.g = EnElf_GetColorValue(sColorFlags[colorConfig].g);
        this->outerColor.b = EnElf_GetColorValue(sColorFlags[colorConfig].b);
        this->outerColor.a = 0.0f;
    } else {
        this->innerColor = sInnerColors[-colorConfig];
        this->outerColor = sOuterColors[-colorConfig];
    }
}

void func_80A0299C(EnElf* this, s32 arg1) {
}

void func_80A029A8(EnElf* this, s16 increment) {
    if (this->disappearTimer < 600) {
        this->disappearTimer += increment;
    }
}

void EnElf_Destroy(Actor* thisx, PlayState* play) {
    s32 pad;
    EnElf* this = (EnElf*)thisx;

    LightContext_RemoveLight(play, &play->lightCtx, this->lightNodeGlow);
    LightContext_RemoveLight(play, &play->lightCtx, this->lightNodeNoGlow);
}

void func_80A02A20(EnElf* this, PlayState* play) {
    this->unk_28C.x = Math_SinS(this->unk_2AC) * this->unk_2B8;
    this->unk_28C.y = Math_SinS(this->unk_2AA) * this->unk_2B4;
    this->unk_28C.z = Math_CosS(this->unk_2AC) * this->unk_2B8;
    this->unk_2AC += this->unk_2B0;
    this->unk_2AA += this->unk_2AE;
}

void func_80A02AA4(EnElf* this, PlayState* play) {
    f32 xzScale;

    xzScale = (Math_CosS(this->unk_2AA) * this->unk_2B4) + this->unk_2B8;

    this->unk_28C.x = Math_SinS(this->unk_2AC) * xzScale;
    this->unk_28C.y = 0.0f;
    this->unk_28C.z = Math_CosS(this->unk_2AC) * xzScale;

    this->unk_2AC += this->unk_2B0;
    this->unk_2AA += this->unk_2AE;
}

void func_80A02B38(EnElf* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    this->unk_2AA = (this->unk_2AC * 2) & 0xFFFF;
    this->unk_28C.x = Math_SinS(this->unk_2AC) * this->unk_2B8;
    this->unk_28C.y = Math_SinS(this->unk_2AA) * this->unk_2B4;
    this->unk_28C.z = -Math_SinS(player->actor.shape.rot.y) * this->unk_28C.x;
    this->unk_28C.x = Math_CosS(player->actor.shape.rot.y) * this->unk_28C.x;
    this->unk_2AC += this->unk_2B0;
}

void func_80A02BD8(EnElf* this, Vec3f* targetPos, f32 arg2) {
    f32 yVelTarget;
    f32 yVelDirection;

    yVelTarget = ((targetPos->y + this->unk_28C.y) - this->actor.world.pos.y) * arg2;
    yVelDirection = (yVelTarget >= 0.0f) ? 1.0f : -1.0f;
    yVelTarget = fabsf(yVelTarget);
    yVelTarget = CLAMP(yVelTarget, 0.0f, 20.0f) * yVelDirection;
    Math_StepToF(&this->actor.velocity.y, yVelTarget, 32.0f);
}

void func_80A02C98(EnElf* this, Vec3f* targetPos, f32 arg2) {
    f32 xVelTarget;
    f32 zVelTarget;
    f32 xVelDirection;
    f32 zVelDirection;

    xVelTarget = ((targetPos->x + this->unk_28C.x) - this->actor.world.pos.x) * arg2;
    zVelTarget = ((targetPos->z + this->unk_28C.z) - this->actor.world.pos.z) * arg2;

    xVelDirection = (xVelTarget >= 0.0f) ? 1.0f : -1.0f;
    zVelDirection = (zVelTarget >= 0.0f) ? 1.0f : -1.0f;

    xVelTarget = fabsf(xVelTarget);
    zVelTarget = fabsf(zVelTarget);

    xVelTarget = CLAMP(xVelTarget, 0.0f, 20.0f) * xVelDirection;
    zVelTarget = CLAMP(zVelTarget, 0.0f, 20.0f) * zVelDirection;

    func_80A02BD8(this, targetPos, arg2);
    Math_StepToF(&this->actor.velocity.x, xVelTarget, 1.5f);
    Math_StepToF(&this->actor.velocity.z, zVelTarget, 1.5f);
    Actor_UpdatePos(&this->actor);
}

void func_80A02E30(EnElf* this, Vec3f* targetPos) {
    func_80A02BD8(this, targetPos, 0.2f);
    this->actor.velocity.x = (targetPos->x + this->unk_28C.x) - this->actor.world.pos.x;
    this->actor.velocity.z = (targetPos->z + this->unk_28C.z) - this->actor.world.pos.z;
    Actor_UpdatePos(&this->actor);
    this->actor.world.pos.x = targetPos->x + this->unk_28C.x;
    this->actor.world.pos.z = targetPos->z + this->unk_28C.z;
}

void func_80A02EC0(EnElf* this, Vec3f* targetPos) {
    func_80A02BD8(this, targetPos, 0.2f);
    this->actor.velocity.x = this->actor.velocity.z = 0.0f;
    Actor_UpdatePos(&this->actor);
    this->actor.world.pos.x = targetPos->x + this->unk_28C.x;
    this->actor.world.pos.z = targetPos->z + this->unk_28C.z;
}

void func_80A02F2C(EnElf* this, Vec3f* targetPos) {
    f32 yVelTarget;
    f32 yVelDirection;

    yVelTarget = (((Math_SinS(this->unk_2AA) * this->unk_2B4) + targetPos->y) - this->actor.world.pos.y) * 0.2f;
    yVelDirection = (yVelTarget >= 0.0f) ? 1.0f : -1.0f;
    this->unk_2AA += this->unk_2AE;
    yVelTarget = fabsf(yVelTarget);
    yVelTarget = CLAMP(yVelTarget, 0.0f, 20.0f) * yVelDirection;
    Math_StepToF(&this->actor.velocity.y, yVelTarget, 1.5f);
}

void func_80A03018(EnElf* this, PlayState* play) {
    s32 pad[2];
    Player* player = GET_PLAYER(play);
    s16 targetYaw;
    Vec3f* unk_28C = &this->unk_28C;

    Math_SmoothStepToF(&this->actor.speed, this->unk_2B8, 0.2f, 0.5f, 0.01f);

    switch (this->unk_2A8) {
        case 0:
            targetYaw = Math_Atan2S(-(this->actor.world.pos.z - unk_28C->z), -(this->actor.world.pos.x - unk_28C->x));
            break;

        case 3:
            targetYaw = Math_Atan2S(-(this->actor.world.pos.z - player->actor.world.pos.z),
                                    -(this->actor.world.pos.x - player->actor.world.pos.x));
            break;

        case 2:
            targetYaw = Math_Atan2S(this->actor.world.pos.z - player->actor.world.pos.z,
                                    this->actor.world.pos.x - player->actor.world.pos.x);
            break;

        default:
            targetYaw = this->unk_2B0;
            break;
    }

    Math_SmoothStepToS(&this->unk_2BC, targetYaw, 10, this->unk_2AC, 0x20);
    this->actor.world.rot.y = this->unk_2BC;
    Actor_MoveXZGravity(&this->actor);
}

void func_80A03148(EnElf* this, Vec3f* arg1, f32 arg2, f32 arg3, f32 arg4) {
    f32 xVelTarget;
    f32 zVelTarget;
    f32 xzVelocity;
    f32 clampedXZ;

    xVelTarget = ((arg1->x + this->unk_28C.x) - this->actor.world.pos.x) * arg4;
    zVelTarget = ((arg1->z + this->unk_28C.z) - this->actor.world.pos.z) * arg4;
    arg4 += 0.3f;
    arg3 += 30.0f;

    func_80A02BD8(this, arg1, arg4);

    xzVelocity = sqrtf(SQ(xVelTarget) + SQ(zVelTarget));

    this->actor.speed = clampedXZ = CLAMP(xzVelocity, arg2, arg3);

    if ((xzVelocity != clampedXZ) && (xzVelocity != 0.0f)) {
        xzVelocity = clampedXZ / xzVelocity;
        xVelTarget *= xzVelocity;
        zVelTarget *= xzVelocity;
    }

    Math_StepToF(&this->actor.velocity.x, xVelTarget, 5.0f);
    Math_StepToF(&this->actor.velocity.z, zVelTarget, 5.0f);
    Actor_UpdatePos(&this->actor);
}

void func_80A0329C(EnElf* this, PlayState* play) {
    Player* refActor = GET_PLAYER(play);
    s32 pad;
    Player* player = GET_PLAYER(play);
    f32 heightDiff;

    SkelAnime_Update(&this->skelAnime);

    if (Rand_ZeroOne() < 0.05f) {
        this->unk_2B4 = Rand_ZeroFloat(10.0f) + 10.0f;
        this->unk_2AE = (s16)(Rand_ZeroFloat(1024.0f)) + 0x200;
    }

    func_80A0232C(this, play);
    this->unk_28C.y = player->bodyPartsPos[PLAYER_BODYPART_WAIST].y;
    func_80A02F2C(this, &this->unk_28C);
    func_80A03018(this, play);

    if ((this->unk_2A8 == 2) || (this->unk_2A8 == 3)) {
        EnElf_SpawnSparkles(this, play, 16);
    }

    if (Actor_HasParent(&this->actor, play)) {
        Actor_Kill(&this->actor);
        return;
    }

    if (!Player_InCsMode(play)) {
        heightDiff = this->actor.world.pos.y - refActor->actor.world.pos.y;

        if ((heightDiff > 0.0f) && (heightDiff < 60.0f)) {
            if (!func_80A01F90(&this->actor.world.pos, &refActor->actor.world.pos, 10.0f)) {
                Health_ChangeBy(play, 128);
                if (this->fairyFlags & FAIRY_FLAG_BIG) {
                    Magic_Fill(play);
                }
                this->unk_2B8 = 50.0f;
                this->unk_2AC = refActor->actor.shape.rot.y;
                this->unk_2B0 = -0x1000;
                this->unk_28C.y = 30.0f;
                this->unk_2B4 = 0.0f;
                this->unk_2AA = 0;
                EnElf_SetupAction(this, func_80A03610);
                return;
            }
        }

        if (this->fairyFlags & FAIRY_FLAG_TIMED) {
            if (this->disappearTimer > 0) {
                this->disappearTimer--;
            } else {
                this->disappearTimer--;

                if (this->disappearTimer > -10) {
                    Actor_SetScale(&this->actor, ((this->disappearTimer + 10) * 0.008f) * 0.1f);
                } else {
                    Actor_Kill(&this->actor);
                    return;
                }
            }
        }

        if (!(this->fairyFlags & FAIRY_FLAG_BIG)) {
            // GI_MAX in this case allows the player to catch the actor in a bottle
            Actor_OfferGetItem(&this->actor, play, GI_MAX, 80.0f, 60.0f);
        }
    }
}

void func_80A0353C(EnElf* this, PlayState* play) {
    Vec3f parentPos;
    Actor* parent;

    SkelAnime_Update(&this->skelAnime);
    func_80A02A20(this, play);
    parent = this->actor.parent;

    if ((parent != NULL) && (parent->update != NULL)) {
        parentPos = this->actor.parent->world.pos;
        parentPos.y += ((1500.0f * this->actor.scale.y) + 40.0f);
        func_80A02C98(this, &parentPos, 0.2f);
    } else {
        Actor_Kill(&this->actor);
    }

    this->unk_2BC = Math_Atan2S(this->actor.velocity.z, this->actor.velocity.x);
}

void func_80A03604(EnElf* this, PlayState* play) {
}

void func_80A03610(EnElf* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    SkelAnime_Update(&this->skelAnime);
    Math_SmoothStepToF(&this->unk_2B8, 30.0f, 0.1f, 4.0f, 1.0f);

    this->unk_28C.x = Math_CosS(this->unk_2AC) * this->unk_2B8;
    this->unk_28C.y += this->unk_2B4;

    switch (this->unk_2AA) {
        case 0:
            if (this->unk_2B4 < 2.0f) {
                this->unk_2B4 += 0.1f;
            } else {
                this->unk_2AA++;
            }
            break;
        case 1:
            if (this->unk_2B4 > -1.0f) {
                this->unk_2B4 -= 0.2f;
            }
    }

    this->unk_28C.z = Math_SinS(this->unk_2AC) * -this->unk_2B8;
    this->unk_2AC += this->unk_2B0;
    func_80A02C98(this, &player->actor.world.pos, 0.2f);

    if (this->unk_2B4 < 0.0f) {
        if ((this->unk_28C.y < 20.0f) && (this->unk_28C.y > 0.0f)) {
            Actor_SetScale(&this->actor, (this->unk_28C.y * 0.008f) * 0.05f);
        }
    }

    if (this->unk_28C.y < -10.0f) {
        Actor_Kill(&this->actor);
        return;
    }

    this->unk_2BC = Math_Atan2S(this->actor.velocity.z, this->actor.velocity.x);
    EnElf_SpawnSparkles(this, play, 32);
    Actor_PlaySfx(&this->actor, NA_SE_EV_FIATY_HEAL - SFX_FLAG);
}

void func_80A03814(EnElf* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    SkelAnime_Update(&this->skelAnime);

    if (this->unk_28C.y > 200.0f) {
        Actor_Kill(&this->actor);
        return;
    }

    if (this->unk_2AE >= 0x7E) {
        this->unk_2B8 += 0.1f;
        this->unk_2B4 += 0.5f;
        this->unk_28C.y += this->unk_2B4;
    } else {
        this->unk_2AE++;

        if (this->unk_2B8 < 30.0f) {
            this->unk_2B8 += 0.5f;
        }

        if (this->unk_28C.y > 0.0f) {
            this->unk_28C.y -= 0.7f;
        }
    }

    this->unk_28C.x = Math_CosS(this->unk_2AC) * this->unk_2B8;
    this->unk_28C.z = Math_SinS(this->unk_2AC) * -this->unk_2B8;
    this->unk_2AC += this->unk_2B0;
    func_80A02E30(this, &player->bodyPartsPos[PLAYER_BODYPART_WAIST]);
    this->unk_2BC = Math_Atan2S(this->actor.velocity.z, this->actor.velocity.x);
    EnElf_SpawnSparkles(this, play, 32);
    Actor_PlaySfx(&this->actor, NA_SE_EV_FIATY_HEAL - SFX_FLAG);
}

void func_80A03990(EnElf* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    SkelAnime_Update(&this->skelAnime);

    this->unk_28C.z = 0.0f;
    this->unk_28C.x = 0.0f;
    this->unk_28C.y += this->unk_2B4;
    this->unk_2B4 -= 0.35f;

    if (this->unk_2B4 <= 0.0f) {
        EnElf_SetupAction(this, func_80A03814);
        this->unk_2B0 = 0x800;
        this->unk_2AE = 0;
        this->unk_2B4 = 0.0f;
        this->unk_2B8 = 1.0f;
    }

    func_80A02E30(this, &player->bodyPartsPos[PLAYER_BODYPART_WAIST]);
    Actor_SetScale(&this->actor, (1.0f - (SQ(this->unk_2B4) * SQ(1.0f / 9.0f))) * 0.008f);
    this->unk_2BC = Math_Atan2S(this->actor.velocity.z, this->actor.velocity.x);
    EnElf_SpawnSparkles(this, play, 32);
    Actor_PlaySfx(&this->actor, NA_SE_EV_FIATY_HEAL - SFX_FLAG);
}

void func_80A03AB0(EnElf* this, PlayState* play) {
    if (this->fairyFlags & 4) {
        func_80A04414(this, play);
    }

    SkelAnime_Update(&this->skelAnime);

    if (this->func_2C8 == NULL) {
        ASSERT(0, "0", "../z_en_elf.c", 1725);
    }

    this->func_2C8(this, play);
}

void EnElf_UpdateLights(EnElf* this, PlayState* play) {
    s16 glowLightRadius;

    glowLightRadius = 100;

    if (this->unk_2A8 == 8) {
        glowLightRadius = 0;
    }

    if (this->fairyFlags & 0x20) {
        Player* player = GET_PLAYER(play);

        Lights_PointNoGlowSetInfo(&this->lightInfoNoGlow, player->actor.world.pos.x,
                                  (s16)(player->actor.world.pos.y) + 60.0f, player->actor.world.pos.z, 255, 255, 255,
                                  200);
    } else {
        Lights_PointNoGlowSetInfo(&this->lightInfoNoGlow, this->actor.world.pos.x, this->actor.world.pos.y,
                                  this->actor.world.pos.z, 255, 255, 255, -1);
    }

    Lights_PointGlowSetInfo(&this->lightInfoGlow, this->actor.world.pos.x, this->actor.world.pos.y,
                            this->actor.world.pos.z, 255, 255, 255, glowLightRadius);

    this->unk_2BC = Math_Atan2S(this->actor.velocity.z, this->actor.velocity.x);

    Actor_SetScale(&this->actor, this->actor.scale.x);
}

void func_80A03CF8(EnElf* this, PlayState* play) {
    Vec3f nextPos;
    Vec3f prevPos;
    Player* player = GET_PLAYER(play);
    Actor* naviHoverActor;
    f32 xScale;
    f32 distFromPlayerHat;

    func_80A0461C(this, play);
    func_80A03AB0(this, play);

    xScale = 0.0f;

    if ((play->csCtx.state != CS_STATE_IDLE) && (play->csCtx.actorCues[8] != NULL)) {
        EnElf_GetCuePos(&nextPos, play, 8);

        if (play->csCtx.actorCues[8]->id == 5) {
            if (1) {}
            EnElf_SpawnSparkles(this, play, 16);
        }

        prevPos = this->actor.world.pos;

        if (this->unk_2A8 == 0xA) {
            func_80A02EC0(this, &nextPos);
        } else {
            func_80A02C98(this, &nextPos, 0.2f);
        }

        if ((play->sceneId == SCENE_LINKS_HOUSE) && (gSaveContext.sceneLayer == 4)) {
            // play dash sound effect as Navi enters Links house in the intro
            if (1) {}
            if (play->csCtx.curFrame == 55) {
                Actor_PlaySfx(&this->actor, NA_SE_EV_FAIRY_DASH);
            }

            // play dash sound effect in intervals as Navi is waking up Link in the intro
            if (this->unk_2A8 == 6) {
                if (this->fairyFlags & 0x40) {
                    if (prevPos.y < this->actor.world.pos.y) {
                        this->fairyFlags &= ~0x40;
                    }
                } else {
                    if (this->actor.world.pos.y < prevPos.y) {
                        this->fairyFlags |= 0x40;
                        Actor_PlaySfx(&this->actor, NA_SE_EV_FAIRY_DASH);
                    }
                }
            }
        }
    } else {
        distFromPlayerHat = Math_Vec3f_DistXYZ(&player->bodyPartsPos[PLAYER_BODYPART_HAT], &this->actor.world.pos);

        switch (this->unk_2A8) {
            case 7:
                func_80A02C98(this, &player->bodyPartsPos[PLAYER_BODYPART_HAT], 1.0f - this->unk_2AE * (1.0f / 30.0f));
                xScale = Math_Vec3f_DistXYZ(&player->bodyPartsPos[PLAYER_BODYPART_HAT], &this->actor.world.pos);

                if (distFromPlayerHat < 7.0f) {
                    this->unk_2C0 = 0;
                    xScale = 0.0f;
                } else if (distFromPlayerHat < 25.0f) {
                    xScale = (xScale - 5.0f) * 0.05f;
                    xScale = 1.0f - xScale;
                    xScale = (1.0f - SQ(xScale)) * 0.008f;
                } else {
                    xScale = 0.008f;
                }
                EnElf_SpawnSparkles(this, play, 16);
                break;
            case 8:
                func_80A02C98(this, &player->bodyPartsPos[PLAYER_BODYPART_HAT], 0.2f);
                this->actor.world.pos = player->bodyPartsPos[PLAYER_BODYPART_HAT];
                func_80A029A8(this, 1);
                break;
            case 11:
                nextPos = player->bodyPartsPos[PLAYER_BODYPART_HAT];
                nextPos.y += 1500.0f * this->actor.scale.y;
                func_80A02E30(this, &nextPos);
                EnElf_SpawnSparkles(this, play, 16);

                if (this->unk_2B8 <= 19.0f) {
                    this->unk_2B8 += 1.0f;
                }

                if (this->unk_2B8 >= 21.0f) {
                    this->unk_2B8 -= 1.0f;
                }

                if (this->unk_2C0 < 0x20) {
                    this->unk_2B0 = (this->unk_2C0 * 0xF0) + 0x200;
                    func_80A0299C(this, 1);
                }
                break;
            case 12:
                nextPos = GET_ACTIVE_CAM(play)->eye;
                nextPos.y += (-2000.0f * this->actor.scale.y);
                func_80A03148(this, &nextPos, 0.0f, 20.0f, 0.2f);
                break;
            default:
                func_80A029A8(this, 1);
                nextPos = play->actorCtx.attention.naviHoverPos;
                nextPos.y += (1500.0f * this->actor.scale.y);
                naviHoverActor = play->actorCtx.attention.naviHoverActor;

                if (naviHoverActor != NULL) {
                    func_80A03148(this, &nextPos, 0.0f, 20.0f, 0.2f);

                    if (this->actor.speed >= 5.0f) {
                        EnElf_SpawnSparkles(this, play, 16);
                    }
                } else {
                    if ((this->timer % 32) == 0) {
                        this->unk_2A0 = Rand_ZeroFloat(7.0f) + 3.0f;
                    }

                    if (this->fairyFlags & 2) {
                        if (distFromPlayerHat < 30.0f) {
                            this->fairyFlags ^= 2;
                        }

                        func_80A03148(this, &nextPos, 0.0f, 20.0f, 0.2f);
                        EnElf_SpawnSparkles(this, play, 16);
                    } else {
                        if (distFromPlayerHat > 100.0f) {
                            this->fairyFlags |= 2;

                            if (this->unk_2C7 == 0) {
                                Actor_PlaySfx(&this->actor, NA_SE_EV_FAIRY_DASH);
                            }

                            this->unk_2C0 = 0x64;
                        }
                        func_80A03148(this, &nextPos, 0.0f, this->unk_2A0, 0.2f);
                    }
                }
                break;
        }
    }

    if (this->unk_2A8 == 7) {
        this->actor.scale.x = xScale;
    } else if (this->unk_2A8 == 8) {
        this->actor.scale.x = 0.0f;
    } else {
        Math_SmoothStepToF(&this->actor.scale.x, 0.008f, 0.3f, 0.00080000004f, 0.000080000005f);
    }

    EnElf_UpdateLights(this, play);
}

void EnElf_ChangeColor(Color_RGBAf* dest, Color_RGBAf* newColor, Color_RGBAf* curColor, f32 rate) {
    Color_RGBAf rgbaDiff;

    rgbaDiff.r = (newColor->r - curColor->r);
    rgbaDiff.g = (newColor->g - curColor->g);
    rgbaDiff.b = (newColor->b - curColor->b);
    rgbaDiff.a = (newColor->a - curColor->a);

    dest->r += (rgbaDiff.r * rate);
    dest->g += (rgbaDiff.g * rate);
    dest->b += (rgbaDiff.b * rate);
    dest->a += (rgbaDiff.a * rate);
}

void func_80A04414(EnElf* this, PlayState* play) {
    Actor* naviHoverActor = play->actorCtx.attention.naviHoverActor;
    Player* player = GET_PLAYER(play);
    f32 transitionRate;
    u16 sfxId;

    if (play->actorCtx.attention.naviMoveProgressFactor != 0.0f) {
        this->unk_2C6 = 0;
        this->unk_29C = 1.0f;

        if (this->unk_2C7 == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EV_FAIRY_DASH);
        }

    } else {
        if (this->unk_2C6 == 0) {
            if ((naviHoverActor == NULL) ||
                (Math_Vec3f_DistXYZ(&this->actor.world.pos, &play->actorCtx.attention.naviHoverPos) < 50.0f)) {
                this->unk_2C6 = 1;
            }
        } else if (this->unk_29C != 0.0f) {
            if (Math_StepToF(&this->unk_29C, 0.0f, 0.25f) != 0) {
                this->innerColor = play->actorCtx.attention.naviInnerColor;
                this->outerColor = play->actorCtx.attention.naviOuterColor;
            } else {
                transitionRate = 0.25f / this->unk_29C;
                EnElf_ChangeColor(&this->innerColor, &play->actorCtx.attention.naviInnerColor, &this->innerColor,
                                  transitionRate);
                EnElf_ChangeColor(&this->outerColor, &play->actorCtx.attention.naviOuterColor, &this->outerColor,
                                  transitionRate);
            }
        }
    }

    if (this->fairyFlags & 1) {
        if ((naviHoverActor == NULL) || (player->focusActor == NULL)) {
            this->fairyFlags ^= 1;
        }
    } else {
        if ((naviHoverActor != NULL) && (player->focusActor != NULL)) {
            if (naviHoverActor->category == ACTORCAT_NPC) {
                sfxId = NA_SE_VO_NAVY_HELLO;
            } else {
                sfxId = (naviHoverActor->category == ACTORCAT_ENEMY) ? NA_SE_VO_NAVY_ENEMY : NA_SE_VO_NAVY_HEAR;
            }

            if (this->unk_2C7 == 0) {
                Actor_PlaySfx(&this->actor, sfxId);
            }

            this->fairyFlags |= 1;
        }
    }
}

void func_80A0461C(EnElf* this, PlayState* play) {
    s32 temp;
    Actor* naviHoverActor;
    Player* player = GET_PLAYER(play);

    if (play->csCtx.state != CS_STATE_IDLE) {
        if (play->csCtx.actorCues[8] != NULL) {
            switch (play->csCtx.actorCues[8]->id) {
                case 4:
                    temp = 9;
                    break;
                case 3:
                    temp = 6;
                    break;
                case 1:
                    temp = 10;
                    break;
                default:
                    temp = 0;
                    break;
            }
        } else {
            temp = 0;
            this->unk_2C0 = 100;
        }

    } else {
        naviHoverActor = play->actorCtx.attention.naviHoverActor;

        // `R_SCENE_CAM_TYPE` is not a bit field, but this conditional checks for a specific bit.
        // This `& 0x10` check will pass for either `SCENE_CAM_TYPE_FIXED_SHOP_VIEWPOINT`, `SCENE_CAM_TYPE_FIXED`, or
        // `SCENE_CAM_TYPE_SHOOTING_GALLERY`.
        // However, of these three, only `SCENE_CAM_TYPE_FIXED_SHOP_VIEWPOINT` is used with `VIEWPOINT_PIVOT`,
        // so here the bit check is equivalent to checking for `SCENE_CAM_TYPE_FIXED_SHOP_VIEWPOINT`.
        if ((player->stateFlags1 & PLAYER_STATE1_10) ||
            ((R_SCENE_CAM_TYPE & 0x10) && Play_CheckViewpoint(play, VIEWPOINT_PIVOT))) {
            temp = 12;
            this->unk_2C0 = 100;
        } else if (naviHoverActor == NULL || naviHoverActor->category == ACTORCAT_NPC) {
            if (naviHoverActor != NULL) {
                this->unk_2C0 = 100;
                player->stateFlags2 |= PLAYER_STATE2_NAVI_ACTIVE;
                temp = 0;
            } else {
                switch (this->unk_2A8) {
                    case 0:
                        if (this->unk_2C0 != 0) {
                            this->unk_2C0--;
                            temp = 0;
                        } else {
                            if (this->unk_2C7 == 0) {
                                Actor_PlaySfx(&this->actor, NA_SE_EV_NAVY_VANISH);
                            }
                            temp = 7;
                        }
                        break;
                    case 7:
                        if (this->unk_2C0 != 0) {
                            if (this->unk_2AE > 0) {
                                this->unk_2AE--;
                                temp = 7;
                            } else {
                                player->stateFlags2 |= PLAYER_STATE2_NAVI_ACTIVE;
                                temp = 0;
                            }
                        } else {
                            temp = 8;
                            func_80A029A8(this, 10);
                        }
                        break;
                    case 8:
                        temp = 8;
                        break;
                    case 11:
                        temp = this->unk_2A8;
                        if (this->unk_2C0 > 0) {
                            this->unk_2C0--;
                        } else {
                            temp = 0;
                        }
                        break;
                    default:
                        temp = 0;
                        break;
                }
            }
        } else {
            temp = 1;
        }

        switch (temp) {
            case 0:
                if (!(player->stateFlags2 & PLAYER_STATE2_NAVI_ACTIVE)) {
                    temp = 7;
                    if (this->unk_2C7 == 0) {
                        Actor_PlaySfx(&this->actor, NA_SE_EV_NAVY_VANISH);
                    }
                }
                break;
            case 8:
                if (player->stateFlags2 & PLAYER_STATE2_NAVI_ACTIVE) {
                    func_80A0299C(this, 0x32);
                    this->unk_2C0 = 42;
                    temp = 11;
                    if (this->unk_2C7 == 0) {
                        Actor_PlaySfx(&this->actor, NA_SE_EV_FAIRY_DASH);
                    }
                }
                break;
            case 7:
                player->stateFlags2 &= ~PLAYER_STATE2_NAVI_ACTIVE;
                break;
            default:
                player->stateFlags2 |= PLAYER_STATE2_NAVI_ACTIVE;
                break;
        }
    }

    if (temp != this->unk_2A8) {
        func_80A01C38(this, temp);

        if (temp == 11) {
            this->unk_2B8 = Math_Vec3f_DistXZ(&player->bodyPartsPos[PLAYER_BODYPART_HAT], &this->actor.world.pos);
            this->unk_2AC = Math_Vec3f_Yaw(&this->actor.world.pos, &player->bodyPartsPos[PLAYER_BODYPART_HAT]);
        }
    }
}

void EnElf_SpawnSparkles(EnElf* this, PlayState* play, s32 sparkleLife) {
    static Vec3f sparkleVelocity = { 0.0f, -0.05f, 0.0f };
    static Vec3f sparkleAccel = { 0.0f, -0.025f, 0.0f };
    s32 pad;
    Vec3f sparklePos;
    Color_RGBA8 primColor;
    Color_RGBA8 envColor;

    sparklePos.x = Rand_CenteredFloat(6.0f) + this->actor.world.pos.x;
    sparklePos.y = (Rand_ZeroOne() * 6.0f) + this->actor.world.pos.y;
    sparklePos.z = Rand_CenteredFloat(6.0f) + this->actor.world.pos.z;

    primColor.r = this->innerColor.r;
    primColor.g = this->innerColor.g;
    primColor.b = this->innerColor.b;

    envColor.r = this->outerColor.r;
    envColor.g = this->outerColor.g;
    envColor.b = this->outerColor.b;

    EffectSsKiraKira_SpawnDispersed(play, &sparklePos, &sparkleVelocity, &sparkleAccel, &primColor, &envColor, 1000,
                                    sparkleLife);
}

void func_80A04D90(EnElf* this, PlayState* play) {
    s32 pad;
    s32 bgId;

    this->actor.floorHeight = BgCheck_EntityRaycastDown5(play, &play->colCtx, &this->actor.floorPoly, &bgId,
                                                         &this->actor, &this->actor.world.pos);
    this->actor.shape.shadowAlpha = 50;
}

// move to talk to player
void func_80A04DE4(EnElf* this, PlayState* play) {
    Vec3f headCopy;
    Player* player = GET_PLAYER(play);
    Vec3f pos;

    if (this->fairyFlags & 0x10) {
        pos = play->actorCtx.attention.naviHoverPos;

        if ((player->focusActor == NULL) || (&player->actor == player->focusActor) ||
            (&this->actor == player->focusActor)) {
            pos.x = player->bodyPartsPos[PLAYER_BODYPART_HEAD].x + (Math_SinS(player->actor.shape.rot.y) * 20.0f);
            pos.y = player->bodyPartsPos[PLAYER_BODYPART_HEAD].y + 5.0f;
            pos.z = player->bodyPartsPos[PLAYER_BODYPART_HEAD].z + (Math_CosS(player->actor.shape.rot.y) * 20.0f);
        }

        this->actor.focus.pos = pos;
        this->fairyFlags &= ~0x10;
    }

    func_80A03AB0(this, play);
    headCopy = this->actor.focus.pos;

    func_80A03148(this, &headCopy, 0, 20.0f, 0.2f);

    if (this->actor.speed >= 5.0f) {
        EnElf_SpawnSparkles(this, play, 16);
    }

    Math_SmoothStepToF(&this->actor.scale.x, 0.008f, 0.3f, 0.00080000004f, 0.000080000005f);
    EnElf_UpdateLights(this, play);
}

// move after talking to player
void func_80A04F94(EnElf* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    Math_SmoothStepToS(&this->actor.shape.rot.y, this->unk_2BC, 5, 0x1000, 0x400);
    this->timer++;
    Math_StepToF(&this->unk_2A4, 1.0f, 0.05f);
    Environment_AdjustLights(play, SQ(this->unk_2A4), player->actor.projectedPos.z + 780.0f, 0.2f, 0.5f);
}

// ask to talk to saria again
void func_80A05040(Actor* thisx, PlayState* play) {
    EnElf* this = (EnElf*)thisx;

    func_80A04DE4(this, play);

    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
        switch (play->msgCtx.choiceIndex) {
            case 0: // yes
                Message_ContinueTextbox(play, QuestHint_GetSariaTextId(play));
                this->actor.update = func_80A05114;
                break;
            case 1: // no
                Message_CloseTextbox(play);
                this->actor.update = func_80A053F0;
                func_80A01C38(this, 0);
                this->fairyFlags &= ~0x20;
                break;
        }
    }

    func_80A04F94(this, play);
}

void func_80A05114(Actor* thisx, PlayState* play) {
    EnElf* this = (EnElf*)thisx;

    func_80A04DE4(this, play);

    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_ContinueTextbox(play, 0xE3);
        this->actor.update = func_80A05040;
    }

    func_80A04F94(this, play);
}

void func_80A05188(Actor* thisx, PlayState* play) {
    EnElf* this = (EnElf*)thisx;

    func_80A04DE4(this, play);

    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_ContinueTextbox(play, QuestHint_GetSariaTextId(play));
        this->actor.update = func_80A05114;
    }

    func_80A04F94(this, play);
}

// ask to talk to navi
void func_80A05208(Actor* thisx, PlayState* play) {
    s32 naviTextId;
    EnElf* this = (EnElf*)thisx;

    func_80A04DE4(this, play);

    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
        switch (play->msgCtx.choiceIndex) {
            case 0: // yes
                naviTextId = QuestHint_GetNaviTextId(play);

                if (naviTextId != 0) {
                    Message_ContinueTextbox(play, naviTextId);
                } else {
                    Message_ContinueTextbox(play, 0x15F);
                }

                this->actor.update = func_80A052F4;
                break;
            case 1: // no
                Message_CloseTextbox(play);
                this->actor.update = func_80A053F0;
                func_80A01C38(this, 0);
                this->fairyFlags &= ~0x20;
                break;
        }
    }

    func_80A04F94(this, play);
}

// ask to talk to saria
void func_80A052F4(Actor* thisx, PlayState* play) {
    EnElf* this = (EnElf*)thisx;

    func_80A04DE4(this, play);

    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE) {
        if (Message_ShouldAdvance(play)) {
            play->msgCtx.unk_E3F2 = 0xFF;

            switch (play->msgCtx.choiceIndex) {
                case 0: // yes
                    this->actor.update = func_80A05188;
                    Message_ContinueTextbox(play, 0xE2);
                    break;
                case 1: // no
                    this->actor.update = func_80A05208;
                    Message_ContinueTextbox(play, 0xE1);
                    break;
            }
        }
    } else if (Actor_TextboxIsClosing(thisx, play)) {
        this->actor.update = func_80A053F0;
        func_80A01C38(this, 0);
        this->fairyFlags &= ~0x20;
    }

    func_80A04F94(this, play);
}

void func_80A053F0(Actor* thisx, PlayState* play) {
    u8 unk2C7;
    s32 pad;
    Player* player = GET_PLAYER(play);
    EnElf* this = (EnElf*)thisx;

    if (player->naviTextId == 0) {
        if (player->focusActor == NULL) {
#if DEBUG_FEATURES
            if (((gSaveContext.save.info.playerData.naviTimer >= 600) &&
                 (gSaveContext.save.info.playerData.naviTimer <= 3000)) ||
                (nREG(89) != 0))
#else
            if ((gSaveContext.save.info.playerData.naviTimer >= 600) &&
                (gSaveContext.save.info.playerData.naviTimer <= 3000))
#endif
            {
                player->naviTextId = QuestHint_GetNaviTextId(play);

                if (player->naviTextId == 0x15F) {
                    player->naviTextId = 0;
                }
            }
        }
    } else if (player->naviTextId < 0) {
        // trigger dialog instantly for negative message IDs
        thisx->flags |= ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
    }

    if (Actor_TalkOfferAccepted(thisx, play)) {
        func_800F4524(&gSfxDefaultPos, NA_SE_VO_SK_LAUGH, 0x20);
        thisx->focus.pos = thisx->world.pos;

        if (thisx->textId == QuestHint_GetNaviTextId(play)) {
            this->fairyFlags |= 0x80;
            gSaveContext.save.info.playerData.naviTimer = 3001;
        }

        this->fairyFlags |= 0x10;
        this->fairyFlags |= 0x20;
        thisx->update = func_80A052F4;
        func_80A01C38(this, 3);

        if (this->elfMsg != NULL) {
            this->elfMsg->actor.flags |= ACTOR_FLAG_TALK;
        }

        thisx->flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
    } else {
        this->actionFunc(this, play);
        thisx->shape.rot.y = this->unk_2BC;

#if DEBUG_FEATURES
        // `gSaveContext.save.info.sceneFlags[127].chest` (like in the debug string) instead of `HIGH_SCORE(HS_HBA)`
        // matches too, but, with how the `SaveContext` struct is currently defined, it is an out-of-bounds read in the
        // `sceneFlags` array. It is theorized the original `room_inf` (currently `sceneFlags`) was an array of length
        // 128, not broken up like currently into structs. Structs are currently used because they're easier to work
        // with and still match. There is another occurrence of this elsewhere.
        nREG(80) = HIGH_SCORE(HS_HBA);
        if ((nREG(81) != 0) && (HIGH_SCORE(HS_HBA) != 0)) {
            LOG_NUM("z_common_data.memory.information.room_inf[127][ 0 ]", HIGH_SCORE(HS_HBA), "../z_en_elf.c", 2595);
        }
#endif

        if (!Play_InCsMode(play)) {
            if (gSaveContext.save.info.playerData.naviTimer < 25800) {
                gSaveContext.save.info.playerData.naviTimer++;
            } else if (!(this->fairyFlags & 0x80)) {
                gSaveContext.save.info.playerData.naviTimer = 0;
            }
        }
    }

    this->elfMsg = NULL;
    this->timer++;

    if (this->unk_2A4 > 0.0f) {
        Math_StepToF(&this->unk_2A4, 0.0f, 0.05f);
        Environment_AdjustLights(play, SQ(this->unk_2A4) * this->unk_2A4, player->actor.projectedPos.z + 780.0f, 0.2f,
                                 0.5f);
    }

    // temp probably fake match
    unk2C7 = this->unk_2C7;
    if (unk2C7 > 0) {
        this->unk_2C7--;
    }

    if ((this->unk_2C7 == 0) && (play->csCtx.state != CS_STATE_IDLE)) {
        this->unk_2C7 = 1;
    }

    func_80A04D90(this, play);
}

void EnElf_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    EnElf* this = (EnElf*)thisx;

    this->actionFunc(this, play);
    this->actor.shape.rot.y = this->unk_2BC;
    this->timer++;

    if (this->fairyFlags & FAIRY_FLAG_BIG) {
        func_80A04D90(this, play);
    }
}

s32 EnElf_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                           Gfx** gfx) {
    static Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    s32 pad;
    f32 scale;
    Vec3f mtxMult;
    EnElf* this = (EnElf*)thisx;

    if (limbIndex == 8) {
        scale = ((Math_SinS(this->timer * 4096) * 0.1f) + 1.0f) * 0.012f;

        if (this->fairyFlags & FAIRY_FLAG_BIG) {
            scale *= 2.0f;
        }

        scale *= (this->actor.scale.x * 124.99999f);
        Matrix_MultVec3f(&zeroVec, &mtxMult);
        Matrix_Translate(mtxMult.x, mtxMult.y, mtxMult.z, MTXMODE_NEW);
        Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    }

    // do not draw wings for big fairies
    if (this->fairyFlags & FAIRY_FLAG_BIG) {
        if (limbIndex == 4 || limbIndex == 7 || limbIndex == 11 || limbIndex == 14) {
            *dList = NULL;
        }
    }

    return false;
}

void EnElf_Draw(Actor* thisx, PlayState* play) {
    s32 pad;
    f32 alphaScale;
    s32 envAlpha;
    EnElf* this = (EnElf*)thisx;
    s32 pad1;
    Gfx* dListHead;
    Player* player = GET_PLAYER(play);

    if ((this->unk_2A8 != 8) && !(this->fairyFlags & 8)) {
        if (!(player->stateFlags1 & PLAYER_STATE1_20) || (kREG(90) < this->actor.projectedPos.z)) {
            dListHead = GRAPH_ALLOC(play->state.gfxCtx, sizeof(Gfx) * 4);

            OPEN_DISPS(play->state.gfxCtx, "../z_en_elf.c", 2730);

            Gfx_SetupDL_27Xlu(play->state.gfxCtx);

            envAlpha = (this->timer * 50) & 0x1FF;
            envAlpha = (envAlpha > 255) ? 511 - envAlpha : envAlpha;

            alphaScale = this->disappearTimer < 0 ? (this->disappearTimer * (7.0f / 6000.0f)) + 1.0f : 1.0f;

            gSPSegment(POLY_XLU_DISP++, 0x08, dListHead);
            gDPPipeSync(dListHead++);
            gDPSetPrimColor(dListHead++, 0, 0x01, (u8)this->innerColor.r, (u8)this->innerColor.g,
                            (u8)this->innerColor.b, (u8)(this->innerColor.a * alphaScale));

            if (this->fairyFlags & 4) {
                gDPSetRenderMode(dListHead++, G_RM_PASS, G_RM_CLD_SURF2);
            } else {
                gDPSetRenderMode(dListHead++, G_RM_PASS, G_RM_ZB_CLD_SURF2);
            }

            gSPEndDisplayList(dListHead);
            gDPSetEnvColor(POLY_XLU_DISP++, (u8)this->outerColor.r, (u8)this->outerColor.g, (u8)this->outerColor.b,
                           (u8)(envAlpha * alphaScale));
            POLY_XLU_DISP = SkelAnime_Draw(play, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                           EnElf_OverrideLimbDraw, NULL, this, POLY_XLU_DISP);

            CLOSE_DISPS(play->state.gfxCtx, "../z_en_elf.c", 2793);
        }
    }
}

void EnElf_GetCuePos(Vec3f* dest, PlayState* play, s32 cueChannel) {
    Vec3f startPos;
    Vec3f endPos;
    CsCmdActorCue* cue = play->csCtx.actorCues[cueChannel];
    f32 lerp;

    startPos.x = cue->startPos.x;
    startPos.y = cue->startPos.y;
    startPos.z = cue->startPos.z;

    endPos.x = cue->endPos.x;
    endPos.y = cue->endPos.y;
    endPos.z = cue->endPos.z;

    lerp = Environment_LerpWeight(cue->endFrame, cue->startFrame, play->csCtx.curFrame);

    dest->x = ((endPos.x - startPos.x) * lerp) + startPos.x;
    dest->y = ((endPos.y - startPos.y) * lerp) + startPos.y;
    dest->z = ((endPos.z - startPos.z) * lerp) + startPos.z;
}
