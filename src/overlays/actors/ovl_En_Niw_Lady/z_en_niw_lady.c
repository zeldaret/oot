#include "z_en_niw_lady.h"
#include "../ovl_En_Niw/z_en_niw.h"
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
void func_80ABAC00(EnNiwLady* this, GlobalContext* globalCtx);
void func_80ABAA9C(EnNiwLady* this, GlobalContext* globalCtx);
void func_80ABAA9C(EnNiwLady* this, GlobalContext* globalCtx);
void func_80ABAC84(EnNiwLady* this, GlobalContext* globalCtx);
void func_80ABA244(EnNiwLady* this, GlobalContext* globalCtx);
void func_80ABA654(EnNiwLady* this, GlobalContext* globalCtx);

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

s16 D_80ABB3A0[] = {
    0x5036, 0x5070, 0x5072, 0x5037, 0x5038, 0x5039, 0x503A, 0x503B, 0x503D, 0x503C,
};

static s16 D_80ABB3B4[] = {
    0x0200, 0x0400, 0x0800, 0x1000, 0x2000, 0x4000, 0x8000, 0x0000,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 10, 10, 0, { 0, 0, 0 } },
};

static s16 EnNiwLadyTradeItemText[] = { 0x503E, 0x503F, 0x5047, 0x5040, 0x5042, 0x5043,
                                        0x5044, 0x00CF, 0x5045, 0x5042, 0x5027, 0x0000 };

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

void func_80ABA244(EnNiwLady* this, GlobalContext* globalCtx) {
    EnNiw* firstNiw;
    EnNiw* currentNiw;
    s32 phi_s1;

    this->unk_268 = 0;
    firstNiw = (EnNiw*)globalCtx->actorCtx.actorList[ACTORTYPE_PROP].first;
    currentNiw = firstNiw;
    while (currentNiw != NULL) {
        if (currentNiw->actor.id == 0x19) {
            if ((fabsf(currentNiw->actor.posRot.pos.x - 330.0f) < 90.0f) &&
                (fabsf(currentNiw->actor.posRot.pos.z - 1610.0f) < 190.0f)) {
                if (this->unk_26C == 0) {
                    gSaveContext.infTable[0x19] |= D_80ABB3B4[currentNiw->unk_2AA];
                    if (gGameInfo->data[0x961] != 0) {
                        // GET inside the chicken fence!
                        osSyncPrintf(VT_FGCOL(GREEN) "☆ 鶏柵内ＧＥＴ！☆ %x\n" VT_RST, D_80ABB3B4[currentNiw->unk_2AA]);
                    }
                }
                this->unk_268++;
            } else if (this->unk_26C == 0) {
                gSaveContext.infTable[0x19] &= ~D_80ABB3B4[currentNiw->unk_2AA];
            }
        }
        currentNiw = currentNiw->actor.next;
    }
    if (gGameInfo->data[0x967] != 0) {
        this->unk_268 = gGameInfo->data[0x967] - 1;
    }
    phi_s1 = this->unk_268;
    if ((func_8010BDBC(&globalCtx->msgCtx) == 0) || (func_8010BDBC(&globalCtx->msgCtx) == 6)) {
        this->unk_26E = 0x65;
    }
    if (this->unk_268 >= 7) {
        phi_s1 = 8;
        if ((this->unk_26C < 2) && (this->unk_26C == 0)) {
            phi_s1 = 7;
        }
    }
    if ((this->unk_26C != 0) && (phi_s1 < 7)) {
        phi_s1 = 9;
    }
    this->actor.textId = D_80ABB3A0[phi_s1];
    if (Text_GetFaceReaction(globalCtx, 8) != 0) {
        this->actor.textId = Text_GetFaceReaction(globalCtx, 8);
        this->unk_262 = 6;
    }
    if ((this->unk_26C != 0) && (phi_s1 != 9)) {
        phi_s1 = 0xA;
        this->unk_26E = 0xB;
    }
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        osSyncPrintf("\n\n");
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ ねぇちゃん選択\t ☆☆☆☆ %d\n" VT_RST, phi_s1);
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ ねぇちゃんハート     ☆☆☆☆ %d\n" VT_RST, this->unk_26C);
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ ねぇちゃん保存       ☆☆☆☆ %d\n" VT_RST, this->unk_26A);
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ ねぇちゃん今\t ☆☆☆☆ %d\n" VT_RST, this->unk_268);
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ this->actor.talk_message ☆☆ %x\n" VT_RST, this->actor.textId);
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ this->message_end_code   ☆☆ %d\n" VT_RST, this->unk_262);
        osSyncPrintf("\n\n");
        if (Text_GetFaceReaction(globalCtx, 8U) == 0) {
            if (this->actor.textId == 0x503C) {
                func_80078884(NA_SE_SY_ERROR);
                this->unk_26C = 2;
                this->unk_262 = 5;
                this->actionFunc = func_80ABA654;
                return;
            }
            this->unk_26E = phi_s1 + 1;
            if (phi_s1 == 7) {
                func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
                this->unk_26C = 1;
                this->unk_262 = 5;
                this->unk_26A = this->unk_268;
                osSyncPrintf(VT_FGCOL(CYAN) "☆☆☆☆☆ 柵内BIT変更前 ☆☆ %x\n" VT_RST, gSaveContext.infTable[0x19]);
                gSaveContext.infTable[0x19] &= 0x1FF;
                osSyncPrintf(VT_FGCOL(CYAN) "☆☆☆☆☆ 柵内BIT変更後 ☆☆ %x\n" VT_RST, gSaveContext.infTable[0x19]);
                osSyncPrintf("\n\n");
                this->actionFunc = &func_80ABA654;
                return;
            }
            if (this->unk_26A != this->unk_268) {
                if (this->unk_268 < this->unk_26A) {
                    func_80078884(NA_SE_SY_ERROR);
                } else {
                    if (phi_s1 + 1 < 9) {
                        func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
                    }
                }
            }
            if (this->unk_26A < this->unk_268) {
                this->unk_26A = this->unk_268;
                return;
            }
        }
    } else {
        func_8002F2CC(&this->actor, globalCtx, 100.0f);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABA654.s")

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
    this->actionFunc = func_80ABA878;
}

