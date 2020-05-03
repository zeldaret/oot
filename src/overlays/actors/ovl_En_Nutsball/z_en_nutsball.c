/*
 * File: z_en_nutsball.c
 * Overlay: ovl_En_Nutsball
 * Description: The projectile fired by deku scrubs and octoroks.
 */

#include "z_en_nutsball.h"

#define FLAGS 0x00000010

#define THIS ((EnNutsball*)thisx)

void EnNutsball_Init(Actor* thisx, GlobalContext* globalCtx);
void EnNutsball_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnNutsball_Update(Actor* thisx, GlobalContext* globalCtx);
void EnNutsball_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80ABBB34(EnNutsball* this, GlobalContext* globalCtx);
void func_80ABBBA8(EnNutsball* this, GlobalContext* globalCtx);

const ActorInit En_Nutsball_InitVars = {
    ACTOR_EN_NUTSBALL,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnNutsball),
    (ActorFunc)EnNutsball_Init,
    (ActorFunc)EnNutsball_Destroy,
    (ActorFunc)EnNutsball_Update,
    (ActorFunc)NULL,
};

static ColliderCylinderInit cylinderInitData = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x11, 0x01, 0x01 },
    { 13, 13, 0, { 0 } },
};

static s16 objectTbl[] = { OBJECT_DEKUNUTS, OBJECT_HINTNUTS, OBJECT_SHOPNUTS, OBJECT_DNS, OBJECT_DNK };
static u32 dListTbl[] = { 0x06002028, 0x060012F0, 0x06004008, 0x06002410, 0x06001890 };

void EnNutsball_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnNutsball* this = THIS;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 400.0f, ActorShadow_DrawFunc_Circle, 13.0f);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &cylinderInitData);
    this->objBankIndex = Object_GetIndex(&globalCtx->objectCtx, objectTbl[this->actor.params]);

    if (this->objBankIndex < 0) {
        Actor_Kill(&this->actor);
    } else {
        this->actionFunc = (ActorFunc)func_80ABBB34;
    }
}

void EnNutsball_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnNutsball* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80ABBB34(EnNutsball* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->objBankIndex)) {
        this->actor.objBankIndex = this->objBankIndex;
        this->actor.draw = EnNutsball_Draw;
        this->actor.shape.rot.y = 0;
        this->timer = 30;
        this->actionFunc = (ActorFunc)func_80ABBBA8;
        this->actor.speedXZ = 10.0f;
    }
}

void func_80ABBBA8(EnNutsball* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Vec3s sp4C;
    Vec3f sp40;

    this->timer--;

    if (this->timer == 0) {
        this->actor.gravity = -1;
    }

    this->actor.initPosRot.rot.z += 0x2AA8;

    if ((this->actor.bgCheckFlags & 8) || (this->actor.bgCheckFlags & 1) || (this->collider.base.atFlags & 2) ||
        (this->collider.base.acFlags & 2) || (this->collider.base.maskA & 2)) {
        // Checking if the player is using a shield that reflects projectiles
        // And if so, reflects the projectile on impact
        if ((player->currentShield == 1) || ((player->currentShield == 2) && LINK_IS_ADULT)) {
            if ((this->collider.base.atFlags & 2) && (this->collider.base.atFlags & 0x10) &&
                (this->collider.base.atFlags & 4)) {
                this->collider.base.atFlags &= ~0x16;
                this->collider.base.atFlags |= 0x08;

                this->collider.body.toucher.flags = 2;
                func_800D20CC(&player->mf_A20, &sp4C, 0);
                this->actor.posRot.rot.y = sp4C.y + 0x8000;
                this->timer = 30;
                return;
            }
        }

        sp40.x = this->actor.posRot.pos.x;
        sp40.y = this->actor.posRot.pos.y + 4;
        sp40.z = this->actor.posRot.pos.z;

        func_800297A4(globalCtx, &sp40, 0x40C00000, 0, 7, 3, 15, -1, 10, 0);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 20, NA_SE_EN_OCTAROCK_ROCK);
        Actor_Kill(&this->actor);
    } else {
        if (this->timer == -300) {
            Actor_Kill(&this->actor);
        }
    }
}

void EnNutsball_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnNutsball* this = THIS;
    Player* player = PLAYER;
    s32 pad;

    if (!(player->stateFlags1 & 0x300000C0) || (this->actionFunc == (ActorFunc)func_80ABBB34)) {
        this->actionFunc(this, globalCtx);

        Actor_MoveForward(&this->actor);
        func_8002E4B4(globalCtx, &this->actor, 10, cylinderInitData.dim.radius, cylinderInitData.dim.height, 5);
        Collider_CylinderUpdate(&this->actor, &this->collider);

        this->actor.flags |= 0x1000000;

        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
    }
}

void EnNutsball_Draw(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nutsball.c", 327);

    func_80093D18(globalCtx->state.gfxCtx);
    Matrix_Mult(&globalCtx->mf_11DA0, MTXMODE_APPLY);
    Matrix_RotateZ(thisx->initPosRot.rot.z * 9.58738e-05f, MTXMODE_APPLY);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_nutsball.c", 333),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, dListTbl[thisx->params]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nutsball.c", 337);
}
