#include "z_bg_sst_floor.h"

#define FLAGS 0x00000030

#define THIS ((BgSstFloor*)thisx)

void BgSstFloor_Init(BgSstFloor* this, GlobalContext* globalCtx);
void BgSstFloor_Destroy(BgSstFloor* this, GlobalContext* globalCtx);
void BgSstFloor_Update(BgSstFloor* this, GlobalContext* globalCtx);
void BgSstFloor_Draw(BgSstFloor* this, GlobalContext* globalCtx);

extern CollisionHeader D_060194F8;
extern Gfx D_06019210[];

s32 sUnkValues[] = { 0, 0, 0 }; // Unused

const ActorInit Bg_Sst_Floor_InitVars = {
    ACTOR_BG_SST_FLOOR,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SST,
    sizeof(BgSstFloor),
    (ActorFunc)BgSstFloor_Init,
    (ActorFunc)BgSstFloor_Destroy,
    (ActorFunc)BgSstFloor_Update,
    (ActorFunc)BgSstFloor_Draw,
};

InitChainEntry D_808B9E3C[] = {
    ICHAIN_VEC3F_DIV1000(scale.x, 100, ICHAIN_STOP),
};

void BgSstFloor_Init(BgSstFloor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgSstFloor* this = THIS;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, D_808B9E3C);
    DynaPolyInfo_SetActorMove(&this->dyna, 1);
    DynaPolyInfo_Alloc(&D_060194F8, &colHeader);
    this->dyna.dynaPolyId =
        DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);
}

void BgSstFloor_Destroy(BgSstFloor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgSstFloor* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void BgSstFloor_Update(BgSstFloor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgSstFloor* this = THIS;
    Player* player = PLAYER;
    CollisionHeader* colHeader;
    Actor* misc;
    f32 distFromRim;
    f32 xzDist;

    colHeader = SEGMENTED_TO_VIRTUAL(&D_060194F8);
    colHeader->vertexArray = SEGMENTED_TO_VIRTUAL(colHeader->vertexArray);

    if (1) {} // Needed to match

    if (func_80043590(&this->dyna) && (this->dyna.actor.yDistFromLink < 1000.0f)) {
        func_8005A77C(globalCtx->cameraPtrs[0], 0xC);
    } else {
        func_8005A77C(globalCtx->cameraPtrs[0], 3);
    }

    if (func_8004356C(&this->dyna) && (player->fallDistance > 1000.0f)) {
        this->dyna.actor.params = 1;
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EN_SHADEST_TAIKO_HIGH);
    }

    if (this->dyna.actor.params == BONGOFLOOR_HIT) {
        misc = globalCtx->actorCtx.actorList[8].first;
        this->drumAmp = 80;
        this->dyna.actor.params = BONGOFLOOR_REST;
        this->drumPhase = 28;

        if (func_8004356C(&this->dyna) && !(player->stateFlags1 & 0x6000)) {
            distFromRim = 600.0f - this->dyna.actor.xzDistFromLink;
            if (distFromRim > 0.0f) {
                if (distFromRim > 350.0f) {
                    distFromRim = 350.0f;
                }
                player->actor.bgCheckFlags &= ~1;
                player->actor.velocity.y = 9.0f * distFromRim * (1.0f / 350.0f);
            }
        }

        for (misc ; misc != NULL; misc = misc->next) {
            if ((misc->id == ACTOR_EN_ITEM00) && (misc->posRot.pos.y == 0.0f)) {
                xzDist = func_8002DB8C(&this->dyna.actor, misc);
                distFromRim = 600.0f - xzDist;
                if (xzDist < 600.0f) {
                    if (distFromRim > 350.0f) {
                        distFromRim = 350.0f;
                    }
                    misc->bgCheckFlags &= ~3;
                    misc->velocity.y = 9.0f * distFromRim * (1.0f / 350.0f);
                }
            }
        }
    }
    this->drumHeight = sinf(this->drumPhase * (M_PI / 2)) * (-this->drumAmp);
    Math_ApproxS(&this->drumAmp, 0, 5);

    colHeader->vertexArray[1].y = colHeader->vertexArray[0].y = colHeader->vertexArray[2].y =
        colHeader->vertexArray[3].y = colHeader->vertexArray[4].y = colHeader->vertexArray[7].y =
            colHeader->vertexArray[9].y = colHeader->vertexArray[11].y = colHeader->vertexArray[13].y =
                this->dyna.actor.initPosRot.pos.y + this->drumHeight;

    DECR(this->drumPhase);
    func_8003EE6C(globalCtx, &globalCtx->colCtx.dyna);
}

void BgSstFloor_Draw(BgSstFloor* thisx, GlobalContext* globalCtx) {
    BgSstFloor* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_sst_floor.c", 277);
    func_80093D18(globalCtx->state.gfxCtx);
    Matrix_Scale(1.0f, this->drumHeight * -0.0025f, 1.0f, MTXMODE_APPLY);

    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_sst_floor.c", 283),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(oGfxCtx->polyOpa.p++, D_06019210);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_sst_floor.c", 287);
}
