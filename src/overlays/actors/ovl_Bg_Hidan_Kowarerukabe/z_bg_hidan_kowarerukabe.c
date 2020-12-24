#include "z_bg_hidan_kowarerukabe.h"

#define FLAGS 0x00000000

#define THIS ((BgHidanKowarerukabe*)thisx)

void BgHidanKowarerukabe_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanKowarerukabe_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanKowarerukabe_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanKowarerukabe_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_05000530;

const ActorInit Bg_Hidan_Kowarerukabe_InitVars = {
    ACTOR_BG_HIDAN_KOWARERUKABE,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanKowarerukabe),
    (ActorFunc)BgHidanKowarerukabe_Init,
    (ActorFunc)BgHidanKowarerukabe_Destroy,
    (ActorFunc)BgHidanKowarerukabe_Update,
    (ActorFunc)BgHidanKowarerukabe_Draw,
};

static Gfx* D_8088AE10[] = { 0x0600B9C0, 0x0600C038, 0x0600B900 };

static ColliderJntSphItemInit sJntSphItemsInit[1] = { {
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000008, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 0, { { 0, 0, 0 }, 100 }, 100 },
} };

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x00, COLSHAPE_JNTSPH },
    ARRAY_COUNT(sJntSphItemsInit),
    sJntSphItemsInit,
};

static ColHeader* sCollisionHeaders[] = { 0x0600D800, 0x0600D878, 0x0600D8F8 };

static s16 sSphereRadii[] = { 80, 45, 80 };

static s16 sSphYPositions[] = { 0, 500, 500 };

static f32 D_8088AE6C[] = { 0.7f, 0.0f, 0.0f };

static u32 sInitChain[] = {
    0xB0F407D0, 0xB0F80190, 0x30FC03E8, 0x00000000, 0x00000000, 0x00000000,
};

void func_8088A020(BgHidanKowarerukabe* this, GlobalContext* globalCtx) {
    s32 pad;
    CollisionHeader* colHeader = NULL;
    s32 pad2;

    if (sCollisionHeaders[this->dyna.actor.params & 0xFF] != NULL) {
        DynaPolyInfo_SetActorMove(&this->dyna, 0);
        DynaPolyInfo_Alloc(sCollisionHeaders[this->dyna.actor.params & 0xFF], &colHeader);
        this->dyna.dynaPolyId =
            DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);
    } else {
        this->dyna.dynaPolyId = -1;
    }
}

void func_8088A0B8(BgHidanKowarerukabe* this, GlobalContext* globalCtx) {
    s32 pad;

    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->dyna.actor, &sJntSphInit, &this->colliderItems);

    this->collider.list[0].dim.modelSphere.radius = sSphereRadii[this->dyna.actor.params & 0xFF];
    this->collider.list[0].dim.modelSphere.center.y = sSphYPositions[this->dyna.actor.params & 0xFF];
}

void func_8088A150(BgHidanKowarerukabe* this) {
    this->dyna.actor.posRot.pos.y = D_8088AE6C[this->dyna.actor.params & 0xFF] + this->dyna.actor.initPosRot.pos.y;
}

void BgHidanKowarerukabe_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanKowarerukabe* this = THIS;

    func_8088A020(this, globalCtx);

    if ((this->dyna.actor.params & 0xFF) < 0 || (this->dyna.actor.params & 0xFF) >= 3) {
        osSyncPrintf("Error : 炎の神殿 壊れる壁 の arg_data が判別出来ない(%s %d)(arg_data 0x%04x)\n",
                     "../z_bg_hidan_kowarerukabe.c", 254, this->dyna.actor.params);
        Actor_Kill(&this->dyna.actor);
        return;
    }

    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params >> 8) & 0x3F)) {
        Actor_Kill(&this->dyna.actor);
        return;
    }

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    Actor_SetScale(&this->dyna.actor, 0.1f);
    func_8088A0B8(this, globalCtx);
    func_8088A150(this);
    osSyncPrintf("(hidan 爆弾で壊れる 壁 床)(arg_data 0x%04x)\n", this->dyna.actor.params);
}

void BgHidanKowarerukabe_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanKowarerukabe* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    Collider_DestroyJntSph(globalCtx, &this->collider);
}

