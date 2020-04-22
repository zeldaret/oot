#include "z_en_heishi2.h"

#define FLAGS 0x00000009

void EnHeishi2_Init(EnHeishi2* this, GlobalContext* globalCtx);
void EnHeishi2_Destroy(EnHeishi2* this, GlobalContext* globalCtx);
void EnHeishi2_Update(EnHeishi2* this, GlobalContext* globalCtx);
void EnHeishi2_Draw(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A531CC(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A531D8(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A531E4(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A53278(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A5344C(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A54954(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A53538(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A535BC(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A5399C(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A53638(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A5372C(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A5475C(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A53AD4(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A53C0C(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A53C90(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A53D0C(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A54C6C(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A544AC(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A53908(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A53F30(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A54038(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A5427C(EnHeishi2* this, GlobalContext* globalCtx);
s32 func_80A54BC0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, EnHeishi2* this);
void func_80A54C34(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, EnHeishi2* this);

extern AnimationHeader D_06005C30;
extern AnimationHeader D_06005500;
extern ColliderCylinderInit D_80A54F10;
extern SkeletonHeader D_0600BAC8;
extern Gfx* D_0602B060;

/*
const ActorInit En_Heishi2_InitVars = {
    ACTOR_EN_HEISHI2,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_SD,
    sizeof(EnHeishi2),
    (ActorFunc)EnHeishi2_Init,
    (ActorFunc)EnHeishi2_Destroy,
    (ActorFunc)EnHeishi2_Update,
    (ActorFunc)EnHeishi2_Draw,
};
*/
void EnHeishi2_Init(EnHeishi2* this, GlobalContext* globalCtx) {
    ColliderCylinderMain* collider;
    Actor* thisx = &this->actor;

    Actor_SetScale(thisx, 0.01f);
    this->initParams = thisx->params & 0xFF;
    thisx->sub_98.mass = 0xFF;

    if ((this->initParams == 6) || (this->initParams == 9)) {
        thisx->draw = func_80A54C6C;
        thisx->flags &= -2;
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, thisx, 6);
        if (this->initParams == 6) {
            this->actionFunc = func_80A531CC;
            return;
        }
        osSyncPrintf("\n\n");
        // "No, I'm completely disappointed" (message for when shooting guard window in courtyard)
        osSyncPrintf(VT_FGCOL(PURPLE) " ☆☆☆☆☆ いやー ついうっかり ☆☆☆☆☆ \n" VT_RST); 
                                                                                 
        Actor_SetScale(thisx, 0.02f);

        this->unk_274 = thisx->posRot.pos;
        thisx->posRot.rot.y = 0x7918;
        thisx->posRot.pos.x += 90.0f;
        thisx->posRot.pos.y -= 60.0f;
        thisx->posRot.pos.z += 90.0f;
        thisx->shape.rot.y = thisx->posRot.rot.y;
        ActorCollider_FreeCylinder(globalCtx, &this->collider);
        func_8002DF54(globalCtx, 0, 8);
        thisx->flags |= 0x11;
        this->actionFunc = func_80A544AC;
        return;
    }
    this->unk_2E0 = 60.0f;
    ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_0600BAC8, &D_06005C30, this->limbDrawTable,
                   this->transitionDrawTable, 17);
    collider = &this->collider;
    ActorCollider_AllocCylinder(globalCtx, collider);
    ActorCollider_InitCylinder(globalCtx, collider, thisx, &D_80A54F10);
    this->collider.dim.yShift = 0;
    this->collider.dim.radius = 0xF;
    this->collider.dim.height = 0x46;
    thisx->unk_1F = 6;

    switch (this->initParams) {

        case 2:
            this->actionFunc = func_80A531E4;
            thisx->gravity = -1.0f;
            break;
        case 5:
            this->actionFunc = func_80A53908;
            thisx->gravity = -1.0f;
            break;
        case 6:
            osSyncPrintf("\n\n");
            // "Peep hole soldier!"
            osSyncPrintf(VT_FGCOL(GREEN) " ☆☆☆☆☆ 覗き穴奥兵士ふぃ〜 ☆☆☆☆☆ \n" VT_RST);
            ActorCollider_FreeCylinder(globalCtx, collider);
            thisx->flags &= -0xA;
            this->actionFunc = func_80A531D8;
            break;
    }

    this->unk_2F0 = (thisx->params >> 8) & 0xFF;
    osSyncPrintf("\n\n");
    // "Soldier Set 2 Completed!"
    osSyncPrintf(VT_FGCOL(GREEN) " ☆☆☆☆☆ 兵士２セット完了！ ☆☆☆☆☆ %d\n" VT_RST, thisx->params);
    // "Identification Completed!"
    osSyncPrintf(VT_FGCOL(YELLOW) " ☆☆☆☆☆ 識別完了！         ☆☆☆☆☆ %d\n" VT_RST, this->initParams);
    // "Message completed!"
    osSyncPrintf(VT_FGCOL(PURPLE) " ☆☆☆☆☆ メッセージ完了！   ☆☆☆☆☆ %x\n\n" VT_RST, (thisx->params >> 8) & 0xF);
}

void EnHeishi2_Destroy(EnHeishi2* this, GlobalContext* globalCtx) {
    if ((this->collider.dim.radius != 0) || (this->collider.dim.height != 0)) {
        ActorCollider_FreeCylinder(globalCtx, &this->collider);
    }
}

void func_80A531CC(EnHeishi2* this, GlobalContext* globalCtx) {
}

void func_80A531D8(EnHeishi2* this, GlobalContext* globalCtx) {
}

void func_80A531E4(EnHeishi2* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f,
                         (s16)(f32)SkelAnime_GetFrameCount(&D_06005C30.genericHeader), 0, -10.0f);
    this->actionFunc = func_80A53278;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53278.s")

void func_80A5344C(EnHeishi2* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {

        this->unk_300 = (u16)5;
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0:
                if (gSaveContext.rupees >= 10) {
                    Rupees_ChangeBy(-10);
                    thisx->textId = 0x7098;
                    this->actionFunc = func_80A53538;
                    break;
                }

                else {
                    thisx->textId = 0x7097;
                    this->actionFunc = func_80A54954;
                    break;
                }
            case 1:
                thisx->textId = 0x7096;
                this->actionFunc = func_80A54954;
                break;

            default:
                break;
        }
        func_8010B720(globalCtx, thisx->textId);
    }
}

void func_80A53538(EnHeishi2* this, GlobalContext* globalCtx) {

    Actor* thisx = &this->actor;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_300 == func_8010BDBC(&globalCtx->msgCtx)) {
        if (func_80106BC8(globalCtx) != 0) {
            func_8002DF54(globalCtx, NULL, 8);
            globalCtx->msgCtx.msgMode = 0x37;
            this->actionFunc = func_80A535BC;
        }
    }
}

extern AnimationHeader D_06005500;
void func_80A535BC(EnHeishi2* this, GlobalContext* globalCtx) {
    f32 frames = SkelAnime_GetFrameCount(&D_06005500.genericHeader);
    this->unk_2EC = frames;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005500, 1.0f, 0.0f, frames, 2, -10.0f);
    this->actionFunc = func_80A53638;
}
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53638.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5372C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53850.s")

void func_80A53908(EnHeishi2* this, GlobalContext* globalCtx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_06005C30.genericHeader);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f, (s16)frameCount, 0, -10.0f);
    this->actionFunc = func_80A5399C;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5399C.s")

void func_80A53AD4(EnHeishi2* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 temp_ret;
    s16 angleDiff;
    s16 newAngleDiff;
    Actor* thisx = &this->actor;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (Text_GetFaceReaction(globalCtx, 5) != 0) {
        thisx->textId = Text_GetFaceReaction(globalCtx, 5);
    } else {
        thisx->textId = 0x200E;
    }
    this->unk_300 = 6;
    if (func_8002F194(this, globalCtx) != 0) {
        temp_ret = func_8002F368(globalCtx);
        if (temp_ret == 1) {
            func_80078884(0x4802);
            player->actor.textId = 0x2010;
            this->unk_300 = 5;
            this->actionFunc = func_80A53C0C;

        } else if (temp_ret != 0) {

            player->actor.textId = (u16)0x200F;
        }
    } else {
        angleDiff = this->actor.rotTowardsLinkY - this->actor.shape.rot.y;
        if (angleDiff >= 0) {
            newAngleDiff = angleDiff;
        } else {
            newAngleDiff = -angleDiff;
        }
        if (!(120.0f < this->actor.xzDistanceFromLink)) {
            if ((newAngleDiff) < 0x4300) {
                func_8002F298(this, globalCtx, 100.0f, 1);
            }
        }
    }
}

void func_80A53C0C(EnHeishi2* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_300 == func_8010BDBC(&globalCtx->msgCtx)) {
        if (func_80106BC8(globalCtx) != 0) {
            func_8002DF54(globalCtx, 0, 8);
            globalCtx->msgCtx.msgMode = (u8)0x37U;
            this->actionFunc = func_80A53C90;
        }
    }
}

void func_80A53C90(EnHeishi2* this, GlobalContext* globalCtx) {
    f32 frameCount = (f32)SkelAnime_GetFrameCount(&D_06005500.genericHeader);
    this->unk_2EC = frameCount;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005500, 1.0f, 0.0f, frameCount, 2, -10.0f);
    this->actionFunc = func_80A53D0C;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53D0C.s")

void func_80A53DF8(EnHeishi2 *this, GlobalContext *globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f, (s16)(f32) SkelAnime_GetFrameCount(&D_06005C30.genericHeader), 0, -10.0f);
    this->gateTimer = 200;
    this->cameraId = Gameplay_CreateSubCamera(globalCtx);
    Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
    Gameplay_ChangeCameraStatus(globalCtx, this->cameraId, 7);
    this->unk_2BC.x = -71.0f;
    this->unk_280.x = -71.0f;
    this->unk_2BC.y = 571.0f;
    this->unk_280.y = 571.0f;
    this->unk_2BC.z = -1487.0f;
    this->unk_280.z = -1487.0f;
    this->unk_298.x = 181.0f;
    this->unk_28C.x = 181.0f;
    this->unk_298.y = 417.0f;
    this->unk_28C.y = 417.0f;
    this->unk_298.z = -1079.0f;
    this->unk_28C.z = -1079.0f;
    func_800C04D8(globalCtx, this->cameraId, &this->unk_280, &this->unk_28C);
    this->actionFunc = func_80A53F30;
}
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53F30.s")

void func_80A54038(EnHeishi2 *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80106BC8(globalCtx) != 0) {
            gSaveContext.infTable[7] |= 0x40;
            func_80106CCC(globalCtx);
            func_8002DF54(globalCtx, 0, 7);
            this->actionFunc = func_80A53908;
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A540C0.s")

void func_80A541FC(EnHeishi2 *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80106BC8(globalCtx) != 0) {
            this->actor.textId = 0x2021; // "You sold the 10-Rupee mask for 15 Rupees. You earned a little profit. Let's go to the Mask Shop..."
            Rupees_ChangeBy(15);
            func_8010B720(globalCtx, this->actor.textId);
            this->actionFunc = func_80A5427C;
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5427C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A54320.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A543A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A544AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5455C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A546DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5475C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A54954.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A549E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/EnHeishi2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A54BC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A54C34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A54C6C.s")



#ifdef NON_MATCHING
void EnHeishi2_Draw(EnHeishi2 *this, GlobalContext *globalCtx) {
    s32 objBankIndex;
    GraphicsContext* gfxCtx;
    Actor* thisx;
    Gfx* dispRefs[5];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_heishi2.c", 1792);
    func_80093D18(globalCtx->state.gfxCtx);
    thisx = &this->actor;
    SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_80A54BC0, func_80A54C34, thisx);
    if ((this->initParams == 5) && (gSaveContext.infTable[7] & 0x80) != 0) {
            objBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_LINK_CHILD);
            if (objBankIndex >= 0) {
                Matrix_Put(&this->mtxf_330);
                Matrix_Translate(-570.0f, 0.0f, 0.0f, 1);
                Matrix_RotateZ(1.2217304706573486f, 1);
                gSPSegment(gfxCtx->polyOpa.p++, 0x0D, Matrix_NewMtx(gfxCtx, "../z_en_heishi2.c", 1820) + 0xFE40);
                gSPSegment(gfxCtx->polyOpa.p++, 0x06, globalCtx->objectCtx.status[objBankIndex].segment);
                
                gSPDisplayList(gfxCtx->polyOpa.p++, &D_0602B060);
                gSPSegment(gfxCtx->polyOpa.p++, 0x06, globalCtx->objectCtx.status[thisx->objBankIndex].segment);
            }
    }
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_heishi2.c", 1834);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/EnHeishi2_Draw.s")
#endif