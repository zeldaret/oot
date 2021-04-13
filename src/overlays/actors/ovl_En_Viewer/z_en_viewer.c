/*
 * File: z_en_viewer.c
 * Overlay: ovl_En_Viewer
 * Description: Cutscene Actors
 */

#include "z_en_viewer.h"
#include "overlays/actors/ovl_En_Ganon_Mant/z_en_ganon_mant.h"
#include "objects/object_zl4/object_zl4.h"
#include "objects/gameplay_keep/gameplay_keep.h"
#include "objects/object_horse_zelda/object_horse_zelda.h"
#include "objects/object_horse_ganon/object_horse_ganon.h"

#define FLAGS 0x00000010

#define THIS ((EnViewer*)thisx)

void EnViewer_Init(Actor* thisx, GlobalContext* globalCtx);
void EnViewer_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnViewer_Update(Actor* thisx, GlobalContext* globalCtx);
void EnViewer_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnViewer_GetCutsceneNextPos(EnViewer* this, GlobalContext* globalCtx);
void func_80B2C8AC(EnViewer* this2, GlobalContext* globalCtx);
void func_80B2CC1C(GlobalContext* globalCtx, EnViewer* this);
void func_80B2A570(EnViewer* this, GlobalContext* globalCtx);
void func_80B2A75C(EnViewer* this, GlobalContext* globalCtx);

// sAnimFuncs
void func_80B2A300(EnViewer* this, GlobalContext* globalCtx, void* skeletonHeaderSeg, AnimationHeader* animationSeg);
void func_80B2A448(EnViewer* this, GlobalContext* globalCtx, void* skeletonHeaderSeg, AnimationHeader* animationSeg);
void func_80B2A4D8(EnViewer* this, GlobalContext* globalCtx, void* skeletonHeaderSeg, AnimationHeader* animationSeg);

// sDrawFuncs
void func_80B2B4A8(EnViewer* this, GlobalContext* globalCtx);
void func_80B2B8FC(EnViewer* this, GlobalContext* globalCtx);
void func_80B2BA38(EnViewer* this, GlobalContext* globalCtx);
void func_80B2C130(EnViewer* this, GlobalContext* globalCtx);

extern Mtx D_01000000;
extern AnimationHeader D_06000450;
extern AnimationHeader D_060005B4;
extern AnimationHeader D_060008A0;
extern AnimationHeader D_06000BC8;
extern AnimationHeader D_06000F54;
extern AnimationHeader D_06001410;
extern AnimationHeader D_060014F4;
extern AnimationHeader D_06001D28;
extern AnimationHeader D_06002574;
extern AnimationHeader D_06002928;
extern AnimationHeader D_060029CC;
extern AnimationHeader D_06003284;
extern AnimationHeader D_06003428;
extern AnimationHeader D_06003D84;
extern AnimationHeader D_0600420C;
extern AnimationHeader D_06004260;
extern AnimationHeader D_06004534;
extern AnimationHeader D_060048B0;
extern AnimationHeader D_060048FC;
extern AnimationHeader D_0600504C;
extern AnimationHeader D_060050A8;
extern UNK_TYPE D_06007210;
extern UNK_TYPE D_0600A4E0;
extern Gfx D_0600BE90[];
extern Gfx D_0600D0D8[];
extern Gfx D_0600E1A8[];
extern UNK_TYPE D_0600F178;
extern UNK_TYPE D_0600F378;
extern UNK_TYPE D_0600F578;
extern UNK_TYPE D_0600F778;
extern FlexSkeletonHeader D_0600F788;
extern AnimationHeader D_06011348;
extern FlexSkeletonHeader D_060114E8;
extern FlexSkeletonHeader D_060119E8;

u8 D_80B2CEC0 = false;

const ActorInit En_Viewer_InitVars = {
    ACTOR_EN_VIEWER,
    ACTORCAT_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnViewer),
    (ActorFunc)EnViewer_Init,
    (ActorFunc)EnViewer_Destroy,
    (ActorFunc)EnViewer_Update,
    (ActorFunc)EnViewer_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneScale, 300, ICHAIN_STOP),
};

