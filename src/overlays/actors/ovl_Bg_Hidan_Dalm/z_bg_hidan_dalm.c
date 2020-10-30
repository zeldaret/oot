/*
 * File: z_bg_hidan_dalm.c
 * Overlay: ovl_Bg_Hidan_Dalm
 * Description: Hammerable Totem Pieces (Fire Temple)
 */

#include "z_bg_hidan_dalm.h"

#define FLAGS 0x00000000

#define THIS ((BgHidanDalm*)thisx)

void BgHidanDalm_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanDalm_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanDalm_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanDalm_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgHidanDalm_Wait(BgHidanDalm* this, GlobalContext* globalCtx);
void BgHidanDalm_Shrink(BgHidanDalm* this, GlobalContext* globalCtx);

const ActorInit Bg_Hidan_Dalm_InitVars = {
    ACTOR_BG_HIDAN_DALM,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanDalm),
    (ActorFunc)BgHidanDalm_Init,
    (ActorFunc)BgHidanDalm_Destroy,
    (ActorFunc)BgHidanDalm_Update,
    (ActorFunc)BgHidanDalm_Draw,
};

static ColliderTrisElementInit sTrisElementInit[4] = {
    {
        { ELEMTYPE_UNK0,
          { 0x00000000, 0x00, 0x00 },
          { 0x00000040, 0x00, 0x00 },
          TOUCH_OFF,
          BUMP_NO_HITMARK | BUMP_NO_SWORD_SFX | BUMP_NO_DAMAGE | BUMP_NO_AT_INFO | BUMP_ON,
          OCELEM_OFF },
        { { { 305.0f, 0.0f, -300.0f }, { 305.0f, 600.0f, -300.0f }, { 305.0f, 600.0f, 300.0f } } },
    },
    {
        { ELEMTYPE_UNK0,
          { 0x00000000, 0x00, 0x00 },
          { 0x00000040, 0x00, 0x00 },
          TOUCH_OFF,
          BUMP_NO_HITMARK | BUMP_NO_SWORD_SFX | BUMP_NO_DAMAGE | BUMP_NO_AT_INFO | BUMP_ON,
          OCELEM_OFF },
        { { { 305.0f, 0.0f, -300.0f }, { 305.0f, 600.0f, 300.0f }, { 305.0f, 0.0f, 300.0f } } },
    },
    {
        { ELEMTYPE_UNK0,
          { 0x00000000, 0x00, 0x00 },
          { 0x00000040, 0x00, 0x00 },
          TOUCH_OFF,
          BUMP_NO_HITMARK | BUMP_NO_SWORD_SFX | BUMP_NO_DAMAGE | BUMP_NO_AT_INFO | BUMP_ON,
          OCELEM_OFF },
        { { { -305.0f, 0.0f, -300.0f }, { -305.0f, 600.0f, 300.0f }, { -305.0f, 600.0f, -300.0f } } },
    },
    {
        { ELEMTYPE_UNK0,
          { 0x00000000, 0x00, 0x00 },
          { 0x00000040, 0x00, 0x00 },
          TOUCH_OFF,
          BUMP_NO_HITMARK | BUMP_NO_SWORD_SFX | BUMP_NO_DAMAGE | BUMP_NO_AT_INFO | BUMP_ON,
          OCELEM_OFF },
        { { { -305.0f, 0.0f, -300.0f }, { -305.0f, 0.0f, 300.0f }, { -305.0f, 600.0f, 300.0f } } },
    },
};

ColliderTrisInit D_80886590 = {
    { COLTYPE_UNK10, AT_OFF, AC_PLAYER | AC_ON, OC_OFF, OT_TYPE2, COLSHAPE_TRIS },
    4,
    sTrisElementInit,
};

InitChainEntry D_808865A0[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 65336, ICHAIN_STOP),
};

extern Gfx D_0600BBF0[];
extern Gfx D_0600BDF0[];
extern UNK_TYPE D_0600DA10;

void BgHidanDalm_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanDalm* this = THIS;
    s32 pad;
    u32 dynaUnk;

    dynaUnk = 0;
    Actor_ProcessInitChain(thisx, D_808865A0);
    DynaPolyInfo_SetActorMove(&this->dyna, DPM_UNK);
    DynaPolyInfo_Alloc(&D_0600DA10, &dynaUnk);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, dynaUnk);
    Collider_InitTris(globalCtx, &this->collider);
    Collider_SetTris(globalCtx, &this->collider, thisx, &D_80886590, this->colliderItems);

    this->switchFlag = (thisx->params >> 8) & 0xFF;
    thisx->params &= 0xFF;
    if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
        Actor_Kill(thisx);
    } else {
        this->actionFunc = BgHidanDalm_Wait;
    }
}

void BgHidanDalm_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanDalm* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    Collider_DestroyTris(globalCtx, &this->collider);
}

