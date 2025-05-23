/*
 * File: z_demo_im.c
 * Overlay: Demo_Im
 * Description: Impa
 */

#include "z_demo_im.h"
#include "overlays/actors/ovl_En_Arrow/z_en_arrow.h"
#include "overlays/actors/ovl_Door_Warp1/z_door_warp1.h"
#include "assets/scenes/indoors/nakaniwa/nakaniwa_scene.h"
#include "assets/objects/object_im/object_im.h"
#include "terminal.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void DemoIm_Init(Actor* thisx, PlayState* play);
void DemoIm_Destroy(Actor* thisx, PlayState* play);
void DemoIm_Update(Actor* thisx, PlayState* play);
void DemoIm_Draw(Actor* thisx, PlayState* play);
void func_809856F8(DemoIm* this, PlayState* play);
void func_80985718(DemoIm* this, PlayState* play);
void func_80985738(DemoIm* this, PlayState* play);
void func_80985770(DemoIm* this, PlayState* play);
void func_809857B0(DemoIm* this, PlayState* play);
void func_809857F0(DemoIm* this, PlayState* play);
void func_80985830(DemoIm* this, PlayState* play);
void func_80985C10(DemoIm* this, PlayState* play);
void func_80985C40(DemoIm* this, PlayState* play);
void func_80985C94(DemoIm* this, PlayState* play);
void DemoIm_DrawTranslucent(DemoIm* this, PlayState* play);
void func_809863BC(DemoIm* this, PlayState* play);
void func_809863DC(DemoIm* this, PlayState* play);
void func_80986430(DemoIm* this, PlayState* play);
void func_80986494(DemoIm* this, PlayState* play);
void func_809864D4(DemoIm* this, PlayState* play);
void func_809868E8(DemoIm* this, PlayState* play);
void func_80986908(DemoIm* this, PlayState* play);
void func_80986948(DemoIm* this, PlayState* play);
void func_80986D40(DemoIm* this, PlayState* play);
void func_80986DC8(DemoIm* this, PlayState* play);
void func_80986E20(DemoIm* this, PlayState* play);
void func_80986E40(DemoIm* this, PlayState* play);
void func_80986EAC(DemoIm* this, PlayState* play);
void func_80986F08(DemoIm* this, PlayState* play);
void func_80986F28(DemoIm* this, PlayState* play);
void func_80986F88(DemoIm* this, PlayState* play);
void func_80986FA8(DemoIm* this, PlayState* play);
void func_80987288(DemoIm* this, PlayState* play);
void func_809872A8(DemoIm* this, PlayState* play);
void func_809872F0(DemoIm* this, PlayState* play);
void func_80987330(DemoIm* this, PlayState* play);
void DemoIm_DrawNothing(DemoIm* this, PlayState* play);
void DemoIm_DrawSolid(DemoIm* this, PlayState* play);

static void* sEyeTextures[] = {
    gImpaEyeOpenTex,
    gImpaEyeHalfTex,
    gImpaEyeClosedTex,
};

#if DEBUG_FEATURES
static u32 D_8098783C = 0;
#endif

static ColliderCylinderInitType1 sCylinderInit = {
    {
        COL_MATERIAL_HIT0,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_PLAYER,
        COLSHAPE_CYLINDER,
    },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 25, 80, 0, { 0, 0, 0 } },
};

#include "z_demo_im_cutscene_data.inc.c"

static DemoImActionFunc sActionFuncs[] = {
    func_809856F8, func_80985718, func_80985738, func_80985770, func_809857B0, func_809857F0, func_80985830,
    func_80985C10, func_80985C40, func_80985C94, func_809863BC, func_809863DC, func_80986430, func_80986494,
    func_809864D4, func_809868E8, func_80986908, func_80986948, func_80986D40, func_80986DC8, func_80986E20,
    func_80986E40, func_80986EAC, func_80986F08, func_80986F28, func_80986F88, func_80986FA8, func_80987288,
    func_809872A8, func_809872F0, func_80987330,
};

static Vec3f D_809887D8 = { 0.0f, 10.0f, 0.0f };

static DemoImDrawFunc sDrawFuncs[] = {
    DemoIm_DrawNothing,
    DemoIm_DrawSolid,
    DemoIm_DrawTranslucent,
};

ActorProfile Demo_Im_Profile = {
    /**/ ACTOR_DEMO_IM,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_IM,
    /**/ sizeof(DemoIm),
    /**/ DemoIm_Init,
    /**/ DemoIm_Destroy,
    /**/ DemoIm_Update,
    /**/ DemoIm_Draw,
};

void func_80984BE0(DemoIm* this) {
    s32 pad[3];
    s16* blinkTimer = &this->blinkTimer;
    s16* eyeIndex = &this->eyeIndex;

    if (DECR(*blinkTimer) == 0) {
        *blinkTimer = Rand_S16Offset(60, 60);
    }

    *eyeIndex = *blinkTimer;
    if (*eyeIndex >= 3) {
        *eyeIndex = 0;
    }
}

#if DEBUG_FEATURES
void func_80984C68(DemoIm* this) {
    this->action = 7;
    this->drawConfig = 0;
    this->alpha = 0;
    this->unk_270 = 0;
    this->actor.shape.shadowAlpha = 0;
    this->unk_268 = 0.0f;
}

