#include "z_demo_ik.h"
#include "vt.h"

#define FLAGS 0x00000010

#define THIS ((DemoIk*)thisx)

void DemoIk_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoIk_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoIk_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoIk_Draw(Actor* thisx, GlobalContext* globalCtx);

void DemoIk_Type1Init(DemoIk* this, GlobalContext* globalCtx);
void DemoIk_Type2Init(DemoIk* this, GlobalContext* globalCtx);

void DemoIk_Type1Action0(DemoIk* this, GlobalContext* globalCtx);
void DemoIk_Type1Action1(DemoIk* this, GlobalContext* globalCtx);
void DemoIk_Type1Action2(DemoIk* this, GlobalContext* globalCtx);
void DemoIk_Type2Action0(DemoIk* this, GlobalContext* globalCtx);
void DemoIk_Type2Action1(DemoIk* this, GlobalContext* globalCtx);
void DemoIk_Type2Action2(DemoIk* this, GlobalContext* globalCtx);

void DemoIk_DrawNothing(DemoIk* this, GlobalContext* globalCtx);
void DemoIk_Type1Draw(DemoIk* this, GlobalContext* globalCtx);
void DemoIk_Type2Draw(DemoIk* this, GlobalContext* globalCtx);

extern AnimationHeader D_0600035C;
extern SkeletonHeader D_06000380;
extern AnimationHeader D_06000634;
extern SkeletonHeader D_06000660;
extern AnimationHeader D_060008DC;
extern AnimationHeader D_06000C6C;
extern SkeletonHeader D_06000C90;
extern AnimationHeader D_06000F0C;
extern Gfx D_06016BE0[];
extern Gfx D_06016CD8[];
extern Gfx D_06016F88[];
extern Gfx D_06017028[];
extern Gfx D_06017170[];
extern FlexSkeletonHeader D_0601EE60;
extern FlexSkeletonHeader D_06000F30;
extern AnimationHeader D_0601EB14;
extern FlexSkeletonHeader D_0601EB40;
extern AnimationHeader D_0601EE34;
extern FlexSkeletonHeader D_06000900;

void DemoIk_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void DemoIk_BgCheck(DemoIk* this, GlobalContext* globalCtx) {
    func_8002E4B4(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f, 5);
}

s32 DemoIk_UpdateSkelAnime(DemoIk* this) {
    return SkelAnime_Update(&this->skelAnime);
}

CsCmdActorAction* DemoIk_GetNpcAction(GlobalContext* globalCtx, s32 index) {
    if (globalCtx->csCtx.state != 0) {
        return globalCtx->csCtx.npcActions[index];
    }
    return NULL;
}

s32 DemoIk_CheckNpcAction(GlobalContext* globalCtx, u16 action, s32 index) {
    CsCmdActorAction* npcAction = DemoIk_GetNpcAction(globalCtx, index);

    if ((npcAction != NULL) && (npcAction->action == action)) {
        return 1;
    }
    return 0;
}

void DemoIk_SetMove(DemoIk* this, GlobalContext* globalCtx) {
    this->skelAnime.moveFlags |= 1;
    AnimationContext_SetMoveActor(globalCtx, &this->actor, &this->skelAnime, 1.0f);
}

void DemoIk_EndMove(DemoIk* this) {
    this->skelAnime.moveFlags &= ~1;
}

f32 DemoIk_GetCurFrame(DemoIk* this) {
    return this->skelAnime.curFrame;
}

Gfx* DemoIk_SetColors(GraphicsContext* gfxCtx, u8 primR, u8 primG, u8 primB, u8 envR, u8 envG, u8 envB) {
    Gfx* head = Graph_Alloc(gfxCtx, 3 * sizeof(Gfx));
    Gfx* entry = head;

    gDPSetPrimColor(entry++, 0x00, 0x00, primR, primG, primB, 255);
    gDPSetEnvColor(entry++, envR, envG, envB, 255);
    gSPEndDisplayList(entry++);
    return head;
}

