/*
 * File: z_demo_ec.c
 * Overlay: ovl_Demo_Ec
 * Description: Credits revelers in Lon Lon
 */

#include "z_demo_ec.h"
#include "terminal.h"
#include "assets/objects/object_zo/object_zo.h"
#include "assets/objects/object_ec/object_ec.h"
#include "assets/objects/object_ma2/object_ma2.h"
#include "assets/objects/object_in/object_in.h"
#include "assets/objects/object_ge1/object_ge1.h"
#include "assets/objects/object_fu/object_fu.h"
#include "assets/objects/object_fish/object_fish.h"
#include "assets/objects/object_ta/object_ta.h"
#include "assets/objects/object_oF1d_map/object_oF1d_map.h"
#include "assets/objects/object_ma2/object_ma2.h"
#include "assets/objects/object_in/object_in.h"
#include "assets/objects/object_ta/object_ta.h"
#include "assets/objects/object_fu/object_fu.h"
#include "assets/objects/object_toryo/object_toryo.h"
#include "assets/objects/object_daiku/object_daiku.h"
#include "assets/objects/object_ge1/object_ge1.h"
#include "assets/objects/object_kz/object_kz.h"
#include "assets/objects/object_md/object_md.h"
#include "assets/objects/object_niw/object_niw.h"
#include "assets/objects/object_ds2/object_ds2.h"
#include "assets/objects/object_os/object_os.h"
#include "assets/objects/object_rs/object_rs.h"
#include "assets/objects/object_gm/object_gm.h"
#include "assets/objects/object_km1/object_km1.h"
#include "assets/objects/object_kw1/object_kw1.h"
#include "assets/objects/object_bji/object_bji.h"
#include "assets/objects/object_ahg/object_ahg.h"
#include "assets/objects/object_bob/object_bob.h"
#include "assets/objects/object_bba/object_bba.h"
#include "assets/objects/object_ane/object_ane.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void DemoEc_Init(Actor* thisx, PlayState* play);
void DemoEc_Destroy(Actor* thisx, PlayState* play);
void DemoEc_Update(Actor* thisx, PlayState* play);
void DemoEc_Draw(Actor* thisx, PlayState* play);

typedef enum DemoEcUpdateMode {
    /* 00 */ EC_UPDATE_COMMON,
    /* 01 */ EC_UPDATE_INGO,
    /* 02 */ EC_UPDATE_TALON,
    /* 03 */ EC_UPDATE_WINDMILL_MAN,
    /* 04 */ EC_UPDATE_KOKIRI_BOY,
    /* 05 */ EC_UPDATE_KOKIRI_GIRL,
    /* 06 */ EC_UPDATE_OLD_MAN,
    /* 07 */ EC_UPDATE_BEARDED_MAN,
    /* 08 */ EC_UPDATE_WOMAN,
    /* 09 */ EC_UPDATE_OLD_WOMAN,
    /* 10 */ EC_UPDATE_BOSS_CARPENTER,
    /* 11 */ EC_UPDATE_CARPENTER,
    /* 12 */ EC_UPDATE_DANCING_KOKIRI_BOY,
    /* 13 */ EC_UPDATE_DANCING_KOKIRI_GIRL,
    /* 14 */ EC_UPDATE_GERUDO,
    /* 15 */ EC_UPDATE_DANCING_ZORA,
    /* 16 */ EC_UPDATE_KING_ZORA,
    /* 17 */ EC_UPDATE_17,
    /* 18 */ EC_UPDATE_18,
    /* 19 */ EC_UPDATE_MIDO,
    /* 20 */ EC_UPDATE_20,
    /* 21 */ EC_UPDATE_CUCCO,
    /* 22 */ EC_UPDATE_CUCCO_LADY,
    /* 23 */ EC_UPDATE_POTION_SHOP_OWNER,
    /* 24 */ EC_UPDATE_MASK_SHOP_OWNER,
    /* 25 */ EC_UPDATE_FISHING_MAN,
    /* 26 */ EC_UPDATE_BOMBCHU_SHOP_OWNER,
    /* 27 */ EC_UPDATE_GORON,
    /* 28 */ EC_UPDATE_MALON
} DemoEcUpdateMode;

typedef enum DemoEcDrawconfig {
    /* 00 */ EC_DRAW_COMMON,
    /* 01 */ EC_DRAW_INGO,
    /* 02 */ EC_DRAW_TALON,
    /* 03 */ EC_DRAW_WINDMILL_MAN,
    /* 04 */ EC_DRAW_KOKIRI_BOY,
    /* 05 */ EC_DRAW_KOKIRI_GIRL,
    /* 06 */ EC_DRAW_OLD_MAN,
    /* 07 */ EC_DRAW_BEARDED_MAN,
    /* 08 */ EC_DRAW_WOMAN,
    /* 09 */ EC_DRAW_OLD_WOMAN,
    /* 10 */ EC_DRAW_BOSS_CARPENTER,
    /* 11 */ EC_DRAW_CARPENTER,
    /* 12 */ EC_DRAW_GERUDO,
    /* 13 */ EC_DRAW_DANCING_ZORA,
    /* 14 */ EC_DRAW_KING_ZORA,
    /* 15 */ EC_DRAW_MIDO,
    /* 16 */ EC_DRAW_CUCCO,
    /* 17 */ EC_DRAW_CUCCO_LADY,
    /* 18 */ EC_DRAW_POTION_SHOP_OWNER,
    /* 19 */ EC_DRAW_MASK_SHOP_OWNER,
    /* 20 */ EC_DRAW_FISHING_MAN,
    /* 21 */ EC_DRAW_BOMBCHU_SHOP_OWNER,
    /* 22 */ EC_DRAW_GORON,
    /* 23 */ EC_DRAW_MALON
} DemoEcDrawconfig;

