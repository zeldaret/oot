/*
 * File: z_en_heishi2.c
 * Overlay: ovl_En_Heishi2
 * Description: Hyrulian Guards
 */

#include "z_en_heishi2.h"
#include "overlays/actors/ovl_Bg_Gate_Shutter/z_bg_gate_shutter.h"
#include "overlays/actors/ovl_En_Bom/z_en_bom.h"
#include "overlays/actors/ovl_Bg_Spot15_Saku/z_bg_spot15_saku.h"
#include <vt.h>

#define FLAGS 0x00000009

#define THIS ((EnHeishi2*)thisx)

void EnHeishi2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi2_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi2_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A54C6C(Actor* thisx, GlobalContext* globalCtx);
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
void func_80A544AC(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A53908(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A53F30(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A54038(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A5427C(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A549E8(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A53850(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A54320(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A543A0(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A5455C(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A546DC(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A541FC(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A53DF8(EnHeishi2* this, GlobalContext* globalCtx);

extern AnimationHeader D_06005C30;
extern AnimationHeader D_06005500;
extern SkeletonHeader D_0600BAC8;
extern Gfx D_0602B060[]; // Keaton Mask
extern Gfx D_06002C10[]; // 2D Guard in Window

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

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 33, 40, 0, { 0, 0, 0 } },
};

void EnHeishi2_Init(Actor* thisx, GlobalContext* globalCtx) {
    ColliderCylinder* collider;
    EnHeishi2* this = THIS;

    Actor_SetScale(&this->actor, 0.01f);
    this->initParams = this->actor.params & 0xFF;
    this->actor.colChkInfo.mass = 255;

    if ((this->initParams == 6) || (this->initParams == 9)) {
        this->actor.draw = func_80A54C6C;
        this->actor.flags &= -2;
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, 6);
        if (this->initParams == 6) {
            this->actionFunc = func_80A531CC;

        } else {
            osSyncPrintf("\n\n");
            // "No, I'm completely disappointed" (message for when shooting guard window in courtyard)
            osSyncPrintf(VT_FGCOL(PURPLE) " ☆☆☆☆☆ いやー ついうっかり ☆☆☆☆☆ \n" VT_RST);

            Actor_SetScale(&this->actor, 0.02f);

            this->unk_274 = this->actor.posRot.pos;
            this->actor.posRot.rot.y = 0x7918;
            this->actor.posRot.pos.x += 90.0f;
            this->actor.posRot.pos.y -= 60.0f;
            this->actor.posRot.pos.z += 90.0f;
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
            Collider_DestroyCylinder(globalCtx, &this->collider);
            func_8002DF54(globalCtx, 0, 8);
            this->actor.flags |= 0x11;
            this->actionFunc = func_80A544AC;
        }
    } else {
        this->unk_2E0 = 60.0f;
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
        SkelAnime_Init(globalCtx, &this->skelAnime, &D_0600BAC8, &D_06005C30, this->limbDrawTable,
                       this->transitionDrawTable, 17);
        collider = &this->collider;
        Collider_InitCylinder(globalCtx, collider);
        Collider_SetCylinder(globalCtx, collider, &this->actor, &sCylinderInit);
        this->collider.dim.yShift = 0;
        this->collider.dim.radius = 0xF;
        this->collider.dim.height = 0x46;
        this->actor.unk_1F = 6;

        switch (this->initParams) {

            case 2:
                this->actionFunc = func_80A531E4;
                this->actor.gravity = -1.0f;
                break;
            case 5:
                this->actionFunc = func_80A53908;
                this->actor.gravity = -1.0f;
                break;
            case 6:
                osSyncPrintf("\n\n");
                // "Peep hole soldier!"
                osSyncPrintf(VT_FGCOL(GREEN) " ☆☆☆☆☆ 覗き穴奥兵士ふぃ〜 ☆☆☆☆☆ \n" VT_RST);
                Collider_DestroyCylinder(globalCtx, collider);
                this->actor.flags &= -0xA;
                this->actionFunc = func_80A531D8;
                break;
        }

        this->unk_2F0 = (this->actor.params >> 8) & 0xFF;
        osSyncPrintf("\n\n");
        // "Soldier Set 2 Completed!"
        osSyncPrintf(VT_FGCOL(GREEN) " ☆☆☆☆☆ 兵士２セット完了！ ☆☆☆☆☆ %d\n" VT_RST, this->actor.params);
        // "Identification Completed!"
        osSyncPrintf(VT_FGCOL(YELLOW) " ☆☆☆☆☆ 識別完了！         ☆☆☆☆☆ %d\n" VT_RST, this->initParams);
        // "Message completed!"
        osSyncPrintf(VT_FGCOL(PURPLE) " ☆☆☆☆☆ メッセージ完了！   ☆☆☆☆☆ %x\n\n" VT_RST, (this->actor.params >> 8) & 0xF);
    }
}

void EnHeishi2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnHeishi2* this = THIS;
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
    this->unk_30B = 0;
    this->unk_30E = 0;
    if (Text_GetFaceReaction(globalCtx, 5) != 0) {
        this->actor.textId = Text_GetFaceReaction(globalCtx, 5);
        this->unk_30B = 1;
        this->unk_300 = 6;
        this->actionFunc = func_80A5475C;
    } else if ((gSaveContext.eventChkInf[0] & 0x200) && (gSaveContext.eventChkInf[2] & 0x20) &&
               (gSaveContext.eventChkInf[3] & 0x80)) {
        // "Get all spiritual stones!"
        osSyncPrintf(VT_FGCOL(GREEN) " ☆☆☆☆☆ 全部の精霊石GET！ ☆☆☆☆☆ \n" VT_RST);
        this->unk_300 = 6;
        this->actor.textId = 0x7006; // "There's a lot going on in the castle right now. I can't allow even..."
        this->actionFunc = func_80A5475C;
    } else if (gSaveContext.nightFlag) {
        // "Sleep early for children!"
        osSyncPrintf(VT_FGCOL(YELLOW) " ☆☆☆☆☆ 子供ははやくネロ！ ☆☆☆☆☆ \n" VT_RST);
        this->unk_300 = 6;
        this->actor.textId = 0x7002; // "Welcome to Hyrule Castle Town. It's a peaceful, prosperous town."
        this->actionFunc = func_80A5475C;

    } else if (this->unk_30C != 0) {
        // "Anything passes"
        osSyncPrintf(VT_FGCOL(BLUE) " ☆☆☆☆☆ なんでも通るよ ☆☆☆☆☆ \n" VT_RST);
        this->unk_300 = 6;
        this->actor.textId = 0x7099; // "KEEP IT A SECRET FROM EVERYONE"
        this->actionFunc = func_80A5475C;
    } else if (gSaveContext.eventChkInf[1] & 4) {
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

    } else {
        // "That's okay"
        osSyncPrintf(VT_FGCOL(CYAN) " ☆☆☆☆☆ それはとおらんよぉ ☆☆☆☆☆ \n" VT_RST);
        this->unk_300 = 6;
        this->actor.textId = 0x7029; // "So you say you want to see Princess Zelda, eh?..."
        this->actionFunc = func_80A5475C;
    }
}

void func_80A5344C(EnHeishi2* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
        this->unk_300 = 5;
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0:
                if (gSaveContext.rupees >= 10) {
                    Rupees_ChangeBy(-10);
                    this->actor.textId = 0x7098; // "OK, I'll let you pass, quickly!"
                    this->actionFunc = func_80A53538;
                    break;
                } else {
                    this->actor.textId = 0x7097; // "Well, maybe that's too much for a kid to pay."
                    this->actionFunc = func_80A54954;
                    break;
                }
            case 1:
                this->actor.textId = 0x7096; // "Tsk tsk."
                this->actionFunc = func_80A54954;
                break;

            default:
                break;
        }
        func_8010B720(globalCtx, this->actor.textId);
    }
}

void func_80A53538(EnHeishi2* this, GlobalContext* globalCtx) {

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

void func_80A53638(EnHeishi2* this, GlobalContext* globalCtx) {

    Actor* thisx;
    f32 frameCount;
    BgSpot15Saku* actor;

    frameCount = this->skelAnime.animCurrentFrame;
    thisx = &this->actor;
    actor = globalCtx->actorCtx.actorList[ACTORTYPE_ITEMACTION].first;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((frameCount >= 12.0f) && (!this->audioFlag)) {
        Audio_PlayActorSound2(thisx, NA_SE_EV_SPEAR_HIT);
        this->audioFlag = 1;
    }
    if (this->unk_2EC <= frameCount) {
        while (actor != NULL) {
            if (ACTOR_BG_SPOT15_SAKU != actor->dyna.actor.id) {
                actor = (BgSpot15Saku*)(actor->dyna.actor.next);
            } else {
                this->attachedGate = actor;
                actor->unk_168 = 1;
                break;
            }
        }
        // "I've come!"
        osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆ きたきたきたぁ！ ☆☆☆ %x\n" VT_RST, actor->dyna.actor.next);
        this->actionFunc = func_80A5372C;
    }
}

void func_80A5372C(EnHeishi2* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f,
                         (s16)(f32)SkelAnime_GetFrameCount(&D_06005C30.genericHeader), 0, -10.0f);
    this->unk_2F2[0] = 200;
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

void func_80A53850(EnHeishi2* this, GlobalContext* globalCtx) {
    BgSpot15Saku* gate;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    func_800C04D8(globalCtx, this->cameraId, &this->unk_280, &this->unk_28C);
    gate = (BgSpot15Saku*)this->attachedGate;
    if ((this->unk_2F2[0] == 0) || (gate->unk_168 == 0)) {
        Gameplay_ClearCamera(globalCtx, this->cameraId);
        Gameplay_ChangeCameraStatus(globalCtx, 0, 7);
        func_80106CCC(globalCtx);
        this->unk_30C = 1;
        func_8002DF54(globalCtx, NULL, 7);
        this->actionFunc = func_80A531E4;
    }
}

void func_80A53908(EnHeishi2* this, GlobalContext* globalCtx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_06005C30.genericHeader);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f, (s16)frameCount, 0, -10.0f);
    this->actionFunc = func_80A5399C;
}

void func_80A5399C(EnHeishi2* this, GlobalContext* globalCtx) {
    s16 var;

    this->unk_30B = 0;
    var = 0;
    if (gSaveContext.infTable[7] & 0x40) {
        if (!(gSaveContext.infTable[7] & 0x80)) {
            if (func_8008F080(globalCtx) == 1) {
                if (this->unk_309 == 0) {
                    this->actor.textId = 0x200A; // "Wha-ha-ha-hah! Do you think you're in disguise, Mr. Hero?"
                } else {
                    this->actor.textId = 0x200B; // "Will you sell it to me? Yes/No way"
                }
                this->unk_300 = 4;
                this->unk_30B = 1;
                var = 1;
            } else {
                this->actor.textId = 0x2016;
                // "I wish I could go to the mask shop in town to buy a present for my kid..sigh.."
                this->unk_300 = 6;
                var = 1;
            }
        } else {
            this->actor.textId = 0x2020; // "My boy will be very happy with this!"
            this->unk_300 = 5;
            this->unk_30E = 0;
        }
        if (Text_GetFaceReaction(globalCtx, 5) != 0) {
            if (var == 0) {
                this->actor.textId = Text_GetFaceReaction(globalCtx, 5);
                this->unk_30B = 1;
                this->unk_300 = 6;
                this->unk_30E = 0;
            }
        }
        this->actionFunc = func_80A5475C;
    } else {
        // "I don't know"
        osSyncPrintf(VT_FGCOL(PURPLE) " ☆☆☆☆☆ とおしゃしねぇちゅーの ☆☆☆☆☆ \n" VT_RST);
        this->actionFunc = func_80A53AD4;
    }
}

void func_80A53AD4(EnHeishi2* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 exchangeItemId;
    s16 yawDiffTemp;
    s16 yawDiff;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (Text_GetFaceReaction(globalCtx, 5) != 0) {
        this->actor.textId = Text_GetFaceReaction(globalCtx, 5);
    } else {
        this->actor.textId = 0x200E; // "The road is closed beyond this point! Can't you read..."
    }
    this->unk_300 = 6;
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        exchangeItemId = func_8002F368(globalCtx);
        if (exchangeItemId == 1) { // exchangeItemId = zelda's letter
            func_80078884(NA_SE_SY_CORRECT_CHIME);
            player->actor.textId = 0x2010; // "Oh, this is...this is surely Princess Zelda's handwriting!"
            this->unk_300 = 5;
            this->actionFunc = func_80A53C0C;
        } else if (exchangeItemId != 0) {  // exchangeItemId != nothing
            player->actor.textId = 0x200F; // "I don't want that!"
        }
    } else {
        yawDiffTemp = this->actor.yawTowardsLink - this->actor.shape.rot.y;
        yawDiff = ABS(yawDiffTemp);
        if (!(120.0f < this->actor.xzDistFromLink) && (yawDiff < 0x4300)) {
            func_8002F298(&this->actor, globalCtx, 100.0f, 1);
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
    f32 frameCount = SkelAnime_GetFrameCount(&D_06005500.genericHeader);
    this->unk_2EC = frameCount;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005500, 1.0f, 0.0f, frameCount, 2, -10.0f);
    this->actionFunc = func_80A53D0C;
}

void func_80A53D0C(EnHeishi2* this, GlobalContext* globalCtx) {
    s32 pad;
    f32 frameCount;
    BgGateShutter* gate;

    frameCount = this->skelAnime.animCurrentFrame;
    gate = (BgGateShutter*)globalCtx->actorCtx.actorList[ACTORTYPE_ITEMACTION].first;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (12.0f <= frameCount) {
        if (this->audioFlag == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_SPEAR_HIT);
            this->audioFlag = 1;
        }
    }
    if (this->unk_2EC <= frameCount) {
        while (gate != NULL) {
            if (ACTOR_BG_GATE_SHUTTER != gate->dyna.actor.id) {
                gate = (BgGateShutter*)gate->dyna.actor.next;
            } else {
                this->attachedGate = gate;
                gate->openingState = 1;
                break;
            }
        }
        // "I've come!"
        osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆ きたきたきたぁ！ ☆☆☆ %x\n" VT_RST, gate->dyna.actor.next);
        this->actionFunc = func_80A53DF8;
    }
}

void func_80A53DF8(EnHeishi2* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f,
                         (s16)(f32)SkelAnime_GetFrameCount(&D_06005C30.genericHeader), 0, -10.0f);
    this->unk_2F2[0] = 200;
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

void func_80A53F30(EnHeishi2* this, GlobalContext* globalCtx) {
    BgGateShutter* gate;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    func_800C04D8(globalCtx, this->cameraId, &this->unk_280, &this->unk_28C);
    gate = (BgGateShutter*)this->attachedGate;
    if ((this->unk_2F2[0] == 0) || (gate->openingState == 0)) {
        Gameplay_ClearCamera(globalCtx, this->cameraId);
        Gameplay_ChangeCameraStatus(globalCtx, 0, 7);
        if ((this->unk_30A != 2)) {
            if (this->unk_30A == 0) {
                this->actor.textId = 0x2015; // "By the way Mr. Hero..If you're going to climb Death Mountain..."
                func_8010B720(globalCtx, this->actor.textId);
                this->actionFunc = func_80A54038;
            } else {
                func_80106CCC(globalCtx);
                func_8002DF54(globalCtx, NULL, 7);
                this->actionFunc = func_80A53908;
            }
        } else {
            this->unk_30E = 0;
            this->actor.textId = 0x2021; // "You sold the 10-Rupee mask for 15 Rupees. You earned a little profit."
            Rupees_ChangeBy(15);
            func_8010B720(globalCtx, this->actor.textId);
            this->actionFunc = func_80A5427C;
        }
    }
}

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

void func_80A540C0(EnHeishi2* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0:
                this->actor.textId = 0x2020; // "My boy will be very happy with this!.."
                func_8010B720(globalCtx, this->actor.textId);
                func_8008F08C(globalCtx);
                gSaveContext.infTable[7] |= 0x80;
                gSaveContext.itemGetInf[3] |= 0x100;
                Item_Give(globalCtx, ITEM_SOLD_OUT);
                if (this->unk_30A != 0) {
                    this->unk_30A = 2;
                    this->unk_30E = 1;
                    this->actionFunc = func_80A5427C;
                } else {
                    this->unk_30E = 0;
                    this->actionFunc = func_80A541FC;
                }
                break;
            case 1:
                this->unk_30E = 1;
                this->actor.textId = 0x200C; // "I won't give up! I have plenty of patience.."
                func_8010B720(globalCtx, this->actor.textId);
                this->unk_300 = 5;
                if (this->unk_30A == 0) {
                    this->actionFunc = func_80A5427C;
                } else {
                    this->actionFunc = func_80A54954;
                }
        }
    }
}

void func_80A541FC(EnHeishi2* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
        this->actor.textId = 0x2021; // "You sold the 10-Rupee mask for 15 Rupees. You earned a little profit. Let's
                                     // go to the Mask Shop..."
        Rupees_ChangeBy(15);
        func_8010B720(globalCtx, this->actor.textId);
        this->actionFunc = func_80A5427C;
    }
}

void func_80A5427C(EnHeishi2* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
        if (this->unk_30E == 0) {
            this->unk_30E = 0;
            this->unk_30A = this->unk_30E;
            func_80106CCC(globalCtx);
            this->actionFunc = func_80A53908;
        } else {
            globalCtx->msgCtx.msgMode = 0x37;
            this->actionFunc = func_80A54320;
        }
    }
}