struct_80B2CEE8 D_80B2CEE8[] = {
    { OBJECT_HORSE_ZELDA, OBJECT_HORSE_ZELDA, 1, 0, 2, 20, 1, &gHorseZeldaSkel, &gHorseZeldaGallopingAnim },
    { OBJECT_IM, OBJECT_OPENING_DEMO1, 1, 0, 0, 10, 3, &D_0600F788, &D_060029CC },
    { OBJECT_ZL4, OBJECT_OPENING_DEMO1, 1, 0, 0, 10, 2, &gChildZeldaSkel, &D_06000450 },
    { OBJECT_GNDD, OBJECT_GNDD, 1, -6, 0, 10, 0, &D_060119E8, &D_06002928 },
    { OBJECT_HORSE_GANON, OBJECT_HORSE_GANON, 1, 0, 2, 20, 1, &gHorseGanonSkel, &gHorseGanonRearingAnim },
    { OBJECT_GNDD, OBJECT_GNDD, 1, -6, 0, 10, 0, &D_060119E8, &D_060005B4 },
    { OBJECT_HORSE_GANON, OBJECT_HORSE_GANON, 1, 0, 2, 20, 1, &gHorseGanonSkel, &gHorseGanonGallopingAnim },
    { OBJECT_GNDD, OBJECT_GNDD, 1, -6, 0, 10, 0, &D_060119E8, &D_06004260 },
    { OBJECT_GNDD, OBJECT_GNDD, 1, -6, 0, 10, 0, &D_060119E8, &D_060050A8 },
    { OBJECT_GANON, OBJECT_GANON, 1, -6, 0, 10, 0, &D_060114E8, &D_06011348 },
};

EnViewerAnimFunc sAnimFuncs[] = {
    func_80B2A300,
    func_80B2A4D8,
    func_80B2A300,
    func_80B2A448,
};

static void* sActorShadowDrawFunc[] = {
    NULL,
    ActorShadow_DrawCircle,
    ActorShadow_DrawHorse,
};

// timer
s16 D_80B2CFCC = 0;

Vec3f D_80B2CFD0 = { 0.0f, 0.0f, 0.0f };

static EnViewerDrawFunc sDrawFuncs[] = {
    func_80B2B4A8,
    func_80B2B8FC,
    func_80B2BA38,
    func_80B2C130,
};

// angl

EnGanonMant* sGanonCape;

Vec3f D_80B2D448;

void EnViewer_SetupAction(EnViewer* this, EnViewerActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnViewer_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnViewer* this = THIS;
    u8 params;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    EnViewer_SetupAction(this, func_80B2A570);
    D_80B2CEC0 = false;
    params = this->actor.params >> 8;
    this->unused = 0;
    this->unk_1E5 = 0;
    this->unk_1E6 = false;
    if (params == 3 || params == 5 || params == 7 || params == 8 || params == 9) {
        sGanonCape = (EnGanonMant*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx,
                                                      ACTOR_EN_GANON_MANT, 0.0f, 0.0f, 0.0f, 0, 0, 0, 35);
    }
}

void EnViewer_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnViewer* this = THIS;
    func_800A6888(globalCtx, &this->skin);
}

void func_80B2A300(EnViewer* this, GlobalContext* globalCtx, void* skeletonHeaderSeg, AnimationHeader* animationSeg) {
    s16 params = this->actor.params >> 8;

    if (params == 2 || params == 3 || params == 5 || params == 7 || params == 8 || params == 9) {
        SkelAnime_InitFlex(globalCtx, &this->skin.skelAnime, skeletonHeaderSeg, NULL, NULL, NULL, 0);
    } else {
        SkelAnime_Init(globalCtx, &this->skin.skelAnime, skeletonHeaderSeg, NULL, NULL, NULL, 0);
    }

    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->animObjBankIndex].segment);
    if (params == 3 || params == 7 || params == 8 || params == 9) {
        Animation_PlayLoopSetSpeed(&this->skin.skelAnime, animationSeg, 1.0f);
    } else {
        Animation_PlayLoopSetSpeed(&this->skin.skelAnime, animationSeg, 3.0f);
    }
}

void func_80B2A448(EnViewer* this, GlobalContext* globalCtx, void* skeletonHeaderSeg, AnimationHeader* animationSeg) {
    SkelAnime_InitFlex(globalCtx, &this->skin.skelAnime, skeletonHeaderSeg, NULL, NULL, NULL, 0);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->animObjBankIndex].segment);
    Animation_PlayLoopSetSpeed(&this->skin.skelAnime, animationSeg, 3.0f);
}

void func_80B2A4D8(EnViewer* this, GlobalContext* globalCtx, void* skeletonHeaderSeg, AnimationHeader* animationSeg) {
    u8 params;

    func_800A663C(globalCtx, &this->skin, skeletonHeaderSeg, animationSeg);
    params = this->actor.params >> 8;
    if (!(params == 3 || params == 4 || params == 7 || params == 8 || params == 9)) {
        Animation_PlayLoopSetSpeed(&this->skin.skelAnime, animationSeg, 3.0f);
    } else {
        Animation_PlayOnceSetSpeed(&this->skin.skelAnime, animationSeg, 1.0f);
    }
}

