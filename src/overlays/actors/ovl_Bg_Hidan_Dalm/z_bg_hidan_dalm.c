#include "z_bg_hidan_dalm.h"

#define FLAGS 0x00000000

#define THIS ((BgHidanDalm*)thisx)

void BgHidanDalm_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanDalm_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanDalm_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanDalm_Draw(Actor* thisx, GlobalContext* globalCtx);
#define BgHidanDalm_WaitInteraction func_80885F4C
void BgHidanDalm_WaitInteraction(BgHidanDalm* this, GlobalContext* globalCtx);
void BgHidanDalm_Shrink(BgHidanDalm* this, GlobalContext* globalCtx);
void BgHidanDalm_UpdateCollider(BgHidanDalm* this);

// object
extern Gfx D_0600BBF0[];
extern Gfx D_0600BDF0[];
extern UNK_TYPE D_0600DA10;

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

static ColliderTrisItemInit sTrisItemInit[4] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000040, 0x00, 0x00 }, 0x00, 0x79, 0x00 },
        { { { 305.0f, 0.0f, -300.0f }, { 305.0f, 600.0f, -300.0f }, { 305.0f, 600.0f, 300.0f } } },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000040, 0x00, 0x00 }, 0x00, 0x79, 0x00 },
        { { { 305.0f, 0.0f, -300.0f }, { 305.0f, 600.0f, 300.0f }, { 305.0f, 0.0f, 300.0f } } },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000040, 0x00, 0x00 }, 0x00, 0x79, 0x00 },
        { { { -305.0f, 0.0f, -300.0f }, { -305.0f, 600.0f, 300.0f }, { -305.0f, 600.0f, -300.0f } } },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000040, 0x00, 0x00 }, 0x00, 0x79, 0x00 },
        { { { -305.0f, 0.0f, -300.0f }, { -305.0f, 0.0f, 300.0f }, { -305.0f, 600.0f, 300.0f } } },
    },
};

#define sTrisInit D_80886590
ColliderTrisInit sTrisInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x20, COLSHAPE_TRIS },
    4,
    sTrisItemInit,
};

#define sInitChain D_808865A0
InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 65336, ICHAIN_STOP),
};

Vec3f D_808865A8 = { 0, 0, 0 };

#ifdef NON_MATCHING
// regalloc
void BgHidanDalm_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanDalm* this = THIS;
    s32 switchFlag;
    u32 dynaUnk;

    dynaUnk = 0;
    Actor_ProcessInitChain(thisx, sInitChain);
    DynaPolyInfo_SetActorMove(&this->dyna, DPM_UNK);
    DynaPolyInfo_Alloc(&D_0600DA10, &dynaUnk);
    // = ... & 0xFFFFFFFFFFFFFFFF; moves regalloc issues
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, dynaUnk);
    Collider_InitTris(globalCtx, &this->unk_16C);
    Collider_SetTris(globalCtx, &this->unk_16C, thisx, &sTrisInit, this->unk_18C);

    switchFlag = thisx->params >> 8; /*
    // this instead of the line above solves half the regalloc issues
    switchFlag = thisx->params;
    switchFlag = switchFlag >> 8 & 0xFFFFFFFFFFFFFFFF;
    //*/
    this->switchFlag = switchFlag; // can use thisx->params >> 8 without changes
    thisx->params &= 0xFF;
    // can use thisx->params >> 8 , seems to improve regalloc, but it changes codegen
    if (Flags_GetSwitch(globalCtx, switchFlag & 0xFF)) {
        Actor_Kill(thisx);
    } else {
        this->actionFunc = &BgHidanDalm_WaitInteraction;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Dalm/BgHidanDalm_Init.s")
#endif

void BgHidanDalm_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanDalm* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    Collider_DestroyTris(globalCtx, &this->unk_16C);
}