void func_80A54320(EnHeishi2* this, GlobalContext* globalCtx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_06005500.genericHeader);
    this->unk_2EC = frameCount;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005500, 1.0f, 0.0f, frameCount, 2, -10.0f);
    this->audioFlag = 0;
    this->actionFunc = func_80A543A0;
}

void func_80A543A0(EnHeishi2* this, GlobalContext* globalCtx) {
    Actor* thisx;
    f32 frameCount;
    BgGateShutter* gate;

    frameCount = this->skelAnime.animCurrentFrame;
    thisx = &this->actor;
    gate = (BgGateShutter*)(globalCtx->actorCtx.actorList[ACTORTYPE_ITEMACTION].first);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((frameCount >= 12.0f) && (!this->audioFlag)) {
        Audio_PlayActorSound2(thisx, NA_SE_EV_SPEAR_HIT);
        this->audioFlag = 1;
    }
    if (this->unk_2EC <= frameCount) {
        while (gate != NULL) {
            if (ACTOR_BG_GATE_SHUTTER != gate->dyna.actor.id) {
                gate = (BgGateShutter*)(gate->dyna.actor.next);
            } else {
                this->attachedGate = gate;
                if (this->unk_30A != 2) {
                    gate->openingState = -1;
                    break;
                } else {
                    gate->openingState = 2;
                    break;
                }
            }
        }
        if (this->unk_30A == 0) {
            this->unk_30A = 1;
        }
        this->actionFunc = func_80A53DF8;
    }
}
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
// regalloc differences
void func_80A5455C(EnHeishi2* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;
    Vec3f pos;
    s32 rotY;
    EnBom* bomb;

    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
        func_8002DF54(globalCtx, NULL, 7);
        func_80106CCC(globalCtx);

        pos.x = Math_Rand_CenteredFloat(20.0f) + this->unk_274.x;
        pos.y = Math_Rand_CenteredFloat(20.0f) + (this->unk_274.y - 40.0f);
        pos.z = Math_Rand_CenteredFloat(20.0f) + (this->unk_274.z - 20.0f);
        rotY = Math_Rand_CenteredFloat(7000.0f) + thisx->yawTowardsLink;
        bomb = (EnBom*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOM, pos.x, pos.y, pos.z, 0, rotY, 0, 0);
        if (bomb != NULL) {
            bomb->actor.speedXZ = Math_Rand_CenteredFloat(5.0f) + 10.0f;
            bomb->actor.velocity.y = Math_Rand_CenteredFloat(5.0f) + 10.0f;
        }

        // This is down!
        osSyncPrintf(VT_FGCOL(YELLOW) " ☆☆☆☆☆ これでダウンだ！ ☆☆☆☆☆ \n" VT_RST);
        this->actionFunc = func_80A546DC;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5455C.s")
#endif

void func_80A546DC(EnHeishi2* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, 200, 5, this->unk_2E4, 0);
    Math_SmoothScaleMaxF(&this->unk_2E4, 3000.0f, 1.0f, 500.0f);
    this->actor.posRot.rot.z = this->actor.shape.rot.z;
    if (this->actor.shape.rot.z > 0) {
        Actor_Kill(&this->actor);
    }
}

