/*
 * File: z_bg_bowl_wall.c
 * Overlay: Bg_Bowl_Wall
 * Description: Bombchu Bowling Alley Wall
 */

#include "z_bg_bowl_wall.h"
#include "overlays/actors/ovl_En_Bom_Bowl_Man/z_en_bom_bowl_man.h"
#include "overlays/actors/ovl_En_Wall_Tubo/z_en_wall_tubo.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "printf.h"
#include "quake.h"
#include "rand.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "bgcheck.h"
#include "effect.h"
#include "play_state.h"
#include "assets/objects/object_bowl/object_bowl.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void BgBowlWall_Init(Actor* thisx, PlayState* play);
void BgBowlWall_Destroy(Actor* thisx, PlayState* play);
void BgBowlWall_Update(Actor* thisx, PlayState* play);
void BgBowlWall_Draw(Actor* thisx, PlayState* play);

void BgBowlWall_InitImpl(BgBowlWall* this, PlayState* play);
void BgBowlWall_WaitTargetHit(BgBowlWall* this, PlayState* play);
void BgBowlWall_Explode(BgBowlWall* this, PlayState* play);
void BgBowlWall_Disappear(BgBowlWall* this, PlayState* play);
void BgBowlWall_WaitReappear(BgBowlWall* this, PlayState* play);

ActorProfile Bg_Bowl_Wall_Profile = {
    /**/ ACTOR_BG_BOWL_WALL,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_BOWL,
    /**/ sizeof(BgBowlWall),
    /**/ BgBowlWall_Init,
    /**/ BgBowlWall_Destroy,
    /**/ BgBowlWall_Update,
    /**/ BgBowlWall_Draw,
};

static Vec3f sWallTargetPositions[4] = {
    { 0.0f, 210.0f, -20.0f },  // First wall, top
    { 0.0f, 170.0f, -20.0f },  // Second wall, top
    { -170.0f, 0.0f, -20.0f }, // Second wall, left
    { 170.0f, 0.0f, -20.0f },  // Second wall, right
};
static s16 sWallRots[4] = {
    0,
    0,       // Second wall, upright
    0x3FFF,  // Second wall, target on the left
    -0x3FFF, // Second wall, target on the right
};

void BgBowlWall_Init(Actor* thisx, PlayState* play) {
    BgBowlWall* this = (BgBowlWall*)thisx;
    s32 pad1[2];
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, 0);
    if (this->dyna.actor.params == BG_BOWL_WALL_TYPE_FIRST_WALL) {
        CollisionHeader_GetVirtual(&gBowlingFirstWallCol, &colHeader);
    } else {
        CollisionHeader_GetVirtual(&gBowlingSecondWallCol, &colHeader);
    }
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
    this->homePos = this->dyna.actor.world.pos;
    PRINTF("\n\n");
    PRINTF(VT_FGCOL(GREEN) " ☆☆☆☆☆ ボーリングおじゃま壁発生 ☆☆☆☆☆ %d\n" VT_RST, this->dyna.actor.params);
    this->actionFunc = BgBowlWall_InitImpl;
    this->dyna.actor.scale.x = this->dyna.actor.scale.y = this->dyna.actor.scale.z = 1.0f;
}

void BgBowlWall_Destroy(Actor* thisx, PlayState* play) {
    BgBowlWall* this = (BgBowlWall*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, (s32)this->dyna.bgId);
}

void BgBowlWall_InitImpl(BgBowlWall* this, PlayState* play) {
    Actor* actor;
    EnWallTubo* target;
    s32 pad;
    s16 type = this->dyna.actor.params;

    if (type != BG_BOWL_WALL_TYPE_FIRST_WALL) {
        type += (s16)Rand_ZeroFloat(2.99f);
        this->dyna.actor.shape.rot.z = this->dyna.actor.world.rot.z = sWallRots[type];
        PRINTF("\n\n");
    }
    this->effCenterPos.x = sWallTargetPositions[type].x + this->dyna.actor.world.pos.x;
    this->effCenterPos.y = sWallTargetPositions[type].y + this->dyna.actor.world.pos.y;
    this->effCenterPos.z = sWallTargetPositions[type].z + this->dyna.actor.world.pos.z;
    if (0) {}
    target = (EnWallTubo*)Actor_SpawnAsChild(&play->actorCtx, &this->dyna.actor, play, ACTOR_EN_WALL_TUBO,
                                             this->effCenterPos.x, this->effCenterPos.y, this->effCenterPos.z, 0, 0, 0,
                                             this->dyna.actor.params);
    if (target != NULL) {
        target->effCenterPos = this->effCenterPos;
        if (type != BG_BOWL_WALL_TYPE_FIRST_WALL) {
            target->effCenterPos = this->effCenterPos = this->dyna.actor.world.pos;
        }
        if (this->bowlingGirl == NULL) {
            actor = play->actorCtx.actorLists[ACTORCAT_NPC].head;
            while (actor != NULL) {
                if (actor->id != ACTOR_EN_BOM_BOWL_MAN) {
                    actor = actor->next;
                    continue;
                }
                this->bowlingGirl = (EnBomBowlMan*)actor;
                break;
            }
        }
        this->actionFunc = BgBowlWall_WaitTargetHit;
    }
}