s32 DemoIk_GetIndexFromParams(s32 params) {
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

void DemoIk_Type1PlaySound(DemoIk* this) {
    switch (this->actor.params) {
        case 0:
            if (Animation_OnFrame(&this->skelAnime, 5.0f)) {
                Audio_PlaySoundGeneral(NA_SE_EN_IRONNACK_ARMOR_LAND1_DEMO, &this->actor.projectedPos, 4, &D_801333E0,
                                       &D_801333E0, &D_801333E8);
            }
            break;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, 10.0f)) {
                Audio_PlaySoundGeneral(NA_SE_EN_IRONNACK_ARMOR_LAND3_DEMO, &this->actor.projectedPos, 4, &D_801333E0,
                                       &D_801333E0, &D_801333E8);
            }
            break;
        case 2:
            if (Animation_OnFrame(&this->skelAnime, 9.0f)) {
                Audio_PlaySoundGeneral(NA_SE_EN_IRONNACK_ARMOR_LAND2_DEMO, &this->actor.projectedPos, 4, &D_801333E0,
                                       &D_801333E0, &D_801333E8);
            }
            break;
    }
}

void DemoIk_SpawnDeadDb(DemoIk* this, GlobalContext* globalCtx) {
    static Vec3f deadDbOffsets[] = {
        { -14.0f, 5.0f, 5.0f },  { -20.0f, 12.0f, 0.0f }, { -5.0f, 10.0f, -1.0f }, { -10.0f, 8.0f, 14.0f },
        { -3.0f, 10.0f, 7.0f },  { -10.0f, 11.0f, 0.0f }, { 9.0f, 10.0f, -8.0f },  { 4.0f, 10.0f, 3.0f },
        { -6.0f, 13.0f, -5.0f }, { 1.0f, 9.0f, 3.0f },    { -10.0f, 9.0f, 1.0f },
    };
    s32 i;
    s32 index = DemoIk_GetIndexFromParams(this->actor.params);

    if (DemoIk_CheckNpcAction(globalCtx, 5, index)) {
        Vec3f pos;
        Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
        s32 startIndex;
        s32 endIndex;

        if (index == 5) {
            startIndex = 0;
            endIndex = 4;
        } else if (index == 7) {
            startIndex = 4;
            endIndex = 8;
        } else {
            startIndex = 8;
            endIndex = 11;
        }
        for (i = startIndex; i < endIndex; i++) {
            pos.x = deadDbOffsets[i].x + this->actor.posRot.pos.x;
            pos.y = deadDbOffsets[i].y + this->actor.posRot.pos.y;
            pos.z = deadDbOffsets[i].z + this->actor.posRot.pos.z;
            EffectSsDeadDb_Spawn(globalCtx, &pos, &zeroVec, &zeroVec, 10, 7, 255, 255, 255, 255, 0, 0, 255, 1, 9, true);
        }
    }
}

void DemoIk_MoveToStartPos(DemoIk* this, GlobalContext* globalCtx, s32 index) {
    CsCmdActorAction* npcAction = DemoIk_GetNpcAction(globalCtx, index);

    if (npcAction != NULL) {
        this->actor.posRot.pos.x = npcAction->startPos.x;
        this->actor.posRot.pos.y = npcAction->startPos.y;
        this->actor.posRot.pos.z = npcAction->startPos.z;
        this->actor.posRot.rot.y = this->actor.shape.rot.y = npcAction->rot.y;
    }
}

void DemoIk_Type1Init(DemoIk* this, GlobalContext* globalCtx) {
    s32 pad[3];
    SkeletonHeader* skeleton;
    AnimationHeader* animation;
    f32 phi_f0;

    switch (this->actor.params) {
        case 0:
            skeleton = &D_06000C90;
            animation = &D_06000C6C;
            phi_f0 = 30.0f;
            break;
        case 1:
            skeleton = &D_06000660;
            animation = &D_06000634;
            phi_f0 = 10.0f;
            break;
        default:
            skeleton = &D_06000380;
            animation = &D_0600035C;
            phi_f0 = 20.0f;
            // No break is required for matching
    }
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, phi_f0);
    SkelAnime_Init(globalCtx, &this->skelAnime, skeleton, NULL, this->jointTable, this->morphTable, 2);
    Animation_Change(&this->skelAnime, animation, 1.0f, 0.0f, Animation_GetLastFrame(animation), 2, 0.0f);
}

