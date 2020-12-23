/*
 * File: z_en_viewer.c
 * Overlay: ovl_En_Viewer
 * Description: Cutscene Actors
 */

#include "z_en_viewer.h"

#define FLAGS 0x00000010

#define THIS ((EnViewer*)thisx)

void EnViewer_Init(Actor* thisx, GlobalContext* globalCtx);
void EnViewer_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnViewer_Update(Actor* thisx, GlobalContext* globalCtx);
void EnViewer_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B2A300(EnViewer* this, GlobalContext* globalCtx, FlexSkeletonHeader* skeletonHeaderSeg,
                   AnimationHeader* animationSeg);
void func_80B2A448(EnViewer* this, GlobalContext* globalCtx, FlexSkeletonHeader* skeletonHeaderSeg,
                   AnimationHeader* animationSeg);
void func_80B2A4D8(EnViewer* this, GlobalContext* globalCtx, SkeletonHeader* skeletonHeaderSeg,
                   AnimationHeader* animationSeg);

void func_80B2A570(EnViewer* this, GlobalContext* globalCtx);
void func_80B2A75C(EnViewer* this, GlobalContext* globalCtx);
void func_80B2B4A8(EnViewer* this, GlobalContext* globalCtx);
void func_80B2B8FC(EnViewer* this, GlobalContext* globalCtx);
void func_80B2BA38(EnViewer* this, GlobalContext* globalCtx);
void func_80B2C130(EnViewer* this, GlobalContext* globalCtx);

// EnViewer_OverrideLimbDraw
s32 func_80B2B2F4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
s32 func_80B2B928(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
s32 func_80B2C10C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);

// EnViewer_PostLimbDraw
void func_80B2B364(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx);
void func_80B2B468(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx);
void func_80B2B9A4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx);

void func_80B2C398(EnViewer* this, GlobalContext* globalCtx);
void func_80B2C768(EnViewer* this, GlobalContext* globalCtx, s16 arg2);
void func_80B2C8AC(EnViewer* this, GlobalContext* globalCtx);
void func_80B2CC1C(GlobalContext* globalCtx, EnViewer* this);

extern Mtx D_01000000;
extern Gfx* D_0404D4E0;
extern UNK_TYPE D_06000450;
extern UNK_TYPE D_060005B4;
extern UNK_TYPE D_060008A0;
extern UNK_TYPE D_06000BC8;
extern UNK_TYPE D_06000F54;
extern UNK_TYPE D_06001410;
extern UNK_TYPE D_060014F4;
extern UNK_TYPE D_06001D28;
extern UNK_TYPE D_06002574;
extern UNK_TYPE D_06002650;
extern UNK_TYPE D_06002928;
extern UNK_TYPE D_060029CC;
extern UNK_TYPE D_06002EF0;
extern UNK_TYPE D_06003284;
extern UNK_TYPE D_060032F0;
extern UNK_TYPE D_06003428;
extern UNK_TYPE D_060036F0;
extern UNK_TYPE D_06003858;
extern UNK_TYPE D_06003D84;
extern UNK_TYPE D_06003EF0;
extern UNK_TYPE D_0600420C;
extern UNK_TYPE D_060042F0;
extern UNK_TYPE D_06004534;
extern UNK_TYPE D_060048B0;
extern UNK_TYPE D_060048FC;
extern UNK_TYPE D_06004AA4;
extern UNK_TYPE D_06004EF0;
extern UNK_TYPE D_0600504C;
extern UNK_TYPE D_060050A8;
extern UNK_TYPE D_060052F0;
extern UNK_TYPE D_06007210;
extern UNK_TYPE D_0600A4E0;
extern Gfx* D_0600BE90;
extern Gfx* D_0600C410;
extern Gfx* D_0600D0D8;
extern Gfx* D_0600DE08;
extern Gfx D_0600E1A8[];
extern UNK_TYPE D_0600F178;
extern UNK_TYPE D_0600F378;
extern UNK_TYPE D_0600F578;
extern UNK_TYPE D_0600F778;