static s16 sDrawObjects[] = {
    /*  0 */ OBJECT_IN,
    /*  1 */ OBJECT_TA,
    /*  2 */ OBJECT_FU,
    /*  3 */ OBJECT_KM1,
    /*  4 */ OBJECT_KW1,
    /*  5 */ OBJECT_BJI,
    /*  6 */ OBJECT_AHG,
    /*  7 */ OBJECT_BOB,
    /*  8 */ OBJECT_BBA,
    /*  9 */ OBJECT_TORYO,
    /* 10 */ OBJECT_DAIKU,
    /* 11 */ OBJECT_DAIKU,
    /* 12 */ OBJECT_DAIKU,
    /* 13 */ OBJECT_DAIKU,
    /* 14 */ OBJECT_KM1,
    /* 15 */ OBJECT_KW1,
    /* 16 */ OBJECT_GE1,
    /* 17 */ OBJECT_GE1,
    /* 18 */ OBJECT_GE1,
    /* 19 */ OBJECT_ZO,
    /* 20 */ OBJECT_KZ,
    /* 21 */ OBJECT_MD,
    /* 22 */ OBJECT_NIW,
    /* 23 */ OBJECT_NIW,
    /* 24 */ OBJECT_NIW,
    /* 25 */ OBJECT_ANE,
    /* 26 */ OBJECT_DS2,
    /* 27 */ OBJECT_OS,
    /* 28 */ OBJECT_FISH,
    /* 29 */ OBJECT_RS,
    /* 30 */ OBJECT_OF1D_MAP,
    /* 31 */ OBJECT_OF1D_MAP,
    /* 32 */ OBJECT_OF1D_MAP,
    /* 33 */ OBJECT_OF1D_MAP,
    /* 34 */ OBJECT_MA2,
};

static s16 sAnimationObjects[] = {
    OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC,  OBJECT_EC,
    OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC,  OBJECT_EC,
    OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC,  OBJECT_EC,
    OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_GM, OBJECT_MA2,
};

void DemoEc_Destroy(Actor* thisx, PlayState* play) {
    DemoEc* this = (DemoEc*)thisx;

    SkelAnime_Free(&this->skelAnime, play);
}

void DemoEc_Init(Actor* thisx, PlayState* play) {
    DemoEc* this = (DemoEc*)thisx;

    if ((this->actor.params < 0) || (this->actor.params > 34)) {
        PRINTF(VT_FGCOL(RED) "Demo_Ec_Actor_ct:arg_dataがおかしい!!!!!!!!!!!!\n" VT_RST);
        Actor_Kill(&this->actor);
    } else {
        this->updateMode = EC_UPDATE_COMMON;
        this->drawConfig = EC_DRAW_COMMON;
    }
}

s32 DemoEc_UpdateSkelAnime(DemoEc* this) {
    return SkelAnime_Update(&this->skelAnime);
}

void DemoEc_UpdateBgFlags(DemoEc* this, PlayState* play) {
    Actor_UpdateBgCheckInfo(play, &this->actor, 30.0f, 25.0f, 30.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_1 | UPDBGCHECKINFO_FLAG_2);
}

void func_8096D594(DemoEc* this, PlayState* play) {
    this->skelAnime.movementFlags |= ANIM_FLAG_UPDATE_XZ | ANIM_FLAG_UPDATE_Y;
    AnimTaskQueue_AddActorMovement(play, &this->actor, &this->skelAnime, 1.0f);
}

void func_8096D5D4(DemoEc* this, PlayState* play) {
    this->skelAnime.baseTransl = this->skelAnime.jointTable[0];
    this->skelAnime.prevTransl = this->skelAnime.jointTable[0];
    this->skelAnime.movementFlags |= ANIM_FLAG_UPDATE_XZ | ANIM_FLAG_UPDATE_Y;
    AnimTaskQueue_AddActorMovement(play, &this->actor, &this->skelAnime, 1.0f);
}

void func_8096D64C(DemoEc* this, PlayState* play) {
    this->skelAnime.movementFlags |= ANIM_FLAG_UPDATE_XZ | ANIM_FLAG_UPDATE_Y;
    AnimTaskQueue_AddActorMovement(play, &this->actor, &this->skelAnime, 1.0f);
}

void DemoEc_UpdateEyes(DemoEc* this) {
    s32 pad[3];
    s16* blinkTimer = &this->blinkTimer;
    s16* eyeTexIndex = &this->eyeTexIndex;

    if (DECR(*blinkTimer) == 0) {
        *blinkTimer = Rand_S16Offset(60, 60);
    }

    *eyeTexIndex = *blinkTimer;

    if (*eyeTexIndex >= 3) {
        *eyeTexIndex = 0;
    }
}

void DemoEc_SetEyeTexIndex(DemoEc* this, s16 texIndex) {
    this->eyeTexIndex = texIndex;
}

void DemoEc_InitSkelAnime(DemoEc* this, PlayState* play, FlexSkeletonHeader* skeletonHeader) {
    SkelAnime_InitFlex(play, &this->skelAnime, SEGMENTED_TO_VIRTUAL(skeletonHeader), NULL, NULL, NULL, 0);
}

