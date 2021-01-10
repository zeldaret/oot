/*
 * File: z_en_horse_game_check.c
 * Overlay: ovl_En_Horse_Game_Check
 * Description: Horseback Minigames
 */

#include "z_en_horse_game_check.h"
// #include "overlays/actors/ovl_En_Horse/z_en_horse.h"
typedef struct {
    Actor actor;
    char unk_14C[0xA4];
    s32 unk_1F0;
    char unk_1F4[0x194];
    s32 unk_388;
    char unk_38C[0x14];
    s32 unk_3A0;
} EnHorse; // Swap this out when EnHorse is merged

#define FLAGS 0x00000010

#define THIS ((EnHorseGameCheckBase*)thisx)
#define IN_SQUARE1(actor)                                                                                      \
    (Math3D_PointInSquare2D(D_80A68464[0], D_80A68464[1], D_80A68464[2], D_80A68464[3], (actor)->posRot.pos.x, \
                            (actor)->posRot.pos.z))
#define IN_SQUARE2(actor)                                                                                      \
    (Math3D_PointInSquare2D(D_80A68474[0], D_80A68474[1], D_80A68474[2], D_80A68474[3], (actor)->posRot.pos.x, \
                            (actor)->posRot.pos.z))

void EnHorseGameCheck_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHorseGameCheck_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHorseGameCheck_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHorseGameCheck_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_Horse_Game_Check_InitVars = {
    ACTOR_EN_HORSE_GAME_CHECK,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnHorseGameCheck),
    (ActorFunc)EnHorseGameCheck_Init,
    (ActorFunc)EnHorseGameCheck_Destroy,
    (ActorFunc)EnHorseGameCheck_Update,
    (ActorFunc)EnHorseGameCheck_Draw,
};

static Vec3f D_80A68440[] = {
    { 1700.0f, 1.0f, -540.0f },
    { 117.0f, 1.0f, 488.0f },
    { -1700.0f, 1.0f, -540.0f },
};

f32 D_80A68464[] = { -200.0f, 80.0f, -2300.0f, -1470.0f };

static f32 D_80A68474[] = { 800.0f, 1000.0f, -2900.0f, -2700.0f };

static Vec3f D_80A68484 = { 0.0f, 0.0f, 0.0f };

Vec3f D_80A68490[] = { { 820.0f, -44.0f, -1655.0f }, { 1497.0f, -21.0f, -1198.0f }, { 1655.0f, -44.0f, -396.0f },
                       { 1291.0f, -44.0f, 205.0f },  { 379.0f, -21.0f, 455.0f },    { -95.0f, -21.0f, 455.0f },
                       { -939.0f, 1.0f, 455.0f },    { -1644.0f, -21.0f, -1035.0f } };

s32 EnHorseGameCheck_InitType1(EnHorseGameCheckBase* thisx, GlobalContext* globalCtx) {
    EnHorseGameCheck1* this = (EnHorseGameCheck1*) thisx;
    s32 i;

    this->base.type = HORSEGAME_TYPE1;
    this->unk_150 = 0;
    for (i = 0; i < 3; i++) {
        this->unk_154[i] = 0;
    }
    this->unk_16C =
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_HORSE, -250.0f, 1.0f, -1650.0f, 0, 0x4000, 0, 0x8003);

    if (this->unk_16C == NULL) {
        LogUtils_HungupThread("../z_en_horse_game_check.c", 385);
    }
    this->unk_170 = 0;
    this->unk_178 = 0;
    this->unk_174 = 0;
    this->unk_17C = 0;
    this->unk_180 = 0;

    return 1;
}

s32 EnHorseGameCheck_DestroyType1(EnHorseGameCheckBase* thisx, GlobalContext* globalCtx) {
    return 1;
}

void EnHorseGameCheck_FinishType1(EnHorseGameCheck1* this, GlobalContext* globalCtx) {
    gSaveContext.cutsceneIndex = 0;
    if (this->unk_174 == 1) {
        globalCtx->nextEntranceIndex = 0x4CE;
        if (gSaveContext.eventInf[0] & 0x40) {
            gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0xF) | 6;
            gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x8000) | 0x8000;
            globalCtx->fadeTransition = 3;
            func_800775F0(0x42);
        } else {
            gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0xF) | 4;
            gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x8000) | 0x8000;
            func_800775F0(0x42);
            globalCtx->fadeTransition = 0x2E;
        }
    } else {
        globalCtx->nextEntranceIndex = 0x558;
        gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0xF) | 3;
        globalCtx->fadeTransition = 0x20;
        gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x8000) | 0x8000;
    }
    DREG(25) = 0;
    globalCtx->sceneLoadFlag = 0x14;
    gSaveContext.timer1State = 0;
}