void func_80984C8C(DemoIm* this, PlayState* play) {
    u32* something = &D_8098783C;

    if (play->csCtx.state == CS_STATE_IDLE) {
        if (*something != 0) {
            if (this->actor.params == 2) {
                func_80984C68(this);
            }
            *something = 0;
        }
    } else {
        if (*something == 0) {
            *something = 1;
        }
    }
}
#endif

void DemoIm_InitCollider(Actor* thisx, PlayState* play) {
    DemoIm* this = (DemoIm*)thisx;

    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinderType1(play, &this->collider, &this->actor, &sCylinderInit);
}

void DemoIm_DestroyCollider(Actor* thisx, PlayState* play) {
    DemoIm* this = (DemoIm*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void DemoIm_UpdateCollider(DemoIm* this, PlayState* play) {
    s32 pad[5];

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
}

void func_80984DB8(DemoIm* this) {
    s32 pad[2];
    Vec3s* headRot = &this->interactInfo.headRot;
    Vec3s* torsoRot = &this->interactInfo.torsoRot;

    Math_SmoothStepToS(&headRot->x, 0, 20, 6200, 100);
    Math_SmoothStepToS(&headRot->y, 0, 20, 6200, 100);

    Math_SmoothStepToS(&torsoRot->x, 0, 20, 6200, 100);
    Math_SmoothStepToS(&torsoRot->y, 0, 20, 6200, 100);
}

void func_80984E58(DemoIm* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 yawDiff;
    s16 trackingMode;

    this->interactInfo.trackPos = player->actor.world.pos;
    this->interactInfo.yOffset = kREG(16) + 4.0f;

    yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    trackingMode = (ABS(yawDiff) < 0x18E3) ? NPC_TRACKING_HEAD_AND_TORSO : NPC_TRACKING_NONE;
    Npc_TrackPoint(&this->actor, &this->interactInfo, kREG(17) + 0xC, trackingMode);
}

void func_80984F10(DemoIm* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    this->interactInfo.trackPos = player->actor.world.pos;
    this->interactInfo.yOffset = kREG(16) + 12.0f;

    Npc_TrackPoint(&this->actor, &this->interactInfo, kREG(17) + 0xC, NPC_TRACKING_HEAD_AND_TORSO);
}

void func_80984F94(DemoIm* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    this->interactInfo.trackPos = player->actor.world.pos;
    this->interactInfo.yOffset = kREG(16) + 4.0f;
    Npc_TrackPoint(&this->actor, &this->interactInfo, kREG(17) + 0xC, NPC_TRACKING_FULL_BODY);
}

void DemoIm_UpdateBgCheckInfo(DemoIm* this, PlayState* play) {
    Actor_UpdateBgCheckInfo(play, &this->actor, 75.0f, 30.0f, 30.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
}

s32 DemoIm_UpdateSkelAnime(DemoIm* this) {
    return SkelAnime_Update(&this->skelAnime);
}

s32 DemoIm_IsCutsceneIdle(PlayState* play) {
    if (play->csCtx.state == CS_STATE_IDLE) {
        return true;
    } else {
        return false;
    }
}

CsCmdActorCue* DemoIm_GetCue(PlayState* play, s32 cueChannel) {
    s32 pad[2];
    CsCmdActorCue* cue = NULL;

    if (!DemoIm_IsCutsceneIdle(play)) {
        cue = play->csCtx.actorCues[cueChannel];
    }

    return cue;
}

s32 func_809850E8(DemoIm* this, PlayState* play, u16 action, s32 cueChannel) {
    CsCmdActorCue* cue = DemoIm_GetCue(play, cueChannel);

    if (cue != NULL) {
        if (cue->id == action) {
            return true;
        }
    }
    return false;
}

s32 func_80985134(DemoIm* this, PlayState* play, u16 cueId, s32 cueChannel) {
    CsCmdActorCue* cue = DemoIm_GetCue(play, cueChannel);

    if (cue != NULL) {
        if (cue->id != cueId) {
            return true;
        }
    }
    return false;
}

void func_80985180(DemoIm* this, PlayState* play, s32 cueChannel) {
    CsCmdActorCue* cue = DemoIm_GetCue(play, cueChannel);

    if (cue != NULL) {
        this->actor.world.pos.x = cue->startPos.x;
        this->actor.world.pos.y = cue->startPos.y;
        this->actor.world.pos.z = cue->startPos.z;
        this->actor.world.rot.y = this->actor.shape.rot.y = cue->rot.y;
    }
}

void func_80985200(DemoIm* this, PlayState* play, s32 cueChannel) {
    CsCmdActorCue* cue = DemoIm_GetCue(play, cueChannel);

    if (cue != NULL) {
        this->actor.world.pos.x = cue->startPos.x;
        this->actor.world.pos.y = cue->startPos.y;
        this->actor.world.pos.z = cue->startPos.z;
        this->actor.world.rot.y = this->actor.shape.rot.y = cue->rot.y;
    }
}

void DemoIm_ChangeAnim(DemoIm* this, AnimationHeader* animHeaderSeg, u8 animMode, f32 morphFrames, s32 playBackwards) {
    f32 frameCount = Animation_GetLastFrame(animHeaderSeg);
    f32 playbackSpeed;
    f32 startFrame;
    f32 endFrame;

    if (!playBackwards) {
        startFrame = 0.0f;
        endFrame = frameCount;
        playbackSpeed = 1.0f;
    } else {
        endFrame = 0.0f;
        startFrame = frameCount;
        playbackSpeed = -1.0f;
    }

    Animation_Change(&this->skelAnime, animHeaderSeg, playbackSpeed, startFrame, endFrame, animMode, morphFrames);
}

void func_80985310(DemoIm* this, PlayState* play) {
    DemoIm_ChangeAnim(this, &gImpaIdleAnim, ANIMMODE_LOOP, 0.0f, false);
    this->actor.shape.yOffset = -10000.0f;
}

void func_80985358(DemoIm* this, PlayState* play) {
    f32 posX = this->actor.world.pos.x;
    f32 posY = this->actor.world.pos.y;
    f32 posZ = this->actor.world.pos.z;

    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DOOR_WARP1, posX, posY, posZ, 0, 0, 0, WARP_SAGES);
}

void func_809853B4(DemoIm* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 playerX = player->actor.world.pos.x;
    f32 playerY = player->actor.world.pos.y + 80.0f;
    f32 playerZ = player->actor.world.pos.z;

    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DEMO_EFFECT, playerX, playerY, playerZ, 0, 0, 0, 0xD);
    Item_Give(play, ITEM_MEDALLION_SHADOW);
}

void func_80985430(DemoIm* this, PlayState* play) {
    this->actor.shape.yOffset += 250.0f / 3.0f;
}

void func_8098544C(DemoIm* this, PlayState* play) {
    s32 pad[2];

    if ((gSaveContext.chamberCutsceneNum == CHAMBER_CS_SHADOW) && !IS_CUTSCENE_LAYER) {
        Player* player = GET_PLAYER(play);

        this->action = 1;
        play->csCtx.script = gShadowMedallionCs;
        gSaveContext.cutsceneTrigger = 2;
        Item_Give(play, ITEM_MEDALLION_SHADOW);
        player->actor.world.rot.y = player->actor.shape.rot.y = this->actor.world.rot.y + 0x8000;
    }
}

void func_809854DC(DemoIm* this, PlayState* play) {
    if ((play->csCtx.state != CS_STATE_IDLE) && (play->csCtx.actorCues[5] != NULL) &&
        (play->csCtx.actorCues[5]->id == 2)) {
        Animation_Change(&this->skelAnime, &gImpaIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gImpaIdleAnim),
                         ANIMMODE_LOOP, 0.0f);
        this->action = 2;
        this->drawConfig = 1;
        func_80985358(this, play);
    }
}

