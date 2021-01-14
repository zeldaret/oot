/*
 * File: z_bg_dy_yoseizo.c
 * Overlay: ovl_Bg_Dy_Yoseizo
 * Description: Great Fairy
 */

#include "z_bg_dy_yoseizo.h"
#include "vt.h"
#include "overlays/actors/ovl_Demo_Effect/z_demo_effect.h"

#define FLAGS 0x02000030

#define THIS ((BgDyYoseizo*)thisx)

typedef enum {
    /* 0 */ FAIRY_REWARD_MAGIC,
    /* 1 */ FAIRY_REWARD_DOUBLE_MAGIC,
    /* 2 */ FAIRY_REWARD_DOUBLE_DEFENSE
} BgDyYoseizoRewardType;

typedef enum {
    /* 0 */ FAIRY_SPELL_FARORES_WIND,
    /* 1 */ FAIRY_SPELL_DINS_FIRE,
    /* 2 */ FAIRY_SPELL_BLUE_DIMOND
} BgDyYoseizoSpellType;

void BgDyYoseizo_Init(Actor* thisx, GlobalContext* globalCtx);
void BgDyYoseizo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgDyYoseizo_Update(Actor* thisx, GlobalContext* globalCtx);

// void BgDyYoseizo_SpawnParticles(BgDyYoseizo* this, GlobalContext* globalCtx, s16 type);
// void BgDyYoseizo_Bob(BgDyYoseizo* this, GlobalContext* globalCtx);
void BgDyYoseizo_CheckMagicAcquired(BgDyYoseizo* this, GlobalContext* globalCtx);
void BgDyYoseizo_ChooseType(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_8087328C(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_80873380(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_808734DC(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_8087358C(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_808736A4(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_80873780(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_80873868(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_80873B3C(BgDyYoseizo* this, GlobalContext* globalCtx);
void BgDyYoseizo_TransitionToSpinShrink(BgDyYoseizo* this, GlobalContext* globalCtx);
void BgDyYoseizo_SpinShrink(BgDyYoseizo* this, GlobalContext* globalCtx);
void BgDyYoseizo_Vanish(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_80873EA4(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_80873FD8(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_80874304(BgDyYoseizo* this, GlobalContext* globalCtx);

// s32 BgDyYoseizo_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
void BgDyYoseizo_Draw(Actor* thisx, GlobalContext* globalCtx);
void BgDyYoseizo_ParticleInit(BgDyYoseizo* this, Vec3f* initPos, Vec3f* initVelocity, Vec3f* accel, Color_RGB8* primColor, Color_RGB8* envColor,
                   f32 scale, s16 life, s16 type);
void BgDyYoseizo_ParticleUpdate(BgDyYoseizo* this, GlobalContext* globalCtx);
void BgDyYoseizo_ParticleDraw(BgDyYoseizo* this, GlobalContext* globalCtx);

static s32 unused[] = { 0x0000005D, 0x0000005E, 0x0000005C };

const ActorInit Bg_Dy_Yoseizo_InitVars = {
    ACTOR_BG_DY_YOSEIZO,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_DY_OBJ,
    sizeof(BgDyYoseizo),
    (ActorFunc)BgDyYoseizo_Init,
    (ActorFunc)BgDyYoseizo_Destroy,
    (ActorFunc)BgDyYoseizo_Update,
    NULL,
};

static Color_RGB8 sParticlePrimColors[] = {
    { 255, 255, 255 }, { 255, 255, 100 }, { 100, 255, 100 }, { 255, 100, 100 }, { 255, 255, 170 },
    { 255, 255, 100 }, { 100, 255, 100 }, { 255, 100, 100 }, { 255, 255, 170 },
};

static Color_RGB8 sParticleEnvColors[] = {
    { 155, 255, 255 }, { 255, 255, 100 }, { 100, 255, 100 }, { 255, 100, 100 }, { 255, 100, 255 },
    { 255, 255, 100 }, { 100, 255, 100 }, { 255, 100, 100 }, { 100, 255, 255 },
};

static Vec3f sZeroVector = { 0.0f, 0.0f, 0.0f };

static s16 sDemoEffectLightColors[] = { DEMO_EFFECT_LIGHT_GREEN, DEMO_EFFECT_LIGHT_RED, DEMO_EFFECT_LIGHT_BLUE };

static s16 sExItemTypes[] = { EXITEM_MAGIC_WIND, EXITEM_MAGIC_FIRE, EXITEM_MAGIC_DARK };

static s16 sItemGetFlags[] = { 0x100, 0x200, 0x400 };

static u8 sItemIds[] = { ITEM_FARORES_WIND, ITEM_DINS_FIRE, ITEM_NAYRUS_LOVE };

static u64* sEyeTextures[] = {
    0x06017930, // Open
    0x06018130, // Half
    0x06018930, // Closed
};

static u64* sMouthTextures[] = {
    0x06019130, // Closed
    0x0601A130, // Open
};

extern CutsceneData D_02000130;
extern CutsceneData D_02000160;
extern CutsceneData D_02001020;
extern CutsceneData D_020013E0;
extern CutsceneData D_02001F40;
extern CutsceneData D_020025D0;
extern AnimationHeader D_0600092C; // Giving spell to spin-shrink, arms, leg, hair up
extern AnimationHeader D_06001DF0; // Lounging
extern AnimationHeader D_060031C0; // Upright to Lounging
extern AnimationHeader D_06004344; // Horizontal, giving spell
extern AnimationHeader D_06005810; // Lounging to horizontal
extern u64* D_06005860;
extern UNK_TYPE D_06005868;
extern u64* D_060058D8;
extern AnimationHeader D_06005E60; // Upright, arms out, disappearing after giving magic
extern AnimationHeader D_060069E8; // Blowing kiss: cross-legged to giving magic
extern AnimationHeader D_06007CA8; // Upright, arms forward, giving magic
extern AnimationHeader D_06008698; // Spin-grow to cross-legged
extern FlexSkeletonHeader D_0601C450;
extern AnimationHeader D_0601D514; // Cross-legged, resting on right arm

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/BgDyYoseizo_Init.s")
void BgDyYoseizo_Init(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    BgDyYoseizo* this = THIS;

    this->fountainType = globalCtx->curSpawn;

    if (this->fountainType < 0) {
        this->fountainType = 0;
    }

    this->unk_310 = this->actor.posRot.pos.y;
    this->unk_30C = this->unk_310 + 40.0f;
    this->actor.posRot2.pos = this->actor.posRot.pos;

    if (globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI) {
        // Great Fairy Fountain
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 大妖精の泉 ☆☆☆☆☆ %d\n" VT_RST, globalCtx->curSpawn);
        SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0601C450, &D_06008698, this->jointTable, this->morphTable,
                           28);
    } else {
        // Stone/Jewel Fairy Fountain
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 石妖精の泉 ☆☆☆☆☆ %d\n" VT_RST, globalCtx->curSpawn);
        SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0601C450, &D_060031C0, this->jointTable, this->morphTable,
                           28);
    }
    this->actionFunc = BgDyYoseizo_CheckMagicAcquired;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/BgDyYoseizo_Destroy.s")
void BgDyYoseizo_Destroy(Actor* this, GlobalContext* globalCtx) {
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _80872960.s")
void BgDyYoseizo_SpawnParticles(BgDyYoseizo* this, GlobalContext* globalCtx, s16 type) {
    Vec3f particleInitVelocity;
    Vec3f particleAccel;
    Vec3f particleInitPos;
    Color_RGB8 particlePrimColor;
    Color_RGB8 particleEnvColor;
    f32 spawnPosVariation;
    s32 particleType;
    f32 particleScale;
    s32 i;
    s16 particleLife;

    particleInitVelocity = sZeroVector;

    if (!(this->unk_308 < 0.01f)) {
        spawnPosVariation = this->unk_308 * 3500.0f;
        particleAccel.x = Rand_ZeroOne() - 0.5f;
        particleAccel.y = Rand_ZeroOne() - 0.5f;
        particleAccel.z = Rand_ZeroOne() - 0.5f;
        for (i = 0; i < 2; i++) {
            if (type == 0) {
                particleType = 0;
                particleScale = 0.4f;
                particleLife = 90;
                particleInitPos.x = this->actor.posRot.pos.x;
                particleInitPos.y = this->actor.posRot.pos.y + spawnPosVariation + ((Rand_ZeroOne() - 0.5f) * (spawnPosVariation * 0.5f));
                particleInitPos.z = this->actor.posRot.pos.z + 30.0f;
            } else {
                particleLife = 50;
                particleType = type;
                particleScale = 0.2f;
                particleInitPos.x = this->actor.posRot.pos.x + Rand_CenteredFloat(10.0f);

                if (globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI) {
                    particleInitPos.y =
                        this->actor.posRot.pos.y + spawnPosVariation + 50.0f + ((Rand_ZeroOne() - 0.5f) * (spawnPosVariation * 0.1f));
                    particleInitPos.z = this->actor.posRot.pos.z + 30.0f;
                } else {
                    particleInitPos.y =
                        this->actor.posRot.pos.y + spawnPosVariation - 30.0f + ((Rand_ZeroOne() - 0.5f) * (spawnPosVariation * 0.1f));
                    particleInitPos.z = this->actor.posRot.pos.z + 60.0f;
                }

                if (LINK_IS_ADULT) {
                    particleInitPos.y += 20.0f;
                }
            }

            particlePrimColor.r = sParticlePrimColors[particleType].r;
            particlePrimColor.g = sParticlePrimColors[particleType].g;
            particlePrimColor.b = sParticlePrimColors[particleType].b;
            particleEnvColor.r = sParticleEnvColors[particleType].r;
            particleEnvColor.g = sParticleEnvColors[particleType].g;
            particleEnvColor.b = sParticleEnvColors[particleType].b;
            BgDyYoseizo_ParticleInit(this, &particleInitPos, &particleInitVelocity, &particleAccel, &particlePrimColor, &particleEnvColor, particleScale, particleLife, particleType);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _80872C58.s")
void BgDyYoseizo_Bob(BgDyYoseizo* this, GlobalContext* globalCtx) {
    this->unk_31C = this->unk_30C + this->unk_320;
    Math_ApproachF(&this->actor.posRot.pos.y, this->unk_31C, 0.1f, 10.0f);
    Math_ApproachF(&this->unk_320, 10.0f, 0.1f, 0.5f);
    
    if (globalCtx->csCtx.state == 0) {
        this->actor.velocity.y = Math_SinS(this->unk_324);
    } else {
        this->actor.velocity.y = Math_SinS(this->unk_324) * 0.4f;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _80872D20.s")
void BgDyYoseizo_CheckMagicAcquired(BgDyYoseizo* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, 0x38) != 0) {
        globalCtx->msgCtx.unk_E3EE = 4;
        if (globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI) {
            if ((gSaveContext.magicAcquired == 0) && (this->fountainType != 0)) {
                Actor_Kill(&this->actor);
                return;
            }
        } else if (gSaveContext.magicAcquired == 0) {
            Actor_Kill(&this->actor);
            return;
        }
        func_8002DF54(globalCtx, &this->actor, 1);
        this->actionFunc = BgDyYoseizo_ChooseType;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _80872DE4.s")
void BgDyYoseizo_ChooseType(BgDyYoseizo* this, GlobalContext* globalCtx) {
    s32 givingReward;

    func_8002DF54(globalCtx, &this->actor, 1);
    // Mode
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ もうど ☆☆☆☆☆ %d\n" VT_RST, globalCtx->msgCtx.unk_E3EE);
    givingReward = false;

    if (globalCtx->sceneNum != SCENE_DAIYOUSEI_IZUMI) {
        switch (this->fountainType) {
            case FAIRY_SPELL_FARORES_WIND:
                if (!(gSaveContext.itemGetInf[1] & 0x100)) {
                    givingReward = true;
                }
                break;
            case FAIRY_SPELL_DINS_FIRE:
                if (!(gSaveContext.itemGetInf[1] & 0x200)) {
                    givingReward = true;
                }
                break;
            case FAIRY_SPELL_BLUE_DIMOND:
                if (!(gSaveContext.itemGetInf[1] & 0x400)) {
                    givingReward = true;
                }
                break;
        }
    } else {
        switch (this->fountainType) {
            case FAIRY_REWARD_MAGIC:
                if ((gSaveContext.magicAcquired == 0) || BREG(2)) {
                    // Spin Attack speed UP
                    osSyncPrintf(VT_FGCOL(GREEN) " ☆☆☆☆☆ 回転切り速度ＵＰ ☆☆☆☆☆ \n" VT_RST, &gSaveContext);
                    this->unk_2EA = 1;
                    givingReward = true;
                }
                break;
            case FAIRY_REWARD_DOUBLE_MAGIC:
                if (gSaveContext.doubleMagic == 0) {
                    // Magic Meter doubled
                    osSyncPrintf(VT_FGCOL(YELLOW) " ☆☆☆☆☆ 魔法ゲージメーター倍増 ☆☆☆☆☆ \n" VT_RST, &gSaveContext);
                    this->unk_2EA = 1;
                    givingReward = true;
                }
                break;
            case FAIRY_REWARD_DOUBLE_DEFENSE:
                if (gSaveContext.doubleDefense == 0) {
                    // Damage halved
                    osSyncPrintf(VT_FGCOL(PURPLE) " ☆☆☆☆☆ ダメージ半減 ☆☆☆☆☆ \n" VT_RST, &gSaveContext);
                    this->unk_2EA = 1;
                    givingReward = true;
                }
                break;
        }
    }

    if (givingReward) {
        if (gSaveContext.sceneSetupIndex < 4) {
            if (globalCtx->sceneNum != SCENE_DAIYOUSEI_IZUMI) {
                switch (this->fountainType) {
                    case FAIRY_SPELL_FARORES_WIND:
                        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_02000160);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                    case FAIRY_SPELL_DINS_FIRE:
                        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_02001020);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                    case FAIRY_SPELL_BLUE_DIMOND:
                        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_02001F40);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                }
            } else {
                switch (this->fountainType) {
                    case FAIRY_REWARD_MAGIC:
                        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_02000130);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                    case FAIRY_REWARD_DOUBLE_MAGIC:
                        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_020013E0);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                    case FAIRY_REWARD_DOUBLE_DEFENSE:
                        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_020025D0);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                }
            }
        }
        this->actionFunc = func_80873EA4;
        return;
    }

    globalCtx->envCtx.unk_BF = 2;

    if (globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI) {
        func_800800F8(globalCtx, 0x219B, -99, NULL, 0);
    } else {
        func_800800F8(globalCtx, 0x219C, -99, NULL, 0);
    };

    Audio_PlayActorSound2(&this->actor, NA_SE_EV_GREAT_FAIRY_APPEAR);
    this->actor.draw = BgDyYoseizo_Draw;
    this->actionFunc = func_8087328C;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _8087328C.s")
void func_8087328C(BgDyYoseizo* this, GlobalContext* globalCtx) {
    if (globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI) {
        this->frameCount = Animation_GetLastFrame(&D_06008698);
        Animation_Change(&this->skelAnime, &D_06008698, 1.0f, 0.0f, this->frameCount, 2, -10.0f);
    } else {
        this->frameCount = Animation_GetLastFrame(&D_060031C0);
        Animation_Change(&this->skelAnime, &D_060031C0, 1.0f, 0.0f, this->frameCount, 2, -10.0f);
    }

    Audio_PlayActorSound2(&this->actor, NA_SE_VO_FR_LAUGH_0);
    func_8002DF54(globalCtx, &this->actor, 1);
    this->actionFunc = func_80873380;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _80873380.s")
void func_80873380(BgDyYoseizo* this, GlobalContext* globalCtx) {
    func_8002DF54(globalCtx, &this->actor, 1);
    Math_ApproachF(&this->actor.posRot.pos.y, this->unk_30C, this->unk_314, 100.0f);
    Math_ApproachF(&this->unk_308, 0.035f, this->unk_318, 0.005f);
    Math_ApproachF(&this->unk_314, 0.8f, 0.1f, 0.02f);
    Math_ApproachF(&this->unk_318, 0.2f, 0.03f, 0.05f);
    if (this->unk_308 >= 0.034f) {
        if ((this->actor.shape.rot.y > -8000) && (this->actor.shape.rot.y < 1000)) {
            SkelAnime_Update(&this->skelAnime);
            Math_SmoothStepToS(&this->actor.shape.rot.y, 0, 5, 1000, 0);
            if (fabsf(this->actor.shape.rot.y) < 50.0f) {
                this->actionFunc = func_808734DC;
            }
        } else {
            this->actor.shape.rot.y += 3000;
        }
    } else {
        this->actor.shape.rot.y += 3000;
    }
    BgDyYoseizo_SpawnParticles(this, globalCtx, 0);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _808734DC.s")
void func_808734DC(BgDyYoseizo* this, GlobalContext* globalCtx) {
    f32 frame = this->skelAnime.curFrame;

    func_8002DF54(globalCtx, &this->actor, 1);

    if ((this->frameCount * 1273.0f) <= this->unk_324) {
        this->unk_324 = 0.0f;
    }

    SkelAnime_Update(&this->skelAnime);

    if ((this->frameCount <= frame) && (this->unk_2FC == 0)) {
        this->actionFunc = func_8087358C;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _8087358C.s")
void func_8087358C(BgDyYoseizo* this, GlobalContext* globalCtx) {
    func_8002DF54(globalCtx, &this->actor, (u8)1U);

    if (globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI) {
        this->frameCount = Animation_GetLastFrame(&D_0601D514);
        Animation_Change(&this->skelAnime, &D_0601D514, 1.0f, 0.0f, this->frameCount, 0, -10.0f);
    } else {
        this->frameCount = Animation_GetLastFrame(&D_06001DF0);
        Animation_Change(&this->skelAnime, &D_06001DF0, 1.0f, 0.0f, this->frameCount, 0, -10.0f);
    }

    this->actor.textId = 0xDB;
    this->dialogState = 5;
    func_8010B680(globalCtx, this->actor.textId, NULL);
    BgDyYoseizo_SpawnParticles(this, globalCtx, 0);
    this->actionFunc = func_808736A4;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _808736A4.s")
void func_808736A4(BgDyYoseizo* this, GlobalContext* globalCtx) {
    func_8002DF54(globalCtx, &this->actor, 1);
    this->unk_324 = this->skelAnime.curFrame * 1273.0f;

    if ((this->frameCount * 1273.0f) <= this->unk_324) {
        this->unk_324 = 0.0f;
    }

    SkelAnime_Update(&this->skelAnime);

    if ((this->dialogState == func_8010BDBC(&globalCtx->msgCtx)) && (func_80106BC8(globalCtx) != 0)) {
        func_80106CCC(globalCtx);
        Interface_ChangeAlpha(5);
        this->actionFunc = func_80873780;
    }

    BgDyYoseizo_Bob(this, globalCtx);
    BgDyYoseizo_SpawnParticles(this, globalCtx, 0);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _80873780.s")
void func_80873780(BgDyYoseizo* this, GlobalContext* globalCtx) {
    if (globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI) {
        this->frameCount = Animation_GetLastFrame(&D_060069E8);
        Animation_Change(&this->skelAnime, &D_060069E8, 1.0f, 0.0f, this->frameCount, 2, -10.0f);
    } else {
        this->frameCount = Animation_GetLastFrame(&D_06005810);
        Animation_Change(&this->skelAnime, &D_06005810, 1.0f, 0.0f, this->frameCount, 2, -10.0f);
    }

    Audio_PlayActorSound2(&this->actor, NA_SE_VO_FR_SMILE_0);
    this->mouthState = 1;
    this->actionFunc = func_80873868;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _80873868.s")
void func_80873868(BgDyYoseizo* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 temp_f2 = this->skelAnime.curFrame;
    Vec3f beamPos;
    s16 phi_v0;

    if (this->unk_2FC != 0) {
        this->unk_324 = this->skelAnime.curFrame * 1300.0f;
        if ((this->frameCount * 1300.0f) <= this->unk_324) {
            this->unk_324 = 0.0f;
        }
    }

    SkelAnime_Update(&this->skelAnime);
    if ((this->frameCount <= temp_f2) && (this->unk_2FC == 0)) {
        if (globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI) {
            this->frameCount = Animation_GetLastFrame(&D_06007CA8);
            Animation_Change(&this->skelAnime, &D_06007CA8, 1.0f, 0.0f, this->frameCount, 0, -10.0f);
        } else {
            this->frameCount = Animation_GetLastFrame(&D_06004344);
            Animation_Change(&this->skelAnime, &D_06004344, 1.0f, 0.0f, this->frameCount, 0, -10.0f);
        }
        this->unk_302 = 150;
        this->unk_2FC = 1;
        if (this->unk_2EA == 0) {
            beamPos.x = player->actor.posRot.pos.x;
            beamPos.y = player->actor.posRot.pos.y + 200.0f;
            beamPos.z = player->actor.posRot.pos.z;

            phi_v0 = ((globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI) ? 0 : 1);

            this->beam =
                (EnDyExtra*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_DY_EXTRA,
                                               beamPos.x, beamPos.y, beamPos.z, 0, 0, 0, phi_v0);
        }
    }
    if (this->unk_306 >= 2) {
        this->unk_306--;
    }

    if (this->unk_302 >= 110) {
        this->unk_302--;
    }

    if (this->unk_302 == 110) {
        gSaveContext.healthAccumulator = 0x140;
        Magic_Fill(globalCtx);
        this->unk_306 = 200;
    }

    if (((gSaveContext.healthCapacity == gSaveContext.health) && (gSaveContext.magic == gSaveContext.unk_13F4)) ||
        (this->unk_306 == 1)) {
        this->unk_302--;
        if (this->unk_302 == 90) {
            if (this->unk_2EA == 0) {
                this->beam->unk_152 = 1;
            }
            this->unk_2EA = 0;
        }
    }

    if (this->unk_302 == 1) {
        this->actor.textId = 0xDA;
        this->dialogState = 5;
        func_8010B720(globalCtx, this->actor.textId);
        this->actionFunc = func_80873B3C;
        return;
    }
    BgDyYoseizo_Bob(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _80873B3C.s")
void func_80873B3C(BgDyYoseizo* this, GlobalContext* globalCtx) {
    this->unk_324 = this->skelAnime.curFrame * 1400.0f;

    if (this->unk_324 >= (this->frameCount * 1400.0f)) {
        this->unk_324 = 0.0f;
    }

    SkelAnime_Update(&this->skelAnime);

    if ((this->dialogState == func_8010BDBC(&globalCtx->msgCtx)) && (func_80106BC8(globalCtx) != 0)) {
        func_80106CCC(globalCtx);
        this->mouthState = 0;
        this->actionFunc = BgDyYoseizo_TransitionToSpinShrink;
        func_8005B1A4(ACTIVE_CAM);
    }

    BgDyYoseizo_Bob(this, globalCtx);
    BgDyYoseizo_SpawnParticles(this, globalCtx, 0);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _80873C14.s")
void BgDyYoseizo_TransitionToSpinShrink(BgDyYoseizo* this, GlobalContext* globalCtx) {
    if (globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI) {
        this->frameCount = Animation_GetLastFrame(&D_06005E60);
        Animation_Change(&this->skelAnime, &D_06005E60, 1.0f, 0.0f, this->frameCount, 2, -10.0f);
    } else {
        this->frameCount = Animation_GetLastFrame(&D_0600092C);
        Animation_Change(&this->skelAnime, &D_0600092C, 1.0f, 0.0f, this->frameCount, 2, -10.0f);
    }

    this->vanishTimer = 5;
    this->unk_318 = 0.0f;
    this->unk_314 = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_VO_FR_LAUGH_0);
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_GREAT_FAIRY_VANISH);
    this->actionFunc = BgDyYoseizo_SpinShrink;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _80873D14.s")
void BgDyYoseizo_SpinShrink(BgDyYoseizo* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (this->vanishTimer == 0) {
        if (this->unk_308 < 0.003f) {
            this->vanishTimer = 30;
            this->actionFunc = BgDyYoseizo_Vanish;
            return;
        }
        Math_ApproachF(&this->actor.posRot.pos.y, this->unk_310, this->unk_314, 100.0f);
        Math_ApproachZeroF(&this->unk_308, this->unk_318, 0.005f);
        Math_ApproachF(&this->unk_314, 0.8f, 0.1f, 0.02f);
        Math_ApproachF(&this->unk_318, 0.2f, 0.03f, 0.05f);
        this->actor.shape.rot.y += 3000;
        BgDyYoseizo_SpawnParticles(this, globalCtx, 0);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _80873E04.s")
void BgDyYoseizo_Vanish(BgDyYoseizo* this, GlobalContext* globalCtx) {
    Actor* findOcarinaSpot;

    if (this->vanishTimer == 0) {
        func_8002DF54(globalCtx, &this->actor, 7);
        globalCtx->envCtx.unk_BF = 0;
        findOcarinaSpot = globalCtx->actorCtx.actorList[ACTORTYPE_PROP].first;

        while (findOcarinaSpot != NULL) {
            if (findOcarinaSpot->id != ACTOR_EN_OKARINA_TAG) {
                findOcarinaSpot = findOcarinaSpot->next;
                continue;
            }
            Actor_Kill(findOcarinaSpot);
            break;
        }

        Flags_UnsetSwitch(globalCtx, 0x38);
        Actor_Kill(&this->actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _80873EA4.s")
void func_80873EA4(BgDyYoseizo* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.state != 0) {
        if ((globalCtx->csCtx.npcActions[0] != NULL) && (globalCtx->csCtx.npcActions[0]->action == 2)) {
            this->actor.draw = BgDyYoseizo_Draw;
            func_8002DF54(globalCtx, &this->actor, 1);
            this->unk_2FE = 0;

            if (globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI) {
                this->frameCount = Animation_GetLastFrame(&D_06008698);
                Animation_Change(&this->skelAnime, &D_06008698, 1.0f, 0.0f, this->frameCount, 2, -10.0f);
            } else {
                this->frameCount = Animation_GetLastFrame(&D_060031C0);
                Animation_Change(&this->skelAnime, &D_060031C0, 1.0f, 0.0f, this->frameCount, 2, -10.0f);
            }

            Audio_PlayActorSound2(&this->actor, NA_SE_EV_GREAT_FAIRY_APPEAR);
            this->actionFunc = func_80873FD8;
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _80873FD8.s")
void func_80873FD8(BgDyYoseizo* this, GlobalContext* globalCtx) {
    f32 temp_f0 = this->skelAnime.curFrame;

    if (this->unk_2FE == 0) {
        Math_ApproachF(&this->actor.posRot.pos.y, this->unk_30C, this->unk_314, 100.0f);
        Math_ApproachF(&this->unk_308, 0.035f, this->unk_318, 0.005f);
        Math_ApproachF(&this->unk_314, 0.8f, 0.1f, 0.02f);
        Math_ApproachF(&this->unk_318, 0.2f, 0.03f, 0.05f);
        if (this->unk_308 >= 0.034f) {
            if ((this->actor.shape.rot.y > -8000) && (this->actor.shape.rot.y < 1000)) {
                SkelAnime_Update(&this->skelAnime);
                Math_ApproachS(&this->actor.shape.rot.y, 0, 5, 1000);
                if (fabsf(this->actor.shape.rot.y) < 50.0f) {
                    this->unk_2FE = 1;
                }
            } else {
                this->actor.shape.rot.y += 3000;
            }
        } else {
            this->actor.shape.rot.y += 3000;
        }
    } else {
        SkelAnime_Update(&this->skelAnime);

        if ((this->frameCount <= temp_f0) && (this->unk_2FC == 0)) {
            if (globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI) {
                this->frameCount = Animation_GetLastFrame(&D_0601D514);
                Animation_Change(&this->skelAnime, &D_0601D514, 1.0f, 0.0f, this->frameCount, 0, -10.0f);
            } else {
                this->frameCount = Animation_GetLastFrame(&D_06001DF0);
                Animation_Change(&this->skelAnime, &D_06001DF0, 1.0f, 0.0f, this->frameCount, 0, -10.0f);
            }
            this->unk_2FC = 1;
        }

        if (globalCtx->csCtx.state != 0) {
            if ((globalCtx->csCtx.npcActions[0] != NULL) && (globalCtx->csCtx.npcActions[0]->action == 3)) {
                this->unk_2FC = 0;
                this->unk_2FE = this->unk_2FC;
                if (globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI) {
                    this->frameCount = Animation_GetLastFrame(&D_060069E8);
                    Animation_Change(&this->skelAnime, &D_060069E8, 1.0f, 0.0f, this->frameCount, 2, -10.0f);
                } else {
                    this->frameCount = Animation_GetLastFrame(&D_06005810);
                    Animation_Change(&this->skelAnime, &D_06005810, 1.0f, 0.0f, this->frameCount, 2, -10.0f);
                }
                this->mouthState = 1;
                this->actionFunc = func_80874304;
            }
        }
    }
    BgDyYoseizo_SpawnParticles(this, globalCtx, 0);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _80874304.s")
void func_80874304(BgDyYoseizo* this, GlobalContext* globalCtx) {
    f32 temp_f2 = this->skelAnime.curFrame;
    Player* player = PLAYER;
    s16 actionIndex;
    s16 demoEffectParams;
    Vec3f itemPos;

    if (this->unk_2FC != 0) {
        this->unk_324 = this->skelAnime.curFrame * 1400.0f;
        if ((this->frameCount * 1400.0f) <= this->unk_324) {
            this->unk_324 = 0.0f;
        }
    }
    SkelAnime_Update(&this->skelAnime);

    if ((this->frameCount <= temp_f2) && (this->unk_2FC == 0)) {
        if (globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI) {
            this->frameCount = Animation_GetLastFrame(&D_06007CA8);
            Animation_Change(&this->skelAnime, &D_06007CA8, 1.0f, 0.0f, this->frameCount, 0, -10.0f);
        } else {
            this->frameCount = Animation_GetLastFrame(&D_06004344);
            Animation_Change(&this->skelAnime, &D_06004344, 1.0f, 0.0f, this->frameCount, 0, -10.0f);
        }
        this->unk_2FC = 1;
    }

    if (globalCtx->csCtx.npcActions[0]->action == 0xD) {
        this->actionFunc = BgDyYoseizo_TransitionToSpinShrink;
        return;
    }

    if ((globalCtx->csCtx.npcActions[0]->action >= 4) && (globalCtx->csCtx.npcActions[0]->action < 7)) {
        actionIndex = globalCtx->csCtx.npcActions[0]->action - 4;
        if (globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI) {
            actionIndex++;
            BgDyYoseizo_SpawnParticles(this, globalCtx, actionIndex);

        } else if (this->unk_2E4 == 0) {
            demoEffectParams = ((s16)(sDemoEffectLightColors[actionIndex] << 0xC) | 0x12);
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_EFFECT, this->actor.posRot.pos.x,
                        this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, (s32)demoEffectParams);
            this->unk_2E4 = 1;
        }
    } else {
        BgDyYoseizo_SpawnParticles(this, globalCtx, 0);
    }

    if ((globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI) && (globalCtx->csCtx.npcActions[0]->action >= 0xA) &&
        (globalCtx->csCtx.npcActions[0]->action < 0xD)) {
        actionIndex = globalCtx->csCtx.npcActions[0]->action - 0xA;

        switch (actionIndex) {
            case FAIRY_REWARD_MAGIC:
                gSaveContext.magicAcquired = true;
                gSaveContext.unk_13F6 = 0x30;
                Interface_ChangeAlpha(9);
                break;
            case FAIRY_REWARD_DOUBLE_MAGIC:
                if (!(gSaveContext.magicAcquired)) {
                    gSaveContext.magicAcquired = true;
                }
                gSaveContext.doubleMagic = true;
                gSaveContext.unk_13F6 = 0x60;
                gSaveContext.magicLevel = 0;
                Interface_ChangeAlpha(9);
                break;
            case FAIRY_REWARD_DOUBLE_DEFENSE:
                gSaveContext.doubleDefense = true;
                Interface_ChangeAlpha(9);
                break;
        }

        if (!(this->unk_2E6)) {
            gSaveContext.healthAccumulator = 0x140;
            this->unk_2E6 = true;
            if (actionIndex == 2) {
                Magic_Fill(globalCtx);
            }
        }
    }

    if ((globalCtx->sceneNum != SCENE_DAIYOUSEI_IZUMI) && (globalCtx->csCtx.npcActions[0]->action >= 0xE) &&
        (globalCtx->csCtx.npcActions[0]->action < 0x11)) {
        actionIndex = globalCtx->csCtx.npcActions[0]->action - 0xE;

        if (this->unk_300 == 0) {
            itemPos.x = player->actor.posRot.pos.x;
            itemPos.y = ((LINK_IS_ADULT) ? player->actor.posRot.pos.y + 73.0f : player->actor.posRot.pos.y + 53.0f);
            itemPos.z = player->actor.posRot.pos.z;

            this->item =
                (EnExItem*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_EX_ITEM,
                                              itemPos.x, itemPos.y, itemPos.z, 0, 0, 0, sExItemTypes[actionIndex]);

            if (this->item != NULL) {
                if (gSaveContext.magicAcquired == 0) {
                    gSaveContext.magicAcquired = 1;
                } else {
                    Magic_Fill(globalCtx);
                }

                this->unk_300 = 1;
                gSaveContext.healthAccumulator = 0x140;
                Interface_ChangeAlpha(9);
                gSaveContext.itemGetInf[1] |= sItemGetFlags[actionIndex];
                Item_Give(globalCtx, sItemIds[actionIndex]);
            }
        } else {
            this->item->actor.posRot.pos.x = player->actor.posRot.pos.x;
            this->item->actor.posRot.pos.y =
                ((LINK_IS_ADULT) ? player->actor.posRot.pos.y + 73.0f : player->actor.posRot.pos.y + 53.0f);
            this->item->actor.posRot.pos.z = player->actor.posRot.pos.z;
            this->item->scale = 0.3f;
        }
    }

    if ((globalCtx->sceneNum != SCENE_DAIYOUSEI_IZUMI) && (globalCtx->csCtx.npcActions[0]->action == 0x11) &&
        (this->item != NULL)) {
        Actor_Kill(&this->item->actor);
        this->item = NULL;
    }

    if ((globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI) && (globalCtx->csCtx.npcActions[0]->action == 0x12)) {
        this->giveDefenseHearts = true;
    }

    if (this->giveDefenseHearts) {
        if (gSaveContext.inventory.defenseHearts < 20) {
            gSaveContext.inventory.defenseHearts++;
        }
    }

    if ((globalCtx->csCtx.npcActions[0]->action >= 0x13) && (globalCtx->csCtx.npcActions[0]->action < 0x16) &&
        (this->unk_304 == 0)) {
        actionIndex = globalCtx->csCtx.npcActions[0]->action - 0xB;
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DOOR_WARP1, player->actor.posRot.pos.x,
                    player->actor.posRot.pos.y, player->actor.posRot.pos.z, 0, 0, 0, actionIndex);
        this->unk_304 = 1;
    }
    BgDyYoseizo_Bob(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/BgDyYoseizo_Update.s")
void BgDyYoseizo_Update(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    BgDyYoseizo* this = THIS;
    s32 phi_v1;

    this->absoluteTimer++;

    if (this->vanishTimer != 0) {
        this->vanishTimer--;
    }
    if (this->blinkTimer != 0) {
        this->blinkTimer--;
    }
    if (this->unusedTimer != 0) {
        this->unusedTimer--;
    }

    this->actionFunc(this, globalCtx);

    if (globalCtx->csCtx.state != 0) {
        phi_v1 = 0;
        if (globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI) {
            if ((globalCtx->csCtx.frames == 32) || (globalCtx->csCtx.frames == 291) ||
                (globalCtx->csCtx.frames == 426) || (globalCtx->csCtx.frames == 851)) {
                phi_v1 = 1;
            }
            if (globalCtx->csCtx.frames == 101) {
                phi_v1 = 2;
            }
        } else {
            if ((globalCtx->csCtx.frames == 35) || (globalCtx->csCtx.frames == 181) ||
                (globalCtx->csCtx.frames == 462) || (globalCtx->csCtx.frames == 795)) {
                phi_v1 = 1;
            }
            if (globalCtx->csCtx.frames == 90) {
                phi_v1 = 2;
            }
        }

        if (phi_v1 == 1) {
            Audio_PlayActorSound2(&this->actor, NA_SE_VO_FR_SMILE_0);
        }
        if (phi_v1 == 2) {
            Audio_PlayActorSound2(&this->actor, NA_SE_VO_FR_LAUGH_0);
        }
    }

    if ((this->blinkTimer == 0) && (this->actionFunc != func_80873868)) {
        this->eyeState++;
        this->eyeState2++;
        if (this->eyeState >= 3) {
            this->eyeState = this->eyeState2 = 0;
            this->blinkTimer = (s16)Rand_ZeroFloat(60.0f) + 20;
        }
    }

    Actor_MoveForward(&this->actor);
    this->heightOffset = this->unk_308 * 7500.0f;
    Actor_SetHeight(&this->actor, this->heightOffset);
    this->actor.posRot2.pos.y = this->heightOffset;
    func_80038290(globalCtx, &this->actor, &this->headRot, &this->torsoRot, this->actor.posRot2.pos);
    BgDyYoseizo_ParticleUpdate(this, globalCtx);
    Actor_SetScale(&this->actor, this->unk_308);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _80874B7C.s")
s32 BgDyYoseizo_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    BgDyYoseizo* this = THIS;

    if (limbIndex == 8) { // Torso
        rot->x += this->torsoRot.y;
    }
    if (limbIndex == 0xF) { // Head
        rot->x += this->headRot.y;
        rot->z += this->headRot.z;
    }
    return 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _80874BE0.s")
void BgDyYoseizo_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgDyYoseizo* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_dy_yoseizo.c", 1609);
    if (this->actionFunc != BgDyYoseizo_Vanish) {
        func_80093D18(globalCtx->state.gfxCtx);

        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeState]));

        // This was probably intended to allow this actor to wink, but segment 09 is not used in the dList for the head, so it can only blink
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeState2]));

        gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(sMouthTextures[this->mouthState]));

        SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                              this->skelAnime.dListCount, BgDyYoseizo_OverrideLimbDraw, NULL, this);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_dy_yoseizo.c", 1629);
    BgDyYoseizo_ParticleDraw(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _80874D9C.s")
void BgDyYoseizo_ParticleInit(BgDyYoseizo* this, Vec3f* initPos, Vec3f* initVelocity, Vec3f* accel, Color_RGB8* primColor, Color_RGB8* envColor,
                   f32 scale, s16 life, s16 type) {
    BgDyYoseizoParticle* particle;
    s16 i;

    particle = this->particles;

    for (i = 0; i < 200; i++, particle++) {
        if (particle->alive == 0) {
            particle->alive = 1;
            particle->pos = *initPos;
            particle->velocity = *initVelocity;
            particle->accel = *accel;
            particle->primColor = *primColor;
            particle->alpha = 0;
            particle->envColor = *envColor;
            particle->scale = scale;
            particle->timer = life;
            particle->type = type;
            particle->pitch = 0.0f;
            particle->yaw = Rand_CenteredFloat(30000.0f);
            particle->roll = 0.0f;
            return;
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _80874EAC.s")
void BgDyYoseizo_ParticleUpdate(BgDyYoseizo* this, GlobalContext* globalCtx) {
    BgDyYoseizoParticle* particle = this->particles;
    Player* player = PLAYER;
    Vec3f sp94;
    Vec3f sp88;
    f32 goalPitch;
    f32 goalYaw;
    s16 i = 0;

    for (i = 0; i < 200; i++, particle++) {
        if (particle->alive != 0) {
            particle->roll += 3000.0f;

            if (particle->type == 0) {
                particle->pos.x += particle->velocity.x;
                particle->pos.y += particle->velocity.y;
                particle->pos.z += particle->velocity.z;
                particle->velocity.x += particle->accel.x;
                particle->velocity.y += particle->accel.y;
                particle->velocity.z += particle->accel.z;
            } else {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_HEALING - SFX_FLAG);

                sp94 = player->actor.posRot.pos;
                sp94.y = player->actor.posRot.pos.y - 150.0f;
                sp94.z = player->actor.posRot.pos.z - 50.0f;

                goalPitch = Math_Vec3f_Pitch(&particle->pos, &sp94);
                goalYaw = Math_Vec3f_Yaw(&particle->pos, &sp94);

                Math_ApproachF(&particle->pitch, goalPitch, 0.9f, 5000.0f);
                Math_ApproachF(&particle->yaw, goalYaw, 0.9f, 5000.0f);
                Matrix_Push();
                Matrix_RotateY(BINANG_TO_RAD(particle->yaw), MTXMODE_NEW);
                Matrix_RotateX(BINANG_TO_RAD(particle->pitch), MTXMODE_APPLY);

                sp94.x = sp94.y = sp94.z = 3.0f;

                Matrix_MultVec3f(&sp94, &sp88);
                Matrix_Pull();
                particle->pos.x += sp88.x;
                particle->pos.y += sp88.y;
                particle->pos.z += sp88.z;
            }
        }

        // fade up, fade down, vanish and reset
        if (particle->timer != 0) {
            particle->timer--;
            particle->alpha += 30;

            if (particle->alpha > 255) {
                particle->alpha = 255;
            }
        } else {
            particle->alpha -= 30;

            if (particle->alpha <= 0) {
                particle->alpha = particle->alive = 0;
            }
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func _808751A0.s")
void BgDyYoseizo_ParticleDraw(BgDyYoseizo* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    u8 phi_s3 = 0;
    BgDyYoseizoParticle* particle = this->particles;
    s16 i;

    OPEN_DISPS(gfxCtx, "../z_bg_dy_yoseizo.c", 1767);
    func_80093D84(globalCtx->state.gfxCtx);

    for (i = 0; i < 200; i++, particle++) {
        if (particle->alive == 1) {
            if (phi_s3 == 0) {
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(&D_06005860));
                gDPPipeSync(POLY_XLU_DISP++);

                phi_s3++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, particle->primColor.r, particle->primColor.g, particle->primColor.b,
                            particle->alpha);
            gDPSetEnvColor(POLY_XLU_DISP++, particle->envColor.r, particle->envColor.g, particle->envColor.b, 0);

            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(particle->scale, particle->scale, 1.0f, MTXMODE_APPLY);
            Matrix_RotateZ(particle->roll, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_bg_dy_yoseizo.c", 1810),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(&D_060058D8));
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_bg_dy_yoseizo.c", 1819);
}
