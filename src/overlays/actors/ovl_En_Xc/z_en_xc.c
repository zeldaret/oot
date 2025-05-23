/*
 * File: z_en_xc.c
 * Overlay: ovl_En_Xc
 * Description: Sheik
 */

#include "z_en_xc.h"
#include "overlays/actors/ovl_En_Arrow/z_en_arrow.h"
#include "overlays/actors/ovl_Door_Warp1/z_door_warp1.h"
#include "assets/objects/object_xc/object_xc.h"
#include "assets/scenes/overworld/spot05/spot05_scene.h"
#include "assets/scenes/overworld/spot17/spot17_scene.h"
#include "assets/scenes/indoors/tokinoma/tokinoma_scene.h"
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_scene.h"
#include "terminal.h"

#pragma increment_block_number "gc-eu:0 gc-eu-mq:0 gc-jp:0 gc-jp-ce:0 gc-jp-mq:0 gc-us:0 gc-us-mq:0 ntsc-1.0:0" \
                               "ntsc-1.1:0 ntsc-1.2:0 pal-1.0:0 pal-1.1:0"

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
void EnXc_DrawSquintingEyes(Actor* thisx, PlayState* play);

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
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
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

s32 EnXc_AnimIsFinished(EnXc* this) {
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

void func_80B3C588(EnXc* this, PlayState* play, u32 cueChannel) {
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

void func_80B3C620(EnXc* this, PlayState* play, s32 cueChannel) {
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

void EnXc_CheckAndSetAction(EnXc* this, s32 check, s32 set) {
    if (check != this->action) {
        this->action = set;
    }
}

void func_80B3C7D4(EnXc* this, s32 action1, s32 action2, s32 action3) {
    if (action1 != this->action) {
        if (this->action == SHEIK_ACTION_PUT_HARP_AWAY) {
            this->action = action2;
        } else {
            this->action = action3;
        }
    }
}

#if DEBUG_FEATURES
s32 EnXc_NoCutscenePlaying(PlayState* play) {
    if (play->csCtx.state == CS_STATE_IDLE) {
        return true;
    }
    return false;
}

void func_80B3C820(EnXc* this) {
    Animation_Change(&this->skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gSheikIdleAnim),
                     ANIMMODE_LOOP, 0.0f);
    this->action = SHEIK_ACTION_53;
}

void func_80B3C888(EnXc* this, PlayState* play) {
    if (EnXc_NoCutscenePlaying(play) && this->actor.params == SHEIK_TYPE_4) {
        func_80B3C820(this);
    }
}
#endif

void func_80B3C8CC(EnXc* this, PlayState* play) {
    SkelAnime* skelAnime = &this->skelAnime;

    if (skelAnime->jointTable[0].y >= skelAnime->baseTransl.y) {
        skelAnime->movementFlags |= ANIM_FLAG_UPDATE_XZ | ANIM_FLAG_UPDATE_Y;
        AnimTaskQueue_AddActorMovement(play, &this->actor, skelAnime, 1.0f);
    }
}

void func_80B3C924(EnXc* this, PlayState* play) {
    this->skelAnime.movementFlags |= ANIM_FLAG_UPDATE_XZ | ANIM_FLAG_UPDATE_Y;
    AnimTaskQueue_AddActorMovement(play, &this->actor, &this->skelAnime, 1.0f);
}

void func_80B3C964(EnXc* this, PlayState* play) {
    this->skelAnime.baseTransl = this->skelAnime.jointTable[0];
    this->skelAnime.prevTransl = this->skelAnime.jointTable[0];
    this->skelAnime.movementFlags |= ANIM_FLAG_UPDATE_XZ | ANIM_FLAG_UPDATE_Y;
    AnimTaskQueue_AddActorMovement(play, &this->actor, &this->skelAnime, 1.0f);
}

void func_80B3C9DC(EnXc* this) {
    this->skelAnime.movementFlags &= ~(ANIM_FLAG_UPDATE_XZ | ANIM_FLAG_UPDATE_Y);
}

void func_80B3C9EC(EnXc* this) {
    EnXc_ChangeAnimation(this, &gSheikArmsCrossedIdleAnim, ANIMMODE_LOOP, 0.0f, false);
    this->action = SHEIK_ACTION_BLOCK_PEDESTAL;
    this->drawMode = SHEIK_DRAW_DEFAULT;
    this->unk_30C = 1;
}

void func_80B3CA38(EnXc* this, PlayState* play) {
    // If Player is adult but hasn't learned Minuet of Forest
    if (!GET_EVENTCHKINF(EVENTCHKINF_50) && LINK_IS_ADULT) {
        s32 pad;

        this->action = SHEIK_ACTION_INIT;
    } else {
        Actor_Kill(&this->actor);
    }
}

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

void func_80B3CB58(EnXc* this, PlayState* play) {
    // If hasn't learned Bolero and Player is Adult
    if (!GET_EVENTCHKINF(EVENTCHKINF_51) && LINK_IS_ADULT) {
        s32 pad;

        this->action = SHEIK_ACTION_INIT;
    } else {
        Actor_Kill(&this->actor);
    }
}

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

void EnXc_SetupSerenadeAction(EnXc* this, PlayState* play) {
    if (!(CHECK_OWNED_EQUIP(EQUIP_TYPE_BOOTS, EQUIP_INV_BOOTS_IRON) && DEBUG_FEATURES) &&
        !GET_EVENTCHKINF(EVENTCHKINF_52) && LINK_IS_ADULT) {
        s32 pad;

        this->action = SHEIK_ACTION_SERENADE;
        PRINTF("水のセレナーデ シーク誕生!!!!!!!!!!!!!!!!!!\n");
    } else {
        Actor_Kill(&this->actor);
        PRINTF("水のセレナーデ シーク消滅!!!!!!!!!!!!!!!!!!\n");
    }
}

s32 EnXc_SerenadeCS(EnXc* this, PlayState* play) {
    if (this->actor.params == SHEIK_TYPE_SERENADE) {
        Player* player = GET_PLAYER(play);
        s32 stateFlags = player->stateFlags1;

        if (CHECK_OWNED_EQUIP(EQUIP_TYPE_BOOTS, EQUIP_INV_BOOTS_IRON) && !GET_EVENTCHKINF(EVENTCHKINF_52) &&
            !(stateFlags & PLAYER_STATE1_29) && !Play_InCsMode(play)) {
            s32 pad;

            Cutscene_SetScript(play, gIceCavernSerenadeCs);
            gSaveContext.cutsceneTrigger = 1;
            SET_EVENTCHKINF(EVENTCHKINF_52); // Learned Serenade of Water Flag
            Item_Give(play, ITEM_SONG_SERENADE);
            PRINTF("ブーツを取った!!!!!!!!!!!!!!!!!!\n");
            return true;
        } else {
            PRINTF("はやくブーツを取るべし!!!!!!!!!!!!!!!!!!\n");
            return false;
        }
    }
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

void func_80B3D118(PlayState* play) {
    s16 sceneId;

    if ((gSaveContext.sceneLayer != 4) || (sceneId = play->sceneId, sceneId != SCENE_DESERT_COLOSSUS)) {
        Sfx_PlaySfxCentered2(NA_SE_PL_SKIP);
    }
}

void EnXc_SetColossusWindSFX(PlayState* play) {
    if (gSaveContext.sceneLayer == 4) {
        static s32 D_80B41D90 = 0;
        static Vec3f sPos = { 0.0f, 0.0f, 0.0f };
        static Vec3f D_80B42DB0;
        s32 pad;
        s16 sceneId = play->sceneId;

        if (sceneId == SCENE_DESERT_COLOSSUS) {
            CutsceneContext* csCtx = &play->csCtx;
            u16 csCurFrame = csCtx->curFrame;

            if ((csCurFrame >= 120) && (csCurFrame < 164)) {
                s32 pad;
                Vec3f* eye = &play->view.eye;

                if (D_80B41D90 != 0) {
                    f32 speed = Math3D_Vec3f_DistXYZ(&D_80B42DB0, eye) / 7.058922f;
#if DEBUG_FEATURES
                    static f32 sMaxSpeed = 0.0f;

                    sMaxSpeed = CLAMP_MIN(sMaxSpeed, speed);
                    PRINTF("MAX speed = %f\n", sMaxSpeed);
#endif

                    speed = CLAMP_MAX(speed, 2.0f);
                    func_800F436C(&sPos, NA_SE_EV_FLYING_AIR - SFX_FLAG, 0.6f + (0.4f * speed));
                }

                D_80B42DB0.x = eye->x;
                D_80B42DB0.y = eye->y;
                D_80B42DB0.z = eye->z;
                D_80B41D90 = 1;
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

void EnXc_SetupFlamePos(EnXc* this, PlayState* play) {
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

void EnXc_InitFlame(EnXc* this, PlayState* play) {
    static s32 D_80B41DA8 = 1;
    s32 pad;
    s16 sceneId = play->sceneId;

    if (sceneId == SCENE_DEATH_MOUNTAIN_CRATER) {
        CsCmdActorCue* cue = EnXc_GetCue(play, 0);
        if (cue != NULL) {
            s32 nextCueId = cue->id;

            if (D_80B41DA8 != nextCueId) {
                if (nextCueId != 1) {
                    EnXc_SpawnFlame(this, play);
                }

                if (nextCueId == 1) {
                    EnXc_DestroyFlame(this);
                }

                D_80B41DA8 = nextCueId;
            }

            EnXc_SetupFlamePos(this, play);
        }
    }
}

void func_80B3D48C(EnXc* this, PlayState* play) {
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

AnimationHeader* EnXc_GetCurrentHarpAnim(PlayState* play, s32 index) {
    AnimationHeader* animation = &gSheikPlayingHarp5Anim;
    CsCmdActorCue* cue = EnXc_GetCue(play, index);

    if (cue != NULL) {
        u16 cueId = cue->id;

        if (cueId == 11) {
            animation = &gSheikPlayingHarp3Anim;
        } else if (cueId == 12) {
            animation = &gSheikPlayingHarp2Anim;
        } else if (cueId == 13) {
            animation = &gSheikPlayingHarp4Anim;
        } else if (cueId == 23) {
            animation = &gSheikPlayingHarpAnim;
        } else {
            animation = &gSheikPlayingHarp5Anim;
        }
    }
    return animation;
}

void EnXc_CalcXZAccel(EnXc* this) {
    f32 timer = this->timer;
    f32* speedXZ = &this->actor.speed;

    if (timer < 9.0f) {
        *speedXZ = 0.0f;
    } else if (timer < 3.0f) {
        *speedXZ = (((kREG(2) * 0.01f) + 1.2f) / 3.0f) * (timer - 9.0f);
    } else {
        *speedXZ = (kREG(2) * 0.01f) + 1.2f;
    }

    Actor_MoveXZGravity(&this->actor);
}

void func_80B3D644(EnXc* this) {
    Actor_MoveXZGravity(&this->actor);
}

void EnXc_CalcXZSpeed(EnXc* this) {
    f32 timer = this->timer;
    f32* speedXZ = &this->actor.speed;

    if (timer < 3.0f) {
        *speedXZ = (((kREG(2) * 0.01f) + 1.2f) / 3.0f) * (3.0f - timer);
    } else {
        *speedXZ = 0.0f;
    }
    Actor_MoveXZGravity(&this->actor);
}

void func_80B3D6F0(EnXc* this) {
    EnXc_CalcXZAccel(this);
}

void func_80B3D710(EnXc* this) {
    Actor_MoveXZGravity(&this->actor);
}

void func_80B3D730(EnXc* this) {
    EnXc_CalcXZSpeed(this);
}

void func_80B3D750(EnXc* this, PlayState* play) {
    if (EnXc_MinuetCS(this, play) && EnXc_BoleroCS(this, play)) {
        this->action = SHEIK_ACTION_WAIT;
    }
}

void EnXc_SetupFallFromSkyAction(EnXc* this, PlayState* play) {
    s32 pad;
    CutsceneContext* csCtx = &play->csCtx;

    if (csCtx->state != 0) {
        CsCmdActorCue* cue = csCtx->actorCues[4];

        if (cue != NULL && cue->id == 2) {
            s32 pad;
            Vec3f* pos = &this->actor.world.pos;
            SkelAnime* skelAnime = &this->skelAnime;
            f32 frameCount = Animation_GetLastFrame(&gSheikFallingFromSkyAnim);

            this->action = SHEIK_ACTION_GRACEFUL_FALL;
            this->drawMode = SHEIK_DRAW_DEFAULT;

            pos->x = cue->startPos.x;
            pos->y = cue->startPos.y;
            pos->z = cue->startPos.z;

            func_80B3D48C(this, play);
            func_80B3C964(this, play);
            Animation_Change(skelAnime, &gSheikFallingFromSkyAnim, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, 0.0f);
            func_80B3D118(play);
        }
    }
}

void func_80B3D8A4(EnXc* this, PlayState* play, s32 animFinished) {
    if (animFinished) {
        SkelAnime* skelAnime = &this->skelAnime;
        f32 frameCount = Animation_GetLastFrame(&gSheikWalkingAnim);

        Animation_Change(skelAnime, &gSheikWalkingAnim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, -8.0f);

        this->action = SHEIK_ACTION_ACCEL;
        this->timer = 0.0f;

        func_80B3C9DC(this);
        this->actor.gravity = -((kREG(1) * 0.01f) + 13.0f);
        this->actor.minVelocityY = -((kREG(1) * 0.01f) + 13.0f);
    } else {
        func_80B3C8CC(this, play);
    }
}

void EnXc_SetupWalkAction(EnXc* this) {
    f32* timer = &this->timer;

    *timer += 1.0f;
    if (*timer >= 12.0f) {
        this->actor.speed = (kREG(2) * 0.01f) + 1.2f;
        this->action = SHEIK_ACTION_WALK;
    }
}

void EnXc_SetupHaltAction(EnXc* this) {
    SkelAnime* skelAnime = &this->skelAnime;
    f32 xzDistToPlayer = this->actor.xzDistToPlayer;

    if (xzDistToPlayer <= (kREG(3) + 95.0f)) {
        f32 frameCount = Animation_GetLastFrame(&gSheikIdleAnim);

        Animation_Change(skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, -12.0f);
        this->action = SHEIK_ACTION_HALT;
        this->timer = 0.0f;
    }
}

void EnXc_SetupStoppedAction(EnXc* this) {
    f32* timer = &this->timer;

    *timer += 1.0f;
    if (*timer >= 12.0f) {
        this->action = SHEIK_ACTION_STOPPED;
        this->actor.speed = 0.0f;
    }
}

void func_80B3DAF0(EnXc* this, PlayState* play) {
    CsCmdActorCue* cue = EnXc_GetCue(play, 4);
    u16 cueId;

    if (cue != NULL) {
        cueId = cue->id;

        if (cueId == 3 || cueId == 11 || cueId == 12 || cueId == 13 || cueId == 23) {
            f32 frameCount = Animation_GetLastFrame(&gSheikPullingOutHarpAnim);

            Animation_Change(&this->skelAnime, &gSheikPullingOutHarpAnim, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, -4.0f);
            this->action = SHEIK_ACTION_7;
            this->drawMode = SHEIK_DRAW_PULLING_OUT_HARP;
        }
    }
}

void EnXc_SetupInitialHarpAction(EnXc* this, s32 animFinished) {
    SkelAnime* skelAnime;
    f32 frameCount;

    if (animFinished) {
        skelAnime = &this->skelAnime;
        frameCount = Animation_GetLastFrame(&gSheikInitialHarpAnim);
        Animation_Change(skelAnime, &gSheikInitialHarpAnim, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, 0.0f);
        this->action = SHEIK_ACTION_HARP_READY;
        this->drawMode = SHEIK_DRAW_HARP;
    }
}

void EnXc_SetupPlayingHarpAction(EnXc* this, PlayState* play, s32 animFinished) {
    s32 pad;
    SkelAnime* skelAnime;
    AnimationHeader* animation;
    f32 frameCount;

    if (animFinished) {
        skelAnime = &this->skelAnime;
        animation = EnXc_GetCurrentHarpAnim(play, 4);
        frameCount = Animation_GetLastFrame(animation);
        Animation_Change(skelAnime, animation, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, -8.0f);
        this->action = SHEIK_PLAYING_HARP;
        this->drawMode = SHEIK_DRAW_HARP;
    }
}

void func_80B3DCA8(EnXc* this, PlayState* play) {
    f32 frameCount;

    if (play->csCtx.state != CS_STATE_IDLE) {
        CsCmdActorCue* cue = play->csCtx.actorCues[4];

        if (cue != NULL && cue->id == 8) {
            frameCount = Animation_GetLastFrame(&gSheikInitialHarpAnim);
            Animation_Change(&this->skelAnime, &gSheikInitialHarpAnim, 0.0f, frameCount, frameCount, ANIMMODE_LOOP,
                             -8.0f);
            this->action = SHEIK_ACTION_10;
        }
    }
}

void EnXc_SetupHarpPutawayAction(EnXc* this, PlayState* play) {
    f32 curFrame;
    f32 animFrameCount;

    if (EnXc_CheckForCue(this, play, 5, 4)) {
        curFrame = this->skelAnime.curFrame;
        animFrameCount = this->skelAnime.endFrame;
        if (curFrame >= animFrameCount) {
            s32 pad;

            Animation_Change(&this->skelAnime, &gSheikInitialHarpAnim, -1.0f,
                             Animation_GetLastFrame(&gSheikInitialHarpAnim), 0.0f, ANIMMODE_ONCE, 0.0f);
            this->action = SHEIK_ACTION_PUT_HARP_AWAY;
        }
    } else if (EnXc_CheckForNoCue(this, play, 8, 4)) {
        EnXc_SetupPlayingHarpAction(this, play, true);
    }
}

void func_80B3DE00(EnXc* this, s32 animFinished) {
    if (animFinished) {
        Animation_Change(&this->skelAnime, &gSheikPullingOutHarpAnim, -1.0f,
                         Animation_GetLastFrame(&gSheikPullingOutHarpAnim), 0.0f, ANIMMODE_ONCE, 0.0f);
        this->action = SHEIK_ACTION_12;
        this->drawMode = SHEIK_DRAW_PULLING_OUT_HARP;
    }
}

void func_80B3DE78(EnXc* this, s32 animFinished) {
    if (animFinished) {
        Animation_Change(&this->skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gSheikIdleAnim),
                         ANIMMODE_LOOP, 0.0f);
        this->action = SHEIK_ACTION_13;
        this->drawMode = SHEIK_DRAW_DEFAULT;
        this->timer = 0.0f;
    }
}

void EnXc_SetupReverseAccel(EnXc* this, PlayState* play) {
    if (play->csCtx.state != CS_STATE_IDLE) {
        CsCmdActorCue* cue = play->csCtx.actorCues[4];

        if (cue != NULL && cue->id == 4) {
            Animation_Change(&this->skelAnime, &gSheikWalkingAnim, -1.0f, Animation_GetLastFrame(&gSheikWalkingAnim),
                             0.0f, ANIMMODE_LOOP, -12.0f);
            this->action = SHEIK_ACTION_REVERSE_ACCEL;
            this->actor.world.rot.y += 0x8000;
            this->timer = 0.0f;
        }
    }
}

void EnXc_SetupReverseWalkAction(EnXc* this) {
    this->timer++;
    if (this->timer >= 12.0f) {
        this->actor.speed = (kREG(2) * 0.01f) + 1.2f;
        this->action = SHEIK_ACTION_REVERSE_WALK;
    }
}

void EnXc_SetupReverseHaltAction(EnXc* this) {
    f32 xzDistToPlayer = this->actor.xzDistToPlayer;

    if (xzDistToPlayer >= kREG(5) + 140.0f) {
        Animation_Change(&this->skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gSheikIdleAnim),
                         ANIMMODE_LOOP, -12.0f);
        this->action = SHEIK_ACTION_REVERSE_HALT;
        this->timer = 0.0f;
    }
}

void EnXc_SetupNutThrow(EnXc* this) {
    this->timer++;
    if (this->timer >= 12.0f) {
        Animation_Change(&this->skelAnime, &gSheikThrowingNutAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gSheikThrowingNutAnim), ANIMMODE_ONCE, 0.0f);
        this->action = SHEIK_ACTION_THROW_NUT;
        this->timer = 0.0f;
        this->actor.speed = 0.0f;
    }
}

void func_80B3E164(EnXc* this, PlayState* play) {
    this->timer++;
    if (this->timer >= 30.0f) {
        this->action = SHEIK_ACTION_DELETE;
        EnXc_SpawnNut(this, play);
    }
}

void EnXc_SetupDisappear(EnXc* this, PlayState* play) {
    if (play->csCtx.state != CS_STATE_IDLE) {
        CsCmdActorCue* cue = play->csCtx.actorCues[4];

        if (cue != NULL && cue->id == 9) {
            s16 sceneId = play->sceneId;

            // Sheik fades away if end of Bolero CS, kill actor otherwise
            if (sceneId == SCENE_DEATH_MOUNTAIN_CRATER) {
                s32 pad;

                this->action = SHEIK_ACTION_FADE;
                this->drawMode = SHEIK_DRAW_NOTHING;
                this->actor.shape.shadowAlpha = 0;
            } else {
                Actor_Kill(&this->actor);
            }
        }
    }
}

void EnXc_ActionFunc0(EnXc* this, PlayState* play) {
    EnXc_SetColossusAppearSFX(this, play);
    EnXc_SetColossusWindSFX(play);
    func_80B3D750(this, play);
}

void EnXc_ActionFunc1(EnXc* this, PlayState* play) {
    EnXc_SetColossusAppearSFX(this, play);
    EnXc_SetColossusWindSFX(play);
    EnXc_SetupFallFromSkyAction(this, play);
}

void EnXc_GracefulFall(EnXc* this, PlayState* play) {
    s32 animFinished = EnXc_AnimIsFinished(this);

    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetLandingSFX(this, play);
    EnXc_SetColossusAppearSFX(this, play);
    EnXc_SetColossusWindSFX(play);
    func_80B3D8A4(this, play, animFinished);
}

void EnXc_Accelerate(EnXc* this, PlayState* play) {
    EnXc_CalcXZAccel(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, play);
    EnXc_SetupWalkAction(this);
}

void EnXc_Walk(EnXc* this, PlayState* play) {
    func_80B3D644(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, play);
    EnXc_SetupHaltAction(this);
}

void EnXc_Stopped(EnXc* this, PlayState* play) {
    EnXc_CalcXZSpeed(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, play);
    EnXc_SetupStoppedAction(this);
}

void EnXc_ActionFunc6(EnXc* this, PlayState* play) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    func_80B3DAF0(this, play);
}

void EnXc_ActionFunc7(EnXc* this, PlayState* play) {
    s32 animFinished = EnXc_AnimIsFinished(this);

    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetupInitialHarpAction(this, animFinished);
}

void EnXc_ActionFunc8(EnXc* this, PlayState* play) {
    s32 animFinished = EnXc_AnimIsFinished(this);

    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetupPlayingHarpAction(this, play, animFinished);
}

void EnXc_ActionFunc9(EnXc* this, PlayState* play) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    func_80B3DCA8(this, play);
}

void EnXc_ActionFunc10(EnXc* this, PlayState* play) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetupHarpPutawayAction(this, play);
}

void EnXc_ActionFunc11(EnXc* this, PlayState* play) {
    s32 animFinished = EnXc_AnimIsFinished(this);

    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    func_80B3DE00(this, animFinished);
}

void EnXc_ActionFunc12(EnXc* this, PlayState* play) {
    s32 animFinished = EnXc_AnimIsFinished(this);

    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    func_80B3DE78(this, animFinished);
}

void EnXc_ActionFunc13(EnXc* this, PlayState* play) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_InitFlame(this, play);
    EnXc_SetupReverseAccel(this, play);
}

void EnXc_ReverseAccelerate(EnXc* this, PlayState* play) {
    func_80B3D6F0(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, play);
    EnXc_InitFlame(this, play);
    EnXc_SetupReverseWalkAction(this);
}

void EnXc_ActionFunc15(EnXc* this, PlayState* play) {
    func_80B3D710(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, play);
    EnXc_InitFlame(this, play);
    EnXc_SetupReverseHaltAction(this);
}

void EnXc_HaltAndWaitToThrowNut(EnXc* this, PlayState* play) {
    func_80B3D730(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, play);
    EnXc_InitFlame(this, play);
    EnXc_SetupNutThrow(this);
}

void EnXc_ThrowNut(EnXc* this, PlayState* play) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetNutThrowSFX(this, play);
    EnXc_InitFlame(this, play);
    func_80B3E164(this, play);
}

void EnXc_Delete(EnXc* this, PlayState* play) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_InitFlame(this, play);
    EnXc_SetupDisappear(this, play);
}

