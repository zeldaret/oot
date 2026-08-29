/*
 * File: z_en_xc.c
 * Overlay: ovl_En_Xc
 * Description: Sheik
 */

#include "z_en_xc.h"
#include "overlays/actors/ovl_En_Arrow/z_en_arrow.h"
#include "overlays/actors/ovl_Door_Warp1/z_door_warp1.h"

#include "array_count.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "printf.h"
#include "regs.h"
#include "segmented_address.h"
#include "sequence.h"
#include "sfx.h"
#include "sys_math3d.h"
#include "sys_matrix.h"
#include "terminal.h"
#include "translation.h"
#include "z_lib.h"
#include "audio.h"
#include "effect.h"
#include "play_state.h"
#include "save.h"
#include "skin_matrix.h"

#include "assets/objects/object_xc/object_xc.h"
#include "assets/scenes/overworld/spot05/spot05_scene.h"
#include "assets/scenes/overworld/spot17/spot17_scene.h"
#include "assets/scenes/indoors/tokinoma/tokinoma_scene.h"
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_scene.h"

#pragma increment_block_number "gc-eu:128 gc-eu-mq:128 gc-jp:128 gc-jp-ce:128 gc-jp-mq:128 gc-us:128 gc-us-mq:128" \
                               "ique-cn:128 ntsc-1.0:128 ntsc-1.1:128 ntsc-1.2:128 pal-1.0:128 pal-1.1:128"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void EnXc_Init(Actor* thisx, PlayState* play);
void EnXc_Destroy(Actor* thisx, PlayState* play);
void EnXc_Update(Actor* thisx, PlayState* play);
void EnXc_Draw(Actor* thisx, PlayState* play);

void EnXc_DrawNothing(Actor* thisx, PlayState* play);
void EnXc_DrawDefault(Actor* thisx, PlayState* play);
void EnXc_DrawPullingOutHarp(Actor* thisx, PlayState* play);
void EnXc_DrawHarp(Actor* thisx, PlayState* play);
void EnXc_DrawTriforce(Actor* thisx, PlayState* play);
void EnXc_DrawLookingDown(Actor* thisx, PlayState* play);

static ColliderCylinderInitType1 sCylinderInit = {
    {
        COL_MATERIAL_HIT0,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_PLAYER,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
        { 0x00000000, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_NONE,
        ACELEM_NONE,
        OCELEM_ON,
    },
    { 25, 80, 0, { 0, 0, 0 } },
};

static void* sEyeTextures[] = {
    gSheikEyeOpenTex,
    gSheikEyeHalfClosedTex,
    gSheikEyeShutTex,
};

void EnXc_InitCollider(Actor* thisx, PlayState* play) {
    EnXc* this = (EnXc*)thisx;

    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinderType1(play, &this->collider, &this->actor, &sCylinderInit);
}

void EnXc_UpdateCollider(Actor* thisx, PlayState* play) {
    EnXc* this = (EnXc*)thisx;
    Collider* colliderBase = &this->collider.base;
    s32 pad[3];

    Collider_UpdateCylinder(thisx, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, colliderBase);
}

void EnXc_Destroy(Actor* thisx, PlayState* play) {
    EnXc* this = (EnXc*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void EnXc_CalculateHeadTurn(EnXc* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    this->interactInfo.trackPos = player->actor.world.pos;
    this->interactInfo.yOffset = kREG(16) - 3.0f;
    Npc_TrackPoint(&this->actor, &this->interactInfo, kREG(17) + 0xC, NPC_TRACKING_HEAD_AND_TORSO);
}

void EnXc_SetEyePattern(EnXc* this) {
    s32 pad[3];
    s16* blinkTimer = &this->blinkTimer;
    s16* eyePattern = &this->eyeIdx;

    if (DECR(*blinkTimer) == 0) {
        *blinkTimer = Rand_S16Offset(60, 60);
    }

    *eyePattern = *blinkTimer;
    if (*eyePattern >= ARRAY_COUNT(sEyeTextures)) {
        *eyePattern = 0;
    }
}

void EnXc_SpawnNut(EnXc* this, PlayState* play) {
    s32 pad;
    Vec3f* pos = &this->actor.world.pos;
    s16 angle = this->actor.shape.rot.y;
    f32 x = (Math_SinS(angle) * 30.0f) + pos->x;
    f32 y = pos->y + 3.0f;
    f32 z = (Math_CosS(angle) * 30.0f) + pos->z;

    Actor_Spawn(&play->actorCtx, play, ACTOR_EN_ARROW, x, y, z, 0xFA0, this->actor.shape.rot.y, 0, ARROW_CS_NUT);
}

void EnXc_BgCheck(EnXc* this, PlayState* play) {
    Actor_UpdateBgCheckInfo(play, &this->actor, 75.0f, 30.0f, 30.0f, UPDBGCHECKINFO_FLAG_2);
}

s32 EnXc_SkelAnime_Update(EnXc* this) {
    return SkelAnime_Update(&this->skelAnime);
}

CsCmdActorCue* EnXc_GetCue(PlayState* play, s32 cueChannel) {
    CsCmdActorCue* cue = NULL;

    if (play->csCtx.state != CS_STATE_IDLE) {
        cue = play->csCtx.actorCues[cueChannel];
    }
    return cue;
}

s32 EnXc_CheckForCue(EnXc* this, PlayState* play, u16 cueId, s32 cueChannel) {
    CsCmdActorCue* cue = EnXc_GetCue(play, cueChannel);

    if (cue != NULL && cue->id == cueId) {
        return true;
    }

    return false;
}

s32 EnXc_CheckForNoCue(EnXc* this, PlayState* play, u16 cueId, s32 cueChannel) {
    CsCmdActorCue* cue = EnXc_GetCue(play, cueChannel);

    if (cue && cue->id != cueId) {
        return true;
    }

    return false;
}

void EnXc_SetPosRotByCueStart(EnXc* this, PlayState* play, u32 cueChannel) {
    CsCmdActorCue* cue = EnXc_GetCue(play, cueChannel);
    Actor* thisx = &this->actor;

    if (cue != NULL) {
        thisx->world.pos.x = cue->startPos.x;
        thisx->world.pos.y = cue->startPos.y;
        thisx->world.pos.z = cue->startPos.z;

        thisx->world.rot.x = thisx->shape.rot.x = cue->rot.x;
        thisx->world.rot.y = thisx->shape.rot.y = cue->rot.y;
        thisx->world.rot.z = thisx->shape.rot.z = cue->rot.z;
    }
}

void EnXc_SetPosByCueLerp(EnXc* this, PlayState* play, s32 cueChannel) {
    CsCmdActorCue* cue = EnXc_GetCue(play, cueChannel);
    Vec3f* worldPos = &this->actor.world.pos;
    f32 startX;
    f32 startY;
    f32 startZ;
    f32 endX;
    f32 endY;
    f32 endZ;
    f32 lerp;

    if (cue != NULL) {
        lerp = Environment_LerpWeightAccelDecel(cue->endFrame, cue->startFrame, play->csCtx.curFrame, 0, 0);

        startX = cue->startPos.x;
        startY = cue->startPos.y;
        startZ = cue->startPos.z;

        endX = cue->endPos.x;
        endY = cue->endPos.y;
        endZ = cue->endPos.z;

        worldPos->x = ((endX - startX) * lerp) + startX;
        worldPos->y = ((endY - startY) * lerp) + startY;
        worldPos->z = ((endZ - startZ) * lerp) + startZ;
    }
}

void EnXc_ChangeAnimation(EnXc* this, AnimationHeader* animation, u8 mode, f32 morphFrames, s32 reverseFlag) {
    s32 pad[2];
    AnimationHeader* animationSeg = SEGMENTED_TO_VIRTUAL(animation);
    f32 frameCount = Animation_GetLastFrame(&animationSeg->common);
    f32 playbackSpeed;
    f32 startFrame;
    f32 endFrame;

    if (!reverseFlag) {
        startFrame = 0.0f;
        endFrame = frameCount;
        playbackSpeed = 1.0f;
    } else {
        startFrame = frameCount;
        endFrame = 0.0f;
        playbackSpeed = -1.0f;
    }

    Animation_Change(&this->skelAnime, animationSeg, playbackSpeed, startFrame, endFrame, mode, morphFrames);
}

void EnXc_CheckAndSetAction(EnXc* this, s32 check, s32 actionNext) {
    if (check != this->action) {
        this->action = actionNext;
    }
}

void EnXc_CheckHarpPutawayAndBranch(EnXc* this, s32 check, s32 actionContinue, s32 actionLoopback) {
    if (check != this->action) {
        if (this->action == SHEIK_ACTION_11_TEACH1_PLAY_HARP_RETURN_FROM_READY) {
            this->action = actionContinue;
        } else {
            this->action = actionLoopback;
        }
    }
}

#if DEBUG_FEATURES
s32 EnXc_Debug_NoCutscenePlaying(PlayState* play) {
    if (play->csCtx.state == CS_STATE_IDLE) {
        return true;
    }
    return false;
}

void EnXc_Debug_SetAction53_IdleAnim(EnXc* this) {
    Animation_Change(&this->skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gSheikIdleAnim),
                     ANIMMODE_LOOP, 0.0f);
    this->action = SHEIK_ACTION_53_TRANSFORM_INVISIBLE;
}

void EnXc_Debug_RestartAction53_IfNoCS(EnXc* this, PlayState* play) {
    if (EnXc_Debug_NoCutscenePlaying(play) && this->actor.params == SHEIK_TYPE_TRANSFORM) {
        EnXc_Debug_SetAction53_IdleAnim(this);
    }
}
#endif

void ActorMovement_func_80B3C8CC(EnXc* this, PlayState* play) {
    SkelAnime* skelAnime = &this->skelAnime;

    if (skelAnime->jointTable[0].y >= skelAnime->baseTransl.y) {
        skelAnime->movementFlags |= ANIM_FLAG_UPDATE_XZ | ANIM_FLAG_UPDATE_Y;
        AnimTaskQueue_AddActorMovement(play, &this->actor, skelAnime, 1.0f);
    }
}

void ActorMovement_func_80B3C924(EnXc* this, PlayState* play) {
    this->skelAnime.movementFlags |= ANIM_FLAG_UPDATE_XZ | ANIM_FLAG_UPDATE_Y;
    AnimTaskQueue_AddActorMovement(play, &this->actor, &this->skelAnime, 1.0f);
}

void ActorMovement_func_80B3C964(EnXc* this, PlayState* play) {
    this->skelAnime.baseTransl = this->skelAnime.jointTable[0];
    this->skelAnime.prevTransl = this->skelAnime.jointTable[0];
    this->skelAnime.movementFlags |= ANIM_FLAG_UPDATE_XZ | ANIM_FLAG_UPDATE_Y;
    AnimTaskQueue_AddActorMovement(play, &this->actor, &this->skelAnime, 1.0f);
}

void EnXc_DisableActorMovement(EnXc* this) {
    this->skelAnime.movementFlags &= ~(ANIM_FLAG_UPDATE_XZ | ANIM_FLAG_UPDATE_Y);
}

void EnXc_SetAction79_BlockPedestal(EnXc* this) {
    EnXc_ChangeAnimation(this, &gSheikArmsCrossedIdleAnim, ANIMMODE_LOOP, 0.0f, false);
    this->action = SHEIK_ACTION_79_TEMPLE_OF_TIME_BLOCK_PEDESTAL;
    this->drawMode = SHEIK_DRAW_DEFAULT;
    this->enableTrackPlayer = true;
}

void EnXc_CheckStartMinuet_Action0(EnXc* this, PlayState* play) {
    // If Player is adult but hasn't learned Minuet of Forest
    if (!GET_EVENTCHKINF(EVENTCHKINF_50) && LINK_IS_ADULT) {
        s32 pad;

        this->action = SHEIK_ACTION_0_TEACH1_CHECK_DEMO_START;
    } else {
        Actor_Kill(&this->actor);
    }
}

/**
 * If configured to start gMeadowMinuetCs, run the cutscene if the conditions are met.
 * returns false only when the actor is prevented from starting the cutscene.
 *
 * Note: returning true does not mean that the Minuet cutscene is active.
 *
 * Since the Minuet cutscene can be started through Map Select, the conditional checks need to be bypassed
 * for Sheik to behave correctly.
 */
s32 EnXc_MinuetCS(EnXc* this, PlayState* play) {
    Player* player;
    f32 playerPosZ;

    if (this->actor.params == SHEIK_TYPE_MINUET) {
        player = GET_PLAYER(play);
        playerPosZ = player->actor.world.pos.z;

        if (playerPosZ < -2225.0f) {
            if (!Play_InCsMode(play)) {
                s32 pad;

                play->csCtx.script = SEGMENTED_TO_VIRTUAL(gMeadowMinuetCs);
                gSaveContext.cutsceneTrigger = 1;
                SET_EVENTCHKINF(EVENTCHKINF_50);
                Item_Give(play, ITEM_SONG_MINUET);
                return true;
            }
        }
        return false;
    }
    return true;
}

void EnXc_CheckStartBolero_Action0(EnXc* this, PlayState* play) {
    // If hasn't learned Bolero and Player is Adult
    if (!GET_EVENTCHKINF(EVENTCHKINF_51) && LINK_IS_ADULT) {
        s32 pad;

        this->action = SHEIK_ACTION_0_TEACH1_CHECK_DEMO_START;
    } else {
        Actor_Kill(&this->actor);
    }
}

/**
 * If configured to start gDeathMountainCraterBoleroCs, run the cutscene if the conditions are met.
 * returns false only when the actor is prevented from starting the cutscene.
 *
 * Note: returning true does not mean that the Bolero cutscene is active.
 *
 * Since the Bolero cutscene can be started through Map Select, the conditional checks need to be bypassed
 * for Sheik to behave correctly.
 */
s32 EnXc_BoleroCS(EnXc* this, PlayState* play) {
    Player* player;
    PosRot* posRot;

    if (this->actor.params == SHEIK_TYPE_BOLERO) {
        player = GET_PLAYER(play);
        posRot = &player->actor.world;
        if ((posRot->pos.x > -784.0f) && (posRot->pos.x < -584.0f) && (posRot->pos.y > 447.0f) &&
            (posRot->pos.y < 647.0f) && (posRot->pos.z > -446.0f) && (posRot->pos.z < -246.0f) &&
            !Play_InCsMode(play)) {
            s32 pad;

            play->csCtx.script = SEGMENTED_TO_VIRTUAL(gDeathMountainCraterBoleroCs);
            gSaveContext.cutsceneTrigger = 1;
            SET_EVENTCHKINF(EVENTCHKINF_51);
            Item_Give(play, ITEM_SONG_BOLERO);
            return true;
        }
        return false;
    }
    return true;
}

void EnXc_CheckStartSerenade_Action29(EnXc* this, PlayState* play) {
    if (!(CHECK_OWNED_EQUIP(EQUIP_TYPE_BOOTS, EQUIP_INV_BOOTS_IRON) && DEBUG_FEATURES) &&
        !GET_EVENTCHKINF(EVENTCHKINF_52) && LINK_IS_ADULT) {
        s32 pad;

        this->action = SHEIK_ACTION_29_TEACH2_CHECK_DEMO_START;
        PRINTF(T("水のセレナーデ シーク誕生!!!!!!!!!!!!!!!!!!\n", "Water serenade Sheik's birth!!!!!!!!!!!!!!!!!!\n"));
    } else {
        Actor_Kill(&this->actor);
        PRINTF(T("水のセレナーデ シーク消滅!!!!!!!!!!!!!!!!!!\n", "Water serenade Sheik vanishes!!!!!!!!!!!!!!!!!!\n"));
    }
}

/**
 * If configured to start gIceCavernSerenadeCs, run the cutscene if the conditions are met.
 * returns false only when the actor is prevented from starting the cutscene.
 *
 * Note: returning true does not mean that the Serenade cutscene is active.
 *
 * Since the Serenade cutscene can be started through Map Select, the conditional checks need to be bypassed
 * for Sheik to behave correctly.
 */
s32 EnXc_SerenadeCS(EnXc* this, PlayState* play) {
    if (this->actor.params == SHEIK_TYPE_SERENADE) {
        // Ice Cavern - Gameplay - Learn Serenade

        Player* player = GET_PLAYER(play);
        s32 stateFlags = player->stateFlags1;

        if (CHECK_OWNED_EQUIP(EQUIP_TYPE_BOOTS, EQUIP_INV_BOOTS_IRON) && !GET_EVENTCHKINF(EVENTCHKINF_52) &&
            !(stateFlags & PLAYER_STATE1_29) && !Play_InCsMode(play)) {
            s32 pad;

            Cutscene_SetScript(play, gIceCavernSerenadeCs);
            gSaveContext.cutsceneTrigger = 1;
            SET_EVENTCHKINF(EVENTCHKINF_52); // Learned Serenade of Water Flag
            Item_Give(play, ITEM_SONG_SERENADE);
            PRINTF(T("ブーツを取った!!!!!!!!!!!!!!!!!!\n", "I took the boots!!!!!!!!!!!!!!!!!!\n"));
            return true;
        } else {
            PRINTF(T("はやくブーツを取るべし!!!!!!!!!!!!!!!!!!\n", "Quickly get your boots!!!!!!!!!!!!!!!!!!\n"));
            return false;
        }
    }

    // Ice Cavern - Demo 0 - Learn Serenade
    return true;
}

void EnXc_DoNothing(EnXc* this, PlayState* play) {
}

static Vec3f sSfxPos;

void EnXc_SetWalkingSFX(EnXc* this, PlayState* play) {
    s32 pad[2];
    u32 sfxId;
    s32 pad2;

    if (Animation_OnFrame(&this->skelAnime, 11.0f) || Animation_OnFrame(&this->skelAnime, 23.0f)) {
        if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
            sfxId = NA_SE_PL_WALK_GROUND;
            sfxId += SurfaceType_GetSfxOffset(&play->colCtx, this->actor.floorPoly, this->actor.floorBgId);
            Sfx_PlaySfxAtPos(&this->actor.projectedPos, sfxId);
        }
    }
}

void EnXc_SetNutThrowSFX(EnXc* this, PlayState* play) {
    s32 pad[2];
    u32 sfxId;
    s32 pad2;

    if (Animation_OnFrame(&this->skelAnime, 7.0f)) {
        if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
            sfxId = NA_SE_PL_WALK_GROUND;
            sfxId += SurfaceType_GetSfxOffset(&play->colCtx, this->actor.floorPoly, this->actor.floorBgId);
            Sfx_PlaySfxAtPos(&this->actor.projectedPos, sfxId);
        }
    }
    if (Animation_OnFrame(&this->skelAnime, 20.0f)) {
        Sfx_PlaySfxAtPos(&this->actor.projectedPos, NA_SE_VO_SK_SHOUT);
    }
}

