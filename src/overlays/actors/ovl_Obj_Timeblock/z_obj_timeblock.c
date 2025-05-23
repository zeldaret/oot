/*
 * File: z_obj_timeblock.c
 * Overlay: ovl_Obj_Timeblock
 * Description: Song of Time Block
 */

#include "z_obj_timeblock.h"
#include "assets/objects/object_timeblock/object_timeblock.h"

#define FLAGS                                                                                               \
    (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_UPDATE_DURING_OCARINA | \
     ACTOR_FLAG_LOCK_ON_DISABLED)

void ObjTimeblock_Init(Actor* thisx, PlayState* play);
void ObjTimeblock_Destroy(Actor* thisx, PlayState* play);
void ObjTimeblock_Update(Actor* thisx, PlayState* play);
void ObjTimeblock_Draw(Actor* thisx, PlayState* play);

void ObjTimeblock_SetupNormal(ObjTimeblock* this);
void ObjTimeblock_SetupAltBehaviorVisible(ObjTimeblock* this);
void ObjTimeblock_SetupAltBehaviourNotVisible(ObjTimeblock* this);

s32 ObjTimeblock_WaitForOcarina(ObjTimeblock* this, PlayState* play);
s32 ObjTimeblock_WaitForSong(ObjTimeblock* this, PlayState* play);
void ObjTimeblock_DoNothing(ObjTimeblock* this, PlayState* play);
void ObjTimeblock_Normal(ObjTimeblock* this, PlayState* play);
void ObjTimeblock_AltBehaviorVisible(ObjTimeblock* this, PlayState* play);
void ObjTimeblock_AltBehaviourNotVisible(ObjTimeblock* this, PlayState* play);

ActorProfile Obj_Timeblock_Profile = {
    /**/ ACTOR_OBJ_TIMEBLOCK,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_TIMEBLOCK,
    /**/ sizeof(ObjTimeblock),
    /**/ ObjTimeblock_Init,
    /**/ ObjTimeblock_Destroy,
    /**/ ObjTimeblock_Update,
    /**/ ObjTimeblock_Draw,
};

typedef struct ObjTimeblockSizeOptions {
    /* 0x00 */ f32 scale;
    /* 0x04 */ f32 height;
    /* 0x08 */ s16 demoEffectParams;
} ObjTimeblockSizeOptions; // size = 0x0C

static ObjTimeblockSizeOptions sSizeOptions[] = {
    { 1.0, 60.0, 0x0018 },
    { 0.60, 40.0, 0x0019 },
};

static f32 sRanges[] = { 60.0, 100.0, 140.0, 180.0, 220.0, 260.0, 300.0, 300.0 };

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(attentionRangeType, ATTENTION_RANGE_2, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 1800, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 300, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1500, ICHAIN_STOP),
};

static Color_RGB8 sPrimColors[] = {
    { 100, 120, 140 }, { 80, 140, 200 }, { 100, 150, 200 }, { 100, 200, 240 },
    { 80, 110, 140 },  { 70, 160, 225 }, { 80, 100, 130 },  { 100, 110, 190 },
};

u32 ObjTimeblock_CalculateIsVisible(ObjTimeblock* this) {
    if (!PARAMS_GET_U(this->dyna.actor.params, 10, 1)) {
        if (this->unk_177 == 0) {
            return this->unk_175;
        } else {
            u8 temp = PARAMS_GET_U(this->dyna.actor.params, 15, 1) ? true : false;

            if (this->unk_177 == 1) {
                return this->unk_174 ^ temp;
            } else {
                u8 linkIsChild = (LINK_AGE_IN_YEARS == YEARS_CHILD) ? true : false;

                return this->unk_174 ^ temp ^ linkIsChild;
            }
        }
    } else {
        return (PARAMS_GET_U(this->dyna.actor.params, 15, 1) ? true : false) ^ this->unk_174;
    }
}

void ObjTimeblock_SpawnDemoEffect(ObjTimeblock* this, PlayState* play) {
    Actor_Spawn(&play->actorCtx, play, ACTOR_DEMO_EFFECT, this->dyna.actor.world.pos.x, this->dyna.actor.world.pos.y,
                this->dyna.actor.world.pos.z, 0, 0, 0,
                sSizeOptions[PARAMS_GET_U(this->dyna.actor.params, 8, 1)].demoEffectParams);
}

void ObjTimeblock_ToggleSwitchFlag(PlayState* play, s32 flag) {
    if (Flags_GetSwitch(play, flag)) {
        Flags_UnsetSwitch(play, flag);
    } else {
        Flags_SetSwitch(play, flag);
    }
}

