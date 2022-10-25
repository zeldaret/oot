#include "z_en_holl.h"

#define FLAGS ACTOR_FLAG_4

// Horizontal Plane parameters

#define PLANE_Y_MIN -50.0f
#define PLANE_Y_MAX 200.0f

#define PLANE_HALFWIDTH 100.0f
#define PLANE_HALFWIDTH_2 200.0f

void EnHoll_Init(Actor* thisx, PlayState* play);
void EnHoll_Destroy(Actor* thisx, PlayState* play);
void EnHoll_Update(Actor* thisx, PlayState* play);
void EnHoll_Draw(Actor* thisx, PlayState* play);

void EnHoll_NextAction(EnHoll* this, PlayState* play);
void func_80A58DD4(EnHoll* this, PlayState* play);
void func_80A59014(EnHoll* this, PlayState* play);
void func_80A591C0(EnHoll* this, PlayState* play);
void func_80A593A4(EnHoll* this, PlayState* play);
void func_80A59520(EnHoll* this, PlayState* play);
void func_80A59618(EnHoll* this, PlayState* play);

ActorInit En_Holl_InitVars = {
    ACTOR_EN_HOLL,
    ACTORCAT_DOOR,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnHoll),
    (ActorFunc)EnHoll_Init,
    (ActorFunc)EnHoll_Destroy,
    (ActorFunc)EnHoll_Update,
    (ActorFunc)EnHoll_Draw,
};

static EnHollActionFunc sActionFuncs[] = {
    func_80A58DD4, // ENHOLL_0
    func_80A591C0, // ENHOLL_1
    func_80A59520, // ENHOLL_2
    func_80A59618, // ENHOLL_3
    func_80A59014, // ENHOLL_4
    func_80A593A4, // ENHOLL_5
    func_80A59014, // ENHOLL_6
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneForward, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 400, ICHAIN_STOP),
};

/**
 * These are all absolute distances in the relative z direction. That is, moving
 *   towards or away from the "face" of the loading plane regardless of orientation.
 * Moving within these distances of the load plane have the following effects:
 * [0] : Load the room on this side of the loading plane if not already loaded
 * [1] : Load the room on the other side of the loading plane
 * [2] : Fade Region (opaque -> transparent if approaching, transparent -> opaque if receding)
 * [3] : Transparent Region
 *
 * When traversing a loading plane of this kind, it attempts to:
 *   Load Current Room (fails as it is already loaded)
 *   Load Next Room
 *   Load Previous Room
 *   Load Next Room
 *
 *  @bug The striped nature of loading planes can cause some actors to unload due to
 *      conflicting Object Lists between the two rooms
 *
 *  @bug If you can get around to the other side of the loading plane without triggering it,
 *      you can load the room on the other side multiple times
 */
static f32 sHorizTriggerDists[2][4] = {
    { 200.0f, 150.0f, 100.0f, 50.0f },
    { 100.0f, 75.0f, 50.0f, 25.0f },
};

void EnHoll_SetupAction(EnHoll* this, EnHollActionFunc func) {
    this->actionFunc = func;
}

s32 EnHoll_IsKokiriLayer8(void) {
    return gSaveContext.entranceIndex == ENTR_SPOT04_0 && gSaveContext.sceneLayer == 8;
}

void EnHoll_ChooseAction(EnHoll* this) {
    s32 action = ENHOLL_GET_TYPE(&this->actor);

    EnHoll_SetupAction(this, sActionFuncs[action]);
    if (action != ENHOLL_0) {
        this->actor.draw = NULL;
    } else {
        this->planeAlpha = 255;
    }
}