void EnXc_SetLandingSFX(EnXc* this, PlayState* play) {
    u32 sfxId;
    s16 sceneId = play->sceneId;

    if ((gSaveContext.sceneLayer != 4) || (sceneId != SCENE_DESERT_COLOSSUS)) {
        if (Animation_OnFrame(&this->skelAnime, 11.0f)) {
            sfxId = NA_SE_PL_WALK_GROUND;
            sfxId += SurfaceType_GetSfxOffset(&play->colCtx, this->actor.floorPoly, this->actor.floorBgId);
            Sfx_PlaySfxAtPos(&this->actor.projectedPos, sfxId);
        }
    }
}

void EnXc_SetColossusAppearSFX(EnXc* this, PlayState* play) {
    s16 sceneId;

    if (gSaveContext.sceneLayer == 4) {
        sceneId = play->sceneId;
        if (sceneId == SCENE_DESERT_COLOSSUS) {
            CutsceneContext* csCtx = &play->csCtx;
            u16 csCurFrame = csCtx->curFrame;
            f32 wDest[2];

            if (csCurFrame == 119) {
                Vec3f pos = { -611.0f, 728.0f, -2.0f };

                SkinMatrix_Vec3fMtxFMultXYZW(&play->viewProjectionMtxF, &pos, &sSfxPos, wDest);
                Sfx_PlaySfxAtPos(&sSfxPos, NA_SE_EV_JUMP_CONC);
            } else if (csCurFrame == 164) {
                Vec3f pos = { -1069.0f, 38.0f, 0.0f };
                s32 pad;

                SkinMatrix_Vec3fMtxFMultXYZW(&play->viewProjectionMtxF, &pos, &sSfxPos, wDest);
                Sfx_PlaySfxAtPos(&sSfxPos, NA_SE_PL_WALK_GROUND + SURFACE_SFX_OFFSET_STONE);
            }
        }
    }
}

void EnXc_TeachSong1_PlaySfx_NA_SE_PL_SKIP(PlayState* play) {
    s16 sceneId;

    // In RequiemCs, we use a different technique for simulating the air swoosh
    if (!((gSaveContext.sceneLayer == 4) && (sceneId = play->sceneId, sceneId == SCENE_DESERT_COLOSSUS))) {
        Sfx_PlaySfxCentered2(NA_SE_PL_SKIP);
    }
}

void EnXc_SetColossusWindSFX(PlayState* play) {
    if (gSaveContext.sceneLayer == 4) {
        static s32 sEyeLastValid = false;
        static Vec3f sPos = { 0.0f, 0.0f, 0.0f };
        static Vec3f sEyeLast;
        s32 pad;
        s16 sceneId = play->sceneId;

        if (sceneId == SCENE_DESERT_COLOSSUS) {
            CutsceneContext* csCtx = &play->csCtx;
            u16 csCurFrame = csCtx->curFrame;

            if ((csCurFrame >= 120) && (csCurFrame < 164)) {
                s32 pad;
                Vec3f* eye = &play->view.eye;

                if (sEyeLastValid) {
                    f32 speed = Math3D_Vec3f_DistXYZ(&sEyeLast, eye) / 7.058922f;
#if DEBUG_FEATURES
                    static f32 sMaxSpeed = 0.0f;

                    sMaxSpeed = CLAMP_MIN(sMaxSpeed, speed);
                    PRINTF("MAX speed = %f\n", sMaxSpeed);
#endif

                    speed = CLAMP_MAX(speed, 2.0f);
                    func_800F436C(&sPos, NA_SE_EV_FLYING_AIR - SFX_FLAG, 0.6f + (0.4f * speed));
                }

                sEyeLast.x = eye->x;
                sEyeLast.y = eye->y;
                sEyeLast.z = eye->z;
                sEyeLastValid = true;
            }
        }
    }
}

void EnXc_SpawnFlame(EnXc* this, PlayState* play) {
    static s32 sFlameSpawned = false;

    if (!sFlameSpawned) {
        CsCmdActorCue* cue = EnXc_GetCue(play, 0);
        f32 xPos = cue->startPos.x;
        f32 yPos = cue->startPos.y;
        f32 zPos = cue->startPos.z;

        this->flameActor = Actor_Spawn(&play->actorCtx, play, ACTOR_EN_LIGHT, xPos, yPos, zPos, 0, 0, 0, 5);
        sFlameSpawned = true;
    }
}

void EnXc_SetBoleroEffFlamePos(EnXc* this, PlayState* play) {
    Vec3f* attachedPos;
    CsCmdActorCue* cue = EnXc_GetCue(play, 0);

    if (this->flameActor != NULL) {
        attachedPos = &this->flameActor->world.pos;
        if (!this) {}
        attachedPos->x = cue->startPos.x;
        attachedPos->y = cue->startPos.y;
        attachedPos->z = cue->startPos.z;
    }
}

void EnXc_DestroyFlame(EnXc* this) {
    if (this->flameActor != NULL) {
        Actor_Kill(this->flameActor);
        this->flameActor = NULL;
    }
    Actor_Kill(&this->actor);
}

void EnXc_UpdateBoleroEffFlame(EnXc* this, PlayState* play) {
    static s32 sLastCueId = ENXC_EFF_FLAME_CUEID_1;
    s32 pad;
    s16 sceneId = play->sceneId;

    if (sceneId == SCENE_DEATH_MOUNTAIN_CRATER) {
        CsCmdActorCue* cue = EnXc_GetCue(play, 0);
        if (cue != NULL) {
            s32 cueId = cue->id;

            if (sLastCueId != cueId) {
                if (cueId != ENXC_EFF_FLAME_CUEID_1) {
                    // ENXC_EFF_FLAME_CUEID_2
                    EnXc_SpawnFlame(this, play);
                }

                if (cueId == ENXC_EFF_FLAME_CUEID_1) {
                    EnXc_DestroyFlame(this);
                }

                sLastCueId = cueId;
            }

            EnXc_SetBoleroEffFlamePos(this, play);
        }
    }
}

void EnXc_FacePlayer(EnXc* this, PlayState* play) {
    CutsceneContext* csCtx = &play->csCtx;
    CsCmdActorCue* playerCue = csCtx->playerCue;
    s16 yaw;

    if (playerCue != NULL) {
        yaw = playerCue->rot.y + 0x8000;
    } else {
        Player* player = GET_PLAYER(play);
        yaw = player->actor.world.rot.y + 0x8000;
    }

    this->actor.shape.rot.y = this->actor.world.rot.y = yaw;
}

AnimationHeader* EnXc_GetHarpPlayingAnim(PlayState* play, s32 cueChannel) {
    AnimationHeader* animation = &gSheikPlayingHarpDefaultAnim;
    CsCmdActorCue* cue = EnXc_GetCue(play, cueChannel);

    if (cue != NULL) {
        u16 cueId = cue->id;

        if (cueId == ENXC_CUEID_PLAY_HARP_MINUET) {
            animation = &gSheikPlayingHarpMinuetAnim;
        } else if (cueId == ENXC_CUEID_PLAY_HARP_BOLERO) {
            animation = &gSheikPlayingHarpBoleroAnim;
        } else if (cueId == ENXC_CUEID_PLAY_HARP_SERENADE) {
            animation = &gSheikPlayingHarpSerenadeAnim;
        } else if (cueId == ENXC_CUEID_PLAY_HARP_PRELUDE) {
            animation = &gSheikPlayingHarpPreludeAnim;
        } else { // ENXC_CUEID_PLAY_HARP
            animation = &gSheikPlayingHarpDefaultAnim;
        }
    }
    return animation;
}

void EnXc_CalcSpeedXZAccelerate(EnXc* this) {
    f32 timer = this->timer;
    f32* speedXZ = &this->actor.speed;

    // timer advances from 0 to 12
    if (timer < 9.0f) {
        *speedXZ = 0.0f;
    } else if (timer < 3.0f) {
        // Unreachable. Given the code, it seems that the condition should be
        // (timer < 12.0f) in order to accelerate from 0 to 1.2 in 3 steps
        *speedXZ = (((kREG(2) * 0.01f) + 1.2f) / 3.0f) * (timer - 9.0f);
    } else {
        *speedXZ = (kREG(2) * 0.01f) + 1.2f;
    }

    Actor_MoveXZGravity(&this->actor);
}

