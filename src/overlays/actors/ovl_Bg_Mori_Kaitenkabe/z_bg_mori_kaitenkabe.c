/*
 * File: z_bg_mori_kaitenkabe.c
 * Overlay: ovl_Bg_Mori_Kaitenkabe
 * Description: Rotating wall in Forest Temple basement
 */

#include "z_bg_mori_kaitenkabe.h"
#include "assets/objects/object_mori_objects/object_mori_objects.h"

#define FLAGS 0

void BgMoriKaitenkabe_Init(Actor* thisx, PlayState* play);
void BgMoriKaitenkabe_Destroy(Actor* thisx, PlayState* play);
void BgMoriKaitenkabe_Update(Actor* thisx, PlayState* play);
void BgMoriKaitenkabe_Draw(Actor* thisx, PlayState* play);

void BgMoriKaitenkabe_WaitForMoriTex(BgMoriKaitenkabe* this, PlayState* play);
void BgMoriKaitenkabe_SetupWait(BgMoriKaitenkabe* this);
void BgMoriKaitenkabe_Wait(BgMoriKaitenkabe* this, PlayState* play);
void BgMoriKaitenkabe_SetupRotate(BgMoriKaitenkabe* this);
void BgMoriKaitenkabe_Rotate(BgMoriKaitenkabe* this, PlayState* play);

ActorProfile Bg_Mori_Kaitenkabe_Profile = {
    /**/ ACTOR_BG_MORI_KAITENKABE,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_MORI_OBJECTS,
    /**/ sizeof(BgMoriKaitenkabe),
    /**/ BgMoriKaitenkabe_Init,
    /**/ BgMoriKaitenkabe_Destroy,
    /**/ BgMoriKaitenkabe_Update,
    /**/ NULL,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(cullingVolumeDistance, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

void BgMoriKaitenkabe_CrossProduct(Vec3f* dest, Vec3f* v1, Vec3f* v2) {
    dest->x = (v1->y * v2->z) - (v1->z * v2->y);
    dest->y = (v1->z * v2->x) - (v1->x * v2->z);
    dest->z = (v1->x * v2->y) - (v1->y * v2->x);
}

void BgMoriKaitenkabe_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgMoriKaitenkabe* this = (BgMoriKaitenkabe*)thisx;
    CollisionHeader* colHeader = NULL;

    // "Forest Temple object 【Rotating Wall (arg_data: 0x% 04x)】 appears"
    PRINTF("◯◯◯森の神殿オブジェクト【回転壁(arg_data : 0x%04x)】出現 \n", this->dyna.actor.params);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, 0);
    CollisionHeader_GetVirtual(&gMoriKaitenkabeCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
    this->moriTexObjectSlot = Object_GetSlot(&play->objectCtx, OBJECT_MORI_TEX);
    if (this->moriTexObjectSlot < 0) {
        Actor_Kill(&this->dyna.actor);
        // "【Rotating wall】 Bank danger!"
        PRINTF("【回転壁】 バンク危険！(%s %d)\n", "../z_bg_mori_kaitenkabe.c", 176);
    } else {
        this->actionFunc = BgMoriKaitenkabe_WaitForMoriTex;
    }
}

void BgMoriKaitenkabe_Destroy(Actor* thisx, PlayState* play) {
    s32 pad;
    BgMoriKaitenkabe* this = (BgMoriKaitenkabe*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgMoriKaitenkabe_WaitForMoriTex(BgMoriKaitenkabe* this, PlayState* play) {
    if (Object_IsLoaded(&play->objectCtx, this->moriTexObjectSlot)) {
        BgMoriKaitenkabe_SetupWait(this);
        this->dyna.actor.draw = BgMoriKaitenkabe_Draw;
    }
}

void BgMoriKaitenkabe_SetupWait(BgMoriKaitenkabe* this) {
    this->actionFunc = BgMoriKaitenkabe_Wait;
    this->timer = 0;
}

void BgMoriKaitenkabe_Wait(BgMoriKaitenkabe* this, PlayState* play) {
    Vec3f push;
    Vec3f leverArm;
    Vec3f torque;
    Player* player = GET_PLAYER(play);

    if (this->dyna.unk_150 > 0.001f) {
        this->timer++;
        if ((this->timer > 28) && !Player_InCsMode(play)) {
            BgMoriKaitenkabe_SetupRotate(this);
            Player_SetCsActionWithHaltedActors(play, &this->dyna.actor, PLAYER_CSACTION_8);
            Math_Vec3f_Copy(&this->lockedPlayerPos, &player->actor.world.pos);
            push.x = Math_SinS(this->dyna.unk_158);
            push.y = 0.0f;
            push.z = Math_CosS(this->dyna.unk_158);
            leverArm.x = this->dyna.actor.world.pos.x - player->actor.world.pos.x;
            leverArm.y = 0.0f;
            leverArm.z = this->dyna.actor.world.pos.z - player->actor.world.pos.z;
            BgMoriKaitenkabe_CrossProduct(&torque, &push, &leverArm);
            this->rotDirection = (torque.y > 0.0f) ? 1.0f : -1.0f;
        }
    } else {
        this->timer = 0;
    }
    if (fabsf(this->dyna.unk_150) > 0.001f) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 &= ~PLAYER_STATE2_4;
    }
}

void BgMoriKaitenkabe_SetupRotate(BgMoriKaitenkabe* this) {
    this->actionFunc = BgMoriKaitenkabe_Rotate;
    this->rotSpeed = 0.0f;
    this->rotYdeg = 0.0f;
}

void BgMoriKaitenkabe_Rotate(BgMoriKaitenkabe* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    Actor* thisx = &this->dyna.actor;
    s16 rotY;

    Math_StepToF(&this->rotSpeed, 0.6f, 0.02f);
    if (Math_StepToF(&this->rotYdeg, this->rotDirection * 45.0f, this->rotSpeed)) {
        BgMoriKaitenkabe_SetupWait(this);
        Player_SetCsActionWithHaltedActors(play, thisx, PLAYER_CSACTION_7);
        if (this->rotDirection > 0.0f) {
            thisx->home.rot.y += 0x2000;
        } else {
            thisx->home.rot.y -= 0x2000;
        }
        thisx->world.rot.y = thisx->shape.rot.y = thisx->home.rot.y;
        Sfx_PlaySfxCentered2(NA_SE_EV_STONEDOOR_STOP);
    } else {
        rotY = DEG_TO_BINANG(this->rotYdeg);
        thisx->world.rot.y = thisx->shape.rot.y = thisx->home.rot.y + rotY;
        Sfx_PlaySfxCentered2(NA_SE_EV_WALL_SLIDE - SFX_FLAG);
    }
    if (fabsf(this->dyna.unk_150) > 0.001f) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 &= ~PLAYER_STATE2_4;
    }
    Math_Vec3f_Copy(&player->actor.world.pos, &this->lockedPlayerPos);
}

void BgMoriKaitenkabe_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    BgMoriKaitenkabe* this = (BgMoriKaitenkabe*)thisx;

    this->actionFunc(this, play);
}

void BgMoriKaitenkabe_Draw(Actor* thisx, PlayState* play) {
    s32 pad;
    BgMoriKaitenkabe* this = (BgMoriKaitenkabe*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_mori_kaitenkabe.c", 347);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, play->objectCtx.slots[this->moriTexObjectSlot].segment);

    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_mori_kaitenkabe.c", 352);

    gSPDisplayList(POLY_OPA_DISP++, gMoriKaitenkabeDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_mori_kaitenkabe.c", 356);
}