void DemoEc_ChangeAnimation(DemoEc* this, AnimationHeader* animation, u8 mode, f32 morphFrames, s32 reverse) {
    f32 frameCount;
    f32 startFrame;
    AnimationHeader* anim;
    f32 playbackSpeed;
    s16 frameCountS;

    anim = SEGMENTED_TO_VIRTUAL(animation);
    frameCountS = Animation_GetLastFrame(anim);

    if (!reverse) {
        startFrame = 0.0f;
        frameCount = frameCountS;
        playbackSpeed = 1.0f;
    } else {
        frameCount = 0.0f;
        startFrame = frameCountS;
        playbackSpeed = -1.0f;
    }

    Animation_Change(&this->skelAnime, anim, playbackSpeed, startFrame, frameCount, mode, morphFrames);
}

Gfx* DemoEc_AllocColorDList(GraphicsContext* gfxCtx, u8* color) {
    Gfx* dList;

    dList = GRAPH_ALLOC(gfxCtx, sizeof(Gfx) * 2);
    gDPSetEnvColor(dList, color[0], color[1], color[2], color[3]);
    gSPEndDisplayList(dList + 1);

    return dList;
}

void DemoEc_DrawSkeleton(DemoEc* this, PlayState* play, void* eyeTexture, void* arg3, OverrideLimbDraw overrideLimbDraw,
                         PostLimbDraw postLimbDraw) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;
    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_demo_ec.c", 565);

    Gfx_SetupDL_25Opa(gfxCtx);

    if (eyeTexture != NULL) {
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTexture));
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeTexture));
    }

    if (arg3 != NULL) {
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(arg3));
    }

    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0x0C, &D_80116280[2]);
    POLY_OPA_DISP = SkelAnime_DrawFlex(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount,
                                       overrideLimbDraw, postLimbDraw, &this->actor, POLY_OPA_DISP);
    CLOSE_DISPS(gfxCtx, "../z_demo_ec.c", 595);
}

void DemoEc_DrawSkeletonCustomColor(DemoEc* this, PlayState* play, Gfx* arg2, Gfx* arg3, u8* color1, u8* color2,
                                    OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw) {
    s32 pad;
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;

    OPEN_DISPS(gfxCtx, "../z_demo_ec.c", 609);

    Gfx_SetupDL_25Opa(gfxCtx);

    if (arg2 != NULL) {
        gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(arg2));
    }

    if (arg3 != NULL) {
        gSPSegment(POLY_OPA_DISP++, 0x0B, SEGMENTED_TO_VIRTUAL(arg3));
    }

    if (color1 != NULL) {
        //! @bug DemoEc_AllocColorDList is called twice in SEGMENTED_TO_VIRTUAL, allocating two display lists
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(DemoEc_AllocColorDList(gfxCtx, color1)));
    }

    if (color2 != NULL) {
        //! @bug DemoEc_AllocColorDList is called twice in SEGMENTED_TO_VIRTUAL, allocating two display lists
        //! @bug meant to pass color2 instead of color1?
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(DemoEc_AllocColorDList(gfxCtx, color1)));
    }

    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0x0C, &D_80116280[2]);
    POLY_OPA_DISP = SkelAnime_DrawFlex(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount,
                                       overrideLimbDraw, postLimbDraw, &this->actor, POLY_OPA_DISP);

    CLOSE_DISPS(gfxCtx, "../z_demo_ec.c", 646);
}

void DemoEc_UseDrawObject(DemoEc* this, PlayState* play) {
    s32 pad[2];
    s32 drawObjectSlot = this->drawObjectSlot;
    GraphicsContext* gfxCtx = play->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_demo_ec.c", 662);

    gSPSegment(POLY_OPA_DISP++, 0x06, play->objectCtx.slots[drawObjectSlot].segment);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[drawObjectSlot].segment);
    if (!play) {}

    CLOSE_DISPS(gfxCtx, "../z_demo_ec.c", 670);
}

void DemoEc_UseAnimationObject(DemoEc* this, PlayState* play) {
    s32 animObjectSlot = this->animObjectSlot;

    gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[animObjectSlot].segment);
}

CsCmdActorCue* DemoEc_GetCue(PlayState* play, s32 cueChannel) {
    if (play->csCtx.state != CS_STATE_IDLE) {
        CsCmdActorCue* cue = play->csCtx.actorCues[cueChannel];

        return cue;
    }

    return NULL;
}

void DemoEc_SetStartPosRotFromCue(DemoEc* this, PlayState* play, s32 cueChannel) {
    CsCmdActorCue* cue = DemoEc_GetCue(play, cueChannel);

    if (cue != NULL) {
        this->actor.world.pos.x = cue->startPos.x;
        this->actor.world.pos.y = cue->startPos.y;
        this->actor.world.pos.z = cue->startPos.z;

        this->actor.world.rot.y = this->actor.shape.rot.y = cue->rot.y;
    }
}

void DemoEc_InitIngo(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gIngoSkel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcIngoAnim, 0, 0.0f, false);
    func_8096D64C(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_INGO;
    this->drawConfig = EC_DRAW_INGO;
}