void func_80B2A570(EnViewer* this, GlobalContext* globalCtx) {
    struct_80B2CEE8* unkStruct = &D_80B2CEE8[this->actor.params >> 8];
    s32 objIndex = Object_GetIndex(&globalCtx->objectCtx, unkStruct->objId1);

    if (objIndex < 0) {
        __assert("bank_ID >= 0", "../z_en_viewer.c", 576);
    }

    this->animObjBankIndex = Object_GetIndex(&globalCtx->objectCtx, unkStruct->objId2);
    if (this->animObjBankIndex < 0) {
        __assert("this->anime_bank_ID >= 0", "../z_en_viewer.c", 579);
    }

    if (!Object_IsLoaded(&globalCtx->objectCtx, objIndex) ||
        !Object_IsLoaded(&globalCtx->objectCtx, this->animObjBankIndex)) {
        this->actor.flags &= ~0x40;
        return;
    }

    this->unk_1E6 = true;
    this->actor.objBankIndex = objIndex;
    Actor_SetObjectDependency(globalCtx, &this->actor);
    Actor_SetScale(&this->actor, unkStruct->scale / 100.0f);
    ActorShape_Init(&this->actor.shape, unkStruct->unk_5 * 100,
                    sActorShadowDrawFunc[unkStruct->actorShadowDrawFuncIndex], unkStruct->unk_7);
    this->drawFuncIndex = unkStruct->drawFuncIndex;
    sAnimFuncs[this->drawFuncIndex](this, globalCtx, unkStruct->skel, unkStruct->unk_10);
    EnViewer_SetupAction(this, func_80B2A75C);
}