void EnXc_MoveXZGravity(EnXc* this) {
    Actor_MoveXZGravity(&this->actor);
}

void EnXc_CalcSpeedXZDecelerate(EnXc* this) {
    f32 timer = this->timer;
    f32* speedXZ = &this->actor.speed;

    if (timer < 3.0f) {
        *speedXZ = (((kREG(2) * 0.01f) + 1.2f) / 3.0f) * (3.0f - timer);
    } else {
        *speedXZ = 0.0f;
    }
    Actor_MoveXZGravity(&this->actor);
}

void EnXc_CalcSpeedXZAccelerate2(EnXc* this) {
    EnXc_CalcSpeedXZAccelerate(this);
}

void EnXc_MoveXZGravity2(EnXc* this) {
    Actor_MoveXZGravity(&this->actor);
}

void EnXc_CalcSpeedXZDecelerate2(EnXc* this) {
    EnXc_CalcSpeedXZDecelerate(this);
}

void EnXc_TeachSong1_Action0_CheckDemoStart_Test(EnXc* this, PlayState* play) {
    if (EnXc_MinuetCS(this, play) && EnXc_BoleroCS(this, play)) {
        this->action = SHEIK_ACTION_1_TEACH1_INVISIBLE;
    }
}

void EnXc_TeachSong1_WaitCue_GracefulFall(EnXc* this, PlayState* play) {
    s32 pad;
    CutsceneContext* csCtx = &play->csCtx;

    if (csCtx->state != 0) {
        CsCmdActorCue* cue = csCtx->actorCues[4];

        if (cue != NULL && cue->id == ENXC_CUEID_GRACEFUL_FALL) {
            s32 pad;
            Vec3f* pos = &this->actor.world.pos;
            SkelAnime* skelAnime = &this->skelAnime;
            f32 frameCount = Animation_GetLastFrame(&gSheikFallingFromSkyAnim);

            this->action = SHEIK_ACTION_2_TEACH1_GRACEFUL_FALL;
            this->drawMode = SHEIK_DRAW_DEFAULT;

            pos->x = cue->startPos.x;
            pos->y = cue->startPos.y;
            pos->z = cue->startPos.z;

            EnXc_FacePlayer(this, play);
            ActorMovement_func_80B3C964(this, play);
            Animation_Change(skelAnime, &gSheikFallingFromSkyAnim, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, 0.0f);
            EnXc_TeachSong1_PlaySfx_NA_SE_PL_SKIP(play);
        }
    }
}

void EnXc_TeachSong1_UpdateGracefulFall(EnXc* this, PlayState* play, s32 animFinished) {
    if (animFinished) {
        SkelAnime* skelAnime = &this->skelAnime;
        f32 frameCount = Animation_GetLastFrame(&gSheikWalkingAnim);

        Animation_Change(skelAnime, &gSheikWalkingAnim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, -8.0f);

        this->action = SHEIK_ACTION_3_TEACH1_START_WALK;
        this->timer = 0.0f;

        EnXc_DisableActorMovement(this);
        this->actor.gravity = -((kREG(1) * 0.01f) + 13.0f);
        this->actor.minVelocityY = -((kREG(1) * 0.01f) + 13.0f);
    } else {
        ActorMovement_func_80B3C8CC(this, play);
    }
}

void EnXc_TeachSong1_SetupWalkToPlayer(EnXc* this) {
    f32* timer = &this->timer;

    *timer += 1.0f;
    if (*timer >= 12.0f) {
        this->actor.speed = (kREG(2) * 0.01f) + 1.2f;
        this->action = SHEIK_ACTION_4_TEACH1_WALK_TO_PLAYER;
    }
}

void EnXc_TeachSong1_SetupStopWalk(EnXc* this) {
    SkelAnime* skelAnime = &this->skelAnime;
    f32 xzDistToPlayer = this->actor.xzDistToPlayer;

    if (xzDistToPlayer <= (kREG(3) + 95.0f)) {
        f32 frameCount = Animation_GetLastFrame(&gSheikIdleAnim);

        Animation_Change(skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, -12.0f);
        this->action = SHEIK_ACTION_5_TEACH1_STOP_WALK;
        this->timer = 0.0f;
    }
}

void EnXc_TeachSong1_SetupAction6_WaitCue_PullOutHarp(EnXc* this) {
    f32* timer = &this->timer;

    *timer += 1.0f;
    if (*timer >= 12.0f) {
        this->action = SHEIK_ACTION_6_TEACH1_WAIT_CUE_PULL_OUT_HARP;
        this->actor.speed = 0.0f;
    }
}

void EnXc_TeachSong1_WaitCue_PullOutHarp(EnXc* this, PlayState* play) {
    CsCmdActorCue* cue = EnXc_GetCue(play, 4);
    u16 cueId;

    if (cue != NULL) {
        cueId = cue->id;

        if (cueId == ENXC_CUEID_PLAY_HARP || cueId == ENXC_CUEID_PLAY_HARP_MINUET ||
            cueId == ENXC_CUEID_PLAY_HARP_BOLERO || cueId == ENXC_CUEID_PLAY_HARP_SERENADE ||
            cueId == ENXC_CUEID_PLAY_HARP_PRELUDE) {
            f32 frameCount = Animation_GetLastFrame(&gSheikPullingOutHarpAnim);

            Animation_Change(&this->skelAnime, &gSheikPullingOutHarpAnim, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, -4.0f);
            this->action = SHEIK_ACTION_7_TEACH1_PULL_OUT_HARP;
            this->drawMode = SHEIK_DRAW_PULLING_OUT_HARP;
        }
    }
}

void EnXc_TeachSong1_SetupAction8_PlayHarp_MoveToReady(EnXc* this, s32 animFinished) {
    SkelAnime* skelAnime;
    f32 frameCount;

    if (animFinished) {
        skelAnime = &this->skelAnime;
        frameCount = Animation_GetLastFrame(&gSheikMoveHandToReadyHarpAnim);
        Animation_Change(skelAnime, &gSheikMoveHandToReadyHarpAnim, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, 0.0f);
        this->action = SHEIK_ACTION_8_TEACH1_PLAY_HARP_MOVE_TO_READY;
        this->drawMode = SHEIK_DRAW_HARP;
    }
}

void EnXc_TeachSong1_SetupAction9_PlayHarp(EnXc* this, PlayState* play, s32 animFinished) {
    s32 pad;
    SkelAnime* skelAnime;
    AnimationHeader* animation;
    f32 frameCount;

    if (animFinished) {
        skelAnime = &this->skelAnime;
        animation = EnXc_GetHarpPlayingAnim(play, 4);
        frameCount = Animation_GetLastFrame(animation);
        Animation_Change(skelAnime, animation, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, -8.0f);
        this->action = SHEIK_ACTION_9_TEACH1_PLAY_HARP;
        this->drawMode = SHEIK_DRAW_HARP;
    }
}

void EnXc_TeachSong1_WaitCue_PlayHarp_Freeze(EnXc* this, PlayState* play) {
    f32 frameCount;

    if (play->csCtx.state != CS_STATE_IDLE) {
        CsCmdActorCue* cue = play->csCtx.actorCues[4];

        if (cue != NULL && cue->id == ENXC_CUEID_PLAY_HARP_STALL) {
            frameCount = Animation_GetLastFrame(&gSheikMoveHandToReadyHarpAnim);
            Animation_Change(&this->skelAnime, &gSheikMoveHandToReadyHarpAnim, 0.0f, frameCount, frameCount,
                             ANIMMODE_LOOP, -8.0f);
            this->action = SHEIK_ACTION_10_TEACH1_PLAY_HARP_FREEZE;
        }
    }
}

void EnXc_TeachSong1_WaitCue_PlayOrPutAway(EnXc* this, PlayState* play) {
    f32 curFrame;
    f32 animFrameCount;

    if (EnXc_CheckForCue(this, play, ENXC_CUEID_PUT_AWAY_HARP, 4)) {
        curFrame = this->skelAnime.curFrame;
        animFrameCount = this->skelAnime.endFrame;
        if (curFrame >= animFrameCount) {
            s32 pad;

            Animation_Change(&this->skelAnime, &gSheikMoveHandToReadyHarpAnim, -1.0f,
                             Animation_GetLastFrame(&gSheikMoveHandToReadyHarpAnim), 0.0f, ANIMMODE_ONCE, 0.0f);
            this->action = SHEIK_ACTION_11_TEACH1_PLAY_HARP_RETURN_FROM_READY;
        }
    } else if (EnXc_CheckForNoCue(this, play, ENXC_CUEID_PLAY_HARP_STALL, 4)) {
        EnXc_TeachSong1_SetupAction9_PlayHarp(this, play, true);
    }
}

void EnXc_TeachSong1_SetupAction12_PutAwayHarp(EnXc* this, s32 animFinished) {
    if (animFinished) {
        Animation_Change(&this->skelAnime, &gSheikPullingOutHarpAnim, -1.0f,
                         Animation_GetLastFrame(&gSheikPullingOutHarpAnim), 0.0f, ANIMMODE_ONCE, 0.0f);
        this->action = SHEIK_ACTION_12_TEACH1_PUT_AWAY_HARP;
        this->drawMode = SHEIK_DRAW_PULLING_OUT_HARP;
    }
}

void EnXc_TeachSong1_SetupAction13_Idle(EnXc* this, s32 animFinished) {
    if (animFinished) {
        Animation_Change(&this->skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gSheikIdleAnim),
                         ANIMMODE_LOOP, 0.0f);
        this->action = SHEIK_ACTION_13_TEACH1_IDLE;
        this->drawMode = SHEIK_DRAW_DEFAULT;
        this->timer = 0.0f;
    }
}

void EnXc_TeachSong1_WaitCue_WalkBack(EnXc* this, PlayState* play) {
    if (play->csCtx.state != CS_STATE_IDLE) {
        CsCmdActorCue* cue = play->csCtx.actorCues[4];

        if (cue != NULL && cue->id == ENXC_CUEID_BACK_AWAY) {
            Animation_Change(&this->skelAnime, &gSheikWalkingAnim, -1.0f, Animation_GetLastFrame(&gSheikWalkingAnim),
                             0.0f, ANIMMODE_LOOP, -12.0f);
            this->action = SHEIK_ACTION_14_TEACH1_START_WALK_BACK;
            this->actor.world.rot.y += 0x8000;
            this->timer = 0.0f;
        }
    }
}

void EnXc_TeachSong1_SetWalkBack(EnXc* this) {
    this->timer++;
    if (this->timer >= 12.0f) {
        this->actor.speed = (kREG(2) * 0.01f) + 1.2f;
        this->action = SHEIK_ACTION_15_TEACH1_WALK_BACK;
    }
}

void EnXc_TeachSong1_SetupStopWalkBack(EnXc* this) {
    f32 xzDistToPlayer = this->actor.xzDistToPlayer;

    if (xzDistToPlayer >= kREG(5) + 140.0f) {
        Animation_Change(&this->skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gSheikIdleAnim),
                         ANIMMODE_LOOP, -12.0f);
        this->action = SHEIK_ACTION_16_TEACH1_STOP_WALK_BACK;
        this->timer = 0.0f;
    }
}

void EnXc_TeachSong1_SetupAction17_ThrowNut(EnXc* this) {
    this->timer++;
    if (this->timer >= 12.0f) {
        Animation_Change(&this->skelAnime, &gSheikThrowingNutAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gSheikThrowingNutAnim), ANIMMODE_ONCE, 0.0f);
        this->action = SHEIK_ACTION_17_TEACH1_THROW_NUT;
        this->timer = 0.0f;
        this->actor.speed = 0.0f;
    }
}

void EnXc_TeachSong1_SetupAction18_Vanish(EnXc* this, PlayState* play) {
    this->timer++;
    if (this->timer >= 30.0f) {
        this->action = SHEIK_ACTION_18_TEACH1_VANISH;
        EnXc_SpawnNut(this, play);
    }
}

void EnXc_TeachSong1_WaitCue_Vanish(EnXc* this, PlayState* play) {
    if (play->csCtx.state != CS_STATE_IDLE) {
        CsCmdActorCue* cue = play->csCtx.actorCues[4];

        if (cue != NULL && cue->id == ENXC_CUEID_VANISH) {
            s16 sceneId = play->sceneId;

            // In the BoleroCs, she uses the flames to exit
            if (sceneId == SCENE_DEATH_MOUNTAIN_CRATER) {
                s32 pad;

                this->action = SHEIK_ACTION_19_TEACH1_CLEANUP_EFF_FLAME;
                this->drawMode = SHEIK_DRAW_NOTHING;
                this->actor.shape.shadowAlpha = 0;
            } else {
                Actor_Kill(&this->actor);
            }
        }
    }
}

void EnXc_TeachSong1_Action0_CheckDemoStart(EnXc* this, PlayState* play) {
    EnXc_SetColossusAppearSFX(this, play);
    EnXc_SetColossusWindSFX(play);
    EnXc_TeachSong1_Action0_CheckDemoStart_Test(this, play);
}

void EnXc_TeachSong1_Action1_Invisible(EnXc* this, PlayState* play) {
    EnXc_SetColossusAppearSFX(this, play);
    EnXc_SetColossusWindSFX(play);
    EnXc_TeachSong1_WaitCue_GracefulFall(this, play);
}

void EnXc_TeachSong1_Action2_GracefulFall(EnXc* this, PlayState* play) {
    s32 animFinished = EnXc_SkelAnime_Update(this);

    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetLandingSFX(this, play);
    EnXc_SetColossusAppearSFX(this, play);
    EnXc_SetColossusWindSFX(play);
    EnXc_TeachSong1_UpdateGracefulFall(this, play, animFinished);
}

