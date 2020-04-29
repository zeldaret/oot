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
s32 EnHeishi2_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                               EnHeishi2* this);
void EnHeishi2_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, EnHeishi2* this);
void func_80A549E8(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A53850(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A54320(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A543A0(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A5455C(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A546DC(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A541FC(EnHeishi2* this, GlobalContext* globalCtx);

extern AnimationHeader D_06005C30;
extern AnimationHeader D_06005500;
extern ColliderCylinderInit D_80A54F10;
extern SkeletonHeader D_0600BAC8;
extern Gfx* D_0602B060;
extern Gfx* D_06002C10;

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
    ColliderCylinder* collider;
    Actor* thisx = &this->actor;

    Actor_SetScale(thisx, 0.01f);
    this->initParams = thisx->params & 0xFF;
    thisx->colChkInfo.mass = 0xFF;

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
        Collider_DestroyCylinder(globalCtx, &this->collider);
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
    Collider_InitCylinder(globalCtx, collider);
    Collider_SetCylinder(globalCtx, collider, thisx, &D_80A54F10);
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
            Collider_DestroyCylinder(globalCtx, collider);
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
        Collider_DestroyCylinder(globalCtx, &this->collider);
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

void func_80A53278(EnHeishi2* this, GlobalContext* globalCtx) {
    this->unk_309[2] = 0;
    this->unk_30E = 0;
    if (Text_GetFaceReaction(globalCtx, 5) != 0) {
        this->actor.textId = Text_GetFaceReaction(globalCtx, 5);
        this->unk_309[2] = 1;
        this->unk_300 = 6;
        this->actionFunc = func_80A5475C;
        return;
    }
    if (((gSaveContext.eventChkInf[0] & 0x200) != 0) && ((gSaveContext.eventChkInf[2] & 0x20) != 0)) {
        if ((gSaveContext.eventChkInf[3] & 0x80) != 0) {
            // "Get all spiritual stones!"
            osSyncPrintf(VT_FGCOL(GREEN) " ☆☆☆☆☆ 全部の精霊石GET！ ☆☆☆☆☆ \n" VT_RST);
            this->unk_300 = 6;
            this->actor.textId = 0x7006; // "There's a lot going on in the castle right now. I can't allow even..."
            this->actionFunc = func_80A5475C;
            return;
        }
    }
    if (gSaveContext.nightFlag != 0) {
        // "Sleep early for children!"
        osSyncPrintf(VT_FGCOL(YELLOW) " ☆☆☆☆☆ 子供ははやくネロ！ ☆☆☆☆☆ \n" VT_RST);
        this->unk_300 = 6;
        this->actor.textId = 0x7002; // "Welcome to Hyrule Castle Town. It's a peaceful, prosperous town."
        this->actionFunc = func_80A5475C;
        return;
    }
    if (this->unk_30C != 0) {
        // "Anything passes"
        osSyncPrintf(VT_FGCOL(BLUE) " ☆☆☆☆☆ なんでも通るよ ☆☆☆☆☆ \n" VT_RST);
        this->unk_300 = 6;
        this->actor.textId = 0x7099; // "KEEP IT A SECRET FROM EVERYONE"
        this->actionFunc = func_80A5475C;
        return;
    }
    if ((gSaveContext.eventChkInf[1] & 4) != 0) {
        if (this->unk_30E == 0) {
            // "Start under the first sleeve!"
            osSyncPrintf(VT_FGCOL(PURPLE) " ☆☆☆☆☆ １回目袖の下開始！ ☆☆☆☆☆ \n" VT_RST);
            this->actor.textId = 0x7071; // "Do you really want to go through this gate that much?..."
            this->unk_30E = 1;
        } else {
            // "Start under the second sleeve!"
            osSyncPrintf(VT_FGCOL(PURPLE) " ☆☆☆☆☆ ２回目袖の下開始！ ☆☆☆☆☆ \n" VT_RST);
            this->actor.textId = 0x7072; //  "Give me 10 Rupees...Yes...No"
        }
        this->unk_300 = 4;
        this->actionFunc = func_80A5475C;

    }

    else {
        // "That's okay"
        osSyncPrintf(VT_FGCOL(CYAN) " ☆☆☆☆☆ それはとおらんよぉ ☆☆☆☆☆ \n" VT_RST);
        this->unk_300 = 6;
        this->actor.textId = 0x7029; // "So you say you want to see Princess Zelda, eh?..."
        this->actionFunc = func_80A5475C;
    }
}

void func_80A5344C(EnHeishi2* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {

        this->unk_300 = 5;
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0:
                if (gSaveContext.rupees >= 10) {
                    Rupees_ChangeBy(-10);
                    thisx->textId = 0x7098; // "OK, I'll let you pass, quickly!"
                    this->actionFunc = func_80A53538;
                    break;
                }

                else {
                    thisx->textId = 0x7097; // "Well, maybe that's too much for a kid to pay."
                    this->actionFunc = func_80A54954;
                    break;
                }
            case 1:
                thisx->textId = 0x7096; // "Tsk tsk."
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

void func_80A535BC(EnHeishi2* this, GlobalContext* globalCtx) {
    f32 frames = SkelAnime_GetFrameCount(&D_06005500.genericHeader);
    this->unk_2EC = frames;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005500, 1.0f, 0.0f, frames, 2, -10.0f);
    this->actionFunc = func_80A53638;
}
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53638.s")

void func_80A5372C(EnHeishi2* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f,
                         (s16)(f32)SkelAnime_GetFrameCount(&D_06005C30.genericHeader), 0, -10.0f);
    this->gateTimer = 200;
    this->cameraId = Gameplay_CreateSubCamera(globalCtx);
    Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
    Gameplay_ChangeCameraStatus(globalCtx, this->cameraId, 7);
    this->unk_280.x = 947.0f;
    this->unk_280.y = 1195.0f;
    this->unk_280.z = 2682.0f;
    this->unk_28C.x = 1164.0f;
    this->unk_28C.y = 1145.0f;
    this->unk_28C.z = 3014.0f;
    func_800C04D8(globalCtx, this->cameraId, &this->unk_280, &this->unk_28C);
    this->actionFunc = func_80A53850;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53850.s")

void func_80A53908(EnHeishi2* this, GlobalContext* globalCtx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_06005C30.genericHeader);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f, (s16)frameCount, 0, -10.0f);
    this->actionFunc = func_80A5399C;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5399C.s")

void func_80A53AD4(EnHeishi2* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 flag;
    s16 angleDiff;
    s16 newAngleDiff;
    Actor* thisx = &this->actor;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (Text_GetFaceReaction(globalCtx, 5) != 0) {
        thisx->textId = Text_GetFaceReaction(globalCtx, 5);
    } else {
        thisx->textId = 0x200E; // "The road is closed beyond this point! Can't you read..."
    }
    this->unk_300 = 6;
    if (func_8002F194(this, globalCtx) != 0) {
        flag = func_8002F368(globalCtx);
        if (flag == 1) {
            func_80078884(NA_SE_SY_CORRECT_CHIME);
            player->actor.textId = 0x2010; // "Oh, this is...this is surely Princess Zelda's handwriting!"
            this->unk_300 = 5;
            this->actionFunc = func_80A53C0C;

        } else if (flag != 0) {

            player->actor.textId = 0x200F; // "I don't want that!"
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
            globalCtx->msgCtx.msgMode = 0x37;
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

void func_80A53DF8(EnHeishi2* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f,
                         (s16)(f32)SkelAnime_GetFrameCount(&D_06005C30.genericHeader), 0, -10.0f);
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

void func_80A54038(EnHeishi2* this, GlobalContext* globalCtx) {
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

//

#ifdef NON_MATCHING
// regalloc
void func_80A540C0(EnHeishi2* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0:
                this->actor.textId = 0x2020;
                func_8010B720(globalCtx, this->actor.textId);
                func_8008F08C(globalCtx);
                gSaveContext.infTable[7] |= 0x80;
                gSaveContext.itemGetInf[3] |= 0x100;
                Item_Give(globalCtx, 0x2C);
                if (this->unk_309[1] != 0) {
                    this->unk_309[1] = 2;
                    this->unk_30E = 1;
                    this->actionFunc = func_80A5427C;
                }

                else {
                    this->unk_30E = 0;
                    this->actionFunc = func_80A541FC;
                }
                break;

            case 1:
                this->unk_30E = 1;
                this->actor.textId = 0x200C;
                func_8010B720(globalCtx, this->actor.textId);
                this->unk_300 = 5;
                if (this->unk_309[1] == 0) {
                    this->actionFunc = func_80A5427C;
                }

                else {
                    this->actionFunc = func_80A54954;
                }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A540C0.s")
#endif

void func_80A541FC(EnHeishi2* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80106BC8(globalCtx) != 0) {
            this->actor.textId = 0x2021; // "You sold the 10-Rupee mask for 15 Rupees. You earned a little profit. Let's
                                         // go to the Mask Shop..."
            Rupees_ChangeBy(15);
            func_8010B720(globalCtx, this->actor.textId);
            this->actionFunc = func_80A5427C;
        }
    }
}

void func_80A5427C(EnHeishi2* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80106BC8(globalCtx) != 0) {
            if (this->unk_30E == 0) {
                this->unk_30E = 0;
                this->unk_309[1] = this->unk_30E;
                func_80106CCC(globalCtx);
                this->actionFunc = func_80A53908;
            } else {
                globalCtx->msgCtx.msgMode = 0x37;
                this->actionFunc = func_80A54320;
            }
        }
    }
}

void func_80A54320(EnHeishi2* this, GlobalContext* globalCtx) {
    f32 frameCount;

    frameCount = (f32)SkelAnime_GetFrameCount(&D_06005500.genericHeader);
    this->unk_2EC = frameCount;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005500, 1.0f, 0.0f, frameCount, 2, -10.0f);
    this->audioFlag = 0;
    this->actionFunc = func_80A543A0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A543A0.s")

void func_80A544AC(EnHeishi2* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, -0x17D4, 5, (s16)(s32)(f32)this->unk_2E4, 0);
    Math_SmoothScaleMaxF(&this->unk_2E4, 3000.0f, 1.0f, 500.0f);
    this->actor.posRot.rot.z = this->actor.shape.rot.z;
    if (this->actor.shape.rot.z < -6000) {
        func_8010B680(globalCtx, 0x708F, 0);
        this->actor.flags |= 0x10000;
        this->actionFunc = func_80A5455C;
        this->unk_2E4 = 0.0f;
    }
}

#ifdef NON_MATCHING
// cant get this one matching
void func_80A5455C(EnHeishi2* this, GlobalContext* globalCtx) {
    EnBom* bomb;
    Vec3f vec;
    Actor* thisx = &this->actor;
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
        func_8002DF54(globalCtx, (void*)0, 7);
        func_80106CCC(globalCtx);
        vec.x = Math_Rand_CenteredFloat(20.0f) + this->unk_274.x;
        vec.y = Math_Rand_CenteredFloat(20.0f) + (this->unk_274.y - 40.0f);
        vec.z = Math_Rand_CenteredFloat(20.0f) + (this->unk_274.z - 20.0f);
        bomb = (EnBom*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOM, vec.x, vec.y, vec.z, 0,
                                   (s16)(Math_Rand_CenteredFloat(7000.0f) + thisx->rotTowardsLinkY), 0, 0);

        if (&bomb->actor != ((void*)0)) {
            bomb->actor.speedXZ = Math_Rand_CenteredFloat(5.0f) + 10.0f;
            bomb->actor.velocity.y = Math_Rand_CenteredFloat(5.0f) + 10.0f;
        }

        osSyncPrintf("\x1b[33m ☆☆☆☆☆ これでダウンだ！ ☆☆☆☆☆ \n\x1b[m");
        this->actionFunc = func_80A546DC;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5455C.s")
#endif

void func_80A546DC(EnHeishi2* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;
    Math_SmoothScaleMaxMinS(&thisx->shape.rot.z, 200, 5, this->unk_2E4, 0);
    Math_SmoothScaleMaxF(&this->unk_2E4, 3000.0f, 1.0f, 500.0f);
    thisx->posRot.rot.z = thisx->shape.rot.z;
    if (thisx->shape.rot.z > 0) {
        Actor_Kill(thisx);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5475C.s")

void func_80A54954(EnHeishi2* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f,
                         (s16)(f32)SkelAnime_GetFrameCount(&D_06005C30.genericHeader), 0, -10.0f);
    this->actionFunc = func_80A549E8;
}

void func_80A549E8(EnHeishi2* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_300 == func_8010BDBC(&globalCtx->msgCtx)) {
        if (func_80106BC8(globalCtx) != 0) {
            func_80106CCC(globalCtx);
            if (this->initParams == 2) {
                this->actionFunc = func_80A531E4;
            }
            if (this->initParams == 5) {
                this->actionFunc = func_80A53908;
            }
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/EnHeishi2_Update.s")

void EnHeishi2_Update(EnHeishi2* this, GlobalContext* globalCtx) {
    ColliderCylinder* collider;
    EnHeishi2* heishi2Temp;
    Actor* thisx = &this->actor;
    s32 phi_v1;

    Actor_SetHeight(thisx, this->unk_2E0);
    if ((this->initParams == 2) || (this->initParams == 5)) {
        this->actor.posRot2.pos.y = 70.0f;
        Actor_SetHeight(thisx, 70.0f);
        func_80038290(globalCtx, thisx, &this->unk_260, &this->unk_26C, thisx->posRot2.pos);
    }

    this->unk_2FC++;
    phi_v1 = 0;
    heishi2Temp = this;

    do {
        phi_v1 += 2;
        if (heishi2Temp->gateTimer != 0) {
            heishi2Temp->gateTimer--;
        }
        heishi2Temp = (EnHeishi2*)&(heishi2Temp->actor.type);
    } while (phi_v1 != 10);
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(thisx);
    if (this->initParams != 6) {
        if (this->initParams != 9) {
            func_8002E4B4(globalCtx, thisx, 10.0f, 10.0f, 30.0f, 0x1D);
            collider = &this->collider;
            Collider_CylinderUpdate(thisx, collider);
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, collider);
        }
    }
}

s32 EnHeishi2_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                               EnHeishi2* this) {
    if ((this->initParams != 1) && (this->initParams != 7)) {
        if (limbIndex == 9) {
            rot->x = rot->x + this->unk_26C.y;
        }
        if (limbIndex == 16) {
            rot->x = rot->x + this->unk_260.y;
            rot->z = rot->z + this->unk_260.z;
        }
    }
    return 0;
}

void EnHeishi2_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, EnHeishi2* this) {
    if (limbIndex == 16) {
        Matrix_Get(&this->mtxf_330);
    }
}

void func_80A54C6C(EnHeishi2* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_heishi2.c", 1772);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_heishi2.c", 1774),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_06002C10);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_heishi2.c", 1777);
}

#ifdef NON_MATCHING
void EnHeishi2_Draw(EnHeishi2* this, GlobalContext* globalCtx) {
    s32 objBankIndex;
    GraphicsContext* gfxCtx;
    Actor* thisx;
    Gfx* dispRefs[5];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_heishi2.c", 1792);
    func_80093D18(globalCtx->state.gfxCtx);
    thisx = &this->actor;
    SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, EnHeishi2_OverrideLimbDraw,
                   EnHeishi2_PostLimbDraw, thisx);
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
