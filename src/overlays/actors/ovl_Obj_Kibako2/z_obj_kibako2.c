/*
 * File: z_obj_kibako2.c
 * Overlay: ovl_Obj_Kibako2
 * Description: Large crate
 */

#include "z_obj_kibako2.h"
#include "overlays/effects/ovl_Effect_Ss_Kakera/z_eff_ss_kakera.h"

#define FLAGS 0x00000000

#define THIS ((ObjKibako2*)thisx)

void ObjKibako2_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjKibako2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjKibako2_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjKibako2_Draw(Actor* thisx, GlobalContext* globalCtx);
void ObjKibako2_Idle(ObjKibako2* this, GlobalContext* globalCtx);
void ObjKibako2_Kill(ObjKibako2* this, GlobalContext* globalCtx);

extern Gfx D_06000960[];
extern UNK_TYPE D_06000B70;
extern Gfx D_06001000[];

const ActorInit Obj_Kibako2_InitVars = {
    ACTOR_OBJ_KIBAKO2,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_KIBAKO2,
    sizeof(ObjKibako2),
    (ActorFunc)ObjKibako2_Init,
    (ActorFunc)ObjKibako2_Destroy,
    (ActorFunc)ObjKibako2_Update,
    (ActorFunc)ObjKibako2_Draw,
};

// sCylinderInit
static ColliderCylinderInit D_80B95FD0 =
{
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x40000040, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 31, 48, 0, { 0, 0, 0 } },
};

// sInitChain
InitChainEntry D_80B95FFC[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 3000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

void ObjKibako2_InitCollider(Actor *thisx, GlobalContext *globalCtx) {
    ObjKibako2 *this = THIS;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->dyna.actor, &D_80B95FD0);
    Collider_CylinderUpdate(&this->dyna.actor, &this->collider);
}

void ObjKibako2_Break(ObjKibako2 *this, GlobalContext *globalCtx) {
    s32 padE4;
    s32 padE0;
    PosRot *thisPosRot;
    Vec3f pos;
    Vec3f velocity;
    s16 angle;
    s32 i;

    thisPosRot = &this->dyna.actor.posRot;
    for (i = 0, angle = 0; i < 0x10; i++, angle += 0x4E20) {
        f32 sn = Math_SinS(angle);
        f32 cs = Math_CosS(angle);
        f32 temp_rand;
        s32 phi_s0;

        temp_rand = Rand_ZeroOne() * 30.0f;
        pos.x = sn * temp_rand;
        pos.y = (Rand_ZeroOne() * 10.0f) + 2.0f;
        pos.z = cs * temp_rand;
        velocity.x = pos.x * 0.2f;
        velocity.y = (Rand_ZeroOne() * 10.0f) + 2.0f;
        velocity.z = pos.z * 0.2f;
        pos.x += thisPosRot->pos.x;
        pos.y += thisPosRot->pos.y;
        pos.z += thisPosRot->pos.z;
        temp_rand = Rand_ZeroOne();
        if (temp_rand < 0.05f) {
            phi_s0 = 0x60;
        } else if (temp_rand < 0.7f) {
            phi_s0 = 0x40;
        } else {
            phi_s0 = 0x20;
        }
        EffectSsKakera_Spawn(globalCtx, &pos, &velocity, &pos, -200, phi_s0, 28, 2, 0,
                             (Rand_ZeroOne() * 30.0f) + 5.0f, 0, 0, 70, KAKERA_COLOR_NONE,
                             OBJECT_KIBAKO2, D_06001000);
    }
    func_80033480(globalCtx, &thisPosRot->pos, 90.0f, 6, 100, 160, 1);
}

void ObjKibako2_SpawnCollectible(ObjKibako2 *this, GlobalContext *globalCtx) {
    s16 initXPos;
    s16 temp;

    temp = this->unk_1B4;
    initXPos = this->dyna.actor.initPosRot.rot.x;
    if (initXPos >= 0 && initXPos < 0x1A) {
        Item_DropCollectible(globalCtx, &this->dyna.actor.posRot.pos, initXPos | (temp << 8));
    }
}

void ObjKibako2_Init(Actor* thisx, GlobalContext *globalCtx) {
    ObjKibako2 *this = THIS;
    s16 pad;
    s32 sp2C;
    u32 bgId;

    sp2C = 0;
    DynaPolyActor_Init(&this->dyna, 0);
    Actor_ProcessInitChain(&this->dyna.actor, D_80B95FFC);
    ObjKibako2_InitCollider(thisx, globalCtx);
    CollisionHeader_GetVirtual(&D_06000B70, &sp2C);
    bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp2C);
    this->unk_1B4 = this->dyna.actor.initPosRot.rot.z & 0x3F;
    this->dyna.bgId = bgId;
    this->actionFunc = ObjKibako2_Idle;
    this->dyna.actor.initPosRot.rot.z = this->dyna.actor.posRot.rot.z = this->dyna.actor.shape.rot.z = this->dyna.actor.posRot.rot.x = this->dyna.actor.shape.rot.x = 0;
    // Wooden box (stationary)
    osSyncPrintf("木箱(据置)(arg %04xH)(item %04xH %d)\n", this->dyna.actor.params, this->unk_1B4, this->dyna.actor.initPosRot.rot.x);
}

void ObjKibako2_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    ObjKibako2 *this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void ObjKibako2_Idle(ObjKibako2 *this, GlobalContext *globalCtx) {
    if ((this->collider.base.acFlags & 2) != 0 || this->dyna.actor.initPosRot.rot.z != 0 || func_80033684(globalCtx, &this->dyna.actor) != 0) {
        ObjKibako2_Break(this, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.posRot.pos, 20, NA_SE_EV_WOODBOX_BREAK);
        this->dyna.actor.flags = this->dyna.actor.flags | 0x10;
        func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
        this->dyna.actor.draw = NULL;
        this->actionFunc = ObjKibako2_Kill;
        return;
    }
    if (this->dyna.actor.xzDistFromLink < 600.0f) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

void ObjKibako2_Kill(ObjKibako2 *this, GlobalContext *globalCtx) {
    s16 params;

    params = this->dyna.actor.params;
    if ((params & 0x8000) == 0) {
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, 0x95, this->dyna.actor.posRot.pos.x, this->dyna.actor.posRot.pos.y, this->dyna.actor.posRot.pos.z, 0, this->dyna.actor.shape.rot.y, 0, params | 0x8000);
    }
    ObjKibako2_SpawnCollectible(this, globalCtx);
    Actor_Kill(&this->dyna.actor);
}

void ObjKibako2_Update(Actor *thisx, GlobalContext *globalCtx) {
    ObjKibako2 *this = THIS;

    this->actionFunc(this, globalCtx);
}

void ObjKibako2_Draw(Actor *thisx, GlobalContext *globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_06000960);
}
