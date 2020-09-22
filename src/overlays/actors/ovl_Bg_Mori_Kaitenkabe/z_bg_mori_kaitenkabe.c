/*
 * File: z_bg_mori_kaitenkabe.c
 * Overlay: ovl_Bg_Mori_Kaitenkabe
 * Description: Rotating wall in Forest Temple basement
 */
 
#include "z_bg_mori_kaitenkabe.h"

#define FLAGS 0x00000000

#define THIS ((BgMoriKaitenkabe*)thisx)

void BgMoriKaitenkabe_Init(Actor* thisx, GlobalContext* globalCtx);
void BgMoriKaitenkabe_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgMoriKaitenkabe_Update(Actor* thisx, GlobalContext* globalCtx);
void BgMoriKaitenkabe_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgMoriKaitenkabe_WaitForMoriTex(BgMoriKaitenkabe* this, GlobalContext* globalCtx);
void BgMoriKaitenkabe_SetupWait(BgMoriKaitenkabe* this);
void BgMoriKaitenkabe_Wait(BgMoriKaitenkabe* this, GlobalContext* globalCtx);
void BgMoriKaitenkabe_SetupRotate(BgMoriKaitenkabe* this);
void BgMoriKaitenkabe_Rotate(BgMoriKaitenkabe* this, GlobalContext* globalCtx);

extern UNK_TYPE D_060063B8;
extern Gfx D_060056B0[];

const ActorInit Bg_Mori_Kaitenkabe_InitVars = {
    ACTOR_BG_MORI_KAITENKABE,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_MORI_OBJECTS,
    sizeof(BgMoriKaitenkabe),
    (ActorFunc)BgMoriKaitenkabe_Init,
    (ActorFunc)BgMoriKaitenkabe_Destroy,
    (ActorFunc)BgMoriKaitenkabe_Update,
    NULL,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

void BgMoriKaitenkabe_CrossProd(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2) {
    arg0->x = (arg1->y * arg2->z) - (arg1->z * arg2->y);
    arg0->y = (arg1->z * arg2->x) - (arg1->x * arg2->z);
    arg0->z = (arg1->x * arg2->y) - (arg1->y * arg2->x);
}

void BgMoriKaitenkabe_Init(Actor *thisx, GlobalContext *globalCtx) {
    s32 pad;
    BgMoriKaitenkabe* this = THIS;
    s32 localConst = 0;
    
    //Forest Temple object 【Rotating Wall (arg_data: 0x% 04x)】 appears
    osSyncPrintf("◯◯◯森の神殿オブジェクト【回転壁(arg_data : 0x%04x)】出現 \n", this->dyna.actor.params);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_060063B8, &localConst);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, localConst);
    this->moriTexObjIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_MORI_TEX);
    if (this->moriTexObjIndex < 0) {
        Actor_Kill(&this->dyna.actor);
        // 【Rotating wall】 Bank danger!
        osSyncPrintf("【回転壁】 バンク危険！(%s %d)\n", "../z_bg_mori_kaitenkabe.c", 176);
    } else {
        this->actionFunc = BgMoriKaitenkabe_WaitForMoriTex;
    }
}

void BgMoriKaitenkabe_Destroy(Actor* thisx, GlobalContext *globalCtx) {
    s32 pad;
    BgMoriKaitenkabe* this = THIS;
    
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void BgMoriKaitenkabe_WaitForMoriTex(BgMoriKaitenkabe *this, GlobalContext *globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->moriTexObjIndex)) {
        BgMoriKaitenkabe_SetupWait(this);
        this->dyna.actor.draw = BgMoriKaitenkabe_Draw;
    }
}

void BgMoriKaitenkabe_SetupWait(BgMoriKaitenkabe* this) {
    this->actionFunc = BgMoriKaitenkabe_Wait;
    this->timer = 0;
}

void BgMoriKaitenkabe_Wait(BgMoriKaitenkabe *this, GlobalContext *globalCtx) {
    Vec3f sp3C;
    Vec3f sp30;
    Vec3f sp24;
    Player* player = PLAYER;

    if (0.001f < this->dyna.unk_150) {
        this->timer++;
        if ((this->timer > 28) && !Player_InCsMode(globalCtx)) {
            BgMoriKaitenkabe_SetupRotate(this);
            func_8002DF54(globalCtx, &this->dyna.actor, 8);
            Math_Vec3f_Copy(&this->playerPos, &player->actor.posRot.pos);
            sp3C.x = Math_Sins(this->dyna.unk_158);
            sp3C.y = 0.0f;
            sp3C.z = Math_Coss(this->dyna.unk_158);
            sp30.x = this->dyna.actor.posRot.pos.x - player->actor.posRot.pos.x;
            sp30.y = 0.0f;
            sp30.z = this->dyna.actor.posRot.pos.z - player->actor.posRot.pos.z;
            BgMoriKaitenkabe_CrossProd(&sp24, &sp3C, &sp30);
            this->rotDirection = (sp24.y > 0.0f) ? 1.0f : -1.0f;
        }
    } else {
        this->timer = 0;
    }
    if (fabsf(this->dyna.unk_150) > 0.001f) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 &= ~0x10;
    }
}

void BgMoriKaitenkabe_SetupRotate(BgMoriKaitenkabe *this) {
    this->actionFunc = BgMoriKaitenkabe_Rotate;
    this->rotSpeed = 0.0f;
    this->rotDist = 0.0f;
}

void BgMoriKaitenkabe_Rotate(BgMoriKaitenkabe *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    s16 tempRot;
    
    Math_ApproxF(&this->rotSpeed, 0.6f, 0.02f);
    if (Math_ApproxF(&this->rotDist, this->rotDirection * 45.0f, this->rotSpeed)) {
        BgMoriKaitenkabe_SetupWait(this);
        func_8002DF54(globalCtx, &this->dyna.actor, 7);
        if (this->rotDirection > 0.0f) {
            this->dyna.actor.initPosRot.rot.y += 0x2000;
        } else {
            this->dyna.actor.initPosRot.rot.y -= 0x2000;
        }
        this->dyna.actor.posRot.rot.y = this->dyna.actor.shape.rot.y = this->dyna.actor.initPosRot.rot.y;
        func_800788CC(NA_SE_EV_STONEDOOR_STOP);
    } else {
        tempRot = this->rotDist * (0x10000/360.0f);
        this->dyna.actor.posRot.rot.y = this->dyna.actor.shape.rot.y = this->dyna.actor.initPosRot.rot.y + tempRot;
        func_800788CC(NA_SE_EV_WALL_SLIDE - SFX_FLAG);
    }
    if (fabsf(this->dyna.unk_150) > 0.001f) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 &= ~0x10;
    }
    Math_Vec3f_Copy(&player->actor.posRot.pos, &this->playerPos);
}

void BgMoriKaitenkabe_Update(Actor* thisx, GlobalContext *globalCtx) {
    s32 pad;
    BgMoriKaitenkabe* this = THIS;
    
    this->actionFunc(this,globalCtx);
}

void BgMoriKaitenkabe_Draw(Actor* thisx, GlobalContext *globalCtx) {
    s32 pad;
    BgMoriKaitenkabe* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_mori_kaitenkabe.c", 347);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(oGfxCtx->polyOpa.p++, 0x08, globalCtx->objectCtx.status[this->moriTexObjIndex].segment);

    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_mori_kaitenkabe.c", 352), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(oGfxCtx->polyOpa.p++, D_060056B0);
    
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_mori_kaitenkabe.c", 356);
}
