/*
 * File: z_obj_bombiwa.c
 * Overlay: ovl_Obj_Bombiwa
 * Description: Round, brown, breakable boulder
 */

#include "z_obj_bombiwa.h"

#define FLAGS 0x00000000

#define THIS ((ObjBombiwa*)thisx)

void ObjBombiwa_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjBombiwa_InitCollision(Actor* thisx, GlobalContext* globalCtx);
void ObjBombiwa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjBombiwa_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjBombiwa_Draw(Actor* thisx, GlobalContext* globalCtx);

void ObjBombiwa_Break(ObjBombiwa* this, GlobalContext* globalCtx);

const ActorInit Obj_Bombiwa_InitVars = {
    ACTOR_OBJ_BOMBIWA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_BOMBIWA,
    sizeof(ObjBombiwa),
    (ActorFunc)ObjBombiwa_Init,
    (ActorFunc)ObjBombiwa_Destroy,
    (ActorFunc)ObjBombiwa_Update,
    (ActorFunc)ObjBombiwa_Draw,
};

static ColliderCylinderInit colliderInit = {
    { COLTYPE_UNK12, 0x00, 0x0D, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x4FC1FFFE, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 55, 70, 0, { 0 } },
};

static CollisionCheckInfoInit colChkInfoInit = {
    0x00,
    0x000C,
    0x003C,
    0xFF,
};

static InitChainEntry initChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 0x64, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F4, 0x7D0, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F8, 0x15E, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_FC, 0x3E8, ICHAIN_STOP),
};

static s16 effectScales[] = {
    17, 14, 10, 8, 7, 5, 3, 2,
};

extern Gfx* D_060009E0; // dlist

void ObjBombiwa_InitCollision(Actor* thisx, GlobalContext* globalCtx) {
    ObjBombiwa* this = THIS;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &colliderInit);
    Collider_CylinderUpdate(&this->actor, &this->collider);
}

void ObjBombiwa_Init(Actor* thisx, GlobalContext* globalCtx) {
    Actor_ProcessInitChain(thisx, initChain);
    ObjBombiwa_InitCollision(thisx, globalCtx);
    if ((Flags_GetSwitch(globalCtx, thisx->params & 0x3F) != 0)) {
        Actor_Kill(thisx);
    } else {
        func_80061ED4(&thisx->colChkInfo, NULL, &colChkInfoInit);
        if (thisx->shape.rot.y == 0) {
            s16 rand = (s16)Math_Rand_ZeroFloat(65536.0f);
            thisx->posRot.rot.y = rand;
            thisx->shape.rot.y = rand;
        }
        thisx->shape.unk_08 = -200.0f;
        thisx->posRot.pos.y = thisx->initPosRot.pos.y + 20.0f;
    }
}

void ObjBombiwa_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    Collider_DestroyCylinder(globalCtx, &THIS->collider);
}

void ObjBombiwa_Break(ObjBombiwa* this, GlobalContext* globalCtx) {
    Vec3f temp_s2;
    Vec3f temp_s3;
    Gfx** dlist;
    s16 u0;
    s16 scale;
    s32 i;

    dlist = &D_060009E0;
    for (i = 0; i < ARRAY_COUNT(effectScales); i++) {
        temp_s2.x = ((Math_Rand_ZeroOne() - 0.5f) * 10.0f) + this->actor.initPosRot.pos.x;
        temp_s2.y = ((Math_Rand_ZeroOne() * 5.0f) + this->actor.initPosRot.pos.y) + 8.0f;
        temp_s2.z = ((Math_Rand_ZeroOne() - 0.5f) * 10.0f) + this->actor.initPosRot.pos.z;
        temp_s3.x = (Math_Rand_ZeroOne() - 0.5f) * 15.0f;
        temp_s3.y = (Math_Rand_ZeroOne() * 16.0f) + 5.0f;
        temp_s3.z = (Math_Rand_ZeroOne() - 0.5f) * 15.0f;
        scale = effectScales[i];
        u0 = (scale >= 11) ? 37 : 33;
        func_80029E8C(globalCtx, &temp_s2, &temp_s3, &temp_s2, -400, u0, 10, 2, 0, scale, 1, 0, 80, -1, OBJECT_BOMBIWA,
                      dlist);
    }
    func_80033480(globalCtx, &this->actor.posRot.pos, 60.0f, 8, 100, 160, 1);
}

void ObjBombiwa_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjBombiwa* this = THIS;
    s32 pad;

    if (func_80033684(globalCtx, &this->actor) != NULL ||
        ((this->collider.base.acFlags & 2) != 0 && (this->collider.body.acHitItem->toucher.flags & 0x40000040) != 0)) {
        ObjBombiwa_Break(this, globalCtx);
        Flags_SetSwitch(globalCtx, this->actor.params & 0x3F);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 80, NA_SE_EV_WALL_BROKEN);
        if (((this->actor.params >> 0xF) & 1) != 0) {
            func_80078884(NA_SE_SY_CORRECT_CHIME);
        }
        Actor_Kill(&this->actor);
    } else {
        this->collider.base.acFlags &= ~0x2;
        if (this->actor.xzDistanceFromLink < 800.0f) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
        }
    }
}

void ObjBombiwa_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, &D_060009E0);
}