s32 EnHorseGameCheck_UpdateType1(EnHorseGameCheckBase* thisx, GlobalContext* globalCtx) {
    EnHorseGameCheck1* this = (EnHorseGameCheck1*)thisx;
    Player* player = PLAYER;
    s32 i;
    EnHorse* horse2;
    EnHorse* horse;

    if ((this->unk_170 > 50) && !(this->unk_150 & 2)) {
        this->unk_150 |= 2;
        func_80088B34(0);
    } else if ((this->unk_170 > 80) && (player->rideActor != NULL) && !(this->unk_150 & 1)) {
        this->unk_150 |= 1;
        horse = (EnHorse*)player->rideActor;
        horse->unk_388 = 1;
    } else if ((this->unk_170 > 81) && !(this->unk_150 & 4)) {
        horse2 = (EnHorse*)this->unk_16C;

        horse2->unk_388 = 1;
        this->unk_150 |= 4;
        Audio_PlaySoundGeneral(NA_SE_SY_START_SHOT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }

    this->unk_170++;

    for (i = 0; i < 3; i++) {
        if ((player->rideActor != NULL) &&
            (Math3D_Vec3f_DistXYZ(&D_80A68440[i], &player->rideActor->posRot.pos) < 400.0f)) {
            if ((i > 0) && (this->unk_154[i - 1] == 1)) {
                this->unk_154[i] = 1;
            } else if (i == 0) {
                this->unk_154[i] = 1;
            }
        }
        if (Math3D_Vec3f_DistXYZ(&D_80A68440[i], &this->unk_16C->posRot.pos) < 400.0f) {
            if ((i > 0) && (this->unk_160[i - 1] == 1)) {
                this->unk_160[i] = 1;
            } else if (i == 0) {
                this->unk_160[i] = 1;
            }
        }
    }

    if (this->unk_174 == 0) {
        Player* player2 = player;

        if ((player2->rideActor != NULL) && (this->unk_154[2] == 1) && IN_SQUARE1(player2->rideActor)) {
            this->unk_17C++;
            if (this->unk_17C > 0) {
                this->unk_174 = 1;
                this->unk_178 = 55;
                Audio_SetBGM(0x41);
                Audio_PlaySoundGeneral(NA_SE_SY_START_SHOT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
            for (i = 0; i < 3; i++) {
                this->unk_154[i] = 0;
            }
        }
        if ((this->unk_16C != NULL) && (this->unk_160[2] == 1) && IN_SQUARE1(this->unk_16C)) {
            this->unk_180++;
            if (this->unk_180 > 0) {
                horse2 = (EnHorse*)this->unk_16C;

                this->unk_174 = 2;
                this->unk_178 = 70;
                horse2->unk_1F0 |= 0x800000;
                Audio_SetBGM(0x41);
                Audio_PlaySoundGeneral(NA_SE_SY_START_SHOT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
            for (i = 0; i < 3; i++) {
                this->unk_160[i] = 0;
            }
        }
        if (((player2->rideActor != NULL) && IN_SQUARE2(player2->rideActor)) || IN_SQUARE2(&player2->actor)) {
            Audio_SetBGM(0x41);
            this->unk_174 = 2;
            this->unk_178 = 0x14;
        }
        if ((gSaveContext.timer1Value >= 180) && (this->unk_150 & 2)) {
            Audio_SetBGM(0x41);
            this->unk_174 = 3;
            this->unk_178 = 0x14;
        }
    } else {
        if (this->unk_178 > 0) {
            this->unk_178--;
        } else {
            EnHorseGameCheck_FinishType1(this, globalCtx);
        }
    }
    return 1;
}

s32 EnHorseGameCheck_InitType2(EnHorseGameCheckBase* thisx, GlobalContext* globalCtx) {
    EnHorseGameCheck2* this = (EnHorseGameCheck2*)thisx;

    this->base.type = HORSEGAME_TYPE2;
    this->unk_150 = 0;
    this->unk_154= 0;
    return 1;
}

s32 EnHorseGameCheck_DestroyType2(EnHorseGameCheckBase* thisx, GlobalContext* globalCtx) {
    return 1;
}

s32 EnHorseGameCheck_UpdateType2(EnHorseGameCheckBase* thisx, GlobalContext* globalCtx) {
    EnHorseGameCheck2* this = (EnHorseGameCheck2*)thisx;
    Player* player = PLAYER;
    EnHorse* horse = (EnHorse*)player->rideActor;

    if (horse == NULL) {
        return 1;
    }

    if (this->unk_154 > 90) {
        if (globalCtx) {}
        horse->unk_3A0 = 1;
    }
    this->unk_154++;
    return 1;
}

s32 EnHorseGameCheck_InitType3(EnHorseGameCheckBase* thisx, GlobalContext* globalCtx) {
    EnHorseGameCheck3* this = (EnHorseGameCheck3*)thisx;

    this->base.type = HORSEGAME_TYPE3;
    this->unk_150 = 0;
    return 1;
}

s32 EnHorseGameCheck_DestroyType3(EnHorseGameCheckBase* thisx, GlobalContext* globalCtx) {
    return 1;
}

s32 EnHorseGameCheck_UpdateType3(EnHorseGameCheckBase* thisx, GlobalContext* globalCtx) {
    return 1;
}

s32 EnHorseGameCheck_InitType4(EnHorseGameCheckBase* thisx, GlobalContext* globalCtx) {
    EnHorseGameCheck4* this = (EnHorseGameCheck4*)thisx;
    s32 i;

    this->base.type = HORSEGAME_TYPE4;
    this->unk_154 = 0;
    this->unk_198 = 0;
    this->unk_19C = 0;
    for (i = 0; i < 16; i++) {
        this->unk_158[i] = 0;
    }
    this->unk_1A0 = 0;
    return 1;
}

s32 EnHorseGameCheck_DestroyType4(EnHorseGameCheckBase* thisx, GlobalContext* globalCtx) {
    return 1;
}

void EnHorseGameCheck_FinishType4(EnHorseGameCheck4* this, GlobalContext* globalCtx) {
    if ((this->unk_19C == 1) || (this->unk_19C == 2)) {
        gSaveContext.cutsceneIndex = 0;
        globalCtx->nextEntranceIndex = 0x4CE;
        globalCtx->fadeTransition = 0x2E;
        globalCtx->sceneLoadFlag = 0x14;
    } else if (this->unk_19C == 4) {
        gSaveContext.timer1Value = 240;
        gSaveContext.timer1State = 0xF;
        gSaveContext.cutsceneIndex = 0;
        globalCtx->nextEntranceIndex = 0x4CE;
        globalCtx->fadeTransition = 0x2E;
        globalCtx->sceneLoadFlag = 0x14;
    } else {
        // not supported
        osSyncPrintf("En_HGC_Spot20_Ta_end():対応せず\n");
        gSaveContext.cutsceneIndex = 0;
        globalCtx->nextEntranceIndex = 0x157;
        globalCtx->fadeTransition = 0x2E;
        globalCtx->sceneLoadFlag = 0x14;
    }
}

#ifdef NON_MATCHING
s32 EnHorseGameCheck_UpdateType4(EnHorseGameCheckBase* thisx, GlobalContext* globalCtx) {
    EnHorseGameCheck4* this = (EnHorseGameCheck4*)thisx;
    s32 i;
    Player* player = PLAYER;
    EnHorse* horse;

    if (!(this->unk_154 & 0x40) && IN_SQUARE1(player->rideActor)) {
        this->unk_154 |= 0x40;
    } else if ((this->unk_154 & 0x40) && !(this->unk_154 & 0x20) && !IN_SQUARE1(player->rideActor)) {
        this->unk_154 |= 0x20;
    }
    if ((this->unk_150 > 50) && !(this->unk_154 & 2)) {
        this->unk_154 |= 2;
        func_80088B34(0);
    } else if ((this->unk_150 > 80) && (player->rideActor != NULL) && !(this->unk_154 & 1)) {
        this->unk_154 |= 1;
        horse = (EnHorse*)player->rideActor;

        horse->unk_388 = 1;
    } else if ((this->unk_150 > 81) && !(this->unk_154 & 0x10)) {
        this->unk_154 |= 0x10;
        Audio_PlaySoundGeneral(NA_SE_SY_START_SHOT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
    this->unk_150++;
    if (this->unk_19C == 0) {

        for (i = 0; i < 16; i++) {

            if (this->unk_1A0 || (i < 8)) {
                f32 dist = Math_Vec3f_DistXZ(&D_80A68490[i % 8], &player->rideActor->posRot.pos);
                if ((player->rideActor != NULL) && (dist < 250.0f)) {
                    horse = (EnHorse*)player->rideActor;

                    if (horse->unk_1F0 & 4) {
                        if ((i > 0) && (this->unk_158[i - 1] == 1)) {
                            this->unk_158[i] = 1;
                        } else if (i == 0) {
                            this->unk_158[i] = 1;
                        }

                        if ((this->unk_158[i - 1] == 0) && !(this->unk_154 & 8)) {
                            this->unk_154 |= 8;
                            func_8010B680(globalCtx, 0x208C, NULL);
                            this->unk_19C = 4;
                            this->unk_198 = 30;
                        }
                        if (1) {}
                    }
                }
            }
        }
        if ((player->rideActor != NULL) && (this->unk_154 & 0x20) && IN_SQUARE1(player->rideActor)) {
            if ((this->unk_1A0 == 1) && (this->unk_158[15] == 0) && (player->rideActor->pos4.x < -200.0f)) {
                this->unk_154 |= 8;
                func_8010B680(globalCtx, 0x208C, NULL);
                this->unk_19C = 4;
                this->unk_198 = 30;
            } else if (this->unk_158[15] == 1) {
                this->unk_1A0 = 2;
                Audio_SetBGM(0x41);
                Audio_PlaySoundGeneral(NA_SE_SY_START_SHOT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                this->unk_19C = 1;
                this->unk_198 = 70;
                gSaveContext.timer1State = 15;
            } else if ((this->unk_158[7] == 1) && !(this->unk_154 & 4)) {
                this->unk_1A0 = 1;
                this->unk_154 |= 4;
                func_8010B680(globalCtx, 0x208D, NULL);
            } else if (this->unk_158[7] == 0) {
                this->unk_154 |= 8;
                func_8010B680(globalCtx, 0x208C, NULL);
                this->unk_19C = 4;
                this->unk_198 = 30;
            } else if (player->rideActor->pos4.x > 80.0f) {
                this->unk_154 |= 8;
                func_8010B680(globalCtx, 0x208C, NULL);
                this->unk_19C = 4;
                this->unk_198 = 30;
            }
        }
        if ((gSaveContext.timer1Value >= 180) && (this->unk_154 & 2)) {
            gSaveContext.timer1Value = 240;
            this->unk_19C = 2;
            this->unk_198 = 30;
            gSaveContext.timer1State = 0;
        }
    } else {
        if (this->unk_198 > 0) {
            this->unk_198--;
        } else {
            EnHorseGameCheck_FinishType4(this, globalCtx);
        }
    }
    return 1;
}
#else
s32 EnHorseGameCheck_UpdateType4(EnHorseGameCheckBase* thisx, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Game_Check/EnHorseGameCheck_UpdateType4.s")
#endif

static EnHorseGameCheckFunc sInitFuncs[] = {
    NULL, EnHorseGameCheck_InitType1, EnHorseGameCheck_InitType2, EnHorseGameCheck_InitType3, EnHorseGameCheck_InitType4,
};

static EnHorseGameCheckFunc sDestroyFuncs[] = {
    NULL, EnHorseGameCheck_DestroyType1, EnHorseGameCheck_DestroyType2, EnHorseGameCheck_DestroyType3, EnHorseGameCheck_DestroyType4,
};

static EnHorseGameCheckFunc sUpdateFuncs[] = {
    NULL, EnHorseGameCheck_UpdateType1, EnHorseGameCheck_UpdateType2, EnHorseGameCheck_UpdateType3, EnHorseGameCheck_UpdateType4,
};

void EnHorseGameCheck_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnHorseGameCheckBase* this = THIS;

    if ((globalCtx->sceneNum == SCENE_SPOT20) && (Flags_GetEventChkInf(0x18) || DREG(1))) {
        this->actor.params = HORSEGAME_TYPE4;
    }
    if (sInitFuncs[this->actor.params] != NULL) {
        sInitFuncs[this->actor.params](this, globalCtx);
    }
}

void EnHorseGameCheck_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnHorseGameCheckBase* this = THIS;

    if (sDestroyFuncs[this->actor.params] != NULL) {
        sDestroyFuncs[this->actor.params](this, globalCtx);
    }
}

void EnHorseGameCheck_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnHorseGameCheckBase* this = THIS;

    if (sUpdateFuncs[this->type] != NULL) {
        sUpdateFuncs[this->type](this, globalCtx);
    }
}

void EnHorseGameCheck_Draw(Actor* thisx, GlobalContext* globalCtx) {
}
