/*
 * File: z_bg_jya_bigmirror.c
 * Overlay: ovl_Bg_Jya_Bigmirror
 * Description: Ceiling mirror and puzzle in Spirit Temple top rooms
 */

#include "z_bg_jya_bigmirror.h"
#include "assets/objects/object_jya_obj/object_jya_obj.h"

#define FLAGS (ACTOR_FLAG_4 | ACTOR_FLAG_5)

void BgJyaBigmirror_Init(Actor* thisx, PlayState* play);
void BgJyaBigmirror_Destroy(Actor* thisx, PlayState* play);
void BgJyaBigmirror_Update(Actor* thisx, PlayState* play);
void BgJyaBigmirror_Draw(Actor* thisx, PlayState* play);

static u8 sIsSpawned = false;

ActorInit Bg_Jya_Bigmirror_InitVars = {
    /**/ ACTOR_BG_JYA_BIGMIRROR,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_JYA_OBJ,
    /**/ sizeof(BgJyaBigmirror),
    /**/ BgJyaBigmirror_Init,
    /**/ BgJyaBigmirror_Destroy,
    /**/ BgJyaBigmirror_Update,
    /**/ BgJyaBigmirror_Draw,
};

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ s16 params;
    /* 0x0E */ s16 solvedRotY;
    /* 0x10 */ s16 initRotY;
} BigMirrorDataEntry; // size = 0x14

static BigMirrorDataEntry sCobraSpawnData[] = {
    { { -560.0f, 1743.0f, -310.0f }, 0xFF01, 0x4000, 0x8000 },
    { { 60.0f, 1743.0f, -310.0f }, 0xFF02, 0x8000, 0xA000 },
};

void BgJyaBigmirror_SetRoomFlag(Actor* thisx, PlayState* play) {
    BgJyaBigmirror* this = (BgJyaBigmirror*)thisx;

    this->puzzleFlags &=
        ~(BIGMIR_PUZZLE_IN_STATUE_ROOM | BIGMIR_PUZZLE_IN_1ST_TOP_ROOM | BIGMIR_PUZZLE_IN_2ND_TOP_ROOM);
    if (play->roomCtx.curRoom.num == 5) {
        this->puzzleFlags |= BIGMIR_PUZZLE_IN_STATUE_ROOM;
    } else if (play->roomCtx.curRoom.num == 0x19) {
        this->puzzleFlags |= BIGMIR_PUZZLE_IN_1ST_TOP_ROOM;
    } else if (play->roomCtx.curRoom.num == 0x1A) {
        this->puzzleFlags |= BIGMIR_PUZZLE_IN_2ND_TOP_ROOM;
    }
}

void BgJyaBigmirror_HandleCobra(Actor* thisx, PlayState* play) {
    static u8 cobraPuzzleFlags[] = { BIGMIR_PUZZLE_COBRA1_SOLVED, BIGMIR_PUZZLE_COBRA2_SOLVED };
    BgJyaBigmirror* this = (BgJyaBigmirror*)thisx;
    BigMirrorDataEntry* curSpawnData;
    BigmirrorCobra* curCobraInfo;
    s32 i;

    if (this->puzzleFlags & (BIGMIR_PUZZLE_IN_1ST_TOP_ROOM | BIGMIR_PUZZLE_IN_2ND_TOP_ROOM)) {
        for (i = 0; i < 2; i++) {
            curSpawnData = &sCobraSpawnData[i];
            curCobraInfo = &this->cobraInfo[i];
            if (curCobraInfo->cobra != NULL) {
                curCobraInfo->rotY = curCobraInfo->cobra->dyna.actor.shape.rot.y;

                if (curCobraInfo->rotY == curSpawnData->solvedRotY) {
                    this->puzzleFlags |= cobraPuzzleFlags[i];
                } else {
                    this->puzzleFlags &= ~cobraPuzzleFlags[i];
                }

                if (curCobraInfo->cobra->dyna.actor.update == NULL) {
                    // "Cobra deleted"
                    osSyncPrintf("Error : コブラ削除された (%s %d)\n", "../z_bg_jya_bigmirror.c", 203);
                }
            } else {
                curCobraInfo->cobra = (BgJyaCobra*)Actor_SpawnAsChild(
                    &play->actorCtx, &this->actor, play, ACTOR_BG_JYA_COBRA, curSpawnData->pos.x, curSpawnData->pos.y,
                    curSpawnData->pos.z, 0, curCobraInfo->rotY, 0, curSpawnData->params);
                this->actor.child = NULL;

                if (curCobraInfo->cobra == NULL) {
                    // "Cobra generation failed"
                    osSyncPrintf("Error : コブラ発生失敗 (%s %d)\n", "../z_bg_jya_bigmirror.c", 221);
                }
            }
        }
    } else {

        for (i = 0; i < 2; i++) {
            curCobraInfo = &this->cobraInfo[i];
            if (curCobraInfo->cobra != NULL) {
                if (curCobraInfo->cobra->dyna.actor.child != NULL) {
                    Actor_Kill(curCobraInfo->cobra->dyna.actor.child);
                    curCobraInfo->cobra->dyna.actor.child = NULL;
                }
                Actor_Kill(&curCobraInfo->cobra->dyna.actor);
                curCobraInfo->cobra = NULL;
            }
        }
    }
}