void func_80B2A75C(EnViewer* this, GlobalContext* globalCtx) {
    u8 params = this->actor.params >> 8;
    u16 csFrames;
    s32 animationEnded;
    s16 curFrame;

    if (params == 2) {
        if (gSaveContext.sceneSetupIndex == 5) {
            csFrames = globalCtx->csCtx.frames;
            if (csFrames == 792) {
                Audio_PlayActorSound2(&this->actor, NA_SE_VO_Z0_SURPRISE);
            } else if (csFrames == 845) {
                Audio_PlayActorSound2(&this->actor, NA_SE_VO_Z0_THROW);
            }
        }
    } else if (params == 7) {
        Actor_SetScale(&this->actor, 0.3f);
        this->actor.uncullZoneForward = 10000.0f;
        this->actor.uncullZoneScale = 10000.0f;
        this->actor.uncullZoneDownward = 10000.0f;
    } else if (params == 3) {
        if (gSaveContext.sceneSetupIndex == 4) {
            switch (globalCtx->csCtx.frames) {
                case 20:
                case 59:
                case 71:
                case 129:
                case 140:
                case 219:
                case 280:
                case 320:
                case 380:
                case 409:
                case 438:
                    Audio_PlaySoundGeneral(NA_SE_SY_DEMO_CUT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
        }
        if (gSaveContext.sceneSetupIndex == 5) {
            if (globalCtx->csCtx.frames == 1508) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_ST_LAUGH);
            }
            if (globalCtx->csCtx.frames == 1545) {
                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_6K, 32.0f, 101.0f, 1226.0f,
                                   0, 0, 0, 0xC);
            }
        }
        if (globalCtx->csCtx.frames == 1020) {
            Audio_SetBGM(0x1000023);
        }
        if (globalCtx->csCtx.frames == 960) {
            Audio_PlaySoundGeneral(NA_SE_EV_HORSE_GROAN, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
        }
    } else if (params == 6) {
        if (gSaveContext.sceneSetupIndex == 5 || gSaveContext.sceneSetupIndex == 10) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_HORSE_RUN_LEVEL - SFX_FLAG);
        }
    } else if (params == 4) {
        curFrame = this->skin.skelAnime.curFrame;
        if (this->skin.skelAnime.animation == &gHorseGanonRearingAnim) {
            if (curFrame == 8) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_GANON_HORSE_NEIGH);
            }
            if (curFrame == 30) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_HORSE_LAND2);
            }
        } else if (this->skin.skelAnime.animation == &gHorseGanonIdleAnim) {
            if (curFrame == 25) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_HORSE_SANDDUST);
            }
        } else if (this->skin.skelAnime.animation == &gHorseGanonGallopingAnim) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_HORSE_RUN_LEVEL - SFX_FLAG);
        }
    }

    if (D_80B2CFCC != 0) {
        D_80B2CFCC--;
    }

    EnViewer_GetCutsceneNextPos(this, globalCtx);
    Actor_MoveForward(&this->actor);
    animationEnded = SkelAnime_Update(&this->skin.skelAnime);
    if (params == 3 || params == 4) {
        if (globalCtx->csCtx.state != CS_STATE_IDLE && globalCtx->csCtx.npcActions[1] != NULL) {
            if (globalCtx->csCtx.npcActions[1]->action == 2 && D_80B2CFCC == 0) {
                if (params == 3) {
                    if (this->skin.skelAnime.animation != &D_06002928) {
                        Animation_PlayLoopSetSpeed(&this->skin.skelAnime, &D_06002928, 1.0f);
                    }
                } else if (this->skin.skelAnime.animation != &gHorseGanonIdleAnim) {
                    Animation_PlayLoopSetSpeed(&this->skin.skelAnime, &gHorseGanonIdleAnim, 1.0f);
                }
            } else if (globalCtx->csCtx.npcActions[1]->action == 1) {
                D_80B2CFCC = 100;
                if (params == 3) {
                    if (this->skin.skelAnime.animation != &D_06001D28) {
                        Animation_PlayLoopSetSpeed(&this->skin.skelAnime, &D_06001D28, 1.0f);
                    }
                } else if (this->skin.skelAnime.animation != &gHorseGanonRearingAnim) {
                    Animation_PlayLoopSetSpeed(&this->skin.skelAnime, &gHorseGanonRearingAnim, 1.0f);
                }
            } else if (params == 3) {
                switch (this->unk_1E5) {
                    case 0:
                        if (globalCtx->csCtx.npcActions[1]->action == 4) {
                            Animation_MorphToPlayOnce(&this->skin.skelAnime, &D_06000F54, -5.0f);
                            this->unk_1E5++;
                        }
                        break;
                    case 1:
                        if (animationEnded) {
                            Animation_MorphToLoop(&this->skin.skelAnime, &D_060014F4, -5.0f);
                            this->unk_1E5++;
                        }
                        break;
                    case 2:
                        if (globalCtx->csCtx.npcActions[1]->action == 5) {
                            Animation_MorphToPlayOnce(&this->skin.skelAnime, &D_060008A0, -5.0f);
                            this->unk_1E5++;
                        }
                        break;
                    case 3:
                        if (animationEnded) {
                            Animation_MorphToLoop(&this->skin.skelAnime, &D_06000BC8, -5.0f);
                            this->unk_1E5++;
                        }
                        break;
                    case 4:
                        if (globalCtx->csCtx.npcActions[1]->action == 11) {
                            Animation_MorphToLoop(&this->skin.skelAnime, &D_060014F4, -20.0f);
                            this->unk_1E5++;
                        }
                        break;
                    case 5:
                        if (globalCtx->csCtx.npcActions[1]->action == 8) {
                            Animation_MorphToLoop(&this->skin.skelAnime, &D_06002928, -15.0f);
                            this->unk_1E5++;
                        }
                        break;
                    case 6:
                        if (globalCtx->csCtx.npcActions[1]->action == 12) {
                            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_VOICE_DEMO);
                            Animation_PlayLoopSetSpeed(&this->skin.skelAnime, &D_060005B4, 3.0f);
                            this->unk_1E5++;
                        }
                        break;
                    case 7:
                        this->unk_1E5 = 0;
                        break;
                }
            } else if (this->skin.skelAnime.animation != &gHorseGanonGallopingAnim &&
                       globalCtx->csCtx.npcActions[1]->action == 12) {
                Animation_PlayLoopSetSpeed(&this->skin.skelAnime, &gHorseGanonGallopingAnim, 3.0f);
            }
        }
    } else if (params == 1) {
        if (gSaveContext.sceneSetupIndex == 5) {
            if (globalCtx->csCtx.frames == 845) {
                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_ITEM_OCARINA, 4.0f, 81.0f,
                                   2600.0f, 0, 0, 0, 0);
            }
        } else {
            if (globalCtx->csCtx.frames == 195) {
                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_ITEM_OCARINA, 4.0f, 81.0f,
                                   2035.0f, 0, 0, 0, 1);
            }
        }
        switch (this->unk_1E5) {
            case 0:
                if (globalCtx->csCtx.state != CS_STATE_IDLE && globalCtx->csCtx.npcActions[0] != NULL &&
                    globalCtx->csCtx.npcActions[0]->action == 6 && this->skin.skelAnime.animation != &D_06002574) {
                    Animation_PlayLoopSetSpeed(&this->skin.skelAnime, &D_06002574, 1.5f);
                    this->unk_1E5++;
                }
                break;
            case 1:
                if (globalCtx->csCtx.state != CS_STATE_IDLE && globalCtx->csCtx.npcActions[0] != NULL &&
                    globalCtx->csCtx.npcActions[0]->action == 2 && this->skin.skelAnime.animation != &D_060029CC) {
                    Animation_PlayLoopSetSpeed(&this->skin.skelAnime, &D_060029CC, 3.0f);
                    this->unk_1E5++;
                }
                break;
        }
    } else if (params == 2) {
        if (globalCtx->sceneNum == SCENE_SPOT00) { // Hyrule Field
            switch (this->unk_1E5) {
                case 0:
                    if (globalCtx->csCtx.state != CS_STATE_IDLE) {
                        if (globalCtx->csCtx.npcActions[0] != NULL && globalCtx->csCtx.npcActions[0]->action == 6 &&
                            this->skin.skelAnime.animation != &D_06001410) {
                            Animation_PlayLoopSetSpeed(&this->skin.skelAnime, &D_06001410, 1.5f);
                            this->unk_1E5++;
                        }
                    }
                    break;
                case 1:
                    if (globalCtx->csCtx.state != CS_STATE_IDLE) {
                        if (globalCtx->csCtx.npcActions[0] != NULL && globalCtx->csCtx.npcActions[0]->action == 2 &&
                            this->skin.skelAnime.animation != &D_06000450) {
                            Animation_PlayLoopSetSpeed(&this->skin.skelAnime, &D_06000450, 3.0f);
                            this->unk_1E5++;
                        }
                    }
                    break;
            }
        } else {
            func_800F67A0(0);
            switch (this->unk_1E5) {
                case 0:
                    Animation_PlayLoopSetSpeed(&this->skin.skelAnime, &D_0600504C, 1.0f);
                    this->unk_1E5++;
                    break;
                case 1:
                    if (globalCtx->csCtx.npcActions[0]->action == 11) {
                        Animation_MorphToPlayOnce(&this->skin.skelAnime, &D_0600420C, -5.0f);
                        this->unk_1E5++;
                    }
                    break;
                case 2:
                    if (animationEnded) {
                        Animation_MorphToLoop(&this->skin.skelAnime, &D_060048FC, -5.0f);
                        this->unk_1E5++;
                    }
                    break;
                case 3:
                    break;
            }
        }
    } else if (params == 7) {
        switch (this->unk_1E5) {
            case 0:
                if (globalCtx->csCtx.state != CS_STATE_IDLE && globalCtx->csCtx.npcActions[1] != NULL &&
                    globalCtx->csCtx.npcActions[1]->action == 7) {
                    Audio_PlaySoundGeneral(NA_SE_EN_GANON_LAUGH, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    Animation_MorphToPlayOnce(&this->skin.skelAnime, &D_06004534, -5.0f);
                    this->unk_1E5++;
                }
                break;
            case 1:
                if (animationEnded) {
                    Animation_MorphToLoop(&this->skin.skelAnime, &D_060048B0, -5.0f);
                    this->unk_1E5++;
                }
                break;
        }
    } else if (params == 8) {
        switch (this->unk_1E5) {
            default:
                this->unk_1E5 = 0;
                break;
            case 0:
                if (globalCtx->csCtx.state != CS_STATE_IDLE) {
                    if (globalCtx->csCtx.npcActions[1] != NULL && globalCtx->csCtx.npcActions[1]->action == 9) {
                        Animation_PlayLoopSetSpeed(&this->skin.skelAnime, &D_060050A8, 1.0f);
                        this->unk_1E5++;
                    }
                }
                break;
            case 1:
                if (globalCtx->csCtx.npcActions[1]->action == 10) {
                    Animation_MorphToPlayOnce(&this->skin.skelAnime, &D_06003284, -10.0f);
                    this->unk_1E5++;
                }
                break;
            case 2:
                if (animationEnded) {
                    Animation_MorphToLoop(&this->skin.skelAnime, &D_06003D84, -5.0f);
                    this->unk_1E5++;
                }
                break;
            case 3:
                if (globalCtx->csCtx.npcActions[1]->action == 4) {
                    Animation_MorphToPlayOnce(&this->skin.skelAnime, &D_06003428, -5.0f);
                    this->unk_1E5++;
                }
                break;
        }
    }
}