void EnHoll_Init(Actor* thisx, PlayState* play) {
    EnHoll* this = (EnHoll*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    EnHoll_ChooseAction(this);
    this->unk_14F = false;
}

void EnHoll_Destroy(Actor* thisx, PlayState* play) {
    s32 transitionActorIndex = GET_TRANSITION_ACTOR_INDEX(thisx);
    TransitionActorEntry* transitionEntry = &play->transiActorCtx.list[transitionActorIndex];

    transitionEntry->id = -transitionEntry->id;
}

void EnHoll_SwapRooms(PlayState* play) {
    Room tempRoom;
    RoomContext* roomCtx = &play->roomCtx;

    tempRoom = roomCtx->curRoom;
    roomCtx->curRoom = roomCtx->prevRoom;
    roomCtx->prevRoom = tempRoom;
    play->roomCtx.unk_30 ^= 1;
}

// Horizontal Planes
void func_80A58DD4(EnHoll* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 phi_t0 = (u32)((play->sceneId == SCENE_JYASINZOU) ? 1 : 0);
    Vec3f relPlayerPos;
    f32 orthogonalDistToPlayer;
    s32 transitionActorIndex;

    func_8002DBD0(&this->actor, &relPlayerPos, &player->actor.world.pos);
    this->side = (relPlayerPos.z < 0.0f) ? 0 : 1;
    orthogonalDistToPlayer = fabsf(relPlayerPos.z);
    if (relPlayerPos.y > PLANE_Y_MIN && relPlayerPos.y < PLANE_Y_MAX && fabsf(relPlayerPos.x) < PLANE_HALFWIDTH &&
        orthogonalDistToPlayer < sHorizTriggerDists[phi_t0][0]) {
        transitionActorIndex = GET_TRANSITION_ACTOR_INDEX(&this->actor);
        if (orthogonalDistToPlayer > sHorizTriggerDists[phi_t0][1]) {
            if (play->roomCtx.prevRoom.num >= 0 && play->roomCtx.status == 0) {
                this->actor.room = play->transiActorCtx.list[transitionActorIndex].sides[this->side].room;
                EnHoll_SwapRooms(play);
                func_80097534(play, &play->roomCtx);
            }
        } else {
            this->actor.room = play->transiActorCtx.list[transitionActorIndex].sides[this->side ^ 1].room;
            if (play->roomCtx.prevRoom.num < 0) {
                func_8009728C(play, &play->roomCtx, this->actor.room);
            } else {
                this->planeAlpha = (255.0f / (sHorizTriggerDists[phi_t0][2] - sHorizTriggerDists[phi_t0][3])) *
                                   (orthogonalDistToPlayer - sHorizTriggerDists[phi_t0][3]);
                this->planeAlpha = CLAMP(this->planeAlpha, 0, 255);
                if (play->roomCtx.curRoom.num != this->actor.room) {
                    EnHoll_SwapRooms(play);
                }
            }
        }
    }
}

// Horizontal Planes
void func_80A59014(EnHoll* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 useViewEye = gDbgCamEnabled || play->csCtx.state != CS_STATE_IDLE;
    Vec3f relSubjectPos;
    s32 isKokiriLayer8;
    f32 planeHalfWidth;
    f32 orthogonalDistToSubject;

    func_8002DBD0(&this->actor, &relSubjectPos, useViewEye ? &play->view.eye : &player->actor.world.pos);
    planeHalfWidth = (ENHOLL_GET_TYPE(&this->actor) == ENHOLL_6) ? PLANE_HALFWIDTH : PLANE_HALFWIDTH_2;

    isKokiriLayer8 = EnHoll_IsKokiriLayer8();
    if (isKokiriLayer8 ||
        (PLANE_Y_MIN < relSubjectPos.y && relSubjectPos.y < PLANE_Y_MAX && fabsf(relSubjectPos.x) < planeHalfWidth &&
         (orthogonalDistToSubject = fabsf(relSubjectPos.z),
          100.0f > orthogonalDistToSubject && orthogonalDistToSubject > 50.0f))) {
        s32 transitionActorIndex = GET_TRANSITION_ACTOR_INDEX(&this->actor);
        s32 side = (relSubjectPos.z < 0.0f) ? 0 : 1;
        TransitionActorEntry* transitionEntry = &play->transiActorCtx.list[transitionActorIndex];
        s32 room = transitionEntry->sides[side].room;

        this->actor.room = room;
        if (isKokiriLayer8) {}
        if (this->actor.room != play->roomCtx.curRoom.num) {
            if (room) {}
            if (func_8009728C(play, &play->roomCtx, this->actor.room)) {
                EnHoll_SetupAction(this, EnHoll_NextAction);
            }
        }
    }
}

// Vertical Planes
void func_80A591C0(EnHoll* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 absYDistToPlayer = fabsf(this->actor.yDistToPlayer);
    s32 transitionActorIndex;

    if (this->actor.xzDistToPlayer < 500.0f && absYDistToPlayer < 700.0f) {
        transitionActorIndex = GET_TRANSITION_ACTOR_INDEX(&this->actor);
        if (absYDistToPlayer < 95.0f) {
            play->unk_11E18 = 255;
        } else if (absYDistToPlayer > 605.0f) {
            play->unk_11E18 = 0;
        } else {
            play->unk_11E18 = (s16)(605.0f - absYDistToPlayer) * 0.5f;
        }
        if (absYDistToPlayer < 95.0f) {
            this->actor.room = play->transiActorCtx.list[transitionActorIndex].sides[1].room;
            Math_SmoothStepToF(&player->actor.world.pos.x, this->actor.world.pos.x, 1.0f, 50.0f, 10.0f);
            Math_SmoothStepToF(&player->actor.world.pos.z, this->actor.world.pos.z, 1.0f, 50.0f, 10.0f);
            if (this->actor.room != play->roomCtx.curRoom.num &&
                func_8009728C(play, &play->roomCtx, this->actor.room)) {
                EnHoll_SetupAction(this, EnHoll_NextAction);
                this->unk_14F = true;
                player->actor.speedXZ = 0.0f;
            }
        }
    } else if (this->unk_14F) {
        play->unk_11E18 = 0;
        this->unk_14F = false;
    }
}

// Vertical Planes
void func_80A593A4(EnHoll* this, PlayState* play) {
    f32 absYDistToPlayer;
    s32 side;
    s32 transitionActorIndex;

    if ((this->actor.xzDistToPlayer < 120.0f) &&
        (absYDistToPlayer = fabsf(this->actor.yDistToPlayer), absYDistToPlayer < 200.0f)) {
        if (absYDistToPlayer < 50.0f) {
            play->unk_11E18 = 255;
        } else {
            play->unk_11E18 = (200.0f - absYDistToPlayer) * 1.7f;
        }
        if (absYDistToPlayer > 50.0f) {
            transitionActorIndex = GET_TRANSITION_ACTOR_INDEX(&this->actor);
            side = (0.0f < this->actor.yDistToPlayer) ? 0 : 1;
            this->actor.room = play->transiActorCtx.list[transitionActorIndex].sides[side].room;
            if (this->actor.room != play->roomCtx.curRoom.num &&
                func_8009728C(play, &play->roomCtx, this->actor.room)) {
                EnHoll_SetupAction(this, EnHoll_NextAction);
                this->unk_14F = true;
            }
        }
    } else if (this->unk_14F) {
        this->unk_14F = false;
        play->unk_11E18 = 0;
    }
}

// Vertical Planes
void func_80A59520(EnHoll* this, PlayState* play) {
    f32 absYDistToPlayer;
    s8 side;
    s32 transitionActorIndex;

    if (this->actor.xzDistToPlayer < 120.0f) {
        absYDistToPlayer = fabsf(this->actor.yDistToPlayer);
        if (absYDistToPlayer < 200.0f && absYDistToPlayer > 50.0f) {
            transitionActorIndex = GET_TRANSITION_ACTOR_INDEX(&this->actor);
            side = (0.0f < this->actor.yDistToPlayer) ? 0 : 1;
            this->actor.room = play->transiActorCtx.list[transitionActorIndex].sides[side].room;
            if (this->actor.room != play->roomCtx.curRoom.num &&
                func_8009728C(play, &play->roomCtx, this->actor.room)) {
                EnHoll_SetupAction(this, EnHoll_NextAction);
            }
        }
    }
}

// Horizontal Planes
void func_80A59618(EnHoll* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    Vec3f relPlayerPos;
    f32 orthogonalDistToPlayer;
    s32 side;
    s32 transitionActorIndex;

    if (!Flags_GetSwitch(play, ENHOLL_GET_SWITCH_FLAG(&this->actor))) {
        if (this->unk_14F) {
            play->unk_11E18 = 0;
            this->unk_14F = false;
        }
    } else {
        func_8002DBD0(&this->actor, &relPlayerPos, &player->actor.world.pos);
        orthogonalDistToPlayer = fabsf(relPlayerPos.z);
        if (PLANE_Y_MIN < relPlayerPos.y && relPlayerPos.y < PLANE_Y_MAX && fabsf(relPlayerPos.x) < PLANE_HALFWIDTH_2 &&
            orthogonalDistToPlayer < 100.0f) {
            this->unk_14F = true;
            transitionActorIndex = GET_TRANSITION_ACTOR_INDEX(&this->actor);
            play->unk_11E18 = 255 - (s32)((orthogonalDistToPlayer - 50.0f) * 5.9f);
            if (play->unk_11E18 > 255) {
                play->unk_11E18 = 255;
            } else if (play->unk_11E18 < 0) {
                play->unk_11E18 = 0;
            }
            if (orthogonalDistToPlayer < 50.0f) {
                side = (relPlayerPos.z < 0.0f) ? 0 : 1;
                this->actor.room = play->transiActorCtx.list[transitionActorIndex].sides[side].room;
                if (this->actor.room != play->roomCtx.curRoom.num &&
                    func_8009728C(play, &play->roomCtx, this->actor.room)) {
                    EnHoll_SetupAction(this, EnHoll_NextAction);
                }
            }
        } else if (this->unk_14F) {
            play->unk_11E18 = 0;
            this->unk_14F = false;
        }
    }
}

void EnHoll_NextAction(EnHoll* this, PlayState* play) {
    if (!EnHoll_IsKokiriLayer8() && play->roomCtx.status == 0) {
        func_80097534(play, &play->roomCtx);
        if (play->unk_11E18 == 0) {
            this->unk_14F = false;
        }
        EnHoll_ChooseAction(this);
    }
}

void EnHoll_Update(Actor* thisx, PlayState* play) {
    EnHoll* this = (EnHoll*)thisx;

    this->actionFunc(this, play);
}

#include "assets/overlays/ovl_En_Holl/ovl_En_Holl.c"

void EnHoll_Draw(Actor* thisx, PlayState* play) {
    EnHoll* this = (EnHoll*)thisx;
    Gfx* gfxP;
    u32 setupDlIndex;

    // Only draw the plane if not invisible
    if (this->planeAlpha != 0) {
        OPEN_DISPS(play->state.gfxCtx, "../z_en_holl.c", 805);

        if (this->planeAlpha == 255) {
            gfxP = POLY_OPA_DISP;
            setupDlIndex = SETUPDL_37;
        } else {
            gfxP = POLY_XLU_DISP;
            setupDlIndex = SETUPDL_0;
        }
        gfxP = Gfx_SetupDL(gfxP, setupDlIndex);
        if (this->side == 0) {
            Matrix_RotateY(M_PI, MTXMODE_APPLY);
        }

        gSPMatrix(gfxP++, Matrix_NewMtx(play->state.gfxCtx, "../z_en_holl.c", 824),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gDPSetPrimColor(gfxP++, 0, 0, 0, 0, 0, (u8)this->planeAlpha);
        gSPDisplayList(gfxP++, sPlaneDL);

        if (this->planeAlpha == 255) {
            POLY_OPA_DISP = gfxP;
        } else {
            POLY_XLU_DISP = gfxP;
        }

        CLOSE_DISPS(play->state.gfxCtx, "../z_en_holl.c", 831);
    }
}
