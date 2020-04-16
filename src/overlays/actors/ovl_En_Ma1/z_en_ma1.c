#include "z_en_ma1.h"

#define FLAGS 0x02000039

void EnMa1_Init(EnMa1* this, GlobalContext* globalCtx);
void EnMa1_Destroy(EnMa1* this, GlobalContext* globalCtx);
void EnMa1_Update(EnMa1* this, GlobalContext* globalCtx);
void EnMa1_Draw(EnMa1* this, GlobalContext* globalCtx);

u16 func_80AA0690(EnMa1* this, GlobalContext* globalCtx);
s16 func_80AA0778(EnMa1* this, GlobalContext* globalCtx);

void func_80AA0D88(EnMa1* this, GlobalContext* globalCtx);
void func_80AA0EA0(EnMa1* this, GlobalContext* globalCtx);
void func_80AA0EFC(EnMa1* this, GlobalContext* globalCtx);
void func_80AA0F44(EnMa1* this, GlobalContext* globalCtx);
void func_80AA106C(EnMa1* this, GlobalContext* globalCtx);
void func_80AA10EC(EnMa1* this, GlobalContext* globalCtx);
void func_80AA1150(EnMa1* this, GlobalContext* globalCtx);
void func_80AA11C8(EnMa1* this, GlobalContext* globalCtx);

const ActorInit En_Ma1_InitVars = {
    ACTOR_EN_MA1,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_MA1,
    sizeof(EnMa1),
    (ActorFunc)EnMa1_Init,
    (ActorFunc)EnMa1_Destroy,
    (ActorFunc)EnMa1_Update,
    (ActorFunc)EnMa1_Draw,
};

ColliderCylinderInit D_80AA1640 = {
    0x0A, 0x00,       0x00, 0x39, 0x20,   0x01,   0x00,       0x00,   0x00,   0x00,   0x00,
    0x00, 0x00000000, 0x00, 0x00, 0x00,   0x00,   0x00000000, 0x00,   0x00,   0x00,   0x00,
    0x00, 0x00,       0x01, 0x00, 0x0012, 0x002E, 0x0000,     0x0000, 0x0000, 0x0000,
};

Sub98Init5 D_80AA166C = {
    0x00, 0x0000, 0x0000, 0x0000, 0xFF,
};

struct_D_80AA1678 D_80AA1678[] = {
    {0x06000820, 1.0f, 0x00, 0.0f},
    {0x06000820, 1.0f, 0x00, -10.0f},
    {0x06008D64, 1.0f, 0x00, 0.0f},
    {0x06008D64, 1.0f, 0x00, -10.0f},
};

u32 D_80AA16B8[] = {
    0x44480000,
    0x00000000,
    0x00000000,
};
u32 D_80AA16C4[] = {
    0x06001F18,
    0x06002B18,
    0x06002F18,
};
u32 D_80AA16D0[] = {
    0x06001B18,
    0x06002318,
    0x06002718,
    0x00000000,
};

extern AnimationHeader D_06000820;
extern SkeletonHeader D_06008460;
extern AnimationHeader D_06008D64;