void DemoEc_UpdateIngo(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_DrawIngo(DemoEc* this, PlayState* play) {
    DemoEc_DrawSkeleton(this, play, gIngoEyeClosed2Tex, gIngoRedTex, NULL, NULL);
}

void DemoEc_InitTalon(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gTalonSkel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcTalonAnim, 0, 0.0f, false);
    func_8096D64C(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_TALON;
    this->drawConfig = EC_DRAW_TALON;
}

void DemoEc_UpdateTalon(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_DrawTalon(DemoEc* this, PlayState* play) {
    DemoEc_DrawSkeleton(this, play, gTalonEyeClosed2Tex, gTalonRedTex, NULL, NULL);
}

void DemoEc_InitWindmillMan(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gWindmillManSkel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcWindmillManAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_WINDMILL_MAN;
    this->drawConfig = EC_DRAW_WINDMILL_MAN;
}

void DemoEc_UpdateWindmillMan(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_DrawWindmillMan(DemoEc* this, PlayState* play) {
    DemoEc_DrawSkeleton(this, play, gWindmillManEyeClosedTex, gWindmillManMouthAngryTex, NULL, NULL);
}

void DemoEc_InitKokiriBoy(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gKm1Skel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcKokiriAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_KOKIRI_BOY;
    this->drawConfig = EC_DRAW_KOKIRI_BOY;
}

void DemoEc_InitDancingKokiriBoy(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gKm1Skel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcDancingKokiriAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_DANCING_KOKIRI_BOY;
    this->drawConfig = EC_DRAW_KOKIRI_BOY;
}

void DemoEc_UpdateKokiriBoy(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_UpdateDancingKokiriBoy(DemoEc* this, PlayState* play) {
    DemoEc_UpdateKokiriBoy(this, play);
}

void DemoEc_DrawKokiriBoy(DemoEc* this, PlayState* play) {
    static u8 color1[] = { 0, 130, 70, 255 };
    static u8 color2[] = { 110, 170, 20, 255 };

    DemoEc_DrawSkeletonCustomColor(this, play, NULL, NULL, color1, color2, NULL, NULL);
}

void DemoEc_InitKokiriGirl(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gKw1Skel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcKokiriAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_KOKIRI_GIRL;
    this->drawConfig = EC_DRAW_KOKIRI_GIRL;
}

void DemoEc_InitDancingKokiriGirl(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gKw1Skel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcDancingKokiriAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_DANCING_KOKIRI_GIRL;
    this->drawConfig = EC_DRAW_KOKIRI_GIRL;
}

void DemoEc_UpdateKokiriGirl(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_UpdateDancingKokiriGirl(DemoEc* this, PlayState* play) {
    DemoEc_UpdateKokiriGirl(this, play);
}

void DemoEc_DrawKokiriGirl(DemoEc* this, PlayState* play) {
    static void* eyeTextures[] = {
        gKw1EyeOpenTex,
        gKw1EyeHalfTex,
        gKw1EyeClosedTex,
    };
    static u8 color1[] = { 70, 190, 60, 255 };
    static u8 color2[] = { 100, 30, 0, 255 };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeletonCustomColor(this, play, eyeTexture, NULL, color1, color2, NULL, NULL);
}
void DemoEc_InitOldMan(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gHylianOldManSkel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcOldManAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_OLD_MAN;
    this->drawConfig = EC_DRAW_OLD_MAN;
}

void DemoEc_UpdateOldMan(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_DrawOldMan(DemoEc* this, PlayState* play) {
    static void* eyeTextures[] = {
        gHylianOldManEyeOpenTex,
        gHylianOldManEyeHalfTex,
        gHylianOldManEyeClosedTex,
    };
    static u8 color1[] = { 0, 50, 100, 255 };
    static u8 color2[] = { 0, 50, 160, 255 };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeletonCustomColor(this, play, eyeTexture, NULL, color1, color2, NULL, NULL);
}

void DemoEc_InitBeardedMan(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gHylianMan1Skel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcOldManAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_BEARDED_MAN;
    this->drawConfig = EC_DRAW_BEARDED_MAN;
}

void DemoEc_UpdateBeardedMan(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_DrawBeardedMan(DemoEc* this, PlayState* play) {
    static void* eyeTextures[] = {
        gHylianMan1BeardedEyeOpenTex,
        gHylianMan1BeardedEyeHalfTex,
        gHylianMan1BeardedEyeClosedTex,
    };
    static u8 color1[] = { 255, 255, 255, 255 };
    static u8 color2[] = { 255, 255, 255, 255 };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeletonCustomColor(this, play, eyeTexture, NULL, color1, color2, NULL, NULL);
}

void DemoEc_InitWoman(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gHylianWoman2Skel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcOldManAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_WOMAN;
    this->drawConfig = EC_DRAW_WOMAN;
}

void DemoEc_UpdateWoman(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_DrawWoman(DemoEc* this, PlayState* play) {
    static void* eyeTextures[] = {
        gHylianWoman2EyeOpenTex,
        gHylianWoman2EyeHalfTex,
        gHylianWoman2EyeClosedTex,
    };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, play, eyeTexture, NULL, NULL, NULL);
}

void DemoEc_InitOldWoman(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gHylianOldWomanSkel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcOldManAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_OLD_WOMAN;
    this->drawConfig = EC_DRAW_OLD_WOMAN;
}

void DemoEc_UpdateOldWoman(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_DrawOldWoman(DemoEc* this, PlayState* play) {
    DemoEc_DrawSkeleton(this, play, &gHylianOldWomanEyeTex, NULL, NULL, NULL);
}

void DemoEc_InitBossCarpenter(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &object_toryo_Skel_007150);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcCarpenterAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_BOSS_CARPENTER;
    this->drawConfig = EC_DRAW_BOSS_CARPENTER;
}

void DemoEc_UpdateBossCarpenter(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_DrawBossCarpenter(DemoEc* this, PlayState* play) {
    DemoEc_DrawSkeleton(this, play, NULL, NULL, NULL, NULL);
}

void DemoEc_InitCarpenter(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &object_daiku_Skel_007958);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcCarpenterAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_CARPENTER;
    this->drawConfig = EC_DRAW_CARPENTER;
}

void DemoEc_UpdateCarpenter(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateBgFlags(this, play);
}

s32 DemoEc_CarpenterOverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                                     Gfx** gfx) {
    DemoEc* this = (DemoEc*)thisx;

    if (limbIndex == 1) {
        gDPPipeSync((*gfx)++);
        switch (this->actor.params) {
            case 10:
                gDPSetEnvColor((*gfx)++, 170, 10, 70, 255);
                break;
            case 11:
                gDPSetEnvColor((*gfx)++, 170, 200, 255, 255);
                break;
            case 12:
                gDPSetEnvColor((*gfx)++, 0, 230, 70, 255);
                break;
            case 13:
                gDPSetEnvColor((*gfx)++, 200, 0, 150, 255);
                break;
        }
    }

    return false;
}

Gfx* DemoEc_GetCarpenterPostLimbDList(DemoEc* this) {
    switch (this->actor.params) {
        case 10:
            return object_daiku_DL_005BD0;
        case 11:
            return object_daiku_DL_005AC0;
        case 12:
            return object_daiku_DL_005990;
        case 13:
            return object_daiku_DL_005880;
        default:
            PRINTF(VT_FGCOL(RED) "かつらが無い!!!!!!!!!!!!!!!!\n" VT_RST);
            return NULL;
    }
}

void DemoEc_CarpenterPostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx) {
    DemoEc* this = (DemoEc*)thisx;
    Gfx* postLimbDList;

    if (limbIndex == 15) {
        postLimbDList = DemoEc_GetCarpenterPostLimbDList(this);
        gSPDisplayList((*gfx)++, SEGMENTED_TO_VIRTUAL(postLimbDList));
    }
}

void DemoEc_DrawCarpenter(DemoEc* this, PlayState* play) {
    DemoEc_DrawSkeleton(this, play, NULL, NULL, DemoEc_CarpenterOverrideLimbDraw, DemoEc_CarpenterPostLimbDraw);
}

void DemoEc_InitGerudo(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gGerudoWhiteSkel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcGerudoAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_GERUDO;
    this->drawConfig = EC_DRAW_GERUDO;
}

void DemoEc_UpdateGerudo(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, play);
}

Gfx* DemoEc_GetGerudoPostLimbDList(DemoEc* this) {
    switch (this->actor.params) {
        case 16:
            return gGerudoWhiteHairstyleBobDL;
        case 17:
            return gGerudoWhiteHairstyleStraightFringeDL;
        case 18:
            return gGerudoWhiteHairstyleSpikyDL;
        default:
            PRINTF(VT_FGCOL(RED) "かつらが無い!!!!!!!!!!!!!!!!\n" VT_RST);
            return NULL;
    }
}

void DemoEc_GerudoPostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx) {
    DemoEc* this = (DemoEc*)thisx;
    Gfx* postLimbDList;

    if (limbIndex == 15) {
        postLimbDList = DemoEc_GetGerudoPostLimbDList(this);
        gSPDisplayList((*gfx)++, SEGMENTED_TO_VIRTUAL(postLimbDList));
    }
}

void DemoEc_DrawGerudo(DemoEc* this, PlayState* play) {
    static void* eyeTextures[] = {
        gGerudoWhiteEyeOpenTex,
        gGerudoWhiteEyeHalfTex,
        gGerudoWhiteEyeClosedTex,
    };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, play, eyeTexture, NULL, NULL, DemoEc_GerudoPostLimbDraw);
}

void DemoEc_InitDancingZora(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gZoraSkel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcDancingZoraAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_DANCING_ZORA;
    this->drawConfig = EC_DRAW_DANCING_ZORA;
}

void DemoEc_UpdateDancingZora(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_DrawDancingZora(DemoEc* this, PlayState* play) {
    static void* eyeTextures[] = { gZoraEyeOpenTex, gZoraEyeHalfTex, gZoraEyeClosedTex };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, play, eyeTexture, NULL, NULL, NULL);
}

void DemoEc_InitKingZora(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gKzSkel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcKingZoraAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_KING_ZORA;
    this->drawConfig = EC_DRAW_KING_ZORA;
    DemoEc_SetEyeTexIndex(this, 3);
}

void func_8096F1D4(DemoEc* this) {
    f32 currentFrame = this->skelAnime.curFrame;

    if (currentFrame <= 32.0f) {
        DemoEc_SetEyeTexIndex(this, 3);
    } else {
        DemoEc_UpdateEyes(this);
    }
}

void func_8096F224(DemoEc* this, PlayState* play) {
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcAnim_006930, 2, -8.0f, false);
    this->updateMode = EC_UPDATE_17;
}

void func_8096F26C(DemoEc* this, s32 arg1) {
    if (arg1 != 0) {
        DemoEc_ChangeAnimation(this, &gDemoEcAnim_006220, 0, 0.0f, false);
        this->updateMode = EC_UPDATE_18;
    }
}

void func_8096F2B0(DemoEc* this, PlayState* play, s32 cueChannel) {
    CsCmdActorCue* cue = DemoEc_GetCue(play, cueChannel);

    if (cue != NULL) {
        s32 nextCueId = cue->id;
        s32 currentCueId = this->cueId;

        if (nextCueId != currentCueId) {
            switch (nextCueId) {
                case 2:
                    func_8096F224(this, play);
                    break;
            }

            this->cueId = nextCueId;
        }
    }
}

void DemoEc_UpdateKingZora(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_SetStartPosRotFromCue(this, play, 6);
    DemoEc_UpdateBgFlags(this, play);
    func_8096F2B0(this, play, 6);
}

void func_8096F378(DemoEc* this, PlayState* play) {
    s32 animDone = DemoEc_UpdateSkelAnime(this);

    func_8096D594(this, play);
    func_8096F1D4(this);
    DemoEc_UpdateBgFlags(this, play);
    func_8096F26C(this, animDone);
}

void func_8096F3D4(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_DrawKingZora(DemoEc* this, PlayState* play) {
    static void* eyeTextures[] = { gKzEyeOpenTex, gKzEyeHalfTex, gKzEyeClosedTex, gKzEyeOpen2Tex };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, play, eyeTexture, NULL, NULL, NULL);
}

void DemoEc_InitMido(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gMidoSkel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcMidoAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_MIDO;
    this->drawConfig = EC_DRAW_MIDO;
    DemoEc_SetEyeTexIndex(this, 3);
}

void func_8096F4FC(DemoEc* this, PlayState* play) {
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcAnim_008D1C, 2, -8.0f, false);
    this->updateMode = EC_UPDATE_20;
}