typedef struct {
    s16 objId1;
    s16 objId2;
    u8 unk_4;
    u8 unk_5;
    u8 unk_6;
    u8 unk_7;
    u8 unk_8;
    AnimationHeader* unk_C;
    AnimationHeader** unk_10;
} struct_80B2CEE8;

u8 D_80B2CEC0[] = { 0x00, 0x00, 0x00, 0x00 };

const ActorInit En_Viewer_InitVars = {
    ACTOR_EN_VIEWER,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnViewer),
    (ActorFunc)EnViewer_Init,
    (ActorFunc)EnViewer_Destroy,
    (ActorFunc)EnViewer_Update,
    (ActorFunc)EnViewer_Draw,
};

// static InitChainEntry sInitChain
InitChainEntry D_80B2CEE4[] = {
    ICHAIN_F32(uncullZoneScale, 300, ICHAIN_STOP),
};

struct_80B2CEE8 D_80B2CEE8[] = {
    { OBJECT_HORSE_ZELDA, OBJECT_HORSE_ZELDA, 0x01, 0x00, 0x02, 0x14, 0x01, 0x06006B2C, 0x06007148 },
    { OBJECT_IM, OBJECT_OPENING_DEMO1, 0x01, 0x00, 0x00, 0x0A, 0x03, 0x0600F788, 0x060029CC },
    { OBJECT_ZL4, OBJECT_OPENING_DEMO1, 0x01, 0x00, 0x00, 0x0A, 0x02, 0x0600E038, 0x06000450 },
    { OBJECT_GNDD, OBJECT_GNDD, 0x01, 0xFA, 0x00, 0x0A, 0x00, 0x060119E8, 0x06002928 },
    { OBJECT_HORSE_GANON, OBJECT_HORSE_GANON, 0x01, 0x00, 0x02, 0x14, 0x01, 0x06008668, 0x06003858 },
    { OBJECT_GNDD, OBJECT_GNDD, 0x01, 0xFA, 0x00, 0x0A, 0x00, 0x060119E8, 0x060005B4 },
    { OBJECT_HORSE_GANON, OBJECT_HORSE_GANON, 0x01, 0x00, 0x02, 0x14, 0x01, 0x06008668, 0x06002650 },
    { OBJECT_GNDD, OBJECT_GNDD, 0x01, 0xFA, 0x00, 0x0A, 0x00, 0x060119E8, 0x06004260 },
    { OBJECT_GNDD, OBJECT_GNDD, 0x01, 0xFA, 0x00, 0x0A, 0x00, 0x060119E8, 0x060050A8 },
    { OBJECT_GANON, OBJECT_GANON, 0x01, 0xFA, 0x00, 0x0A, 0x00, 0x060114E8, 0x06011348 }
};

void* D_80B2CFB0[] = { func_80B2A300, func_80B2A4D8, func_80B2A300, func_80B2A448 };
void* D_80B2CFC0[] = { NULL, ActorShadow_DrawFunc_Circle, ActorShadow_DrawFunc_Squiggly };
s32 D_80B2CFCC[] = { 0x00000000 };
Vec3f D_80B2CFD0 = { 0.0f, 0.0f, 0.0f };
EnViewerDrawFunc D_80B2CFDC[] = { func_80B2B4A8, func_80B2B8FC, func_80B2BA38, func_80B2C130 };
s32 D_80B2CFEC[] = { 0x00000000 };

void* D_80B2D440[2];
Vec3f D_80B2D448;

void EnViewer_SetupAction(EnViewer* this, EnViewerActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnViewer_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnViewer* this = THIS;
    u8 params;

    Actor_ProcessInitChain(&this->actor, D_80B2CEE4);
    EnViewer_SetupAction(this, func_80B2A570);
    D_80B2CEC0[0] = 0;
    params = this->actor.params >> 8;
    this->unk_1E4 = 0;
    this->unk_1E5 = 0;
    this->unk_1E6 = 0;
    if (params == 3 || params == 5 || params == 7 || params == 8 || params == 9) {
        D_80B2D440[0] = Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_GANON_MANT, 0.0f,
                                           0.0f, 0.0f, 0, 0, 0, 35);
    }
}

