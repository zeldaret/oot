#include "z_boss_dodongo.h"
#include "objects/object_kingdodongo/object_kingdodongo.h"
#include "scenes/dungeons/ddan_boss/ddan_boss_room_1.h"

#define FLAGS 0x00000035

#define THIS ((BossDodongo*)thisx)

void BossDodongo_Init(Actor* thisx, GlobalContext* globalCtx);
void BossDodongo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossDodongo_Update(Actor* thisx, GlobalContext* globalCtx);
void BossDodongo_Draw(Actor* thisx, GlobalContext* globalCtx);

void BossDodongo_SetupIntroCutscene(BossDodongo* this, GlobalContext* globalCtx);
void BossDodongo_IntroCutscene(BossDodongo* this, GlobalContext* globalCtx);
void BossDodongo_Walk(BossDodongo* this, GlobalContext* globalCtx);
void BossDodongo_Inhale(BossDodongo* this, GlobalContext* globalCtx);
void BossDodongo_BlowFire(BossDodongo* this, GlobalContext* globalCtx);
void BossDodongo_Roll(BossDodongo* this, GlobalContext* globalCtx);
void BossDodongo_SpawnFire(BossDodongo* this, GlobalContext* globalCtx, s16 arg2);
void BossDodongo_Explode(BossDodongo* this, GlobalContext* globalCtx);
void BossDodongo_LayDown(BossDodongo* this, GlobalContext* globalCtx);
void BossDodongo_Vulnerable(BossDodongo* this, GlobalContext* globalCtx);
void BossDodongo_GetUp(BossDodongo* this, GlobalContext* globalCtx);
void BossDodongo_SetupWalk(BossDodongo* this);
void BossDodongo_DeathCutscene(BossDodongo* this, GlobalContext* globalCtx);
void BossDodongo_SetupDeathCutscene(BossDodongo* this);
void BossDodongo_Damaged(BossDodongo* this, GlobalContext* globalCtx);
void BossDodongo_UpdateDamage(BossDodongo* this, GlobalContext* globalCtx);
void BossDodongo_PlayerPosCheck(BossDodongo* this, GlobalContext* globalCtx);
void BossDodongo_PlayerYawCheck(BossDodongo* this, GlobalContext* globalCtx);
f32 func_808C4F6C(BossDodongo* this, GlobalContext* globalCtx);
f32 func_808C50A8(BossDodongo* this, GlobalContext* globalCtx);
void BossDodongo_DrawEffects(GlobalContext* globalCtx);
void BossDodongo_UpdateEffects(GlobalContext* globalCtx);

const ActorInit Boss_Dodongo_InitVars = {
    ACTOR_EN_DODONGO,
    ACTORCAT_BOSS,
    FLAGS,
    OBJECT_KINGDODONGO,
    sizeof(BossDodongo),
    (ActorFunc)BossDodongo_Init,
    (ActorFunc)BossDodongo_Destroy,
    (ActorFunc)BossDodongo_Update,
    (ActorFunc)BossDodongo_Draw,
};

#include "z_boss_dodongo_data.c"

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(targetMode, 5, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 0x0C, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -3000.0f, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 8200.0f, ICHAIN_STOP),
};

void func_808C1190(s16* arg0, u8* arg1, s16 arg2) {
    if (arg2[arg1] != 0) {
        arg0[arg2 / 2] = 0;
    }
}

void func_808C11D0(s16* arg0, u8* arg1, s16 arg2) {
    if (arg1[arg2] != 0) {
        arg0[arg2] = 0;
    }
}

void func_808C1200(s16* arg0, u8* arg1, s16 arg2) {
    if (arg1[arg2] != 0) {
        arg0[arg2] = 0;
    }
}

void func_808C1230(s16* arg0, u8* arg1, s16 arg2) {
    s16 index;

    if (arg1[arg2] != 0) {
        index = ((arg2 & 0xF) + ((arg2 & 0xF0) * 2));
        arg0[index + 16] = 0;
        arg0[index] = 0;
    }
}

void func_808C1278(s16* arg0, u8* arg1, s16 arg2) {
    s16 index;

    if (arg1[arg2] != 0) {
        index = ((arg2 & 0xF) * 2) + ((arg2 & 0xF0) * 2);
        arg0[index + 1] = 0;
        arg0[index] = 0;
    }
}

void func_808C12C4(u8* arg1, s16 arg2) {
    func_808C1190(SEGMENTED_TO_VIRTUAL(object_kingdodongo_Tex_015890), arg1, arg2);
    func_808C1200(SEGMENTED_TO_VIRTUAL(object_kingdodongo_Tex_017210), arg1, arg2);
    func_808C11D0(SEGMENTED_TO_VIRTUAL(object_kingdodongo_Tex_015D90), arg1, arg2);
    func_808C11D0(SEGMENTED_TO_VIRTUAL(object_kingdodongo_Tex_016390), arg1, arg2);
    func_808C11D0(SEGMENTED_TO_VIRTUAL(object_kingdodongo_Tex_016590), arg1, arg2);
    func_808C11D0(SEGMENTED_TO_VIRTUAL(object_kingdodongo_Tex_016790), arg1, arg2);
    func_808C1230(SEGMENTED_TO_VIRTUAL(object_kingdodongo_Tex_015990), arg1, arg2);
    func_808C1230(SEGMENTED_TO_VIRTUAL(object_kingdodongo_Tex_015F90), arg1, arg2);
    func_808C1278(SEGMENTED_TO_VIRTUAL(object_kingdodongo_Tex_016990), arg1, arg2);
    func_808C1278(SEGMENTED_TO_VIRTUAL(object_kingdodongo_Tex_016E10), arg1, arg2);
}

void func_808C1554(void* arg0, void* floorTex, s32 arg2, f32 arg3) {
    u16* temp_s3 = SEGMENTED_TO_VIRTUAL(arg0);
    u16* temp_s1 = SEGMENTED_TO_VIRTUAL(floorTex);
    s16 i;
    s16 i2;
    u16 sp54[2048];
    s16 temp;
    s16 temp2;

    for (i = 0; i < 2048; i += 32) {
        temp = sinf((((i / 32) + (s16)((arg2 * 50.0f) / 100.0f)) & 0x1F) * (M_PI / 16)) * arg3;
        for (i2 = 0; i2 < 32; i2++) {
            sp54[i + ((temp + i2) & 0x1F)] = temp_s1[i + i2];
        }
    }
    for (i = 0; i < 32; i++) {
        temp = sinf(((i + (s16)((arg2 * 80.0f) / 100.0f)) & 0x1F) * (M_PI / 16)) * arg3;
        temp *= 32;
        for (i2 = 0; i2 < 2048; i2 += 32) {
            temp2 = (temp + i2) & 0x7FF;
            temp_s3[i + temp2] = sp54[i + i2];
        }
    }
}

void func_808C17C8(GlobalContext* globalCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, f32 arg4, s16 arg5) {
    s16 i;
    BossDodongoEffect* eff = (BossDodongoEffect*)globalCtx->specialEffects;

    for (i = 0; i < arg5; i++, eff++) {
        if (eff->unk_24 == 0) {
            eff->unk_24 = 1;
            eff->unk_00 = *arg1;
            eff->unk_0C = *arg2;
            eff->unk_18 = *arg3;
            eff->unk_2C = arg4 / 1000.0f;
            eff->alpha = 255;
            eff->unk_25 = (s16)Rand_ZeroFloat(10.0f);
            break;
        }
    }
}

s32 BossDodongo_AteExplosive(BossDodongo* this, GlobalContext* globalCtx) {
    f32 dx;
    f32 dy;
    f32 dz;
    Actor* currentExplosive = globalCtx->actorCtx.actorLists[ACTORCAT_EXPLOSIVE].head;
    Actor* thisx = &this->actor;

    while (currentExplosive != NULL) {
        if (currentExplosive == thisx) {
            currentExplosive = currentExplosive->next;
            continue;
        }

        dx = currentExplosive->world.pos.x - this->mouthPos.x;
        dy = currentExplosive->world.pos.y - this->mouthPos.y;
        dz = currentExplosive->world.pos.z - this->mouthPos.z;

        if ((fabsf(dx) < 40.0f) && (fabsf(dy) < 40.0f) && (fabsf(dz) < 40.0f)) {
            Actor_Kill(currentExplosive);
            return true;
        }

        currentExplosive = currentExplosive->next;
    }

    return false;
}

void BossDodongo_Init(Actor* thisx, GlobalContext* globalCtx) {
    BossDodongo* this = THIS;
    s16 i;
    u16* temp_s1_3;
    u16* temp_s2;
    u32 temp_v0;

    globalCtx->specialEffects = &this->effects;
    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 9200.0f, ActorShadow_DrawCircle, 250.0f);
    Actor_SetScale(&this->actor, 0.01f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &object_kingdodongo_Skel_01B310, &object_kingdodongo_Anim_00F0D8, NULL,
                   NULL, 0);
    Animation_PlayLoop(&this->skelAnime, &object_kingdodongo_Anim_00F0D8);
    this->unk_1F8 = 1.0f;
    BossDodongo_SetupIntroCutscene(this, globalCtx);
    this->health = 12;
    this->colorFilterMin = 995.0f;
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    this->colorFilterMax = 1000.0f;
    this->unk_224 = 2.0f;
    this->unk_228 = 9200.0f;
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, this->items);

    if (Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)) { // KD is dead
        temp_s1_3 = SEGMENTED_TO_VIRTUAL(gDodongosCavernBossLavaFloorTex);
        temp_s2 = SEGMENTED_TO_VIRTUAL(sLavaFloorRockTex);

        Actor_Kill(&this->actor);
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, -890.0f, -1523.76f,
                           -3304.0f, 0, 0, 0, 0);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BG_BREAKWALL, -890.0f, -1523.76f, -3304.0f, 0, 0, 0, 0x6000);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, -690.0f, -1523.76f, -3304.0f, 0, 0, 0, 0);

        for (i = 0; i < 2048; i++) {
            temp_v0 = i;
            temp_s1_3[temp_v0] = temp_s2[temp_v0];
        }
    }

    this->actor.flags &= ~1;
}