void EnXc_Fade(EnXc* this, PlayState* play) {
    EnXc_InitFlame(this, play);
}

void func_80B3E87C(Gfx** dList, EnXc* this) {
    f32 currentFrame = this->skelAnime.curFrame;

    if (currentFrame >= 34.0f) {
        *dList = gSheikHarpDL;
    }
}

s32 EnXc_PullingOutHarpOverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                        void* thisx) {
    EnXc* this = (EnXc*)thisx;

    if (limbIndex == 12) {
        func_80B3E87C(dList, this);
    }

    return 0;
}

s32 EnXc_HarpOverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnXc* this = (EnXc*)thisx;

    if (limbIndex == 12) {
        *dList = gSheikHarpDL;
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

void func_80B3EBF0(EnXc* this, PlayState* play) {
    this->action = SHEIK_ACTION_20;
}

void func_80B3EC00(EnXc* this) {
    this->action = SHEIK_ACTION_21;
}

void func_80B3EC0C(EnXc* this, PlayState* play) {
    CutsceneContext* csCtx = &play->csCtx;

    if (csCtx->state != 0) {
        CsCmdActorCue* cue = csCtx->actorCues[4];

        if ((cue != NULL) && (cue->id != 1)) {
            PosRot* posRot = &this->actor.world;
            Vec3i* startPos = &cue->startPos;
            ActorShape* shape = &this->actor.shape;

            posRot->pos.x = startPos->x;
            posRot->pos.y = startPos->y;
            posRot->pos.z = startPos->z;

            posRot->rot.y = shape->rot.y = cue->rot.y;

            this->action = SHEIK_ACTION_22;
            this->drawMode = SHEIK_DRAW_DEFAULT;
        }
    }
}

void func_80B3EC90(EnXc* this, PlayState* play) {
    CutsceneContext* csCtx = &play->csCtx;

    if (csCtx->state != 0) {
        CsCmdActorCue* cue = csCtx->actorCues[4];

        if (cue != NULL && cue->id != 6) {
            func_80B3C9EC(this);
        }
    }
}

void func_80B3ECD8(EnXc* this) {
    this->timer++;
    if (this->timer >= 12.0f) {
        this->actor.speed = kREG(2) * 0.01f + 1.2f;
        this->action = SHEIK_ACTION_24;
    }
}

void EnXc_ActionFunc20(EnXc* this, PlayState* play) {
    func_80B3EC00(this);
}

void EnXc_ActionFunc21(EnXc* this, PlayState* play) {
    func_80B3EC0C(this, play);
}

void EnXc_ActionFunc22(EnXc* this, PlayState* play) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    func_80B3EC90(this, play);
}