void EnViewer_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnViewer* this = THIS;
    func_800A6888(globalCtx, &this->skin);
}

void func_80B2A300(EnViewer* this, GlobalContext* globalCtx, FlexSkeletonHeader* skeletonHeaderSeg,
                   AnimationHeader* animationSeg) {
    s16 params;
    params = this->actor.params >> 8;

    if (params == 2 || params == 3 || params == 5 || params == 7 || params == 8 || params == 9) {
        SkelAnime_InitFlex(globalCtx, &this->skin.skelAnime, skeletonHeaderSeg, NULL, 0, 0, 0);
    } else {
        SkelAnime_Init(globalCtx, &this->skin.skelAnime, skeletonHeaderSeg, NULL, 0, 0, 0);
    }

    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->animObjBankIndex].segment);

    if (params == 3 || params == 7 || params == 8 || params == 9) {
        SkelAnime_ChangeAnimPlaybackRepeat(&this->skin.skelAnime, animationSeg, 1.0f);
    } else {
        SkelAnime_ChangeAnimPlaybackRepeat(&this->skin.skelAnime, animationSeg, 3.0f);
    }
}

void func_80B2A448(EnViewer* this, GlobalContext* globalCtx, FlexSkeletonHeader* skeletonHeaderSeg,
                   AnimationHeader* animationSeg) {
    SkelAnime_InitFlex(globalCtx, &this->skin.skelAnime, skeletonHeaderSeg, NULL, 0, 0, 0);
    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->animObjBankIndex].segment);
    SkelAnime_ChangeAnimPlaybackRepeat(&this->skin.skelAnime, animationSeg, 3.0f);
}

void func_80B2A4D8(EnViewer* this, GlobalContext* globalCtx, SkeletonHeader* skeletonHeaderSeg,
                   AnimationHeader* animationSeg) {
    u8 params;

    func_800A663C(globalCtx, &this->skin, skeletonHeaderSeg, animationSeg);
    params = this->actor.params >> 8;
    if (!(params == 3 || params == 4 || params == 7 || params == 8 || params == 9)) {
        SkelAnime_ChangeAnimPlaybackRepeat(&this->skin.skelAnime, animationSeg, 3.0f);
    } else {
        SkelAnime_ChangeAnimPlaybackStop(&this->skin.skelAnime, animationSeg, 1.0f);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2A570.s")
// void func_80B2A570(EnViewer *this, GlobalContext *globalCtx) {
//     ObjectContext *objectCtx;
//     f32 temp_f4;
//     f32 temp_f6;
//     s32 temp_v0;
//     u8 temp_t0;
//     u8 temp_t1;
//     u8 temp_t5;
//     struct_80B2CEE8* temp_s1;
//     f32 phi_f6;
//     f32 phi_f4;

//     temp_s1 = &D_80B2CEE8[this->actor.params >> 8];
//     objectCtx = &globalCtx->objectCtx;
//     temp_v0 = Object_GetIndex(objectCtx, temp_s1->objId1);
//     if (temp_v0 < 0) {
//         __assert("bank_ID >= 0", "../z_en_viewer.c", 576);
//     }

//     this->unk_1DC = Object_GetIndex(objectCtx, temp_s1->objId2);
//     if ((s32) (s8) this->unk_1DC < 0) {
//         __assert("this->anime_bank_ID >= 0", "../z_en_viewer.c", 579);
//     }

//     if (Object_IsLoaded(objectCtx, temp_v0) == 0 || !Object_IsLoaded(objectCtx, (s32) (s8) this->unk_1DC)) {
//         this->actor.flags = this->actor.flags & ~0x40;
//         return;
//     }

//     this->unk_1E6 = 1;
//     this->actor.objBankIndex = (s8) temp_v0;
//     Actor_SetObjectDependency(globalCtx, &this->actor);
//     temp_t5 = temp_s1->unk_4;
//     temp_f6 = (f32) temp_t5;
//     phi_f6 = temp_f6;
//     if ((s32) temp_t5 < 0) {
//         phi_f6 = temp_f6 + 4294967296.0f;
//     }
//     Actor_SetScale(&this->actor, phi_f6 / 100.0f);
//     temp_t0 = temp_s1->unk_7;
//     temp_f4 = (f32) temp_t0;
//     phi_f4 = temp_f4;
//     if ((s32) temp_t0 < 0) {
//         phi_f4 = temp_f4 + 4294967296.0f;
//     }

//     ActorShape_Init(&this->actor.shape, (f32) (temp_s1->unk_5 * 0x64), D_80B2CFC0[temp_s1->unk_6], phi_f4);
//     temp_t1 = temp_s1->unk_8;
//     this->unk1DD = temp_t1;
//     D_80B2CFB0[temp_t1 & 0xFF](this, globalCtx, temp_s1->unk_C, temp_s1->unk_10);
//     EnViewer_SetupAction(this, func_80B2A75C);
// }

// This is the big one
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2A75C.s")

void EnViewer_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnViewer* this = THIS;
    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->animObjBankIndex].segment);
    this->actionFunc(this, globalCtx);
}