void BossDodongo_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BossDodongo* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyJntSph(globalCtx, &this->collider);
}

void BossDodongo_SetupIntroCutscene(BossDodongo* this, GlobalContext* globalCtx) {
    s16 frames = Animation_GetLastFrame(&object_kingdodongo_Anim_00F0D8);

    Animation_Change(&this->skelAnime, &object_kingdodongo_Anim_00F0D8, 1.0f, 0.0f, frames, ANIMMODE_LOOP, -10.0f);
    this->actionFunc = BossDodongo_IntroCutscene;
    this->csState = 0;
    this->unk_1BC = 1;
}

void BossDodongo_IntroCutscene(BossDodongo* this, GlobalContext* globalCtx) {
    f32 phi_f0;
    Camera* camera;
    Player* player;
    Vec3f sp60;
    Vec3f sp54;
    Vec3f sp48;

    player = PLAYER;
    camera = Gameplay_GetCamera(globalCtx, MAIN_CAM);

    if (this->unk_196 != 0) {
        this->unk_196--;
    }

    if (this->unk_198 != 0) {
        this->unk_198--;
    }

    if (this->unk_19A != 0) {
        this->unk_19A--;
    }

    switch (this->csState) {
        case 0:
            if (player->actor.world.pos.y < -1223.76f) {
                this->csState = 1;
                this->actor.world.pos.x = -1390.0f;
                this->actor.world.pos.z = -3374.0f;
                this->unk_1A0 = 1;
            }
            break;
        case 1:
            func_80064520(globalCtx, &globalCtx->csCtx);
            func_8002DF54(globalCtx, &this->actor, 1);
            Gameplay_ClearAllSubCameras(globalCtx);
            this->cutsceneCamera = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
            Gameplay_ChangeCameraStatus(globalCtx, this->cutsceneCamera, 7);
            this->csState = 2;
            this->unk_196 = 0x3C;
            this->unk_198 = 160;
            player->actor.world.pos.y = -1023.76f;
            this->cameraEye.y = player->actor.world.pos.y - 480.0f + 50.0f;
        case 2:
            if (this->unk_198 >= 131) {
                player->actor.world.pos.x = -890.0f;
                player->actor.world.pos.z = -2804.0f;

                player->actor.speedXZ = 0.0f;
                player->actor.shape.rot.y = player->actor.world.rot.y = 0x3FFF;

                this->cameraEye.x = -890.0f;
                this->cameraEye.z = player->actor.world.pos.z - 100.0f;

                this->cameraAt.x = player->actor.world.pos.x;
                this->cameraAt.y = player->actor.world.pos.y + 20.0f;
                this->cameraAt.z = player->actor.world.pos.z;
            }

            if (this->unk_198 == 110) {
                func_8002DF54(globalCtx, &this->actor, 9);
            }

            if (this->unk_198 == 5) {
                func_8002DF54(globalCtx, &this->actor, 12);
            }

            if (this->unk_198 < 6) {
                player->actor.shape.rot.y = -0x4001;
            } else {
                player->actor.shape.rot.y = 0x3FFF;
            }

            if (this->unk_198 < 60) {
                this->unk_1BC = 1;
            } else {
                this->unk_1BC = 2;
            }

            BossDodongo_Walk(this, globalCtx);

            if (this->unk_196 == 1) {
                Audio_QueueSeqCmd(0x100100FF);
            }

            if (this->unk_196 == 0) {
                Math_SmoothStepToF(&this->cameraEye.x, this->vec.x + 30.0f, 0.2f, this->unk_204 * 20.0f, 0.0f);
                Math_SmoothStepToF(&this->cameraEye.y, this->vec.y, 0.2f, this->unk_204 * 20.0f, 0.0f);
                Math_SmoothStepToF(&this->cameraEye.z, this->vec.z + 10.0f, 0.2f, this->unk_204 * 20.0f, 0.0f);
                Math_SmoothStepToF(&this->unk_204, 1.0f, 1.0f, 0.02f, 0.0f);
            } else {
                this->cameraAt.x = player->actor.world.pos.x;
                this->cameraAt.y = player->actor.world.pos.y + 20.0f;
                this->cameraAt.z = player->actor.world.pos.z;
            }

            if (gSaveContext.eventChkInf[7] & 2) {
                if (this->unk_198 == 100) {
                    this->actor.world.pos.x = -1114.0f;
                    this->actor.world.pos.z = -2804.0f;
                    this->actor.world.rot.y = 0x3FFF;
                    this->unk_1A2 = 0;
                    this->unk_1A0 = 2;
                    this->csState = 4;
                    this->unk_196 = 30;
                    this->unk_198 = 150;
                    this->unk_204 = 0.0f;
                    Animation_Change(&this->skelAnime, &object_kingdodongo_Anim_008EEC, 1.0f, 0.0f,
                                     Animation_GetLastFrame(&object_kingdodongo_Anim_008EEC), ANIMMODE_ONCE, 0.0f);
                    SkelAnime_Update(&this->skelAnime);
                }
            } else if (this->unk_198 == 0) {
                this->csState = 3;
                this->unk_19E = 0x14;
                this->unk_204 = 0.0f;
            }
            break;
        case 3:
            BossDodongo_Walk(this, globalCtx);
            Math_SmoothStepToF(&this->unk_20C, sinf(this->unk_19E * 0.05f) * 0.1f, 1.0f, 0.01f, 0.0f);
            Math_SmoothStepToF(&this->cameraEye.x, this->vec.x + 90.0f, 0.2f, this->unk_204 * 20.0f, 0.0f);
            Math_SmoothStepToF(&this->cameraEye.y, this->vec.y + 50.0f, 0.2f, this->unk_204 * 20.0f, 0.0f);
            Math_SmoothStepToF(&this->cameraEye.z, this->vec.z, 0.2f, this->unk_204 * 20.0f, 0.0f);
            Math_SmoothStepToF(&this->cameraAt.y, this->vec.y - 10.0f, 0.2f, this->unk_204 * 20.0f, 0.0f);
            Math_SmoothStepToF(&this->unk_204, 1.0f, 1.0f, 0.02f, 0.0f);
            if (fabsf(player->actor.world.pos.x - this->actor.world.pos.x) < 200.0f) {
                this->csState = 4;
                this->unk_196 = 0x1E;
                this->unk_198 = 0x96;
                this->unk_204 = 0.0f;
                Animation_Change(&this->skelAnime, &object_kingdodongo_Anim_008EEC, 1.0f, 0.0f,
                                 Animation_GetLastFrame(&object_kingdodongo_Anim_008EEC), ANIMMODE_ONCE, -5.0f);
            }
            break;
        case 4:
            Math_SmoothStepToF(&this->unk_20C, 0.0f, 1.0f, 0.01f, 0.0f);

            if (gSaveContext.eventChkInf[7] & 2) {
                phi_f0 = -50.0f;
            } else {
                phi_f0 = 0.0f;
            }

            Math_SmoothStepToF(&this->cameraEye.x, player->actor.world.pos.x + phi_f0 + 70.0f, 0.2f,
                               this->unk_204 * 20.0f, 0.0f);
            Math_SmoothStepToF(&this->cameraEye.y, player->actor.world.pos.y + 10.0f, 0.2f, this->unk_204 * 20.0f,
                               0.0f);
            Math_SmoothStepToF(&this->cameraEye.z, player->actor.world.pos.z - 60.0f, 0.2f, this->unk_204 * 20.0f,
                               0.0f);

            Math_SmoothStepToF(&this->cameraAt.x, this->vec.x, 0.2f, this->unk_204 * 20.0f, 0.0f);
            Math_SmoothStepToF(&this->cameraAt.y, this->vec.y, 0.2f, this->unk_204 * 20.0f, 0.0f);
            Math_SmoothStepToF(&this->cameraAt.z, this->vec.z, 0.2f, this->unk_204 * 20.0f, 0.0f);
            Math_SmoothStepToF(&this->unk_204, 1.0f, 1.0f, 0.02f, 0.0f);

            if (this->unk_196 == 0) {
                SkelAnime_Update(&this->skelAnime);
                Math_SmoothStepToF(&this->unk_208, 0.05f, 1.0f, 0.005f, 0.0f);
            }

            if (this->unk_198 == 0x64) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_OTAKEBI);
            }

            if (this->unk_198 == 0x5A) {
                if (!(gSaveContext.eventChkInf[7] & 2)) {
                    TitleCard_InitBossName(globalCtx, &globalCtx->actorCtx.titleCtx,
                                           SEGMENTED_TO_VIRTUAL(&object_kingdodongo_Blob_017410), 0xA0, 0xB4, 0x80,
                                           0x28);
                }
                Audio_QueueSeqCmd(0x6B);
            }

            if (this->unk_198 == 0) {
                camera->eye = this->cameraEye;
                camera->eyeNext = this->cameraEye;
                camera->at = this->cameraAt;
                func_800C08AC(globalCtx, this->cutsceneCamera, 0);
                this->cutsceneCamera = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                BossDodongo_SetupWalk(this);
                this->unk_1DA = 50;
                this->unk_1BC = 0;
                player->actor.shape.rot.y = -0x4002;
                gSaveContext.eventChkInf[7] |= 2;
            }
            break;
    }

    if (this->cutsceneCamera != 0) {
        if (this->unk_1B6 != 0) {
            this->unk_1B6--;
        }

        sp60.x = this->cameraEye.x;
        phi_f0 = sinf((this->unk_1B6 * 3.1415f * 90.0f) / 180.0f);
        sp60.y = (this->unk_1B6 * phi_f0 * 0.7f) + this->cameraEye.y;
        sp60.z = this->cameraEye.z;

        sp54.x = this->cameraAt.x;
        phi_f0 = sinf((this->unk_1B6 * 3.1415f * 90.0f) / 180.0f);
        sp54.y = (this->unk_1B6 * phi_f0 * 0.7f) + this->cameraAt.y;
        sp54.z = this->cameraAt.z;

        sp48.x = this->unk_20C;
        sp48.y = 1.0f;
        sp48.z = this->unk_20C;

        Gameplay_CameraSetAtEyeUp(globalCtx, this->cutsceneCamera, &sp54, &sp60, &sp48);
    }
}