void func_8098557C(DemoIm* this) {
    if (this->actor.shape.yOffset >= 0.0f) {
        this->action = 3;
        this->actor.shape.yOffset = 0.0f;
    }
}

void func_809855A8(DemoIm* this, PlayState* play) {
    if ((play->csCtx.state != CS_STATE_IDLE) && (play->csCtx.actorCues[5] != NULL) &&
        (play->csCtx.actorCues[5]->id == 3)) {
        Animation_Change(&this->skelAnime, &gImpaRaiseArmsAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gImpaRaiseArmsAnim),
                         ANIMMODE_ONCE, 4.0f);
        this->action = 4;
    }
}

void func_80985640(DemoIm* this, s32 arg1) {
    if (arg1 != 0) {
        Animation_Change(&this->skelAnime, &gImpaPresentShadowMedallionAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gImpaPresentShadowMedallionAnim), ANIMMODE_LOOP, 0.0f);
        this->action = 5;
    }
}

void func_809856AC(DemoIm* this, PlayState* play) {
    if ((play->csCtx.state != CS_STATE_IDLE) && (play->csCtx.actorCues[6] != NULL) &&
        (play->csCtx.actorCues[6]->id == 2)) {
        this->action = 6;
        func_809853B4(this, play);
    }
}

void func_809856F8(DemoIm* this, PlayState* play) {
    func_8098544C(this, play);
}

void func_80985718(DemoIm* this, PlayState* play) {
    func_809854DC(this, play);
}

void func_80985738(DemoIm* this, PlayState* play) {
    func_80985430(this, play);
    DemoIm_UpdateSkelAnime(this);
    func_80984BE0(this);
    func_8098557C(this);
}

void func_80985770(DemoIm* this, PlayState* play) {
    DemoIm_UpdateBgCheckInfo(this, play);
    DemoIm_UpdateSkelAnime(this);
    func_80984BE0(this);
    func_809855A8(this, play);
}

void func_809857B0(DemoIm* this, PlayState* play) {
    s32 sp1C;

    DemoIm_UpdateBgCheckInfo(this, play);
    sp1C = DemoIm_UpdateSkelAnime(this);
    func_80984BE0(this);
    func_80985640(this, sp1C);
}

void func_809857F0(DemoIm* this, PlayState* play) {
    DemoIm_UpdateBgCheckInfo(this, play);
    DemoIm_UpdateSkelAnime(this);
    func_80984BE0(this);
    func_809856AC(this, play);
}

void func_80985830(DemoIm* this, PlayState* play) {
    DemoIm_UpdateBgCheckInfo(this, play);
    DemoIm_UpdateSkelAnime(this);
    func_80984BE0(this);
}