void func_80ABA878(EnNiwLady* this, GlobalContext* globalCtx) {
    Player* player;
    s8 playerExchangeItemId;

    player = PLAYER;
    if ((func_8010BDBC(&globalCtx->msgCtx) == 0) || (func_8010BDBC(&globalCtx->msgCtx) == 6)) {
        this->unk_26E = 11;
    }
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        playerExchangeItemId = func_8002F368(globalCtx);
        if (!((playerExchangeItemId != 6) || !(gSaveContext.eventChkInf[6] & 0x400))) {
            func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
            player->actor.textId = EnNiwLadyTradeItemText[5];
            this->unk_26E = this->unk_27A + 21;
            this->unk_262 = 4;
            this->actionFunc = func_80ABAB08;
        } else if (playerExchangeItemId != 0) {
            player->actor.textId = EnNiwLadyTradeItemText[7];
            this->unk_26E = this->unk_27A + 21;
        } else {
            this->unk_274 = 1;
            this->unk_26E = this->unk_27A + 21;
            this->actionFunc = (!this->unk_273) ? func_80ABA778 : func_80ABA9B8;
        }
    } else {
        func_8002F298(&this->actor, globalCtx, 50.0f, 6);
    }
}

void func_80ABA9B8(EnNiwLady* this, GlobalContext* globalCtx) {
    if ((this->unk_262 == func_8010BDBC(&globalCtx->msgCtx)) && (func_80106BC8(globalCtx) != 0)) {
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0:
                func_80106CCC(globalCtx);
                this->actor.parent = NULL;
                func_8002F434((Actor*)this, globalCtx, 0x1D, 200.0f, 100.0f);
                this->actionFunc = func_80ABAC00;
                return;
            case 1:
                this->actor.textId = EnNiwLadyTradeItemText[3];
                this->unk_26E = this->unk_27A + 0x15;
                func_8010B720(globalCtx, this->actor.textId);
                this->unk_262 = 5;
                this->actionFunc = func_80ABAA9C;
                return;
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAA9C.s")

void func_80ABAB08(EnNiwLady* this, GlobalContext* globalCtx) {
    if ((this->unk_262 == func_8010BDBC(&globalCtx->msgCtx)) && (func_80106BC8(globalCtx) != 0)) {
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0:
                func_80106CCC(globalCtx);
                this->actor.parent = NULL;
                func_8002F434(&this->actor, globalCtx, 0xE, 200.0f, 100.0f);
                this->actionFunc = func_80ABAC00;
                return;
            case 1:
                func_80106CCC(globalCtx);
                this->unk_277 = 1;
                this->actor.textId = EnNiwLadyTradeItemText[8];
                this->unk_26E = (this->unk_27A + 21);
                func_8010B720(globalCtx, this->actor.textId);
                this->unk_262 = 5;
                this->actionFunc = func_80ABAA9C;
                return;
        }
    }
}

void func_80ABAC00(EnNiwLady* this, GlobalContext* globalCtx) {
    s32 getItemID;

    if (Actor_HasParent(&this->actor, globalCtx) != 0) {
        this->actionFunc = func_80ABAC84;
    } else {
        getItemID = this->unk_284;
        if (LINK_IS_ADULT) {
            getItemID = (!(gSaveContext.itemGetInf[2] & 0x1000)) ? GI_POCKET_EGG : GI_COJIRO;
        }
        func_8002F434(&this->actor, globalCtx, getItemID, 200.0f, 100.0f);
    }
}


void func_80ABAC84(EnNiwLady* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) != 6) || (func_80106BC8(globalCtx) == 0)) {
        return;
    }
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n" VT_RST);
    if (gSaveContext.linkAge == 0) {
        if ((gSaveContext.itemGetInf[2] & 0x1000) == 0) {
            gSaveContext.itemGetInf[2] |= 0x1000;
        } else {
            gSaveContext.itemGetInf[2] |= 0x4000;
        }
        this->actionFunc = func_80ABA778;
    } else {
        gSaveContext.itemGetInf[0] = gSaveContext.itemGetInf[0] | 0x1000;
        this->unk_262 = 6;
        this->actionFunc = func_80ABA244;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAD38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAD7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/EnNiwLady_Update.s")

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