s32 func_80B2B2F4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    if (gSaveContext.sceneSetupIndex == 4) {
        if (globalCtx->csCtx.frames >= 400 && limbIndex == 5) {
            *dList = D_0600E1A8;
        }
    } else {
        if (globalCtx->csCtx.frames >= 1510 && globalCtx->csCtx.frames < 1651 && limbIndex == 5) {
            *dList = D_0600E1A8;
        }
    }
    return 0;
}

void func_80B2B364(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    if (limbIndex == 11) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1365);
        func_80093D84(globalCtx->state.gfxCtx);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1370),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(&D_0600BE90));
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1372);
    }
}

void func_80B2B468(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    if (limbIndex == 15) {
        Matrix_MultVec3f(&D_80B2CFD0, &D_80B2D448);
    }
}

void func_80B2B4A8(EnViewer* this, GlobalContext* globalCtx) {
    s16 frames;
    s16 params;

    frames = 0;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1405);
    params = this->actor.params >> 8;
    if ((params == 3) || (params == 5) || (params == 7) || (params == 8)) {
        if (gSaveContext.sceneSetupIndex != 4) {
            frames = 149;
        }

        if (frames + 1127 >= globalCtx->csCtx.frames) {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&D_0600F178));
            gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&D_0600F178));

        } else if (frames + 1128 >= globalCtx->csCtx.frames) {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&D_0600F378));
            gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&D_0600F378));

        } else if (frames + 1129 >= globalCtx->csCtx.frames) {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&D_0600F578));
            gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&D_0600F578));

        } else {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&D_0600F778));
            gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&D_0600F778));
        }
    } else if (params == 9) {
        gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&D_0600A4E0));
    }

    if (params == 9) {
        SkelAnime_DrawFlexOpa(globalCtx, this->skin.skelAnime.skeleton, this->skin.skelAnime.limbDrawTbl,
                              this->skin.skelAnime.dListCount, 0, func_80B2B364, this);
    } else if (params == 3) {
        SkelAnime_DrawFlexOpa(globalCtx, this->skin.skelAnime.skeleton, this->skin.skelAnime.limbDrawTbl,
                              this->skin.skelAnime.dListCount, func_80B2B2F4, func_80B2B468, this);
        func_80B2CC1C(globalCtx, this);
    } else if ((params == 3) || (params == 5) || (params == 7) || (params == 8)) {
        if ((globalCtx->csCtx.state != 0) && (globalCtx->csCtx.npcActions[1] != NULL)) {
            SkelAnime_DrawFlexOpa(globalCtx, this->skin.skelAnime.skeleton, this->skin.skelAnime.limbDrawTbl,
                                  this->skin.skelAnime.dListCount, 0, func_80B2B468, this);
            func_80B2CC1C(globalCtx, this);
        }
    } else {
        SkelAnime_DrawOpa(globalCtx, this->skin.skelAnime.skeleton, this->skin.skelAnime.limbDrawTbl, NULL, 0, this);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1511);
}