void func_80985860(DemoIm* this, PlayState* play) {
    DemoIm_ChangeAnim(this, &gImpaIdleAnim, ANIMMODE_LOOP, 0.0f, false);
    this->action = 7;
    this->actor.shape.shadowAlpha = 0;
}

void func_809858A8(void) {
    Sfx_PlaySfxCentered2(NA_SE_SY_WHITE_OUT_T);
}

void DemoIm_SpawnLightBall(DemoIm* this, PlayState* play) {
    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DEMO_6K, this->actor.world.pos.x,
                       (kREG(17) + 24.0f) + this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 6);
}

void func_80985948(DemoIm* this, PlayState* play) {
    if (func_809850E8(this, play, 4, 5)) {
        Animation_Change(&this->skelAnime, &gImpaPrepareSealGanonAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gImpaPrepareSealGanonAnim), ANIMMODE_ONCE, 0.0f);
        this->action = 8;
        this->drawConfig = 2;
        this->alpha = 0;
        this->actor.shape.shadowAlpha = 0;
        this->unk_268 = 0.0f;
        func_809858A8();
    }
}

void func_809859E0(DemoIm* this, PlayState* play) {
    f32* unk_268 = &this->unk_268;
    s32 alpha = 255;

    if (func_809850E8(this, play, 4, 5)) {
        *unk_268 += 1.0f;
        if (*unk_268 >= kREG(5) + 10.0f) {
            this->action = 9;
            this->drawConfig = 1;
            *unk_268 = kREG(5) + 10.0f;
            this->alpha = this->actor.shape.shadowAlpha = alpha;
            return;
        }
    } else {
        *unk_268 -= 1.0f;
        if (*unk_268 <= 0.0f) {
            this->action = 7;
            this->drawConfig = 0;
            *unk_268 = 0.0f;
            this->alpha = 0;
            this->actor.shape.shadowAlpha = 0;
            return;
        }
    }
    this->actor.shape.shadowAlpha = this->alpha = (*unk_268 / (kREG(5) + 10.0f)) * 255.0f;
}

void func_80985B34(DemoIm* this, PlayState* play) {
    if (func_80985134(this, play, 4, 5)) {
        Animation_Change(&this->skelAnime, &gImpaSealGanonAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gImpaSealGanonAnim),
                         ANIMMODE_ONCE, -8.0f);
        this->action = 8;
        this->drawConfig = 2;
        this->unk_268 = kREG(5) + 10.0f;
        this->alpha = 255;
        if (this->unk_270 == 0) {
            DemoIm_SpawnLightBall(this, play);
            this->unk_270 = 1;
        }
        this->actor.shape.shadowAlpha = 0xFF;
    }
}

void func_80985C10(DemoIm* this, PlayState* play) {
    func_80985948(this, play);
#if DEBUG_FEATURES
    func_80984C8C(this, play);
#endif
}

void func_80985C40(DemoIm* this, PlayState* play) {
    DemoIm_UpdateBgCheckInfo(this, play);
    DemoIm_UpdateSkelAnime(this);
    func_80984BE0(this);
    func_809859E0(this, play);
#if DEBUG_FEATURES
    func_80984C8C(this, play);
#endif
}

void func_80985C94(DemoIm* this, PlayState* play) {
    DemoIm_UpdateBgCheckInfo(this, play);
    DemoIm_UpdateSkelAnime(this);
    func_80984BE0(this);
    func_80985B34(this, play);
#if DEBUG_FEATURES
    func_80984C8C(this, play);
#endif
}

void DemoIm_DrawTranslucent(DemoIm* this, PlayState* play) {
    s32 pad[2];
    s16 eyeIndex = this->eyeIndex;
    void* eyeTex = sEyeTextures[eyeIndex];
    SkelAnime* skelAnime = &this->skelAnime;

    OPEN_DISPS(play->state.gfxCtx, "../z_demo_im_inKenjyanomaDemo02.c", 281);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTex));
    gSPSegment(POLY_XLU_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeTex));
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, this->alpha);
    gSPSegment(POLY_XLU_DISP++, 0x0C, &D_80116280[0]);

    POLY_XLU_DISP = SkelAnime_DrawFlex(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount, NULL,
                                       NULL, NULL, POLY_XLU_DISP);

    CLOSE_DISPS(play->state.gfxCtx, "../z_demo_im_inKenjyanomaDemo02.c", 308);
}

void func_80985E60(DemoIm* this, PlayState* play) {
    DemoIm_ChangeAnim(this, &gImpaIdleAnim, ANIMMODE_LOOP, 0.0f, false);
    this->action = 10;
    this->unk_280 = 1;
}

void func_80985EAC(DemoIm* this, PlayState* play) {
    if ((play->csCtx.curFrame >= 80) && (play->csCtx.curFrame < 243)) {
        func_80984F10(this, play);
    } else {
        func_80984DB8(this);
    }
}

void func_80985EF4(DemoIm* this) {
    if (!Animation_OnFrame(&this->skelAnime, Animation_GetLastFrame(&gImpaWhistlingAnim) - 1.0f)) {
        DemoIm_UpdateSkelAnime(this);
    }
}