void BossDodongo_SetupDamaged(BossDodongo* this) {
    if (this->actionFunc != BossDodongo_Damaged) {
        Animation_Change(&this->skelAnime, &object_kingdodongo_Anim_001074, 1.0f, 0.0f,
                         Animation_GetLastFrame(&object_kingdodongo_Anim_001074), ANIMMODE_ONCE, -5.0f);
        this->actionFunc = BossDodongo_Damaged;
    }

    this->unk_1DA = 100;
}

void BossDodongo_SetupExplode(BossDodongo* this) {
    Animation_Change(&this->skelAnime, &object_kingdodongo_Anim_00E848, 1.0f, 0.0f,
                     Animation_GetLastFrame(&object_kingdodongo_Anim_00E848), ANIMMODE_ONCE, -5.0f);
    this->actionFunc = BossDodongo_Explode;
    this->unk_1B0 = 10;
    this->unk_1C0 = 2;
    this->unk_1DA = 35;
    this->unk_1FC = 50.0f;
    this->unk_200 = 300.0f;
}

void BossDodongo_SetupWalk(BossDodongo* this) {
    Animation_Change(&this->skelAnime, &object_kingdodongo_Anim_01D934, 1.0f, 0.0f,
                     Animation_GetLastFrame(&object_kingdodongo_Anim_01D934), ANIMMODE_ONCE, -10.0f);
    this->unk_1AA = 0;
    this->actionFunc = BossDodongo_Walk;
    this->unk_1DA = 0;
    this->actor.flags |= 1;
    this->unk_1E4 = 0.0f;
}

void BossDodongo_SetupRoll(BossDodongo* this) {
    Animation_Change(&this->skelAnime, &object_kingdodongo_Anim_00DF38, 1.0f, 0.0f, 59.0f, ANIMMODE_ONCE, -5.0f);
    this->actionFunc = BossDodongo_Roll;
    this->numWallCollisions = 0;
    this->unk_1DA = 27;
}

void BossDodongo_SetupBlowFire(BossDodongo* this) {
    this->actor.speedXZ = 0.0f;
    this->unk_1E4 = 0.0f;
    Animation_Change(&this->skelAnime, &object_kingdodongo_Anim_0061D4, 1.0f, 0.0f,
                     Animation_GetLastFrame(&object_kingdodongo_Anim_0061D4), ANIMMODE_ONCE, 0.0f);
    this->actionFunc = BossDodongo_BlowFire;
    this->unk_1DA = 50;
    this->unk_1AE = 0;
}

void BossDodongo_SetupInhale(BossDodongo* this) {
    this->actor.speedXZ = 0.0f;
    Animation_Change(&this->skelAnime, &object_kingdodongo_Anim_008EEC, 1.0f, 0.0f,
                     Animation_GetLastFrame(&object_kingdodongo_Anim_008EEC), ANIMMODE_ONCE, -5.0f);
    this->actionFunc = BossDodongo_Inhale;
    this->unk_1DA = 100;
    this->unk_1AC = 0;
    this->unk_1E2 = 1;
}

void BossDodongo_Damaged(BossDodongo* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    Math_SmoothStepToF(&this->unk_1F8, 1.0f, 0.5f, 0.02f, 0.001f);
    Math_SmoothStepToF(&this->unk_208, 0.05f, 1.0f, 0.005f, 0.0f);

    if (Animation_OnFrame(&this->skelAnime, Animation_GetLastFrame(&object_kingdodongo_Anim_001074))) {
        BossDodongo_SetupRoll(this);
    }
}

void BossDodongo_Explode(BossDodongo* this, GlobalContext* globalCtx) {
    static Color_RGBA8 dustPrimColor = { 255, 255, 0, 255 };
    static Color_RGBA8 dustEnvColor = { 255, 10, 0, 255 };
    s16 pad;
    Vec3f dustVel;
    Vec3f dustAcell;
    Vec3f dustPos;
    s16 i;

    Math_SmoothStepToF(&this->unk_208, 0.05f, 1.0f, 0.005f, 0.0f);
    SkelAnime_Update(&this->skelAnime);

    if (this->unk_1DA == 0) {
        for (i = 0; i < 30; i++) {
            dustVel.x = Rand_CenteredFloat(20.0f);
            dustVel.y = Rand_CenteredFloat(20.0f);
            dustVel.z = Rand_CenteredFloat(20.0f);

            dustAcell.x = dustVel.x * -0.1f;
            dustAcell.y = dustVel.y * -0.1f;
            dustAcell.z = dustVel.z * -0.1f;

            dustPos.x = this->actor.world.pos.x + (dustVel.x * 3.0f);
            dustPos.y = this->actor.world.pos.y + 90.0f + (dustVel.y * 3.0f);
            dustPos.z = this->actor.world.pos.z + (dustVel.z * 3.0f);

            func_8002836C(globalCtx, &dustPos, &dustVel, &dustAcell, &dustPrimColor, &dustEnvColor, 500, 10, 10);
        }

        Animation_Change(&this->skelAnime, &object_kingdodongo_Anim_004E0C, 1.0f, 0.0f,
                         Animation_GetLastFrame(&object_kingdodongo_Anim_004E0C), ANIMMODE_ONCE, -5.0f);
        this->actionFunc = BossDodongo_LayDown;
        Audio_PlayActorSound2(&this->actor, NA_SE_IT_BOMB_EXPLOSION);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_DAMAGE);
        func_80033E88(&this->actor, globalCtx, 4, 10);
        this->health -= 2;

        // make sure not to die from the bomb explosion
        if (this->health <= 0) {
            this->health = 1;
        }
    }
}

void BossDodongo_LayDown(BossDodongo* this, GlobalContext* globalCtx) {
    this->unk_1BE = 10;
    Math_SmoothStepToF(&this->unk_1F8, 1.3f, 1.0f, 0.1f, 0.001f);
    SkelAnime_Update(&this->skelAnime);

    if (Animation_OnFrame(&this->skelAnime, Animation_GetLastFrame(&object_kingdodongo_Anim_004E0C))) {
        Animation_Change(&this->skelAnime, &object_kingdodongo_Anim_0042A8, 1.0f, 0.0f,
                         Animation_GetLastFrame(&object_kingdodongo_Anim_0042A8), ANIMMODE_LOOP, -5.0f);
        this->actionFunc = BossDodongo_Vulnerable;
        this->unk_1DA = 100;
    }
}

void BossDodongo_Vulnerable(BossDodongo* this, GlobalContext* globalCtx) {
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_DOWN - SFX_FLAG);
    this->unk_1BE = 10;
    Math_SmoothStepToF(&this->unk_1F8, 1.0f, 0.5f, 0.02f, 0.001f);
    Math_SmoothStepToF(&this->unk_208, 0.05f, 1.0f, 0.005f, 0.0f);
    SkelAnime_Update(&this->skelAnime);

    if (this->unk_1DA == 0) {
        Animation_Change(&this->skelAnime, &object_kingdodongo_Anim_009D10, 1.0f, 0.0f,
                         Animation_GetLastFrame(&object_kingdodongo_Anim_009D10), ANIMMODE_ONCE, -5.0f);
        this->actionFunc = BossDodongo_GetUp;
    }
}

void BossDodongo_GetUp(BossDodongo* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);

    if (Animation_OnFrame(&this->skelAnime, Animation_GetLastFrame(&object_kingdodongo_Anim_009D10))) {
        BossDodongo_SetupRoll(this);
    }
}

void BossDodongo_BlowFire(BossDodongo* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f unusedZeroVec1 = { 0.0f, 0.0f, 0.0f };
    Vec3f unusedZeroVec2 = { 0.0f, 0.0f, 0.0f };

    SkelAnime_Update(&this->skelAnime);

    if (Animation_OnFrame(&this->skelAnime, 12.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_CRY);
    }

    if (Animation_OnFrame(&this->skelAnime, 17.0f)) {
        this->unk_1C8 = 28;
    }

    if ((this->skelAnime.curFrame > 17.0f) && (this->skelAnime.curFrame < 35.0f)) {
        BossDodongo_SpawnFire(this, globalCtx, this->unk_1AE);
        this->unk_1AE++;
        Math_SmoothStepToF(&this->unk_244, 0.0f, 1.0f, 8.0f, 0.0f);
    }

    if (this->unk_1DA == 0) {
        BossDodongo_SetupRoll(this);
    }
}

void BossDodongo_Inhale(BossDodongo* this, GlobalContext* GlobalContext) {
    this->unk_1E2 = 1;

    if (this->unk_1AC > 20) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_BREATH - SFX_FLAG);
    }

    Math_SmoothStepToF(&this->unk_208, 0.05f, 1.0f, 0.005f, 0.0f);
    SkelAnime_Update(&this->skelAnime);

    if (this->unk_1DA == 0) {
        BossDodongo_SetupBlowFire(this);
    } else {
        this->unk_1AC++;

        if ((this->unk_1AC > 20) && (this->unk_1AC < 82) && BossDodongo_AteExplosive(this, GlobalContext)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_DRINK);
            BossDodongo_SetupExplode(this);
        }
    }
}

static Vec3f sCornerPositions[] = {
    { -1390.0f, 0.0f, -3804.0f },
    { -1390.0f, 0.0f, -2804.0f },
    { -390.0f, 0.0f, -2804.0f },
    { -390.0f, 0.0f, -3804.0f },
};

