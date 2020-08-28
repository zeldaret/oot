#include "z_en_heishi4.h"

#define FLAGS 0x00000009

#define THIS ((EnHeishi4*)thisx)

void EnHeishi4_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi4_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi4_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi4_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A56544(EnHeishi4* this, GlobalContext* globalCtx);
void func_80A5673C(EnHeishi4* this, GlobalContext* globalCtx);
void func_80A56328(EnHeishi4* this, GlobalContext* globalCtx);
void func_80A563BC(EnHeishi4* this, GlobalContext* globalCtx);
void func_80A56B40(EnHeishi4* this, GlobalContext* globalCtx);
void func_80A56614(EnHeishi4* this, GlobalContext* globalCtx);

const ActorInit En_Heishi4_InitVars = {
    ACTOR_EN_HEISHI4,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_SD,
    sizeof(EnHeishi4),
    (ActorFunc)EnHeishi4_Init,
    (ActorFunc)EnHeishi4_Destroy,
    (ActorFunc)EnHeishi4_Update,
    (ActorFunc)EnHeishi4_Draw,
};

s32 D_80A56EF0[] = {0x00000006, 0x00000007};
//s32 D_80A56EF8[] = {0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x00210028, 0x00000000, 0x00000000 ,};
static ColliderCylinderInit sCylinderInit =
{
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 33, 40, 0, { 0, 0, 0 } },
};

extern SkeletonHeader D_0600BAC8;
extern AnimationHeader D_0600C444;
extern AnimationHeader D_06005C30;

