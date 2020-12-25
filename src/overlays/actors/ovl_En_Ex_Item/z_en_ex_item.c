#include "z_en_ex_item.h"

#define FLAGS 0x00000030

#define THIS ((EnExItem*)thisx)

void EnExItem_Init(Actor *thisx, GlobalContext* globalCtx);
void EnExItem_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnExItem_Update(Actor* thisx, GlobalContext* globalCtx);
void EnExItem_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A09B6C(EnExItem* this, GlobalContext* globalCtx);
void func_80A09BCC(EnExItem* this, GlobalContext* globalCtx);
void func_80A09D6C(EnExItem* this, GlobalContext* globalCtx);
void func_80A09C40(EnExItem* this, GlobalContext* globalCtx, s32 arg2);
void func_80A09BFC(EnExItem* this, GlobalContext* globalCtx, s16 arg2);

void func_80A09054(EnExItem* this, GlobalContext* globalCtx);
void func_80A09434(EnExItem* this, GlobalContext* globalCtx);
void func_80A0964C(EnExItem* this, GlobalContext* globalCtx);
void func_80A09670(EnExItem* this, GlobalContext* globalCtx);
void func_80A096A8(EnExItem* this, GlobalContext* globalCtx);
void func_80A09710(EnExItem* this, GlobalContext* globalCtx);
void func_80A09724(EnExItem* this, GlobalContext* globalCtx);
void func_80A09978(EnExItem* this, GlobalContext* globalCtx);
void func_80A09A00(EnExItem* this, GlobalContext* globalCtx);

const ActorInit En_Ex_Item_InitVars = {
    ACTOR_EN_EX_ITEM,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnExItem),
    (ActorFunc)EnExItem_Init,
    (ActorFunc)EnExItem_Destroy,
    (ActorFunc)EnExItem_Update,
    (ActorFunc)EnExItem_Draw,
};

s16 D_80A09E00[] = {0x0063, 0x0064, 0x0065, 0x0000};
s32 D_80A09E08[] = {0x0403F140, 0x00000000};

void EnExItem_Destroy(Actor* thisx, GlobalContext *globalCtx) {
}

void EnExItem_Init(Actor *thisx, GlobalContext *globalCtx) {
    s32 pad;
    EnExItem* this = THIS;

    this->actor.flags &= ~1;
    this->unk_152 = this->actor.params & 0xFF;
    this->unk_154 = (this->actor.params >> 8) & 0xFF;
    osSyncPrintf("\n\n");
    // What will come out?
    osSyncPrintf("\x1b[32m☆☆☆☆☆ なにがでるかな？ ☆☆☆☆☆ %d\n\x1b[m", this->unk_152);
    // What will come out?
    osSyncPrintf("\x1b[33m☆☆☆☆☆ なにがでるかな？ ☆☆☆☆☆ %d\n\x1b[m", this->unk_154);
    this->unk_170 = this->actor.posRot.pos;
    this->unk_150 = -1;
    switch( this->unk_152) {
        case 0:
        case 5:
            this->unk_150 = OBJECT_GI_BOMBPOUCH;
            break;
        case 1:
        case 6:
            this->unk_150 = OBJECT_GI_HEARTS;
            break;
        case 2:
        case 7:
            this->unk_150 = OBJECT_GI_BOMB_2;
            break;
        case 3:
        case 8:
            this->unk_150 = OBJECT_GI_BOMB_1;
            break;
        case 4:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
            this->unk_150 = OBJECT_GI_RUPY;
            break;
        case 15:
            this->unk_164 = 0.05f;
            this->actor.velocity.y = 10.0f;
            this->unk_15A = 7;
            this->actionFunc = func_80A096A8;
            break;
        case 16:
        case 17:
        case 18:
            this->unk_150 = OBJECT_GI_GODDESS;
            break;
        case 19:
            this->unk_150 = OBJECT_GI_DEKUPOUCH;
    }

    if (this->unk_150 >= 0) {
        this->unk_16C = Object_GetIndex(&globalCtx->objectCtx, this->unk_150);
        this->actor.draw = NULL;
        if (this->unk_16C < 0) {
            Actor_Kill(&this->actor);
            // What?
            osSyncPrintf("なにみの？ %d\n", this->actor.params);
            // bank is funny
            osSyncPrintf("\x1b[35m バンクおかしいしぞ！%d\n\x1b[m\n", this->actor.params);
            return;
        }
        this->actionFunc = func_80A09054;
    }
}