void BossDodongo_Walk(BossDodongo* this, GlobalContext* globalCtx) {
    Vec3f* sp4C;
    f32 sp48;
    f32 sp44;

    if (this->unk_1AA == 0) {
        if (Animation_OnFrame(&this->skelAnime, 14.0f)) {
            Animation_PlayLoop(&this->skelAnime, &object_kingdodongo_Anim_01CAE0);
            this->unk_1AA = 1;
        }
    } else if (this->unk_1BC != 2) {
        if (((s32)this->skelAnime.curFrame == 1) || ((s32)this->skelAnime.curFrame == 31)) {
            if ((s32)this->skelAnime.curFrame == 1) {
                Actor_SpawnFloorDustRing(globalCtx, &this->actor, &this->unk_410, 25.0f, 0xA, 8.0f, 0x1F4, 0xA, 0);
            } else {
                Actor_SpawnFloorDustRing(globalCtx, &this->actor, &this->unk_404, 25.0f, 0xA, 8.0f, 0x1F4, 0xA, 0);
            }

            if (this->unk_1BC != 0) {
                func_80078884(NA_SE_EN_DODO_K_WALK);
            } else {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_WALK);
            }

            if (this->cutsceneCamera == 0) {
                func_80033E88(&this->actor, globalCtx, 4, 10);
            } else {
                this->unk_1B6 = 10;
                func_800A9F6C(0.0f, 180, 20, 100);
            }
        }
    }

    SkelAnime_Update(&this->skelAnime);
    sp4C = &sCornerPositions[this->unk_1A0];
    this->unk_1EC = 0.7f;
    Math_SmoothStepToF(&this->unk_1E4, this->unk_1EC * 4.0f, 1.0f, this->unk_1EC * 0.25f, 0.0f);
    Math_SmoothStepToF(&this->actor.world.pos.x, sp4C->x, 0.3f, this->unk_1E4, 0.0f);
    Math_SmoothStepToF(&this->actor.world.pos.z, sp4C->z, 0.3f, this->unk_1E4, 0.0f);
    sp48 = sp4C->x - this->actor.world.pos.x;
    sp44 = sp4C->z - this->actor.world.pos.z;
    Math_SmoothStepToF(&this->unk_1E8, 2000.0f, 1.0f, this->unk_1EC * 80.0f, 0.0f);
    Math_SmoothStepToS(&this->actor.world.rot.y, Math_FAtan2F(sp48, sp44) * 10430.378f, 5,
                       (this->unk_1EC * this->unk_1E8), 5);
    Math_SmoothStepToS(&this->unk_1C4, 0, 2, 2000, 0);

    if ((fabsf(sp48) <= 5.0f) && (fabsf(sp44) <= 5.0f)) {
        this->unk_1E8 = 0.0f;
        this->unk_1E4 = 0.0f;
        if (this->unk_1A2 == 0) {
            this->unk_1A0++;
            if (this->unk_1A0 >= 4) {
                this->unk_1A0 = 0;
            }
        } else {
            this->unk_1A0--;
            if (this->unk_1A0 < 0) {
                this->unk_1A0 = 3;
            }
        }
    }

    if ((this->unk_1DA == 0) && (this->unk_1BC == 0)) {
        if ((this->actor.xzDistToPlayer < 500.0f) && (this->unk_1A4 != 0) && !this->playerPosInRange) {
            BossDodongo_SetupInhale(this);
            BossDodongo_SpawnFire(this, globalCtx, -1);
        }

        if (!this->playerPosInRange && !this->playerYawInRange) {
            BossDodongo_SetupRoll(this);
        }
    }
}

void BossDodongo_Roll(BossDodongo* this, GlobalContext* globalCtx) {
    Vec3f* sp5C;
    Vec3f sp50;
    f32 sp4C;
    f32 sp48;

    this->actor.flags |= 0x1000000;
    SkelAnime_Update(&this->skelAnime);

    if (this->unk_1DA == 10) {
        this->actor.velocity.y = 15.0f;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_CRY);
    }

    if (this->unk_1DA == 1) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_COLI2);
    }

    sp5C = &sCornerPositions[this->unk_1A0];
    this->unk_1EC = 3.0f;

    if (this->unk_1DA == 0) {
        Math_SmoothStepToF(&this->unk_1E4, this->unk_1EC * 5.0f, 1.0f, this->unk_1EC * 0.25f, 0.0f);
        Math_SmoothStepToF(&this->actor.world.pos.x, sp5C->x, 1.0f, this->unk_1E4, 0.0f);
        Math_SmoothStepToF(&this->actor.world.pos.z, sp5C->z, 1.0f, this->unk_1E4, 0.0f);
        this->unk_1C4 += 2000;

        if (this->actor.bgCheckFlags & 1) {
            this->unk_228 = 7700.0f;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_ROLL - SFX_FLAG);

            if ((this->unk_19E & 7) == 0) {
                Camera_AddQuake(&globalCtx->mainCamera, 2, 1, 8);
            }

            if (!(this->unk_19E & 1)) {
                Actor_SpawnFloorDustRing(globalCtx, &this->actor, &this->actor.world.pos, 40.0f, 3, 8.0f, 0x1F4, 0xA,
                                         0);
            }
        }
    }

    sp4C = sp5C->x - this->actor.world.pos.x;
    sp48 = sp5C->z - this->actor.world.pos.z;
    Math_SmoothStepToF(&this->unk_1E8, 2000.0f, 1.0f, this->unk_1EC * 100.0f, 0.0f);
    Math_SmoothStepToS(&this->actor.world.rot.y, Math_FAtan2F(sp4C, sp48) * 10430.378f, 5,
                       this->unk_1EC * this->unk_1E8, 0);

    if (fabsf(sp4C) <= 15.0f && fabsf(sp48) <= 15.0f) {
        this->numWallCollisions++;

        if (this->numWallCollisions >= 2) {
            if (this->unk_1A6 != 0) {
                this->unk_1A2 = 1 - this->unk_1A2;
            }

            this->unk_1E8 = 0.0f;
            this->unk_1E4 = 0.0f;
            BossDodongo_SetupWalk(this);
            this->unk_228 = 9200.0f;
            this->actor.velocity.y = 20.0f;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_COLI);
            Camera_AddQuake(&globalCtx->mainCamera, 2, 6, 8);
            sp50.x = this->actor.world.pos.x;
            sp50.y = this->actor.world.pos.y + 60.0f;
            sp50.z = this->actor.world.pos.z;
            Actor_SpawnFlyingDust(globalCtx, &sp50, 250.0f, 40, 800, 10, 0);
            func_80033E88(&this->actor, globalCtx, 6, 15);
        } else {
            this->actor.velocity.y = 15.0f;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_COLI2);
        }

        if (this->unk_1A2 == 0) {
            this->unk_1A0++;
            if (this->unk_1A0 >= 4) {
                this->unk_1A0 = 0;
            }
        } else {
            this->unk_1A0--;
            if (this->unk_1A0 < 0) {
                this->unk_1A0 = 3;
            }
        }
    }
}

