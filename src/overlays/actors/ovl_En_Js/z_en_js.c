#include "z_en_js.h"

#define FLAGS 0x00000009

#define THIS ((EnJs*)thisx)

void EnJs_Init(Actor* thisx, GlobalContext* globalCtx);
void EnJs_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnJs_Update(Actor* thisx, GlobalContext* globalCtx);
void EnJs_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A89304(EnJs* this, GlobalContext* globalCtx);

const ActorInit En_Js_InitVars = {
    ACTOR_EN_JS,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_JS,
    sizeof(EnJs),
    (ActorFunc)EnJs_Init,
    (ActorFunc)EnJs_Destroy,
    (ActorFunc)EnJs_Update,
    (ActorFunc)EnJs_Draw,
};

// sCylinderInit
ColliderCylinderInit D_80A896B0 = {
    { COLTYPE_UNK10, 0x00, 0x11, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 30, 40, 0, { 0, 0, 0 } },
};
s32 D_80A896DC[] = { 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 };

extern SkeletonHeader D_06005EA0;
extern AnimationHeader D_0600045C;
extern UNK_TYPE D_0600018C;

void func_80A88E10(EnJs* this, EnJsActionFunc actionfunc) {
    this->actionfunc = actionfunc;
}

void EnJs_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnJs* this = THIS;

    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 36.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06005EA0, &D_0600045C, &this->limbDrawTable,
                     &this->transitionDrawTable, 0xD);
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_0600045C);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80A896B0);
    this->actor.colChkInfo.mass = 0xFF;
    Actor_SetScale(&this->actor, 0.01f);
    func_80A88E10(&this->actor, func_80A89304);
    this->unk_284 = 0;
    this->actor.gravity = -1.0f;
    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_JSJUTAN, this->actor.posRot.pos.x,
                        this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
}

void EnJs_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnJs* this = THIS;
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

u8 func_80A88F64(EnJs* this, GlobalContext* globalCtx, u16 arg2) {
    s16 temp;
    s32 phi_v1;

    if (func_8002F194(&this->actor, globalCtx) != 0) {
        return 1;
    } else {
        this->actor.textId = arg2;
        temp = this->actor.yawTowardsLink - this->actor.shape.rot.y;

        if (temp >= 0) {
            phi_v1 = temp;
        } else {
            phi_v1 = -temp;
        }

        if (phi_v1 < 0x1801 && this->actor.xzDistFromLink < 100.0f) {
            this->unk_284 |= 1;
            func_8002F2CC(&this->actor, globalCtx, 100.0f);
        }
        return 0;
    }
}

void func_80A89008(EnJs* this) {
    func_80A88E10(this, func_80A89304);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600045C, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600045C), 2, -4.0f);
}

void func_80A89078(EnJs *this, GlobalContext *globalCtx) {
    if (func_8002F334(&this->actor, globalCtx) != 0) {
        func_80A89008(this);
        this->actor.flags &= ~0x10000;
    }
}

void func_80A890C0(EnJs *this, GlobalContext *globalCtx) {
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        func_80A88E10(this, func_80A89078);
    }
    else{
        func_8002F2CC(&this->actor, globalCtx, 1000.0f);
    }
    
}

void func_80A8910C(EnJs *this, GlobalContext *globalCtx) {
    if (func_8002F334(&this->actor, globalCtx) != 0) {
        this->actor.textId = 0x6078U;
        func_80A88E10(this, func_80A890C0);
        this->actor.flags |= 0x10000;
    }
}

void func_80A89160(EnJs *this, GlobalContext *globalCtx) {
    if (func_8002F410(&this->actor, globalCtx) != 0) {
        this->actor.attachedA = NULL;
        func_80A88E10(this, func_80A8910C);
    }
    else
    {
        func_8002F434(&this->actor, globalCtx, 3, 10000.0f, 50.0f);
    }
    
}

u8 func_80A891C4(s32 arg0, GlobalContext *arg1) {
    GlobalContext *temp_a0;
    u8 temp_ret;
    u8 temp_ret_2;
    u8 temp_v0;
    u8 phi_return;

    temp_ret = func_8010BDBC(arg1 + 0x20D8);
    phi_return = temp_ret;
    if (temp_ret == 4) {
        temp_a0 = arg1;
        arg1 = arg1;
        temp_ret_2 = func_80106BC8(temp_a0);
        phi_return = temp_ret_2;
        if (temp_ret_2 != 0) {
            temp_v0 = arg1->msgCtx.choiceIndex;
            if (temp_v0 == 0) {
                if ((s32) gSaveContext.rupees >= 0xC8) {
                    Rupees_ChangeBy((u16)-0xC8);
                    return func_80A88E10(arg0, &func_80A89160);
                }
                func_8010B720(arg1, (u16)0x6075U);
                return func_80A89008(arg0);
            }
            if (temp_v0 != 1) {
                return temp_v0;
            }
            func_8010B720(arg1, (u16)0x6074U);
            phi_return = func_80A89008(arg0);
        }
    }
    return phi_return;
}
void func_80A89294(EnJs *this) {
    func_80A88E10(this, func_80A891C4);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600018C, 1.0f, 0.0f, SkelAnime_GetFrameCount(D_0600018C), 2, -4.0f);
}

void func_80A89304(EnJs* this, GlobalContext* globalCtx) {
    if (func_80A88F64(this, globalCtx, 0x6077) != 0) {
        func_80A89294(this);
    }
}
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/EnJs_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A895C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A895F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/EnJs_Draw.s")