void func_80A09054(EnExItem *this, GlobalContext *globalCtx) {
    s32 phi_v0;

    if (Object_IsLoaded(&globalCtx->objectCtx, this->unk_16C)) {
        // End of transfer
        osSyncPrintf("\x1b[32m☆☆☆☆☆ 転送終了 ☆☆☆☆☆ %d\n\x1b[m", this->actor.params, this);
        osSyncPrintf("\x1b[33m☆☆☆☆☆ 転送終了 ☆☆☆☆☆ %d\n\x1b[m", this->actor.params, this);
        osSyncPrintf("\x1b[34m☆☆☆☆☆ 転送終了 ☆☆☆☆☆ %d\n\x1b[m", this->actor.params, this);
        osSyncPrintf("\x1b[35m☆☆☆☆☆ 転送終了 ☆☆☆☆☆ %d\n\x1b[m", this->actor.params, this);
        osSyncPrintf("\x1b[36m☆☆☆☆☆ 転送終了 ☆☆☆☆☆ %d\n\n\x1b[m", this->actor.params, this);
        this->actor.objBankIndex = this->unk_16C;
        this->actor.draw = EnExItem_Draw;
        this->unk_158 = 0;
        phi_v0 = 0;
        switch (this->unk_152) {
            case 5:
                phi_v0 = 1;
            case 0:
                this->unk_17C = func_8002EBCC;
                this->unk_156 = 0x18;
                this->unk_15A = 0x41;
                this->unk_15E = 0x23;
                this->unk_164 = 0.5f;
                if (phi_v0 == 0) {
                    this->actionFunc = func_80A09434;
                } else {
                    this->actionFunc = func_80A0964C;
                    this->actor.shape.unk_08 = -18.0f;
                }
                break;
            case 6:
                phi_v0 = 1;
            case 1:
                this->unk_17C = func_8002ED80;
                this->unk_15A = 0x41;
                this->unk_15E = 0x23;
                this->unk_164 = 0.5f;
                if (phi_v0 == 0) {
                    func_80078884(0x4823);
                    this->actionFunc = func_80A09434;
                } else {
                    this->actionFunc = func_80A0964C;
                    this->actor.shape.unk_08 = -10.0f;
                }
                break;
            case 7:
                phi_v0 = 1;
            case 2:
                this->unk_17C = func_8002EBCC;
                this->unk_156 = 0x27;
                this->unk_15A = 0x41;
                this->unk_15E = 0x23;
                this->unk_164 = 0.5f;
                if (phi_v0 == 0) {
                    this->actionFunc = func_80A09434;
                } else {
                    this->actionFunc = func_80A0964C;
                }
                break;
            case 3:
            case 8:
                this->unk_17C = func_8002EBCC;
                this->unk_156 = 0x1F;
                this->unk_15A = 0x41;
                this->unk_15E = 0x23;
                this->unk_164 = 0.5f;
                this->unk_168 = 0.5f;
                if (this->unk_152 == 3) {
                    this->actionFunc = func_80A09434;
                } else {
                    this->actionFunc = func_80A0964C;
                    this->actor.shape.unk_08 = 10.0f;
                }
                break;
            case 4:
            case 9:
                this->unk_17C = func_8002EBCC;
                this->unk_180 = func_8002ED80;
                this->unk_156 = 0x70;
                this->unk_15A = 0x41;
                this->unk_15E = 0x23;
                this->unk_164 = 0.5f;
                this->unk_168 = 0.5f;
                if (this->unk_152 == 4) {
                    this->actionFunc = func_80A09434;
                } else {
                    this->actionFunc = func_80A0964C;
                    this->actor.shape.unk_08 = 40.0f;
                }
                break;
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
                this->unk_17C = func_8002EBCC;
                this->unk_180 = func_8002ED80;
                this->unk_15A = 7;
                this->unk_164 = 0.5f;
                this->unk_168 = 0.5f;
                this->actor.velocity.y = 10.0f;
                switch (this->unk_152) {
                    case 10:
                        this->unk_156 = 0x6C;
                        break;
                    case 11:
                        this->unk_156 = 0x6D;
                        break;
                    case 12:
                        this->unk_156 = 0x6E;
                        break;
                    case 14:
                        this->unk_156 = 0x70;
                        break;
                }
                this->actionFunc = func_80A096A8;
                break;
            case 16:
            case 17:
            case 18:
                this->unk_164 = 0.35f;
                this->actionFunc = func_80A09710;
                
                break;
            case 19:
                this->unk_17C = func_8002EBCC;
                this->unk_156 = 0x6B;
                this->unk_164 = 0.1f;
                this->unk_15A = 0x50;
                this->unk_15E = 0x23;
                this->actionFunc = func_80A09724;
                
                break;
            case 15:
                break;
        }
    }
}