void func_8098393C(DemoIk* this) {
    this->actionMode = 0;
    this->drawMode = 0;
    this->actor.shape.unk_14 = 0;
}

void func_8098394C(DemoIk* this, GlobalContext* globalCtx) {
    DemoIk_EndMove(this);
    DemoIk_MoveToStartPos(this, globalCtx, DemoIk_GetIndexFromParams(this->actor.params));
    this->actionMode = 1;
    this->drawMode = 1;
    this->actor.shape.unk_14 = 0xFF;
    this->skelAnime.curFrame = 0.0f;
}

void func_809839AC(DemoIk* this) {
    this->actionMode = 2;
    this->drawMode = 1;
    this->actor.shape.unk_14 = 0xFF;
    this->skelAnime.curFrame = 0.0f;
}

void func_809839D0(DemoIk* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction = DemoIk_GetNpcAction(globalCtx, DemoIk_GetIndexFromParams(this->actor.params));

    if (npcAction != NULL) {
        s32 newAction = npcAction->action;
        s32 action = this->npcAction;

        if (newAction != action) {
            switch (newAction) {
                case 1:
                    func_8098393C(this);
                    break;
                case 2:
                    func_8098394C(this, globalCtx);
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
                    // there is no such action
                    osSyncPrintf("Demo_Ik_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
            }
            this->npcAction = newAction;
        }
    }
}

void DemoIk_Type1Action0(DemoIk* this, GlobalContext* globalCtx) {
    func_809839D0(this, globalCtx);
}

void DemoIk_Type1Action1(DemoIk* this, GlobalContext* globalCtx) {
    DemoIk_BgCheck(this, globalCtx);
    func_809839D0(this, globalCtx);
}

void DemoIk_Type1Action2(DemoIk* this, GlobalContext* globalCtx) {
    DemoIk_UpdateSkelAnime(this);
    DemoIk_Type1PlaySound(this);
    DemoIk_SetMove(this, globalCtx);
    DemoIk_BgCheck(this, globalCtx);
    DemoIk_SpawnDeadDb(this, globalCtx);
    func_809839D0(this, globalCtx);
}

void DemoIk_Type1PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    DemoIk* this = THIS;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_demo_ik_inArmer.c", 385);
    if (limbIndex == 1) {
        switch (this->actor.params) {
            case 0:
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_demo_ik_inArmer.c", 390), 2);
                gSPDisplayList(POLY_XLU_DISP++, D_06016BE0);
                break;
            case 2:
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_demo_ik_inArmer.c", 396), 2);
                gSPDisplayList(POLY_XLU_DISP++, D_06016F88);
                break;
        }
    }
    CLOSE_DISPS(gfxCtx, "../z_demo_ik_inArmer.c", 404);
}

void DemoIk_Type1Draw(DemoIk* this, GlobalContext* globalCtx) {
    s32 pad[2];
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;

    OPEN_DISPS(gfxCtx, "../z_demo_ik_inArmer.c", 422);
    func_8002EBCC(&this->actor, globalCtx, 0);
    func_80093D18(gfxCtx);
    func_80093D84(gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, DemoIk_SetColors(gfxCtx, 245, 225, 155, 30, 30, 0));
    gSPSegment(POLY_OPA_DISP++, 0x09, DemoIk_SetColors(gfxCtx, 255, 40, 0, 40, 0, 0));
    gSPSegment(POLY_OPA_DISP++, 0x0A, DemoIk_SetColors(gfxCtx, 255, 255, 255, 20, 40, 30));
    SkelAnime_DrawOpa(globalCtx, skelAnime->skeleton, skelAnime->jointTable, NULL, DemoIk_Type1PostLimbDraw, this);
    CLOSE_DISPS(gfxCtx, "../z_demo_ik_inArmer.c", 444);
}

