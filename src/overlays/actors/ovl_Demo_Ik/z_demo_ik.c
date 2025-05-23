#include "z_demo_ik.h"
#include "terminal.h"
#include "assets/objects/object_ik/object_ik.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void DemoIk_Init(Actor* thisx, PlayState* play);
void DemoIk_Destroy(Actor* thisx, PlayState* play);
void DemoIk_Update(Actor* thisx, PlayState* play);
void DemoIk_Draw(Actor* thisx, PlayState* play);

void DemoIk_Type1Init(DemoIk* this, PlayState* play);
void DemoIk_Type2Init(DemoIk* this, PlayState* play);

void DemoIk_Type1Action0(DemoIk* this, PlayState* play);
void DemoIk_Type1Action1(DemoIk* this, PlayState* play);
void DemoIk_Type1Action2(DemoIk* this, PlayState* play);
void DemoIk_Type2Action0(DemoIk* this, PlayState* play);
void DemoIk_Type2Action1(DemoIk* this, PlayState* play);
void DemoIk_Type2Action2(DemoIk* this, PlayState* play);

void DemoIk_DrawNothing(DemoIk* this, PlayState* play);
void DemoIk_Type1Draw(DemoIk* this, PlayState* play);
void DemoIk_Type2Draw(DemoIk* this, PlayState* play);

void DemoIk_Destroy(Actor* thisx, PlayState* play) {
}