void func_8096F544(DemoEc* this, s32 changeAnim) {
    if (changeAnim) {
        DemoEc_ChangeAnimation(this, &gDemoEcAnim_009234, 0, 0.0f, false);
    }
}

void func_8096F578(DemoEc* this, PlayState* play, s32 cueChannel) {
    CsCmdActorCue* cue;

    cue = DemoEc_GetCue(play, cueChannel);

    if (cue != NULL) {
        s32 nextCueId = cue->id;
        s32 currentCueId = this->cueId;

        if (nextCueId != currentCueId) {
            switch (nextCueId) {
                case 2:
                    func_8096F4FC(this, play);
                    break;
            }

            this->cueId = nextCueId;
        }
    }
}

void DemoEc_UpdateMido(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_SetStartPosRotFromCue(this, play, 7);
    DemoEc_UpdateBgFlags(this, play);
    func_8096F578(this, play, 7);
}

void func_8096F640(DemoEc* this, PlayState* play) {
    s32 animDone = DemoEc_UpdateSkelAnime(this);

    func_8096D594(this, play);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, play);
    func_8096F544(this, animDone);
}

void DemoEc_DrawMido(DemoEc* this, PlayState* play) {
    static void* eyeTextures[] = {
        gMidoEyeOpenTex,
        gMidoEyeHalfTex,
        gMidoEyeClosedTex,
        gMidoEyeAngryTex,
    };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, play, eyeTexture, NULL, NULL, NULL);
}