#ifndef NON_MATCHING
typedef struct {
    Actor actor;
    char unk_14C[0xA];
    s16 unk_156;
} EnExItemParentActor;

void func_80A09434(EnExItem *this, GlobalContext *globalCtx) {
    s32 pad;
    f32 tmpf1;
    f32 tmpf2;
    f32 tmpf3;
    f32 tmpf4;
    f32 tmpf5;
    f32 tmpf6;
    f32 tmpf7;
    f32 sp3C;

    if (this->unk_158 == 0) {
        this->actor.shape.rot.y += 0x1000;
        if ((this->unk_15E == 0) && ((this->actor.shape.rot.y & 0xFFFF) == 0x9000)) {
            this->unk_158++;
        }
    } else {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, 0, 5, 0x1000, 0);
    }
    if (this->unk_15A != 0) {
        if (this->unk_15E != 0) {
            sp3C = 250.0f;
            if (this->unk_152 == 2) {
                sp3C = 220.0f;
            }
            tmpf1 = globalCtx->view.lookAt.x - globalCtx->view.eye.x;
            tmpf2 = globalCtx->view.lookAt.y - globalCtx->view.eye.y;
            tmpf3 = globalCtx->view.lookAt.z + sp3C - globalCtx->view.eye.z;
            tmpf4 = sqrtf(SQ(tmpf1) + SQ(tmpf2) + SQ(tmpf3));

            tmpf5 = (tmpf1 / tmpf4) * 5.0f;
            tmpf6 = (tmpf2 / tmpf4) * 5.0f;
            tmpf7 = (tmpf3 / tmpf4) * 5.0f;

            tmpf1 = globalCtx->view.eye.x + tmpf5 - this->actor.posRot.pos.x;
            tmpf2 = globalCtx->view.eye.y + tmpf6 - this->actor.posRot.pos.y;
            tmpf3 = globalCtx->view.eye.z + tmpf7 - this->actor.posRot.pos.z;

            this->actor.posRot.pos.x += (tmpf1 / tmpf4) * 5.0f;
            this->actor.posRot.pos.y += (tmpf2 / tmpf4) * 5.0f;
            this->actor.posRot.pos.z += (tmpf3 / tmpf4) * 5.0f;
        }
    } else {
        // parent
        osSyncPrintf("\x1b[32m ☆☆☆☆☆ 母親ー？     ☆☆☆☆☆ %x\n\x1b[m", this->actor.parent);
        // Can it move?
        osSyncPrintf("\x1b[32m ☆☆☆☆☆ 動いてねー？ ☆☆☆☆☆ %x\n\x1b[m", this->actor.parent->update);
        if ((this->actor.parent != NULL) && (this->actor.parent->update != NULL)) {
            ((EnExItemParentActor*)this->actor.parent)->unk_156 = 1;
            // It can't move!
            osSyncPrintf("\x1b[32m ☆☆☆☆☆ さぁきえるぞ！ ☆☆☆☆☆ \n\x1b[m");
        }
        Actor_Kill(&this->actor);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Item/func_80A09434.s")
#endif

void func_80A0964C(EnExItem *this, GlobalContext *globalCtx) {
    this->actor.posRot.rot.y = this->actor.shape.rot.y = 0x4268;
    this->actionFunc = func_80A09670;
}

void func_80A09670(EnExItem *this, GlobalContext *globalCtx) {
    this->actor.shape.rot.y += 0x800;
    if (this->unk_160 != 0) {
        Actor_Kill(&this->actor);
    }
}

void func_80A096A8(EnExItem *this, GlobalContext *globalCtx) {
    this->actor.shape.rot.y += 0x1000;
    if (this->unk_15A != 0) {
        if (this->unk_15A == 1) {
            this->unk_15C = 20;
        }
    } else {
        this->actor.velocity.y = 0.0f;
        if (this->unk_15C == 0) {
            Actor_Kill(&this->actor);
        }
    }
    Actor_MoveForward(&this->actor);
}

void func_80A09710(EnExItem *this, GlobalContext *globalCtx) {
    this->actor.shape.rot.y += 0x800;
}

void func_80A09724(EnExItem* this, GlobalContext* globalCtx) {
    f32 tmpf1;
    f32 tmpf2;
    f32 tmpf3;
    f32 tmpf4;
    f32 tmpf5;
    f32 tmpf6;
    f32 tmpf7;

    Math_SmoothScaleMaxF(&this->unk_164, 0.8f, 0.1f, 0.02f);
    if (this->unk_158 == 0) {
        this->actor.shape.rot.y += 0x1000;
        if ((this->unk_15E == 0) && ((this->actor.shape.rot.y & 0xFFFF) == 0x9000)) {
            this->unk_158++;
        }
    } else {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, -0x4000, 5, 0x1000, 0);
    }

    if (this->unk_15A != 0) {
        if (this->unk_15E != 0) {
            tmpf1 = globalCtx->view.lookAt.x - globalCtx->view.eye.x;
            tmpf2 = globalCtx->view.lookAt.y - 10.0f - globalCtx->view.eye.y;
            tmpf3 = globalCtx->view.lookAt.z + 10.0f - globalCtx->view.eye.z;
            tmpf4 = sqrtf(SQ(tmpf1) + SQ(tmpf2) + SQ(tmpf3));

            tmpf5 = (tmpf1 / tmpf4) * 5.0f;
            tmpf6 = (tmpf2 / tmpf4) * 5.0f;
            tmpf7 = (tmpf3 / tmpf4) * 5.0f;

            tmpf1 = globalCtx->view.eye.x + tmpf5 - this->actor.posRot.pos.x;
            tmpf2 = globalCtx->view.eye.y - 10.0f + tmpf6 - this->actor.posRot.pos.y;
            tmpf3 = globalCtx->view.eye.z + 10.0f + tmpf7 - this->actor.posRot.pos.z;

            this->actor.posRot.pos.x += (tmpf1 / tmpf4) * 5.0f;
            this->actor.posRot.pos.y += (tmpf2 / tmpf4) * 5.0f;
            this->actor.posRot.pos.z += (tmpf3 / tmpf4) * 5.0f;
        }
    } else {
        s32 itemId;

        this->actor.draw = NULL;
        func_8002DF54(globalCtx, NULL, 7);
        this->actor.parent = NULL;
        if (CUR_UPG_VALUE(UPG_BULLET_BAG) == 1) {
            itemId = GI_BULLET_BAG_40;
        } else {
            itemId = GI_BULLET_BAG_50;
        }
        func_8002F434(&this->actor, globalCtx, itemId, 2000.0f, 1000.0f);
        this->actionFunc = func_80A09978;
    }
}