void DemoIk_BgCheck(DemoIk* this, PlayState* play) {
    Actor_UpdateBgCheckInfo(play, &this->actor, 75.0f, 30.0f, 30.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
}

s32 DemoIk_UpdateSkelAnime(DemoIk* this) {
    return SkelAnime_Update(&this->skelAnime);
}

CsCmdActorCue* DemoIk_GetCue(PlayState* play, s32 cueChannel) {
    if (play->csCtx.state != CS_STATE_IDLE) {
        CsCmdActorCue* cue = play->csCtx.actorCues[cueChannel];

        return cue;
    }

    return NULL;
}

s32 DemoIk_CheckForCue(PlayState* play, u16 cueId, s32 cueChannel) {
    CsCmdActorCue* cue = DemoIk_GetCue(play, cueChannel);

    if ((cue != NULL) && (cue->id == cueId)) {
        return 1;
    }
    return 0;
}

void DemoIk_SetMove(DemoIk* this, PlayState* play) {
    this->skelAnime.movementFlags |= ANIM_FLAG_UPDATE_XZ;
    AnimTaskQueue_AddActorMovement(play, &this->actor, &this->skelAnime, 1.0f);
}

void DemoIk_EndMove(DemoIk* this) {
    this->skelAnime.movementFlags &= ~ANIM_FLAG_UPDATE_XZ;
}

f32 DemoIk_GetCurFrame(DemoIk* this) {
    return this->skelAnime.curFrame;
}

Gfx* DemoIk_SetColors(GraphicsContext* gfxCtx, u8 primR, u8 primG, u8 primB, u8 envR, u8 envG, u8 envB) {
    Gfx* head = GRAPH_ALLOC(gfxCtx, 3 * sizeof(Gfx));
    Gfx* entry = head;

    gDPSetPrimColor(entry++, 0x00, 0x00, primR, primG, primB, 255);
    gDPSetEnvColor(entry++, envR, envG, envB, 255);
    gSPEndDisplayList(entry++);
    return head;
}

s32 DemoIk_GetCueChannel(s32 params) {
    s32 ret;

    if (params == 0) {
        ret = 5;
    } else if (params == 1) {
        ret = 6;
    } else {
        ret = 7;
    }
    return ret;
}

void DemoIk_Type1PlaySfx(DemoIk* this) {
    switch (this->actor.params) {
        case 0:
            if (Animation_OnFrame(&this->skelAnime, 5.0f)) {
                Audio_PlaySfxGeneral(NA_SE_EN_IRONNACK_ARMOR_LAND1_DEMO, &this->actor.projectedPos, 4,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            }
            break;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, 10.0f)) {
                Audio_PlaySfxGeneral(NA_SE_EN_IRONNACK_ARMOR_LAND3_DEMO, &this->actor.projectedPos, 4,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            }
            break;
        case 2:
            if (Animation_OnFrame(&this->skelAnime, 9.0f)) {
                Audio_PlaySfxGeneral(NA_SE_EN_IRONNACK_ARMOR_LAND2_DEMO, &this->actor.projectedPos, 4,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            }
            break;
    }
}

void DemoIk_SpawnDeadDb(DemoIk* this, PlayState* play) {
    static Vec3f deadDbOffsets[] = {
        { -14.0f, 5.0f, 5.0f },  { -20.0f, 12.0f, 0.0f }, { -5.0f, 10.0f, -1.0f }, { -10.0f, 8.0f, 14.0f },
        { -3.0f, 10.0f, 7.0f },  { -10.0f, 11.0f, 0.0f }, { 9.0f, 10.0f, -8.0f },  { 4.0f, 10.0f, 3.0f },
        { -6.0f, 13.0f, -5.0f }, { 1.0f, 9.0f, 3.0f },    { -10.0f, 9.0f, 1.0f },
    };
    s32 i;
    s32 cueChannel = DemoIk_GetCueChannel(this->actor.params);

    if (DemoIk_CheckForCue(play, 5, cueChannel)) {
        Vec3f pos;
        Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
        s32 startIndex;
        s32 endIndex;

        if (cueChannel == 5) {
            startIndex = 0;
            endIndex = 4;
        } else if (cueChannel == 7) {
            startIndex = 4;
            endIndex = 8;
        } else {
            startIndex = 8;
            endIndex = 11;
        }
        for (i = startIndex; i < endIndex; i++) {
            pos.x = deadDbOffsets[i].x + this->actor.world.pos.x;
            pos.y = deadDbOffsets[i].y + this->actor.world.pos.y;
            pos.z = deadDbOffsets[i].z + this->actor.world.pos.z;
            EffectSsDeadDb_Spawn(play, &pos, &zeroVec, &zeroVec, 10, 7, 255, 255, 255, 255, 0, 0, 255, 1, 9, true);
        }
    }
}

void DemoIk_MoveToStartPos(DemoIk* this, PlayState* play, s32 cueChannel) {
    CsCmdActorCue* cue = DemoIk_GetCue(play, cueChannel);

    if (cue != NULL) {
        this->actor.world.pos.x = cue->startPos.x;
        this->actor.world.pos.y = cue->startPos.y;
        this->actor.world.pos.z = cue->startPos.z;
        this->actor.world.rot.y = this->actor.shape.rot.y = cue->rot.y;
    }
}

void DemoIk_Type1Init(DemoIk* this, PlayState* play) {
    s32 pad[3];
    SkeletonHeader* skeleton;
    AnimationHeader* animation;
    f32 phi_f0;

    switch (this->actor.params) {
        case 0:
            skeleton = &object_ik_Skel_000C90;
            animation = &object_ik_Anim_000C6C;
            phi_f0 = 30.0f;
            break;
        case 1:
            skeleton = &object_ik_Skel_000660;
            animation = &object_ik_Anim_000634;
            phi_f0 = 10.0f;
            break;
        default:
            skeleton = &object_ik_Skel_000380;
            animation = &object_ik_Anim_00035C;
            phi_f0 = 20.0f;
            // No break is required for matching
    }
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, phi_f0);
    SkelAnime_Init(play, &this->skelAnime, skeleton, NULL, this->jointTable, this->morphTable, 2);
    Animation_Change(&this->skelAnime, animation, 1.0f, 0.0f, Animation_GetLastFrame(animation), ANIMMODE_ONCE, 0.0f);
}

void func_8098393C(DemoIk* this) {
    this->actionMode = 0;
    this->drawMode = 0;
    this->actor.shape.shadowAlpha = 0;
}

void func_8098394C(DemoIk* this, PlayState* play) {
    DemoIk_EndMove(this);
    DemoIk_MoveToStartPos(this, play, DemoIk_GetCueChannel(this->actor.params));
    this->actionMode = 1;
    this->drawMode = 1;
    this->actor.shape.shadowAlpha = 255;
    this->skelAnime.curFrame = 0.0f;
}

void func_809839AC(DemoIk* this) {
    this->actionMode = 2;
    this->drawMode = 1;
    this->actor.shape.shadowAlpha = 255;
    this->skelAnime.curFrame = 0.0f;
}

void func_809839D0(DemoIk* this, PlayState* play) {
    CsCmdActorCue* cue = DemoIk_GetCue(play, DemoIk_GetCueChannel(this->actor.params));

    if (cue != NULL) {
        s32 nextCueId = cue->id;
        s32 currentCueId = this->cueId;

        if (nextCueId != currentCueId) {
            switch (nextCueId) {
                case 1:
                    func_8098393C(this);
                    break;
                case 2:
                    func_8098394C(this, play);
                    break;
                case 3:
                    func_809839AC(this);
                    break;
                case 4:
                    Actor_Kill(&this->actor);
                    break;
                case 5:
                case 6:
                    break;
                default:
                    // "there is no such action"
                    PRINTF("Demo_Ik_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
            }
            this->cueId = nextCueId;
        }
    }
}

void DemoIk_Type1Action0(DemoIk* this, PlayState* play) {
    func_809839D0(this, play);
}

void DemoIk_Type1Action1(DemoIk* this, PlayState* play) {
    DemoIk_BgCheck(this, play);
    func_809839D0(this, play);
}

void DemoIk_Type1Action2(DemoIk* this, PlayState* play) {
    DemoIk_UpdateSkelAnime(this);
    DemoIk_Type1PlaySfx(this);
    DemoIk_SetMove(this, play);
    DemoIk_BgCheck(this, play);
    DemoIk_SpawnDeadDb(this, play);
    func_809839D0(this, play);
}

void DemoIk_Type1PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    DemoIk* this = (DemoIk*)thisx;

    OPEN_DISPS(gfxCtx, "../z_demo_ik_inArmer.c", 385);
    if (limbIndex == 1) {
        switch (this->actor.params) {
            case 0:
                MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_demo_ik_inArmer.c", 390);
                gSPDisplayList(POLY_XLU_DISP++, gIronKnuckleArmorRivetAndSymbolDL);
                break;
            case 2:
                MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_demo_ik_inArmer.c", 396);
                gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016F88);
                break;
        }
    }
    CLOSE_DISPS(gfxCtx, "../z_demo_ik_inArmer.c", 404);
}