void BgBowlWall_WaitTargetHit(BgBowlWall* this, PlayState* play) {
    if (this->targetHit) {
        this->actionFunc = BgBowlWall_Explode;
    }
}

void BgBowlWall_Explode(BgBowlWall* this, PlayState* play) {
    s32 explode;
    Vec3f effAccel = { 0.0f, 0.1f, 0.0f };
    Vec3f effVel = { 0.0f, 0.0f, 0.0f };
    Vec3f effPos;
    s16 quakeIndex;
    s32 i;

    explode = false;
    if (this->dyna.actor.params == BG_BOWL_WALL_TYPE_FIRST_WALL) {
        Math_SmoothStepToS(&this->dyna.actor.shape.rot.x, -0x3E80, 3, 0x1F4, 0);
        this->dyna.actor.world.rot.x = this->dyna.actor.shape.rot.x;
        if (this->dyna.actor.shape.rot.x < -0x3C1E) {
            explode = true;
        }
    } else {
        Math_ApproachF(&this->dyna.actor.world.pos.y, this->homePos.y - 450.0f, 0.3f, 10.0f);
        if (this->dyna.actor.world.pos.y < (this->homePos.y - 400.0f)) {
            explode = true;
        }
    }
    if (explode) {
        for (i = 0; i < 15; i++) {
            effPos.x = Rand_CenteredFloat(300.0f) + this->effCenterPos.x;
            effPos.y = -100.0f;
            effPos.z = Rand_CenteredFloat(400.0f) + this->effCenterPos.z;
            EffectSsBomb2_SpawnLayered(play, &effPos, &effVel, &effAccel, 100, 30);
            effPos.y = -50.0f;
            EffectSsHahen_SpawnBurst(play, &effPos, 10.0f, 0, 50, 15, 3, -1, 10, NULL);
            Actor_PlaySfx(&this->dyna.actor, NA_SE_IT_BOMB_EXPLOSION);
        }
        quakeIndex = Quake_Request(GET_ACTIVE_CAM(play), QUAKE_TYPE_1);
        Quake_SetSpeed(quakeIndex, 0x7FFF);
        Quake_SetPerturbations(quakeIndex, 300, 0, 0, 0);
        Quake_SetDuration(quakeIndex, 30);
        this->timer = 20;
        this->actionFunc = BgBowlWall_Disappear;
    }
}

void BgBowlWall_Disappear(BgBowlWall* this, PlayState* play) {
    if (this->timer >= 2) {
        if (this->dyna.actor.params == BG_BOWL_WALL_TYPE_FIRST_WALL) {
            Math_SmoothStepToS(&this->dyna.actor.shape.rot.x, -0x3E80, 1, 0xC8, 0);
        } else {
            Math_ApproachF(&this->dyna.actor.world.pos.y, this->homePos.y - 450.0f, 0.3f, 10.0f);
        }
    } else if (this->timer == 1) {
        this->dyna.actor.world.pos.y = this->homePos.y - 450.0f;
        this->dyna.actor.world.rot.x = this->dyna.actor.shape.rot.x = 0;
        this->bowlingGirl->wallsState[this->dyna.actor.params] = EN_BOM_BOWL_MAN_WALL_STATE_DISAPPEARED;
        this->actionFunc = BgBowlWall_WaitReappear;
    }
}

void BgBowlWall_WaitReappear(BgBowlWall* this, PlayState* play) {
    if (this->bowlingGirl->wallsState[this->dyna.actor.params] != EN_BOM_BOWL_MAN_WALL_STATE_DISAPPEARED) {
        Math_ApproachF(&this->dyna.actor.world.pos.y, this->homePos.y, 0.3f, 50.0f);
        if (fabsf(this->dyna.actor.world.pos.y - this->homePos.y) <= 10.0f) {
            this->dyna.actor.world.pos.y = this->homePos.y;
            this->targetHit = false;
            this->actionFunc = BgBowlWall_InitImpl;
        }
    }
}

void BgBowlWall_Update(Actor* thisx, PlayState* play) {
    BgBowlWall* this = (BgBowlWall*)thisx;

    if (this->timer != 0) {
        this->timer--;
    }
    this->actionFunc(this, play);
}

void BgBowlWall_Draw(Actor* thisx, PlayState* play) {
    u32 new_var2;
    BgBowlWall* this = (BgBowlWall*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_bowl_wall.c", 441);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x8,
               Gfx_TexScroll(play->state.gfxCtx, 0, (new_var2 = play->state.frames) * -2, 16, 16));
    gDPPipeSync(POLY_OPA_DISP++);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_bowl_wall.c", 453);
    if (this->dyna.actor.params == BG_BOWL_WALL_TYPE_FIRST_WALL) {
        gSPDisplayList(POLY_OPA_DISP++, gBowlingFirstWallDL);
    } else {
        gSPDisplayList(POLY_OPA_DISP++, gBowlingSecondWallDL);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_bowl_wall.c", 464);
}