void EnXc_TeachSong1_Action3_StartWalk(EnXc* this, PlayState* play) {
    EnXc_CalcSpeedXZAccelerate(this);
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, play);
    EnXc_TeachSong1_SetupWalkToPlayer(this);
}

void EnXc_TeachSong1_Action4_WalkToPlayer(EnXc* this, PlayState* play) {
    EnXc_MoveXZGravity(this);
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, play);
    EnXc_TeachSong1_SetupStopWalk(this);
}

void EnXc_TeachSong1_Action5_StopWalk(EnXc* this, PlayState* play) {
    EnXc_CalcSpeedXZDecelerate(this);
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, play);
    EnXc_TeachSong1_SetupAction6_WaitCue_PullOutHarp(this);
}

void EnXc_TeachSong1_Action6_WaitCue_PullOutHarp(EnXc* this, PlayState* play) {
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_TeachSong1_WaitCue_PullOutHarp(this, play);
}

void EnXc_TeachSong1_Action7_PullOutHarp(EnXc* this, PlayState* play) {
    s32 animFinished = EnXc_SkelAnime_Update(this);

    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_TeachSong1_SetupAction8_PlayHarp_MoveToReady(this, animFinished);
}

void EnXc_TeachSong1_Action8_PlayHarp_MoveToReady(EnXc* this, PlayState* play) {
    s32 animFinished = EnXc_SkelAnime_Update(this);

    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_TeachSong1_SetupAction9_PlayHarp(this, play, animFinished);
}

void EnXc_TeachSong1_Action9_PlayHarp(EnXc* this, PlayState* play) {
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_TeachSong1_WaitCue_PlayHarp_Freeze(this, play);
}

void EnXc_TeachSong1_Action10_PlayHarp_Freeze(EnXc* this, PlayState* play) {
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_TeachSong1_WaitCue_PlayOrPutAway(this, play);
}

void EnXc_TeachSong1_Action11_PlayHarp_ReturnFromReady(EnXc* this, PlayState* play) {
    s32 animFinished = EnXc_SkelAnime_Update(this);

    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_TeachSong1_SetupAction12_PutAwayHarp(this, animFinished);
}

void EnXc_TeachSong1_Action12_PutAwayHarp(EnXc* this, PlayState* play) {
    s32 animFinished = EnXc_SkelAnime_Update(this);

    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_TeachSong1_SetupAction13_Idle(this, animFinished);
}

void EnXc_TeachSong1_Action13_Idle(EnXc* this, PlayState* play) {
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_UpdateBoleroEffFlame(this, play);
    EnXc_TeachSong1_WaitCue_WalkBack(this, play);
}

void EnXc_TeachSong1_Action14_StartWalkBack(EnXc* this, PlayState* play) {
    EnXc_CalcSpeedXZAccelerate2(this);
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, play);
    EnXc_UpdateBoleroEffFlame(this, play);
    EnXc_TeachSong1_SetWalkBack(this);
}

void EnXc_TeachSong1_Action15_WalkBack(EnXc* this, PlayState* play) {
    EnXc_MoveXZGravity2(this);
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, play);
    EnXc_UpdateBoleroEffFlame(this, play);
    EnXc_TeachSong1_SetupStopWalkBack(this);
}

void EnXc_TeachSong1_Action16_StopWalkBack(EnXc* this, PlayState* play) {
    EnXc_CalcSpeedXZDecelerate2(this);
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, play);
    EnXc_UpdateBoleroEffFlame(this, play);
    EnXc_TeachSong1_SetupAction17_ThrowNut(this);
}

void EnXc_TeachSong1_Action17_ThrowNut(EnXc* this, PlayState* play) {
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetNutThrowSFX(this, play);
    EnXc_UpdateBoleroEffFlame(this, play);
    EnXc_TeachSong1_SetupAction18_Vanish(this, play);
}

void EnXc_TeachSong1_Action18_Vanish(EnXc* this, PlayState* play) {
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_UpdateBoleroEffFlame(this, play);
    EnXc_TeachSong1_WaitCue_Vanish(this, play);
}

void EnXc_TeachSong1_Action19_CleanupEffFlame(EnXc* this, PlayState* play) {
    EnXc_UpdateBoleroEffFlame(this, play);
}

void EnXc_ReplaceLeftHandWithHarp(Gfx** dList, EnXc* this) {
    f32 currentFrame = this->skelAnime.curFrame;

    if (currentFrame >= 34.0f) {
        *dList = gSheikLeftHandHarpDL;
    }
}

s32 EnXc_PullingOutHarpOverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                        void* thisx) {
    EnXc* this = (EnXc*)thisx;

    if (limbIndex == 12) {
        EnXc_ReplaceLeftHandWithHarp(dList, this);
    }

    return 0;
}

s32 EnXc_HarpOverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnXc* this = (EnXc*)thisx;

    if (limbIndex == 12) {
        *dList = gSheikLeftHandHarpDL;
    }

    return 0;
}

void EnXc_DrawPullingOutHarp(Actor* thisx, PlayState* play) {
    EnXc* this = (EnXc*)thisx;
    s32 pad;
    s16 eyePattern = this->eyeIdx;
    void* eyeTexture = sEyeTextures[eyePattern];
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    s32 pad2;

    OPEN_DISPS(gfxCtx, "../z_en_oA2_inSpot05.c", 1444);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTexture));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeTexture));
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 20, 0);
    gDPSetEnvColor(POLY_OPA_DISP++, 60, 0, 0, 0);

    Gfx_SetupDL_25Opa(gfxCtx);
    func_8002EBCC(&this->actor, play, 0);
    SkelAnime_DrawFlexOpa(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount,
                          EnXc_PullingOutHarpOverrideLimbDraw, NULL, this);
    CLOSE_DISPS(gfxCtx, "../z_en_oA2_inSpot05.c", 1497);
}

void EnXc_DrawHarp(Actor* thisx, PlayState* play) {
    EnXc* this = (EnXc*)thisx;
    s32 pad;
    s16 eyePattern = this->eyeIdx;
    void* eyeTexture = sEyeTextures[eyePattern];
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    s32 pad2;

    OPEN_DISPS(gfxCtx, "../z_en_oA2_inSpot05.c", 1511);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTexture));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeTexture));
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 20, 0);
    gDPSetEnvColor(POLY_OPA_DISP++, 60, 0, 0, 0);

    Gfx_SetupDL_25Opa(gfxCtx);
    func_8002EBCC(&this->actor, play, 0);
    SkelAnime_DrawFlexOpa(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount,
                          EnXc_HarpOverrideLimbDraw, NULL, this);
    CLOSE_DISPS(gfxCtx, "../z_en_oA2_inSpot05.c", 1564);
}

void EnXc_StartDemoFirstAdult_Action20(EnXc* this, PlayState* play) {
    this->action = SHEIK_ACTION_20_DEMO_START;
}

void EnXc_SetAction21(EnXc* this) {
    this->action = SHEIK_ACTION_21_INVISIBLE;
}

// Wait for ENXC_CUEID_IDLE to end, then set Sheik to appear and advance to next action
// Statewise, Sheik starts invisible, so we either
// 1) Wait for ENXC_CUEID_IDLE to complete, then make her appear
// 2) "Start" visible by setting position and draw
void EnXc_Action21_WaitCue_Idle(EnXc* this, PlayState* play) {
    CutsceneContext* csCtx = &play->csCtx;

    if (csCtx->state != 0) {
        CsCmdActorCue* cue = csCtx->actorCues[4];

        if ((cue != NULL) && (cue->id != ENXC_CUEID_IDLE)) {
            // ENXC_CUEID_APPEAR
            PosRot* posRot = &this->actor.world;
            Vec3i* startPos = &cue->startPos;
            ActorShape* shape = &this->actor.shape;

            posRot->pos.x = startPos->x;
            posRot->pos.y = startPos->y;
            posRot->pos.z = startPos->z;

            posRot->rot.y = shape->rot.y = cue->rot.y;

            this->action = SHEIK_ACTION_22_IDLE;
            this->drawMode = SHEIK_DRAW_DEFAULT;
        }
    }
}

void EnXc_Action22_CueBehavior(EnXc* this, PlayState* play) {
    CutsceneContext* csCtx = &play->csCtx;

    if (csCtx->state != 0) {
        CsCmdActorCue* cue = csCtx->actorCues[4];

        if (cue != NULL && cue->id != ENXC_CUEID_APPEAR) {
            EnXc_SetAction79_BlockPedestal(this);
        }
    }
}

void EnXc_Action23_SetWalkBack(EnXc* this) {
    this->timer++;
    if (this->timer >= 12.0f) {
        this->actor.speed = kREG(2) * 0.01f + 1.2f;
        this->action = SHEIK_ACTION_24;
    }
}

void EnXc_Action20_DemoStart(EnXc* this, PlayState* play) {
    EnXc_SetAction21(this);
}

void EnXc_Action21_Invisible(EnXc* this, PlayState* play) {
    EnXc_Action21_WaitCue_Idle(this, play);
}

void EnXc_Action22_Idle(EnXc* this, PlayState* play) {
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_Action22_CueBehavior(this, play);
}

void EnXc_Action23_StartWalkBack(EnXc* this, PlayState* play) {
    EnXc_CalcSpeedXZAccelerate2(this);
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, play);
    EnXc_Action23_SetWalkBack(this);
}

// Unreachable. Based on existing logic, this could have been a WalkBack action.
void EnXc_Action24(EnXc* this, PlayState* play) {
}

void EnXc_Action25(EnXc* this, PlayState* play) {
}

void EnXc_Action26(EnXc* this, PlayState* play) {
}

void EnXc_Action27(EnXc* this, PlayState* play) {
}

void EnXc_Action28(EnXc* this, PlayState* play) {
}

void EnXc_StartDemoTeachSong2_Action29(EnXc* this, PlayState* play) {
    this->action = SHEIK_ACTION_29_TEACH2_CHECK_DEMO_START;
}

void EnXc_TeachSong2_Action29_CheckDemoStart_Test(EnXc* this, PlayState* play) {
    // Temple of Time - Demo 2 - Learn Prelude
    if (EnXc_SerenadeCS(this, play)) {
        this->action = SHEIK_ACTION_30_TEACH2_INVISIBLE;
    }
}

void EnXc_WhenNext_Action31(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_30_TEACH2_INVISIBLE, SHEIK_ACTION_31_TEACH2_WAIT_CUE_PULL_OUT_HARP);
}

void EnXc_WhenNext_Action32(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_31_TEACH2_WAIT_CUE_PULL_OUT_HARP, SHEIK_ACTION_32_TEACH2_PULL_OUT_HARP);
}

void EnXc_WhenNext_Action33(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_32_TEACH2_PULL_OUT_HARP, SHEIK_ACTION_33_TEACH2_PLAY_HARP_MOVE_TO_READY);
}

void EnXc_WhenNext_Action34(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_33_TEACH2_PLAY_HARP_MOVE_TO_READY, SHEIK_ACTION_34_TEACH2_PLAY_HARP);
}

void EnXc_WhenNext_Action35(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_34_TEACH2_PLAY_HARP, SHEIK_ACTION_35_TEACH2_PLAY_HARP_FREEZE);
}

void EnXc_WhenNext_Action36OrAction34(EnXc* this) {
    EnXc_CheckHarpPutawayAndBranch(this, SHEIK_ACTION_35_TEACH2_PLAY_HARP_FREEZE,
                                   SHEIK_ACTION_36_TEACH2_PLAY_HARP_RETURN_FROM_READY,
                                   SHEIK_ACTION_34_TEACH2_PLAY_HARP);
}

void EnXc_WhenNext_Action37(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_36_TEACH2_PLAY_HARP_RETURN_FROM_READY,
                           SHEIK_ACTION_37_TEACH2_PUT_HARP_AWAY);
}

void EnXc_WhenNext_Action38(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_37_TEACH2_PUT_HARP_AWAY, SHEIK_ACTION_38_TEACH2_IDLE);
}

void EnXc_WhenNext_Action39(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_38_TEACH2_IDLE, SHEIK_ACTION_39_TEACH2_START_WALK_BACK);
}

void EnXc_WhenNext_Action40(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_39_TEACH2_START_WALK_BACK, SHEIK_ACTION_40_TEACH2_WALK_BACK);
}

void EnXc_TeachSong2_SetupStopWalkBack(EnXc* this) {
    f32 xzDistToPlayer = this->actor.xzDistToPlayer;

    if (xzDistToPlayer >= kREG(5) + 140.0f) {
        Animation_Change(&this->skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gSheikIdleAnim),
                         ANIMMODE_LOOP, -12.0f);
        this->action = SHEIK_ACTION_41_TEACH2_STOP_WALK_BACK;
        this->timer = 0.0f;
    }
}

void EnXc_WhenNext_Action42(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_41_TEACH2_STOP_WALK_BACK, SHEIK_ACTION_42_TEACH2_THROW_NUT);
}

void EnXc_WhenNext_Action43(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_42_TEACH2_THROW_NUT, SHEIK_ACTION_43_TEACH2_VANISH);
}

void EnXc_WhenNext_Action44(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_43_TEACH2_VANISH, SHEIK_ACTION_44_TEACH2_CLEANUP_EFF_FLAME);
}

void EnXc_TeachSong2_Action29_CheckDemoStart(EnXc* this, PlayState* play) {
    EnXc_TeachSong2_Action29_CheckDemoStart_Test(this, play);
}