void BossDodongo_Update(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    BossDodongo* this = THIS;
    f32 temp_f0;
    s16 i;
    Player* player = PLAYER;
    Player* player2 = PLAYER;
    s32 pad;

    this->unk_1E2 = 0;
    this->unk_19E++;

    if (this->unk_1DA != 0) {
        this->unk_1DA--;
    }

    if (this->unk_1DC != 0) {
        this->unk_1DC--;
    }

    if (this->unk_1DE != 0) {
        this->unk_1DE--;
    }

    if (this->unk_1C0 != 0) {
        this->unk_1C0--;
    }

    if (this->unk_1C8 != 0) {
        this->unk_1C8--;
    }

    temp_f0 = func_808C4F6C(this, globalCtx);

    if (temp_f0 > 0.0f) {
        this->unk_1A4 = temp_f0;
    } else {
        this->unk_1A4 = 0;
    }

    temp_f0 = func_808C50A8(this, globalCtx);

    if (temp_f0 > 0.0f) {
        this->unk_1A6 = temp_f0;
    } else {
        this->unk_1A6 = 0;
    }

    BossDodongo_PlayerYawCheck(this, globalCtx);
    BossDodongo_PlayerPosCheck(this, globalCtx);

    this->actionFunc(this, globalCtx);

    thisx->shape.rot.y = thisx->world.rot.y;

    Math_SmoothStepToF(&thisx->shape.yOffset, this->unk_228, 1.0f, 100.0f, 0.0f);
    Actor_MoveForwardXZ(thisx);
    BossDodongo_UpdateDamage(this, globalCtx);
    Actor_UpdateBgCheckInfo(globalCtx, thisx, 10.0f, 10.0f, 20.0f, 4);
    Math_SmoothStepToF(&this->unk_208, 0, 1, 0.001f, 0.0);
    Math_SmoothStepToF(&this->unk_20C, 0, 1, 0.001f, 0.0);

    if ((this->unk_19E % 128) == 0) {
        for (i = 0; i < 50; i++) {
            this->unk_324[i] = (Rand_ZeroOne() * 0.25f) + 0.5f;
        }
    }

    for (i = 0; i < 50; i++) {
        this->unk_25C[i] += this->unk_324[i];
    }

    if (this->unk_1C8 != 0) {
        if (this->unk_1C8 >= 11) {
            Math_SmoothStepToF(&this->unk_240, (this->unk_1C8 & 1) ? (40.0f) : (60.0f), 1.0f, 50.0f, 0.0f);
        } else {
            Math_SmoothStepToF(&this->unk_240, 0.0f, 1, 10.0f, 0.0);
        }

        if ((globalCtx->envCtx.unk_8C[1][2] == 0) && (globalCtx->envCtx.unk_8C[0][2] == 0)) {
            globalCtx->envCtx.unk_8C[1][0] = (u8)this->unk_240;
            globalCtx->envCtx.unk_8C[1][1] = (u8)(this->unk_240 * 0.1f);
            globalCtx->envCtx.unk_8C[0][0] = (u8)this->unk_240;
            globalCtx->envCtx.unk_8C[0][1] = (u8)(this->unk_240 * 0.1f);
        }
    }

    if (this->unk_1BE != 0) {
        if (this->unk_1BE >= 1000) {
            Math_SmoothStepToF(&this->colorFilterR, 30.0f, 1, 20.0f, 0.0);
            Math_SmoothStepToF(&this->colorFilterG, 10.0f, 1, 20.0f, 0.0);
        } else {
            this->unk_1BE--;
            Math_SmoothStepToF(&this->colorFilterR, 255.0f, 1, 20.0f, 0.0);
            Math_SmoothStepToF(&this->colorFilterG, 0.0f, 1, 20.0f, 0.0);
        }

        Math_SmoothStepToF(&this->colorFilterB, 0.0f, 1, 20.0f, 0.0);
        Math_SmoothStepToF(&this->colorFilterMin, 900.0f, 1, 10.0f, 0.0);
        Math_SmoothStepToF(&this->colorFilterMax, 1099.0f, 1, 10.0f, 0.0);
    } else {
        Math_SmoothStepToF(&this->colorFilterR, globalCtx->lightCtx.unk_07, 1, 5.0f, 0.0);
        Math_SmoothStepToF(&this->colorFilterG, globalCtx->lightCtx.unk_08, 1.0f, 5.0f, 0.0);
        Math_SmoothStepToF(&this->colorFilterB, globalCtx->lightCtx.unk_09, 1.0f, 5.0f, 0.0);
        Math_SmoothStepToF(&this->colorFilterMin, globalCtx->lightCtx.unk_0A, 1.0, 5.0f, 0.0);
        Math_SmoothStepToF(&this->colorFilterMax, 1000.0f, 1, 5.0f, 0.0);
    }

    if (player->actor.world.pos.y < -1000.0f) {
        s16 phi_s0_3;
        s16 sp90;
        s16 magma2DrawMode;
        s16 magmaScale = 0;

        if (this->unk_224 > 1.9f) {
            phi_s0_3 = 1;
            magma2DrawMode = 0;
            sp90 = 0;
        } else if (this->unk_224 > 1.7f) {
            phi_s0_3 = 3;
            sp90 = 1;
            if (globalCtx) {}
            magma2DrawMode = 0;
        } else if (this->unk_224 > 1.4f) {
            phi_s0_3 = 7;
            sp90 = 3;
            magma2DrawMode = Rand_ZeroOne() * 1.9f;
        } else if (this->unk_224 > 1.1f) {
            phi_s0_3 = 7;
            sp90 = 4095;
            magma2DrawMode = Rand_ZeroOne() * 1.9f;
        } else {
            phi_s0_3 = 1;
            sp90 = -1;
            magma2DrawMode = 1;
            magmaScale = ((s16)(Rand_ZeroOne() * 50)) - 50;
        }

        if (player2->csMode >= 10) {
            phi_s0_3 = -1;
        }

        if ((this->unk_19E & phi_s0_3) == 0) {
            static Color_RGBA8 magmaPrimColor[] = { { 255, 255, 0, 255 }, { 0, 0, 0, 150 } };
            static Color_RGBA8 magmaEnvColor[] = { { 255, 0, 0, 255 }, { 0, 0, 0, 0 } };
            Vec3f sp84;
            f32 temp_f12;
            f32 temp_f10;

            temp_f12 = Rand_ZeroOne() * 330.0f;
            temp_f10 = Rand_ZeroOne() * 6.28f;
            sp84.x = (sinf(temp_f10) * temp_f12) + (-890.0f);
            sp84.y = -1523.76f;
            sp84.z = (cosf(temp_f10) * temp_f12) + (-3304.0f);
            EffectSsGMagma2_Spawn(globalCtx, &sp84, &magmaPrimColor[magma2DrawMode], &magmaEnvColor[magma2DrawMode],
                                  10 - (magma2DrawMode * 5), magma2DrawMode, magmaScale + 100);
        }

        if ((this->unk_19E & sp90) == 0) {
            Vec3f sp6C = { 0.0f, 0.0f, 0.0f };
            Vec3f sp60 = { 0.0f, 0.0f, 0.0f };
            Vec3f sp54;
            f32 sp50 = Rand_ZeroOne() * 330.0f;
            f32 sp4C = Rand_ZeroOne() * 6.28f;

            sp54.x = sinf(sp4C) * sp50 + (-890.0f);
            sp54.y = -1523.76f;
            sp54.z = cosf(sp4C) * sp50 + (-3304.0f);
            EffectSsGMagma_Spawn(globalCtx, &sp54);
            for (i = 0; i < 4; i++) {
                sp60.y = 0.4f;
                sp60.x = Rand_CenteredFloat(0.5f);
                sp60.z = Rand_CenteredFloat(0.5f);
                sp50 = Rand_ZeroOne() * 330.0f;
                sp4C = Rand_ZeroOne() * 6.28f;
                sp54.x = sinf(sp4C) * sp50 + (-890.0f);
                sp54.y = -1513.76f;
                sp54.z = cosf(sp4C) * sp50 + (-3304.0f);
                func_808C17C8(globalCtx, &sp54, &sp6C, &sp60, ((s16)Rand_ZeroFloat(2.0f)) + 6, 0x50);
            }
        }

        func_808C1554(gDodongosCavernBossLavaFloorTex, sLavaFloorLavaTex, this->unk_19E, this->unk_224);
    }

    if (this->unk_1C6 != 0) {
        u16* ptr1 = SEGMENTED_TO_VIRTUAL(sLavaFloorLavaTex);
        u16* ptr2 = SEGMENTED_TO_VIRTUAL(sLavaFloorRockTex);
        s16 i2;

        for (i2 = 0; i2 < 20; i2++) {
            s16 new_var = this->unk_1C2 & 0x7FF;

            ptr1[new_var] = ptr2[new_var];
            this->unk_1C2 += 37;
        }
        Math_SmoothStepToF(&this->unk_224, 0.0f, 1.0f, 0.01f, 0.0f);
    }

    if (this->unk_1BC == 0) {
        if (this->actionFunc != BossDodongo_DeathCutscene) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }

        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);

        if (this->actionFunc == BossDodongo_Roll) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
    }

    this->collider.elements[0].dim.scale = (this->actionFunc == BossDodongo_Inhale) ? 0.0f : 1.0f;

    for (i = 6; i < 19; i++) {
        if (i != 12) {
            this->collider.elements[i].dim.scale = (this->actionFunc == BossDodongo_Roll) ? 0.0f : 1.0f;
        }
    }

    if (this->unk_244 != 0) {
        MREG(64) = 1;
        MREG(65) = 255;
        MREG(66) = 80;
        MREG(67) = 0;
        MREG(68) = (u8)this->unk_244;
    } else {
        MREG(64) = 0;
    }

    Math_SmoothStepToF(&this->unk_244, 0.0f, 1.0f, 2.0f, 0.0f);
    BossDodongo_UpdateEffects(globalCtx);
}

s32 BossDodongo_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                 void* thisx) {
    f32 mtxScaleY;
    f32 mtxScaleZ;
    BossDodongo* this = THIS;
    // required for matching
    if ((limbIndex == 6) || (limbIndex == 7)) {
        if (this->unk_25C) {}
        goto block_1;
    }
block_1:
    Matrix_JointPosition(pos, rot);

    if (*dList != NULL) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_dodongo.c", 3787);

        mtxScaleZ = 1.0f;
        mtxScaleY = 1.0f;

        if ((limbIndex == 33) || (limbIndex == 48)) {
            mtxScaleY = mtxScaleZ = this->unk_1F8;
        }

        Matrix_Push();
        Matrix_Scale(1.0f, mtxScaleY, mtxScaleZ, MTXMODE_APPLY);

        if ((limbIndex != 6) && (limbIndex != 7)) {
            Matrix_RotateX(this->unk_25C[limbIndex] * 0.115f, MTXMODE_APPLY);
            Matrix_RotateY(this->unk_25C[limbIndex] * 0.13f, MTXMODE_APPLY);
            Matrix_RotateZ(this->unk_25C[limbIndex] * 0.1f, MTXMODE_APPLY);
            Matrix_Scale(1.0f - this->unk_208, this->unk_208 + 1.0f, 1.0f - this->unk_208, MTXMODE_APPLY);
            Matrix_RotateZ(-(this->unk_25C[limbIndex] * 0.1f), MTXMODE_APPLY);
            Matrix_RotateY(-(this->unk_25C[limbIndex] * 0.13f), MTXMODE_APPLY);
            Matrix_RotateX(-(this->unk_25C[limbIndex] * 0.115f), MTXMODE_APPLY);
        }

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_dodongo.c", 3822),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, *dList);
        Matrix_Pop();

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_dodongo.c", 3826);
    }
    { s32 pad; } // Required to match
    return 1;
}

void BossDodongo_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f D_808CA450 = { 5000.0f, -2500.0f, 0.0f };
    static Vec3f D_808CA45C = { 0.0f, 0.0f, 0.0f };
    static Vec3f D_808CA468 = { 11500.0f, -3000.0f, 0.0f };
    static Vec3f D_808CA474 = { 5000.0f, -2000.0f, 0.0f };
    static Vec3f D_808CA480 = { 8000.0f, 0.0f, 0.0f };
    static Vec3f D_808CA48C = { 8000.0f, 0.0f, 0.0f };
    BossDodongo* this = THIS;

    if (limbIndex == 6) {
        Matrix_MultVec3f(&D_808CA45C, &this->vec);
        Matrix_MultVec3f(&D_808CA450, &this->actor.focus.pos);
        Matrix_MultVec3f(&D_808CA468, &this->firePos);
        Matrix_MultVec3f(&D_808CA474, &this->mouthPos);
    } else if (limbIndex == 39) {
        Matrix_MultVec3f(&D_808CA480, &this->unk_410);
    } else if (limbIndex == 46) {
        Matrix_MultVec3f(&D_808CA48C, &this->unk_404);
    }
    Collider_UpdateSpheres(limbIndex, &this->collider);
}