void func_80B2B8FC(EnViewer* this, GlobalContext* globalCtx) {
    func_800A6330(&this->actor, globalCtx, &this->skin, NULL, 1);
}

s32 func_80B2B928(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    if (globalCtx->sceneNum == SCENE_SPOT00) {
        if (limbIndex == 2) {
            *dList = &D_0600C410;
        }
        if (limbIndex == 7) {
            *dList = NULL;
        }
        if (limbIndex == 8) {
            *dList = NULL;
        }
        if (limbIndex == 9) {
            *dList = NULL;
        }
        if (limbIndex == 3) {
            *dList = NULL;
        }
        if (limbIndex == 5) {
            *dList = NULL;
        }
    }
    return 0;
}

void func_80B2B9A4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    s32 pad;
    if (globalCtx->sceneNum == SCENE_TOKINOMA && limbIndex == 16) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1568);
        gSPDisplayList(POLY_OPA_DISP++, &D_0600DE08);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1570);
    }
}

void func_80B2BA38(EnViewer* this, GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1583);
    if (globalCtx->sceneNum == SCENE_SPOT00) {
        if (globalCtx->csCtx.frames < 771) {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&D_060042F0));
            gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&D_06003EF0));
        } else if (globalCtx->csCtx.frames < 772) {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&D_06002EF0));
            gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&D_06002EF0));
        } else if (globalCtx->csCtx.frames < 773) {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&D_060032F0));
            gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&D_060032F0));
        } else if (globalCtx->csCtx.frames < 791) {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&D_060036F0));
            gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&D_060036F0));
        } else if (globalCtx->csCtx.frames < 792) {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&D_06002EF0));
            gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&D_06002EF0));
        } else if (globalCtx->csCtx.frames < 793) {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&D_060032F0));
            gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&D_060032F0));
        } else {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&D_060042F0));
            gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&D_06003EF0));
        }

        if (gSaveContext.sceneSetupIndex == 6) {
            gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(&D_060052F0));
        } else {
            if (globalCtx->csCtx.frames < 758) {
                gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(&D_06004EF0));
            } else if (globalCtx->csCtx.frames < 848) {
                gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(&D_060052F0));
            } else {
                gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(&D_06004EF0));
            }
        }
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&D_060032F0));
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&D_060032F0));
        gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(&D_06004EF0));
    }
    SkelAnime_DrawFlexOpa(globalCtx, this->skin.skelAnime.skeleton, this->skin.skelAnime.limbDrawTbl,
                          this->skin.skelAnime.dListCount, func_80B2B928, func_80B2B9A4, this);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1690);
}

s32 func_80B2C10C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    if (limbIndex == 16) {
        *dList = &D_0600D0D8;
    }
    return 0;
}

void func_80B2C130(EnViewer* this, GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1717);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&D_06007210));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&D_06007210));
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0x0C, &D_80116280[2]);
    SkelAnime_DrawFlexOpa(globalCtx, this->skin.skelAnime.skeleton, this->skin.skelAnime.limbDrawTbl,
                          this->skin.skelAnime.dListCount, func_80B2C10C, 0, this);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1740);
}

void EnViewer_Draw(Actor* thisx, GlobalContext *globalCtx) {
    EnViewer* this = THIS;
    s32 pad;
    s16 params;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1760);
    
    if (this->unk_1E6 != 0) {
        params = this->actor.params >> 8;
        if (params < 3) {
            if ((globalCtx->csCtx.state != 0) && (globalCtx->csCtx.npcActions[0] != NULL)) {
                func_80093D18(globalCtx->state.gfxCtx);
                D_80B2CFDC[this->unk_1DD](this, globalCtx);
            }
        } else if (((globalCtx->csCtx.state != 0) && (globalCtx->csCtx.npcActions[1] != NULL)) || params == 9) {
            func_80093D18(globalCtx->state.gfxCtx);
            D_80B2CFDC[this->unk_1DD](this, globalCtx);
        } 
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1784);
}

