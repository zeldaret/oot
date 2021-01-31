/*
 * File: z_bg_spot15_saku.c
 * Overlay: ovl_Bg_Spot15_Saku
 * Description: Hyrule Castle Gate
 */

#include "z_bg_spot15_saku.h"

#define FLAGS 0x00000000

#define THIS ((BgSpot15Saku*)thisx)

void BgSpot15Saku_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot15Saku_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot15Saku_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot15Saku_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808B4930(BgSpot15Saku* this, GlobalContext* globalCtx);
void func_808B4978(BgSpot15Saku* this, GlobalContext* globalCtx);
void func_808B4A04(BgSpot15Saku* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot15_Saku_InitVars = {
    ACTOR_BG_SPOT15_SAKU,
    ACTORCAT_ITEMACTION,
    FLAGS,
    OBJECT_SPOT15_OBJ,
    sizeof(BgSpot15Saku),
    (ActorFunc)BgSpot15Saku_Init,
    (ActorFunc)BgSpot15Saku_Destroy,
    (ActorFunc)BgSpot15Saku_Update,
    (ActorFunc)BgSpot15Saku_Draw,
};

extern Gfx D_060003C0[];
extern CollisionHeader D_060004D0;

void BgSpot15Saku_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot15Saku* this = THIS;
    s32 pad[2];
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(thisx, DPM_UNK);
    CollisionHeader_GetVirtual(&D_060004D0, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, thisx, colHeader);
    thisx->scale.x = 0.1f;
    thisx->scale.y = 0.1f;
    thisx->scale.z = 0.1f;
    this->unk_170 = thisx->world.pos.x;
    this->unk_174 = thisx->world.pos.y;
    this->unk_178 = thisx->world.pos.z;
    if ((gSaveContext.infTable[7] & 2) != 0) {
        thisx->world.pos.z = 2659.0f;
    }
    this->actionFunc = func_808B4930;
}

void BgSpot15Saku_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot15Saku* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void func_808B4930(BgSpot15Saku* this, GlobalContext* globalCtx) {
    if (this->unk_168 && !(gSaveContext.infTable[7] & 2)) {
        this->unk_17C = 2;
        this->actionFunc = func_808B4978;
    }
}

void func_808B4978(BgSpot15Saku* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;
    if (!this->unk_17C) {
        Audio_PlayActorSound2(thisx, NA_SE_EV_METALGATE_OPEN - SFX_FLAG);
        thisx->world.pos.z -= 2.0f;
        if (thisx->world.pos.z < 2660.0f) {
            Audio_PlayActorSound2(thisx, NA_SE_EV_BRIDGE_OPEN_STOP);
            this->unk_17C = 0x1E;
            this->actionFunc = func_808B4A04;
        }
    }
}

void func_808B4A04(BgSpot15Saku* this, GlobalContext* globalCtx) {
    if (!this->unk_17C) {
        this->unk_168 = 0;
        this->actionFunc = func_808B4930;
    }
}

void BgSpot15Saku_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot15Saku* this = THIS;

    DECR(this->unk_17C);
    this->actionFunc(this, globalCtx);
}

void BgSpot15Saku_Draw(Actor* thisx, GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot15_saku.c", 259);

    func_80093D84(globalCtx->state.gfxCtx);

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot15_saku.c", 263),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_060003C0);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot15_saku.c", 268);
}