void func_80A5475C(EnHeishi2* this, GlobalContext* globalCtx) {
    s16 yawDiff;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (Text_GetFaceReaction(globalCtx, 5) != 0) {
        if (this->unk_30B == 0) {
            if (this->initParams == 2) {
                this->actionFunc = func_80A53278;
                return;
            }
            if (this->initParams == 5) {
                this->actionFunc = func_80A5399C;
                return;
            }
        }
    } else if (this->unk_30B != 0) {
        if (this->initParams == 2) {
            this->actionFunc = func_80A53278;
            return;
        }
        if (this->initParams == 5) {
            this->actionFunc = func_80A5399C;
            return;
        }
    }

    if (func_8002F194(&this->actor, globalCtx)) {
        if (this->initParams == 2) {
            if (this->unk_30E == 1) {
                this->actionFunc = func_80A5344C;
                return;
            } else {
                this->actionFunc = func_80A53278;
                return;
            }
        } else if (this->initParams == 5) {
            if (this->unk_300 == 6) {
                this->actionFunc = func_80A5399C;
            }

            if (this->unk_300 == 5) {
                this->actionFunc = func_80A54954;
            }

            if (this->unk_300 == 4) {
                this->unk_309 = 1;
                func_80078884(0x4807);
                this->actionFunc = func_80A540C0;
            }
            return;
        }
    }

    if (((this->initParams != 2) && (this->initParams != 5)) ||
        ((yawDiff = ABS((s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y)),
          !(this->actor.xzDistFromLink > 120.0f)) &&
         (yawDiff < 0x4300))) {
        func_8002F2F4(&this->actor, globalCtx);
    }
}