void DemoIk_Type1Draw(DemoIk* this, PlayState* play) {
    s32 pad[2];
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;

    OPEN_DISPS(gfxCtx, "../z_demo_ik_inArmer.c", 422);
    func_8002EBCC(&this->actor, play, 0);
    Gfx_SetupDL_25Opa(gfxCtx);
    Gfx_SetupDL_25Xlu(gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, DemoIk_SetColors(gfxCtx, 245, 225, 155, 30, 30, 0));
    gSPSegment(POLY_OPA_DISP++, 0x09, DemoIk_SetColors(gfxCtx, 255, 40, 0, 40, 0, 0));
    gSPSegment(POLY_OPA_DISP++, 0x0A, DemoIk_SetColors(gfxCtx, 255, 255, 255, 20, 40, 30));
    SkelAnime_DrawOpa(play, skelAnime->skeleton, skelAnime->jointTable, NULL, DemoIk_Type1PostLimbDraw, this);
    CLOSE_DISPS(gfxCtx, "../z_demo_ik_inArmer.c", 444);
}

void DemoIk_Type2Init(DemoIk* this, PlayState* play) {
    s32 pad[2];
    FlexSkeletonHeader* skeleton;
    AnimationHeader* animation;

    switch (this->actor.params) {
        case 3:
            skeleton = &object_ik_Skel_01EB40;
            animation = &object_ik_Anim_01EB14;
            break;
        case 4:
            skeleton = &object_ik_Skel_01EE60;
            animation = &object_ik_Anim_01EE34;
            break;
        case 5:
            skeleton = &object_ik_Skel_000F30;
            animation = &object_ik_Anim_000F0C;
            break;
        default:
            skeleton = &object_ik_Skel_000900;
            animation = &object_ik_Anim_0008DC;
    }

    SkelAnime_InitFlex(play, &this->skelAnime, skeleton, NULL, this->jointTable, this->morphTable, 2);
    Animation_Change(&this->skelAnime, animation, 1.0f, 0.0f, Animation_GetLastFrame(animation), ANIMMODE_ONCE, 0.0f);
    this->actionMode = 3;
    this->drawMode = 0;
}