void EnXc_ActionFunc23(EnXc* this, PlayState* play) {
    func_80B3D6F0(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, play);
    func_80B3ECD8(this);
}

void EnXc_ActionFunc24(EnXc* this, PlayState* play) {
}

void EnXc_ActionFunc25(EnXc* this, PlayState* play) {
}

void EnXc_ActionFunc26(EnXc* this, PlayState* play) {
}

void EnXc_ActionFunc27(EnXc* this, PlayState* play) {
}

void EnXc_ActionFunc28(EnXc* this, PlayState* play) {
}

void func_80B3EE64(EnXc* this, PlayState* play) {
    this->action = SHEIK_ACTION_SERENADE;
}

void func_80B3EE74(EnXc* this, PlayState* play) {
    if (EnXc_SerenadeCS(this, play)) {
        this->action = SHEIK_ACTION_30;
    }
}

void func_80B3EEA4(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_30, SHEIK_ACTION_31);
}

void func_80B3EEC8(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_31, SHEIK_ACTION_32);
}

void func_80B3EEEC(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_32, SHEIK_ACTION_33);
}

void func_80B3EF10(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_33, SHEIK_ACTION_34);
}

void func_80B3EF34(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_34, SHEIK_ACTION_35);
}

void func_80B3EF58(EnXc* this) {
    func_80B3C7D4(this, SHEIK_ACTION_35, SHEIK_ACTION_36, SHEIK_ACTION_34);
}

