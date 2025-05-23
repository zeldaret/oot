/*
 * File: z_en_blkobj.c
 * Overlay: ovl_En_Blkobj
 * Description: Dark Link's Illusion Room
 */

#include "z_en_blkobj.h"
#include "assets/objects/object_blkobj/object_blkobj.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void EnBlkobj_Init(Actor* thisx, PlayState* play);
void EnBlkobj_Destroy(Actor* thisx, PlayState* play);
void EnBlkobj_Update(Actor* thisx, PlayState* play);
void EnBlkobj_Draw(Actor* thisx, PlayState* play);

void EnBlkobj_Wait(EnBlkobj* this, PlayState* play);
void EnBlkobj_SpawnDarkLink(EnBlkobj* this, PlayState* play);
void EnBlkobj_DarkLinkFight(EnBlkobj* this, PlayState* play);
void EnBlkobj_DoNothing(EnBlkobj* this, PlayState* play);

ActorProfile En_Blkobj_Profile = {
    /**/ ACTOR_EN_BLKOBJ,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_BLKOBJ,
    /**/ sizeof(EnBlkobj),
    /**/ EnBlkobj_Init,
    /**/ EnBlkobj_Destroy,
    /**/ EnBlkobj_Update,
    /**/ EnBlkobj_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F(scale, 1, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 800, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 200, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 300, ICHAIN_STOP),
};

static Gfx sSetupOpaDL[] = {
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPEndDisplayList(),
};

static Gfx sSetupXluDL[] = {
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPEndDisplayList(),
};

void EnBlkobj_SetupAction(EnBlkobj* this, EnBlkobjActionFunc actionFunc) {
    this->actionFunc = actionFunc;
    this->timer = 0;
}

void EnBlkobj_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    EnBlkobj* this = (EnBlkobj*)thisx;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, 0);
    if (Flags_GetClear(play, this->dyna.actor.room)) {
        this->alpha = 255;
        EnBlkobj_SetupAction(this, EnBlkobj_DoNothing);
    } else {
        CollisionHeader_GetVirtual(&gIllusionRoomCol, &colHeader);
        this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
        EnBlkobj_SetupAction(this, EnBlkobj_Wait);
    }
}

void EnBlkobj_Destroy(Actor* thisx, PlayState* play) {
    s32 pad;
    EnBlkobj* this = (EnBlkobj*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void EnBlkobj_Wait(EnBlkobj* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (this->dyna.actor.xzDistToPlayer < 120.0f) {
        EnBlkobj_SetupAction(this, EnBlkobj_SpawnDarkLink);
    }
    player->stateFlags2 |= PLAYER_STATE2_26;
}

void EnBlkobj_SpawnDarkLink(EnBlkobj* this, PlayState* play) {
    if (!(this->dyna.actor.flags & ACTOR_FLAG_INSIDE_CULLING_VOLUME)) {
        Actor_Spawn(&play->actorCtx, play, ACTOR_EN_TORCH2, this->dyna.actor.world.pos.x, this->dyna.actor.world.pos.y,
                    this->dyna.actor.world.pos.z, 0, this->dyna.actor.yawTowardsPlayer, 0, 0);
        EnBlkobj_SetupAction(this, EnBlkobj_DarkLinkFight);
    }
}

void EnBlkobj_DarkLinkFight(EnBlkobj* this, PlayState* play) {
    s32 alphaMod;

    if (this->timer == 0) {
        if (Actor_Find(&play->actorCtx, ACTOR_EN_TORCH2, ACTORCAT_BOSS) == NULL) {
            Flags_SetClear(play, this->dyna.actor.room);
            this->timer++;
        }
    } else if (this->timer++ > 100) {
        alphaMod = (this->timer - 100) >> 2;
        if (alphaMod > 5) {
            alphaMod = 5;
        }
        this->alpha += alphaMod;
        if (this->alpha > 255) {
            this->alpha = 255;
            EnBlkobj_SetupAction(this, EnBlkobj_DoNothing);
            DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
        }
    }
}

void EnBlkobj_DoNothing(EnBlkobj* this, PlayState* play) {
}

void EnBlkobj_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    EnBlkobj* this = (EnBlkobj*)thisx;

    this->actionFunc(this, play);
}

void EnBlkobj_DrawAlpha(PlayState* play, Gfx* dList, s32 alpha) {
    Gfx* segment;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_blkobj.c", 322);

    if (alpha == 255) {
        segment = sSetupOpaDL;
    } else {
        segment = sSetupXluDL;
    }

    gSPSegment(POLY_XLU_DISP++, 0x08, segment);
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, alpha);
    gSPDisplayList(POLY_XLU_DISP++, dList);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_blkobj.c", 330);
}

void EnBlkobj_Draw(Actor* thisx, PlayState* play) {
    s32 pad;
    EnBlkobj* this = (EnBlkobj*)thisx;
    s32 illusionAlpha;
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_blkobj.c", 349);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    gameplayFrames = play->gameplayFrames % 128;

    gSPSegment(
        POLY_XLU_DISP++, 0x0D,
        Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, gameplayFrames, 0, 32, 32, 1, gameplayFrames, 0, 32, 32));
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_blkobj.c", 363);

    if (this->alpha != 0) {
        EnBlkobj_DrawAlpha(play, gIllusionRoomNormalDL, this->alpha);
    }
    illusionAlpha = 255 - this->alpha;
    if (illusionAlpha != 0) {
        EnBlkobj_DrawAlpha(play, gIllusionRoomIllusionDL, illusionAlpha);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_blkobj.c", 375);
}