void BgHidanDalm_WaitInteraction(BgHidanDalm* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if ((this->unk_16C.base.acFlags & 2) && !func_8008E988(globalCtx) &&
        (player->swordAnimation == 22 || player->swordAnimation == 23)) {
        this->unk_16C.base.acFlags &= ~(1 << 1);
        if (this->unk_16C.list[0].body.bumperFlags & 2 || this->unk_16C.list[1].body.bumperFlags & 2) {
            this->dyna.actor.posRot.rot.y -= 0x4000;
        } else {
            this->dyna.actor.posRot.rot.y += 0x4000;
        }
        this->dyna.actor.posRot.pos.x += 32.5f * Math_Sins(this->dyna.actor.posRot.rot.y);
        this->dyna.actor.posRot.pos.z += 32.5f * Math_Coss(this->dyna.actor.posRot.rot.y);

        func_8002DF54(globalCtx, &this->dyna.actor, 8);
        this->dyna.actor.flags |= 1 << 4;
        this->actionFunc = &BgHidanDalm_Shrink;
        this->dyna.actor.bgCheckFlags &= ~(1 << 1);
        this->dyna.actor.bgCheckFlags &= ~(1 << 3);
        this->dyna.actor.speedXZ = 10.0f;
        Flags_SetSwitch(globalCtx, this->switchFlag);
        func_8002F7DC(&PLAYER->actor, NA_SE_IT_HAMMER_HIT);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_DARUMA_VANISH);
    } else {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->unk_16C.base);
    }
}

void BgHidanDalm_Shrink(BgHidanDalm* this, GlobalContext* globalCtx) {
    s32 i;
    Vec3f unkDir;
    Vec3f unkPos;

    if (Math_ApproxF(&this->dyna.actor.scale.x, 0.0f, 0.004f)) {
        func_8002DF54(globalCtx, &this->dyna.actor, 7);
        Actor_Kill(&this->dyna.actor);
    }

    this->dyna.actor.scale.y = this->dyna.actor.scale.z = this->dyna.actor.scale.x;

    unkPos.x = this->dyna.actor.posRot.pos.x;
    unkPos.y = this->dyna.actor.posRot.pos.y + this->dyna.actor.scale.x * 160.0f;
    unkPos.z = this->dyna.actor.posRot.pos.z;

    for (i = 0; i != 4; i++) {
        unkDir.x = 5.0f * Math_Sins(this->dyna.actor.posRot.rot.y + 0x8000) + (Math_Rand_ZeroOne() - 0.5f) * 5.0f;
        unkDir.z = 5.0f * Math_Coss(this->dyna.actor.posRot.rot.y + 0x8000) + (Math_Rand_ZeroOne() - 0.5f) * 5.0f;
        unkDir.y = (Math_Rand_ZeroOne() - 0.5f) * 1.5f;
        func_80028B18(globalCtx, &unkPos, &unkDir, &D_808865A8);
    }
}

void BgHidanDalm_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanDalm* this = THIS;

    this->actionFunc(this, globalCtx);
    Actor_MoveForward(thisx);
    func_8002E4B4(globalCtx, thisx, 10.0f, 15.0f, 32.0f, 5);
}

/*
Update vertices of collider tris based on the current matrix
*/
void BgHidanDalm_UpdateCollider(BgHidanDalm* this) {
    Vec3f pos2;
    Vec3f pos1;
    Vec3f pos0;

    Matrix_MultVec3f(&sTrisItemInit[0].dim.vtx[0], &pos0);
    Matrix_MultVec3f(&sTrisItemInit[0].dim.vtx[1], &pos1);
    Matrix_MultVec3f(&sTrisItemInit[0].dim.vtx[2], &pos2);
    func_800627A0(&this->unk_16C, 0, &pos0, &pos1, &pos2);
    Matrix_MultVec3f(&sTrisItemInit[1].dim.vtx[2], &pos1);
    func_800627A0(&this->unk_16C, 1, &pos0, &pos2, &pos1);

    Matrix_MultVec3f(&sTrisItemInit[2].dim.vtx[0], &pos0);
    Matrix_MultVec3f(&sTrisItemInit[2].dim.vtx[1], &pos1);
    Matrix_MultVec3f(&sTrisItemInit[2].dim.vtx[2], &pos2);
    func_800627A0(&this->unk_16C, 2, &pos0, &pos1, &pos2);
    Matrix_MultVec3f(&sTrisItemInit[3].dim.vtx[1], &pos2);
    func_800627A0(&this->unk_16C, 3, &pos0, &pos2, &pos1);
}

void BgHidanDalm_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanDalm* this = THIS;

    if (this->dyna.actor.params == 0) {
        Gfx_DrawDListOpa(globalCtx, D_0600BBF0);
    } else {
        Gfx_DrawDListOpa(globalCtx, D_0600BDF0);
    }

    if (this->actionFunc == &BgHidanDalm_WaitInteraction) {
        BgHidanDalm_UpdateCollider(this);
    }
}