void DemoIk_Type2Init(DemoIk* this, GlobalContext* globalCtx) {
    s32 pad[2];
    FlexSkeletonHeader* skeleton;
    AnimationHeader* animation;

    switch (this->actor.params) {
        case 3:
            skeleton = &D_0601EB40;
            animation = &D_0601EB14;
            break;
        case 4:
            skeleton = &D_0601EE60;
            animation = &D_0601EE34;
            break;
        case 5:
            skeleton = &D_06000F30;
            animation = &D_06000F0C;
            break;
        default:
            skeleton = &D_06000900;
            animation = &D_060008DC;
    }

    SkelAnime_InitFlex(globalCtx, &this->skelAnime, skeleton, NULL, this->jointTable, this->morphTable, 2);
    Animation_Change(&this->skelAnime, animation, 1.0f, 0.0f, Animation_GetLastFrame(animation), 2, 0.0f);
    this->actionMode = 3;
    this->drawMode = 0;
}

void DemoIk_Type2PlaySoundOnFrame(DemoIk* this, f32 frame) {
    if (Animation_OnFrame(&this->skelAnime, frame)) {
        Audio_PlaySoundGeneral(NA_SE_EN_IRONNACK_ARMOR_OFF_DEMO, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
    }
}

void DemoIk_Type2PlaySound(DemoIk* this) {
    switch (this->actor.params) {
        case 3:
            DemoIk_Type2PlaySoundOnFrame(this, 33.0f);
            break;
        case 5:
            DemoIk_Type2PlaySoundOnFrame(this, 44.0f);
            break;
    }
}

void func_80983FDC(DemoIk* this) {
    this->actionMode = 3;
    this->drawMode = 0;
}

void func_80983FEC(DemoIk* this, GlobalContext* globalCtx) {
    DemoIk_MoveToStartPos(this, globalCtx, 4);
    this->actionMode = 4;
    this->drawMode = 2;
    this->skelAnime.curFrame = 0.0f;
}

void func_8098402C(DemoIk* this) {
    this->actionMode = 5;
    this->drawMode = 2;
    this->skelAnime.curFrame = 0.0f;
}

void func_80984048(DemoIk* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction = DemoIk_GetNpcAction(globalCtx, 4);

    if (npcAction != NULL) {
        s32 newAction = npcAction->action;
        s32 action = this->npcAction;

        if (newAction != action) {
            switch (newAction) {
                case 1:
                    func_80983FDC(this);
                    break;
                case 5:
                    func_80983FEC(this, globalCtx);
                    break;
                case 6:
                    func_8098402C(this);
                    break;
                case 7:
                    Actor_Kill(&this->actor);
                    break;
                default:
                    // there is no such action
                    osSyncPrintf("Demo_Ik_inFace_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
            }
            this->npcAction = newAction;
        }
    }
}

void DemoIk_Type2Action0(DemoIk* this, GlobalContext* globalCtx) {
    func_80984048(this, globalCtx);
}

void DemoIk_Type2Action1(DemoIk* this, GlobalContext* globalCtx) {
    func_80984048(this, globalCtx);
}

void DemoIk_Type2Action2(DemoIk* this, GlobalContext* globalCtx) {
    DemoIk_UpdateSkelAnime(this);
    DemoIk_Type2PlaySound(this);
    func_80984048(this, globalCtx);
}

s32 DemoIk_Type2OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                 void* thisx) {
    DemoIk* this = THIS;

    if ((limbIndex == 1) && (DemoIk_GetCurFrame(this) < 30.0f)) {
        *dList = NULL;
    }
    return 0;
}

void DemoIk_Type2PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    DemoIk* this = THIS;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    f32 frame = DemoIk_GetCurFrame(this);

    OPEN_DISPS(gfxCtx, "../z_demo_ik_inFace.c", 268);
    if (limbIndex == 1 && (frame >= 30.0f)) {
        switch (this->actor.params) {
            case 3:
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_demo_ik_inFace.c", 274), 2);
                gSPDisplayList(POLY_XLU_DISP++, D_06017028);
                break;
            case 4:
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_demo_ik_inFace.c", 280), 2);
                gSPDisplayList(POLY_XLU_DISP++, D_06017170);
                break;
            case 5:
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_demo_ik_inFace.c", 286), 2);
                gSPDisplayList(POLY_XLU_DISP++, D_06016BE0);
                break;
            default:
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_demo_ik_inFace.c", 292), 2);
                gSPDisplayList(POLY_XLU_DISP++, D_06016CD8);
                break;
        }
    }
    CLOSE_DISPS(gfxCtx, "../z_demo_ik_inFace.c", 300);
}