void func_80A54954(EnHeishi2* this, GlobalContext* globalCtx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_06005C30.genericHeader);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f, (s16)frameCount, 0, -10.0f);
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

void EnHeishi2_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnHeishi2* this = THIS;
    s32 i;

    Actor_SetHeight(&this->actor, this->unk_2E0);
    if ((this->initParams == 2) || (this->initParams == 5)) {
        this->actor.posRot2.pos.y = 70.0f;
        Actor_SetHeight(&this->actor, 70.0f);
        func_80038290(globalCtx, &this->actor, &this->unk_260, &this->unk_26C, this->actor.posRot2.pos);
    }

    this->unk_2FC++;

    for (i = 0; i != 5; i++) {
        if (this->unk_2F2[i] != 0) {
            this->unk_2F2[i]--;
        }
    }
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
    switch (this->initParams) {
        case 6:
            break;
        case 9:
            break;
        default:
            func_8002E4B4(globalCtx, &this->actor, 10.0f, 10.0f, 30.0f, 0x1D);
            Collider_CylinderUpdate(&this->actor, &this->collider);
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
            break;
    }
}

s32 EnHeishi2_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                               Actor* thisx) {
    EnHeishi2* this = THIS;
    switch (this->initParams) {
        case 1:
            break;
        case 7:
            break;
        default:
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

void EnHeishi2_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    EnHeishi2* this = THIS;
    if (limbIndex == 16) {
        Matrix_Get(&this->mtxf_330);
    }
}

void func_80A54C6C(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_heishi2.c", 1772);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_heishi2.c", 1774),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_06002C10);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_heishi2.c", 1777);
}

