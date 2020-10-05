/*
 * File: z_en_si.c
 * Overlay: En_Si
 * Description:
 */

#include "z_en_si.h"

#define FLAGS 0x00000201

#define THIS ((EnSi*)thisx)

void EnSi_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSi_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSi_Update(Actor* thisx, GlobalContext* globalCtx);
void EnSi_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 func_80AFB748(EnSi* this, GlobalContext* globalCtx);
void func_80AFB768(EnSi* this, GlobalContext* globalCtx);
void func_80AFB89C(EnSi* this, GlobalContext* globalCtx);
void func_80AFB950(EnSi* this, GlobalContext* globalCtx);

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x3D, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000090, 0x00, 0x00 }, 0x00, 0x05, 0x01 },
    { 20, 18, 2, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 D_80AFBADC = {
    0x00, 0x0000, 0x0000, 0x0000, 0xFF,
};

const ActorInit En_Si_InitVars = {
    ACTOR_EN_SI,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_ST,
    sizeof(EnSi),
    (ActorFunc)EnSi_Init,
    (ActorFunc)EnSi_Destroy,
    (ActorFunc)EnSi_Update,
    (ActorFunc)EnSi_Draw,
};

void EnSi_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnSi* this = THIS;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    func_80061EFC(&this->actor.colChkInfo, NULL, &D_80AFBADC);
    Actor_SetScale(&this->actor, 0.025f);
    this->unk_19C = 0;
    this->actionFunc = func_80AFB768;
    this->actor.shape.unk_08 = 42.0f;
}

void EnSi_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnSi* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

s32 func_80AFB748(EnSi* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & 0x2) {
        this->collider.base.acFlags &= ~0x2;
    }
    return 0;
}

void func_80AFB768(EnSi* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if ((this->actor.flags & 0x2000) == 0x2000) {
        this->actionFunc = func_80AFB89C;
    } else {
        Math_SmoothScaleMaxMinF(&this->actor.scale.x, 0.25f, 0.4f, 1.0f, 0.0f);
        Actor_SetScale(&this->actor, this->actor.scale.x);
        this->actor.shape.rot.y += 0x400;

        if (!Player_InCsMode(globalCtx)) {
            func_80AFB748(this, globalCtx);

            if (this->collider.base.maskB & 0x1) {
                this->collider.base.maskB &= ~0x1;
                Item_Give(globalCtx, ITEM_SKULL_TOKEN);
                player->actor.freezeTimer = 10;
                func_8010B680(globalCtx, 0xB4, 0);
                func_800F5C64(0x39);
                this->actionFunc = func_80AFB950;
            } else {
                Collider_CylinderUpdate(&this->actor, &this->collider);
                CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);
                CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
            }
        }
    }
}

void func_80AFB89C(EnSi* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    Math_SmoothScaleMaxMinF(&this->actor.scale.x, 0.25f, 0.4f, 1.0f, 0.0f);
    Actor_SetScale(&this->actor, this->actor.scale.x);
    this->actor.shape.rot.y += 0x400;

    if ((this->actor.flags & 0x2000) != 0x2000) {
        Item_Give(globalCtx, ITEM_SKULL_TOKEN);
        player->actor.freezeTimer = 10;
        func_8010B680(globalCtx, 0xB4, 0);
        func_800F5C64(0x39);
        this->actionFunc = func_80AFB950;
    }
}

void func_80AFB950(EnSi* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 temp;
    s16 params;

    if (func_8010BDBC(&globalCtx->msgCtx) != 2) {
        player->actor.freezeTimer = 10;
    } else {
        params = this->actor.params;
        temp = (params & 0x1F00) >> 8;
        gSaveContext.gsFlags[temp >> 2] |= (params & 0xFF) << D_8012724C[temp & 3];

        Actor_Kill(&this->actor);
    }
}

void EnSi_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnSi* this = THIS;

    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    this->actionFunc(this, globalCtx);
    Actor_SetHeight(&this->actor, 16.0f);
}

void EnSi_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnSi* this = THIS;

    if (this->actionFunc != func_80AFB950) {
        func_8002ED80(&this->actor, globalCtx, 0);
        func_8002EBCC(&this->actor, globalCtx, 0);
        func_800694A0(globalCtx, 0x74);
    }
}