void func_80B3EF80(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_36, SHEIK_ACTION_37);
}

void func_80B3EFA4(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_37, SHEIK_ACTION_38);
}

void func_80B3EFC8(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_38, SHEIK_ACTION_39);
}

void func_80B3EFEC(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_39, SHEIK_ACTION_40);
}

void func_80B3F010(EnXc* this) {
    f32 xzDistToPlayer = this->actor.xzDistToPlayer;

    if (kREG(5) + 140.0f <= xzDistToPlayer) {
        Animation_Change(&this->skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gSheikIdleAnim),
                         ANIMMODE_LOOP, -12.0f);
        this->action = SHEIK_ACTION_41;
        this->timer = 0.0f;
    }
}

void func_80B3F0B8(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_41, SHEIK_ACTION_42);
}

void func_80B3F0DC(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_42, SHEIK_ACTION_43);
}

void func_80B3F100(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_43, SHEIK_ACTION_44);
}

void EnXc_Serenade(EnXc* this, PlayState* play) {
    func_80B3EE74(this, play);
}

void EnXc_ActionFunc30(EnXc* this, PlayState* play) {
    EnXc_ActionFunc21(this, play);
    func_80B3EEA4(this);
}

void EnXc_ActionFunc31(EnXc* this, PlayState* play) {
    EnXc_ActionFunc6(this, play);
    func_80B3C588(this, play, 4);
    func_80B3EEC8(this);
}

void EnXc_ActionFunc32(EnXc* this, PlayState* play) {
    EnXc_ActionFunc7(this, play);
    func_80B3EEEC(this);
}

void EnXc_ActionFunc33(EnXc* this, PlayState* play) {
    EnXc_ActionFunc8(this, play);
    func_80B3EF10(this);
}

void EnXc_ActionFunc34(EnXc* this, PlayState* play) {
    EnXc_ActionFunc9(this, play);
    func_80B3EF34(this);
}

void EnXc_ActionFunc35(EnXc* this, PlayState* play) {
    EnXc_ActionFunc10(this, play);
    func_80B3EF58(this);
}

void EnXc_ActionFunc36(EnXc* this, PlayState* play) {
    EnXc_ActionFunc11(this, play);
    func_80B3EF80(this);
}

void EnXc_ActionFunc37(EnXc* this, PlayState* play) {
    EnXc_ActionFunc12(this, play);
    func_80B3EFA4(this);
}

void EnXc_ActionFunc38(EnXc* this, PlayState* play) {
    EnXc_ActionFunc13(this, play);
    func_80B3EFC8(this);
}

void EnXc_ActionFunc39(EnXc* this, PlayState* play) {
    EnXc_ReverseAccelerate(this, play);
    func_80B3EFEC(this);
}

void EnXc_ActionFunc40(EnXc* this, PlayState* play) {
    func_80B3D710(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, play);
    func_80B3F010(this);
}

void EnXc_ActionFunc41(EnXc* this, PlayState* play) {
    EnXc_HaltAndWaitToThrowNut(this, play);
    func_80B3F0B8(this);
}

void EnXc_ActionFunc42(EnXc* this, PlayState* play) {
    EnXc_ThrowNut(this, play);
    func_80B3F0DC(this);
}

void EnXc_ActionFunc43(EnXc* this, PlayState* play) {
    EnXc_Delete(this, play);
    func_80B3F100(this);
}