void BossDodongo_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BossDodongo* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_dodongo.c", 3922);
    func_80093D18(globalCtx->state.gfxCtx);

    if ((this->unk_1C0 >= 2) && (this->unk_1C0 & 1)) {
        POLY_OPA_DISP = Gfx_SetFog(POLY_OPA_DISP, 255, 255, 255, 0, 900, 1099);
    } else {
        POLY_OPA_DISP = Gfx_SetFog(POLY_OPA_DISP, (u32)this->colorFilterR, (u32)this->colorFilterG,
                                   (u32)this->colorFilterB, 0, this->colorFilterMin, this->colorFilterMax);
    }

    Matrix_RotateZ(this->unk_23C, MTXMODE_APPLY);
    Matrix_RotateX((this->unk_1C4 / 32768.0f) * 3.14159f, MTXMODE_APPLY);

    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, BossDodongo_OverrideLimbDraw,
                      BossDodongo_PostLimbDraw, this);

    POLY_OPA_DISP = func_800BC8A0(globalCtx, POLY_OPA_DISP);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_dodongo.c", 3981);

    BossDodongo_DrawEffects(globalCtx);
}

f32 func_808C4F6C(BossDodongo* this, GlobalContext* globalCtx) {
    f32 xDiff;
    f32 zDiff;
    f32 sp2C;
    s32 pad;
    f32 temp_f2;
    f32 rotation;
    Player* player = PLAYER;

    xDiff = player->actor.world.pos.x - this->actor.world.pos.x;
    zDiff = player->actor.world.pos.z - this->actor.world.pos.z;

    rotation = Math_CosS(-this->actor.world.rot.y);
    sp2C = (Math_SinS(-this->actor.world.rot.y) * zDiff) + (rotation * xDiff);
    rotation = Math_SinS(-this->actor.world.rot.y);
    temp_f2 = (Math_CosS(-this->actor.world.rot.y) * zDiff) + (-rotation * xDiff);

    if ((fabsf(sp2C) < 150.0f) && (temp_f2 >= 100.0f) && (temp_f2 <= 2000.0f)) {
        return temp_f2;
    }
    return -1.0f;
}

f32 func_808C50A8(BossDodongo* this, GlobalContext* globalCtx) {
    f32 xDiff;
    f32 zDiff;
    f32 sp2C;
    s32 pad;
    f32 temp_f2;
    f32 rotation;
    Player* player = PLAYER;

    xDiff = player->actor.world.pos.x - this->actor.world.pos.x;
    zDiff = player->actor.world.pos.z - this->actor.world.pos.z;

    rotation = Math_CosS(-0x8000 - this->actor.world.rot.y);
    sp2C = (Math_SinS(-0x8000 - this->actor.world.rot.y) * zDiff) + (rotation * xDiff);
    rotation = Math_SinS(-0x8000 - this->actor.world.rot.y);
    temp_f2 = (Math_CosS(-0x8000 - this->actor.world.rot.y) * zDiff) + (-rotation * xDiff);

    if ((fabsf(sp2C) < 150.0f) && (100.0f <= temp_f2) && (temp_f2 <= 2000.0f)) {
        return temp_f2;
    }

    return -1.0f;
}

void BossDodongo_PlayerYawCheck(BossDodongo* this, GlobalContext* globalCtx) {
    s16 yawDiff = Actor_WorldYawTowardActor(&this->actor, &PLAYER->actor) - this->actor.world.rot.y;

    if ((yawDiff < 0x38E3) && (-0x38E3 < yawDiff)) {
        this->playerYawInRange = true;
    } else {
        this->playerYawInRange = false;
    }
}

void BossDodongo_PlayerPosCheck(BossDodongo* this, GlobalContext* globalCtx) {
    Vec3f* temp_v1;
    s16 i;

    this->playerPosInRange = false;

    for (i = 0; i < 4; i++) {
        temp_v1 = &sCornerPositions[i];

        if ((fabsf(this->actor.world.pos.x - temp_v1->x) < 200.0f) &&
            (fabsf(this->actor.world.pos.z - temp_v1->z) < 200.0f)) {
            this->playerPosInRange = true;
            break;
        }
    }
}

void BossDodongo_SpawnFire(BossDodongo* this, GlobalContext* globalCtx, s16 params) {
    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_BDFIRE, this->vec.x, this->vec.y - 20.0f,
                       this->vec.z, 0, this->actor.shape.rot.y, 0, params);
}

void BossDodongo_UpdateDamage(BossDodongo* this, GlobalContext* globalCtx) {
    s32 pad;
    ColliderInfo* item1;
    u8 swordDamage;
    s32 damage;
    ColliderInfo* item2;
    s16 i;

    if ((this->health <= 0) && (this->actionFunc != BossDodongo_DeathCutscene)) {
        BossDodongo_SetupDeathCutscene(this);
        Enemy_StartFinishingBlow(globalCtx, &this->actor);
        return;
    }

    if (this->unk_1C0 == 0) {
        if (this->actionFunc == BossDodongo_Inhale) {
            for (i = 0; i < 19; i++) {
                if (this->collider.elements[i].info.bumperFlags & 2) {
                    item1 = this->collider.elements[i].info.acHitInfo;
                    item2 = item1;

                    if ((item2->toucher.dmgFlags & 0x10) || (item2->toucher.dmgFlags & 4)) {
                        this->collider.elements[i].info.bumperFlags &= ~2;
                        this->unk_1C0 = 2;
                        BossDodongo_SetupWalk(this);
                        this->unk_1DA = 0x32;
                        return;
                    }
                }
            }
        }

        if (this->collider.elements->info.bumperFlags & 2) {
            this->collider.elements->info.bumperFlags &= ~2;
            item1 = this->collider.elements[0].info.acHitInfo;
            if ((this->actionFunc == BossDodongo_Vulnerable) || (this->actionFunc == BossDodongo_LayDown)) {
                swordDamage = damage = CollisionCheck_GetSwordDamage(item1->toucher.dmgFlags);

                if (damage != 0) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_DAMAGE);
                    BossDodongo_SetupDamaged(this);
                    this->unk_1C0 = 5;
                    this->health -= swordDamage;
                }
            }
        }
    }
}

void BossDodongo_SetupDeathCutscene(BossDodongo* this) {
    this->actor.speedXZ = 0.0f;
    this->unk_1E4 = 0.0f;
    Animation_Change(&this->skelAnime, &object_kingdodongo_Anim_002D0C, 1.0f, 0.0f,
                     Animation_GetLastFrame(&object_kingdodongo_Anim_002D0C), ANIMMODE_ONCE, -5.0f);
    this->actionFunc = BossDodongo_DeathCutscene;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_DEAD);
    this->unk_1DA = 0;
    this->csState = 0;
    this->actor.flags &= ~5;
    this->unk_1BC = 1;
    Audio_QueueSeqCmd(0x100100FF);
}