void ObjTimeblock_Init(Actor* thisx, PlayState* play) {
    ObjTimeblock* this = (ObjTimeblock*)thisx;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, 0);
    this->dyna.actor.world.rot.z = this->dyna.actor.shape.rot.z = 0;

    CollisionHeader_GetVirtual(&gSongOfTimeBlockCol, &colHeader);

    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    Actor_SetScale(&this->dyna.actor, sSizeOptions[PARAMS_GET_U(this->dyna.actor.params, 8, 1)].scale);

    if (PARAMS_GET_U(this->dyna.actor.params, 6, 1)) {
        this->unk_177 = 0;
    } else {
        this->unk_177 = (PARAMS_GET_U(this->dyna.actor.params, 0, 6) < 0x38) ? 2 : 1;
    }

    this->songObserverFunc = ObjTimeblock_WaitForOcarina;

    Actor_SetFocus(&this->dyna.actor, sSizeOptions[PARAMS_GET_U(this->dyna.actor.params, 8, 1)].height);

    this->unk_174 = (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6))) ? true : false;
    this->unk_175 = PARAMS_GET_U(this->dyna.actor.params, 15, 1) ? true : false;
    this->isVisible = ObjTimeblock_CalculateIsVisible(this);

    if (!PARAMS_GET_U(this->dyna.actor.params, 10, 1)) {
        ObjTimeblock_SetupNormal(this);
    } else if (this->isVisible) {
        ObjTimeblock_SetupAltBehaviorVisible(this);
    } else {
        ObjTimeblock_SetupAltBehaviourNotVisible(this);
    }

    // "Block of time"
    PRINTF("時のブロック (<arg> %04xH <type> save:%d color:%d range:%d move:%d)\n", (u16)this->dyna.actor.params,
           this->unk_177, this->dyna.actor.home.rot.z & 7, PARAMS_GET_U(this->dyna.actor.params, 11, 3),
           PARAMS_GET_U(this->dyna.actor.params, 10, 1));
}

void ObjTimeblock_Destroy(Actor* thisx, PlayState* play) {
    s32 pad;
    ObjTimeblock* this = (ObjTimeblock*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

u8 ObjTimeblock_PlayerIsInRange(ObjTimeblock* this, PlayState* play) {
    if (this->isVisible && DynaPolyActor_IsPlayerAbove(&this->dyna)) {
        return false;
    }

    if (this->dyna.actor.xzDistToPlayer <= sRanges[PARAMS_GET_U(this->dyna.actor.params, 11, 3)]) {
        Vec3f playerRelativePos;
        f32 blockSize;

        Actor_WorldToActorCoords(&this->dyna.actor, &playerRelativePos, &GET_PLAYER(play)->actor.world.pos);
        blockSize = this->dyna.actor.scale.x * 50.0f + 6.0f;
        // Return true if player's xz position is not inside the block
        if (blockSize < fabsf(playerRelativePos.x) || blockSize < fabsf(playerRelativePos.z)) {
            return true;
        }
    }

    return false;
}

s32 ObjTimeblock_WaitForOcarina(ObjTimeblock* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (ObjTimeblock_PlayerIsInRange(this, play)) {
        if (player->stateFlags2 & PLAYER_STATE2_24) {
            Message_StartOcarina(play, OCARINA_ACTION_FREE_PLAY);
            this->songObserverFunc = ObjTimeblock_WaitForSong;
        } else {
            player->stateFlags2 |= PLAYER_STATE2_23;
        }
    }
    return false;
}

s32 ObjTimeblock_WaitForSong(ObjTimeblock* this, PlayState* play) {
    if (play->msgCtx.ocarinaMode == OCARINA_MODE_04) {
        this->songObserverFunc = ObjTimeblock_WaitForOcarina;
    }
    if (play->msgCtx.lastPlayedSong == OCARINA_SONG_TIME) {
        if (this->unk_172 == 254) {
            this->songEndTimer = 110;
        } else {
            this->songEndTimer--;
            if (this->songEndTimer == 0) {
                return true;
            }
        }
    }
    return false;
}

void ObjTimeblock_SetupDoNothing(ObjTimeblock* this) {
    this->actionFunc = ObjTimeblock_DoNothing;
}

void ObjTimeblock_DoNothing(ObjTimeblock* this, PlayState* play) {
}

void ObjTimeblock_SetupNormal(ObjTimeblock* this) {
    this->actionFunc = ObjTimeblock_Normal;
}

void ObjTimeblock_Normal(ObjTimeblock* this, PlayState* play) {
    u32 newIsVisible;

    if (this->songObserverFunc(this, play) && this->demoEffectTimer <= 0) {
        ObjTimeblock_SpawnDemoEffect(this, play);
        this->demoEffectTimer = 160;

        // Possibly points the camera to this actor
        OnePointCutscene_Attention(play, &this->dyna.actor);
        // "◯◯◯◯ Time Block Attention Camera (frame counter  %d)\n"
        PRINTF("◯◯◯◯ Time Block 注目カメラ (frame counter  %d)\n", play->state.frames);

        this->demoEffectFirstPartTimer = 12;

        if (this->unk_177 == 0) {
            this->dyna.actor.params ^= 0x8000;
        } else {
            ObjTimeblock_ToggleSwitchFlag(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6));
        }
    }

    this->unk_172 = play->msgCtx.lastPlayedSong;
    if (this->demoEffectFirstPartTimer > 0) {
        this->demoEffectFirstPartTimer--;
        if (this->demoEffectFirstPartTimer == 0) {
            if (this->unk_177 == 0) {
                this->unk_175 = PARAMS_GET_U(this->dyna.actor.params, 15, 1) ? true : false;
            } else {
                this->unk_174 = (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6))) ? true : false;
            }
        }
    }

    newIsVisible = ObjTimeblock_CalculateIsVisible(this);
    if (this->unk_177 == 1 && newIsVisible != this->isVisible) {
        ObjTimeblock_SetupDoNothing(this);
    }
    this->isVisible = newIsVisible;

    if (this->demoEffectTimer == 50) {
        Sfx_PlaySfxCentered(NA_SE_SY_TRE_BOX_APPEAR);
    }
}