void EnXc_ActionFunc44(EnXc* this, PlayState* play) {
}

void func_80B3F3C8(EnXc* this, PlayState* play) {
    this->action = SHEIK_ACTION_45;
}

void func_80B3F3D8(void) {
    Sfx_PlaySfxCentered2(NA_SE_PL_SKIP);
}

#pragma increment_block_number "gc-eu:64 gc-eu-mq:64 gc-jp:64 gc-jp-ce:64 gc-jp-mq:64 gc-us:64 gc-us-mq:64" \
                               "ntsc-1.0:64 ntsc-1.1:64 ntsc-1.2:64 pal-1.0:64 pal-1.1:64"

void EnXc_PlayDiveSFX(Vec3f* src, PlayState* play) {
    static Vec3f D_80B42DA0;
    f32 wDest[2];

    SkinMatrix_Vec3fMtxFMultXYZW(&play->viewProjectionMtxF, src, &D_80B42DA0, wDest);
    Sfx_PlaySfxAtPos(&D_80B42DA0, NA_SE_EV_DIVE_INTO_WATER);
}

void EnXc_LakeHyliaDive(PlayState* play) {
    CsCmdActorCue* cue = cue = EnXc_GetCue(play, 0);

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

void func_80B3F534(PlayState* play) {
    CutsceneContext* csCtx = &play->csCtx;
    u16 csCurFrame = csCtx->curFrame;

    if (csCurFrame == 310) {
        Actor_Spawn(&play->actorCtx, play, ACTOR_DOOR_WARP1, -1044.0f, -1243.0f, 7458.0f, 0, 0, 0, WARP_DESTINATION);
    }
}

void func_80B3F59C(EnXc* this, PlayState* play) {
    static s32 D_80B41DAC = 1;
    CsCmdActorCue* cue = EnXc_GetCue(play, 0);

    if (cue != NULL) {
        s32 nextCueId = cue->id;

        if (nextCueId != D_80B41DAC) {
            switch (nextCueId) {
                case 2:
                    func_80B3F3D8();
                    break;
                case 3:
                    EnXc_LakeHyliaDive(play);
                    break;
                default:
                    break;
            }
            D_80B41DAC = nextCueId;
        }
    }
}

void func_80B3F620(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_45, SHEIK_ACTION_46);
}

void func_80B3F644(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_46, SHEIK_ACTION_47);
}

void func_80B3F668(EnXc* this, PlayState* play) {
    if (EnXc_CheckForCue(this, play, 4, 4)) {
        EnXc_ChangeAnimation(this, &gSheikWalkingAnim, ANIMMODE_LOOP, -12.0f, true);
        this->action = SHEIK_ACTION_48;
        this->actor.world.rot.y += 0x8000;
        this->timer = 0.0f;
    }
}

void func_80B3F6DC(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_48, SHEIK_ACTION_49);
}

void EnXc_SetupKneelAction(EnXc* this, PlayState* play) {
    if (EnXc_CheckForCue(this, play, 16, 4)) {
        EnXc_ChangeAnimation(this, &gSheikKneelingAnim, ANIMMODE_LOOP, 0.0f, false);
        this->action = SHEIK_ACTION_KNEEL;
    }
}

void func_80B3F754(EnXc* this, PlayState* play) {
    if (EnXc_CheckForCue(this, play, 22, 4)) {
        EnXc_ChangeAnimation(this, &gSheikAnim_01A048, ANIMMODE_LOOP, 0.0f, false);
        this->action = SHEIK_ACTION_51;
        func_80B3C588(this, play, 4);
    }
}

void func_80B3F7BC(EnXc* this, PlayState* play) {
    if (EnXc_CheckForCue(this, play, 9, 4)) {
        this->action = SHEIK_ACTION_52;
        this->drawMode = SHEIK_DRAW_NOTHING;
    }
}

void EnXc_ActionFunc45(EnXc* this, PlayState* play) {
    EnXc_ActionFunc20(this, play);
    func_80B3F620(this);
}

void EnXc_ActionFunc46(EnXc* this, PlayState* play) {
    EnXc_ActionFunc21(this, play);
    func_80B3F644(this);
}

void EnXc_ActionFunc47(EnXc* this, PlayState* play) {
    func_80B3F534(play);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    func_80B3C588(this, play, 4);
    func_80B3F668(this, play);
}

void EnXc_ActionFunc48(EnXc* this, PlayState* play) {
    EnXc_ActionFunc23(this, play);
    func_80B3F6DC(this);
}

void EnXc_ActionFunc49(EnXc* this, PlayState* play) {
    func_80B3D710(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, play);
    EnXc_SetupKneelAction(this, play);
}

void EnXc_Kneel(EnXc* this, PlayState* play) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    func_80B3F59C(this, play);
    func_80B3C588(this, play, 4);
    func_80B3F754(this, play);
}

void EnXc_ActionFunc51(EnXc* this, PlayState* play) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    func_80B3F59C(this, play);
    func_80B3C620(this, play, 4);
    func_80B3F7BC(this, play);
}

void EnXc_ActionFunc52(EnXc* this, PlayState* play) {
    func_80B3F59C(this, play);
}

void func_80B3FA08(EnXc* this, PlayState* play) {
    this->action = SHEIK_ACTION_53;
    this->triforceAngle = kREG(24) + 0x53FC;
}

void func_80B3FA2C(void) {
    Audio_PlayCutsceneEffectsSequence(SEQ_CS_EFFECTS_SHEIK_TRANSFORM);
}

void EnXc_PlayTriforceSFX(Actor* thisx, PlayState* play) {
    EnXc* this = (EnXc*)thisx;

    if (this->unk_2A8) {
        s32 pad;
        Vec3f src;
        Vec3f pos;
        Vec3f sp1C = { 0.0f, 0.0f, 0.0f };
        f32 wDest;

        Matrix_MultVec3f(&sp1C, &src);
        SkinMatrix_Vec3fMtxFMultXYZW(&play->viewProjectionMtxF, &src, &pos, &wDest);
        SfxSource_PlaySfxAtFixedWorldPos(play, &pos, 80, NA_SE_EV_TRIFORCE_MARK);
        this->unk_2A8 = 0;
    }
}

void func_80B3FAE0(EnXc* this) {
    if (Animation_OnFrame(&this->skelAnime, 38.0f)) {
        Sfx_PlaySfxAtPos(&this->actor.projectedPos, NA_SE_VO_SK_SHOUT);
        func_80B3FA2C();
    }
}

void EnXc_CalcTriforce(Actor* thisx, PlayState* play) {
    EnXc* this = (EnXc*)thisx;

    if (EnXc_CheckForCue(this, play, 21, 4)) {
        this->unk_274 = 1;
        if (this->unk_2AC == 0) {
            this->unk_2AC = 1;
            this->unk_2A8 = 1;
        }
    } else if (EnXc_CheckForCue(this, play, 19, 4)) {
        this->unk_274 = 2;
    }
    if (this->unk_274 != 0) {
        f32* timer = &this->timer;
        s32* prim = this->triforcePrimColor;
        s32* env = this->triforceEnvColor;
        f32* scale = this->triforceScale;

        if (this->unk_274 == 1) {
            if (*timer < kREG(25) + 40.0f) {
                f32 div = *timer / (kREG(25) + 40.0f);

                prim[2] = -85.0f * div + 255;
                prim[3] = 255.0f * div;
                env[1] = 100.0f * div + 100;
                *timer += 1.0f;
            } else {
                prim[2] = 170;
                prim[3] = 255;
                env[1] = 200;
            }
            scale[0] = kREG(19) * 0.1f + 40.0f;
            scale[1] = kREG(20) * 0.1f + 40.0f;
            scale[2] = kREG(21) * 0.1f + 40.0f;
        } else if (this->unk_274 == 2) {
            f32 maxTime = (kREG(25) + 40.0f) + (kREG(27) + 90.0f);

            if (*timer < maxTime) {
                f32 div = (*timer - (kREG(25) + 40.0f)) / (kREG(27) + 90.0f);
                scale[0] = (kREG(19) * 0.1f + 40.0f) + div * ((kREG(26) + 50.0f) * (kREG(19) * 0.1f + 40.0f));
                scale[1] = (kREG(20) * 0.1f + 40.0f) + div * ((kREG(26) + 50.0f) * (kREG(20) * 0.1f + 40.0f));
                scale[2] = (kREG(21) * 0.1f + 40.0f) + div * ((kREG(26) + 50.0f) * (kREG(21) * 0.1f + 40.0f));
                *timer += 1.0f;
            } else {
                scale[0] = (kREG(19) * 0.1f + 40.0f) * (kREG(26) + 50.0f);
                scale[1] = (kREG(20) * 0.1f + 40.0f) * (kREG(26) + 50.0f);
                scale[2] = (kREG(21) * 0.1f + 40.0f) * (kREG(26) + 50.0f);
            }
            this->triforceAngle += (s16)(kREG(28) + 0x2EE0);
        }
    }
}