void EnViewer_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnViewer* this = THIS;

    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->animObjBankIndex].segment);
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
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0600BE90));
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1372);
    }
}

void func_80B2B468(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    if (limbIndex == 15) {
        Matrix_MultVec3f(&D_80B2CFD0, &D_80B2D448);
    }
}

void func_80B2B4A8(EnViewer* this, GlobalContext* globalCtx) {
    s16 frames = 0;
    s16 params;

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
        SkelAnime_DrawFlexOpa(globalCtx, this->skin.skelAnime.skeleton, this->skin.skelAnime.jointTable,
                              this->skin.skelAnime.dListCount, 0, func_80B2B364, this);
    } else if (params == 3) {
        SkelAnime_DrawFlexOpa(globalCtx, this->skin.skelAnime.skeleton, this->skin.skelAnime.jointTable,
                              this->skin.skelAnime.dListCount, func_80B2B2F4, func_80B2B468, this);
        func_80B2CC1C(globalCtx, this);
    } else if ((params == 3) || (params == 5) || (params == 7) || (params == 8)) {
        if ((globalCtx->csCtx.state != CS_STATE_IDLE) && (globalCtx->csCtx.npcActions[1] != NULL)) {
            SkelAnime_DrawFlexOpa(globalCtx, this->skin.skelAnime.skeleton, this->skin.skelAnime.jointTable,
                                  this->skin.skelAnime.dListCount, 0, func_80B2B468, this);
            func_80B2CC1C(globalCtx, this);
        }
    } else {
        SkelAnime_DrawOpa(globalCtx, this->skin.skelAnime.skeleton, this->skin.skelAnime.jointTable, NULL, 0, this);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1511);
}