void func_8088A290(BgHidanKowarerukabe* this, GlobalContext* globalCtx) {
    Actor* thisx = (Actor*)this;
    Vec3f sp28;

    sp28 = thisx->posRot.pos;
    sp28.y += 10.0f;

    func_80033480(globalCtx, &sp28, 0.0f, 0, 600, 300, 1);

    sp28.x = ((Math_Rand_ZeroOne() - 0.5f) * 80.0f) + thisx->posRot.pos.x;
    sp28.y = (Math_Rand_ZeroOne() * 100.0f) + thisx->posRot.pos.y;
    sp28.z = ((Math_Rand_ZeroOne() - 0.5f) * 80.0f) + thisx->posRot.pos.z;

    func_80033480(globalCtx, &sp28, 100.0f, 4, 200, 250, 1);
}

void func_8088A3B0(BgHidanKowarerukabe* this, GlobalContext* globalCtx) {
    s32 i;
    s32 j;
    Vec3f velocity;
    Vec3f pos;
    s16 arg9;
    Actor* thisx = (Actor*)this;
    f32 sin = Math_Sins(thisx->shape.rot.y);
    f32 cos = Math_Coss(thisx->shape.rot.y);
    f32 num1;
    f32 num2;
    s16 arg5;

    pos.y = thisx->posRot.pos.y + 10.0f;

    for (i = 0; i < 5; i++) {
        for (j = 0; j < 5; j++) {
            num2 = (i * 0x18) - 0x30;
            pos.x = ((((j * 0x18) - 0x30) * sin) + (num2 * cos)) + thisx->posRot.pos.x;
            pos.z = ((((j * 0x18) - 0x30) * cos) - (num2 * sin)) + thisx->posRot.pos.z;

            num1 = (Math_Rand_ZeroOne() * 8.0f) * (i - 2);
            num2 = (Math_Rand_ZeroOne() * 8.0f) * (j - 2);

            velocity.x = (num2 * sin) + (num1 * cos);
            velocity.y = Math_Rand_ZeroOne() * 30.0f;
            velocity.z = (num2 * cos) - (num1 * sin);

            arg9 = ((Math_Rand_ZeroOne() - 0.5f) * 11.0f * 1.4f) + 11.0f;

            if (((i == 0) || (i == 4)) && ((j == 0) || (j == 4))) {
                arg5 = 65;
            } else {
                arg5 = 64;
            }

            EffectSsKakera_Spawn(globalCtx, &pos, &velocity, &thisx->posRot.pos, -550, arg5, 15, 15, 0, arg9, 2, 16,
                                 100, -1, OBJECT_GAMEPLAY_DANGEON_KEEP, &D_05000530);
        }
    }
}

void func_8088A67C(BgHidanKowarerukabe* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/func_8088A67C.s")

void func_8088A914(BgHidanKowarerukabe* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/func_8088A914.s")

void func_8088ABA0(BgHidanKowarerukabe* this, GlobalContext* globalCtx) {
    switch (this->dyna.actor.params & 0xFF) {
        case 0:
            func_8088A3B0(this, globalCtx);
            break;
        case 1:
            func_8088A67C(this, globalCtx);
            break;
        case 2:
            func_8088A914(this, globalCtx);
            break;
    }

    func_8088A290(this, globalCtx);
}

void BgHidanKowarerukabe_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanKowarerukabe* this = THIS;
    s32 pad;

    if (Actor_GetCollidedExplosive(globalCtx, &this->collider) != NULL) {
        func_8088ABA0(this, globalCtx);
        Flags_SetSwitch(globalCtx, (this->dyna.actor.params >> 8) & 0x3F);

        if ((this->dyna.actor.params & 0xFF) == 0) {
            Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.posRot.pos, 40, NA_SE_EV_EXPLOSION);
        } else {
            Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.posRot.pos, 40, NA_SE_EV_WALL_BROKEN);
        }

        func_80078884(NA_SE_SY_CORRECT_CHIME);
        Actor_Kill(&this->dyna.actor);
        return;
    }
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);
}

void BgHidanKowarerukabe_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanKowarerukabe* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_hidan_kowarerukabe.c", 565);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_hidan_kowarerukabe.c", 568),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_8088AE10[this->dyna.actor.params & 0xFF]);

    func_800628A4(0, &this->collider);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_hidan_kowarerukabe.c", 573);
}
