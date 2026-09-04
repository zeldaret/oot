/*
 * File: z_bg_haka_gate.c
 * Overlay: ovl_Bg_Haka_Gate
 * Description: Truth Spinner Puzzle actors (Shadow Temple)
 *
 * BGHAKAGATE_STATUE:
 * A bird statue that can be pushed or pulled by the player, rotating it in place. It must be pointed at the
 * "Skull of Truth" to solve the puzzle.
 *
 * BGHAKAGATE_FLOOR_TRAP:
 * A floor that opens up to drop the player should the puzzle not be solved correctly. Responsible for checking if the
 * puzzle is correctly solved and setting the switch flag.
 *
 * BGHAKAGATE_GATE:
 * A simple gate that rises up when the switch flag is set.
 *
 * BGHAKAGATE_SKULL_TORCH_HEAD:
 * The head of a skull torch that ignites when the switch flag is set. The "staff" portion for these torches is baked
 * into the model of Shadow Temple, room 2.
 *
 * How the puzzle works:
 *
 * In Shadow Temple Room 2, there is a pit covered by BGHAKAGATE_FLOOR_TRAP, and in the center is BGHAKAGATE_STATUE.
 * BGHAKAGATE_STATUE has an initial yRot of 0x0000, pointing it east towards an ACTOR_OBJ_SYOKUDAI torch.
 * Surrounding it are five more evenly distributed torches, represented by BGHAKAGATE_SKULL_TORCH_HEAD, which in total
 * mark the 6 positions BGHAKAGATE_STATUE can be rotated to face.
 *
 * The BGHAKAGATE_SKULL_TORCH_HEAD instances are set with a yRot to make them "face" the BGHAKAGATE_STATUE, and for
 * reference a yRot of 0x0000 also makes the torch face east. As the torches spawn in, yRot is used to select the "Skull
 * of Truth":
 *  - If yRot falls within -0x4000 to +0x4000 (the three torches on the west side), a random torch will be selected
 *    from the three to be the "Skull of Truth" using sPuzzleState to compute the odds, and sPuzzleSolutionStatueRotY to
 *    flag that a "Skull of Truth" has been selected.
 *  - If not (as is the case for the two torches on the east side), they will always be fake skulls.
 * Torches that are fake will be hidden when the Lens of Truth is activated.
 */

#include "z_bg_haka_gate.h"

#include "libc64/qrand.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "one_point_cutscene.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "play_state.h"
#include "player.h"

#include "assets/objects/gameplay_keep/eff_fire.h"
#include "assets/objects/object_haka_objects/object_haka_objects.h"

#define FLAGS 0

// general purpose timer
#define vTimer actionVar1

// variables for turning the statue. DegTenths stores rotation in tenths of a degree.
#define vTurnDirection actionVar1
#define vTurnRateDegTenths actionVar2
#define vTurnAngleDegTenths actionVar3
#define vRotYDegTenths actionVar4
#define vInitTurnAngle actionVar5

// opening angle for floor
#define vOpenAngle actionVar2

// variables for the skull flames
#define vFlameScale actionVar3
#define vIsSkullOfTruth actionVar4
#define vScrollTimer actionVar5

void BgHakaGate_Init(Actor* thisx, PlayState* play);
void BgHakaGate_Destroy(Actor* thisx, PlayState* play);
void BgHakaGate_Update(Actor* thisx, PlayState* play);
void BgHakaGate_Draw(Actor* thisx, PlayState* play);

void BgHakaGate_DoNothing(BgHakaGate* this, PlayState* play);
void BgHakaGate_Statue_Inactive(BgHakaGate* this, PlayState* play);
void BgHakaGate_Statue_Idle(BgHakaGate* this, PlayState* play);
void BgHakaGate_Statue_Turn(BgHakaGate* this, PlayState* play);
void BgHakaGate_Floor_Closed(BgHakaGate* this, PlayState* play);
void BgHakaGate_Floor_Open(BgHakaGate* this, PlayState* play);
void BgHakaGate_Gate_Wait(BgHakaGate* this, PlayState* play);
void BgHakaGate_Gate_Open(BgHakaGate* this, PlayState* play);
void BgHakaGate_Skull_Real(BgHakaGate* this, PlayState* play);
void BgHakaGate_Skull_False(BgHakaGate* this, PlayState* play);

