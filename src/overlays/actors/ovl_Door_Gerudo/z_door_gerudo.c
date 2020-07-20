/*
 * File: z_door_gerudo.c
 * Overlay: ovl_Door_Gerudo
 * Description: Metal grate door
 */

#include "z_door_gerudo.h"

#define FLAGS 0x00000000

#define THIS ((DoorGerudo*)thisx)

void DoorGerudo_Init(Actor* thisx, GlobalContext* globalCtx);
void DoorGerudo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DoorGerudo_Update(Actor* thisx, GlobalContext* globalCtx);
void DoorGerudo_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8099485C(DoorGerudo* this, GlobalContext* globalCtx);
s32 func_80994750(DoorGerudo* this, GlobalContext* globalCtx);
void func_8099496C(DoorGerudo* this, GlobalContext* globalCtx);
void func_809949C8(DoorGerudo* this, GlobalContext* globalCtx);

const ActorInit Door_Gerudo_InitVars = {
    ACTOR_DOOR_GERUDO,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_DOOR_GERUDO,
    sizeof(DoorGerudo),
    (ActorFunc)DoorGerudo_Init,
    (ActorFunc)DoorGerudo_Destroy,
    (ActorFunc)DoorGerudo_Update,
    (ActorFunc)DoorGerudo_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F(scale, 1, ICHAIN_STOP),
};

extern Gfx D_06000040[];
extern UNK_TYPE D_06000170;
extern UNK_TYPE D_80994B70;

void DoorGerudo_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    DoorGerudo* this = THIS;
    s32 localC = 0;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyInfo_Alloc(&D_06000170, &localC);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, localC);

    if (Flags_GetSwitch(globalCtx, thisx->params & 0x3F)) {
        this->actionFunc = func_8099485C;
        thisx->posRot.pos.y = thisx->initPosRot.pos.y + 200.0f;
    } else {
        this->actionFunc = func_8099485C;
        this->unk_166 = 10;
    }
}

void DoorGerudo_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DoorGerudo* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

f32 func_809946BC(GlobalContext* globalCtx, DoorGerudo* this, f32 arg2, f32 arg3, f32 arg4) {
    Player* player = PLAYER;
    Vec3f playerPos;
    Vec3f sp1C;

    playerPos.x = player->actor.posRot.pos.x;
    playerPos.y = player->actor.posRot.pos.y + arg2;
    playerPos.z = player->actor.posRot.pos.z;
    func_8002DBD0(&this->dyna.actor, &sp1C, &playerPos);

    if ((arg3 < fabsf(sp1C.x)) || (arg4 < fabsf(sp1C.y))) {
        return FLT_MAX;
    } else {
        return sp1C.z;
    }
}

s32 func_80994750(DoorGerudo* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 temp_f0;
    s16 rotYDiff;

    if (!func_8008E988(globalCtx)) {
        temp_f0 = func_809946BC(globalCtx, this, 0.0f, 20.0f, 15.0f);
        if (fabsf(temp_f0) < 40.0f) {
            rotYDiff = player->actor.shape.rot.y - this->dyna.actor.shape.rot.y;
            if (temp_f0 > 0.0f) {
                rotYDiff = 0x8000 - rotYDiff;
            }
            if (ABS(rotYDiff) < 0x2000) {
                return (temp_f0 >= 0.0f) ? 1.0f : -1.0f;
            }
        }
    }
    return 0;
}

void func_8099485C(DoorGerudo* this, GlobalContext* globalCtx) {
    s32 temp_v0;
    Player* player;

    if (this->unk_164 != 0) {
        this->actionFunc = func_8099496C;
        gSaveContext.dungeonKeys[gSaveContext.mapIndex] -= 1;
        Flags_SetSwitch(globalCtx, this->dyna.actor.params & 0x3F);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_CHAIN_KEY_UNLOCK);
    } else {
        temp_v0 = func_80994750(this, globalCtx);
        if (temp_v0 != 0) {
            player = PLAYER;
            if (gSaveContext.dungeonKeys[gSaveContext.mapIndex] <= 0) {
                player->naviMessageId = -0x203;
            } else if (!Flags_GetCollectible(globalCtx, (this->dyna.actor.params >> 8) & 0x1F)) {
                player->naviMessageId = -0x225;
            } else {
                player->unk_42C = 2;
                player->unk_42D = temp_v0;
                player->unk_430 = &this->dyna.actor;
                player->unk_42E = 10;
            }
        }
    }
}

void func_8099496C(DoorGerudo* this, GlobalContext* globalCtx) {
    if (DECR(this->unk_166) == 0) {
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_SLIDE_DOOR_OPEN);
        this->actionFunc = func_809949C8;
    }
}

void func_809949C8(DoorGerudo* this, GlobalContext* globalCtx) {
    Math_ApproxF(&this->dyna.actor.velocity.y, 15.0f, 3.0f);
    Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y + 200.0f,
                 this->dyna.actor.velocity.y);
}

void DoorGerudo_Update(Actor* thisx, GlobalContext* globalCtx) {
    DoorGerudo* this = THIS;

    this->actionFunc(this, globalCtx);
}

void DoorGerudo_Draw(Actor* thisx, GlobalContext* globalCtx) {
    DoorGerudo* this = THIS;

    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_door_gerudo.c", 361);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_door_gerudo.c", 365),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, D_06000040);

    if (this->unk_166 != 0) {
        Matrix_Scale(0.01f, 0.01f, 0.025f, MTXMODE_APPLY);
        func_80033F54(globalCtx, this->unk_166, 0);
    }

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_door_gerudo.c", 377);
}