void EnXc_TeachSong2_Action30_Invisible(EnXc* this, PlayState* play) {
    EnXc_Action21_Invisible(this, play);
    EnXc_WhenNext_Action31(this);
}

void EnXc_TeachSong2_Action31_WaitCue_PullOutHarp(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action6_WaitCue_PullOutHarp(this, play);
    EnXc_SetPosRotByCueStart(this, play, 4);
    EnXc_WhenNext_Action32(this);
}

void EnXc_TeachSong2_Action32_PullOutHarp(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action7_PullOutHarp(this, play);
    EnXc_WhenNext_Action33(this);
}

void EnXc_TeachSong2_Action33_PlayHarp_MoveToReady(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action8_PlayHarp_MoveToReady(this, play);
    EnXc_WhenNext_Action34(this);
}

void EnXc_TeachSong2_Action34_PlayHarp(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action9_PlayHarp(this, play);
    EnXc_WhenNext_Action35(this);
}

void EnXc_TeachSong2_Action35_PlayHarp_Freeze(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action10_PlayHarp_Freeze(this, play);
    EnXc_WhenNext_Action36OrAction34(this);
}

void EnXc_TeachSong2_Action36_PlayHarp_ReturnFromReady(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action11_PlayHarp_ReturnFromReady(this, play);
    EnXc_WhenNext_Action37(this);
}

void EnXc_TeachSong2_Action37_PutHarpAway(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action12_PutAwayHarp(this, play);
    EnXc_WhenNext_Action38(this);
}

void EnXc_TeachSong2_Action38_Idle(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action13_Idle(this, play);
    EnXc_WhenNext_Action39(this);
}

void EnXc_TeachSong2_Action39_StartWalkBack(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action14_StartWalkBack(this, play);
    EnXc_WhenNext_Action40(this);
}

void EnXc_TeachSong2_Action40_WalkBack(EnXc* this, PlayState* play) {
    EnXc_MoveXZGravity2(this);
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, play);
    EnXc_TeachSong2_SetupStopWalkBack(this);
}

void EnXc_TeachSong2_Action41_StopWalkBack(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action16_StopWalkBack(this, play);
    EnXc_WhenNext_Action42(this);
}

void EnXc_TeachSong2_Action42_ThrowNut(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action17_ThrowNut(this, play);
    EnXc_WhenNext_Action43(this);
}

void EnXc_TeachSong2_Action43_Vanish(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action18_Vanish(this, play);
    EnXc_WhenNext_Action44(this);
}

void EnXc_TeachSong2_Action44_CleanupEffFlame(EnXc* this, PlayState* play) {
}

void EnXc_StartLakeCs_Action45(EnXc* this, PlayState* play) {
    this->action = SHEIK_ACTION_45_LAKECS_DEMO_START;
}

void EnXc_LakeCs_PlaySfx_NA_SE_PL_SKIP(void) {
    Sfx_PlaySfxCentered2(NA_SE_PL_SKIP);
}

#pragma increment_block_number "gc-eu:64 gc-eu-mq:64 gc-jp:64 gc-jp-ce:64 gc-jp-mq:64 gc-us:64 gc-us-mq:64 ique-cn:64" \
                               "ntsc-1.0:64 ntsc-1.1:64 ntsc-1.2:64 pal-1.0:64 pal-1.1:64"

void EnXc_PlayDiveSFX(Vec3f* src, PlayState* play) {
    static Vec3f D_80B42DA0;
    f32 wDest[2];

    SkinMatrix_Vec3fMtxFMultXYZW(&play->viewProjectionMtxF, src, &D_80B42DA0, wDest);
    Sfx_PlaySfxAtPos(&D_80B42DA0, NA_SE_EV_DIVE_INTO_WATER);
}

void EnXc_LakeCs_DiveSplash(PlayState* play) {
    CsCmdActorCue* cue = cue = EnXc_GetCue(play, 0);

    // Cue should already be a valid ENXC_EFF_SPLASH_CUEID_3 cue
    if (cue != NULL) {
        Vec3f startPos;

        startPos.x = cue->startPos.x;
        startPos.y = cue->startPos.y;
        startPos.z = cue->startPos.z;

        EffectSsGRipple_Spawn(play, &startPos, 100, 500, 0);
        EffectSsGRipple_Spawn(play, &startPos, 100, 500, 10);
        EffectSsGRipple_Spawn(play, &startPos, 100, 500, 20);
        EffectSsGSplash_Spawn(play, &startPos, NULL, NULL, 1, 0);
        EnXc_PlayDiveSFX(&startPos, play);
    }
}

void EnXc_LakeCs_BlueWarpSpawn(PlayState* play) {
    CutsceneContext* csCtx = &play->csCtx;
    u16 csCurFrame = csCtx->curFrame;

    if (csCurFrame == 310) {
        Actor_Spawn(&play->actorCtx, play, ACTOR_DOOR_WARP1, -1044.0f, -1243.0f, 7458.0f, 0, 0, 0, WARP_DESTINATION);
    }
}

void EnXc_LakeCs_UpdateEffSplash(EnXc* this, PlayState* play) {
    static s32 sLastCueId = ENXC_EFF_SPLASH_CUEID_1;
    CsCmdActorCue* cue = EnXc_GetCue(play, 0);

    if (cue != NULL) {
        s32 cueId = cue->id;

        if (cueId != sLastCueId) {
            switch (cueId) {
                case ENXC_EFF_SPLASH_CUEID_2:
                    EnXc_LakeCs_PlaySfx_NA_SE_PL_SKIP();
                    break;
                case ENXC_EFF_SPLASH_CUEID_3:
                    EnXc_LakeCs_DiveSplash(play);
                    break;
                default:
                    break;
            }
            sLastCueId = cueId;
        }
    }
}

void EnXc_WhenNext_Action46(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_45_LAKECS_DEMO_START, SHEIK_ACTION_46_LAKECS_INVISIBLE);
}

void EnXc_WhenNext_Action47(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_46_LAKECS_INVISIBLE, SHEIK_ACTION_47_LAKECS_IDLE);
}

void EnXc_LakeCs_WaitCue_WalkBack(EnXc* this, PlayState* play) {
    if (EnXc_CheckForCue(this, play, ENXC_CUEID_BACK_AWAY, 4)) {
        EnXc_ChangeAnimation(this, &gSheikWalkingAnim, ANIMMODE_LOOP, -12.0f, true);
        this->action = SHEIK_ACTION_48_LAKECS_START_WALK_BACK;
        this->actor.world.rot.y += 0x8000;
        this->timer = 0.0f;
    }
}

void EnXc_WhenNext_Action49(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_48_LAKECS_START_WALK_BACK, SHEIK_ACTION_49_LAKECS_WALK_BACK);
}

void EnXc_LakeCs_WaitCue_Kneel(EnXc* this, PlayState* play) {
    if (EnXc_CheckForCue(this, play, ENXC_CUEID_KNEEL, 4)) {
        EnXc_ChangeAnimation(this, &gSheikKneelingAnim, ANIMMODE_LOOP, 0.0f, false);
        this->action = SHEIK_ACTION_50_LAKECS_KNEEL_ON_TREE;
    }
}

void EnXc_LakeCs_WaitCue_Dive(EnXc* this, PlayState* play) {
    if (EnXc_CheckForCue(this, play, ENXC_CUEID_DIVE, 4)) {
        EnXc_ChangeAnimation(this, &gSheikDiveAnim, ANIMMODE_LOOP, 0.0f, false);
        this->action = SHEIK_ACTION_51_LAKECS_DIVE;
        EnXc_SetPosRotByCueStart(this, play, 4);
    }
}

void EnXc_LakeCs_WaitCue_Vanish(EnXc* this, PlayState* play) {
    if (EnXc_CheckForCue(this, play, ENXC_CUEID_VANISH, 4)) {
        this->action = SHEIK_ACTION_52_LAKECS_CLEANUP_EFF_SPLASH;
        this->drawMode = SHEIK_DRAW_NOTHING;
    }
}

void EnXc_LakeCs_Action45_DemoStart(EnXc* this, PlayState* play) {
    EnXc_Action20_DemoStart(this, play);
    EnXc_WhenNext_Action46(this);
}

void EnXc_LakeCs_Action46_Invisible(EnXc* this, PlayState* play) {
    EnXc_Action21_Invisible(this, play);
    EnXc_WhenNext_Action47(this);
}

void EnXc_LakeCs_Action47_Idle(EnXc* this, PlayState* play) {
    EnXc_LakeCs_BlueWarpSpawn(play);
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetPosRotByCueStart(this, play, 4);
    EnXc_LakeCs_WaitCue_WalkBack(this, play);
}

void EnXc_LakeCs_Action48_StartWalkBack(EnXc* this, PlayState* play) {
    EnXc_Action23_StartWalkBack(this, play);
    EnXc_WhenNext_Action49(this);
}

void EnXc_LakeCs_Action49_WalkBack(EnXc* this, PlayState* play) {
    EnXc_MoveXZGravity2(this);
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, play);
    EnXc_LakeCs_WaitCue_Kneel(this, play);
}

void EnXc_LakeCs_Action50_KneelOnTree(EnXc* this, PlayState* play) {
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_LakeCs_UpdateEffSplash(this, play);
    EnXc_SetPosRotByCueStart(this, play, 4);
    EnXc_LakeCs_WaitCue_Dive(this, play);
}

void EnXc_LakeCs_Action51_Dive(EnXc* this, PlayState* play) {
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_LakeCs_UpdateEffSplash(this, play);
    EnXc_SetPosByCueLerp(this, play, 4);
    EnXc_LakeCs_WaitCue_Vanish(this, play);
}

void EnXc_LakeCs_Action52_CleanupEffSplash(EnXc* this, PlayState* play) {
    EnXc_LakeCs_UpdateEffSplash(this, play);
}

void EnXc_StartTransform_Action53(EnXc* this, PlayState* play) {
    this->action = SHEIK_ACTION_53_TRANSFORM_INVISIBLE;
    this->triforceAngle = kREG(24) + 0x53FC;
}

void EnXc_PlayTransformCutsceneEffectsSequence(void) {
    Audio_PlayCutsceneEffectsSequence(SEQ_CS_EFFECTS_SHEIK_TRANSFORM);
}

void EnXc_PlayTriforceSFX(Actor* thisx, PlayState* play) {
    EnXc* this = (EnXc*)thisx;

    if (this->canPlayTriforceMarkSfx) {
        s32 pad;
        Vec3f src;
        Vec3f pos;
        Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
        f32 wDest;

        Matrix_MultVec3f(&zeroVec, &src);
        SkinMatrix_Vec3fMtxFMultXYZW(&play->viewProjectionMtxF, &src, &pos, &wDest);
        SfxSource_PlaySfxAtFixedWorldPos(play, &pos, 80, NA_SE_EV_TRIFORCE_MARK);
        this->canPlayTriforceMarkSfx = false;
    }
}

void EnXc_Transform_Sfx(EnXc* this) {
    if (Animation_OnFrame(&this->skelAnime, 38.0f)) {
        Sfx_PlaySfxAtPos(&this->actor.projectedPos, NA_SE_VO_SK_SHOUT);
        EnXc_PlayTransformCutsceneEffectsSequence();
    }
}

void EnXc_UpdateTriforceMark(Actor* thisx, PlayState* play) {
    EnXc* this = (EnXc*)thisx;

    if (EnXc_CheckForCue(this, play, ENXC_CUEID_TRANSFORM_REVEAL_TRIFORCE_MARK, 4)) {
        this->triforceMarkAnimState = 1;
        if (!this->triggerOnceTriforceMarkSfx) {
            this->triggerOnceTriforceMarkSfx = true;
            this->canPlayTriforceMarkSfx = true;
        }
    } else if (EnXc_CheckForCue(this, play, ENXC_CUEID_PUSHUP_PRONE_OR_TRIFORCE_MARK2, 4)) {
        this->triforceMarkAnimState = 2;
    }
    if (this->triforceMarkAnimState != 0) {
        f32* timer = &this->timer;
        s32* prim = this->triforcePrimColor;
        s32* env = this->triforceEnvColor;
        f32* scale = this->triforceScale;

        if (this->triforceMarkAnimState == 1) {
            // Timer 0 to 40
            if (*timer < kREG(25) + 40.0f) {
                f32 div = *timer / (kREG(25) + 40.0f);

                prim[2] = -85.0f * div + 255; // Step from 255 to 170
                prim[3] = 255.0f * div;       // Step from 0 to 255
                env[1] = 100.0f * div + 100;  // Step from 100 to 200

                *timer += 1.0f;
            } else {
                prim[2] = 170;
                prim[3] = 255;
                env[1] = 200;
            }
            scale[0] = kREG(19) * 0.1f + 40.0f;
            scale[1] = kREG(20) * 0.1f + 40.0f;
            scale[2] = kREG(21) * 0.1f + 40.0f;
        } else if (this->triforceMarkAnimState == 2) {
            // Timer 40 to 130
            f32 maxTime = (kREG(25) + 40.0f) + (kREG(27) + 90.0f);

            if (*timer < maxTime) {
                // div ranges from 0/90 to 89/90
                f32 div = (*timer - (kREG(25) + 40.0f)) / (kREG(27) + 90.0f);

                // scale up from 40 to 2040
                scale[0] = (kREG(19) * 0.1f + 40.0f) + div * ((kREG(26) + 50.0f) * (kREG(19) * 0.1f + 40.0f));
                scale[1] = (kREG(20) * 0.1f + 40.0f) + div * ((kREG(26) + 50.0f) * (kREG(20) * 0.1f + 40.0f));
                scale[2] = (kREG(21) * 0.1f + 40.0f) + div * ((kREG(26) + 50.0f) * (kREG(21) * 0.1f + 40.0f));
                *timer += 1.0f;
            } else {
                // scale 2000
                scale[0] = (kREG(19) * 0.1f + 40.0f) * (kREG(26) + 50.0f);
                scale[1] = (kREG(20) * 0.1f + 40.0f) * (kREG(26) + 50.0f);
                scale[2] = (kREG(21) * 0.1f + 40.0f) * (kREG(26) + 50.0f);
            }
            this->triforceAngle += (s16)(kREG(28) + 0x2EE0);
        }
    }
}