void DemoEc_InitCucco(DemoEc* this, PlayState* play) {
    AnimationHeader* animation;

    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gCuccoSkel);
    DemoEc_UseAnimationObject(this, play);

    if (this->actor.params == 22) {
        animation = &gDemoEcJumpingCuccoAnim;
    } else if (this->actor.params == 23) {
        animation = &gDemoEcJumpingCucco2Anim;
    } else {
        animation = &gDemoEcWalkingCuccoAnim;
    }

    DemoEc_ChangeAnimation(this, animation, 0, 0.0f, false);
    func_8096D64C(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_CUCCO;
    this->drawConfig = EC_DRAW_CUCCO;
}

void DemoEc_UpdateCucco(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_DrawCucco(DemoEc* this, PlayState* play) {
    DemoEc_DrawSkeleton(this, play, NULL, NULL, NULL, NULL);
}

void DemoEc_InitCuccoLady(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gCuccoLadySkel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcCuccoLadyAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_CUCCO_LADY;
    this->drawConfig = EC_DRAW_CUCCO_LADY;
}

void DemoEc_UpdateCuccoLady(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_DrawCuccoLady(DemoEc* this, PlayState* play) {
    static void* eyeTextures[] = {
        gCuccoLadyEyeOpenTex,
        gCuccoLadyEyeHalfTex,
        gCuccoLadyEyeClosedTex,
    };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, play, eyeTexture, NULL, NULL, NULL);
}

void DemoEc_InitPotionShopOwner(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &object_ds2_Skel_004258);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcPotionShopOwnerAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_POTION_SHOP_OWNER;
    this->drawConfig = EC_DRAW_POTION_SHOP_OWNER;
}

void DemoEc_UpdatePotionShopOwner(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_DrawPotionShopOwner(DemoEc* this, PlayState* play) {
    static void* eyeTextures[] = {
        gPotionShopkeeperEyeOpenTex,
        gPotionShopkeeperEyeHalfTex,
        gPotionShopkeeperEyeClosedTex,
    };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, play, eyeTexture, NULL, NULL, NULL);
}

void DemoEc_InitMaskShopOwner(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gHappyMaskSalesmanSkel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcPotionShopOwnerAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_MASK_SHOP_OWNER;
    this->drawConfig = EC_DRAW_MASK_SHOP_OWNER;
}

void DemoEc_UpdateMaskShopOwner(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_DrawMaskShopOwner(DemoEc* this, PlayState* play) {
    DemoEc_DrawSkeleton(this, play, gHappyMaskSalesmanEyeClosedTex, NULL, NULL, NULL);
}

void DemoEc_InitFishingOwner(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gFishingOwnerSkel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcPotionShopOwnerAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_FISHING_MAN;
    this->drawConfig = EC_DRAW_FISHING_MAN;
}

void DemoEc_UpdateFishingOwner(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_FishingOwnerPostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx) {
    DemoEc* this = (DemoEc*)thisx;

    if ((limbIndex == 8) && !(HIGH_SCORE(HS_FISHING) & HS_FISH_STOLE_HAT)) {
        gSPDisplayList((*gfx)++, SEGMENTED_TO_VIRTUAL(gFishingOwnerHatDL));
    }
}

void DemoEc_DrawFishingOwner(DemoEc* this, PlayState* play) {
    static void* eyeTextures[] = {
        gFishingOwnerEyeOpenTex,
        gFishingOwnerEyeHalfTex,
        gFishingOwnerEyeClosedTex,
    };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, play, eyeTexture, NULL, NULL, DemoEc_FishingOwnerPostLimbDraw);
}

