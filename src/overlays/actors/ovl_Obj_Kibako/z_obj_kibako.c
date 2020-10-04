/*
 * File: z_obj_kibako.c
 * Overlay: ovl_Obj_Kibako
 * Description: Small wooden box
 */

#include "z_obj_kibako.h"

#define FLAGS 0x04000010

#define THIS ((ObjKibako*)thisx)

void ObjKibako_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjKibako_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjKibako_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjKibako_Draw(Actor* thisx, GlobalContext* globalCtx);

void ObjKibako_SetupIdle(ObjKibako* this);
void ObjKibako_Idle(ObjKibako* this, GlobalContext* globalCtx);
void ObjKibako_SetupHeld(ObjKibako* this);
void ObjKibako_Held(ObjKibako* this, GlobalContext* globalCtx);
void ObjKibako_SetupThrown(ObjKibako* this);
void ObjKibako_Thrown(ObjKibako* this, GlobalContext* globalCtx);

extern Gfx D_05005290[];
extern Gfx D_05005380[];

const ActorInit Obj_Kibako_InitVars = {
    ACTOR_OBJ_KIBAKO,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP,
    sizeof(ObjKibako),
    (ActorFunc)ObjKibako_Init,
    (ActorFunc)ObjKibako_Destroy,
    (ActorFunc)ObjKibako_Update,
    (ActorFunc)ObjKibako_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x09, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000002, 0x00, 0x01 }, { 0x4FC00748, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
    { 12, 27, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sCCInfoInit = { 0, 0xC, 0x3C, 0xFE };

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 60, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

void ObjKibako_SpawnCollectible(ObjKibako* this, GlobalContext* globalCtx) {
    s16 collectible;

    collectible = this->actor.params & 0x1F;
    if ((collectible >= 0) && (collectible <= 0x19)) {
        Item_DropCollectible(globalCtx, &this->actor.posRot.pos,
                             collectible | (((this->actor.params >> 8) & 0x3F) << 8));
    }
}

void ObjKibako_ApplyGravity(ObjKibako* this) {
    this->actor.velocity.y += this->actor.gravity;
    if (this->actor.velocity.y < this->actor.minVelocityY) {
        this->actor.velocity.y = this->actor.minVelocityY;
    }
}

void ObjKibako_InitCollider(Actor* thisx, GlobalContext* globalCtx) {
    ObjKibako* this = THIS;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    Collider_CylinderUpdate(&this->actor, &this->collider);
}

void ObjKibako_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    ObjKibako* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->actor.gravity = -1.2f;
    this->actor.minVelocityY = -13.0f;
    ObjKibako_InitCollider(&this->actor, globalCtx);
    func_80061ED4(&this->actor.colChkInfo, NULL, &sCCInfoInit);
    ObjKibako_SetupIdle(this);
    // wooden box
    osSyncPrintf("(dungeon keep 木箱)(arg_data 0x%04x)\n", this->actor.params);
}

void ObjKibako_Destroy(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    ObjKibako* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void ObjKibako_AirBreak(ObjKibako* this, GlobalContext* globalCtx) {
    s16 angle;
    s32 i;
    Vec3f* pos = &this->actor.posRot.pos;
    Vec3f spC8;
    Vec3f spBC;

    for (i = 0, angle = 0; i < 12; i++, angle += 0x4E20) {
        f32 sn = Math_Sins(angle);
        f32 cs = Math_Coss(angle);
        f32 temp_rand;
        s16 phi_s0;

        spC8.x = sn * 16.0f;
        spC8.y = (Math_Rand_ZeroOne() * 5.0f) + 2.0f;
        spC8.z = cs * 16.0f;
        spBC.x = spC8.x * 0.2f;
        spBC.y = (Math_Rand_ZeroOne() * 6.0f) + 2.0f;
        spBC.z = spC8.z * 0.2f;
        spC8.x += pos->x;
        spC8.y += pos->y;
        spC8.z += pos->z;
        temp_rand = Math_Rand_ZeroOne();
        if (temp_rand < 0.1f) {
            phi_s0 = 0x60;
        } else if (temp_rand < 0.7f) {
            phi_s0 = 0x40;
        } else {
            phi_s0 = 0x20;
        }
        // EffectSsKakera_Spawn
        func_80029E8C(globalCtx, &spC8, &spBC, pos, -200, phi_s0, 10, 10, 0, (Math_Rand_ZeroOne() * 30.0f) + 10.0f, 0,
                      32, 60, -1, 3, D_05005380);
    }
    func_80033480(globalCtx, &this->actor.posRot.pos, 40.0f, 3, 50, 140, 1);
}

void ObjKibako_WaterBreak(ObjKibako* this, GlobalContext* globalCtx) {
    s16 angle;
    s32 i;
    Vec3f* pos = &this->actor.posRot.pos;
    Vec3f spC8;
    Vec3f spBC;

    spC8 = *pos;
    spC8.y += this->actor.waterY;
    func_8002949C(globalCtx, &spC8, 0, 0, 0, 0x1F4);

    for (i = 0, angle = 0; i < 12; i++, angle += 0x4E20) {
        f32 sn = Math_Sins(angle);
        f32 cs = Math_Coss(angle);
        f32 temp_rand;
        s16 phi_s0;

        spC8.x = sn * 16.0f;
        spC8.y = (Math_Rand_ZeroOne() * 5.0f) + 2.0f;
        spC8.z = cs * 16.0f;
        spBC.x = spC8.x * 0.18f;
        spBC.y = (Math_Rand_ZeroOne() * 4.0f) + 2.0f;
        spBC.z = spC8.z * 0.18f;
        spC8.x += pos->x;
        spC8.y += pos->y;
        spC8.z += pos->z;
        temp_rand = Math_Rand_ZeroOne();
        phi_s0 = (temp_rand < 0.2f) ? 0x40 : 0x20;
        // EffectSsKakera_Spawn
        func_80029E8C(globalCtx, &spC8, &spBC, pos, -180, phi_s0, 30, 30, 0, (Math_Rand_ZeroOne() * 30.0f) + 10.0f, 0,
                      32, 70, -1, 3, D_05005380);
    }
}

void ObjKibako_SetupIdle(ObjKibako* this) {
    this->actionFunc = ObjKibako_Idle;
    this->actor.colChkInfo.mass = 0xFE;
}

void ObjKibako_Idle(ObjKibako* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        ObjKibako_SetupHeld(this);
    } else if ((this->actor.bgCheckFlags & 0x20) && (this->actor.waterY > 19.0f)) {
        ObjKibako_WaterBreak(this, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 0x14, NA_SE_EV_WOODBOX_BREAK);
        ObjKibako_SpawnCollectible(this, globalCtx);
        Actor_Kill(&this->actor);
    } else if (this->collider.base.acFlags & 2) {
        ObjKibako_AirBreak(this, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 0x14, NA_SE_EV_WOODBOX_BREAK);
        ObjKibako_SpawnCollectible(this, globalCtx);
        Actor_Kill(&this->actor);
    } else {
        Actor_MoveForward(&this->actor);
        func_8002E4B4(globalCtx, &this->actor, 19.0f, 20.0f, 0.0f, 5);
        if (!(this->collider.base.maskA & 8) && (this->actor.xzDistFromLink > 28.0f)) {
            this->collider.base.maskA |= 8;
        }
        if (this->actor.xzDistFromLink < 600.0f) {
            ColliderCylinder* collider = &this->collider;

            Collider_CylinderUpdate(&this->actor, collider);
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &collider->base);
            if (this->actor.xzDistFromLink < 180.0f) {
                CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &collider->base);
            }
        }
        if (this->actor.xzDistFromLink < 100.0f) {
            func_8002F580(&this->actor, globalCtx);
        }
    }
}

