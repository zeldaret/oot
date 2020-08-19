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

void EnJs_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    EnJs* this = THIS;
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A88F64.s")
/*? func_80A88F64(Actor *arg0, GlobalContext *arg1, u16 arg2) {
    s32 temp_v0;
    s32 phi_v1;

    if (func_8002F194(arg0, arg1) != 0) {
        return 1;
    }
    temp_v0 = (s32) ((arg0->yawTowardsLink - arg0->shape.rot.y) << 0x10) >> 0x10;
    arg0->textId = arg2;
    if (temp_v0 >= 0) {
        phi_v1 = temp_v0;
    } else {
        phi_v1 = 0 - temp_v0;
    }
    if (phi_v1 < 0x1801) {
        if (arg0->xzDistFromLink < 100.0f) {
            arg0->unk284 = (u16) (arg0->unk284 | 1);
            func_8002F2CC(arg0, arg1, 100.0f);
        }
    }
    return 0;
}*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A89008.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A89078.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A890C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A8910C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A89160.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A891C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A89294.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A89304.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/EnJs_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A895C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A895F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/EnJs_Draw.s")