#define PUZZLE_SOLUTION_NOT_SET 0x100

// The direction BGHAKAGATE_STATUE must be rotated to (within +- 0x80 units) in order to solve the puzzle.
static s16 sPuzzleSolutionStatueRotY = PUZZLE_SOLUTION_NOT_SET;

#define PUZZLE_STATE_SKULL_OF_TRUTH_FOUND 100

// During actor initialization for the room, this value can range from 1 up to 3, and is used to affect the probability
// of the current BGHAKAGATE_SKULL_TORCH_HEAD instance being selected as the "Skull of Truth". Once a torch is selected,
// but before the puzzle is solved, it can be check to see if the first, second, or third torch spawned was selected.
static u8 sPuzzleState = 1;

// On pushing/pulling BGHAKAGATE_STATUE, sets the xzDistToPlayer from the statue.
// When set to 0, this will stop BGHAKAGATE_FLOOR_TRAP from testing the puzzle solution.
static f32 sStatueDistToPlayer = 0;

// Used to communicate to BGHAKAGATE_FLOOR_TRAP the rotation of the statue.
static s16 sStatueRotY;

ActorProfile Bg_Haka_Gate_Profile = {
    /**/ ACTOR_BG_HAKA_GATE,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_HAKA_OBJECTS,
    /**/ sizeof(BgHakaGate),
    /**/ BgHakaGate_Init,
    /**/ BgHakaGate_Destroy,
    /**/ BgHakaGate_Update,
    /**/ BgHakaGate_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgHakaGate_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgHakaGate* this = (BgHakaGate*)thisx;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(thisx, sInitChain);
    this->switchFlag = PARAMS_GET_U(thisx->params, 8, 8);
    thisx->params &= 0xFF;
    DynaPolyActor_Init(&this->dyna, 0);
    if (thisx->params == BGHAKAGATE_SKULL_TORCH_HEAD) {
        // If a "Skull of Truth" has been selected
        if (sPuzzleSolutionStatueRotY != PUZZLE_SOLUTION_NOT_SET) {
            this->actionFunc = BgHakaGate_Skull_False;
            // If this is one of the three skull torches on the western side of the room, as they'd be faced east toward
            // the statue
        } else if (ABS(thisx->shape.rot.y) < 0x4000) {
            //! @bug the torch selected to be the "Skull of Truth" is not selected evenly from the 3 possible torches.
            //! The true weights are 3/9 for the torch spawned first, 4/9 for the second, and 2/9 for the third.
            //! The reason for this is that should the first torch not be selected, sPuzzleState increments to 2,
            //! meaning the second torch will be twice as likely to be selected over the third.
            if ((Rand_ZeroOne() * 3.0f) < sPuzzleState) {
                this->vIsSkullOfTruth = true;
                sPuzzleSolutionStatueRotY = thisx->shape.rot.y + 0x8000;
                if (Flags_GetSwitch(play, this->switchFlag)) {
                    this->actionFunc = BgHakaGate_DoNothing;
                } else {
                    this->actionFunc = BgHakaGate_Skull_Real;
                }
            } else {
                sPuzzleState++;
                this->actionFunc = BgHakaGate_Skull_False;
            }
        } else {
            // The two skull torches on the eastern side of the room that can never be the "Skull of Truth"
            this->actionFunc = BgHakaGate_Skull_False;
        }
        this->vScrollTimer = Rand_ZeroOne() * 20.0f;
        thisx->flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
        if (Flags_GetSwitch(play, this->switchFlag)) {
            this->vFlameScale = 350;
        }
    } else {
        if (thisx->params == BGHAKAGATE_STATUE) {
            CollisionHeader_GetVirtual(&gShadowTempleTruthPuzzleStatueCol, &colHeader);
            this->vTimer = 0;
            sStatueDistToPlayer = 0.0f;
            if (Flags_GetSwitch(play, this->switchFlag)) {
                this->actionFunc = BgHakaGate_Statue_Inactive;
            } else {
                this->actionFunc = BgHakaGate_Statue_Idle;
            }
        } else if (thisx->params == BGHAKAGATE_FLOOR_TRAP) {
            CollisionHeader_GetVirtual(&gShadowTempleTruthPuzzleFloorTrapCol, &colHeader);
            if (Flags_GetSwitch(play, this->switchFlag)) {
                this->actionFunc = BgHakaGate_DoNothing;
            } else {
                this->actionFunc = BgHakaGate_Floor_Closed;
            }
        } else { // BGHAKAGATE_GATE
            CollisionHeader_GetVirtual(&gShadowTempleTruthPuzzleGateCol, &colHeader);
            if (Flags_GetSwitch(play, this->switchFlag)) {
                this->actionFunc = BgHakaGate_DoNothing;
                thisx->world.pos.y += 80.0f;
            } else {
                thisx->flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
                Actor_SetFocus(thisx, 30.0f);
                this->actionFunc = BgHakaGate_Gate_Wait;
            }
        }
        this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);
    }
}