void DemoEc_InitBombchuShopOwner(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gBombchuShopkeeperSkel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gDemoEcPotionShopOwnerAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_BOMBCHU_SHOP_OWNER;
    this->drawConfig = EC_DRAW_BOMBCHU_SHOP_OWNER;
}

void DempEc_UpdateBombchuShopOwner(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_DrawBombchuShopOwner(DemoEc* this, PlayState* play) {
    static void* eyeTextures[] = { gBombchuShopkeeperEyeOpenTex, gBombchuShopkeeperEyeHalfTex,
                                   gBombchuShopkeeperEyeClosedTex };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, play, eyeTexture, NULL, NULL, NULL);
}

void DemoEc_InitGorons(DemoEc* this, PlayState* play) {
    s32 pad[2];
    AnimationHeader* animation;
    f32 goronScale;
    Vec3f* scale = &this->actor.scale;

    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gGoronSkel);
    DemoEc_UseAnimationObject(this, play);

    if (this->actor.params == 30) {
        animation = &gDemoEcGoronAnim;
        goronScale = 1.0f;
    } else if (this->actor.params == 31) {
        animation = &gDemoEcGoron2Anim;
        goronScale = 1.0f;
    } else if (this->actor.params == 32) {
        animation = &gDemoEcGoronAnim;
        goronScale = 15.0f;
    } else {
        goronScale = 5.0f;
        animation = &object_gm_Anim_0002B8;
    }

    DemoEc_ChangeAnimation(this, animation, 0, 0.0f, false);

    scale->x *= goronScale;
    scale->y *= goronScale;
    scale->z *= goronScale;

    func_8096D64C(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_GORON;
    this->drawConfig = EC_DRAW_GORON;
}

void DemoEc_UpdateGorons(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_DrawGorons(DemoEc* this, PlayState* play) {
    static void* eyeTextures[] = { gGoronCsEyeOpenTex, gGoronCsEyeHalfTex, gGoronCsEyeClosedTex };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, play, eyeTexture, gGoronCsMouthNeutralTex, NULL, NULL);
}

void DemoEc_InitMalon(DemoEc* this, PlayState* play) {
    DemoEc_UseDrawObject(this, play);
    DemoEc_InitSkelAnime(this, play, &gMalonAdultSkel);
    DemoEc_UseAnimationObject(this, play);
    DemoEc_ChangeAnimation(this, &gMalonAdultSingAnim, 0, 0.0f, false);
    func_8096D5D4(this, play);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    this->updateMode = EC_UPDATE_MALON;
    this->drawConfig = EC_DRAW_MALON;
}

void DemoEc_UpdateMalon(DemoEc* this, PlayState* play) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, play);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, play);
}

void DemoEc_DrawMalon(DemoEc* this, PlayState* play) {
    static void* eyeTextures[] = { gMalonAdultEyeOpenTex, gMalonAdultEyeHalfTex, gMalonAdultEyeClosedTex };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, play, eyeTexture, gMalonAdultMouthHappyTex, NULL, NULL);
}

static DemoEcInitFunc sInitFuncs[] = {
    /*  0 */ DemoEc_InitIngo,
    /*  1 */ DemoEc_InitTalon,
    /*  2 */ DemoEc_InitWindmillMan,
    /*  3 */ DemoEc_InitKokiriBoy,
    /*  4 */ DemoEc_InitKokiriGirl,
    /*  5 */ DemoEc_InitOldMan,
    /*  6 */ DemoEc_InitBeardedMan,
    /*  7 */ DemoEc_InitWoman,
    /*  8 */ DemoEc_InitOldWoman,
    /*  9 */ DemoEc_InitBossCarpenter,
    /* 10 */ DemoEc_InitCarpenter,
    /* 11 */ DemoEc_InitCarpenter,
    /* 12 */ DemoEc_InitCarpenter,
    /* 13 */ DemoEc_InitCarpenter,
    /* 14 */ DemoEc_InitDancingKokiriBoy,
    /* 15 */ DemoEc_InitDancingKokiriGirl,
    /* 16 */ DemoEc_InitGerudo,
    /* 17 */ DemoEc_InitGerudo,
    /* 18 */ DemoEc_InitGerudo,
    /* 19 */ DemoEc_InitDancingZora,
    /* 20 */ DemoEc_InitKingZora,
    /* 21 */ DemoEc_InitMido,
    /* 22 */ DemoEc_InitCucco,
    /* 23 */ DemoEc_InitCucco,
    /* 24 */ DemoEc_InitCucco,
    /* 25 */ DemoEc_InitCuccoLady,
    /* 26 */ DemoEc_InitPotionShopOwner,
    /* 27 */ DemoEc_InitMaskShopOwner,
    /* 28 */ DemoEc_InitFishingOwner,
    /* 29 */ DemoEc_InitBombchuShopOwner,
    /* 30 */ DemoEc_InitGorons,
    /* 31 */ DemoEc_InitGorons,
    /* 32 */ DemoEc_InitGorons,
    /* 33 */ DemoEc_InitGorons,
    /* 34 */ DemoEc_InitMalon,
};