void EnXc_Action53_WaitCue(EnXc* this, PlayState* play) {
    if (EnXc_CheckForNoCue(this, play, ENXC_CUEID_IDLE, 4)) {
        // ENXC_CUEID_APPEAR
        CutsceneContext* csCtx = &play->csCtx;

        if (csCtx->state != 0) {
            CsCmdActorCue* cue = play->csCtx.actorCues[4];

            if (cue != NULL) {
                PosRot* posRot = &this->actor.world;
                ActorShape* shape = &this->actor.shape;
                Vec3i* startPos = &cue->startPos;

                posRot->pos.x = startPos->x;
                posRot->pos.y = startPos->y;
                posRot->pos.z = startPos->z;

                posRot->rot.y = shape->rot.y = cue->rot.y;
            }
        }

        this->action = SHEIK_ACTION_54_TRANSFORM_IDLE;
        this->drawMode = SHEIK_DRAW_DEFAULT;
    }
}

void EnXc_Action54_WaitCue_TransformPose(EnXc* this, PlayState* play) {
    if (EnXc_CheckForCue(this, play, ENXC_CUEID_TRANSFORM_POSE, 4)) {
        Animation_Change(&this->skelAnime, &gSheikShowingTriforceOnHandAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gSheikShowingTriforceOnHandAnim), ANIMMODE_ONCE, -8.0f);
        this->action = SHEIK_ACTION_55_TRANSFORM_SHOW_TRIFORCE_MARK;
        this->drawMode = SHEIK_DRAW_TRIFORCE;
    }
}

void EnXc_SetupShowTriforceIdleAction(EnXc* this, s32 animFinished) {
    if (animFinished) {
        Animation_Change(&this->skelAnime, &gSheikShowingTriforceOnHandIdleAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gSheikShowingTriforceOnHandIdleAnim), ANIMMODE_LOOP, 0.0f);
        this->action = SHEIK_ACTION_56_TRANSFORM_SHOW_TRIFORCE_MARK_IDLE;
    }
}
void EnXc_Transform_WaitCue_Vanish(EnXc* this, PlayState* play) {
    if (EnXc_CheckForCue(this, play, ENXC_CUEID_VANISH, 4)) {
        Actor_Kill(&this->actor);
    }
}

void EnXc_Transform_Action53_Invisible(EnXc* this, PlayState* play) {
    EnXc_Action53_WaitCue(this, play);
}

void EnXc_Transform_Action54_Idle(EnXc* this, PlayState* play) {
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_Action54_WaitCue_TransformPose(this, play);
#if DEBUG_FEATURES
    EnXc_Debug_RestartAction53_IfNoCS(this, play);
#endif
}

void EnXc_Transform_Action55_ShowTriforceMark(EnXc* this, PlayState* play) {
    s32 animFinished = EnXc_SkelAnime_Update(this);

    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_UpdateTriforceMark(&this->actor, play);
    EnXc_Transform_Sfx(this);
    EnXc_SetupShowTriforceIdleAction(this, animFinished);
#if DEBUG_FEATURES
    EnXc_Debug_RestartAction53_IfNoCS(this, play);
#endif
}

void EnXc_Transform_Action56_ShowTriforceMarkIdle(EnXc* this, PlayState* play) {
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_UpdateTriforceMark(&this->actor, play);
    EnXc_Transform_WaitCue_Vanish(this, play);
}

s32 EnXc_TriforceOverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    if (limbIndex == 15) {
        *dList = gSheikRightHandSpreadFingersDL;
    }
    return 0;
}

void EnXc_TriforcePostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    s32 pad[2];
    EnXc* this = (EnXc*)thisx;

    if (limbIndex == 15) {
        Vec3f vec = { 0.0f, 0.0f, 0.0f };
        EnXc_PlayTriforceSFX(&this->actor, play);
        Matrix_MultVec3f(&vec, &this->handPos);
        this->unk_2BC = true;
    }
}

void EnXc_DrawTriforce(Actor* thisx, PlayState* play) {
    EnXc* this = (EnXc*)thisx;
    s32 pad;
    s16 eyeIdx = this->eyeIdx;
    void* eyeTexture = sEyeTextures[eyeIdx];
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    s32 pad2;

    OPEN_DISPS(gfxCtx, "../z_en_oA2_inMetamol.c", 565);
    if (this->unk_2BC) {
        Mtx* mtx = GRAPH_ALLOC(gfxCtx, sizeof(Mtx));
        s32* primColor = this->triforcePrimColor;
        s32* envColor = this->triforceEnvColor;
        f32* scale = this->triforceScale;

        Matrix_Push();
        Matrix_Translate(kREG(16) + 100.0f, kREG(17) + 4460.0f, kREG(18) + 1190.0f, MTXMODE_APPLY);
        Matrix_RotateZYX(kREG(22), kREG(23), this->triforceAngle, MTXMODE_APPLY);
        Matrix_Scale(scale[0], scale[1], scale[2], MTXMODE_APPLY);
        MATRIX_TO_MTX(mtx, "../z_en_oA2_inMetamol.c", 602);
        Matrix_Pop();
        Gfx_SetupDL_25Xlu(gfxCtx);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, 255, 255, primColor[2], primColor[3]);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, envColor[1], 0, 128);
        gSPMatrix(POLY_XLU_DISP++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, gSheikTriforceWisdomDL);
    }

    func_8002EBCC(thisx, play, 0);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTexture));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeTexture));
    SkelAnime_DrawFlexOpa(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount,
                          EnXc_TriforceOverrideLimbDraw, EnXc_TriforcePostLimbDraw, this);
    CLOSE_DISPS(gfxCtx, "../z_en_oA2_inMetamol.c", 668);
}

void EnXc_StartNocturne_Action53(EnXc* this, PlayState* play) {
    this->action = SHEIK_ACTION_57_NOCTURNE_INIT;
    this->drawMode = SHEIK_DRAW_LOOKING_DOWN;
}

void EnXc_SetThrownAroundSFX(EnXc* this) {
    SkelAnime* skelAnime = &this->skelAnime;

    if (Animation_OnFrame(skelAnime, 9.0f)) {
        Sfx_PlaySfxAtPos(&this->actor.projectedPos, NA_SE_PL_BOUND + SURFACE_SFX_OFFSET_GRASS);
        Sfx_PlaySfxAtPos(&this->actor.projectedPos, NA_SE_VO_SK_CRASH);
    } else if (Animation_OnFrame(skelAnime, 26.0f)) {
        Sfx_PlaySfxAtPos(&this->actor.projectedPos, NA_SE_PL_BOUND + SURFACE_SFX_OFFSET_GRASS);
    } else if (Animation_OnFrame(skelAnime, 28.0f)) {
        Sfx_PlaySfxAtPos(&this->actor.projectedPos, NA_SE_PL_WALK_GROUND + SURFACE_SFX_OFFSET_GRASS);
    } else if (Animation_OnFrame(skelAnime, 34.0f)) {
        Sfx_PlaySfxAtPos(&this->actor.projectedPos, NA_SE_PL_WALK_GROUND + SURFACE_SFX_OFFSET_GRASS);
    }
}

void EnXc_PlayLinkScreamSFX(EnXc* this, PlayState* play) {
    if (play->csCtx.curFrame == 1455) {
        Audio_PlayCutsceneEffectsSequence(SEQ_CS_EFFECTS_BONGO_HURL_LINK);
    }
}

void EnXc_SetCrySFX(EnXc* this, PlayState* play) {
    CutsceneContext* csCtx = &play->csCtx;

    if (csCtx->curFrame == 869) {
        Sfx_PlaySfxAtPos(&this->actor.projectedPos, NA_SE_VO_SK_CRY_0);
    } else if (csCtx->curFrame == 939) {
        Sfx_PlaySfxAtPos(&this->actor.projectedPos, NA_SE_VO_SK_CRY_1);
    }
}

void EnXc_NocturneCs_SetupAction57(Actor* thisx) {
    EnXc* this = (EnXc*)thisx;

    this->action = SHEIK_ACTION_57_NOCTURNE_INIT;
    this->drawMode = SHEIK_DRAW_NOTHING;
    this->actor.shape.shadowAlpha = 0;
}

void EnXc_NocturneCs_SetupIdleLookingDown(EnXc* this, PlayState* play) {
    s32 pad;
    ActorShape* actorShape = &this->actor.shape;
    SkelAnime* skelAnime = &this->skelAnime;
    f32 frameCount = Animation_GetLastFrame(&gSheikIdleAnim);

    EnXc_DisableActorMovement(this);
    EnXc_SetPosRotByCueStart(this, play, 4);
    Animation_Change(skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
    this->action = SHEIK_ACTION_58_NOCTURNE_IDLE;
    this->drawMode = SHEIK_DRAW_LOOKING_DOWN;
    actorShape->shadowAlpha = 255;
}

void EnXc_NocturneCs_SetupDefenseStance(Actor* thisx) {
    EnXc* this = (EnXc*)thisx;
    SkelAnime* skelAnime = &this->skelAnime;
    f32 frameCount = Animation_GetLastFrame(&gSheikDefenseStanceAnim);

    Animation_Change(skelAnime, &gSheikDefenseStanceAnim, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, -8.0f);
    this->action = SHEIK_ACTION_59_NOCTURNE_DEFENSE_STANCE;
    this->drawMode = SHEIK_DRAW_DEFAULT;
}

void EnXc_NocturneCs_SetupContortions(EnXc* this, PlayState* play) {
    s32 pad[2];
    SkelAnime* skelAnime = &this->skelAnime;

#if DEBUG_FEATURES
    Animation_Change(skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gSheikIdleAnim), ANIMMODE_LOOP,
                     0.0f);
#endif
    EnXc_SetPosRotByCueStart(this, play, 4);
    ActorMovement_func_80B3C964(this, play);
    Animation_Change(skelAnime, &gSheikContortionsAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gSheikContortionsAnim),
                     ANIMMODE_ONCE, 0.0f);
    this->action = SHEIK_ACTION_60_NOCTURNE_CONTORT;
    this->drawMode = SHEIK_DRAW_DEFAULT;
    this->actor.shape.shadowAlpha = 255;
}

void EnXc_NocturneCs_SetupHardFaceplant(EnXc* this, PlayState* play) {
    s32 pad;
    SkelAnime* skelAnime = &this->skelAnime;
    f32 frameCount = Animation_GetLastFrame(&gSheikIdleAnim);

    Animation_Change(skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
    EnXc_SetPosRotByCueStart(this, play, 4);
    ActorMovement_func_80B3C964(this, play);
    Animation_Change(skelAnime, &gSheikHardFaceplantAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gSheikHardFaceplantAnim),
                     ANIMMODE_ONCE, 0.0f);
    this->action = SHEIK_ACTION_61_NOCTURNE_FALL;
    this->drawMode = SHEIK_DRAW_DEFAULT;
    this->actor.shape.shadowAlpha = 255;
}

void EnXc_NocturneCs_SetupAction62_PushupProne(EnXc* this, PlayState* play) {
    s32 pad[3];
    f32 frameCount = Animation_GetLastFrame(&gSheikHittingGroundAnim);

    EnXc_DisableActorMovement(this);
    EnXc_SetPosRotByCueStart(this, play, 4);
    Animation_Change(&this->skelAnime, &gSheikHittingGroundAnim, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, 0.0f);
    this->action = SHEIK_ACTION_62_NOCTURNE_PUSHUP_PRONE;
    this->drawMode = SHEIK_DRAW_DEFAULT;
    this->actor.shape.shadowAlpha = 255;
}

void EnXc_NocturneCs_SetupAction63_GestureStopLink(EnXc* this, PlayState* play) {
    s32 pad[3];
    f32 frameCount = Animation_GetLastFrame(&gSheikHittingGroundAnim);

    EnXc_DisableActorMovement(this);
    EnXc_SetPosRotByCueStart(this, play, 4);
    Animation_Change(&this->skelAnime, &gSheikHittingGroundAnim, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, 0.0f);
    this->action = SHEIK_ACTION_63_NOCTURNE_GESTURE_STOP_LINK;
    this->drawMode = SHEIK_DRAW_DEFAULT;
    this->actor.shape.shadowAlpha = 255;
}