void func_80B2B8FC(EnViewer* this, GlobalContext* globalCtx) {
    func_800A6330(&this->actor, globalCtx, &this->skin, NULL, 1);
}

s32 func_80B2B928(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    if (globalCtx->sceneNum == SCENE_SPOT00) { // Hyrule Field
        if (limbIndex == 2) {
            *dList = gChildZeldaCutsceneDressDL;
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
        gSPDisplayList(POLY_OPA_DISP++, gChildZeldaOcarinaOfTimeDL);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1570);
    }
}

void func_80B2BA38(EnViewer* this, GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1583);
    if (globalCtx->sceneNum == SCENE_SPOT00) { // Hyrule Field
        if (globalCtx->csCtx.frames < 771) {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&gChildZeldaEyeInTex));
            gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&gChildZeldaEyeOutTex));
        } else if (globalCtx->csCtx.frames < 772) {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&gChildZeldaEyeBlinkTex));
            gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&gChildZeldaEyeBlinkTex));
        } else if (globalCtx->csCtx.frames < 773) {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&gChildZeldaEyeShutTex));
            gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&gChildZeldaEyeShutTex));
        } else if (globalCtx->csCtx.frames < 791) {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&gChildZeldaEyeWideTex));
            gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&gChildZeldaEyeWideTex));
        } else if (globalCtx->csCtx.frames < 792) {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&gChildZeldaEyeBlinkTex));
            gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&gChildZeldaEyeBlinkTex));
        } else if (globalCtx->csCtx.frames < 793) {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&gChildZeldaEyeShutTex));
            gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&gChildZeldaEyeShutTex));
        } else {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&gChildZeldaEyeInTex));
            gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&gChildZeldaEyeOutTex));
        }

        if (gSaveContext.sceneSetupIndex == 6) {
            gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(&gChildZeldaMouthSurprisedTex));
        } else {
            if (globalCtx->csCtx.frames < 758) {
                gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(&gChildZeldaMouthWorriedTex));
            } else if (globalCtx->csCtx.frames < 848) {
                gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(&gChildZeldaMouthSurprisedTex));
            } else {
                gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(&gChildZeldaMouthWorriedTex));
            }
        }
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&gChildZeldaEyeShutTex));
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&gChildZeldaEyeShutTex));
        gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(&gChildZeldaMouthWorriedTex));
    }
    SkelAnime_DrawFlexOpa(globalCtx, this->skin.skelAnime.skeleton, this->skin.skelAnime.jointTable,
                          this->skin.skelAnime.dListCount, func_80B2B928, func_80B2B9A4, this);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1690);
}

s32 func_80B2C10C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    if (limbIndex == 16) {
        *dList = D_0600D0D8;
    }
    return 0;
}

void func_80B2C130(EnViewer* this, GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1717);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&D_06007210));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&D_06007210));
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0x0C, &D_80116280[2]);
    SkelAnime_DrawFlexOpa(globalCtx, this->skin.skelAnime.skeleton, this->skin.skelAnime.jointTable,
                          this->skin.skelAnime.dListCount, func_80B2C10C, 0, this);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1740);
}

void EnViewer_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnViewer* this = THIS;
    s32 pad;
    s16 params;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1760);
    if (this->unk_1E6) {
        params = this->actor.params >> 8;
        if (params < 3) {
            if ((globalCtx->csCtx.state != CS_STATE_IDLE) && (globalCtx->csCtx.npcActions[0] != NULL)) {
                func_80093D18(globalCtx->state.gfxCtx);
                sDrawFuncs[this->drawFuncIndex](this, globalCtx);
            }
        } else if (((globalCtx->csCtx.state != CS_STATE_IDLE) && (globalCtx->csCtx.npcActions[1] != NULL)) ||
                   params == 9) {
            func_80093D18(globalCtx->state.gfxCtx);
            sDrawFuncs[this->drawFuncIndex](this, globalCtx);
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1784);
}

