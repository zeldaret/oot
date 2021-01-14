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

void BgDyYoseizo_Init(Actor* thisx, GlobalContext* globalCtx);
void BgDyYoseizo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgDyYoseizo_Update(Actor* thisx, GlobalContext* globalCtx);

// void func_80872960(BgDyYoseizo* this, GlobalContext* globalCtx, s16 arg2);
void func_80872C58(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_80872D20(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_80872DE4(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_8087328C(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_80873380(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_808734DC(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_8087358C(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_808736A4(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_80873780(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_80873868(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_80873B3C(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_80873C14(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_80873D14(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_80873E04(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_80873EA4(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_80873FD8(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_80874304(BgDyYoseizo* this, GlobalContext* globalCtx);

s32 func_80874B7C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
void func_80874BE0(Actor* thisx, GlobalContext* globalCtx);
void func_80874D9C(BgDyYoseizo* this, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, Color_RGB8* arg4, Color_RGB8* arg5,
                   f32 arg6, s16 arg7, s16 arg8);
void func_80874EAC(BgDyYoseizo* this, GlobalContext* globalCtx);
void func_808751A0(BgDyYoseizo* this, GlobalContext* globalCtx);

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

static Color_RGB8 D_8087546C[] = {
    { 255, 255, 255 }, { 255, 255, 100 }, { 100, 255, 100 }, { 255, 100, 100 }, { 255, 255, 170 },
    { 255, 255, 100 }, { 100, 255, 100 }, { 255, 100, 100 }, { 255, 255, 170 },
};

static Color_RGB8 D_80875488[] = {
    { 155, 255, 255 }, { 255, 255, 100 }, { 100, 255, 100 }, { 255, 100, 100 }, { 255, 100, 255 },
    { 255, 255, 100 }, { 100, 255, 100 }, { 255, 100, 100 }, { 100, 255, 255 },
};

static Vec3f D_808754A4 = { 0.0f, 0.0f, 0.0f };

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

extern UNK_TYPE D_02000130;
extern UNK_TYPE D_02000160;
extern UNK_TYPE D_02001020;
extern UNK_TYPE D_020013E0;
extern UNK_TYPE D_02001F40;
extern UNK_TYPE D_020025D0;
extern AnimationHeader D_0600092C;
extern AnimationHeader D_06001DF0;
extern AnimationHeader D_060031C0;
extern AnimationHeader D_06004344;
extern AnimationHeader D_06005810;
extern u64* D_06005860;
extern UNK_TYPE D_06005868;
extern u64* D_060058D8;
extern AnimationHeader D_06005E60;
extern AnimationHeader D_060069E8;
extern AnimationHeader D_06007CA8;
extern AnimationHeader D_06008698;
extern FlexSkeletonHeader D_0601C450;
extern AnimationHeader D_0601D514;

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/BgDyYoseizo_Init.s")
void BgDyYoseizo_Init(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    BgDyYoseizo* this = THIS;

    this->unk_2EC = globalCtx->curSpawn;

    if (this->unk_2EC < 0) {
        this->unk_2EC = 0;
    }

    this->unk_310 = this->actor.posRot.pos.y;
    this->unk_30C = this->unk_310 + 40.0f;
    this->actor.posRot2.pos = this->actor.posRot.pos;

    if (globalCtx->sceneNum == 0x3B) {
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 大妖精の泉 ☆☆☆☆☆ %d\n" VT_RST, globalCtx->curSpawn);
        SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0601C450, &D_06008698, this->jointTable, this->morphTable,
                           28);
    } else {
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 石妖精の泉 ☆☆☆☆☆ %d\n" VT_RST, globalCtx->curSpawn);
        SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0601C450, &D_060031C0, this->jointTable, this->morphTable,
                           28);
    }
    this->actionFunc = func_80872D20;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/BgDyYoseizo_Destroy.s")
void BgDyYoseizo_Destroy(Actor* this, GlobalContext* globalCtx) {
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80872960.s")
void func_80872960(BgDyYoseizo* this, GlobalContext* globalCtx, s16 arg2) {
    Vec3f spC4;
    Vec3f spB8;
    Vec3f spAC;
    Color_RGB8 spA8;
    Color_RGB8 spA4;
    f32 temp_f20;
    s32 phi_s1;
    f32 phi_f24;
    s32 phi_s3;
    s16 phi_s2;

    spC4 = D_808754A4;

    if (!(this->unk_308 < 0.01f)) {
        temp_f20 = this->unk_308 * 3500.0f;
        spB8.x = Rand_ZeroOne() - 0.5f;
        spB8.y = Rand_ZeroOne() - 0.5f;
        spB8.z = Rand_ZeroOne() - 0.5f;
        for (phi_s3 = 0; phi_s3 < 2; phi_s3++) {
            if (arg2 == 0) {
                phi_s1 = 0;
                phi_f24 = 0.4f;
                phi_s2 = 90;
                spAC.x = this->actor.posRot.pos.x;
                spAC.y = this->actor.posRot.pos.y + temp_f20 + ((Rand_ZeroOne() - 0.5f) * (temp_f20 * 0.5f));
                spAC.z = this->actor.posRot.pos.z + 30.0f;
            } else {
                phi_s2 = 50;
                phi_s1 = arg2;
                phi_f24 = 0.2f;
                spAC.x = this->actor.posRot.pos.x + Rand_CenteredFloat(10.0f);

                if (globalCtx->sceneNum == 0x3B) {
                    spAC.y =
                        this->actor.posRot.pos.y + temp_f20 + 50.0f + ((Rand_ZeroOne() - 0.5f) * (temp_f20 * 0.1f));
                    spAC.z = this->actor.posRot.pos.z + 30.0f;
                } else {
                    spAC.y =
                        this->actor.posRot.pos.y + temp_f20 - 30.0f + ((Rand_ZeroOne() - 0.5f) * (temp_f20 * 0.1f));
                    spAC.z = this->actor.posRot.pos.z + 60.0f;
                }

                if (LINK_IS_ADULT) {
                    spAC.y += 20.0f;
                }
            }

            spA8.r = D_8087546C[phi_s1].r;
            spA8.g = D_8087546C[phi_s1].g;
            spA8.b = D_8087546C[phi_s1].b;
            spA4.r = D_80875488[phi_s1].r;
            spA4.g = D_80875488[phi_s1].g;
            spA4.b = D_80875488[phi_s1].b;
            func_80874D9C(this, &spAC, &spC4, &spB8, &spA8, &spA4, phi_f24, phi_s2, phi_s1);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80872C58.s")
void func_80872C58(BgDyYoseizo* this, GlobalContext* globalCtx) {
    this->unk_31C = this->unk_30C + this->unk_320;
    Math_ApproachF(&this->actor.posRot.pos.y, this->unk_31C, 0.1f, 10.0f);
    Math_ApproachF(&this->unk_320, 10.0f, 0.1f, 0.5f);
    if (globalCtx->csCtx.state == 0) {
        this->actor.velocity.y = Math_SinS(this->unk_324);
    } else {
        this->actor.velocity.y = Math_SinS(this->unk_324) * 0.4f;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80872D20.s")
void func_80872D20(BgDyYoseizo* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, 0x38) != 0) {
        globalCtx->msgCtx.unk_E3EE = 4;
        if (globalCtx->sceneNum == 0x3B) {
            if ((gSaveContext.magicAcquired == 0) && (this->unk_2EC != 0)) {
                Actor_Kill(&this->actor);
                return;
            }
        } else if (gSaveContext.magicAcquired == 0) {
            Actor_Kill(&this->actor);
            return;
        }
        func_8002DF54(globalCtx, &this->actor, 1);
        this->actionFunc = func_80872DE4;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80872DE4.s")
void func_80872DE4(BgDyYoseizo* this, GlobalContext* globalCtx) {
    s32 phi_v1;

    func_8002DF54(globalCtx, &this->actor, 1);
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ もうど ☆☆☆☆☆ %d\n" VT_RST, globalCtx->msgCtx.unk_E3EE);
    phi_v1 = 0;

    if (globalCtx->sceneNum != 0x3B) {
        switch (this->unk_2EC) {
            case 0:
                if (!(gSaveContext.itemGetInf[1] & 0x100)) {
                    phi_v1 = 1;
                }
                break;
            case 1:
                if (!(gSaveContext.itemGetInf[1] & 0x200)) {
                    phi_v1 = 1;
                }
                break;
            case 2:
                if (!(gSaveContext.itemGetInf[1] & 0x400)) {
                    phi_v1 = 1;
                }
                break;
        }
    } else {
        switch (this->unk_2EC) {
            case 0:
                if ((gSaveContext.magicAcquired == 0) || BREG(2)) {
                    osSyncPrintf(VT_FGCOL(GREEN) " ☆☆☆☆☆ 回転切り速度ＵＰ ☆☆☆☆☆ \n" VT_RST, &gSaveContext);
                    this->unk_2EA = 1;
                    phi_v1 = 1;
                }
                break;
            case 1:
                if (gSaveContext.doubleMagic == 0) {
                    osSyncPrintf(VT_FGCOL(YELLOW) " ☆☆☆☆☆ 魔法ゲージメーター倍増 ☆☆☆☆☆ \n" VT_RST, &gSaveContext);
                    this->unk_2EA = 1;
                    phi_v1 = 1;
                }
                break;
            case 2:
                if (gSaveContext.doubleDefense == 0) {
                    osSyncPrintf(VT_FGCOL(PURPLE) " ☆☆☆☆☆ ダメージ半減 ☆☆☆☆☆ \n" VT_RST, &gSaveContext);
                    this->unk_2EA = 1;
                    phi_v1 = 1;
                }
                break;
        }
    }

    if (phi_v1 != 0) {
        if (gSaveContext.sceneSetupIndex < 4) {
            if (globalCtx->sceneNum != 0x3B) {
                switch (this->unk_2EC) {
                    case 0:
                        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_02000160);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                    case 1:
                        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_02001020);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                    case 2:
                        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_02001F40);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                }
            } else {
                switch (this->unk_2EC) {
                    case 0:
                        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_02000130);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                    case 1:
                        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_020013E0);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                    case 2:
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

    if (globalCtx->sceneNum == 0x3B) {
        func_800800F8(globalCtx, 0x219B, -99, NULL, 0);
    } else {
        func_800800F8(globalCtx, 0x219C, -99, NULL, 0);
    };

    Audio_PlayActorSound2(&this->actor, NA_SE_EV_GREAT_FAIRY_APPEAR);
    this->actor.draw = func_80874BE0;
    this->actionFunc = func_8087328C;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_8087328C.s")
void func_8087328C(BgDyYoseizo* this, GlobalContext* globalCtx) {
    if (globalCtx->sceneNum == 0x3B) {
        this->unk_32C = Animation_GetLastFrame(&D_06008698);
        Animation_Change(&this->skelAnime, &D_06008698, 1.0f, 0.0f, this->unk_32C, 2, -10.0f);
    } else {
        this->unk_32C = Animation_GetLastFrame(&D_060031C0);
        Animation_Change(&this->skelAnime, &D_060031C0, 1.0f, 0.0f, this->unk_32C, 2, -10.0f);
    }

    Audio_PlayActorSound2(&this->actor, NA_SE_VO_FR_LAUGH_0);
    func_8002DF54(globalCtx, &this->actor, 1);
    this->actionFunc = func_80873380;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80873380.s")
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
    func_80872960(this, globalCtx, 0);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_808734DC.s")
void func_808734DC(BgDyYoseizo* this, GlobalContext* globalCtx) {
    f32 frame = this->skelAnime.curFrame;

    func_8002DF54(globalCtx, &this->actor, 1);

    if ((this->unk_32C * 1273.0f) <= this->unk_324) {
        this->unk_324 = 0.0f;
    }

    SkelAnime_Update(&this->skelAnime);

    if ((this->unk_32C <= frame) && (this->unk_2FC == 0)) {
        this->actionFunc = func_8087358C;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_8087358C.s")
void func_8087358C(BgDyYoseizo* this, GlobalContext* globalCtx) {
    func_8002DF54(globalCtx, &this->actor, (u8)1U);

    if (globalCtx->sceneNum == 0x3B) {
        this->unk_32C = Animation_GetLastFrame(&D_0601D514);
        Animation_Change(&this->skelAnime, &D_0601D514, 1.0f, 0.0f, this->unk_32C, 0, -10.0f);
    } else {
        this->unk_32C = Animation_GetLastFrame(&D_06001DF0);
        Animation_Change(&this->skelAnime, &D_06001DF0, 1.0f, 0.0f, this->unk_32C, 0, -10.0f);
    }

    this->actor.textId = 0xDB;
    this->unk_2EE = 5;
    func_8010B680(globalCtx, this->actor.textId, NULL);
    func_80872960(this, globalCtx, 0);
    this->actionFunc = func_808736A4;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_808736A4.s")
void func_808736A4(BgDyYoseizo* this, GlobalContext* globalCtx) {
    func_8002DF54(globalCtx, &this->actor, 1);
    this->unk_324 = this->skelAnime.curFrame * 1273.0f;

    if ((this->unk_32C * 1273.0f) <= this->unk_324) {
        this->unk_324 = 0.0f;
    }

    SkelAnime_Update(&this->skelAnime);

    if ((this->unk_2EE == func_8010BDBC(&globalCtx->msgCtx)) && (func_80106BC8(globalCtx) != 0)) {
        func_80106CCC(globalCtx);
        Interface_ChangeAlpha(5);
        this->actionFunc = func_80873780;
    }

    func_80872C58(this, globalCtx);
    func_80872960(this, globalCtx, 0);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80873780.s")
void func_80873780(BgDyYoseizo* this, GlobalContext* globalCtx) {
    if (globalCtx->sceneNum == 0x3B) {
        this->unk_32C = Animation_GetLastFrame(&D_060069E8);
        Animation_Change(&this->skelAnime, &D_060069E8, 1.0f, 0.0f, this->unk_32C, 2, -10.0f);
    } else {
        this->unk_32C = Animation_GetLastFrame(&D_06005810);
        Animation_Change(&this->skelAnime, &D_06005810, 1.0f, 0.0f, this->unk_32C, 2, -10.0f);
    }

    Audio_PlayActorSound2(&this->actor, NA_SE_VO_FR_SMILE_0);
    this->unk_2F6 = 1;
    this->actionFunc = func_80873868;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80873868.s")
void func_80873868(BgDyYoseizo* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 temp_f2 = this->skelAnime.curFrame;
    Vec3f beamPos;
    s16 phi_v0;

    if (this->unk_2FC != 0) {
        this->unk_324 = this->skelAnime.curFrame * 1300.0f;
        if ((this->unk_32C * 1300.0f) <= this->unk_324) {
            this->unk_324 = 0.0f;
        }
    }

    SkelAnime_Update(&this->skelAnime);
    if ((this->unk_32C <= temp_f2) && (this->unk_2FC == 0)) {
        if (globalCtx->sceneNum == 0x3B) {
            this->unk_32C = Animation_GetLastFrame(&D_06007CA8);
            Animation_Change(&this->skelAnime, &D_06007CA8, 1.0f, 0.0f, this->unk_32C, 0, -10.0f);
        } else {
            this->unk_32C = Animation_GetLastFrame(&D_06004344);
            Animation_Change(&this->skelAnime, &D_06004344, 1.0f, 0.0f, this->unk_32C, 0, -10.0f);
        }
        this->unk_302 = 150;
        this->unk_2FC = 1;
        if (this->unk_2EA == 0) {
            beamPos.x = player->actor.posRot.pos.x;
            beamPos.y = player->actor.posRot.pos.y + 200.0f;
            beamPos.z = player->actor.posRot.pos.z;

            phi_v0 = ((globalCtx->sceneNum == 0x3B) ? 0 : 1);

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
        this->unk_2EE = 5;
        func_8010B720(globalCtx, this->actor.textId);
        this->actionFunc = func_80873B3C;
        return;
    }
    func_80872C58(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80873B3C.s")
void func_80873B3C(BgDyYoseizo* this, GlobalContext* globalCtx) {
    this->unk_324 = this->skelAnime.curFrame * 1400.0f;

    if (this->unk_324 >= (this->unk_32C * 1400.0f)) {
        this->unk_324 = 0.0f;
    }

    SkelAnime_Update(&this->skelAnime);

    if ((this->unk_2EE == func_8010BDBC(&globalCtx->msgCtx)) && (func_80106BC8(globalCtx) != 0)) {
        func_80106CCC(globalCtx);
        this->unk_2F6 = 0;
        this->actionFunc = func_80873C14;
        func_8005B1A4(ACTIVE_CAM);
    }

    func_80872C58(this, globalCtx);
    func_80872960(this, globalCtx, 0);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80873C14.s")
void func_80873C14(BgDyYoseizo* this, GlobalContext* globalCtx) {
    if (globalCtx->sceneNum == 0x3B) {
        this->unk_32C = Animation_GetLastFrame(&D_06005E60);
        Animation_Change(&this->skelAnime, &D_06005E60, 1.0f, 0.0f, this->unk_32C, 2, -10.0f);
    } else {
        this->unk_32C = Animation_GetLastFrame(&D_0600092C);
        Animation_Change(&this->skelAnime, &D_0600092C, 1.0f, 0.0f, this->unk_32C, 2, -10.0f);
    }

    this->unk_2E8 = 5;
    this->unk_318 = 0.0f;
    this->unk_314 = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_VO_FR_LAUGH_0);
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_GREAT_FAIRY_VANISH);
    this->actionFunc = func_80873D14;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80873D14.s")
void func_80873D14(BgDyYoseizo* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (this->unk_2E8 == 0) {
        if (this->unk_308 < 0.003f) {
            this->unk_2E8 = 30;
            this->actionFunc = func_80873E04;
            return;
        }
        Math_ApproachF(&this->actor.posRot.pos.y, this->unk_310, this->unk_314, 100.0f);
        Math_ApproachZeroF(&this->unk_308, this->unk_318, 0.005f);
        Math_ApproachF(&this->unk_314, 0.8f, 0.1f, 0.02f);
        Math_ApproachF(&this->unk_318, 0.2f, 0.03f, 0.05f);
        this->actor.shape.rot.y += 3000;
        func_80872960(this, globalCtx, 0);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80873E04.s")
void func_80873E04(BgDyYoseizo* this, GlobalContext* globalCtx) {
    Actor* findOcarinaSpot;

    if (this->unk_2E8 == 0) {
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

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80873EA4.s")
void func_80873EA4(BgDyYoseizo* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.state != 0) {
        if ((globalCtx->csCtx.npcActions[0] != NULL) && (globalCtx->csCtx.npcActions[0]->action == 2)) {
            this->actor.draw = func_80874BE0;
            func_8002DF54(globalCtx, &this->actor, 1);
            this->unk_2FE = 0;

            if (globalCtx->sceneNum == 0x3B) {
                this->unk_32C = Animation_GetLastFrame(&D_06008698);
                Animation_Change(&this->skelAnime, &D_06008698, 1.0f, 0.0f, this->unk_32C, 2, -10.0f);
            } else {
                this->unk_32C = Animation_GetLastFrame(&D_060031C0);
                Animation_Change(&this->skelAnime, &D_060031C0, 1.0f, 0.0f, this->unk_32C, 2, -10.0f);
            }

            Audio_PlayActorSound2(&this->actor, NA_SE_EV_GREAT_FAIRY_APPEAR);
            this->actionFunc = func_80873FD8;
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80873FD8.s")
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

        if ((this->unk_32C <= temp_f0) && (this->unk_2FC == 0)) {
            if (globalCtx->sceneNum == 0x3B) {
                this->unk_32C = Animation_GetLastFrame(&D_0601D514);
                Animation_Change(&this->skelAnime, &D_0601D514, 1.0f, 0.0f, this->unk_32C, 0, -10.0f);
            } else {
                this->unk_32C = Animation_GetLastFrame(&D_06001DF0);
                Animation_Change(&this->skelAnime, &D_06001DF0, 1.0f, 0.0f, this->unk_32C, 0, -10.0f);
            }
            this->unk_2FC = 1;
        }

        if (globalCtx->csCtx.state != 0) {
            if ((globalCtx->csCtx.npcActions[0] != NULL) && (globalCtx->csCtx.npcActions[0]->action == 3)) {
                this->unk_2FC = 0;
                this->unk_2FE = this->unk_2FC;
                if (globalCtx->sceneNum == 0x3B) {
                    this->unk_32C = Animation_GetLastFrame(&D_060069E8);
                    Animation_Change(&this->skelAnime, &D_060069E8, 1.0f, 0.0f, this->unk_32C, 2, -10.0f);
                } else {
                    this->unk_32C = Animation_GetLastFrame(&D_06005810);
                    Animation_Change(&this->skelAnime, &D_06005810, 1.0f, 0.0f, this->unk_32C, 2, -10.0f);
                }
                this->unk_2F6 = 1;
                this->actionFunc = func_80874304;
            }
        }
    }
    func_80872960(this, globalCtx, 0);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80874304.s")
void func_80874304(BgDyYoseizo* this, GlobalContext* globalCtx) {
    f32 temp_f2 = this->skelAnime.curFrame;
    Player* player = PLAYER;
    s16 actionIndex;
    s16 demoEffectParams;
    Vec3f itemPos;

    if (this->unk_2FC != 0) {
        this->unk_324 = this->skelAnime.curFrame * 1400.0f;
        if ((this->unk_32C * 1400.0f) <= this->unk_324) {
            this->unk_324 = 0.0f;
        }
    }
    SkelAnime_Update(&this->skelAnime);

    if ((this->unk_32C <= temp_f2) && (this->unk_2FC == 0)) {
        if (globalCtx->sceneNum == 0x3B) {
            this->unk_32C = Animation_GetLastFrame(&D_06007CA8);
            Animation_Change(&this->skelAnime, &D_06007CA8, 1.0f, 0.0f, this->unk_32C, 0, -10.0f);
        } else {
            this->unk_32C = Animation_GetLastFrame(&D_06004344);
            Animation_Change(&this->skelAnime, &D_06004344, 1.0f, 0.0f, this->unk_32C, 0, -10.0f);
        }
        this->unk_2FC = 1;
    }

    if (globalCtx->csCtx.npcActions[0]->action == 0xD) {
        this->actionFunc = func_80873C14;
        return;
    }

    if ((globalCtx->csCtx.npcActions[0]->action >= 4) && (globalCtx->csCtx.npcActions[0]->action < 7)) {
        actionIndex = globalCtx->csCtx.npcActions[0]->action - 4;
        if (globalCtx->sceneNum == 0x3B) {
            actionIndex++;
            func_80872960(this, globalCtx, actionIndex);

        } else if (this->unk_2E4 == 0) {
            demoEffectParams = ((s16)(sDemoEffectLightColors[actionIndex] << 0xC) | 0x12);
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_EFFECT, this->actor.posRot.pos.x,
                        this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, (s32)demoEffectParams);
            this->unk_2E4 = 1;
        }
    } else {
        func_80872960(this, globalCtx, 0);
    }

    if ((globalCtx->sceneNum == 0x3B) && (globalCtx->csCtx.npcActions[0]->action >= 0xA) &&
        (globalCtx->csCtx.npcActions[0]->action < 0xD)) {
        actionIndex = globalCtx->csCtx.npcActions[0]->action - 0xA;

        switch (actionIndex) {
            case 0:
                gSaveContext.magicAcquired = 1;
                gSaveContext.unk_13F6 = 0x30;
                Interface_ChangeAlpha(9);
                break;
            case 1:
                if (gSaveContext.magicAcquired == 0) {
                    gSaveContext.magicAcquired = 1;
                }
                gSaveContext.doubleMagic = 1;
                gSaveContext.unk_13F6 = 0x60;
                gSaveContext.magicLevel = 0;
                Interface_ChangeAlpha(9);
                break;
            case 2:
                gSaveContext.doubleDefense = 1;
                Interface_ChangeAlpha(9);
                break;
        }

        if (this->unk_2E6 == 0) {
            gSaveContext.healthAccumulator = 0x140;
            this->unk_2E6 = 1;
            if (actionIndex == 2) {
                Magic_Fill(globalCtx);
            }
        }
    }

    if ((globalCtx->sceneNum != 0x3B) && (globalCtx->csCtx.npcActions[0]->action >= 0xE) &&
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

    if ((globalCtx->sceneNum != 0x3B) && (globalCtx->csCtx.npcActions[0]->action == 0x11) && (this->item != NULL)) {
        Actor_Kill(&this->item->actor);
        this->item = NULL;
    }

    if ((globalCtx->sceneNum == 0x3B) && (globalCtx->csCtx.npcActions[0]->action == 0x12)) {
        this->unk_2E5 = 1;
    }

    if (this->unk_2E5 != 0) {
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
    func_80872C58(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/BgDyYoseizo_Update.s")
void BgDyYoseizo_Update(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    BgDyYoseizo* this = THIS;
    s32 phi_v1;

    this->unk_2F0++;
    if (this->unk_2E8 != 0) {
        this->unk_2E8--;
    }

    if (this->unk_2F8 != 0) {
        this->unk_2F8--;
    }

    if (this->unk_2FA != 0) {
        this->unk_2FA--;
    }

    this->actionFunc(this, globalCtx);

    if (globalCtx->csCtx.state != 0) {
        phi_v1 = 0;
        if (globalCtx->sceneNum == 0x3B) {
            if ((globalCtx->csCtx.frames == 0x20) || (globalCtx->csCtx.frames == 0x123) ||
                (globalCtx->csCtx.frames == 0x1AA) || (globalCtx->csCtx.frames == 0x353)) {
                phi_v1 = 1;
            }
            if (globalCtx->csCtx.frames == 0x65) {
                phi_v1 = 2;
            }
        } else {
            if ((globalCtx->csCtx.frames == 0x23) || (globalCtx->csCtx.frames == 0xB5) ||
                (globalCtx->csCtx.frames == 0x1CE) || (phi_v1 = 0, (globalCtx->csCtx.frames == 0x31B))) {
                phi_v1 = 1;
            }
            if (globalCtx->csCtx.frames == 0x5A) {
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

    if ((this->unk_2F8 == 0) && (this->actionFunc != func_80873868)) {
        this->unk_2F2++;
        this->unk_2F4++;
        if (this->unk_2F2 >= 3) {
            this->unk_2F4 = 0;
            this->unk_2F2 = this->unk_2F4;
            this->unk_2F8 = (s16)Rand_ZeroFloat(60.0f) + 20;
        }
    }

    Actor_MoveForward(&this->actor);
    this->unk_328 = this->unk_308 * 7500.0f;
    Actor_SetHeight(&this->actor, this->unk_328);
    this->actor.posRot2.pos.y = this->unk_328;
    func_80038290(globalCtx, &this->actor, &this->unk_334, &this->unk_33A, this->actor.posRot2.pos);
    func_80874EAC(this, globalCtx);
    Actor_SetScale(&this->actor, this->unk_308);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80874B7C.s")
s32 func_80874B7C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    BgDyYoseizo* this = THIS;

    if (limbIndex == 8) {
        rot->x += this->unk_33A.y;
    }
    if (limbIndex == 0xF) {
        rot->x += this->unk_334.y;
        rot->z += this->unk_334.z;
    }
    return 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80874BE0.s")
void func_80874BE0(Actor* thisx, GlobalContext* globalCtx) {
    BgDyYoseizo* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_dy_yoseizo.c", 1609);
    if (this->actionFunc != func_80873E04) {
        func_80093D18(globalCtx->state.gfxCtx);

        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->unk_2F2]));
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->unk_2F4]));
        gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(sMouthTextures[this->unk_2F6]));

        SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                              this->skelAnime.dListCount, func_80874B7C, 0, this);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_dy_yoseizo.c", 1629);
    func_808751A0(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80874D9C.s")
void func_80874D9C(BgDyYoseizo* this, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, Color_RGB8* arg4, Color_RGB8* arg5,
                   f32 arg6, s16 arg7, s16 arg8) {
    BDYGraphicsData* phi_v0;
    s16 phi_v1;

    phi_v0 = this->unk_394;

    for (phi_v1 = 0; phi_v1 < 200; phi_v1++, phi_v0++) {
        if (phi_v0->unk_0 == 0) {
            phi_v0->unk_0 = 1;
            phi_v0->unk_4 = *arg1;
            phi_v0->unk_10 = *arg2;
            phi_v0->unk_1C = *arg3;
            phi_v0->unk_28 = *arg4;
            phi_v0->unk_2E = 0;
            phi_v0->unk_2B = *arg5;
            phi_v0->unk_30 = arg6;
            phi_v0->unk_34 = arg7;
            phi_v0->unk_36 = arg8;
            phi_v0->unk_38 = 0.0f;
            phi_v0->unk_3C = Rand_CenteredFloat(30000.0f);
            phi_v0->unk_40 = 0.0f;
            return;
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80874EAC.s")
void func_80874EAC(BgDyYoseizo* this, GlobalContext* globalCtx) {
    BDYGraphicsData* phi_s0 = this->unk_394;
    Player* player = PLAYER;
    Vec3f sp94;
    Vec3f sp88;
    f32 pitch;
    f32 yaw;
    s16 i = 0;

    for (i = 0; i < 200; i++, phi_s0++) {
        if (phi_s0->unk_0 != 0) {
            phi_s0->unk_40 += 3000.0f;

            if (phi_s0->unk_36 == 0) {
                phi_s0->unk_4.x += phi_s0->unk_10.x;
                phi_s0->unk_4.y += phi_s0->unk_10.y;
                phi_s0->unk_4.z += phi_s0->unk_10.z;
                phi_s0->unk_10.x += phi_s0->unk_1C.x;
                phi_s0->unk_10.y += phi_s0->unk_1C.y;
                phi_s0->unk_10.z += phi_s0->unk_1C.z;
            } else {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_HEALING - SFX_FLAG);

                sp94 = player->actor.posRot.pos;
                sp94.y = player->actor.posRot.pos.y - 150.0f;
                sp94.z = player->actor.posRot.pos.z - 50.0f;

                pitch = (f32)Math_Vec3f_Pitch(&phi_s0->unk_4, &sp94);
                yaw = (f32)Math_Vec3f_Yaw(&phi_s0->unk_4, &sp94);

                Math_ApproachF(&phi_s0->unk_38, pitch, 0.9f, 5000.0f);
                Math_ApproachF(&phi_s0->unk_3C, yaw, 0.9f, 5000.0f);
                Matrix_Push();
                Matrix_RotateY(BINANG_TO_RAD(phi_s0->unk_3C), MTXMODE_NEW);
                Matrix_RotateX(BINANG_TO_RAD(phi_s0->unk_38), MTXMODE_APPLY);

                sp94.x = sp94.y = sp94.z = 3.0f;

                Matrix_MultVec3f(&sp94, &sp88);
                Matrix_Pull();
                phi_s0->unk_4.x += sp88.x;
                phi_s0->unk_4.y += sp88.y;
                phi_s0->unk_4.z += sp88.z;
            }
        }

        if (phi_s0->unk_34 != 0) {
            phi_s0->unk_34--;
            phi_s0->unk_2E += 30;

            if (phi_s0->unk_2E >= 0x100) {
                phi_s0->unk_2E = 0xFF;
            }
        } else {
            phi_s0->unk_2E -= 30;

            if (phi_s0->unk_2E <= 0) {
                phi_s0->unk_2E = phi_s0->unk_0 = 0;
            }
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_808751A0.s")
void func_808751A0(BgDyYoseizo* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    BDYGraphicsData* phi_s0 = this->unk_394;
    s32 phi_s3 = 0;
    s16 i;

    OPEN_DISPS(gfxCtx, "../z_bg_dy_yoseizo.c", 1767);
    func_80093D84(globalCtx->state.gfxCtx);

    for (i = 0; i < 200; i++, phi_s0++) {
        if (phi_s0->unk_0 == 1) {
            if (phi_s3 == 0) {
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(&D_06005860));
                gDPPipeSync(POLY_XLU_DISP++);

                phi_s3 = (phi_s3 + 1) & 0xFF;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, phi_s0->unk_28.r, phi_s0->unk_28.g, phi_s0->unk_28.b,
                            phi_s0->unk_2E);
            gDPSetEnvColor(POLY_XLU_DISP++, phi_s0->unk_2B.r, phi_s0->unk_2B.g, phi_s0->unk_2B.b, 0);

            Matrix_Translate(phi_s0->unk_4.x, phi_s0->unk_4.y, phi_s0->unk_4.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            // temp_f12 = phi_s0->unk_30;
            Matrix_Scale(phi_s0->unk_30, phi_s0->unk_30, 1.0f, MTXMODE_APPLY);
            Matrix_RotateZ(phi_s0->unk_40, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_bg_dy_yoseizo.c", 1810),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(&D_060058D8));
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_bg_dy_yoseizo.c", 1819);
}