void func_80BA06AC(ObjTimeblock* this, PlayState* play) {
    s32 switchFlag = PARAMS_GET_U(this->dyna.actor.params, 0, 6);

    this->unk_172 = play->msgCtx.lastPlayedSong;

    if (this->demoEffectFirstPartTimer > 0 && --this->demoEffectFirstPartTimer == 0) {
        this->unk_174 = (Flags_GetSwitch(play, switchFlag)) ? true : false;
    }

    this->isVisible = ObjTimeblock_CalculateIsVisible(this);
    this->unk_176 = (Flags_GetSwitch(play, switchFlag)) ? true : false;
}

void ObjTimeblock_SetupAltBehaviorVisible(ObjTimeblock* this) {
    this->actionFunc = ObjTimeblock_AltBehaviorVisible;
}

void ObjTimeblock_AltBehaviorVisible(ObjTimeblock* this, PlayState* play) {
    if (this->songObserverFunc(this, play) && this->demoEffectTimer <= 0) {
        this->demoEffectFirstPartTimer = 12;
        ObjTimeblock_SpawnDemoEffect(this, play);
        this->demoEffectTimer = 160;
        OnePointCutscene_Attention(play, &this->dyna.actor);
        // "Time Block Attention Camera (frame counter)"
        PRINTF("◯◯◯◯ Time Block 注目カメラ (frame counter  %d)\n", play->state.frames);
        ObjTimeblock_ToggleSwitchFlag(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6));
    }

    func_80BA06AC(this, play);

    if (this->demoEffectTimer == 50) {
        Sfx_PlaySfxCentered(NA_SE_SY_TRE_BOX_APPEAR);
    }

    if (!this->isVisible && this->demoEffectTimer <= 0) {
        ObjTimeblock_SetupAltBehaviourNotVisible(this);
    }
}

void ObjTimeblock_SetupAltBehaviourNotVisible(ObjTimeblock* this) {
    this->actionFunc = ObjTimeblock_AltBehaviourNotVisible;
}

void ObjTimeblock_AltBehaviourNotVisible(ObjTimeblock* this, PlayState* play) {
    s32 switchFlag = PARAMS_GET_U(this->dyna.actor.params, 0, 6);
    s8 switchFlagIsSet = (Flags_GetSwitch(play, switchFlag)) ? true : false;

    if (this->unk_176 ^ switchFlagIsSet &&
        switchFlagIsSet ^ (PARAMS_GET_U(this->dyna.actor.params, 15, 1) ? true : false)) {
        if (this->demoEffectTimer <= 0) {
            ObjTimeblock_SpawnDemoEffect(this, play);
            this->demoEffectTimer = 160;
        }
        this->demoEffectFirstPartTimer = 12;
    }

    func_80BA06AC(this, play);

    if (this->isVisible && this->demoEffectTimer <= 0) {
        ObjTimeblock_SetupAltBehaviorVisible(this);
    }
}

void ObjTimeblock_Update(Actor* thisx, PlayState* play) {
    ObjTimeblock* this = (ObjTimeblock*)thisx;

    this->actionFunc(this, play);

    if (this->demoEffectTimer > 0) {
        this->demoEffectTimer--;
    }

    if (this->isVisible) {
        DynaPoly_EnableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
    } else {
        DynaPoly_DisableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
    }
}

void ObjTimeblock_Draw(Actor* thisx, PlayState* play) {
    if (((ObjTimeblock*)thisx)->isVisible) {
        Color_RGB8* primColor = &sPrimColors[thisx->home.rot.z & 7];

        OPEN_DISPS(play->state.gfxCtx, "../z_obj_timeblock.c", 762);

        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_obj_timeblock.c", 766);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, primColor->r, primColor->g, primColor->b, 255);
        gSPDisplayList(POLY_OPA_DISP++, gSongOfTimeBlockDL);

        CLOSE_DISPS(play->state.gfxCtx, "../z_obj_timeblock.c", 772);
    }
}