void BgJyaBigmirror_SetBombiwaFlag(Actor* thisx, PlayState* play) {
    BgJyaBigmirror* this = (BgJyaBigmirror*)thisx;

    if (Flags_GetSwitch(play, 0x29)) {
        this->puzzleFlags |= BIGMIR_PUZZLE_BOMBIWA_DESTROYED;
    } else {
        this->puzzleFlags &= ~(BIGMIR_PUZZLE_BOMBIWA_DESTROYED);
    }
}

void BgJyaBigmirror_HandleMirRay(Actor* thisx, PlayState* play) {
    static s16 sMirRayParamsVals[] = { 0x0005, 0x0007, 0x0008 };
    static Vec3f sMirRayPositions[] = {
        { 60.0f, 1802.0f, -1102.0f },
        { -560.0f, 1800.0f, -310.0f },
        { 60.0f, 1800.0f, -310.0f },
    };
    BgJyaBigmirror* this = (BgJyaBigmirror*)thisx;
    s32 puzzleSolved;
    s32 lightBeamToggles[3];
    s32 i;
    s32 mirRayObjectSlot;

    mirRayObjectSlot = Object_GetSlot(&play->objectCtx, OBJECT_MIR_RAY);

    if ((mirRayObjectSlot < 0) || (mirRayObjectSlot != this->mirRayObjectSlot)) {
        this->lightBeams[2] = NULL;
        this->lightBeams[1] = NULL;
        this->lightBeams[0] = NULL;
    } else {
        puzzleSolved = !!(this->puzzleFlags & (BIGMIR_PUZZLE_IN_STATUE_ROOM | BIGMIR_PUZZLE_IN_1ST_TOP_ROOM));

        if (puzzleSolved) {
            puzzleSolved = !!(this->puzzleFlags & BIGMIR_PUZZLE_COBRA2_SOLVED);

            if (puzzleSolved) {
                puzzleSolved = !!(this->puzzleFlags & BIGMIR_PUZZLE_COBRA1_SOLVED);
            }
        }
        lightBeamToggles[0] = puzzleSolved; // Only spawn if puzzle solved
        if (1) {}
        lightBeamToggles[1] = lightBeamToggles[2] =
            this->puzzleFlags & (BIGMIR_PUZZLE_IN_1ST_TOP_ROOM | BIGMIR_PUZZLE_IN_2ND_TOP_ROOM);

        for (i = 0; i < 3; i++) {
            if (lightBeamToggles[i]) {
                if ((this->lightBeams[i] == NULL) && Object_IsLoaded(&play->objectCtx, mirRayObjectSlot)) {

                    this->lightBeams[i] =
                        Actor_Spawn(&play->actorCtx, play, ACTOR_MIR_RAY, sMirRayPositions[i].x, sMirRayPositions[i].y,
                                    sMirRayPositions[i].z, 0, 0, 0, sMirRayParamsVals[i]);

                    if (this->lightBeams[i] == NULL) {
                        // "Mir Ray generation failed"
                        osSyncPrintf("Error : Mir Ray 発生失敗 (%s %d)\n", "../z_bg_jya_bigmirror.c", 310);
                    }
                }
            } else {
                if (this->lightBeams[i] != NULL) {
                    Actor_Kill(this->lightBeams[i]);
                    this->lightBeams[i] = NULL;
                }
            }
        }
    }
    this->mirRayObjectSlot = mirRayObjectSlot;
}

