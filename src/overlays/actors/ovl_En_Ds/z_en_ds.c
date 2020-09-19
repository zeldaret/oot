/*
 * File: z_en_ds.c
 * Overlay: ovl_En_Ds
 * Description: Potion Shop Granny
 */

#include "z_en_ds.h"

#define FLAGS 0x00000009

#define THIS ((EnDs*)thisx)

void EnDs_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDs_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDs_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDs_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnDs_Wait(EnDs* this, GlobalContext* globalCtx);

const ActorInit En_Ds_InitVars = {
    ACTOR_EN_DS,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_DS,
    sizeof(EnDs),
    (ActorFunc)EnDs_Init,
    (ActorFunc)EnDs_Destroy,
    (ActorFunc)EnDs_Update,
    (ActorFunc)EnDs_Draw,
};

extern SkeletonHeader D_06004768;
extern AnimationHeader D_0600039C;

void EnDs_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnDs* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 36.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06004768, &D_0600039C, &this->limbDrawTable, &this->unk_1B4, 6);
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_0600039C);

    this->actor.colChkInfo.mass = 0xFF;

    Actor_SetScale(this, 0.013f);

    this->actionFunc = EnDs_Wait;
    this->actor.unk_1F = 1;
    this->unk_1E8 = 0;
    this->actor.flags &= ~0x1;
    this->unk_1E4 = 0.0f;
}

void EnDs_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnDs_Talk(EnDs* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx) != 0) {
        this->actionFunc = EnDs_Wait;
        this->actor.flags &= ~0x10000;
    }
    this->unk_1E8 |= 1;
}

void EnDs_TalkNoEmptyBottle(EnDs* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
        func_80106CCC(globalCtx);
        this->actionFunc = EnDs_Wait;
    }
    this->unk_1E8 |= 1;
}

void EnDs_TalkAfterGiveOddPotion(EnDs* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        this->actionFunc = EnDs_Talk;
    } else {
        this->actor.flags |= 0x10000;
        func_8002F2CC(&this->actor, globalCtx, 1000.0f);
    }
}

void EnDs_DisplayOddPotionText(EnDs* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx) != 0) {
        this->actor.textId = 0x504F;
        this->actionFunc = EnDs_TalkAfterGiveOddPotion;
        this->actor.flags &= ~0x100;
        gSaveContext.itemGetInf[3] |= 1;
    }
}

void EnDs_GiveOddPotion(EnDs* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actor.parent = NULL;
        this->actionFunc = EnDs_DisplayOddPotionText;
        gSaveContext.timer2State = 0;
    } else {
        func_8002F434(&this->actor, globalCtx, GI_ODD_POTION, 10000.0f, 50.0f);
    }
}

void EnDs_TalkAfterBrewOddPotion(EnDs* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
        func_80106CCC(globalCtx);
        this->actionFunc = EnDs_GiveOddPotion;
        func_8002F434(&this->actor, globalCtx, GI_ODD_POTION, 10000.0f, 50.0f);
    }
}

void EnDs_BrewOddPotion3(EnDs* this, GlobalContext* globalCtx) {
    if (this->brewTimer > 0) {
        this->brewTimer -= 1;
    } else {
        this->actionFunc = EnDs_TalkAfterBrewOddPotion;
        func_8010B720(globalCtx, 0x504D);
    }

    Math_ApproxF(&this->unk_1E4, 0, 0.03f);
    func_800773A8(globalCtx, this->unk_1E4 * (2.0f - this->unk_1E4), 0.0f, 0.1f, 1.0f);
}

void EnDs_BrewOddPotion2(EnDs* this, GlobalContext* globalCtx) {
    if (this->brewTimer > 0) {
        this->brewTimer -= 1;
    } else {
        this->actionFunc = EnDs_BrewOddPotion3;
        this->brewTimer = 60;
        Flags_UnsetSwitch(globalCtx, 0x3F);
    }
}

void EnDs_BrewOddPotion1(EnDs* this, GlobalContext* globalCtx) {
    if (this->brewTimer > 0) {
        this->brewTimer -= 1;
    } else {
        this->actionFunc = EnDs_BrewOddPotion2;
        this->brewTimer = 20;
    }

    Math_ApproxF(&this->unk_1E4, 1.0f, 0.01f);
    func_800773A8(globalCtx, this->unk_1E4 * (2.0f - this->unk_1E4), 0.0f, 0.1f, 1.0f);
}

