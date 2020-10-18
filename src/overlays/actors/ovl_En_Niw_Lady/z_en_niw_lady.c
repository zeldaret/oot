#include "z_en_niw_lady.h"
#include "vt.h"

#define FLAGS 0x00000019

#define THIS ((EnNiwLady*)thisx)

void EnNiwLady_Init(Actor* thisx, GlobalContext* globalCtx);
void EnNiwLady_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnNiwLady_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80AB9F24(EnNiwLady* this, GlobalContext* globalCtx);
void func_80ABB228(Actor* thisx, GlobalContext* globalCtx);
void func_80ABA21C(EnNiwLady* this, GlobalContext* globalCtx);
void func_80ABA778(EnNiwLady* this, GlobalContext* globalCtx);
void func_80ABAD38(EnNiwLady* this, GlobalContext* globalCtx);
void func_80ABA778(EnNiwLady* this, GlobalContext* globalCtx);
void func_80ABA878(EnNiwLady* this, GlobalContext* globalCtx);
void func_80ABA9B8(EnNiwLady* this, GlobalContext* globalCtx);
void func_80ABAB08(EnNiwLady* this, GlobalContext* globalCtx);
Gfx* func_80ABB0A0(GraphicsContext* gfxCtx);

s32 EnNiwLady_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                               Actor* thisx);

const ActorInit En_Niw_Lady_InitVars = {
    ACTOR_EN_NIW_LADY,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_ANE,
    sizeof(EnNiwLady),
    (ActorFunc)EnNiwLady_Init,
    (ActorFunc)EnNiwLady_Destroy,
    (ActorFunc)EnNiwLady_Update,
    NULL,
};

s32 D_80ABB3A0[] = {
    0x50365070, 0x50725037, 0x50385039, 0x503A503B, 0x503D503C,
};

s32 D_80ABB3B4[] = {
    0x02000400,
    0x08001000,
    0x20004000,
    0x80000000,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 10, 10, 0, { 0, 0, 0 } },
};

static s16 EnNiwLadyTradeItemText[] = { 0x503E, 0x503F, 0x5047, 0x5040, 0x5042, 0x5043,
                                        0x5044, 0x00CF, 0x5045, 0x5042, 0x5027, 0x0000 };

// s32 D_80ABB400[] = {
//    0x50455042,
//    0x50270000,
//};

Gfx* D_80ABB408[] = {
    0x060008C8, 0x060010C8, 0x060018C8, 0x00000000, 0x00000000, 0x00000000,
};

extern AnimationHeader D_060000F0;
extern SkeletonHeader D_0600A630;
extern SkeletonHeader D_060007D0;

void EnNiwLady_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnNiwLady* this = THIS;
    this->ObjectAneIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_ANE);
    this->ObjectOsAnimeIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_OS_ANIME);
    if ((this->ObjectOsAnimeIndex < 0) || (this->ObjectAneIndex < 0)) {
        Actor_Kill(thisx);
        return;
    }

    this->unk_278 = 0;
    if (globalCtx->sceneNum == SCENE_LABO) {
        this->unk_278 = 1;
    }
    if ((this->unk_278 != 0) && (gSaveContext.nightFlag == 0)) {
        Actor_Kill(thisx);
        return;
    }
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ ねぇちゃんうっふん ☆☆☆☆☆ %d\n" VT_RST, this->unk_278);
    osSyncPrintf("\n\n");
    this->actionFunc = func_80AB9F24;
    thisx->uncullZoneForward = 600.0f;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/EnNiwLady_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80AB9D60.s")