u16 func_80AA0690(EnMa1 *this, GlobalContext *globalCtx) {
    u16 temp_ret = Text_GetFaceReaction(this, 0x17);
    if (temp_ret != 0) {
        return temp_ret;
    }
    if (CHECK_QUEST_ITEM(QUEST_SONG_EPONA)) {
        return 0x204A;
    }
    if (gSaveContext.eventChkInf[1] & 0x40) {
        return 0x2049;
    }
    if (gSaveContext.eventChkInf[1] & 0x20) {
        if ((gSaveContext.infTable[8] & 0x20)) {
            return 0x2049;
        } else {
            return 0x2048;
        }
    }
    if (gSaveContext.eventChkInf[1] & 0x10) {
        return 0x2047;
    }
    if (gSaveContext.eventChkInf[1] & 4) {
        return 0x2044;
    }
    if (gSaveContext.infTable[8] & 0x10) {
        if (gSaveContext.infTable[8] & 0x800) {
            return 0x2043;
        } else {
            return 0x2042;
        }
    }
    return 0x2041;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA0778.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA08C4.s")
/*s32 func_80AA08C4(EnMa1 *this, GlobalContext *globalCtx) {
    void *temp_a0;

    if (3 == this->actor.shape.rot.z) {
        if ((0x80160000 + 0xE660)->unk1360 == 5) {
            return 1;
        }
    }
    temp_a0 = 0x80160000 + 0xE660;
    if (1 != temp_a0->unk4) {
        return 0;
    }
    if ((globalCtx->sceneNum == 0x21) || (globalCtx->sceneNum == 0x20)) {
        if ((temp_a0->unkED6 & 0x10) == 0) {
            if ((temp_a0->unkF08 & 0x800) == 0) {
                return 1;
            }
        }
    } else {

    }
    if (globalCtx->sceneNum == 0x5F) {
        if ((temp_a0->unkED6 & 0x10) == 0) {
            if ((temp_a0->unkF08 & 0x800) != 0) {
                return 1;
            }
            temp_a0->unkF08 = (u16) (temp_a0->unkF08 | 0x800);
            return 0;
        }
    }
    if (globalCtx->sceneNum == 0x4C) {
        if (1 == temp_a0->unk10) {
            if ((temp_a0->unkED6 & 0x10) != 0) {
                return 1;
            }
        }
    }
    if (globalCtx->sceneNum != 0x63) {
        return 0;
    }
    if (3 == this->actor.shape.rot.z) {
        if (temp_a0->unk10 == 0) {
            if ((temp_a0->unkED6 & 0x10) != 0) {
                return 1;
            }
        }
    }
    return 0;
}*/

void func_80AA0A0C(EnMa1 *this) {
    if (!DECR(this->unk_1E2)) {
        this->unk_1E4 += 1;
        if (this->unk_1E4 >= 3) {
            this->unk_1E2 = Math_Rand_S16Offset(0x1E, 0x1E);
            this->unk_1E4 = 0;
        }
    }
}

void func_80AA0A84(EnMa1 *this, UNK_TYPE idx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_80AA1678[idx].animation->genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, D_80AA1678[idx].animation, 1.0f, 0.0f, frameCount, D_80AA1678[idx].unk_08, D_80AA1678[idx].transitionRate);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA0AF4.s")
/*
void func_80AA0AF4(EnMa1 *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    s16 phi_a3 = 0;

    if (this->unk_1E8.unk_00 == 0) {
        if (this->skelAnime.animCurrentSeg == &D_06008D64) {
            phi_a3 = 1;
        }
    }

    this->unk_1E8.unk_18 = player->actor.posRot.pos;
    this->unk_1E8.unk_18.y -= -10.0f;

    func_80034A14(&this->actor, &this->unk_1E8, 0, phi_a3);
}*/

void func_80AA0B74(EnMa1 *this) {
    if (this->skelAnime.animCurrentSeg == &D_06008D64) {
        if ((this->unk_1E8.unk_00 == 0)) {
            if (this->unk_1E0 != 0) {
                this->unk_1E0 = 0;
                func_800F6584(0, this);
                return;
            }
        } else {
            if (this->unk_1E0 == 0) {
                this->unk_1E0 = 1;
                func_800F6584(1, this);
            }
        }
    }
}

void EnMa1_Init(EnMa1* this, GlobalContext* globalCtx) {
    s32 pad;
    ColliderCylinderMain* collider = &this->collider;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 18.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06008460, NULL, NULL, NULL, 0);
    ActorCollider_AllocCylinder(globalCtx, collider);
    ActorCollider_InitCylinder(globalCtx, collider, &this->actor, &D_80AA1640);
    func_80061EFC(&this->actor.sub_98, CollisionBtlTbl_Get(0x16), &D_80AA166C);

    if (func_80AA08C4(this, globalCtx) == 0) {
        Actor_Kill(&this->actor);
        return;
    }

    func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.unk_1F = 6;
    this->unk_1E8.unk_00 = 0;
    
    if ((!(gSaveContext.eventChkInf[1] & 0x10)) || (CHECK_QUEST_ITEM(ITEM_SONG_EPONA))) {
        this->actionFunc = (ActorFunc)func_80AA0D88;
        func_80AA0A84(this, 2);
    } else {
        this->actionFunc = (ActorFunc)func_80AA0F44;
        func_80AA0A84(this, 2);
    }
}

void EnMa1_Destroy(EnMa1* this, GlobalContext* globalCtx) {
    SkelAnime_Free(&this->skelAnime, globalCtx);
    ActorCollider_FreeCylinder(globalCtx, &this->collider);
}