void BgHakaGate_Destroy(Actor* thisx, PlayState* play) {
    s32 pad;
    BgHakaGate* this = (BgHakaGate*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
    if (this->dyna.actor.params == BGHAKAGATE_STATUE) {
        // Reset the puzzle to it's initial state.
        sPuzzleSolutionStatueRotY = PUZZLE_SOLUTION_NOT_SET;
        sPuzzleState = 1;
    }
}

void BgHakaGate_DoNothing(BgHakaGate* this, PlayState* play) {
}

void BgHakaGate_Statue_Inactive(BgHakaGate* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (this->dyna.unk_150 != 0.0f) {
        player->stateFlags2 &= ~PLAYER_STATE2_4;
        this->dyna.unk_150 = 0.0f;
    }
}

void BgHakaGate_Statue_Idle(BgHakaGate* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 playerDirection;
    f32 forceDirection;

    if (this->dyna.unk_150 != 0.0f) {
        if (this->vTimer == 0) {
            this->vInitTurnAngle = this->dyna.actor.shape.rot.y - this->dyna.actor.yawTowardsPlayer;
            sStatueDistToPlayer = this->dyna.actor.xzDistToPlayer;
            forceDirection = (this->dyna.unk_150 >= 0.0f) ? 1.0f : -1.0f;
            playerDirection = ((s16)(this->dyna.actor.yawTowardsPlayer - player->actor.shape.rot.y) > 0) ? -1 : 1;
            this->vTurnDirection = playerDirection * forceDirection;
            this->actionFunc = BgHakaGate_Statue_Turn;
        } else {
            player->stateFlags2 &= ~PLAYER_STATE2_4;
            this->dyna.unk_150 = 0.0f;
            if (this->vTimer != 0) {
                this->vTimer--;
            }
        }
    } else {
        if (sPuzzleState == PUZZLE_STATE_SKULL_OF_TRUTH_FOUND) {
            this->actionFunc = BgHakaGate_Statue_Inactive;
        } else {
            this->vTimer = 0;
        }
    }
}

void BgHakaGate_Statue_Turn(BgHakaGate* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 turnFinished;
    s16 turnAngleDegTenths;

    this->vTurnRateDegTenths++;
    this->vTurnRateDegTenths = CLAMP_MAX(this->vTurnRateDegTenths, 5);
    turnFinished = Math_StepToS(&this->vTurnAngleDegTenths, 600, this->vTurnRateDegTenths);
    turnAngleDegTenths = this->vTurnAngleDegTenths * this->vTurnDirection;
    this->dyna.actor.shape.rot.y = DEG_TO_BINANG((this->vRotYDegTenths + turnAngleDegTenths) * 0.1f);
    if ((player->stateFlags2 & PLAYER_STATE2_4) && (sStatueDistToPlayer > 0.0f)) {
        player->actor.world.pos.x =
            this->dyna.actor.home.pos.x +
            (Math_SinS(this->dyna.actor.shape.rot.y - this->vInitTurnAngle) * sStatueDistToPlayer);
        player->actor.world.pos.z =
            this->dyna.actor.home.pos.z +
            (Math_CosS(this->dyna.actor.shape.rot.y - this->vInitTurnAngle) * sStatueDistToPlayer);
    } else {
        // While pushing or pulling the statue, there is a glitch where the player can press Z repeatedly to escape the
        // animation early and regain control. If we detect the player isn't grabbing the actor anymore, then zeroing
        // this will prevent the BGHAKAGATE_FLOOR_TRAP testing the puzzle solution and potentially tripping the floor
        // trap unfairly. Doing so temporarily prevents solving the puzzle should the statue be facing the correct way.
        sStatueDistToPlayer = 0.0f;
    }
    sStatueRotY = this->dyna.actor.shape.rot.y;
    if (turnFinished) {
        player->stateFlags2 &= ~PLAYER_STATE2_4;
        this->vRotYDegTenths = (this->vRotYDegTenths + turnAngleDegTenths) % 3600;
        this->vTurnRateDegTenths = 0;
        this->vTurnAngleDegTenths = 0;
        this->vTimer = 5;
        this->actionFunc = BgHakaGate_Statue_Idle;
        this->dyna.unk_150 = 0.0f;
    }
    Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_ROCK_SLIDE - SFX_FLAG);
}