void EnHeishi2_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnHeishi2* this;
    GraphicsContext* gfxCtx;
    s32 linkObjBankIndex;
    Mtx* mtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_heishi2.c", 1792);
    func_80093D18(globalCtx->state.gfxCtx);
    this = THIS;
    SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, EnHeishi2_OverrideLimbDraw,
                   EnHeishi2_PostLimbDraw, &this->actor);
    if ((this->initParams == 5) && (gSaveContext.infTable[7] & 0x80)) {
        linkObjBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_LINK_CHILD);
        if (linkObjBankIndex >= 0) {
            Matrix_Put(&this->mtxf_330);
            Matrix_Translate(-570.0f, 0.0f, 0.0f, MTXMODE_APPLY);
            Matrix_RotateZ(DEGTORAD(70.0), MTXMODE_APPLY);
            mtx = Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_heishi2.c", 1820) - 7;

            gSPSegment(gfxCtx->polyOpa.p++, 0x06, globalCtx->objectCtx.status[linkObjBankIndex].segment);
            gSPSegment(gfxCtx->polyOpa.p++, 0x0D, mtx);
            gSPDisplayList(gfxCtx->polyOpa.p++, &D_0602B060);
            gSPSegment(gfxCtx->polyOpa.p++, 0x06, globalCtx->objectCtx.status[this->actor.objBankIndex].segment);
        }
    }
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_heishi2.c", 1834);
}