void BossDodongo_DeathCutscene(BossDodongo* this, GlobalContext* globalCtx) {
    Vec3f* cornerPos;
    Vec3f sp198;
    Vec3f sp184;
    f32 tempSin;
    f32 tempCos;
    f32 sp178;
    s16 i;
    Vec3f effectPos;
    Camera* camera;
    Player* player = PLAYER;

    SkelAnime_Update(&this->skelAnime);

    switch (this->csState) {
        case 0:
            this->csState = 5;
            func_80064520(globalCtx, &globalCtx->csCtx);
            func_8002DF54(globalCtx, &this->actor, 1);
            this->cutsceneCamera = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, MAIN_CAM, CAM_STAT_UNK3);
            Gameplay_ChangeCameraStatus(globalCtx, this->cutsceneCamera, CAM_STAT_ACTIVE);
            camera = Gameplay_GetCamera(globalCtx, MAIN_CAM);
            this->cameraEye.x = camera->eye.x;
            this->cameraEye.y = camera->eye.y;
            this->cameraEye.z = camera->eye.z;
            this->cameraAt.x = camera->at.x;
            this->cameraAt.y = camera->at.y;
            this->cameraAt.z = camera->at.z;
            break;
        case 5:
            tempSin = Math_SinS(this->actor.shape.rot.y - 0x1388) * 150.0f;
            tempCos = Math_CosS(this->actor.shape.rot.y - 0x1388) * 150.0f;
            Math_SmoothStepToF(&player->actor.world.pos.x, this->actor.world.pos.x + tempSin, 0.5f, 5.0f, 0.0f);
            Math_SmoothStepToF(&player->actor.world.pos.z, this->actor.world.pos.z + tempCos, 0.5f, 5.0f, 0.0f);
            Math_SmoothStepToF(&this->unk_208, 0.07f, 1.0f, 0.005f, 0.0f);
            tempSin = Math_SinS(this->actor.world.rot.y) * 230.0f;
            tempCos = Math_CosS(this->actor.world.rot.y) * 230.0f;
            Math_SmoothStepToF(&this->cameraEye.x, this->actor.world.pos.x + tempSin, 0.2f, 50.0f, 0.1f);
            Math_SmoothStepToF(&this->cameraEye.y, this->actor.world.pos.y + 20.0f, 0.2f, 50.0f, 0.1f);
            Math_SmoothStepToF(&this->cameraEye.z, this->actor.world.pos.z + tempCos, 0.2f, 50.0f, 0.1f);
            Math_SmoothStepToF(&this->cameraAt.x, this->actor.world.pos.x, 0.2f, 30.0f, 0.1f);
            Math_SmoothStepToF(&this->cameraAt.y, this->actor.focus.pos.y - 70.0f, 0.2f, 30.0f, 0.1f);
            Math_SmoothStepToF(&this->cameraAt.z, this->actor.world.pos.z, 0.2f, 30.0f, 0.1f);
            if (Animation_OnFrame(&this->skelAnime, Animation_GetLastFrame(&object_kingdodongo_Anim_002D0C))) {
                Animation_Change(&this->skelAnime, &object_kingdodongo_Anim_003CF8, 1.0f, 0.0f,
                                 Animation_GetLastFrame(&object_kingdodongo_Anim_003CF8), ANIMMODE_ONCE, -1.0f);
                this->csState = 6;
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BG_BREAKWALL, -890.0f, -1523.76f, -3304.0f, 0, 0, 0,
                            0x6000);
            }
            break;
        case 6:
            Math_SmoothStepToF(&this->cameraAt.x, this->actor.world.pos.x, 0.2f, 30.0f, 0.1f);
            Math_SmoothStepToF(&this->cameraAt.y, (this->actor.world.pos.y - 70.0f) + 130.0f, 0.2f, 20.0f, 0.1f);
            Math_SmoothStepToF(&this->cameraAt.z, this->actor.world.pos.z, 0.2f, 30.0f, 0.1f);

            if (Animation_OnFrame(&this->skelAnime, Animation_GetLastFrame(&object_kingdodongo_Anim_003CF8))) {
                Animation_Change(&this->skelAnime, &object_kingdodongo_Anim_00DF38, 1.0f, 30.0f, 59.0f, ANIMMODE_ONCE,
                                 -1.0f);
                this->csState = 7;
                this->unk_228 = 7700.0f;
                this->unk_204 = 0.0f;
                this->unk_1E4 = 0.0f;
                this->numWallCollisions = 0;
                this->unk_19E = 0;
            }
            break;
        case 7:
            this->unk_1C4 += 0x7D0;
            Math_SmoothStepToF(&this->cameraAt.x, this->actor.world.pos.x, 0.2f, 30.0f, 0.0f);
            Math_SmoothStepToF(&this->cameraAt.y, (this->actor.world.pos.y - 70.0f) + 130.0f, 0.2f, 20.0f, 0.0f);
            Math_SmoothStepToF(&this->cameraAt.z, this->actor.world.pos.z, 0.2f, 30.0f, 0.0f);
            Math_SmoothStepToF(&this->cameraEye.x, -890.0f, 0.1f, this->unk_204 * 5.0f, 0.1f);
            Math_SmoothStepToF(&this->cameraEye.z, -3304.0f, 0.1f, this->unk_204 * 5.0f, 0.1f);
            Math_SmoothStepToF(&this->unk_204, 1.0f, 1.0f, 0.1f, 0.0f);
            if (this->unk_1DA == 1) {
                this->csState = 8;
                this->actor.speedXZ = this->unk_1E4 / 1.5f;
                if (this->unk_1A2 == 0) {
                    this->unk_238 = 250.0f;
                } else {
                    this->unk_238 = -250.0f;
                }
                this->unk_1DA = 1000;
                this->unk_234 = 2000.0f;
            } else {
                cornerPos = &sCornerPositions[this->unk_1A0];
                this->unk_1EC = 3.0f;
                Math_SmoothStepToF(&this->unk_1E4, this->unk_1EC * 5.0f, 1.0f, this->unk_1EC * 0.25f, 0.0f);
                tempSin = cornerPos->x - this->actor.world.pos.x;
                tempCos = cornerPos->z - this->actor.world.pos.z;
                sp178 = sqrtf(SQ(tempSin) + SQ(tempCos)) - 200.0f;
                if ((sqrtf(SQ(tempSin) + SQ(tempCos)) < 200.0f) || (this->unk_1DA != 0)) {
                    sp178 = 0.0f;
                }
                sp178 = CLAMP_MAX(sp178, 70.0f);
                this->unk_23C = (Math_SinS(this->unk_19E * 1000) * -50.0f) / 100.0f;

                sp198.x = Math_SinS(this->unk_19E * 1000) * sp178;
                sp198.y = sp198.z = 0.0f;

                Matrix_RotateY(this->actor.shape.rot.y * (M_PI / 0x8000), MTXMODE_NEW);
                Matrix_MultVec3f(&sp198, &sp184);

                Math_SmoothStepToF(&this->actor.world.pos.x, cornerPos->x + sp184.x, 1.0f, this->unk_1E4, 0.0f);
                Math_SmoothStepToF(&this->actor.world.pos.z, cornerPos->z + sp184.z, 1.0f, this->unk_1E4, 0.0f);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_ROLL - SFX_FLAG);
                if ((this->unk_19E & 7) == 0) {
                    Camera_AddQuake(&globalCtx->mainCamera, 2, 1, 8);
                }
                if (!(this->unk_19E & 1)) {
                    Actor_SpawnFloorDustRing(globalCtx, &this->actor, &this->actor.world.pos, 40.0f, 3, 8.0f, 0x1F4,
                                             0xA, 0);
                }
                tempSin = cornerPos->x - this->actor.world.pos.x;
                tempCos = cornerPos->z - this->actor.world.pos.z;
                Math_SmoothStepToF(&this->unk_1E8, 1500.0f, 1.0f, this->unk_1EC * 100.0f, 0.0f);
                Math_SmoothStepToS(&this->actor.world.rot.y, (Math_FAtan2F(tempSin, tempCos) * 10430.378f), 5,
                                   (this->unk_1EC * this->unk_1E8), 0);

                if ((fabsf(tempSin) <= 15.0f) && (fabsf(tempCos) <= 15.0f)) {
                    Vec3f dustPos;

                    this->actor.velocity.y = 15.0f;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_COLI2);
                    if (this->unk_1A2 == 0) {
                        this->unk_1A0 = this->unk_1A0 + 1;
                        if (this->unk_1A0 >= 4) {
                            this->unk_1A0 = 0;
                        }
                    } else {
                        this->unk_1A0--;
                        if (this->unk_1A0 < 0) {
                            this->unk_1A0 = 3;
                        }
                    }
                    this->unk_1DA = 0xA;
                    dustPos.x = this->actor.world.pos.x;
                    dustPos.y = this->actor.world.pos.y + 60.0f;
                    dustPos.z = this->actor.world.pos.z;
                    Actor_SpawnFlyingDust(globalCtx, &dustPos, 250.0f, 0x28, 0x320, 0xA, 0);
                }
            }
            break;
        case 8:
        case 9:
            if (this->unk_1DA == 884) {
                Animation_Change(&this->skelAnime, &object_kingdodongo_Anim_0042A8, 1.0f, 0.0f,
                                 (f32)Animation_GetLastFrame(&object_kingdodongo_Anim_0042A8), ANIMMODE_LOOP, -20.0f);
                tempSin = this->cameraEye.x - this->actor.world.pos.x;
                tempCos = this->cameraEye.z - this->actor.world.pos.z;
                this->unk_22C = sqrtf(SQ(tempSin) + SQ(tempCos));
                this->unk_230 = Math_FAtan2F(tempSin, tempCos);
                this->unk_1DC = 350;
                this->csState = 9;
            }
            if (this->unk_1DA < 854) {
                for (i = 0; i < 2; i++) {
                    func_808C12C4(D_808C7000, this->unk_1CC);
                    if (this->unk_1CC < 256) {
                        this->unk_1CC++;
                    }
                }
            }
            if (this->unk_1DA < 984) {
                Math_SmoothStepToS(&this->unk_1C4, -0x4000, 0xA, 0x12C, 0);
            }
            if (this->unk_1DA == 904) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_END);
            }
            if (this->unk_1DA < 854) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_LAST - SFX_FLAG);
            }
            if (this->unk_1DA == 960) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_LAVA);
            }
            if (this->unk_1DA < 960) {
                Math_SmoothStepToF(&this->actor.shape.shadowScale, 0.0f, 1.0f, 10.0f, 0.0f);
                if (this->unk_1DA >= 710) {

                    if (this->unk_1DA == 710) {
                        Vec3f sp124[] = {
                            { -440.0f, 0.0f, -3304.0f },
                            { -890.0f, 0.0f, -3754.0f },
                            { -1340.0f, 0.0f, -3304.0f },
                            { -890.0f, 0.0f, -2854.0f },
                        };
                        Vec3f spF4[] = {
                            { -890.0f, 0.0f, -2854.0f },
                            { -440.0f, 0.0f, -3304.0f },
                            { -890.0f, 0.0f, -3754.0f },
                            { -1340.0f, 0.0f, -3304.0f },
                        };
                        Vec3f* phi_v0_2;

                        this->unk_1C6 = 1;
                        if (this->unk_1A2 == 0) {
                            phi_v0_2 = &sp124[this->unk_1A0];
                        } else {
                            phi_v0_2 = &spF4[this->unk_1A0];
                        }
                        player->actor.world.pos.x = phi_v0_2->x;
                        player->actor.world.pos.z = phi_v0_2->z;
                        this->unk_204 = 0.0f;
                    }
                    if (this->unk_1DA >= 885) {
                        Math_SmoothStepToF(&this->unk_228, 200.0, 0.2f, 100.0f, 0.0f);
                    } else {
                        Math_SmoothStepToF(&this->unk_228, -6600.0f, 0.2f, 30.0f, 0.0f);
                    }
                    {
                        static Vec3f dustVel = { 0.0f, 0.0f, 0.0f };
                        static Vec3f dustAcell = { 0.0f, 1.0f, 0.0f };
                        static Color_RGBA8 dustPrimColor = { 255, 255, 100, 255 };
                        static Color_RGBA8 dustEnvColor = { 255, 100, 0, 255 };
                        s16 colorIndex;
                        Color_RGBA8 magmaPrimColor2[] = { { 255, 255, 0, 255 }, { 0, 0, 0, 100 } };
                        Color_RGBA8 magmaEnvColor2[] = { { 255, 0, 0, 255 }, { 0, 0, 0, 0 } };

                        effectPos.x = Rand_CenteredFloat(120.0f) + this->actor.focus.pos.x;
                        effectPos.y = Rand_ZeroFloat(50.0f) + this->actor.world.pos.y;
                        effectPos.z = Rand_CenteredFloat(120.0f) + this->actor.focus.pos.z;
                        func_8002836C(globalCtx, &effectPos, &dustVel, &dustAcell, &dustPrimColor, &dustEnvColor, 0x1F4,
                                      0xA, 0xA);
                        effectPos.x = Rand_CenteredFloat(120.0f) + this->actor.focus.pos.x;
                        effectPos.y = -1498.76f;
                        effectPos.z = Rand_CenteredFloat(120.0f) + this->actor.focus.pos.z;
                        colorIndex = (Rand_ZeroOne() * 1.9f);
                        EffectSsGMagma2_Spawn(globalCtx, &effectPos, &magmaPrimColor2[colorIndex],
                                              &magmaEnvColor2[colorIndex], 10 - (colorIndex * 5), colorIndex,
                                              (s16)(Rand_ZeroOne() * 100.0f) + 100);
                    }
                }
            } else {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_ROLL - SFX_FLAG);
                if (!(this->unk_19E & 1)) {
                    Actor_SpawnFloorDustRing(globalCtx, &this->actor, &this->actor.world.pos, 40.0f, 3, 8.0f, 0x1F4,
                                             0xA, 0);
                }
            }
            Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 0.2f, 0.1f, 0.0f);
            this->actor.world.rot.y += (s16)this->unk_238;
            this->unk_1C4 += (s16)this->unk_234;
            if (this->unk_1DA >= 0x367) {
                if (this->unk_1A2 == 0) {
                    if (this->unk_238 < 450.0f) {
                        this->unk_238 += 10.0f;
                    }
                } else if (-450.0f < this->unk_238) {
                    this->unk_238 -= 10.0f;
                }
            } else {
                Math_SmoothStepToF(&this->unk_238, 0.0f, 0.05f, 40.0f, 0.0f);
            }
            Math_SmoothStepToF(&this->unk_234, 0.0f, 0.2f, 17.0f, 0.0f);
            Math_SmoothStepToF(&this->cameraAt.x, this->actor.world.pos.x, 0.2f, 30.0f, 0.0f);
            Math_SmoothStepToF(&this->cameraAt.y, (this->actor.world.pos.y - 70.0f) + 130.0f, 0.2f, 20.0f, 0.0f);
            Math_SmoothStepToF(&this->cameraAt.z, this->actor.world.pos.z, 0.2f, 30.0f, 0.0f);
            if (this->csState == 9) {
                if (this->unk_1DA < 0x2C6) {
                    Vec3f spAC[] = { { -390.0f, 0.0f, -3304.0f },
                                     { -890.0f, 0.0f, -3804.0f },
                                     { -1390.0f, 0.0f, -3304.0f },
                                     { -890.0f, 0.0f, -2804.0f } };

                    Vec3f sp7C[] = { { -890.0f, 0.0f, -2804.0f },
                                     { -390.0f, 0.0f, -3304.0f },
                                     { -890.0f, 0.0f, -3804.0f },
                                     { -1390.0f, 0.0f, -3304.0f } };
                    Vec3f* sp78;
                    s32 pad74;

                    if (this->unk_1A2 == 0) {
                        sp78 = &spAC[this->unk_1A0];
                    } else {
                        sp78 = &sp7C[this->unk_1A0];
                    }

                    Math_SmoothStepToF(&this->cameraEye.x, sp78->x, 0.2f, this->unk_204 * 20.0f, 0.0f);
                    Math_SmoothStepToF(&this->cameraEye.y, player->actor.world.pos.y + 30.0f, 0.1f,
                                       this->unk_204 * 20.0f, 0.0f);
                    Math_SmoothStepToF(&this->cameraEye.z, sp78->z, 0.1f, this->unk_204 * 20.0f, 0.0f);
                    Math_SmoothStepToF(&this->unk_204, 1.0f, 1.0f, 0.02f, 0.0f);
                } else {
                    if (this->unk_1A2 == 0) {
                        this->unk_230 += 0.01f;
                    } else {
                        this->unk_230 -= 0.01f;
                    }
                    Math_SmoothStepToF(&this->unk_22C, 220.0f, 0.1f, 5.0f, 0.1f);
                    tempSin = sinf(this->unk_230) * (*this).unk_22C;
                    tempCos = cosf(this->unk_230) * (*this).unk_22C;
                    Math_SmoothStepToF(&this->cameraEye.x, this->actor.world.pos.x + tempSin, 0.2f, 50.0f, 0.0f);
                    Math_SmoothStepToF(&this->cameraEye.y, this->actor.world.pos.y + 20.0f, 0.2f, 50.0f, 0.0f);
                    Math_SmoothStepToF(&this->cameraEye.z, this->actor.world.pos.z + tempCos, 0.2f, 50.0f, 0.0f);
                    Math_SmoothStepToF(&this->unk_23C, 0.0f, 0.2f, 0.01f, 0.0f);
                }
            } else {

                if (this->unk_1A2 == 0) {
                    Math_SmoothStepToF(&this->unk_23C, -0.5f, 0.2f, 0.05f, 0.0f);
                } else {
                    Math_SmoothStepToF(&this->unk_23C, 0.5f, 0.2f, 0.05f, 0.0f);
                }

                Math_SmoothStepToF(&this->cameraEye.x, -890.0f, 0.1f, this->unk_204 * 5.0f, 0.1f);
                Math_SmoothStepToF(&this->cameraEye.z, -3304.0f, 0.1f, this->unk_204 * 5.0f, 0.1f);
                Math_SmoothStepToF(&this->unk_204, 1.0f, 1.0f, 0.05f, 0.0f);
            }

            if (this->unk_1DA == 820) {
                Audio_QueueSeqCmd(0x21);
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART,
                            Math_SinS(this->actor.shape.rot.y) * -50.0f + this->actor.world.pos.x,
                            this->actor.world.pos.y,
                            Math_CosS(this->actor.shape.rot.y) * -50.0f + this->actor.world.pos.z, 0, 0, 0, 0);
            }
            if (this->unk_1DA == 600) {
                camera = Gameplay_GetCamera(globalCtx, MAIN_CAM);
                camera->eye = this->cameraEye;
                camera->eyeNext = this->cameraEye;
                camera->at = this->cameraAt;
                func_800C08AC(globalCtx, this->cutsceneCamera, 0);
                this->unk_1BC = 0;
                this->cutsceneCamera = MAIN_CAM;
                this->csState = 100;
                Gameplay_ChangeCameraStatus(globalCtx, MAIN_CAM, CAM_STAT_ACTIVE);
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, -890.0f, -1523.76f,
                                   -3304.0f, 0, 0, 0, 0);
                this->skelAnime.playSpeed = 0.0f;
                Flags_SetClear(globalCtx, globalCtx->roomCtx.curRoom.num);
            }
        case 100:
            if ((this->unk_1DA < 0x2C6) && (Rand_ZeroOne() < 0.5f)) {
                Vec3f sp68;
                Color_RGBA8 D_808CA568 = { 0, 0, 0, 100 };
                Color_RGBA8 D_808CA56C = { 0, 0, 0, 0 };

                sp68.x = Rand_CenteredFloat(60.0f) + this->actor.focus.pos.x;
                sp68.y = (Rand_ZeroOne() * 50.0f) + -1498.76f;
                sp68.z = Rand_CenteredFloat(60.0f) + this->actor.focus.pos.z;
                EffectSsGMagma2_Spawn(globalCtx, &sp68, &D_808CA568, &D_808CA56C, 5, 1,
                                      (s16)(Rand_ZeroOne() * 50.0f) + 50);
            }
            break;
    }
    if (this->cutsceneCamera != MAIN_CAM) {
        Gameplay_CameraSetAtEye(globalCtx, this->cutsceneCamera, &this->cameraAt, &this->cameraEye);
    }
}