void func_80985F54(DemoIm* this) {
    this->action = 10;
    this->drawConfig = 0;
}

void func_80985F64(DemoIm* this, PlayState* play) {
    Animation_Change(&this->skelAnime, &gImpaIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gImpaIdleAnim),
                     ANIMMODE_LOOP, 0.0f);
    func_80985180(this, play, 5);
    this->action = 11;
    this->drawConfig = 1;
}

void func_80985FE8(DemoIm* this, s32 arg1) {
    if (arg1 != 0) {
        Animation_Change(&this->skelAnime, &gImpaWhistlingAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gImpaWhistlingAnim),
                         ANIMMODE_LOOP, -8.0f);
    }
}

void func_8098604C(DemoIm* this) {
    f32 frameCount = Animation_GetLastFrame(&gImpaStartWhistlingAnim);

    Animation_Change(&this->skelAnime, &gImpaStartWhistlingAnim, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, -8.0f);
    this->action = 12;
    this->drawConfig = 1;
    this->unk_2D0 = 1;
}

void func_809860C8(DemoIm* this) {
    this->action = 13;
    this->drawConfig = 1;
}

void func_809860DC(DemoIm* this, s32 arg1) {
    if (arg1 != 0) {
        Animation_Change(&this->skelAnime, &gImpaIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gImpaIdleAnim),
                         ANIMMODE_LOOP, -8.0f);
        this->unk_2D0 = 0;
    }
}

void func_80986148(DemoIm* this) {
    Animation_Change(&this->skelAnime, &gImpaStartWhistlingAnim, -1.0f,
                     Animation_GetLastFrame(&gImpaStartWhistlingAnim), 0.0f, ANIMMODE_ONCE, -8.0f);
    this->action = 14;
    this->drawConfig = 1;
}