void DemoEc_InitNpc(DemoEc* this, PlayState* play) {
    s16 type = this->actor.params;

    if (sInitFuncs[type] == NULL) {
        // "Demo_Ec_main_init: Initialization process is wrong arg_data"
        PRINTF(VT_FGCOL(RED) " Demo_Ec_main_init:初期化処理がおかしいarg_data = %d!\n" VT_RST, type);
        Actor_Kill(&this->actor);
        return;
    }

    sInitFuncs[type](this, play);
}

void DemoEc_InitCommon(DemoEc* this, PlayState* play) {
    s32 pad;
    s16 primary;
    s32 type;
    s16 pad2;
    s16 sp28;
    s32 primaryObjectSlot;
    s32 secondaryObjectSlot;

    type = this->actor.params;
    primary = sDrawObjects[type];
    sp28 = sAnimationObjects[type];
    primaryObjectSlot = Object_GetSlot(&play->objectCtx, primary);
    secondaryObjectSlot = Object_GetSlot(&play->objectCtx, sp28);

    if ((secondaryObjectSlot < 0) || (primaryObjectSlot < 0)) {
        // "Demo_Ec_main_bank: Bank unreadable arg_data = %d!"
        PRINTF(VT_FGCOL(RED) "Demo_Ec_main_bank:バンクを読めない arg_data = %d!\n" VT_RST, type);
        Actor_Kill(&this->actor);
        return;
    }

    if (Object_IsLoaded(&play->objectCtx, primaryObjectSlot) &&
        Object_IsLoaded(&play->objectCtx, secondaryObjectSlot)) {

        this->drawObjectSlot = primaryObjectSlot;
        this->animObjectSlot = secondaryObjectSlot;

        DemoEc_InitNpc(this, play);
    }
}

static DemoEcUpdateFunc sUpdateFuncs[] = {
    DemoEc_InitCommon,
    DemoEc_UpdateIngo,
    DemoEc_UpdateTalon,
    DemoEc_UpdateWindmillMan,
    DemoEc_UpdateKokiriBoy,
    DemoEc_UpdateKokiriGirl,
    DemoEc_UpdateOldMan,
    DemoEc_UpdateBeardedMan,
    DemoEc_UpdateWoman,
    DemoEc_UpdateOldWoman,
    DemoEc_UpdateBossCarpenter,
    DemoEc_UpdateCarpenter,
    DemoEc_UpdateDancingKokiriBoy,
    DemoEc_UpdateDancingKokiriGirl,
    DemoEc_UpdateGerudo,
    DemoEc_UpdateDancingZora,
    DemoEc_UpdateKingZora,
    func_8096F378,
    func_8096F3D4,
    DemoEc_UpdateMido,
    func_8096F640,
    DemoEc_UpdateCucco,
    DemoEc_UpdateCuccoLady,
    DemoEc_UpdatePotionShopOwner,
    DemoEc_UpdateMaskShopOwner,
    DemoEc_UpdateFishingOwner,
    DempEc_UpdateBombchuShopOwner,
    DemoEc_UpdateGorons,
    DemoEc_UpdateMalon,
};

void DemoEc_Update(Actor* thisx, PlayState* play) {
    DemoEc* this = (DemoEc*)thisx;
    s32 updateMode = this->updateMode;

    if ((updateMode < 0) || (updateMode >= ARRAY_COUNT(sUpdateFuncs)) || sUpdateFuncs[updateMode] == NULL) {
        // "The main mode is strange !!!!!!!!!!!!!!!!!!!!!!!!!"
        PRINTF(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        if (updateMode != EC_UPDATE_COMMON) {
            DemoEc_UseAnimationObject(this, play);
        }
        sUpdateFuncs[updateMode](this, play);
    }
}

void DemoEc_DrawCommon(DemoEc* this, PlayState* play) {
}

static DemoEcDrawFunc sDrawFuncs[] = {
    DemoEc_DrawCommon,          DemoEc_DrawIngo,
    DemoEc_DrawTalon,           DemoEc_DrawWindmillMan,
    DemoEc_DrawKokiriBoy,       DemoEc_DrawKokiriGirl,
    DemoEc_DrawOldMan,          DemoEc_DrawBeardedMan,
    DemoEc_DrawWoman,           DemoEc_DrawOldWoman,
    DemoEc_DrawBossCarpenter,   DemoEc_DrawCarpenter,
    DemoEc_DrawGerudo,          DemoEc_DrawDancingZora,
    DemoEc_DrawKingZora,        DemoEc_DrawMido,
    DemoEc_DrawCucco,           DemoEc_DrawCuccoLady,
    DemoEc_DrawPotionShopOwner, DemoEc_DrawMaskShopOwner,
    DemoEc_DrawFishingOwner,    DemoEc_DrawBombchuShopOwner,
    DemoEc_DrawGorons,          DemoEc_DrawMalon,
};

void DemoEc_Draw(Actor* thisx, PlayState* play) {
    DemoEc* this = (DemoEc*)thisx;
    s32 drawConfig = this->drawConfig;

    if ((drawConfig < 0) || (drawConfig >= ARRAY_COUNT(sDrawFuncs)) || sDrawFuncs[drawConfig] == NULL) {
        // "The main mode is strange !!!!!!!!!!!!!!!!!!!!!!!!!"
        PRINTF(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        if (drawConfig != EC_DRAW_COMMON) {
            DemoEc_UseDrawObject(this, play);
        }
        sDrawFuncs[drawConfig](this, play);
    }
}

ActorProfile Demo_Ec_Profile = {
    /**/ ACTOR_DEMO_EC,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_EC,
    /**/ sizeof(DemoEc),
    /**/ DemoEc_Init,
    /**/ DemoEc_Destroy,
    /**/ DemoEc_Update,
    /**/ DemoEc_Draw,
};