#ifdef NON_MATCHING
//one small stack diff
void EnHeishi4_Init(Actor *thisx, GlobalContext *globalCtx) {
    EnHeishi4* this = THIS;
    s32 pad1;
    
    Actor_SetScale(thisx, 0.01f);
    this->unk_280 =  (thisx->params & 0xFF);
    thisx->colChkInfo.mass = 0xFFU;
    this->unk_26C = thisx->posRot.pos;
    thisx->unk_1F = 6;
    if (this->unk_280 == 7) {
        this->unk_278 = 30.0f;
        ActorShape_Init(&thisx->shape, 0.0f, NULL, 30.0f);
        //pad = pad;
        SkelAnime_Init(globalCtx, &this->skelAnime, &D_0600BAC8, &D_0600C444, &this->limbDrawTable, &this->transitionDrawTable, 17);
    } else {
        this->unk_278 = 60.0f;
        ActorShape_Init(&thisx->shape, 0.0f, &ActorShadow_DrawFunc_Circle, 30.0f);
        SkelAnime_Init(globalCtx, &this->skelAnime, &D_0600BAC8, &D_06005C30, &this->limbDrawTable, &this->transitionDrawTable, 17);
    }
    Collider_InitCylinder(globalCtx, &this->collider);//Stack is somewhere in here I think
    Collider_SetCylinder(globalCtx, &this->collider, thisx, &sCylinderInit);
    this->collider.dim.yShift = 0;
    this->collider.dim.radius = 15;
    this->collider.dim.height = 70;
    switch (this->unk_280){
        case 0:
        case 4:
            this->actionFunc = func_80A56328;
            break;
        case 7:
            this->collider.dim.radius = 28;
            this->collider.dim.height = 5;
            this->actionFunc = func_80A5673C;
            break;
        case 8:
            this->actionFunc = func_80A56544;;
            break;
    }
    this->unk_27C =  ((thisx->params >> 8) & 0xFF);
    osSyncPrintf("\n\n");
                                //☆☆☆☆☆ Soldier 2 sets completed! ☆☆☆☆☆
    osSyncPrintf("\x1b[32m ☆☆☆☆☆ 兵士２セット完了！ ☆☆☆☆☆ %d\n\x1b[m", thisx->params);
                                //☆☆☆☆☆ The recognition is over!
    osSyncPrintf("\x1b[33m ☆☆☆☆☆ 識別完了！\t    ☆☆☆☆☆ %d\n\x1b[m", this->unk_280);
                            //☆☆☆☆☆ Message completed! ☆☆☆☆☆
    osSyncPrintf("\x1b[35m ☆☆☆☆☆ メッセージ完了！   ☆☆☆☆☆ %x\n\n\x1b[m", ((s32) thisx->params >> 8) & 0xF);
    osSyncPrintf("\n\n");
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/EnHeishi4_Init.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/EnHeishi4_Destroy.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56328.s")
void func_80A56328(EnHeishi4 *this, GlobalContext *globalCtx) {
    f32 temp = SkelAnime_GetFrameCount(&D_06005C30);
   SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f, (s16)temp, 0, -10.0f);
    this->actionFunc = &func_80A563BC;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A563BC.s")
void func_80A563BC(EnHeishi4 *this, GlobalContext *globalCtx) {  //Rename to EnHeishi4_Talk or something
    s16 phi_v0;
    
    this->unk_2B4 = (u8)0;
    phi_v0 = this->unk_280 - 4;;
    if (phi_v0 < 0) {
        phi_v0 = 0;
    }
    if (phi_v0 >= 3) {
        phi_v0 = 1;
    }
    if (Text_GetFaceReaction(globalCtx, D_80A56EF0[phi_v0]) != 0) {
        this->actor.textId = Text_GetFaceReaction(globalCtx, D_80A56EF0[phi_v0]);
        this->unk_2B4 = (u8)1;
        this->actionFunc = &func_80A56B40;
    } else {
        if ((gSaveContext.eventChkInf[8] & 1) != 0) {
            this->actor.textId = 0x5065;
            this->actionFunc = &func_80A56B40;
            return;
        }
        if ((gSaveContext.eventChkInf[4] & 0x20) != 0) {
            this->actor.textId = 0x5068;
            this->actionFunc = &func_80A56B40;
            return;
        }
        if (this->unk_280 == 4) {
            if (this->unk_284 == 0) {
                this->actor.textId = 0x5079;
            } else {
                this->actor.textId = 0x507A;
            }
        } else {
            if (gSaveContext.nightFlag == 0) {
                if (this->unk_284 == 0) {
                    this->actor.textId = 0x5063;
                } else {
                    this->actor.textId = 0x5064;
                }
            } else {
                if (this->unk_284 == 0) {
                    this->actor.textId = 0x5066;
                } else {
                    this->actor.textId = 0x5067;
                }
            }
        }
    this->actionFunc = &func_80A56B40;
    }
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56544.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56614.s")
void func_80A56614(EnHeishi4 *this, GlobalContext *globalCtx) {
    s16 phi_v0;

    phi_v0 = this->unk_280 - 4;
    this->unk_2B4 = 0;
    if (phi_v0 < 0) {
        phi_v0 = 0;
    }
    phi_v0 = phi_v0;
    if (phi_v0 >= 3) {
        phi_v0 = 1;
    }
    if (Text_GetFaceReaction(globalCtx, D_80A56EF0[phi_v0]) != 0) {
        this = this;
        this->actor.textId = Text_GetFaceReaction(globalCtx, D_80A56EF0[phi_v0]);
        this->unk_2B4 = 1;
        this->actionFunc = func_80A56B40;
        return;
    }
    if (globalCtx->sceneNum == 0x4D) {
        if (gSaveContext.nightFlag == 0) {
            this->actor.textId = 0x7004;
        } else {
            this->actor.textId = 0x709A;
        }
    } else {
        if (globalCtx->sceneNum != 0x21) {
            if (gSaveContext.nightFlag == 0) {
                this->actor.textId = 0x7002;
            } else {
                this->actor.textId = 0x7003;
            }
        } else {
            this->actor.textId = 0x7003;
        }
    }
    this->actionFunc = func_80A56B40;
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A5673C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56874.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56900.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56994.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56A50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56ACC.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56B40.s")
void func_80A56B40(EnHeishi4 *this, GlobalContext *globalCtx) {
    s16 phi_v1;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    phi_v1 = (this->unk_280 - 4);
    if (phi_v1 < 0) {
        phi_v1 = 0;
    }
    if (phi_v1 >= 3) {
        phi_v1 = 1;
    }
    if (Text_GetFaceReaction(globalCtx, (u32) D_80A56EF0[phi_v1]) != 0) {
        if (this->unk_2B4 == 0) {
            if ((this->unk_280 == 0) || (this->unk_280 == 4)) {
                this->actionFunc = func_80A563BC;
                return;
            }
            if (this->unk_280 == 8) {
                this->actionFunc = func_80A56614;
                return;
            }
        }
    } else {
        if (this->unk_2B4 != 0) {
            if ((this->unk_280 == 0) || (this->unk_280 == 4)) {
                this->actionFunc = func_80A563BC;
                return;
            }
            if (this->unk_280 == 8) {
                this->actionFunc = func_80A56614;
                return;
            }
        }
    }
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        if ((this->unk_280 == 0) || (this->unk_280 == 4)) {
            this->unk_284 = 1;
            this->actionFunc = func_80A563BC;
            return;
        }
        if (this->unk_280 == 8) {
            this->actionFunc = &func_80A56614;
            return;
        }
    }
    func_8002F2F4(&this->actor, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/EnHeishi4_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56E14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/EnHeishi4_Draw.s")
