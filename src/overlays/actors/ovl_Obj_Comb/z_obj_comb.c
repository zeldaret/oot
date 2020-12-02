/*
 * File: z_obj_comb.c
 * Overlay: ovl_Obj_Comb
 * Description: Beehive
 */

#include "z_obj_comb.h"
#include "overlays/effects/ovl_Effect_Ss_Kakera/z_eff_ss_kakera.h"

#define FLAGS 0x00000000

#define THIS ((ObjComb*)thisx)

void ObjComb_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjComb_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjComb_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjComb_Draw(Actor* thisx, GlobalContext* globalCtx);

void ObjComb_Break(ObjComb* this, GlobalContext* globalCtx);
void ObjComb_ChooseItemDrop(ObjComb* this, GlobalContext* globalCtx);
void ObjComb_SetupWait(ObjComb* this);
void ObjComb_Wait(ObjComb* this, GlobalContext* globalCtx);

const ActorInit Obj_Comb_InitVars = {
    ACTOR_OBJ_COMB,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_FIELD_KEEP,
    sizeof(ObjComb),
    (ActorFunc)ObjComb_Init,
    (ActorFunc)ObjComb_Destroy,
    (ActorFunc)ObjComb_Update,
    (ActorFunc)ObjComb_Draw,
};

static ColliderJntSphItemInit sJntSphItemsInit[1] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x4001FFFE, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
        { 0x00, { { 0, 0, 0 }, 15 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x09, 0x20, COLSHAPE_JNTSPH },
    1,
    &sJntSphItemsInit,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 900, ICHAIN_STOP),
};

extern Gfx D_050095B0[];
extern Gfx D_05009940[];

void ObjComb_Break(ObjComb* this, GlobalContext* globalCtx) {
    Vec3f pos1;
    Vec3f pos;
    Vec3f velocity;
    Gfx** dlist = D_05009940;
    s16 scale;
    s16 angle = 0;
    s16 gravity;
    u8 arg5;
    u8 arg6;
    f32 rand1;
    f32 rand2;
    s32 i;

    for (i = 0; i < 31; i++) {
        angle += 20000;
        rand1 = Math_Rand_ZeroOne() * 10.0f;

        pos1.x = Math_Sins(angle) * rand1;
        pos1.y = (i - 15) * 0.7f;
        pos1.z = Math_Coss(angle) * rand1;

        Math_Vec3f_Sum(&pos1, &this->actor.posRot.pos, &pos);

        velocity.x = (Math_Rand_ZeroOne() - 0.5f) + pos1.x * 0.5f;
        velocity.y = (Math_Rand_ZeroOne() - 0.5f) + pos1.y * 0.6f;
        velocity.z = (Math_Rand_ZeroOne() - 0.5f) + pos1.z * 0.5f;

        scale = Math_Rand_ZeroOne() * 72.0f + 25.0f;

        if (scale < 40) {
            gravity = -200;
            arg6 = 40;
        } else if (scale < 70) {
            gravity = -280;
            arg6 = 30;
        } else {
            gravity = -340;
            arg6 = 20;
        }

        rand2 = Math_Rand_ZeroOne();

        if (rand2 < 0.1f) {
            arg5 = 96;
        } else if (rand2 < 0.8f) {
            arg5 = 64;
        } else {
            arg5 = 32;
        }

        EffectSsKakera_Spawn(globalCtx, &pos, &velocity, &pos, gravity, arg5, arg6, 4, 0, scale, 0, 0, 80,
                             KAKERA_COLOR_NONE, OBJECT_GAMEPLAY_FIELD_KEEP, dlist);
    }

    pos.x = this->actor.posRot.pos.x;
    pos.y = this->actor.posRot.pos.y - 10.0f;
    pos.z = this->actor.posRot.pos.z;
    func_80033480(globalCtx, &pos, 40.0f, 6, 70, 60, 1);
}

void ObjComb_ChooseItemDrop(ObjComb* this, GlobalContext* globalCtx) {
    s16 params = this->actor.params & 0x1F;

    if ((params > 0) || (params < 0x1A)) {
        if (params == 6) {
            if (Flags_GetCollectible(globalCtx, (this->actor.params >> 8) & 0x3F)) {
                params = -1;
            } else {
                params = (params | (((this->actor.params >> 8) & 0x3F) << 8));
            }
        } else if (Math_Rand_ZeroOne() < 0.5f) {
            params = -1;
        }
        if (params >= 0) {
            Item_DropCollectible(globalCtx, &this->actor.posRot, params);
        }
    }
}

void ObjComb_Init(Actor* thisx, GlobalContext* globalCtx) {
    ObjComb* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, this, &sJntSphInit, &this->colliderItems);
    ObjComb_SetupWait(this);
}

void ObjComb_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    Collider_DestroyJntSph(globalCtx, &THIS->collider);
}

void ObjComb_SetupWait(ObjComb* this) {
    this->actionFunc = ObjComb_Wait;
}

void ObjComb_Wait(ObjComb* this, GlobalContext* globalCtx) {
    s32 toucherFlags;

    this->unk_1B0 -= 50;
    if (this->unk_1B0 < 0) {
        this->unk_1B0 = 0;
    }

    if ((this->collider.base.acFlags & 0x2) != 0) {
        this->collider.base.acFlags &= ~0x2;
        toucherFlags = this->collider.list->body.acHitItem->toucher.flags;
        if (toucherFlags & 0x4001F866) {
            this->unk_1B0 = 1500;
        } else {
            ObjComb_Break(this, globalCtx);
            ObjComb_ChooseItemDrop(this, globalCtx);
            Actor_Kill(this);
        }
    } else {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);
    }

    if (this->actor.update != NULL) {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
    }
}

void ObjComb_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjComb* this = THIS;

    this->unk_1B2 += 12000;
    this->actionFunc(this, globalCtx);
    this->actor.shape.rot.x = Math_Sins(this->unk_1B2) * this->unk_1B0 + this->actor.initPosRot.rot.x;
}

void ObjComb_Draw(Actor* thisx, GlobalContext* globalCtx) {
    ObjComb* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_obj_comb.c", 369);

    func_80093D18(globalCtx->state.gfxCtx);

    Matrix_Translate(this->actor.posRot.pos.x, this->actor.posRot.pos.y + (118.0f * this->actor.scale.y),
                     this->actor.posRot.pos.z, 0);
    Matrix_RotateY(this->actor.shape.rot.y * 0.0000958738f, 1);
    Matrix_RotateX(this->actor.shape.rot.x * 0.0000958738f, 1);
    Matrix_RotateZ(this->actor.shape.rot.z * 0.0000958738f, 1);
    Matrix_Translate(0, -(this->actor.scale.y * 118.0f), 0, 1);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_comb.c", 394),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_OPA_DISP++, D_050095B0);

    func_800628A4(0, &this->collider);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_obj_comb.c", 402);
}