void BgJyaBigmirror_Init(Actor* thisx, PlayState* play) {
    BgJyaBigmirror* this = (BgJyaBigmirror*)thisx;

    if (sIsSpawned) {
        Actor_Kill(&this->actor);
        return;
    }

    Actor_SetScale(&this->actor, 0.1f);
    this->cobraInfo[0].rotY = sCobraSpawnData[0].initRotY;
    this->cobraInfo[1].rotY = sCobraSpawnData[1].initRotY;
    this->actor.room = -1;
    sIsSpawned = true;
    this->spawned = true;
    this->mirRayObjectSlot = -1;

    // "jya Bigmirror"
    osSyncPrintf("(jya 大鏡)(arg_data 0x%04x)\n", this->actor.params);
}

void BgJyaBigmirror_Destroy(Actor* thisx, PlayState* play) {
    BgJyaBigmirror* this = (BgJyaBigmirror*)thisx;

    if (this->spawned) {
        sIsSpawned = false;
    }
}

void BgJyaBigmirror_Update(Actor* thisx, PlayState* play) {
    BgJyaBigmirror_SetRoomFlag(thisx, play);
    BgJyaBigmirror_HandleCobra(thisx, play);
    BgJyaBigmirror_SetBombiwaFlag(thisx, play);
    BgJyaBigmirror_HandleMirRay(thisx, play);
}

void BgJyaBigmirror_DrawLightBeam(Actor* thisx, PlayState* play) {
    static Vec3s D_80893F4C = { 0, 0, 0 };
    BgJyaBigmirror* this = (BgJyaBigmirror*)thisx;
    Actor* lift;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_jya_bigmirror.c", 435);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    lift = Actor_Find(&play->actorCtx, ACTOR_BG_JYA_LIFT, ACTORCAT_BG);
    if (lift != NULL) {
        this->liftHeight = lift->world.pos.y;
    }
    Matrix_SetTranslateRotateYXZ(this->actor.world.pos.x, this->actor.world.pos.y + 40.0f, this->actor.world.pos.z,
                                 &this->actor.shape.rot);
    Matrix_Scale(0.1f, (this->liftHeight * -(1.0f / 1280.0f)) + (1779.4f / 1280.0f), 0.1f, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_bg_jya_bigmirror.c", 457),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, gBigMirror1DL);

    if (lift != NULL) {
        if (1) {}
        Matrix_SetTranslateRotateYXZ(lift->world.pos.x, lift->world.pos.y, lift->world.pos.z, &D_80893F4C);
        Matrix_Scale(0.1f, 0.1f, 0.1f, MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_bg_jya_bigmirror.c", 467),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, gBigMirror2DL);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_jya_bigmirror.c", 476);
}

void BgJyaBigmirror_Draw(Actor* thisx, PlayState* play) {
    BgJyaBigmirror* this = (BgJyaBigmirror*)thisx;

    if (this->puzzleFlags & BIGMIR_PUZZLE_IN_1ST_TOP_ROOM) {
        Gfx_DrawDListOpa(play, gBigMirror3DL);
        Gfx_DrawDListXlu(play, gBigMirror4DL);
    }

    if ((this->puzzleFlags &
         (BIGMIR_PUZZLE_IN_STATUE_ROOM | BIGMIR_PUZZLE_IN_1ST_TOP_ROOM | BIGMIR_PUZZLE_IN_2ND_TOP_ROOM)) &&
        (this->puzzleFlags & BIGMIR_PUZZLE_COBRA2_SOLVED) && (this->puzzleFlags & BIGMIR_PUZZLE_COBRA1_SOLVED)) {
        BgJyaBigmirror_DrawLightBeam(&this->actor, play);
    }
}