void func_80AA0D88(EnMa1* this, GlobalContext* globalCtx) {
    if (this->unk_1E8.unk_00 != 0) {
        if (this->skelAnime.animCurrentSeg != &D_06000820) {
            func_80AA0A84(this, 1);
        }
    } else {
        if (this->skelAnime.animCurrentSeg != &D_06008D64) {
            func_80AA0A84(this, 3);
        }
    }

    if ((globalCtx->sceneNum == 0x5F) && (gSaveContext.eventChkInf[1] & 0x10)) {
        Actor_Kill(&this->actor);
    } else if ((!(gSaveContext.eventChkInf[1] & 0x10)) || (CHECK_QUEST_ITEM(ITEM_SONG_EPONA))) {
        if (this->unk_1E8.unk_00 == 2) {
            this->actionFunc = (ActorFunc)func_80AA0EA0;
            globalCtx->msgCtx.unk_E3E7 = 4;
            globalCtx->msgCtx.msgMode = 0x36;
        }
    }
}

void func_80AA0EA0(EnMa1* this, GlobalContext* globalCtx) {
    if (func_8002F410(&this->actor, globalCtx)) {
        this->actor.attachedA = NULL;
        this->actionFunc = (ActorFunc)func_80AA0EFC;
    } else {
        func_8002F434(&this->actor, globalCtx, GI_WEIRD_EGG, 120.0f, 10.0f);
    }
}

void func_80AA0EFC(EnMa1* this, GlobalContext* globalCtx) {
    if (this->unk_1E8.unk_00 == 3) {
        this->unk_1E8.unk_00 = 0;
        this->actionFunc = (ActorFunc)func_80AA0D88;
        gSaveContext.eventChkInf[1] |= 4;
        globalCtx->msgCtx.msgMode = 0x36;
    }
}

void func_80AA0F44(EnMa1 *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;

    if (this->unk_1E8.unk_00 != 0) {
        if (this->skelAnime.animCurrentSeg != &D_06000820) {
            func_80AA0A84(this, 1);
        }
    } else {
        if (this->skelAnime.animCurrentSeg != &D_06008D64) {
            func_80AA0A84(this, 3);
        }
    }

    if (gSaveContext.eventChkInf[1] & 0x40) {
        if (player->stateFlags2 & 0x1000000) {
            player->stateFlags2 |= 0x2000000;
            player->unk_6A8 = &this->actor;
            this->actor.textId = 0x2061;
            func_8010B680(globalCtx, this->actor.textId, 0);
            this->unk_1E8.unk_00 = 1;
            this->actor.flags |= 0x10000;
            this->actionFunc = (ActorFunc)func_80AA106C;
            return;
        }
        if (this->actor.xzDistanceFromLink < (30.0f + (f32)this->collider.dim.radius)) {
            player->stateFlags2 |= 0x800000;
        }
    }
}

void func_80AA106C(EnMa1 *this, GlobalContext *globalCtx) {
    PLAYER->stateFlags2 |= 0x800000;
    if (this->unk_1E8.unk_00 == 2) {
        func_800ED858(2);
        func_8010BD58(globalCtx, 9);
        this->actor.flags &= 0xFFFEFFFF;
        this->actionFunc = (ActorFunc)func_80AA10EC;
    }
}

void func_80AA10EC(EnMa1 *this, GlobalContext *globalCtx) {
    PLAYER->stateFlags2 |= 0x800000;
    if (func_8010BDBC(&globalCtx->msgCtx) == 7) {
        func_8010BD58(globalCtx, 0x16);
        this->actionFunc = (ActorFunc)func_80AA1150;
    }
}

void func_80AA1150(EnMa1 *this, GlobalContext *globalCtx) {
    PLAYER->stateFlags2 |= 0x800000;
    if (globalCtx->msgCtx.unk_E3EE == 3) {
        globalCtx->nextEntranceIndex = 0x157;
        gSaveContext.nextCutsceneIndex = 0xFFF1;
        globalCtx->fadeTransition = 0x2A;
        globalCtx->sceneLoadFlag = 0x14;
        this->actionFunc = (ActorFunc)func_80AA11C8;
    }
}

void func_80AA11C8(EnMa1 *this, GlobalContext *globalCtx) {

}

void EnMa1_Update(EnMa1 *this, GlobalContext *globalCtx) {
    ColliderCylinderMain* collider = &this->collider;
    s32 pad;

    ActorCollider_Cylinder_Update(this, collider);
    Actor_CollisionCheck_SetOT(globalCtx, &globalCtx->sub_11E60, collider);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    func_80AA0A0C(this);
    this->actionFunc(this, globalCtx);
    if (this->actionFunc != (ActorFunc)func_80AA11C8) {
        func_800343CC(globalCtx, &this->actor, &this->unk_1E8, (f32) this->collider.dim.radius + 30.0f, func_80AA0690, func_80AA0778);
    }
    func_80AA0B74(this);
    func_80AA0AF4(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA12BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA1448.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/EnMa1_Draw.s")