void BgHakaGate_Floor_Closed(BgHakaGate* this, PlayState* play) {
    // sStatueDistToPlayer will be set to 0 in cases where the checking the solution should be disabled.
    if ((sStatueDistToPlayer > 1.0f) && (sStatueRotY != 0)) {
        Player* player = GET_PLAYER(play);
        f32 radialDist;
        f32 angDist;
        f32 cos = Math_CosS(sStatueRotY);
        f32 sin = Math_SinS(sStatueRotY);
        f32 dx = player->actor.world.pos.x - this->dyna.actor.world.pos.x;
        f32 dz = player->actor.world.pos.z - this->dyna.actor.world.pos.z;

        radialDist = dx * cos - dz * sin;
        angDist = dx * sin + dz * cos;

        if ((radialDist > 110.0f) || (fabsf(angDist) > 40.0f)) {
            s16 yawDiff = sPuzzleSolutionStatueRotY - sStatueRotY;

            // Disables checking the solution until the next time the statue is turned
            sStatueDistToPlayer = 0.0f;
            if (ABS(yawDiff) < 0x80) {
                // The statue faces the "Skull of Truth"
                Flags_SetSwitch(play, this->switchFlag);
                sPuzzleState = PUZZLE_STATE_SKULL_OF_TRUTH_FOUND;
                this->actionFunc = BgHakaGate_DoNothing;
            } else {
                // The statue faces the wrong way
                Sfx_PlaySfxCentered(NA_SE_SY_ERROR);
                Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_GROUND_GATE_OPEN);
                DynaPoly_DisableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
                this->vTimer = 60;
                this->actionFunc = BgHakaGate_Floor_Open;
            }
        }
    }
}

void BgHakaGate_Floor_Open(BgHakaGate* this, PlayState* play) {
    if (this->vTimer != 0) {
        this->vTimer--;
    }
    if (this->vTimer == 0) {
        if (Math_ScaledStepToS(&this->vOpenAngle, 0, 0x800)) {
            DynaPoly_EnableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
            this->actionFunc = BgHakaGate_Floor_Closed;
        }
    } else {
        Math_ScaledStepToS(&this->vOpenAngle, 0x3000, 0x800);
    }
}

void BgHakaGate_Gate_Wait(BgHakaGate* this, PlayState* play) {
    if (Flags_GetSwitch(play, this->switchFlag)) {
        OnePointCutscene_Attention(play, &this->dyna.actor);
        this->actionFunc = BgHakaGate_Gate_Open;
    }
}

void BgHakaGate_Gate_Open(BgHakaGate* this, PlayState* play) {
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 80.0f, 1.0f)) {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_METALDOOR_STOP);
        this->dyna.actor.flags &= ~ACTOR_FLAG_UPDATE_CULLING_DISABLED;
        this->actionFunc = BgHakaGate_DoNothing;
    } else {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_METALDOOR_SLIDE - SFX_FLAG);
    }
}

void BgHakaGate_Skull_Real(BgHakaGate* this, PlayState* play) {
    if (Flags_GetSwitch(play, this->switchFlag) && Math_StepToS(&this->vFlameScale, 350, 20)) {
        this->actionFunc = BgHakaGate_DoNothing;
    }
}