void func_809861C4(DemoIm* this, PlayState* play) {
    CsCmdActorCue* cue = DemoIm_GetCue(play, 5);

    if (cue != NULL) {
        u32 nextCueId = cue->id;
        u32 currentCueId = this->cueId;

        if (nextCueId != currentCueId) {
            switch (nextCueId) {
                case 9:
                    func_80986148(this);
                    break;
                case 7:
                    Animation_Change(&this->skelAnime, &gImpaWhistlingAnim, 1.0f, 0.0f,
                                     Animation_GetLastFrame(&gImpaWhistlingAnim), ANIMMODE_LOOP, -8.0f);
                    this->action = 12;
                    break;
                default:
                    PRINTF("Demo_Im_Ocarina_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
            }
            this->cueId = nextCueId;
        }
    }
}

void func_8098629C(DemoIm* this, PlayState* play) {
    if (DemoIm_IsCutsceneIdle(play)) {
        this->action = 21;
        this->drawConfig = 1;
        this->unk_280 = 1;
    }
}

void func_809862E0(DemoIm* this, PlayState* play) {
    CsCmdActorCue* cue = DemoIm_GetCue(play, 5);

    if (cue != NULL) {
        u32 nextCueId = cue->id;
        u32 currentCueId = this->cueId;

        if (nextCueId != currentCueId) {
            switch (nextCueId) {
                case 1:
                    func_80985F54(this);
                    break;
                case 2:
                    func_80985F64(this, play);
                    break;
                case 7:
                    func_8098604C(this);
                    break;
                case 8:
                    func_809860C8(this);
                    break;
                case 9:
                    func_80986148(this);
                    break;
                default:
                    PRINTF("Demo_Im_Ocarina_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
            }
            this->cueId = nextCueId;
        }
    }
}

void func_809863BC(DemoIm* this, PlayState* play) {
    func_809862E0(this, play);
}

void func_809863DC(DemoIm* this, PlayState* play) {
    DemoIm_UpdateBgCheckInfo(this, play);
    DemoIm_UpdateSkelAnime(this);
    func_80985EAC(this, play);
    func_80984BE0(this);
    func_809862E0(this, play);
}

void func_80986430(DemoIm* this, PlayState* play) {
    s32 sp24;

    DemoIm_UpdateBgCheckInfo(this, play);
    sp24 = DemoIm_UpdateSkelAnime(this);
    func_80985EAC(this, play);
    func_80984BE0(this);
    func_80985FE8(this, sp24);
    func_809862E0(this, play);
}

void func_80986494(DemoIm* this, PlayState* play) {
    DemoIm_UpdateBgCheckInfo(this, play);
    func_80985EF4(this);
    func_80984BE0(this);
    func_809861C4(this, play);
}

void func_809864D4(DemoIm* this, PlayState* play) {
    s32 sp24;

    DemoIm_UpdateBgCheckInfo(this, play);
    sp24 = DemoIm_UpdateSkelAnime(this);
    func_80984BE0(this);
    func_809860DC(this, sp24);
    func_8098629C(this, play);
}

void func_8098652C(DemoIm* this, PlayState* play) {
    DemoIm_ChangeAnim(this, &gImpaIdleAnim, ANIMMODE_LOOP, 0.0f, false);
    this->action = 15;
}

void func_80986570(DemoIm* this, PlayState* play) {
    if (Animation_OnFrame(&this->skelAnime, 7.0f) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        u32 sfxId = NA_SE_PL_WALK_GROUND;

        sfxId += SurfaceType_GetSfxOffset(&play->colCtx, this->actor.floorPoly, this->actor.floorBgId);
        Audio_PlaySfxGeneral(sfxId, &this->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    }
}

void func_809865F8(DemoIm* this, PlayState* play, s32 arg2) {
    s32 pad[2];

    if (arg2 != 0) {
        f32* unk_278 = &this->unk_278;

        if (*unk_278 >= 0.0f) {
            if (this->unk_27C == 0) {
                Vec3f* thisPos = &this->actor.world.pos;
                s16 shapeRotY = this->actor.shape.rot.y;
                f32 spawnPosX = thisPos->x + (Math_SinS(shapeRotY) * 30.0f);
                f32 spawnPosY = thisPos->y;
                f32 spawnPosZ = thisPos->z + (Math_CosS(shapeRotY) * 30.0f);

                Actor_Spawn(&play->actorCtx, play, ACTOR_EN_ARROW, spawnPosX, spawnPosY, spawnPosZ, 0xFA0,
                            this->actor.shape.rot.y, 0, ARROW_CS_NUT);
                this->unk_27C = 1;
            }
        } else {
            *unk_278 += 1.0f;
        }
    }
}

void func_80986700(DemoIm* this) {
    this->action = 15;
    this->drawConfig = 0;
}

void func_80986710(DemoIm* this, PlayState* play) {
    Animation_Change(&this->skelAnime, &gImpaIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gImpaIdleAnim),
                     ANIMMODE_LOOP, 0.0f);
    func_80985180(this, play, 5);
    this->action = 16;
    this->drawConfig = 1;
}

void func_80986794(DemoIm* this) {
    Animation_Change(&this->skelAnime, &gImpaThrowDekuNutAnim, 1.0f, 0.0f,
                     Animation_GetLastFrame(&gImpaThrowDekuNutAnim), ANIMMODE_ONCE, -8.0f);
    this->action = 17;
    this->drawConfig = 1;
}

void func_8098680C(DemoIm* this, PlayState* play) {
    CsCmdActorCue* cue = DemoIm_GetCue(play, 5);

    if (cue != NULL) {
        u32 nextCueId = cue->id;
        u32 currentCueId = this->cueId;

        if (nextCueId != currentCueId) {
            switch (nextCueId) {
                case 1:
                    func_80986700(this);
                    break;
                case 2:
                    func_80986710(this, play);
                    break;
                case 10:
                    func_80986794(this);
                    break;
                case 11:
                    Actor_Kill(&this->actor);
                    break;
                default:
                    PRINTF("Demo_Im_Spot00_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
            }
            this->cueId = nextCueId;
        }
    }
}

void func_809868E8(DemoIm* this, PlayState* play) {
    func_8098680C(this, play);
}

void func_80986908(DemoIm* this, PlayState* play) {
    DemoIm_UpdateBgCheckInfo(this, play);
    DemoIm_UpdateSkelAnime(this);
    func_80984BE0(this);
    func_8098680C(this, play);
}

void func_80986948(DemoIm* this, PlayState* play) {
    s32 sp24;

    DemoIm_UpdateBgCheckInfo(this, play);
    sp24 = DemoIm_UpdateSkelAnime(this);
    func_80986570(this, play);
    func_80984BE0(this);
    func_809865F8(this, play, sp24);
    func_8098680C(this, play);
}

void func_809869B0(DemoIm* this, PlayState* play) {
    DemoIm_ChangeAnim(this, &gImpaIdleAnim, ANIMMODE_LOOP, 0.0f, false);
    this->action = 18;
    this->actor.shape.shadowAlpha = 0;
}

s32 func_809869F8(DemoIm* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 playerPosX = player->actor.world.pos.x;
    f32 thisPosX = this->actor.world.pos.x;

    if ((thisPosX - (kREG(16) + 30.0f) > playerPosX) && !(this->actor.flags & ACTOR_FLAG_INSIDE_CULLING_VOLUME)) {
        return true;
    } else {
        return false;
    }
}

s32 func_80986A5C(DemoIm* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 playerPosX = player->actor.world.pos.x;
    f32 thisPosX = this->actor.world.pos.x;

    if ((thisPosX - (kREG(17) + 130.0f) < playerPosX) && (!Play_InCsMode(play))) {
        return true;
    } else {
        return false;
    }
}

s32 func_80986AD0(DemoIm* this, PlayState* play) {
    this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY;
    if (!Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actor.textId = 0x708E;
        Actor_OfferTalkNearColChkInfoCylinder(&this->actor, play);
    } else {
        return true;
    }
    return false;
}

void func_80986B2C(PlayState* play) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CLOSING) {
        Player* player = GET_PLAYER(play);

        play->nextEntranceIndex = ENTR_HYRULE_FIELD_0;
        play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST);
        play->transitionTrigger = TRANS_TRIGGER_START;
        Player_SetCsActionWithHaltedActors(play, &player->actor, PLAYER_CSACTION_8);
    }
}

void func_80986BA0(DemoIm* this, PlayState* play) {
    if (func_809869F8(this, play)) {
        this->action = 21;
        this->drawConfig = 1;
        this->unk_280 = 1;
        this->actor.shape.shadowAlpha = 0xFF;
    }
}

