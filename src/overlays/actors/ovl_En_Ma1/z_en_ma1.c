#include "z_en_ma1.h"

#define FLAGS 0x02000039

void EnMa1_Init(EnMa1* this, GlobalContext* globalCtx);
void EnMa1_Destroy(EnMa1* this, GlobalContext* globalCtx);
void EnMa1_Update(EnMa1* this, GlobalContext* globalCtx);
void EnMa1_Draw(EnMa1* this, GlobalContext* globalCtx);

void func_80AA0D88(EnMa1* this, GlobalContext* globalCtx);
void func_80AA0EA0(EnMa1* this, GlobalContext* globalCtx);
void func_80AA0EFC(EnMa1* this, GlobalContext* globalCtx);
void func_80AA0F44(EnMa1* this, GlobalContext* globalCtx);

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

u32 D_80AA1678[] = {
    0x06000820, 0x3F800000, 0x00000000, 0x00000000, 0x06000820, 0x3F800000, 0x00000000, 0xC1200000,
    0x06008D64, 0x3F800000, 0x00000000, 0x00000000, 0x06008D64, 0x3F800000, 0x00000000, 0xC1200000,
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA0690.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA0778.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA08C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA0A0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA0A84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA0AF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA0B74.s")

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
    this->unk_1E8 = 0;
    
    if ((!(gSaveContext.event_chk_inf[1] & 0x10)) || (gBitFlags[13] & gSaveContext.quest_items)) {
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
    if (this->unk_1E8 != 0) {
        if (this->skelAnime.animCurrentSeg != &D_06000820) {
            func_80AA0A84(this, 1);
        }
    } else {
        if (this->skelAnime.animCurrentSeg != &D_06008D64) {
            func_80AA0A84(this, 3);
        }
    }

    if ((globalCtx->sceneNum == 0x5F) && (gSaveContext.event_chk_inf[1] & 0x10)) {
        Actor_Kill(&this->actor);
    } else if ((!(gSaveContext.event_chk_inf[1] & 0x10)) || (gBitFlags[13] & gSaveContext.quest_items)) {
        if (this->unk_1E8 == 2) {
            this->actionFunc = (ActorFunc)func_80AA0EA0;
            globalCtx->msgCtx.unk_E3E7 = 4;
            globalCtx->msgCtx.msgMode = 0x36;
        }
    }
}

void func_80AA0EA0(EnMa1* this, GlobalContext* globalCtx) {
    if (func_8002F410(this, globalCtx)) {
        this->actor.attachedA = NULL;
        this->actionFunc = (ActorFunc)func_80AA0EFC;
    } else {
        func_8002F434(&this->actor, globalCtx, GI_WEIRD_EGG, 120.0f, 10.0f);
    }
}

void func_80AA0EFC(EnMa1* this, GlobalContext* globalCtx) {
    if (this->unk_1E8 == 3) {
        this->unk_1E8 = 0;
        this->actionFunc = (ActorFunc)func_80AA0D88;
        gSaveContext.event_chk_inf[1] |= 4;
        globalCtx->msgCtx.msgMode = 0x36;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA0F44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA106C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA10EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA1150.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA11C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/EnMa1_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA12BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA1448.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/EnMa1_Draw.s")