void func_80B3FF0C(EnXc* this, PlayState* play) {
    if (EnXc_CheckForNoCue(this, play, 1, 4)) {
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

        this->action = SHEIK_ACTION_54;
        this->drawMode = SHEIK_DRAW_DEFAULT;
    }
}

void EnXc_SetupShowTriforceAction(EnXc* this, PlayState* play) {
    if (EnXc_CheckForCue(this, play, 10, 4)) {
        Animation_Change(&this->skelAnime, &gSheikShowingTriforceOnHandAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gSheikShowingTriforceOnHandAnim), ANIMMODE_ONCE, -8.0f);
        this->action = SHEIK_ACTION_SHOW_TRIFORCE;
        this->drawMode = SHEIK_DRAW_TRIFORCE;
    }
}

void EnXc_SetupShowTriforceIdleAction(EnXc* this, s32 animFinished) {
    if (animFinished) {
        Animation_Change(&this->skelAnime, &gSheikShowingTriforceOnHandIdleAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gSheikShowingTriforceOnHandIdleAnim), ANIMMODE_LOOP, 0.0f);
        this->action = SHEIK_ACTION_SHOW_TRIFORCE_IDLE;
    }
}
void func_80B400AC(EnXc* this, PlayState* play) {
    if (EnXc_CheckForCue(this, play, 9, 4)) {
        Actor_Kill(&this->actor);
    }
}

void EnXc_ActionFunc53(EnXc* this, PlayState* play) {
    func_80B3FF0C(this, play);
}

void EnXc_ActionFunc54(EnXc* this, PlayState* play) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetupShowTriforceAction(this, play);
#if DEBUG_FEATURES
    func_80B3C888(this, play);
#endif
}

void EnXc_ShowTriforce(EnXc* this, PlayState* play) {
    s32 animFinished = EnXc_AnimIsFinished(this);

    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_CalcTriforce(&this->actor, play);
    func_80B3FAE0(this);
    EnXc_SetupShowTriforceIdleAction(this, animFinished);
#if DEBUG_FEATURES
    func_80B3C888(this, play);
#endif
}

void EnXc_ShowTriforceIdle(EnXc* this, PlayState* play) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_CalcTriforce(&this->actor, play);
    func_80B400AC(this, play);
}

s32 EnXc_TriforceOverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    if (limbIndex == 15) {
        *dList = gSheikDL_011620;
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
        this->unk_2BC = 1;
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
    if (this->unk_2BC != 0) {
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
        gSPDisplayList(POLY_XLU_DISP++, gSheikDL_012970);
    }

    func_8002EBCC(thisx, play, 0);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTexture));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeTexture));
    SkelAnime_DrawFlexOpa(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount,
                          EnXc_TriforceOverrideLimbDraw, EnXc_TriforcePostLimbDraw, this);
    CLOSE_DISPS(gfxCtx, "../z_en_oA2_inMetamol.c", 668);
}

void func_80B40590(EnXc* this, PlayState* play) {
    this->action = SHEIK_ACTION_NOCTURNE_INIT;
    this->drawMode = SHEIK_DRAW_SQUINT;
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

void func_80B406F8(Actor* thisx) {
    EnXc* this = (EnXc*)thisx;

    this->action = SHEIK_ACTION_NOCTURNE_INIT;
    this->drawMode = SHEIK_DRAW_NOTHING;
    this->actor.shape.shadowAlpha = 0;
}

void EnXc_SetupIdleInNocturne(EnXc* this, PlayState* play) {
    s32 pad;
    ActorShape* actorShape = &this->actor.shape;
    SkelAnime* skelAnime = &this->skelAnime;
    f32 frameCount = Animation_GetLastFrame(&gSheikIdleAnim);

    func_80B3C9DC(this);
    func_80B3C588(this, play, 4);
    Animation_Change(skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
    this->action = SHEIK_ACTION_NOCTURNE_IDLE;
    this->drawMode = SHEIK_DRAW_SQUINT;
    actorShape->shadowAlpha = 255;
}

void EnXc_SetupDefenseStance(Actor* thisx) {
    EnXc* this = (EnXc*)thisx;
    SkelAnime* skelAnime = &this->skelAnime;
    f32 frameCount = Animation_GetLastFrame(&gSheikDefenseStanceAnim);

    Animation_Change(skelAnime, &gSheikDefenseStanceAnim, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, -8.0f);
    this->action = SHEIK_ACTION_DEFENSE_STANCE;
    this->drawMode = SHEIK_DRAW_DEFAULT;
}

void EnXc_SetupContortions(EnXc* this, PlayState* play) {
    s32 pad[2];
    SkelAnime* skelAnime = &this->skelAnime;

#if DEBUG_FEATURES
    Animation_Change(skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gSheikIdleAnim), ANIMMODE_LOOP,
                     0.0f);
#endif
    func_80B3C588(this, play, 4);
    func_80B3C964(this, play);
    Animation_Change(skelAnime, &gSheikContortionsAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gSheikContortionsAnim),
                     ANIMMODE_ONCE, 0.0f);
    this->action = SHEIK_ACTION_CONTORT;
    this->drawMode = SHEIK_DRAW_DEFAULT;
    this->actor.shape.shadowAlpha = 255;
}

void EnXc_SetupFallInNocturne(EnXc* this, PlayState* play) {
    s32 pad;
    SkelAnime* skelAnime = &this->skelAnime;
    f32 frameCount = Animation_GetLastFrame(&gSheikIdleAnim);

    Animation_Change(skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
    func_80B3C588(this, play, 4);
    func_80B3C964(this, play);
    Animation_Change(skelAnime, &gSheikFallingFromContortionsAnim, 1.0f, 0.0f,
                     Animation_GetLastFrame(&gSheikFallingFromContortionsAnim), ANIMMODE_ONCE, 0.0f);
    this->action = SHEIK_ACTION_NOCTURNE_FALL;
    this->drawMode = SHEIK_DRAW_DEFAULT;
    this->actor.shape.shadowAlpha = 255;
}

void EnXc_SetupHittingGroundInNocturne(EnXc* this, PlayState* play) {
    s32 pad[3];
    f32 frameCount = Animation_GetLastFrame(&gSheikHittingGroundAnim);

    func_80B3C9DC(this);
    func_80B3C588(this, play, 4);
    Animation_Change(&this->skelAnime, &gSheikHittingGroundAnim, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, 0.0f);
    this->action = SHEIK_ACTION_NOCTURNE_HIT_GROUND;
    this->drawMode = SHEIK_DRAW_DEFAULT;
    this->actor.shape.shadowAlpha = 255;
}

void func_80B40A78(EnXc* this, PlayState* play) {
    s32 pad[3];
    f32 frameCount = Animation_GetLastFrame(&gSheikHittingGroundAnim);

    func_80B3C9DC(this);
    func_80B3C588(this, play, 4);
    Animation_Change(&this->skelAnime, &gSheikHittingGroundAnim, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, 0.0f);
    this->action = SHEIK_ACTION_63;
    this->drawMode = SHEIK_DRAW_DEFAULT;
    this->actor.shape.shadowAlpha = 255;
}

void EnXc_SetupKneelInNocturne(EnXc* this, PlayState* play) {
    s32 pad[3];
    f32 frameCount = Animation_GetLastFrame(&gSheikKneelingAnim);

    func_80B3C9DC(this);
    func_80B3C588(this, play, 4);
    Animation_Change(&this->skelAnime, &gSheikKneelingAnim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
    this->action = SHEIK_ACTION_NOCTURNE_KNEEL;
    this->drawMode = SHEIK_DRAW_DEFAULT;
    this->actor.shape.shadowAlpha = 255;
}

void func_80B40BB4(EnXc* this, PlayState* play) {
    s32 pad[3];
    f32 frameCount = Animation_GetLastFrame(&gSheikIdleAnim);
    func_80B3C9DC(this);
    func_80B3C588(this, play, 4);
    Animation_Change(&this->skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
    this->action = SHEIK_ACTION_65;
    this->drawMode = SHEIK_DRAW_DEFAULT;
    this->actor.shape.shadowAlpha = 255;
}

void func_80B40C50(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_65, SHEIK_ACTION_66);
}

void func_80B40C74(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_66, SHEIK_ACTION_67);
}

void func_80B40C98(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_67, SHEIK_ACTION_68);
}