void func_80986BE4(DemoIm* this, s32 arg1) {
    if (arg1 != 0) {
        this->action = 22;
    }
}

void func_80986BF8(DemoIm* this, PlayState* play) {
    if (GET_EVENTCHKINF(EVENTCHKINF_40)) {
        this->action = 24;
        this->drawConfig = 1;
        this->unk_280 = 1;
        this->actor.shape.shadowAlpha = 0xFF;
    }
}

void func_80986C30(DemoIm* this, PlayState* play) {
    if (func_80986A5C(this, play)) {
        s32 pad;

        play->csCtx.script = SEGMENTED_TO_VIRTUAL(gZeldasCourtyardLullabyCs);
        gSaveContext.cutsceneTrigger = 1;
        SET_EVENTCHKINF(EVENTCHKINF_59);
        Item_Give(play, ITEM_SONG_LULLABY);
        func_80985F54(this);
    }
}

void func_80986CC8(DemoIm* this) {
    if (GET_EVENTCHKINF(EVENTCHKINF_40)) {
        this->action = 26;
        this->drawConfig = 1;
        this->unk_280 = 1;
        this->actor.shape.shadowAlpha = 0xFF;
    }
}

void func_80986CFC(DemoIm* this, PlayState* play) {
    if (func_80986A5C(this, play)) {
        SET_EVENTCHKINF(EVENTCHKINF_4C);
        this->action = 19;
    }
}

void func_80986D40(DemoIm* this, PlayState* play) {
#if DEBUG_FEATURES
    if (gSaveContext.sceneLayer == 6) {
        this->action = 19;
        this->drawConfig = 1;
        return;
    }
#endif

    if (GET_EVENTCHKINF(EVENTCHKINF_80)) {
        Actor_Kill(&this->actor);
    } else if (!GET_EVENTCHKINF(EVENTCHKINF_59)) {
        this->action = 23;
    } else {
        this->action = 20;
    }
}

void func_80986DC8(DemoIm* this, PlayState* play) {
    DemoIm_UpdateBgCheckInfo(this, play);
    DemoIm_UpdateSkelAnime(this);
    func_80984BE0(this);
    func_80984E58(this, play);
    this->actor.flags &= ~(ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY);
}

void func_80986E20(DemoIm* this, PlayState* play) {
    func_80986BA0(this, play);
}

void func_80986E40(DemoIm* this, PlayState* play) {
    DemoIm_UpdateBgCheckInfo(this, play);
    DemoIm_UpdateSkelAnime(this);
    func_80984BE0(this);
    func_80984E58(this, play);
    DemoIm_UpdateCollider(this, play);
    func_80986BE4(this, func_80986AD0(this, play));
}

void func_80986EAC(DemoIm* this, PlayState* play) {
    DemoIm_UpdateBgCheckInfo(this, play);
    DemoIm_UpdateSkelAnime(this);
    func_80984BE0(this);
    func_80984F94(this, play);
    DemoIm_UpdateCollider(this, play);
    func_80986B2C(play);
}

void func_80986F08(DemoIm* this, PlayState* play) {
    func_80986BF8(this, play);
}

void func_80986F28(DemoIm* this, PlayState* play) {
    DemoIm_UpdateBgCheckInfo(this, play);
    DemoIm_UpdateSkelAnime(this);
    func_80984BE0(this);
    func_80984E58(this, play);
    DemoIm_UpdateCollider(this, play);
    func_80986C30(this, play);
}

void func_80986F88(DemoIm* this, PlayState* play) {
    func_80986CC8(this);
}

void func_80986FA8(DemoIm* this, PlayState* play) {
    DemoIm_UpdateBgCheckInfo(this, play);
    DemoIm_UpdateSkelAnime(this);
    func_80984BE0(this);
    func_80984E58(this, play);
    this->actor.flags &= ~(ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY);
    DemoIm_UpdateCollider(this, play);
    func_80986CFC(this, play);
}

void func_80987018(DemoIm* this, PlayState* play) {
    DemoIm_ChangeAnim(this, &gImpaIdleAnim, ANIMMODE_LOOP, 0.0f, false);
    this->action = 27;
    this->drawConfig = 0;
    this->actor.shape.shadowAlpha = 0;
}

void func_80987064(DemoIm* this) {
    f32* unk_268 = &this->unk_268;
    f32 temp;
    s32 alpha = 255;

    *unk_268 += 1.0f;
    temp = kREG(17) + 10.0f;

    if (*unk_268 >= temp) {
        this->actor.shape.shadowAlpha = this->alpha = alpha;
    } else {
        this->actor.shape.shadowAlpha = this->alpha = (*unk_268 / temp) * 255.0f;
    }
}

void func_809870F0(DemoIm* this, PlayState* play) {
    func_80985200(this, play, 5);
    this->action = 28;
    this->drawConfig = 2;
}

void func_80987128(DemoIm* this) {
    if (this->unk_268 >= kREG(17) + 10.0f) {
        this->action = 29;
        this->drawConfig = 1;
    }
}

void func_80987174(DemoIm* this) {
    DemoIm_ChangeAnim(this, &object_im_Anim_0101C8, ANIMMODE_ONCE, -8.0f, false);
    this->action = 30;
}