void BgHidanDalm_Wait(BgHidanDalm* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if ((this->collider.base.acFlags & AC_HIT) && !Player_InCsMode(globalCtx) &&
        (player->swordAnimation == 22 || player->swordAnimation == 23)) {
        this->collider.base.acFlags &= ~AC_HIT;
        if (this->collider.elements[0].info.bumperFlags & BUMP_HIT || this->collider.elements[1].info.bumperFlags & BUMP_HIT) {
            this->dyna.actor.posRot.rot.y -= 0x4000;
        } else {
            this->dyna.actor.posRot.rot.y += 0x4000;
        }
        this->dyna.actor.posRot.pos.x += 32.5f * Math_Sins(this->dyna.actor.posRot.rot.y);
        this->dyna.actor.posRot.pos.z += 32.5f * Math_Coss(this->dyna.actor.posRot.rot.y);

        func_8002DF54(globalCtx, &this->dyna.actor, 8);
        this->dyna.actor.flags |= 0x10;
        this->actionFunc = BgHidanDalm_Shrink;
        this->dyna.actor.bgCheckFlags &= ~2;
        this->dyna.actor.bgCheckFlags &= ~8;
        this->dyna.actor.speedXZ = 10.0f;
        Flags_SetSwitch(globalCtx, this->switchFlag);
        func_8002F7DC(&PLAYER->actor, NA_SE_IT_HAMMER_HIT);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_DARUMA_VANISH);
    } else {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

void BgHidanDalm_Shrink(BgHidanDalm* this, GlobalContext* globalCtx) {
    static Vec3f accel = { 0, 0, 0 };
    s32 i;
    Vec3f velocity;
    Vec3f pos;

    if (Math_ApproxF(&this->dyna.actor.scale.x, 0.0f, 0.004f)) {
        func_8002DF54(globalCtx, &this->dyna.actor, 7);
        Actor_Kill(&this->dyna.actor);
    }

    this->dyna.actor.scale.y = this->dyna.actor.scale.z = this->dyna.actor.scale.x;

    pos.x = this->dyna.actor.posRot.pos.x;
    pos.y = this->dyna.actor.posRot.pos.y + this->dyna.actor.scale.x * 160.0f;
    pos.z = this->dyna.actor.posRot.pos.z;

    for (i = 0; i < 4; i++) {
        velocity.x = 5.0f * Math_Sins(this->dyna.actor.posRot.rot.y + 0x8000) + (Math_Rand_ZeroOne() - 0.5f) * 5.0f;
        velocity.z = 5.0f * Math_Coss(this->dyna.actor.posRot.rot.y + 0x8000) + (Math_Rand_ZeroOne() - 0.5f) * 5.0f;
        velocity.y = (Math_Rand_ZeroOne() - 0.5f) * 1.5f;
        EffectSsKiraKira_SpawnSmallYellow(globalCtx, &pos, &velocity, &accel);
    }
}

void BgHidanDalm_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanDalm* this = THIS;

    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->dyna.actor);
    func_8002E4B4(globalCtx, &this->dyna.actor, 10.0f, 15.0f, 32.0f, 5);
}

/**
 * Update vertices of collider tris based on the current matrix
 */
void BgHidanDalm_UpdateCollider(BgHidanDalm* this) {
    Vec3f pos2;
    Vec3f pos1;
    Vec3f pos0;

    Matrix_MultVec3f(&sTrisElementInit[0].dim.vtx[0], &pos0);
    Matrix_MultVec3f(&sTrisElementInit[0].dim.vtx[1], &pos1);
    Matrix_MultVec3f(&sTrisElementInit[0].dim.vtx[2], &pos2);
    Collider_SetTrisVertices(&this->collider, 0, &pos0, &pos1, &pos2);
    Matrix_MultVec3f(&sTrisElementInit[1].dim.vtx[2], &pos1);
    Collider_SetTrisVertices(&this->collider, 1, &pos0, &pos2, &pos1);

    Matrix_MultVec3f(&sTrisElementInit[2].dim.vtx[0], &pos0);
    Matrix_MultVec3f(&sTrisElementInit[2].dim.vtx[1], &pos1);
    Matrix_MultVec3f(&sTrisElementInit[2].dim.vtx[2], &pos2);
    Collider_SetTrisVertices(&this->collider, 2, &pos0, &pos1, &pos2);
    Matrix_MultVec3f(&sTrisElementInit[3].dim.vtx[1], &pos2);
    Collider_SetTrisVertices(&this->collider, 3, &pos0, &pos2, &pos1);
}

void BgHidanDalm_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanDalm* this = THIS;

    if (this->dyna.actor.params == 0) {
        Gfx_DrawDListOpa(globalCtx, D_0600BBF0);
    } else {
        Gfx_DrawDListOpa(globalCtx, D_0600BDF0);
    }

    if (this->actionFunc == BgHidanDalm_Wait) {
        BgHidanDalm_UpdateCollider(this);
    }
}