void func_80B40CBC(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_68, SHEIK_ACTION_69);
}

void func_80B40CE0(EnXc* this) {
    func_80B3C7D4(this, SHEIK_ACTION_69, SHEIK_ACTION_70, SHEIK_ACTION_68);
}

void func_80B40D08(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_70, SHEIK_ACTION_71);
}

void func_80B40D2C(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_71, SHEIK_ACTION_72);
}

void func_80B40D50(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_72, SHEIK_ACTION_NOCTURNE_REVERSE_ACCEL);
}

void func_80B40D74(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_NOCTURNE_REVERSE_ACCEL, SHEIK_ACTION_NOCTURNE_REVERSE_WALK);
}

void EnXc_SetupReverseHaltInNocturneCS(EnXc* this) {
    f32 xzDistToPlayer = this->actor.xzDistToPlayer;

    if (kREG(5) + 140.0f <= xzDistToPlayer) {
        Animation_Change(&this->skelAnime, &gSheikIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gSheikIdleAnim),
                         ANIMMODE_LOOP, -12.0f);
        this->action = SHEIK_ACTION_NOCTURNE_REVERSE_HALT;
        this->timer = 0.0f;
    }
}

void func_80B40E40(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_NOCTURNE_REVERSE_HALT, SHEIK_ACTION_NOCTURNE_THROW_NUT);
}

void func_80B40E64(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_NOCTURNE_THROW_NUT, SHEIK_ACTION_77);
}

void func_80B40E88(EnXc* this) {
    EnXc_CheckAndSetAction(this, SHEIK_ACTION_77, SHEIK_ACTION_78);
}

s32 EnXc_SetupNocturneState(Actor* thisx, PlayState* play) {
    CsCmdActorCue* cue = EnXc_GetCue(play, 4);

    if (cue != NULL) {
        s32 nextCueId = cue->id;
        EnXc* this = (EnXc*)thisx;
        s32 currentCueId = this->unk_26C;

        if (nextCueId != currentCueId) {
            switch (nextCueId) {
                case 1:
                    func_80B406F8(thisx);
                    break;
                case 6:
                    EnXc_SetupIdleInNocturne(this, play);
                    break;
                case 20:
                    EnXc_SetupDefenseStance(thisx);
                    break;
                case 18:
                    EnXc_SetupContortions(this, play);
                    break;
                case 14:
                    EnXc_SetupFallInNocturne(this, play);
                    break;
                case 19:
                    EnXc_SetupHittingGroundInNocturne(this, play);
                    break;
                case 15:
                    func_80B40A78(this, play);
                    break;
                case 16:
                    EnXc_SetupKneelInNocturne(this, play);
                    break;
                case 17:
                    func_80B40BB4(this, play);
                    break;
                case 9:
                    Actor_Kill(thisx);
                    break;
                default:
                    PRINTF("En_Oa2_Stalker_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
                    break;
            }

            this->unk_26C = nextCueId;
            return 1;
        }
    }
    return 0;
}

void EnXc_InitialNocturneAction(EnXc* this, PlayState* play) {
    EnXc_SetupNocturneState(&this->actor, play);
}

void EnXc_IdleInNocturne(EnXc* this, PlayState* play) {
    func_80B3C588(this, play, 4);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetupNocturneState(&this->actor, play);
}

void EnXc_DefenseStance(EnXc* this, PlayState* play) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetupNocturneState(&this->actor, play);
}

void EnXc_Contort(EnXc* this, PlayState* play) {
    EnXc_SetCrySFX(this, play);
    EnXc_AnimIsFinished(this);
    EnXc_SetEyePattern(this);
    if (!EnXc_SetupNocturneState(&this->actor, play)) {
        func_80B3C924(this, play);
        EnXc_BgCheck(this, play);
    }
}

void EnXc_FallInNocturne(EnXc* this, PlayState* play) {
    EnXc_AnimIsFinished(this);
    EnXc_SetEyePattern(this);
    EnXc_SetThrownAroundSFX(this);
    if (!EnXc_SetupNocturneState(&this->actor, play)) {
        func_80B3C8CC(this, play);
        EnXc_BgCheck(this, play);
    }
}

void EnXc_HitGroundInNocturne(EnXc* this, PlayState* play) {
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetupNocturneState(&this->actor, play);
}

void EnXc_ActionFunc63(EnXc* this, PlayState* play) {
    EnXc_AnimIsFinished(this);
    EnXc_PlayLinkScreamSFX(this, play);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetupNocturneState(&this->actor, play);
}

void EnXc_KneelInNocturneCS(EnXc* this, PlayState* play) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetupNocturneState(&this->actor, play);
}

void EnXc_ActionFunc65(EnXc* this, PlayState* play) {
    EnXc_ActionFunc6(this, play);
    func_80B3C588(this, play, 4);
    func_80B40C50(this);
}

void EnXc_ActionFunc66(EnXc* this, PlayState* play) {
    EnXc_ActionFunc7(this, play);
    func_80B40C74(this);
}

void EnXc_ActionFunc67(EnXc* this, PlayState* play) {
    EnXc_ActionFunc8(this, play);
    func_80B40C98(this);
}

void EnXc_ActionFunc68(EnXc* this, PlayState* play) {
    EnXc_ActionFunc9(this, play);
    func_80B40CBC(this);
}

void EnXc_ActionFunc69(EnXc* this, PlayState* play) {
    EnXc_ActionFunc10(this, play);
    func_80B40CE0(this);
}

void EnXc_ActionFunc70(EnXc* this, PlayState* play) {
    EnXc_ActionFunc11(this, play);
    func_80B40D08(this);
}

void EnXc_ActionFunc71(EnXc* this, PlayState* play) {
    EnXc_ActionFunc12(this, play);
    func_80B40D2C(this);
}

void EnXc_ActionFunc72(EnXc* this, PlayState* play) {
    EnXc_ActionFunc13(this, play);
    func_80B40D50(this);
}

void EnXc_ReverseAccelInNocturneCS(EnXc* this, PlayState* play) {
    EnXc_ReverseAccelerate(this, play);
    func_80B40D74(this);
}

void EnXc_ReverseWalkInNocturneCS(EnXc* this, PlayState* play) {
    func_80B3D710(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, play);
    EnXc_SetEyePattern(this);
    EnXc_SetupReverseHaltInNocturneCS(this);
}

void EnXc_ReverseHaltInNocturneCS(EnXc* this, PlayState* play) {
    EnXc_HaltAndWaitToThrowNut(this, play);
    func_80B40E40(this);
}

void EnXc_ThrowNutInNocturneCS(EnXc* this, PlayState* play) {
    EnXc_ThrowNut(this, play);
    func_80B40E64(this);
}

void EnXc_DeleteInNocturneCS(EnXc* this, PlayState* play) {
    EnXc_Delete(this, play);
    func_80B40E88(this);
}

void EnXc_KillInNocturneCS(EnXc* this, PlayState* play) {
    Actor_Kill(&this->actor);
}