void func_80A09978(EnExItem *this, GlobalContext *globalCtx) {
    s32 phi_a2;

    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actionFunc = func_80A09A00;
    } else {
        phi_a2 = (CUR_UPG_VALUE(UPG_BULLET_BAG) == 2) ? GI_BULLET_BAG_50 : GI_BULLET_BAG_40;

        func_8002F434(&this->actor, globalCtx, phi_a2, 2000.0f, 1000.0f);
    }
}

void func_80A09A00(EnExItem *this, GlobalContext *globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && func_80106BC8(globalCtx)) {
        // Successful completion
        osSyncPrintf("\x1b[32m☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n\x1b[m");
        gSaveContext.itemGetInf[1] |= 0x2000;
        Actor_Kill(&this->actor);
    }
}

void EnExItem_Update(Actor* thisx, GlobalContext *globalCtx) {
    s32 pad;
    EnExItem* this = THIS;

    if (this->unk_15A != 0) {
        this->unk_15A--;
    }
    if (this->unk_15C != 0) {
        this->unk_15C--;
    }
    if (this->unk_15E != 0) {
        this->unk_15E--;
    }
    this->actionFunc(this, globalCtx);
}

void EnExItem_Draw(Actor* thisx, GlobalContext *globalCtx) {
    s32 pad;
    EnExItem* this = THIS;
    s32 temp;

    Actor_SetScale(&this->actor, this->unk_164);
    switch (this->unk_152) {
        case 0:
        case 2:
        case 3:
        case 5:
        case 7:
        case 8:
        case 19:
            func_80A09B6C(this, globalCtx);
            break;
        case 1:
        case 6:
            func_80A09BCC(this, globalCtx);
            break;
        case 4:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
            func_80A09D6C(this, globalCtx);
            break;
        case 15:
            func_80A09C40(this, globalCtx, 0);
            break;
        case 16:
        case 17:
        case 18:
            temp = this->unk_152 - 16;
            func_80A09BFC(this, globalCtx, temp);
            break;
    }
}