void BgHakaGate_Skull_False(BgHakaGate* this, PlayState* play) {
    if (Flags_GetSwitch(play, this->switchFlag)) {
        Math_StepToS(&this->vFlameScale, 350, 20);
    }
    if (play->actorCtx.lensActive) {
        this->dyna.actor.flags |= ACTOR_FLAG_REACT_TO_LENS;
    } else {
        this->dyna.actor.flags &= ~ACTOR_FLAG_REACT_TO_LENS;
    }
}

void BgHakaGate_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    BgHakaGate* this = (BgHakaGate*)thisx;

    this->actionFunc(this, play);
    if (this->dyna.actor.params == BGHAKAGATE_SKULL_TORCH_HEAD) {
        this->vScrollTimer++;
    }
}

void BgHakaGate_DrawFlame(BgHakaGate* this, PlayState* play) {
    Actor* thisx = &this->dyna.actor;
    f32 scale;

    if (this->vFlameScale > 0) {
        OPEN_DISPS(play->state.gfxCtx, "../z_bg_haka_gate.c", 716);

        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 32, 64, 1, 0,
                                    (this->vScrollTimer * -20) & 0x1FF, 32, 128));
        gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 255, 255, 0, 255);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 0);

        Matrix_Translate(thisx->world.pos.x, thisx->world.pos.y + 15.0f, thisx->world.pos.z, MTXMODE_NEW);
        Matrix_RotateY(BINANG_TO_RAD(Camera_GetCamDirYaw(GET_ACTIVE_CAM(play))), MTXMODE_APPLY);
        scale = this->vFlameScale * 0.00001f;

        Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_haka_gate.c", 744);
        gSPDisplayList(POLY_XLU_DISP++, gEffFire1DL);
        CLOSE_DISPS(play->state.gfxCtx, "../z_bg_haka_gate.c", 749);
    }
}

void BgHakaGate_Draw(Actor* thisx, PlayState* play) {
    static Gfx* displayLists[] = {
        gShadowTempleTruthPuzzleStatueDL,
        gShadowTempleTruthPuzzleFloorTrapNorthDL,
        gShadowTempleTruthPuzzleGateDL,
        gShadowTempleSkullTorchHeadDL,
    };
    BgHakaGate* this = (BgHakaGate*)thisx;
    MtxF currentMtxF;

    // This check assumes that only BGHAKAGATE_SKULL_TORCH_HEAD will ever enable ACTOR_FLAG_REACT_TO_LENS
    if (ACTOR_FLAGS_CHECK_ALL(thisx, ACTOR_FLAG_REACT_TO_LENS)) {
        Gfx_DrawDListXlu(play, gShadowTempleSkullTorchHeadDL);
    } else {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        if (thisx->params == BGHAKAGATE_FLOOR_TRAP) {
            OPEN_DISPS(play->state.gfxCtx, "../z_bg_haka_gate.c", 781);
            // Save the matrix
            Matrix_Get(&currentMtxF);
            // Render the "north" side trap hinge
            Matrix_Translate(0.0f, 0.0f, -2000.0f, MTXMODE_APPLY);
            Matrix_RotateX(BINANG_TO_RAD(this->vOpenAngle), MTXMODE_APPLY);
            Matrix_Translate(0.0f, 0.0f, 2000.0f, MTXMODE_APPLY);
            MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_haka_gate.c", 788);
            gSPDisplayList(POLY_OPA_DISP++, gShadowTempleTruthPuzzleFloorTrapNorthDL);

            // Restore the matrix
            Matrix_Put(&currentMtxF);
            // Render the "south" side trap hinge
            Matrix_Translate(0.0f, 0.0f, 2000.0f, MTXMODE_APPLY);
            Matrix_RotateX(BINANG_TO_RAD(-this->vOpenAngle), MTXMODE_APPLY);
            Matrix_Translate(0.0f, 0.0f, -2000.0f, MTXMODE_APPLY);
            MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_haka_gate.c", 796);
            gSPDisplayList(POLY_OPA_DISP++, gShadowTempleTruthPuzzleFloorTrapSouthDL);
            CLOSE_DISPS(play->state.gfxCtx, "../z_bg_haka_gate.c", 800);
        } else {
            Gfx_DrawDListOpa(play, displayLists[thisx->params]);
        }
    }
    if (thisx->params == BGHAKAGATE_SKULL_TORCH_HEAD) {
        BgHakaGate_DrawFlame(this, play);
    }
}