void EnXc_NocturneCs_SetupAction64_Kneeling(EnXc* this, PlayState* play) {
    s32 pad[3];
    f32 frameCount = Animation_GetLastFrame(&gSheikKneelingAnim);

    EnXc_DisableActorMovement(this);
    EnXc_SetPosRotByCueStart(this, play, 4);
    Animation_Change(&this->skelAnime, &gSheikKneelingAnim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
    this->action = SHEIK_ACTION_64_NOCTURNE2_KNEEL;
    this->drawMode = SHEIK_DRAW_DEFAULT;
    this->actor.shape.shadowAlpha = 255;
}

void EnXc_NocturneCs_SetupAction65_WaitCue_PullOutHarp(EnXc* this, PlayState* play) {
    s32 pad[3];
    f32 frameCount = Animation_GetLastFrame(&gSheikIdleAnim);
    EnXc_DisableActorMovement(this);
    EnXc_SetPosRotByCueStart(this, play, 4);
    Animation_Change(&this->skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
    this->action = SHEIK_ACTION_65_NOCTURNE2_WAIT_CUE_PULL_OUT_HARP;
    this->drawMode = SHEIK_DRAW_DEFAULT;
    this->actor.shape.shadowAlpha = 255;
}

void EnXc_WhenNext_Action66(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_65_NOCTURNE2_WAIT_CUE_PULL_OUT_HARP,
                           SHEIK_ACTION_66_NOCTURNE2_PULL_OUT_HARP);
}

void EnXc_WhenNext_Action67(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_66_NOCTURNE2_PULL_OUT_HARP,
                           SHEIK_ACTION_67_NOCTURNE2_PLAY_HARP_MOVE_TO_READY);
}

void EnXc_WhenNext_Action68(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_67_NOCTURNE2_PLAY_HARP_MOVE_TO_READY,
                           SHEIK_ACTION_68_NOCTURNE2_PLAY_HARP);
}

void EnXc_WhenNext_Action69(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_68_NOCTURNE2_PLAY_HARP, SHEIK_ACTION_69_NOCTURNE2_PLAY_HARP_FREEZE);
}

void EnXc_WhenNext_Action70OrAction68(EnXc* this) {
    EnXc_CheckHarpPutawayAndBranch(this, SHEIK_ACTION_69_NOCTURNE2_PLAY_HARP_FREEZE,
                                   SHEIK_ACTION_70_NOCTURNE2_PLAY_HARP_RETURN_FROM_READY,
                                   SHEIK_ACTION_68_NOCTURNE2_PLAY_HARP);
}

void EnXc_WhenNext_Action71(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_70_NOCTURNE2_PLAY_HARP_RETURN_FROM_READY,
                           SHEIK_ACTION_71_NOCTURNE2_PUT_AWAY_HARP);
}

void EnXc_WhenNext_Action72(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_71_NOCTURNE2_PUT_AWAY_HARP, SHEIK_ACTION_72_NOCTURNE2_IDLE);
}

void EnXc_WhenNext_Action73(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_72_NOCTURNE2_IDLE, SHEIK_ACTION_73_NOCTURNE2_START_WALK_BACK);
}

void EnXc_WhenNext_Action74(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_73_NOCTURNE2_START_WALK_BACK, SHEIK_ACTION_74_NOCTURNE2_WALK_BACK);
}

void EnXc_Nocturne2Cs_SetupStopWalkBack(EnXc* this) {
    f32 xzDistToPlayer = this->actor.xzDistToPlayer;

    if (xzDistToPlayer >= kREG(5) + 140.0f) {
        Animation_Change(&this->skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gSheikIdleAnim),
                         ANIMMODE_LOOP, -12.0f);
        this->action = SHEIK_ACTION_75_NOCTURNE2_STOP_WALK_BACK;
        this->timer = 0.0f;
    }
}

void EnXc_WhenNext_Action76(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_75_NOCTURNE2_STOP_WALK_BACK, SHEIK_ACTION_76_NOCTURNE2_THROW_NUT);
}

void EnXc_WhenNext_Action77(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_76_NOCTURNE2_THROW_NUT, SHEIK_ACTION_77_NOCTURNE2_VANISH);
}

void EnXc_WhenNext_Action78(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_77_NOCTURNE2_VANISH, SHEIK_ACTION_78_NOCTURNE2_CLEANUP_EFF_FLAME);
}

/**
 * returns true if cue change has occurred
 */
s32 EnXc_NocturneCS_WaitCue(Actor* thisx, PlayState* play) {
    CsCmdActorCue* cue = EnXc_GetCue(play, 4);

    if (cue != NULL) {
        s32 cueId = cue->id;
        EnXc* this = (EnXc*)thisx;
        s32 lastCueId = this->lastCueIdNocturneCs;

        if (cueId != lastCueId) {
            switch (cueId) {
                case ENXC_CUEID_IDLE:
                    EnXc_NocturneCs_SetupAction57(thisx);
                    break;
                case ENXC_CUEID_APPEAR:
                    EnXc_NocturneCs_SetupIdleLookingDown(this, play);
                    break;
                case ENXC_CUEID_DEFENSE_STANCE:
                    EnXc_NocturneCs_SetupDefenseStance(thisx);
                    break;
                case ENXC_CUEID_CONTORTIONS:
                    EnXc_NocturneCs_SetupContortions(this, play);
                    break;
                case ENXC_CUEID_HARD_FACEPLANT:
                    EnXc_NocturneCs_SetupHardFaceplant(this, play);
                    break;
                case ENXC_CUEID_PUSHUP_PRONE_OR_TRIFORCE_MARK2:
                    EnXc_NocturneCs_SetupAction62_PushupProne(this, play);
                    break;
                case ENXC_CUEID_GESTURE_STOP_LINK:
                    EnXc_NocturneCs_SetupAction63_GestureStopLink(this, play);
                    break;
                case ENXC_CUEID_KNEEL:
                    EnXc_NocturneCs_SetupAction64_Kneeling(this, play);
                    break;
                case ENXC_CUEID_NOCTURNE_IDLE:
                    EnXc_NocturneCs_SetupAction65_WaitCue_PullOutHarp(this, play);
                    break;
                case ENXC_CUEID_VANISH:
                    Actor_Kill(thisx);
                    break;
                default:
                    PRINTF(T("En_Oa2_Stalker_Check_DemoMode:そんな動作は無い!!!!!!!!\n",
                             "En_Oa2_Stalker_Check_DemoMode: There is no such action!!!!!!!!\n"));
                    break;
            }

            this->lastCueIdNocturneCs = cueId;
            return true;
        }
    }
    return false;
}

/**
 * Checks cue to determine if Part 1 or Part 2 of the cutscene is running.
 */
void EnXc_NocturneCs_Action57_DemoStart(EnXc* this, PlayState* play) {
    EnXc_NocturneCS_WaitCue(&this->actor, play);
}

void EnXc_NocturneCs_Action58_Idle(EnXc* this, PlayState* play) {
    EnXc_SetPosRotByCueStart(this, play, 4);
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_NocturneCS_WaitCue(&this->actor, play);
}

void EnXc_NocturneCs_Action59_DefenseStance(EnXc* this, PlayState* play) {
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_NocturneCS_WaitCue(&this->actor, play);
}

void EnXc_NocturneCs_Action60_Contort(EnXc* this, PlayState* play) {
    EnXc_SetCrySFX(this, play);
    EnXc_SkelAnime_Update(this);
    EnXc_SetEyePattern(this);
    if (!EnXc_NocturneCS_WaitCue(&this->actor, play)) {
        ActorMovement_func_80B3C924(this, play);
        EnXc_BgCheck(this, play);
    }
}

void EnXc_NocturneCs_Action61_HardFaceplant(EnXc* this, PlayState* play) {
    EnXc_SkelAnime_Update(this);
    EnXc_SetEyePattern(this);
    EnXc_SetThrownAroundSFX(this);
    if (!EnXc_NocturneCS_WaitCue(&this->actor, play)) {
        ActorMovement_func_80B3C8CC(this, play);
        EnXc_BgCheck(this, play);
    }
}

void EnXc_NocturneCs_Action62_PushupProne(EnXc* this, PlayState* play) {
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_NocturneCS_WaitCue(&this->actor, play);
}

void EnXc_NocturneCs_Action63_GestureStopLink(EnXc* this, PlayState* play) {
    EnXc_SkelAnime_Update(this);
    EnXc_PlayLinkScreamSFX(this, play);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_NocturneCS_WaitCue(&this->actor, play);
}

void EnXc_Nocturne2CS_Action64_Kneel(EnXc* this, PlayState* play) {
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_NocturneCS_WaitCue(&this->actor, play);
}

void EnXc_Nocturne2Cs_Action65_WaitCue_PullOutHarp(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action6_WaitCue_PullOutHarp(this, play);
    EnXc_SetPosRotByCueStart(this, play, 4);
    EnXc_WhenNext_Action66(this);
}

void EnXc_Nocturne2Cs_Action66_PullOutHarp(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action7_PullOutHarp(this, play);
    EnXc_WhenNext_Action67(this);
}

void EnXc_Nocturne2Cs_Action67_PlayHarp_MoveToReady(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action8_PlayHarp_MoveToReady(this, play);
    EnXc_WhenNext_Action68(this);
}

void EnXc_Nocturne2Cs_Action68_PlayHarp(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action9_PlayHarp(this, play);
    EnXc_WhenNext_Action69(this);
}

void EnXc_Nocturne2Cs_Action69_PlayHarp_Freeze(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action10_PlayHarp_Freeze(this, play);
    EnXc_WhenNext_Action70OrAction68(this);
}

void EnXc_Nocturne2Cs_Action70_PlayHarp_ReturnFromReady(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action11_PlayHarp_ReturnFromReady(this, play);
    EnXc_WhenNext_Action71(this);
}

void EnXc_Nocturne2Cs_Action71_PutAwayHarp(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action12_PutAwayHarp(this, play);
    EnXc_WhenNext_Action72(this);
}

void EnXc_Nocturne2Cs_Action72_Idle(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action13_Idle(this, play);
    EnXc_WhenNext_Action73(this);
}

void EnXc_Nocturne2Cs_Action73_StartWalkBack(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action14_StartWalkBack(this, play);
    EnXc_WhenNext_Action74(this);
}

void EnXc_Nocturne2Cs_Action74_WalkBack(EnXc* this, PlayState* play) {
    EnXc_MoveXZGravity2(this);
    EnXc_SkelAnime_Update(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_Nocturne2Cs_SetupStopWalkBack(this);
}

void EnXc_Nocturne2Cs_Action75_StopWalkBack(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action16_StopWalkBack(this, play);
    EnXc_WhenNext_Action76(this);
}

void EnXc_Nocturne2Cs_Action76_ThrowNut(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action17_ThrowNut(this, play);
    EnXc_WhenNext_Action77(this);
}

void EnXc_Nocturne2Cs_Action77_Vanish(EnXc* this, PlayState* play) {
    EnXc_TeachSong1_Action18_Vanish(this, play);
    EnXc_WhenNext_Action78(this);
}

void EnXc_Nocturne2Cs_Action78_CleanupEffFlame(EnXc* this, PlayState* play) {
    Actor_Kill(&this->actor);
}

void EnXc_DrawLookingDown(Actor* thisx, PlayState* play) {
    EnXc* this = (EnXc*)thisx;
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = play->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_en_oA2_inStalker.c", 839);
    Gfx_SetupDL_25Opa(gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(gSheikEyeLookingDownTex));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(gSheikEyeLookingDownTex));
    SkelAnime_DrawFlexOpa(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount, NULL, NULL, NULL);
    CLOSE_DISPS(gfxCtx, "../z_en_oA2_inStalker.c", 854);
}

void EnXc_InitTempleOfTime(EnXc* this, PlayState* play) {
    if (LINK_IS_ADULT) {
        if (!GET_EVENTCHKINF(EVENTCHKINF_C5)) {
            SET_EVENTCHKINF(EVENTCHKINF_C5);
            play->csCtx.script = SEGMENTED_TO_VIRTUAL(gTempleOfTimeFirstAdultCs);
            gSaveContext.cutsceneTrigger = 1;
            EnXc_StartDemoFirstAdult_Action20(this, play);
        } else if (!GET_EVENTCHKINF(EVENTCHKINF_55) && GET_EVENTCHKINF(EVENTCHKINF_48)) {
            SET_EVENTCHKINF(EVENTCHKINF_55);
            Item_Give(play, ITEM_SONG_PRELUDE);
            play->csCtx.script = SEGMENTED_TO_VIRTUAL(gTempleOfTimePreludeCs);
            gSaveContext.cutsceneTrigger = 1;
            this->action = SHEIK_ACTION_30_TEACH2_INVISIBLE;
        } else if (!GET_EVENTCHKINF(EVENTCHKINF_55)) {
            EnXc_SetAction79_BlockPedestal(this);
        } else {
            Actor_Kill(&this->actor);
        }
    } else {
        Actor_Kill(&this->actor);
    }
}

void EnXc_TempleOfTime_HandleDialog(EnXc* this, PlayState* play) {
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        s32 pad;

        this->action = SHEIK_ACTION_80_TEMPLE_OF_TIME_BLOCK_PEDESTAL_TALKING;
    } else {
        this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY;
        if (INV_CONTENT(ITEM_HOOKSHOT) != ITEM_NONE) {
            this->actor.textId = 0x7010;
        } else {
            this->actor.textId = 0x700F;
        }
        Actor_OfferTalkNearColChkInfoCylinder(&this->actor, play);
    }
}

void EnXc_TempleOfTime_WaitEndDialog(EnXc* this, PlayState* play) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CLOSING) {
        this->action = SHEIK_ACTION_79_TEMPLE_OF_TIME_BLOCK_PEDESTAL;
        this->actor.flags &= ~(ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY);
    }
}

void EnXc_TempleOfTime_Action79_BlockPedestal(EnXc* this, PlayState* play) {
    EnXc_BgCheck(this, play);
    EnXc_UpdateCollider(&this->actor, play);
    EnXc_CalculateHeadTurn(this, play);
    EnXc_SkelAnime_Update(this);
    EnXc_SetEyePattern(this);
    EnXc_TempleOfTime_HandleDialog(this, play);
}