void func_80A09B6C(EnExItem *this, GlobalContext *globalCtx) {
    if (this->unk_17C != NULL) {
        this->unk_17C(&this->actor, globalCtx, 0);
    }
    if(this){}
    func_8002ED80(&this->actor, globalCtx, 0);
    func_800694A0(globalCtx, this->unk_156);
    
}

void func_80A09BCC(EnExItem *this, GlobalContext *globalCtx) {
    func_8002ED80(&this->actor, globalCtx, 0);
    func_800694A0(globalCtx, 0x13);
}

void func_80A09BFC(EnExItem *this, GlobalContext *globalCtx, s16 arg2) {
    func_8002ED80(&this->actor, globalCtx, 0);
    func_800694A0(globalCtx, D_80A09E00[arg2]);
}

void func_80A09C40(EnExItem *this, GlobalContext *globalCtx, s32 arg2) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ex_item.c", 880);

    func_8009460C(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_ex_item.c", 887), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80A09E08[arg2]));
    gSPDisplayList(POLY_OPA_DISP++, D_0403F070);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ex_item.c", 893);
}

void func_80A09D6C(EnExItem *this, GlobalContext *globalCtx) {
    if(this->unk_17C != NULL) {
        this->unk_17C(&this->actor, globalCtx, 0);
    }
    if(this->unk_180 != NULL) {
        this->unk_180(&this->actor, globalCtx, 0);
    }
    func_800694A0(globalCtx, this->unk_156);
}