void EnDs_OfferOddPotion(EnDs* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0: // yes
                this->actionFunc = EnDs_BrewOddPotion1;
                this->brewTimer = 60;
                Flags_SetSwitch(globalCtx, 0x3F);
                globalCtx->msgCtx.msgMode = 0x37;
                player->exchangeItemId = EXCH_ITEM_NONE;
                break;
            case 1: // no
                func_8010B720(globalCtx, 0x504C);
                this->actionFunc = EnDs_Talk;
        }
    }
}

int EnDs_CheckRupeesAndBottle() {
    if (gSaveContext.rupees < 100) {
        return 0;
    } else if (Inventory_HasEmptyBottle() == 0) {
        return 1;
    } else {
        return 2;
    }
}

void EnDs_GiveBluePotion(EnDs* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actor.parent = NULL;
        this->actionFunc = EnDs_Talk;
    } else {
        func_8002F434(&this->actor, globalCtx, GI_POTION_BLUE, 10000.0f, 50.0f);
    }
}

void EnDs_OfferBluePotion(EnDs* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0: // yes
                switch (EnDs_CheckRupeesAndBottle()) {
                    case 0: // have less than 100 rupees
                        func_8010B720(globalCtx, 0x500E);
                        break;
                    case 1: // have 100 rupees but no empty bottle
                        func_8010B720(globalCtx, 0x96);
                        this->actionFunc = EnDs_TalkNoEmptyBottle;
                        return;
                    case 2: // have 100 rupees and empty bottle
                        Rupees_ChangeBy(-100);
                        this->actor.flags &= ~0x10000;
                        func_8002F434(this, globalCtx, GI_POTION_BLUE, 10000.0f, 50.0f);
                        this->actionFunc = EnDs_GiveBluePotion;
                        return;
                }
                break;
            case 1: // no
                func_8010B720(globalCtx, 0x500D);
        }
        this->actionFunc = EnDs_Talk;
    }
}

void EnDs_Wait(EnDs* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 yawDiff;

    if (func_8002F194(&this->actor, globalCtx) != 0) {
        if (func_8002F368(globalCtx) == EXCH_ITEM_ODD_MUSHROOM) {
            Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            player->actor.textId = 0x504A;
            this->actionFunc = EnDs_OfferOddPotion;
        } else if (gSaveContext.itemGetInf[3] & 1) {
            player->actor.textId = 0x500C;
            this->actionFunc = EnDs_OfferBluePotion;
        } else {
            if (INV_CONTENT(ITEM_ODD_MUSHROOM) == ITEM_ODD_MUSHROOM) {
                player->actor.textId = 0x5049;
            } else {
                player->actor.textId = 0x5048;
            }
            this->actionFunc = EnDs_Talk;
        }
    } else {
        yawDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;
        this->actor.textId = 0x5048;

        if ((ABS(yawDiff) < 0x2151) && (this->actor.xzDistFromLink < 200.0f)) {
            func_8002F298(this, globalCtx, 100.0f, EXCH_ITEM_ODD_MUSHROOM);
            this->unk_1E8 |= 1;
        }
    }
}

void EnDs_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnDs* this = THIS;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        this->skelAnime.animCurrentFrame = 0.0f;
    }

    this->actionFunc(this, globalCtx);

    if (this->unk_1E8 & 1) {
        func_80038290(globalCtx, this, &this->unk_1D8, &this->unk_1DE, this->actor.posRot2.pos);
    } else {
        Math_SmoothScaleMaxMinS(&this->unk_1D8.x, 0, 6, 0x1838, 100);
        Math_SmoothScaleMaxMinS(&this->unk_1D8.y, 0, 6, 0x1838, 100);
        Math_SmoothScaleMaxMinS(&this->unk_1DE.x, 0, 6, 0x1838, 100);
        Math_SmoothScaleMaxMinS(&this->unk_1DE.y, 0, 6, 0x1838, 100);
    }
}

s32 EnDs_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnDs* this = THIS;

    if (limbIndex == 5) {
        rot->x += this->unk_1D8.y;
        rot->z += this->unk_1D8.x;
    }
    return 0;
}

void EnDs_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    static Vec3f sMultVec = { 1100.0f, 500.0f, 0.0f };

    if (limbIndex == 5) {
        Matrix_MultVec3f(&sMultVec, &thisx->posRot2.pos);
    }
}

void EnDs_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnDs* this = THIS;

    func_800943C8(globalCtx->state.gfxCtx);
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                     EnDs_OverrideLimbDraw, EnDs_PostLimbDraw, this);
}
