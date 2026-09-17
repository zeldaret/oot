/*
 * File: z_en_wall_tubo.c
 * Overlay: ovl_En_Wall_Tubo
 * Description: Bowling Alley bombchu detector for the first two walls
 */

#include "z_en_wall_tubo.h"
#include "overlays/actors/ovl_Bg_Bowl_Wall/z_bg_bowl_wall.h"
#include "overlays/actors/ovl_En_Bom_Bowl_Man/z_en_bom_bowl_man.h"
#include "overlays/actors/ovl_En_Bom_Chu/z_en_bom_chu.h"

#include "rand.h"
#include "regs.h"
#include "sfx.h"
#include "printf.h"
#include "quake.h"
#include "terminal.h"
#include "z_lib.h"
#include "debug_display.h"
#include "effect.h"
#include "play_state.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void EnWallTubo_Init(Actor* thisx, PlayState* play);
void EnWallTubo_Destroy(Actor* thisx, PlayState* play);
void EnWallTubo_Update(Actor* thisx, PlayState* play);

void EnWallTubo_InitImpl(EnWallTubo* this, PlayState* play);
void EnWallTubo_WaitTargetHit(EnWallTubo* this, PlayState* play);
void EnWallTubo_Explode(EnWallTubo* this, PlayState* play);

ActorProfile En_Wall_Tubo_Profile = {
    /**/ ACTOR_EN_WALL_TUBO,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnWallTubo),
    /**/ EnWallTubo_Init,
    /**/ EnWallTubo_Destroy,
    /**/ EnWallTubo_Update,
    /**/ NULL,
};

void EnWallTubo_Init(Actor* thisx, PlayState* play) {
    EnWallTubo* this = (EnWallTubo*)thisx;

    PRINTF("\n\n");
    PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ 壁のツボ ☆☆☆☆☆ \n" VT_RST);
    this->homePos = this->actor.world.pos;
    this->actionFunc = EnWallTubo_InitImpl;
}

void EnWallTubo_Destroy(Actor* thisx, PlayState* play) {
}

void EnWallTubo_InitImpl(EnWallTubo* this, PlayState* play) {
    Actor* actor;

    actor = play->actorCtx.actorLists[4].head;
    while (actor != NULL) {
        if (actor->id != ACTOR_EN_BOM_BOWL_MAN) {
            actor = actor->next;
            continue;
        }
        this->bowlingGirl = (EnBomBowlMan*)actor;
        break;
    }
    this->actionFunc = EnWallTubo_WaitTargetHit;
}

void EnWallTubo_WaitTargetHit(EnWallTubo* this, PlayState* play) {
    Actor* explosive;
    Actor* thisx = &this->actor;
    Vec3f effAccel = { 0.0f, 0.1f, 0.0f };
    Vec3f effVel = { 0.0f, 0.0f, 0.0f };
    Vec3f diff;
    s16 quakeIndex;

    if ((this->bowlingGirl->gameStartStatus != EN_BOM_BOWL_MAN_GAME_START_STATUS_INACTIVE) &&
        (play->cameraPtrs[CAM_ID_MAIN]->setting == CAM_SET_CHU_BOWLING)) {
        explosive = play->actorCtx.actorLists[ACTORCAT_EXPLOSIVE].head;
        while (explosive != NULL) {
            if ((explosive == thisx) || (explosive->id != ACTOR_EN_BOM_CHU)) {
                explosive = explosive->next;
                continue;
            }
            diff.x = explosive->world.pos.x - this->actor.world.pos.x;
            diff.y = explosive->world.pos.y - this->actor.world.pos.y;
            diff.z = explosive->world.pos.z - this->actor.world.pos.z;
            if (((fabsf(diff.x) < 40.0f) || (BREG(2) != 0)) && ((fabsf(diff.y) < 40.0f) || (BREG(2) != 0)) &&
                ((fabsf(diff.z) < 40.0f) || (BREG(2) != 0))) {
                this->bowlingGirl->wallsState[this->actor.params] = EN_BOM_BOWL_MAN_WALL_STATE_HIT;
                ((EnBomChu*)explosive)->timer = 2;
                Sfx_PlaySfxCentered(NA_SE_SY_TRE_BOX_APPEAR);
                this->timer = 60;
                EffectSsBomb2_SpawnLayered(play, &this->effCenterPos, &effVel, &effAccel, 200, 40);
                quakeIndex = Quake_Request(play->cameraPtrs[play->activeCamId], QUAKE_TYPE_1);
                Quake_SetSpeed(quakeIndex, 0x7FFF);
                Quake_SetPerturbations(quakeIndex, 100, 0, 0, 0);
                Quake_SetDuration(quakeIndex, 100);
                this->actionFunc = EnWallTubo_Explode;
                return;
            }
            explosive = explosive->next;
        }
    }
}

void EnWallTubo_Explode(EnWallTubo* this, PlayState* play) {
    BgBowlWall* wall;
    Vec3f effAccel = { 0.0f, 0.1f, 0.0f };
    Vec3f effVel = { 0.0f, 0.0f, 0.0f };
    Vec3f effPos;

    if ((play->gameplayFrames & 1) == 0) {
        effPos.x = Rand_CenteredFloat(300.0f) + this->effCenterPos.x;
        effPos.y = Rand_CenteredFloat(300.0f) + this->effCenterPos.y;
        effPos.z = this->effCenterPos.z;
        EffectSsBomb2_SpawnLayered(play, &effPos, &effVel, &effAccel, 100, 30);
        EffectSsHahen_SpawnBurst(play, &effPos, 10.0f, 0, 50, 15, 3, -1, 10, NULL);
        Actor_PlaySfx(&this->actor, NA_SE_IT_BOMB_EXPLOSION);
    }
    if (this->timer == 0) {
        wall = (BgBowlWall*)this->actor.parent;
        if ((wall != NULL) && (wall->dyna.actor.update != NULL)) {
            wall->targetHit = true;
            PRINTF(VT_FGCOL(GREEN) "☆☆☆☆ やった原！ ☆☆☆☆☆ \n" VT_RST);
            PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆ やった原！ ☆☆☆☆☆ \n" VT_RST);
            PRINTF(VT_FGCOL(BLUE) "☆☆☆☆ やった原！ ☆☆☆☆☆ \n" VT_RST);
            PRINTF(VT_FGCOL(MAGENTA) "☆☆☆☆ やった原！ ☆☆☆☆☆ \n" VT_RST);
            PRINTF(VT_FGCOL(CYAN) "☆☆☆☆ やった原！ ☆☆☆☆☆ \n" VT_RST);
        }
        Actor_Kill(&this->actor);
    }
}

void EnWallTubo_Update(Actor* thisx, PlayState* play) {
    EnWallTubo* this = (EnWallTubo*)thisx;

    if (this->timer != 0) {
        this->timer--;
    }
    this->actionFunc(this, play);
    if (DEBUG_FEATURES && (BREG(0) != 0)) {
        DebugDisplay_AddObject(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z,
                               this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f, 1.0f,
                               1.0f, 0, 0, 255, 255, 4, play->state.gfxCtx);
    }
}