void EnViewer_GetCutsceneNextPos(EnViewer* this, GlobalContext* globalCtx) {
    Vec3f startPos;
    Vec3f endPos;
    f32 interpolated;
    s16 params = this->actor.params >> 8;
    s16 yaw;

    if (params < 3) {
        if (globalCtx->csCtx.state != CS_STATE_IDLE && globalCtx->csCtx.npcActions[0] != NULL &&
            globalCtx->csCtx.frames < globalCtx->csCtx.npcActions[0]->endFrame) {
            if (params == 0) {
                if (D_80B2CEC0 == false) {
                    D_80B2CEC0 = true;
                    Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                           &D_801333E8);
                }
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_HORSE_RUN_LEVEL - SFX_FLAG);
            }
            startPos.x = globalCtx->csCtx.npcActions[0]->startPos.x;
            startPos.y = globalCtx->csCtx.npcActions[0]->startPos.y;
            startPos.z = globalCtx->csCtx.npcActions[0]->startPos.z;
            endPos.x = globalCtx->csCtx.npcActions[0]->endPos.x;
            endPos.y = globalCtx->csCtx.npcActions[0]->endPos.y;
            endPos.z = globalCtx->csCtx.npcActions[0]->endPos.z;
            interpolated = func_8006F93C(globalCtx->csCtx.npcActions[0]->endFrame,
                                         globalCtx->csCtx.npcActions[0]->startFrame, globalCtx->csCtx.frames);
            this->actor.world.pos.x = ((endPos.x - startPos.x) * interpolated) + startPos.x;
            this->actor.world.pos.y = ((endPos.y - startPos.y) * interpolated) + startPos.y;
            this->actor.world.pos.z = ((endPos.z - startPos.z) * interpolated) + startPos.z;
        }
    } else {
        if (globalCtx->csCtx.state != CS_STATE_IDLE && globalCtx->csCtx.npcActions[1] != NULL &&
            globalCtx->csCtx.frames < globalCtx->csCtx.npcActions[1]->endFrame) {
            startPos.x = globalCtx->csCtx.npcActions[1]->startPos.x;
            startPos.y = globalCtx->csCtx.npcActions[1]->startPos.y;
            startPos.z = globalCtx->csCtx.npcActions[1]->startPos.z;
            endPos.x = globalCtx->csCtx.npcActions[1]->endPos.x;
            endPos.y = globalCtx->csCtx.npcActions[1]->endPos.y;
            endPos.z = globalCtx->csCtx.npcActions[1]->endPos.z;
            interpolated = func_8006F93C(globalCtx->csCtx.npcActions[1]->endFrame,
                                         globalCtx->csCtx.npcActions[1]->startFrame, globalCtx->csCtx.frames);
            this->actor.world.pos.x = ((endPos.x - startPos.x) * interpolated) + startPos.x;
            this->actor.world.pos.y = ((endPos.y - startPos.y) * interpolated) + startPos.y;
            this->actor.world.pos.z = ((endPos.z - startPos.z) * interpolated) + startPos.z;
            if (globalCtx->csCtx.npcActions[1]->action == 12) {
                yaw = Math_Vec3f_Yaw(&startPos, &endPos);
                Math_SmoothStepToS(&this->actor.world.rot.y, yaw, 10, 1000, 1);
                Math_SmoothStepToS(&this->actor.shape.rot.y, yaw, 10, 1000, 1);
            }

            if (params == 9) {
                this->actor.world.rot.x = globalCtx->csCtx.npcActions[1]->urot.x;
                this->actor.world.rot.y = globalCtx->csCtx.npcActions[1]->urot.y;
                this->actor.world.rot.z = globalCtx->csCtx.npcActions[1]->urot.z;
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

void func_80B2C768(EnViewer* this, GlobalContext* globalCtx, s16 arg2) {
    EnViewerUnkStruct* unkStruct;

    if ((arg2 % 2) == 0) {
        unkStruct = &this->unk_1E8[arg2];
        unkStruct->unk_0.x = 100.0f;
        unkStruct->unk_0.y = -420.0f;
        unkStruct->unk_0.z = 400.0f;
        unkStruct->unk_C.x = 100.0f;
        unkStruct->unk_C.y = -420.0f;
        unkStruct->unk_C.z = -400.0f;
        unkStruct->unk_24.y = ((Rand_ZeroOne() * 5.0f) + 12.0f) * 0.001f;
    } else {
        unkStruct = &this->unk_1E8[arg2];
        unkStruct->unk_0.x = -100.0f;
        unkStruct->unk_0.y = -420.0f;
        unkStruct->unk_0.z = 400.0f;
        unkStruct->unk_C.x = -100.0f;
        unkStruct->unk_C.y = -420.0f;
        unkStruct->unk_C.z = -400.0f;
        unkStruct->unk_24.y = ((Rand_ZeroOne() * 5.0f) + 12.0f) * 0.001f;
    }
    if (this) {}
}

void func_80B2C8AC(EnViewer* this2, GlobalContext* globalCtx) {
    EnViewer* this = this2;
    s16 i;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 1941);
    for (i = 0; i < ARRAY_COUNT(this->unk_1E8); i++) {
        switch (this->unk_1E8[i].state) {
            case 0:
                func_80B2C768(this, globalCtx, i);
                this->unk_1E8[i].unk_24.z = (i >> 1) * 0.1f;
                this->unk_1E8[i].unk_24.x = 0.01f;
                this->unk_1E8[i].state++;
                break;
            case 1:
                Math_SmoothStepToF(&this->unk_1E8[i].unk_24.z, 1.0f, 1.0f, this->unk_1E8[i].unk_24.x,
                                   this->unk_1E8[i].unk_24.x);
                this->unk_1E8[i].unk_18.x =
                    this->unk_1E8[i].unk_0.x +
                    (this->unk_1E8[i].unk_C.x - this->unk_1E8[i].unk_0.x) * this->unk_1E8[i].unk_24.z;
                this->unk_1E8[i].unk_18.y =
                    this->unk_1E8[i].unk_0.y +
                    (this->unk_1E8[i].unk_C.y - this->unk_1E8[i].unk_0.y) * this->unk_1E8[i].unk_24.z;
                this->unk_1E8[i].unk_18.z =
                    this->unk_1E8[i].unk_0.z +
                    (this->unk_1E8[i].unk_C.z - this->unk_1E8[i].unk_0.z) * this->unk_1E8[i].unk_24.z;
                if (this->unk_1E8[i].unk_24.z >= 1.0f) {
                    this->unk_1E8[i].state++;
                }
                break;
            case 2:
                func_80B2C768(this, globalCtx, i);
                this->unk_1E8[i].unk_24.z = 0.0f;
                this->unk_1E8[i].unk_24.x = 0.01f;
                this->unk_1E8[i].state--;
                break;
        }

        func_80093D84(globalCtx->state.gfxCtx);
        Matrix_Translate(this->unk_1E8[i].unk_18.x, this->unk_1E8[i].unk_18.y, this->unk_1E8[i].unk_18.z, MTXMODE_NEW);
        Matrix_Scale(this->unk_1E8[i].unk_24.y, this->unk_1E8[i].unk_24.y, this->unk_1E8[i].unk_24.y, MTXMODE_APPLY);
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 64, 1, 0,
                                    (10 * i - 20 * globalCtx->state.frames) & 0x1FF, 32, 128));
        gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 255, 255, 170, 255);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 50, 00, 255);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_viewer.c", 2027),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPMatrix(POLY_XLU_DISP++, &D_01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, gEffFire1DL);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_viewer.c", 2034);
}