// EnElf_GetCutsceneNextPos
void func_80B2C398(EnViewer *this, GlobalContext *globalCtx) {
    Vec3f startPos;
    Vec3f endPos;
    f32 interpolated;
    s16 params;
    s16 yaw;

    params = this->actor.params >> 8;
    if (params < 3) {
        if (globalCtx->csCtx.state != 0 && globalCtx->csCtx.npcActions[0] != NULL && globalCtx->csCtx.frames < globalCtx->csCtx.npcActions[0]->endFrame) {
            if (params == 0) {
                if (D_80B2CEC0[0] == 0) {
                    D_80B2CEC0[0] = 1;
                    Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                }
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_HORSE_RUN_LEVEL - SFX_FLAG);
            }
            startPos.x = globalCtx->csCtx.npcActions[0]->startPos.x;
            startPos.y = globalCtx->csCtx.npcActions[0]->startPos.y;
            startPos.z = globalCtx->csCtx.npcActions[0]->startPos.z;
            endPos.x = globalCtx->csCtx.npcActions[0]->endPos.x;
            endPos.y = globalCtx->csCtx.npcActions[0]->endPos.y;
            endPos.z = globalCtx->csCtx.npcActions[0]->endPos.z;

            interpolated = func_8006F93C(globalCtx->csCtx.npcActions[0]->endFrame, globalCtx->csCtx.npcActions[0]->startFrame, globalCtx->csCtx.frames);
            this->actor.posRot.pos.x = ((endPos.x - startPos.x) * interpolated) + startPos.x;
            this->actor.posRot.pos.y = ((endPos.y - startPos.y) * interpolated) + startPos.y;
            this->actor.posRot.pos.z = ((endPos.z - startPos.z) * interpolated) + startPos.z;
            return;
        }
    } else {
        if (globalCtx->csCtx.state != 0 && globalCtx->csCtx.npcActions[1] != NULL && globalCtx->csCtx.frames < globalCtx->csCtx.npcActions[1]->endFrame) {
            startPos.x = globalCtx->csCtx.npcActions[1]->startPos.x;
            startPos.y = globalCtx->csCtx.npcActions[1]->startPos.y;
            startPos.z = globalCtx->csCtx.npcActions[1]->startPos.z;
            endPos.x = globalCtx->csCtx.npcActions[1]->endPos.x;
            endPos.y = globalCtx->csCtx.npcActions[1]->endPos.y;
            endPos.z = globalCtx->csCtx.npcActions[1]->endPos.z;
            interpolated = func_8006F93C(globalCtx->csCtx.npcActions[1]->endFrame, globalCtx->csCtx.npcActions[1]->startFrame, globalCtx->csCtx.frames);
            this->actor.posRot.pos.x = ((endPos.x - startPos.x) * interpolated) + startPos.x;
            this->actor.posRot.pos.y = ((endPos.y - startPos.y) * interpolated) + startPos.y;
            this->actor.posRot.pos.z = ((endPos.z - startPos.z) * interpolated) + startPos.z;

            if (globalCtx->csCtx.npcActions[1]->action == 12) {
                yaw = Math_Vec3f_Yaw(&startPos, &endPos);
                Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, yaw, 10, 1000, 1);
                Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, yaw, 10, 1000, 1);
            }

            if (params == 9) {
                this->actor.posRot.rot.x = globalCtx->csCtx.npcActions[1]->urot.x;
                this->actor.posRot.rot.y = globalCtx->csCtx.npcActions[1]->urot.y;
                this->actor.posRot.rot.z = globalCtx->csCtx.npcActions[1]->urot.z;
                this->actor.shape.rot.x = globalCtx->csCtx.npcActions[1]->urot.x;
                this->actor.shape.rot.y = globalCtx->csCtx.npcActions[1]->urot.y;
                this->actor.shape.rot.z = globalCtx->csCtx.npcActions[1]->urot.z;
            }
        }
        if (params == 5) {
            Audio_PlaySoundGeneral(NA_SE_EV_BURNING - SFX_FLAG, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            func_80B2C8AC(this, globalCtx);
        }
    }
}

