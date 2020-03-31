#include "z_obj_comb.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void ObjComb_Init(ObjComb* this, GlobalContext* globalCtx);
void ObjComb_Destroy(ObjComb* this, GlobalContext* globalCtx);
void ObjComb_Update(ObjComb* this, GlobalContext* globalCtx);
void ObjComb_Draw(ObjComb* this, GlobalContext* globalCtx);

void ObjComb_Break(ObjComb* this, GlobalContext* globalCtx);
void func_80B91E4C(ObjComb* this, GlobalContext* globalCtx);
void func_80B91FB0(ObjComb* this);
void func_80B91FC0(ObjComb* this, GlobalContext* globalCtx);

const ActorInit Obj_Comb_InitVars = {
    ACTOR_OBJ_COMB,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_FIELD_KEEP,
    sizeof(ObjComb),
    (ActorFunc)ObjComb_Init,
    (ActorFunc)ObjComb_Destroy,
    (ActorFunc)ObjComb_Update,
    (ActorFunc)ObjComb_Draw,
};

UNK_TYPE D_80B922E0[] = {
    0x00000000, 0x00000000, 0x00000000, 0x4001FFFE, 0x00000000, 0x00010100, 0x00000000, 0x00000000, 0x000F0064,
};

UNK_TYPE D_80B92304[] = {
    0x0A000909,
    0x20000000,
    0x00000001,
    &D_80B922E0,
};

InitChainEntry D_80B92314[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F4, 1100, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F8, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_FC, 900, ICHAIN_STOP),
};

extern UNK_TYPE D_050095B0;
extern UNK_TYPE D_05009940;

void ObjComb_Break(ObjComb* this, GlobalContext* globalCtx) {
    Vec3f pos1;
    Vec3f posSum;
    Vec3f pos2;
    Gfx** dlist = &D_05009940;
    s16 scale;
    s16 phi_s2 = 0;
    s16 gravityInfluence;
    char u0;
    char rotSpeed;
    f32 rand1;
    f32 rand2;
    s32 i;

    for (i = 0; i < 31; i++) {
        phi_s2 += 20000;
        rand1 = Math_Rand_ZeroOne() * 10.0f;

        pos1.x = Math_Sins(phi_s2) * rand1;
        pos1.y = (i - 15) * 0.7f;
        pos1.z = Math_Coss(phi_s2) * rand1;

        Math_Vec3f_Sum(&pos1, &this->actor.posRot.pos, &posSum);

        pos2.x = (Math_Rand_ZeroOne() - 0.5f) + pos1.x * 0.5f;
        pos2.y = (Math_Rand_ZeroOne() - 0.5f) + pos1.y * 0.6f;
        pos2.z = (Math_Rand_ZeroOne() - 0.5f) + pos1.z * 0.5f;

        scale = Math_Rand_ZeroOne() * 72.0f + 25.0f;
        if (scale < 40) {
            gravityInfluence = -200;
            rotSpeed = 40;
        } else if (scale < 70) {
            gravityInfluence = -280;
            rotSpeed = 30;
        } else {
            gravityInfluence = -340;
            rotSpeed = 20;
        }

        rand2 = Math_Rand_ZeroOne();
        if (rand2 < 0.1f) {
            u0 = 96;
        } else if (rand2 < 0.8f) {
            u0 = 64;
        } else {
            u0 = 32;
        }

        Effect_SpawnFragment(globalCtx, &posSum, &pos2, &posSum, gravityInfluence, u0, rotSpeed, 4, 0, scale, 0, 0, 80,
                             -1, 2, dlist);
    }

    posSum.x = this->actor.posRot.pos.x;
    posSum.y = this->actor.posRot.pos.y - 10.0f;
    posSum.z = this->actor.posRot.pos.z;
    func_80033480(globalCtx, &posSum, 40.0f, 6, 70, 60, 1);
}

void func_80B91E4C(ObjComb* this, GlobalContext* globalCtx) {
    s16 params = this->actor.params & 0x1F;

    if ((params > 0) || (params < 0x1A)) {
        if (params == 6) {
            if (Flags_GetCollectible(globalCtx, (this->actor.params >> 8) & 0x3F) != 0) {
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

void ObjComb_Init(ObjComb* this, GlobalContext* globalCtx) {
    s32 pad;

    Actor_ProcessInitChain(&this->actor, &D_80B92314);
    func_8005BBF8(globalCtx, &this->collider);
    func_8005C050(globalCtx, &this->collider, this, &D_80B92304, &this->unk_170);
    func_80B91FB0(this);
}

void ObjComb_Destroy(ObjComb* this, GlobalContext* globalCtx) {
    func_8005BCC8(globalCtx, &this->collider);
}

void func_80B91FB0(ObjComb* this) {
    this->actionFunc = func_80B91FC0;
}

void func_80B91FC0(ObjComb* this, GlobalContext* globalCtx) {
    s32 flags;

    this->unk_1B0 -= 50;
    if (this->unk_1B0 < 0) {
        this->unk_1B0 = 0;
    }

    if ((this->collider.collideFlags & 0x2) != 0) {
        this->collider.collideFlags &= ~0x2;
        flags = this->colliderBody->colliding->toucher.flags;
        if (flags & 0x4001F866) {
            this->unk_1B0 = 1500;
        } else {
            ObjComb_Break(this, globalCtx);
            func_80B91E4C(this, globalCtx);
            Actor_Kill(this);
        }
    } else {
        Actor_CollisionCheck_SetAC(globalCtx, &globalCtx->sub_11E60, &this->collider);
    }

    if (this->actor.update != NULL) {
        Actor_CollisionCheck_SetOT(globalCtx, &globalCtx->sub_11E60, &this->collider);
    }
}

void ObjComb_Update(ObjComb* this, GlobalContext* globalCtx) {
    this->unk_1B2 += 12000;
    this->actionFunc(&this->actor, globalCtx);
    this->actor.shape.rot.x = Math_Sins(this->unk_1B2) * this->unk_1B0 + this->actor.initPosRot.rot.x;
}

void ObjComb_Draw(ObjComb* this, GlobalContext* globalCtx) {
    s32 pad;
    GraphicsContext* gfxCtx;
    Gfx* gfxArr[4];

    gfxCtx = globalCtx->state.gfxCtx;

    func_800C6AC4(gfxArr, globalCtx->state.gfxCtx, "../z_obj_comb.c", 369);
    func_80093D18(globalCtx->state.gfxCtx);

    Matrix_Translate(this->actor.posRot.pos.x, this->actor.posRot.pos.y + (118.0f * this->actor.scale.y),
                     this->actor.posRot.pos.z, 0);
    Matrix_RotateY(this->actor.shape.rot.y * 0.0000958738f, 1);
    Matrix_RotateX(this->actor.shape.rot.x * 0.0000958738f, 1);
    Matrix_RotateZ(this->actor.shape.rot.z * 0.0000958738f, 1);
    Matrix_Translate(0, -(this->actor.scale.y * 118.0f), 0, 1);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_comb.c", 394),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(gfxCtx->polyOpa.p++, &D_050095B0);

    func_800628A4(0, &this->collider);
    func_800C6B54(gfxArr, globalCtx->state.gfxCtx, "../z_obj_comb.c", 402);
}