void BossDodongo_UpdateEffects(GlobalContext* globalCtx) {
    BossDodongoEffect* eff = (BossDodongoEffect*)globalCtx->specialEffects;
    Color_RGB8 effectColors[] = { { 255, 128, 0 }, { 255, 0, 0 }, { 255, 255, 0 }, { 255, 0, 0 } };
    s16 colorIndex;
    s16 i;

    for (i = 0; i < 80; i++, eff++) {
        if (eff->unk_24 != 0) {
            eff->unk_00.x += eff->unk_0C.x;
            eff->unk_00.y += eff->unk_0C.y;
            eff->unk_00.z += eff->unk_0C.z;
            eff->unk_25++;
            eff->unk_0C.x += eff->unk_18.x;
            eff->unk_0C.y += eff->unk_18.y;
            eff->unk_0C.z += eff->unk_18.z;
            if (eff->unk_24 == 1) {
                colorIndex = eff->unk_25 % 4;
                eff->color.r = effectColors[colorIndex].r;
                eff->color.g = effectColors[colorIndex].g;
                eff->color.b = effectColors[colorIndex].b;
                eff->alpha -= 20;
                if (eff->alpha <= 0) {
                    eff->alpha = 0;
                    eff->unk_24 = 0;
                }
            }
        }
    }
}

void BossDodongo_DrawEffects(GlobalContext* globalCtx) {
    MtxF* unkMtx;
    s16 i;
    u8 phi_s3 = 0;
    BossDodongoEffect* eff;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;

    eff = (BossDodongoEffect*)globalCtx->specialEffects;

    OPEN_DISPS(gfxCtx, "../z_boss_dodongo.c", 5228);

    func_80093D84(globalCtx->state.gfxCtx);
    unkMtx = &globalCtx->mf_11DA0;

    for (i = 0; i < 80; i++, eff++) {
        if (eff->unk_24 == 1) {
            gDPPipeSync(POLY_XLU_DISP++);

            if (phi_s3 == 0) {
                gSPDisplayList(POLY_XLU_DISP++, object_kingdodongo_DL_009D50);
                phi_s3++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, eff->color.r, eff->color.g, eff->color.b, eff->alpha);
            Matrix_Translate(eff->unk_00.x, eff->unk_00.y, eff->unk_00.z, MTXMODE_NEW);
            func_800D1FD4(unkMtx);
            Matrix_Scale(eff->unk_2C, eff->unk_2C, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_dodongo.c", 5253),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_kingdodongo_DL_009DD0);
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_boss_dodongo.c", 5258);
}