void func_80B2C768(EnViewer *this, GlobalContext *globalCtx, s16 arg2) {
    EnViewerUnkStruct *unkStruct;

    if ((arg2 % 2) == 0) {
        unkStruct = &(this->unk_1E8[arg2]);
        unkStruct->unk_0.x = 100.0f;
        unkStruct->unk_0.y = -420.0f; 
        unkStruct->unk_0.z = 400.0f; 
        unkStruct->unk_C.x = 100.0f; 
        unkStruct->unk_C.y = -420.0f; 
        unkStruct->unk_C.z = -400.0f; 
        unkStruct->unk_24.y = (((Math_Rand_ZeroOne() * 5.0f) + 12.0f) * 0.001f);
    } else {
        unkStruct = &(this->unk_1E8[arg2]);
        unkStruct->unk_0.x = -100.0f;
        unkStruct->unk_0.y = -420.0f;
        unkStruct->unk_0.z = 400.0f;
        unkStruct->unk_C.x = -100.0f;
        unkStruct->unk_C.y = -420.0f;
        unkStruct->unk_C.z = -400.0f;
        unkStruct->unk_24.y =  (((Math_Rand_ZeroOne() * 5.0f) + 12.0f) * 0.001f);
    }
    if(this) {}
}

#ifdef NON_MATCHING
void func_80B2C8AC(EnViewer *this, GlobalContext *globalCtx) {
    s32 pad;
    s16 i;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1941);
    for(i=0;i<20;i++) {
        switch(this->unk_1E8[i].unk_30) {
            case 0:
                func_80B2C768(this, globalCtx, i);
                this->unk_1E8[i].unk_24.z = (i >> 1) * 0.1f;
                this->unk_1E8[i].unk_24.x = 0.01f;
                this->unk_1E8[i].unk_30++;
                break;
            case 1:
                Math_SmoothScaleMaxMinF(&this->unk_1E8[i].unk_24.z, 1.0f, 1.0f, this->unk_1E8[i].unk_24.x, this->unk_1E8[i].unk_24.x);
                this->unk_1E8[i].unk_18.x = this->unk_1E8[i].unk_24.z * (this->unk_1E8[i].unk_C.x - this->unk_1E8[i].unk_0.x) + this->unk_1E8[i].unk_0.x;
                this->unk_1E8[i].unk_18.y = this->unk_1E8[i].unk_24.z * (this->unk_1E8[i].unk_C.y - this->unk_1E8[i].unk_0.y) + this->unk_1E8[i].unk_0.y;
                this->unk_1E8[i].unk_18.z = this->unk_1E8[i].unk_24.z * (this->unk_1E8[i].unk_C.z - this->unk_1E8[i].unk_0.z) + this->unk_1E8[i].unk_0.z;
                if (this->unk_1E8[i].unk_24.z >= 1.0f) {
                    this->unk_1E8[i].unk_30++;
                }
                break;
            case 2:
                func_80B2C768(this, globalCtx, i);
                this->unk_1E8[i].unk_24.z = 0.0f;
                this->unk_1E8[i].unk_24.x = 0.01f;
                this->unk_1E8[i].unk_30--;
                break;
        }

        func_80093D84(globalCtx->state.gfxCtx);
        Matrix_Translate(this->unk_1E8[i].unk_18.x, this->unk_1E8[i].unk_18.y, this->unk_1E8[i].unk_18.z, MTXMODE_NEW);
        Matrix_Scale(this->unk_1E8[i].unk_24.y, this->unk_1E8[i].unk_24.y, this->unk_1E8[i].unk_24.y, MTXMODE_APPLY);

        gSPSegment(POLY_XLU_DISP++, 0x08, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 64, 1, 0, ((((i * 4) + i) * 2) - (globalCtx->state.frames * 20)) & 0x1FF, 32, 128));
        gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 255, 255, 170, 255);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 50, 00, 255);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_viewer.c", 2027), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPMatrix(POLY_XLU_DISP++, &D_01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, &D_0404D4E0);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 2034);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2C8AC.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2CC1C.s")