void ObjKibako_SetupHeld(ObjKibako* this) {
    this->actionFunc = ObjKibako_Held;
    this->actor.room = -1;
    func_8002F7DC(&this->actor, 0x878);
}

void ObjKibako_Held(ObjKibako* this, GlobalContext* globalCtx) {
    if (Actor_HasNoParent(&this->actor, globalCtx)) {
        this->actor.room = globalCtx->roomCtx.curRoom.num;
        if (fabsf(this->actor.speedXZ) < 0.1f) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_PUT_DOWN_WOODBOX);
            ObjKibako_SetupIdle(this);
            this->collider.base.maskA &= ~8;
        } else {
            ObjKibako_SetupThrown(this);
            ObjKibako_ApplyGravity(this);
            func_8002D7EC(&this->actor);
        }
        func_8002E4B4(globalCtx, &this->actor, 19.0f, 20.0f, 0.0f, 5);
    }
}

void ObjKibako_SetupThrown(ObjKibako* this) {
    this->actor.velocity.x = Math_Sins(this->actor.posRot.rot.y) * this->actor.speedXZ;
    this->actor.velocity.z = Math_Coss(this->actor.posRot.rot.y) * this->actor.speedXZ;
    this->actor.colChkInfo.mass = 240;
    this->actionFunc = ObjKibako_Thrown;
}

void ObjKibako_Thrown(ObjKibako* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;

    if ((thisx->bgCheckFlags & 0xB) || (this->collider.base.atFlags & 2)) {
        ObjKibako_AirBreak(this, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, &thisx->posRot.pos, 0x14, NA_SE_EV_WOODBOX_BREAK);
        ObjKibako_SpawnCollectible(this, globalCtx);
        Actor_Kill(thisx);
    } else if (this->actor.bgCheckFlags & 0x40) {
        ObjKibako_WaterBreak(this, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, &thisx->posRot.pos, 0x14, NA_SE_EV_WOODBOX_BREAK);
        ObjKibako_SpawnCollectible(this, globalCtx);
        Actor_Kill(thisx);
    } else {
        ColliderCylinder* collider = &this->collider;

        ObjKibako_ApplyGravity(this);
        func_8002D7EC(thisx);
        func_8002E4B4(globalCtx, thisx, 19.0f, 20.0f, 0.0f, 5);
        Collider_CylinderUpdate(thisx, collider);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &collider->base);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &collider->base);
    }
}

void ObjKibako_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    ObjKibako* this = THIS;

    this->actionFunc(this, globalCtx);
}

void ObjKibako_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    ObjKibako* this = THIS;

    Gfx_DrawDListOpa(globalCtx, D_05005290);
}