void EnXc_TempleOfTime_Action80_BlockPedestalTalking(EnXc* this, PlayState* play) {
    EnXc_BgCheck(this, play);
    EnXc_UpdateCollider(&this->actor, play);
    EnXc_CalculateHeadTurn(this, play);
    EnXc_SkelAnime_Update(this);
    EnXc_SetEyePattern(this);
    EnXc_TempleOfTime_WaitEndDialog(this, play);
}

static EnXcActionFunc sActionFuncs[] = {
    // "inSpot05" approach player
    /* 00 */ EnXc_TeachSong1_Action0_CheckDemoStart,
    /* 01 */ EnXc_TeachSong1_Action1_Invisible,
    /* 02 */ EnXc_TeachSong1_Action2_GracefulFall,
    /* 03 */ EnXc_TeachSong1_Action3_StartWalk,
    /* 04 */ EnXc_TeachSong1_Action4_WalkToPlayer,
    /* 05 */ EnXc_TeachSong1_Action5_StopWalk,

    // TeachSong common actions
    /* 06 */ EnXc_TeachSong1_Action6_WaitCue_PullOutHarp,
    /* 07 */ EnXc_TeachSong1_Action7_PullOutHarp,
    /* 08 */ EnXc_TeachSong1_Action8_PlayHarp_MoveToReady,
    /* 09 */ EnXc_TeachSong1_Action9_PlayHarp,
    /* 10 */ EnXc_TeachSong1_Action10_PlayHarp_Freeze,
    /* 11 */ EnXc_TeachSong1_Action11_PlayHarp_ReturnFromReady,
    /* 12 */ EnXc_TeachSong1_Action12_PutAwayHarp,
    /* 13 */ EnXc_TeachSong1_Action13_Idle,
    /* 14 */ EnXc_TeachSong1_Action14_StartWalkBack,
    /* 15 */ EnXc_TeachSong1_Action15_WalkBack,
    /* 16 */ EnXc_TeachSong1_Action16_StopWalkBack,
    /* 17 */ EnXc_TeachSong1_Action17_ThrowNut,
    /* 18 */ EnXc_TeachSong1_Action18_Vanish,
    /* 19 */ EnXc_TeachSong1_Action19_CleanupEffFlame,

    // gTempleOfTimeFirstAdultCs
    // gLakeHyliaRestoredCs inherits action 20 and 21
    // TeachSong2 inherits action 21
    /* 20 */ EnXc_Action20_DemoStart,
    /* 21 */ EnXc_Action21_Invisible,
    /* 22 */ EnXc_Action22_Idle,

    // gLakeHyliaRestoredCs inherited action
    /* 23 */ EnXc_Action23_StartWalkBack,
    /* 24 */ EnXc_Action24,

    // Unreferenced empty actions
    /* 25 */ EnXc_Action25,
    /* 26 */ EnXc_Action26,
    /* 27 */ EnXc_Action27,
    /* 28 */ EnXc_Action28,

    // Serenade and Pelude
    /* 29 */ EnXc_TeachSong2_Action29_CheckDemoStart,
    /* 30 */ EnXc_TeachSong2_Action30_Invisible,
    /* 31 */ EnXc_TeachSong2_Action31_WaitCue_PullOutHarp,
    /* 32 */ EnXc_TeachSong2_Action32_PullOutHarp,
    /* 33 */ EnXc_TeachSong2_Action33_PlayHarp_MoveToReady,
    /* 34 */ EnXc_TeachSong2_Action34_PlayHarp,
    /* 35 */ EnXc_TeachSong2_Action35_PlayHarp_Freeze,
    /* 36 */ EnXc_TeachSong2_Action36_PlayHarp_ReturnFromReady,
    /* 37 */ EnXc_TeachSong2_Action37_PutHarpAway,
    /* 38 */ EnXc_TeachSong2_Action38_Idle,
    /* 39 */ EnXc_TeachSong2_Action39_StartWalkBack,
    /* 40 */ EnXc_TeachSong2_Action40_WalkBack,
    /* 41 */ EnXc_TeachSong2_Action41_StopWalkBack,
    /* 42 */ EnXc_TeachSong2_Action42_ThrowNut,
    /* 43 */ EnXc_TeachSong2_Action43_Vanish,
    /* 44 */ EnXc_TeachSong2_Action44_CleanupEffFlame,

    // gLakeHyliaRestoredCs
    /* 45 */ EnXc_LakeCs_Action45_DemoStart,
    /* 46 */ EnXc_LakeCs_Action46_Invisible,
    /* 47 */ EnXc_LakeCs_Action47_Idle,
    /* 48 */ EnXc_LakeCs_Action48_StartWalkBack,
    /* 49 */ EnXc_LakeCs_Action49_WalkBack,
    /* 50 */ EnXc_LakeCs_Action50_KneelOnTree,
    /* 51 */ EnXc_LakeCs_Action51_Dive,
    /* 52 */ EnXc_LakeCs_Action52_CleanupEffSplash,

    // Transforms into Zelda (Across two Temple of Time cs)
    /* 53 */ EnXc_Transform_Action53_Invisible,
    /* 54 */ EnXc_Transform_Action54_Idle,
    /* 55 */ EnXc_Transform_Action55_ShowTriforceMark,
    /* 56 */ EnXc_Transform_Action56_ShowTriforceMarkIdle,

    // Nocturne Part 1
    /* 57 */ EnXc_NocturneCs_Action57_DemoStart,
    /* 58 */ EnXc_NocturneCs_Action58_Idle,
    /* 59 */ EnXc_NocturneCs_Action59_DefenseStance,
    /* 60 */ EnXc_NocturneCs_Action60_Contort,
    /* 61 */ EnXc_NocturneCs_Action61_HardFaceplant,
    /* 62 */ EnXc_NocturneCs_Action62_PushupProne,
    /* 63 */ EnXc_NocturneCs_Action63_GestureStopLink,
    // Nocturne Part 2
    /* 64 */ EnXc_Nocturne2CS_Action64_Kneel,
    /* 65 */ EnXc_Nocturne2Cs_Action65_WaitCue_PullOutHarp,
    /* 66 */ EnXc_Nocturne2Cs_Action66_PullOutHarp,
    /* 67 */ EnXc_Nocturne2Cs_Action67_PlayHarp_MoveToReady,
    /* 68 */ EnXc_Nocturne2Cs_Action68_PlayHarp,
    /* 69 */ EnXc_Nocturne2Cs_Action69_PlayHarp_Freeze,
    /* 70 */ EnXc_Nocturne2Cs_Action70_PlayHarp_ReturnFromReady,
    /* 71 */ EnXc_Nocturne2Cs_Action71_PutAwayHarp,
    /* 72 */ EnXc_Nocturne2Cs_Action72_Idle,
    /* 73 */ EnXc_Nocturne2Cs_Action73_StartWalkBack,
    /* 74 */ EnXc_Nocturne2Cs_Action74_WalkBack,
    /* 75 */ EnXc_Nocturne2Cs_Action75_StopWalkBack,
    /* 76 */ EnXc_Nocturne2Cs_Action76_ThrowNut,
    /* 77 */ EnXc_Nocturne2Cs_Action77_Vanish,
    /* 78 */ EnXc_Nocturne2Cs_Action78_CleanupEffFlame,

    // gTempleOfTimeFirstAdultCs and normal gameplay
    /* 79 */ EnXc_TempleOfTime_Action79_BlockPedestal,
    /* 80 */ EnXc_TempleOfTime_Action80_BlockPedestalTalking,
};

void EnXc_Update(Actor* thisx, PlayState* play) {
    EnXc* this = (EnXc*)thisx;
    s32 action = this->action;

    if ((action < 0) || (action >= ARRAY_COUNT(sActionFuncs)) || (sActionFuncs[action] == NULL)) {
        PRINTF(VT_FGCOL(RED) T("メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n",
                               "The main mode is wrong!!!!!!!!!!!!!!!!!!!!!!!!!\n") VT_RST);
    } else {
        sActionFuncs[action](this, play);
    }
}

void EnXc_Init(Actor* thisx, PlayState* play) {
    EnXc* this = (EnXc*)thisx;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gSheikSkel, &gSheikIdleAnim, this->jointTable, this->morphTable,
                       ARRAY_COUNT(this->jointTable));
    EnXc_InitCollider(thisx, play);

    switch (this->actor.params) {
        case SHEIK_TYPE_DEMO_FIRST_ADULT:
            // Bypasses checks to allow the cutscene to be played via Map Select
            // Temple of Time Demo 0 - First Adult (gTempleOfTimeFirstAdultCs)
            EnXc_StartDemoFirstAdult_Action20(this, play);
            break;
        case SHEIK_TYPE_DEMO_TEACH_SONG_2:
            // Configuration intended to bypass checks to allow the following cutscenes to be played via Map Select:
            // Ice Cavern Demo 0 - Learn Serenade - (gIceCavernSerenadeCs)
            // Temple of Time Demo 2 - Learn Prelude - (gTempleOfTimePreludeCs)
            EnXc_StartDemoTeachSong2_Action29(this, play);
            break;
        case SHEIK_TYPE_LAKE_HYLIA:
            EnXc_StartLakeCs_Action45(this, play);
            break;
        case SHEIK_TYPE_TRANSFORM:
            EnXc_StartTransform_Action53(this, play);
            break;
        case SHEIK_TYPE_NOCTURNE:
            EnXc_StartNocturne_Action53(this, play);
            break;
        case SHEIK_TYPE_MINUET:
            EnXc_CheckStartMinuet_Action0(this, play);
            break;
        case SHEIK_TYPE_BOLERO:
            EnXc_CheckStartBolero_Action0(this, play);
            break;
        case SHEIK_TYPE_SERENADE:
            EnXc_CheckStartSerenade_Action29(this, play);
            break;
        case SHEIK_TYPE_TEMPLE_OF_TIME:
            // Handles Sheik spawned next to the Master Sword in the Temple of Time.
            // First Adult - gTempleOfTimeFirstAdultCs
            // Learn Prelude - gTempleOfTimePreludeCs
            //
            EnXc_InitTempleOfTime(this, play);
            break;
#if DEBUG_FEATURES
        case SHEIK_TYPE_DO_NOTHING:
            EnXc_DoNothing(this, play);
            break;
#endif
        default:
            PRINTF(VT_FGCOL(RED) T(" En_Oa2 の arg_data がおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n",
                                   " En_Oa2 arg_data is wrong!!!!!!!!!!!!!!!!!!!!!!!!!\n") VT_RST);
            EnXc_DoNothing(this, play);
    }
}

s32 EnXc_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnXc* this = (EnXc*)thisx;

    if (this->enableTrackPlayer) {
        if (limbIndex == 9) {
            s32 pad;

            rot->x += this->interactInfo.torsoRot.y;
            rot->y -= this->interactInfo.torsoRot.x;
        } else if (limbIndex == 16) {
            rot->x += this->interactInfo.headRot.y;
            rot->z += this->interactInfo.headRot.x;
        }
    }
    return 0;
}

void EnXc_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    if (limbIndex == 16) {
        EnXc* this = (EnXc*)thisx;
        Vec3f src = { 0.0f, 10.0f, 0.0f };
        Vec3f dest;

        Matrix_MultVec3f(&src, &dest);
        this->actor.focus.pos.x = dest.x;
        this->actor.focus.pos.y = dest.y;
        this->actor.focus.pos.z = dest.z;
        this->actor.focus.rot.x = this->actor.world.rot.x;
        this->actor.focus.rot.y = this->actor.world.rot.y;
        this->actor.focus.rot.z = this->actor.world.rot.z;
    }
}

void EnXc_DrawNothing(Actor* thisx, PlayState* play) {
}

void EnXc_DrawDefault(Actor* thisx, PlayState* play) {
    s32 pad;
    EnXc* this = (EnXc*)thisx;
    s16 eyeIdx = this->eyeIdx;
    void* eyeSegment = sEyeTextures[eyeIdx];
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* localGfxCtx = play->state.gfxCtx;
    GraphicsContext* gfxCtx = localGfxCtx;

    OPEN_DISPS(gfxCtx, "../z_en_oA2.c", 1164);
    func_8002EBCC(&this->actor, play, 0);
    Gfx_SetupDL_25Opa(gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeSegment));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeSegment));
    SkelAnime_DrawFlexOpa(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount,
                          EnXc_OverrideLimbDraw, EnXc_PostLimbDraw, this);
    CLOSE_DISPS(gfxCtx, "../z_en_oA2.c", 1207);
}

static EnXcDrawFunc sDrawFuncs[] = {
    EnXc_DrawNothing, EnXc_DrawDefault, EnXc_DrawPullingOutHarp, EnXc_DrawHarp, EnXc_DrawTriforce, EnXc_DrawLookingDown,
};

void EnXc_Draw(Actor* thisx, PlayState* play) {
    EnXc* this = (EnXc*)thisx;

    if (this->drawMode < 0 || this->drawMode > 5 || sDrawFuncs[this->drawMode] == NULL) {
        PRINTF(VT_FGCOL(RED) T("描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n",
                               "The drawing mode is wrong!!!!!!!!!!!!!!!!!!!!!!!!!\n") VT_RST);
    } else {
        sDrawFuncs[this->drawMode](thisx, play);
    }
}

ActorProfile En_Xc_Profile = {
    /**/ ACTOR_EN_XC,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_XC,
    /**/ sizeof(EnXc),
    /**/ EnXc_Init,
    /**/ EnXc_Destroy,
    /**/ EnXc_Update,
    /**/ EnXc_Draw,
};