void func_809871B4(DemoIm* this, s32 arg1) {
    if (arg1 != 0) {
        DemoIm_ChangeAnim(this, &object_im_Anim_00FB10, ANIMMODE_LOOP, 0.0f, false);
    }
}

void func_809871E8(DemoIm* this, PlayState* play) {
    CsCmdActorCue* cue = DemoIm_GetCue(play, 5);

    if (cue != NULL) {
        u32 nextCueId = cue->id;
        u32 currentCueId = this->cueId;

        if (nextCueId != currentCueId) {
            switch (nextCueId) {
                case 12:
                    func_809870F0(this, play);
                    break;
                case 13:
                    func_80987174(this);
                    break;
                default:
                    PRINTF("Demo_Im_inEnding_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
            }
            this->cueId = nextCueId;
        }
    }
}

void func_80987288(DemoIm* this, PlayState* play) {
    func_809871E8(this, play);
}

void func_809872A8(DemoIm* this, PlayState* play) {
    DemoIm_UpdateBgCheckInfo(this, play);
    DemoIm_UpdateSkelAnime(this);
    func_80984BE0(this);
    func_80987064(this);
    func_80987128(this);
}

void func_809872F0(DemoIm* this, PlayState* play) {
    DemoIm_UpdateBgCheckInfo(this, play);
    DemoIm_UpdateSkelAnime(this);
    func_80984BE0(this);
    func_809871E8(this, play);
}

void func_80987330(DemoIm* this, PlayState* play) {
    s32 sp1C;

    DemoIm_UpdateBgCheckInfo(this, play);
    sp1C = DemoIm_UpdateSkelAnime(this);
    func_80984BE0(this);
    func_809871B4(this, sp1C);
}

void DemoIm_Update(Actor* thisx, PlayState* play) {
    DemoIm* this = (DemoIm*)thisx;

    if ((this->action < 0) || (this->action >= 31) || (sActionFuncs[this->action] == NULL)) {
        PRINTF(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sActionFuncs[this->action](this, play);
}

void DemoIm_Init(Actor* thisx, PlayState* play) {
    DemoIm* this = (DemoIm*)thisx;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    DemoIm_InitCollider(thisx, play);
    SkelAnime_InitFlex(play, &this->skelAnime, &gImpaSkel, NULL, this->jointTable, this->morphTable, 17);
    thisx->flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;

    switch (this->actor.params) {
        case 2:
            func_80985860(this, play);
            break;
        case 3:
            func_80985E60(this, play);
            break;
        case 4:
            func_8098652C(this, play);
            break;
        case 5:
            func_809869B0(this, play);
            break;
        case 6:
            func_80987018(this, play);
            break;
        default:
            func_80985310(this, play);
    }
}

void DemoIm_Destroy(Actor* thisx, PlayState* play) {
    DemoIm_DestroyCollider(thisx, play);
}

s32 DemoIm_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    DemoIm* this = (DemoIm*)thisx;
    s32* unk_2D0 = &this->unk_2D0;

    if (this->unk_280 != 0) {
        Vec3s* torsoRot = &this->interactInfo.torsoRot;
        Vec3s* headRot = &this->interactInfo.headRot;

        switch (limbIndex) {
            case IMPA_LIMB_CHEST:
                rot->x += torsoRot->y;
                rot->y -= torsoRot->x;
                break;
            case IMPA_LIMB_HEAD:
                rot->x += headRot->y;
                rot->z += headRot->x;
                break;
        }
    }

    if ((*unk_2D0 != 0) && (limbIndex == IMPA_LIMB_RIGHT_HAND)) {
        *dList = gImpaHandPointingDL;
    }

    return false;
}

void DemoIm_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    DemoIm* this = (DemoIm*)thisx;

    if (limbIndex == IMPA_LIMB_HEAD) {
        Vec3f sp28 = D_809887D8;
        Vec3f dest;

        Matrix_MultVec3f(&sp28, &dest);
        this->actor.focus.pos.x = dest.x;
        this->actor.focus.pos.y = dest.y;
        this->actor.focus.pos.z = dest.z;
        this->actor.focus.rot.x = this->actor.world.rot.x;
        this->actor.focus.rot.y = this->actor.world.rot.y;
        this->actor.focus.rot.z = this->actor.world.rot.z;
    }
}

void DemoIm_DrawNothing(DemoIm* this, PlayState* play) {
}

void DemoIm_DrawSolid(DemoIm* this, PlayState* play) {
    s32 pad[2];
    s16 eyeIndex = this->eyeIndex;
    void* eyeTexture = sEyeTextures[eyeIndex];
    SkelAnime* skelAnime = &this->skelAnime;

    OPEN_DISPS(play->state.gfxCtx, "../z_demo_im.c", 904);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTexture));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeTexture));
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0x0C, &D_80116280[2]);

    SkelAnime_DrawFlexOpa(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount,
                          DemoIm_OverrideLimbDraw, DemoIm_PostLimbDraw, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_demo_im.c", 925);
}

void DemoIm_Draw(Actor* thisx, PlayState* play) {
    DemoIm* this = (DemoIm*)thisx;

    if ((this->drawConfig < 0) || (this->drawConfig >= 3) || (sDrawFuncs[this->drawConfig] == NULL)) {
        PRINTF(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sDrawFuncs[this->drawConfig](this, play);
}