void EnXc_DrawSquintingEyes(Actor* thisx, PlayState* play) {
    EnXc* this = (EnXc*)thisx;
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = play->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_en_oA2_inStalker.c", 839);
    Gfx_SetupDL_25Opa(gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(gSheikEyeSquintingTex));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(gSheikEyeSquintingTex));
    SkelAnime_DrawFlexOpa(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount, NULL, NULL, NULL);
    CLOSE_DISPS(gfxCtx, "../z_en_oA2_inStalker.c", 854);
}

void EnXc_InitTempleOfTime(EnXc* this, PlayState* play) {
    if (LINK_IS_ADULT) {
        if (!GET_EVENTCHKINF(EVENTCHKINF_C5)) {
            SET_EVENTCHKINF(EVENTCHKINF_C5);
            play->csCtx.script = SEGMENTED_TO_VIRTUAL(gTempleOfTimeFirstAdultCs);
            gSaveContext.cutsceneTrigger = 1;
            func_80B3EBF0(this, play);
        } else if (!GET_EVENTCHKINF(EVENTCHKINF_55) && GET_EVENTCHKINF(EVENTCHKINF_48)) {
            SET_EVENTCHKINF(EVENTCHKINF_55);
            Item_Give(play, ITEM_SONG_PRELUDE);
            play->csCtx.script = SEGMENTED_TO_VIRTUAL(gTempleOfTimePreludeCs);
            gSaveContext.cutsceneTrigger = 1;
            this->action = SHEIK_ACTION_30;
        } else if (!GET_EVENTCHKINF(EVENTCHKINF_55)) {
            func_80B3C9EC(this);
        } else {
            Actor_Kill(&this->actor);
        }
    } else {
        Actor_Kill(&this->actor);
    }
}

void EnXc_SetupDialogueAction(EnXc* this, PlayState* play) {
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        s32 pad;

        this->action = SHEIK_ACTION_IN_DIALOGUE;
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

void func_80B41798(EnXc* this, PlayState* play) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CLOSING) {
        this->action = SHEIK_ACTION_BLOCK_PEDESTAL;
        this->actor.flags &= ~(ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY);
    }
}

void EnXc_BlockingPedestalAction(EnXc* this, PlayState* play) {
    EnXc_BgCheck(this, play);
    EnXc_UpdateCollider(&this->actor, play);
    EnXc_CalculateHeadTurn(this, play);
    EnXc_AnimIsFinished(this);
    EnXc_SetEyePattern(this);
    EnXc_SetupDialogueAction(this, play);
}

void EnXc_ActionFunc80(EnXc* this, PlayState* play) {
    EnXc_BgCheck(this, play);
    EnXc_UpdateCollider(&this->actor, play);
    EnXc_CalculateHeadTurn(this, play);
    EnXc_AnimIsFinished(this);
    EnXc_SetEyePattern(this);
    func_80B41798(this, play);
}

static EnXcActionFunc sActionFuncs[] = {
    EnXc_ActionFunc0,
    EnXc_ActionFunc1,
    EnXc_GracefulFall,
    EnXc_Accelerate,
    EnXc_Walk,
    EnXc_Stopped,
    EnXc_ActionFunc6,
    EnXc_ActionFunc7,
    EnXc_ActionFunc8,
    EnXc_ActionFunc9,
    EnXc_ActionFunc10,
    EnXc_ActionFunc11,
    EnXc_ActionFunc12,
    EnXc_ActionFunc13,
    EnXc_ReverseAccelerate,
    EnXc_ActionFunc15,
    EnXc_HaltAndWaitToThrowNut,
    EnXc_ThrowNut,
    EnXc_Delete,
    EnXc_Fade,
    EnXc_ActionFunc20,
    EnXc_ActionFunc21,
    EnXc_ActionFunc22,
    EnXc_ActionFunc23,
    EnXc_ActionFunc24,
    EnXc_ActionFunc25,
    EnXc_ActionFunc26,
    EnXc_ActionFunc27,
    EnXc_ActionFunc28,
    EnXc_Serenade,
    EnXc_ActionFunc30,
    EnXc_ActionFunc31,
    EnXc_ActionFunc32,
    EnXc_ActionFunc33,
    EnXc_ActionFunc34,
    EnXc_ActionFunc35,
    EnXc_ActionFunc36,
    EnXc_ActionFunc37,
    EnXc_ActionFunc38,
    EnXc_ActionFunc39,
    EnXc_ActionFunc40,
    EnXc_ActionFunc41,
    EnXc_ActionFunc42,
    EnXc_ActionFunc43,
    EnXc_ActionFunc44,
    EnXc_ActionFunc45,
    EnXc_ActionFunc46,
    EnXc_ActionFunc47,
    EnXc_ActionFunc48,
    EnXc_ActionFunc49,
    EnXc_Kneel,
    EnXc_ActionFunc51,
    EnXc_ActionFunc52,
    EnXc_ActionFunc53,
    EnXc_ActionFunc54,
    EnXc_ShowTriforce,
    EnXc_ShowTriforceIdle,
    EnXc_InitialNocturneAction,
    EnXc_IdleInNocturne,
    EnXc_DefenseStance,
    EnXc_Contort,
    EnXc_FallInNocturne,
    EnXc_HitGroundInNocturne,
    EnXc_ActionFunc63,
    EnXc_KneelInNocturneCS,
    EnXc_ActionFunc65,
    EnXc_ActionFunc66,
    EnXc_ActionFunc67,
    EnXc_ActionFunc68,
    EnXc_ActionFunc69,
    EnXc_ActionFunc70,
    EnXc_ActionFunc71,
    EnXc_ActionFunc72,
    EnXc_ReverseAccelInNocturneCS,
    EnXc_ReverseWalkInNocturneCS,
    EnXc_ReverseHaltInNocturneCS,
    EnXc_ThrowNutInNocturneCS,
    EnXc_DeleteInNocturneCS,
    EnXc_KillInNocturneCS,
    EnXc_BlockingPedestalAction,
    EnXc_ActionFunc80,
};

void EnXc_Update(Actor* thisx, PlayState* play) {
    EnXc* this = (EnXc*)thisx;
    s32 action = this->action;

    if ((action < 0) || (action >= ARRAY_COUNT(sActionFuncs)) || (sActionFuncs[action] == NULL)) {
        PRINTF(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
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
        case SHEIK_TYPE_1:
            func_80B3EBF0(this, play);
            break;
        case SHEIK_TYPE_2: // Beta Serenade Cutscene or Learning Prelude
            func_80B3EE64(this, play);
            break;
        case SHEIK_TYPE_3:
            func_80B3F3C8(this, play);
            break;
        case SHEIK_TYPE_4:
            func_80B3FA08(this, play);
            break;
        case SHEIK_TYPE_5:
            func_80B40590(this, play);
            break;
        case SHEIK_TYPE_MINUET:
            func_80B3CA38(this, play);
            break;
        case SHEIK_TYPE_BOLERO:
            func_80B3CB58(this, play);
            break;
        case SHEIK_TYPE_SERENADE:
            EnXc_SetupSerenadeAction(this, play);
            break;
        case SHEIK_TYPE_9:
            EnXc_InitTempleOfTime(this, play);
            break;
#if DEBUG_FEATURES
        case SHEIK_TYPE_0:
            EnXc_DoNothing(this, play);
            break;
#endif
        default:
            PRINTF(VT_FGCOL(RED) " En_Oa2 の arg_data がおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
            EnXc_DoNothing(this, play);
    }
}

s32 EnXc_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnXc* this = (EnXc*)thisx;

    if (this->unk_30C != 0) {
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
    EnXc_DrawNothing, EnXc_DrawDefault,  EnXc_DrawPullingOutHarp,
    EnXc_DrawHarp,    EnXc_DrawTriforce, EnXc_DrawSquintingEyes,
};

void EnXc_Draw(Actor* thisx, PlayState* play) {
    EnXc* this = (EnXc*)thisx;

    if (this->drawMode < 0 || this->drawMode > 5 || sDrawFuncs[this->drawMode] == NULL) {
        // "Draw mode is abnormal!!!!!!!!!!!!!!!!!!!!!!!!!"
        PRINTF(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
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