void func_80B2CC1C(GlobalContext* globalCtx, EnViewer* this) {
    static s16 D_80B2CFEC = 0;
    Vec3f vec1;
    Vec3f vec2;

    if (this->actor.params >> 8 == 5) {
        if (1) {}
        sGanonCape->unk_16B0 = BREG(54) / 10.0f;
        sGanonCape->unk_16B4 = (BREG(60) + 25) / 100.0f;
        sGanonCape->unk_16B8 = (BREG(55) - 45) / 10.0f;
        sGanonCape->unk_16AC = -10000.0f;
        sGanonCape->unk_16D0 = 0.0f;
        sGanonCape->unk_16C8 = (BREG(67) - 10) / 10.0f;
        vec1.x = KREG(16) - 13.0f;
        vec1.y = KREG(17) + 3.0f + Math_SinS(D_80B2CFEC) * KREG(20);
        vec1.z = KREG(18) - 10.0f;
        D_80B2CFEC += KREG(19) * 0x1000 + 0x2000;

        Matrix_RotateY((this->actor.shape.rot.y / (f32)0x8000) * M_PI, MTXMODE_NEW);
        Matrix_MultVec3f(&vec1, &vec2);
        sGanonCape->unk_16D4.x = D_80B2D448.x + vec2.x;
        sGanonCape->unk_16D4.y = D_80B2D448.y + vec2.y;
        sGanonCape->unk_16D4.z = D_80B2D448.z + vec2.z;
        vec1.x = -(KREG(16) - 13.0f);
        Matrix_MultVec3f(&vec1, &vec2);
        sGanonCape->unk_16E0.x = D_80B2D448.x + vec2.x;
        sGanonCape->unk_16E0.y = D_80B2D448.y + vec2.y;
        sGanonCape->unk_16E0.z = D_80B2D448.z + vec2.z;
    }
}