void DemoIk_Type2Draw(DemoIk* this, GlobalContext* globalCtx) {
    s32 pad[2];
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;

    OPEN_DISPS(gfxCtx, "../z_demo_ik_inFace.c", 318);
    func_8002EBCC(&this->actor, globalCtx, 0);
    func_80093D18(gfxCtx);
    func_80093D84(gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, DemoIk_SetColors(gfxCtx, 245, 225, 155, 30, 30, 0));
    gSPSegment(POLY_OPA_DISP++, 0x09, DemoIk_SetColors(gfxCtx, 255, 40, 0, 40, 0, 0));
    gSPSegment(POLY_OPA_DISP++, 0x0A, DemoIk_SetColors(gfxCtx, 255, 255, 255, 20, 40, 30));
    SkelAnime_DrawFlexOpa(globalCtx, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount,
                          DemoIk_Type2OverrideLimbDraw, DemoIk_Type2PostLimbDraw, this);
    CLOSE_DISPS(gfxCtx, "../z_demo_ik_inFace.c", 341);
}

void DemoIk_Update(Actor* thisx, GlobalContext* globalCtx) {
    static DemoIkActionFunc sActionFuncs[] = {
        DemoIk_Type1Action0, DemoIk_Type1Action1, DemoIk_Type1Action2,
        DemoIk_Type2Action0, DemoIk_Type2Action1, DemoIk_Type2Action2,
    };
    s32 pad;
    DemoIk* this = THIS;

    if (this->actionMode < 0 || this->actionMode >= ARRAY_COUNT(sActionFuncs) ||
        sActionFuncs[this->actionMode] == NULL) {
        // The main mode is strange
        osSyncPrintf(VT_FGCOL(RED)"メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n"VT_RST);
        return;
    }
    sActionFuncs[this->actionMode](this, globalCtx);
}

void DemoIk_DrawNothing(DemoIk* this, GlobalContext* globalCtx) {
}

void DemoIk_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static DemoIkDrawFunc sDrawFuncs[] = { DemoIk_DrawNothing, DemoIk_Type1Draw, DemoIk_Type2Draw };
    s32 pad;
    DemoIk* this = THIS;

    if (this->drawMode < 0 || this->drawMode >= ARRAY_COUNT(sDrawFuncs) || sDrawFuncs[this->drawMode] == NULL) {
        // The draw mode is strange
        osSyncPrintf(VT_FGCOL(RED)"描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n"VT_RST);
        return;
    }
    sDrawFuncs[this->drawMode](this, globalCtx);
}

const ActorInit Demo_Ik_InitVars = {
    ACTOR_DEMO_IK,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_IK,
    sizeof(DemoIk),
    (ActorFunc)DemoIk_Init,
    (ActorFunc)DemoIk_Destroy,
    (ActorFunc)DemoIk_Update,
    (ActorFunc)DemoIk_Draw,
};

void DemoIk_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    DemoIk* this = THIS;

    if (this->actor.params == 0 || this->actor.params == 1 || this->actor.params == 2) {
        DemoIk_Type1Init(this, globalCtx);
    } else {
        DemoIk_Type2Init(this, globalCtx);
    }
}