void func_80AB9F24(EnNiwLady* this, GlobalContext* globalCtx) {
    s32 pad;
    if ((Object_IsLoaded(&globalCtx->objectCtx, this->ObjectAneIndex) != 0) &&
        (Object_IsLoaded(&globalCtx->objectCtx, this->ObjectOsAnimeIndex) != 0)) {
        gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->ObjectAneIndex].segment);
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_060000F0, NULL, &this->limbDrawTable,
                         &this->transitionDrawTable, 16);
        gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->ObjectOsAnimeIndex].segment);
        this->unk_27E = 1;
        this->actor.gravity = -3.0f;
        Actor_SetScale(&this->actor, 0.01f);
        ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 20.0f);
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
        this->unk_272 = 0;
        this->actor.unk_1F = 6;
        this->actor.draw = func_80ABB228;
        switch (this->unk_278) {
            case 0:
                if (!(gSaveContext.itemGetInf[0] & 0x1000) && LINK_IS_CHILD) {
                    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600A630, 1.0f, 0.0f,
                                         (f32)(s16)(s32)(f32)SkelAnime_GetFrameCount(&D_0600A630), 0, 0.0f);
                } else {
                    SkelAnime_ChangeAnim(&this->skelAnime, &D_060007D0, 1.0f, 0.0f,
                                         (f32)(s16)(s32)(f32)SkelAnime_GetFrameCount(&D_060007D0), 0, 0.0f);
                }
                if (LINK_IS_ADULT) {
                    this->actionFunc = func_80ABA778;
                } else {
                    this->actionFunc = func_80ABA21C;
                }
                break;
            case 1:
                SkelAnime_ChangeAnim(&this->skelAnime, &D_060007D0, 1.0f, 0.0f,
                                     (f32)(s16)(s32)(f32)SkelAnime_GetFrameCount(&D_060007D0), 0, 0.0f);
                this->actionFunc = func_80ABAD38;
                break;
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABA21C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABA244.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABA654.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABA778.s")
void func_80ABA778(EnNiwLady* this, GlobalContext* globalCtx) {
    //☆☆☆☆☆ Adult message check ☆☆☆☆☆
    osSyncPrintf("\x1b[32m☆☆☆☆☆ アダルトメッセージチェック ☆☆☆☆☆ \n\x1b[m", this);
    this->unk_262 = 6;
    this->unk_273 = 0;
    if ((gSaveContext.itemGetInf[2] & 0x1000) == 0) {
        if (this->unk_274 != 0) {
            this->unk_27A = 1;
        } else {
            this->unk_27A = 0;
        }
        this->unk_273 = 1;
        this->unk_262 = 4;
    } else {
        this->unk_27A = 2;
        if ((gSaveContext.itemGetInf[2] & 0x4000) == 0) {
            this->unk_27A = 3; // Oh, too bad...were you pecked by a Cucco when you were little?
            if ((gSaveContext.eventChkInf[6] & 0x400) != 0) {
                this->unk_27A = 9;
                if (this->unk_277 != 0) {
                    this->unk_27A = 0xA;
                }
            } else {
                this->unk_27A = 4;
            }
        }
    }
    this->actor.textId = EnNiwLadyTradeItemText[this->unk_27A];
    this->actionFunc = &func_80ABA878;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABA878.s")
/*void func_80ABA878(EnNiwLady* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s8 playerExchangeItemId;

    if ((func_8010BDBC(&globalCtx->msgCtx) == 0) || (func_8010BDBC(&globalCtx->msgCtx) == 6)) {
        this->unk_26E = 11;
    }
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        playerExchangeItemId = func_8002F368(globalCtx);
        if ((playerExchangeItemId != 6) || (gSaveContext.eventChkInf[6] & 0x400) != 0) {
            func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
            player->actor.textId = EnNiwLadyTradeItemText[0xA];
            this->unk_262 = 4;
            this->unk_26E = this->unk_27A + 0x15;
            this->actionFunc = func_80ABAB08;
            return;
        }
        if (playerExchangeItemId == 0) {
            this->unk_274 = 1;
            this->unk_26E = this->unk_27A + 0x15;
            if (this->unk_273 != 0) {
                this->actionFunc = func_80ABA9B8;
                return;
            }
            this->actionFunc = func_80ABA778;
            return;
        }
        player->actor.textId = EnNiwLadyTradeItemText[0xE];
        ;
        this->unk_26E = this->unk_27A + 0x15;
        return;
    }
    func_8002F298(&this->actor, globalCtx, 50.0f, 6);
}*/
void func_80ABA878(EnNiwLady* this, GlobalContext* globalCtx) {
    Player* player;
    s8 playerExchangeItemId;

    player = PLAYER;
    if ((func_8010BDBC(&globalCtx->msgCtx) == 0) || (func_8010BDBC(&globalCtx->msgCtx) == 6)) {
        this->unk_26E = 11;
    }
    if (func_8002F194((Actor*)this, globalCtx) == 0) {
        goto block_12;
    }
    playerExchangeItemId = func_8002F368(globalCtx);
    if ((playerExchangeItemId != 6) || (gSaveContext.eventChkInf[6] & 0x400) != 0) {
        func_80078884((u16)0x4807U);
        player->actor.textId = EnNiwLadyTradeItemText[0xA];
        this->unk_262 = 4;
        this->unk_26E = this->unk_27A + 0x15;
        this->actionFunc = &func_80ABAB08;
        return;
        // goto block_7;
    }
block_7:
    if (playerExchangeItemId == 0) {
        goto block_9;
    }
    player->actor.textId = EnNiwLadyTradeItemText[0xE];
    this->unk_26E = this->unk_27A + 0x15;
    return;
block_9:
    this->unk_274 = 1;
    this->unk_26E = this->unk_27A + 0x15;
    if (this->unk_273 != 0) {
        goto block_11;
    }
    this->actionFunc = func_80ABA778;
    return;
block_11:
    this->actionFunc = func_80ABA9B8;
    return;
block_12:
    func_8002F298(&this->actor, globalCtx, 50.0f, 6);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABA9B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAA9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAB08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAC00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAC84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAD38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAD7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/EnNiwLady_Update.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABB0A0.s")
Gfx* func_80ABB0A0(GraphicsContext* gfxCtx) {
    // Gfx* dListHead;
    Gfx* dList;

    dList = Graph_Alloc(gfxCtx, sizeof(Gfx));
    gSPEndDisplayList(dList);
    return dList;
}

s32 EnNiwLady_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                               Actor* thisx) {
    EnNiwLady* this = THIS;
    s32 pad;

    if (limbIndex == 15) {
        rot->x += this->unk_254.y;
        rot->z += this->unk_254.x;
    }
    if (limbIndex == 8) {
        rot->x += this->unk_25A.y;
    }
    if (this->unk_275 != 0) {
        if ((limbIndex == 8) || (limbIndex == 10) || (limbIndex == 13)) {
            rot->y += (Math_Sins((globalCtx->state.frames * ((limbIndex * 0x32) + 0x814))) * 200.0f);
            rot->z += (Math_Coss((globalCtx->state.frames * ((limbIndex * 0x32) + 0x940))) * 200.0f);
        }
    }
    return 0;
}

void func_80ABB228(Actor* thisx, GlobalContext* globalCtx) {
    EnNiwLady* this = THIS;
    s32 pad;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_niw_lady.c", 1347);
    if (this->unk_27E != 0) {
        func_80093D18(globalCtx->state.gfxCtx);
        gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0, 0, 0, 255);
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80ABB408[this->unk_27C]));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0C, func_80ABB0A0(globalCtx->state.gfxCtx));
        SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                         EnNiwLady_OverrideLimbDraw, 0, thisx);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_niw_lady.c", 1370);
}