void DemoIk_Type2PlaySfxOnFrame(DemoIk* this, f32 frame) {
    if (Animation_OnFrame(&this->skelAnime, frame)) {
        Audio_PlaySfxGeneral(NA_SE_EN_IRONNACK_ARMOR_OFF_DEMO, &this->actor.projectedPos, 4,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    }
}

void DemoIk_Type2PlaySfx(DemoIk* this) {
    switch (this->actor.params) {
        case 3:
            DemoIk_Type2PlaySfxOnFrame(this, 33.0f);
            break;
        case 5:
            DemoIk_Type2PlaySfxOnFrame(this, 44.0f);
            break;
    }
}

void func_80983FDC(DemoIk* this) {
    this->actionMode = 3;
    this->drawMode = 0;
}

void func_80983FEC(DemoIk* this, PlayState* play) {
    DemoIk_MoveToStartPos(this, play, 4);
    this->actionMode = 4;
    this->drawMode = 2;
    this->skelAnime.curFrame = 0.0f;
}

void func_8098402C(DemoIk* this) {
    this->actionMode = 5;
    this->drawMode = 2;
    this->skelAnime.curFrame = 0.0f;
}

void func_80984048(DemoIk* this, PlayState* play) {
    CsCmdActorCue* cue = DemoIk_GetCue(play, 4);

    if (cue != NULL) {
        s32 nextCueId = cue->id;
        s32 currentCueId = this->cueId;

        if (nextCueId != currentCueId) {
            switch (nextCueId) {
                case 1:
                    func_80983FDC(this);
                    break;
                case 5:
                    func_80983FEC(this, play);
                    break;
                case 6:
                    func_8098402C(this);
                    break;
                case 7:
                    Actor_Kill(&this->actor);
                    break;
                default:
                    // "there is no such action"
                    PRINTF("Demo_Ik_inFace_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
            }
            this->cueId = nextCueId;
        }
    }
}

void DemoIk_Type2Action0(DemoIk* this, PlayState* play) {
    func_80984048(this, play);
}

void DemoIk_Type2Action1(DemoIk* this, PlayState* play) {
    func_80984048(this, play);
}

void DemoIk_Type2Action2(DemoIk* this, PlayState* play) {
    DemoIk_UpdateSkelAnime(this);
    DemoIk_Type2PlaySfx(this);
    func_80984048(this, play);
}

s32 DemoIk_Type2OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    DemoIk* this = (DemoIk*)thisx;

    if ((limbIndex == 1) && (DemoIk_GetCurFrame(this) < 30.0f)) {
        *dList = NULL;
    }
    return 0;
}

void DemoIk_Type2PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    DemoIk* this = (DemoIk*)thisx;
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    f32 frame = DemoIk_GetCurFrame(this);

    OPEN_DISPS(gfxCtx, "../z_demo_ik_inFace.c", 268);
    if (limbIndex == 1 && (frame >= 30.0f)) {
        switch (this->actor.params) {
            case 3:
                MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_demo_ik_inFace.c", 274);
                gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_017028);
                break;
            case 4:
                MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_demo_ik_inFace.c", 280);
                gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_017170);
                break;
            case 5:
                MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_demo_ik_inFace.c", 286);
                gSPDisplayList(POLY_XLU_DISP++, gIronKnuckleArmorRivetAndSymbolDL);
                break;
            default:
                MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_demo_ik_inFace.c", 292);
                gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016CD8);
                break;
        }
    }
    CLOSE_DISPS(gfxCtx, "../z_demo_ik_inFace.c", 300);
}

void DemoIk_Type2Draw(DemoIk* this, PlayState* play) {
    s32 pad[2];
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;

    OPEN_DISPS(gfxCtx, "../z_demo_ik_inFace.c", 318);
    func_8002EBCC(&this->actor, play, 0);
    Gfx_SetupDL_25Opa(gfxCtx);
    Gfx_SetupDL_25Xlu(gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, DemoIk_SetColors(gfxCtx, 245, 225, 155, 30, 30, 0));
    gSPSegment(POLY_OPA_DISP++, 0x09, DemoIk_SetColors(gfxCtx, 255, 40, 0, 40, 0, 0));
    gSPSegment(POLY_OPA_DISP++, 0x0A, DemoIk_SetColors(gfxCtx, 255, 255, 255, 20, 40, 30));
    SkelAnime_DrawFlexOpa(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount,
                          DemoIk_Type2OverrideLimbDraw, DemoIk_Type2PostLimbDraw, this);
    CLOSE_DISPS(gfxCtx, "../z_demo_ik_inFace.c", 341);
}

static DemoIkActionFunc sActionFuncs[] = {
    DemoIk_Type1Action0, DemoIk_Type1Action1, DemoIk_Type1Action2,
    DemoIk_Type2Action0, DemoIk_Type2Action1, DemoIk_Type2Action2,
};

void DemoIk_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    DemoIk* this = (DemoIk*)thisx;

    if (this->actionMode < 0 || this->actionMode >= ARRAY_COUNT(sActionFuncs) ||
        sActionFuncs[this->actionMode] == NULL) {
        // "The main mode is strange"
        PRINTF(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sActionFuncs[this->actionMode](this, play);
}

void DemoIk_DrawNothing(DemoIk* this, PlayState* play) {
}

static DemoIkDrawFunc sDrawFuncs[] = {
    DemoIk_DrawNothing,
    DemoIk_Type1Draw,
    DemoIk_Type2Draw,
};

void DemoIk_Draw(Actor* thisx, PlayState* play) {
    s32 pad;
    DemoIk* this = (DemoIk*)thisx;

    if (this->drawMode < 0 || this->drawMode >= ARRAY_COUNT(sDrawFuncs) || sDrawFuncs[this->drawMode] == NULL) {
        // "The draw mode is strange"
        PRINTF(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sDrawFuncs[this->drawMode](this, play);
}

ActorProfile Demo_Ik_Profile = {
    /**/ ACTOR_DEMO_IK,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_IK,
    /**/ sizeof(DemoIk),
    /**/ DemoIk_Init,
    /**/ DemoIk_Destroy,
    /**/ DemoIk_Update,
    /**/ DemoIk_Draw,
};

void DemoIk_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    DemoIk* this = (DemoIk*)thisx;

    if (this->actor.params == 0 || this->actor.params == 1 || this->actor.params == 2) {
        DemoIk_Type1Init(this, play);
    } else {
        DemoIk_Type2Init(this, play);
    }
}
