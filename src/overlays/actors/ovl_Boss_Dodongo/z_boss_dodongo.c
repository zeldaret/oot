#include "z_boss_dodongo.h"

#define FLAGS 0x00000035

#define THIS ((BossDodongo*)thisx)

void BossDodongo_Init(Actor* thisx, GlobalContext* globalCtx);
void BossDodongo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossDodongo_Update(Actor* thisx, GlobalContext* globalCtx);
void BossDodongo_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808C1C80(BossDodongo* this, GlobalContext* globalCtx);
void func_808C1D00(BossDodongo* this, GlobalContext* globalCtx);
void func_808C32F4(BossDodongo* this, GlobalContext* globalCtx);
void func_808C3224(BossDodongo* this, GlobalContext* globalCtx);
void func_808C30F4(BossDodongo* this, GlobalContext* globalCtx);
void func_808C3704(BossDodongo* this, GlobalContext* globalCtx);
void func_808C52E0(BossDodongo* this, GlobalContext* globalCtx, s16 arg2);
void func_808C2C78(BossDodongo* this, GlobalContext* globalCtx);
void func_808C2ECC(BossDodongo* this, GlobalContext* globalCtx);
void func_808C2FAC(BossDodongo* this, GlobalContext* globalCtx);
void func_808C3094(BossDodongo* this, GlobalContext* globalCtx);
void func_808C29B0(BossDodongo* this);
void func_808C5578(BossDodongo* this, GlobalContext* globalCtx);
void func_808C54C0(BossDodongo* this);
void func_808C2BC8(BossDodongo* this, GlobalContext* globalCtx);
void func_808C5354(BossDodongo* this, GlobalContext* globalCtx);
void func_808C524C(BossDodongo* this, GlobalContext* globalCtx);
void func_808C51F4(BossDodongo* this, GlobalContext* globalCtx);
f32 func_808C4F6C(BossDodongo* this, GlobalContext* globalCtx);
f32 func_808C50A8(BossDodongo* this, GlobalContext* globalCtx);
void BossDodongo_DrawEffect(GlobalContext* globalCtx);
s32 BossDodongo_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                 Actor* thisx);
void BossDodongo_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx);

const ActorInit Boss_Dodongo_InitVars = {
    ACTOR_EN_DODONGO,
    ACTORTYPE_BOSS,
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
    ICHAIN_U8(unk_1F, 5, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 12, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -3000.0f, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 8200.0f, ICHAIN_STOP),
};

extern SkeletonHeader D_0601B310;
extern AnimationHeader D_0600F0D8;
extern UNK_PTR D_030021D8;
extern AnimationHeader D_06008EEC;
extern UNK_TYPE D_06017410; // Title card
extern AnimationHeader D_0601CAE0;
extern AnimationHeader D_06008EEC;
extern AnimationHeader D_060061D4;
extern AnimationHeader D_0600DF38;
extern AnimationHeader D_0600E848;
extern AnimationHeader D_06004E0C;
extern AnimationHeader D_060042A8;
extern AnimationHeader D_06009D10;
extern AnimationHeader D_0601D934;
extern AnimationHeader D_06002D0C;
extern AnimationHeader D_060042A8;
extern AnimationHeader D_06001074;
extern s16 D_06015890[];
extern s16 D_06017210[];
extern s16 D_06015D90[];
extern s16 D_06016390[];
extern s16 D_06016590[];
extern s16 D_06016790[];
extern s16 D_06015990[];
extern s16 D_06015F90[];
extern s16 D_06016990[];
extern s16 D_06016E10[];
extern Gfx* D_06009D50[];
extern Gfx* D_06009DD0[];

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

void func_808C12C4(s16* arg1, s16 arg2) {
    func_808C1190(SEGMENTED_TO_VIRTUAL(D_06015890), arg1, arg2);
    func_808C1200(SEGMENTED_TO_VIRTUAL(D_06017210), arg1, arg2);
    func_808C11D0(SEGMENTED_TO_VIRTUAL(D_06015D90), arg1, arg2);
    func_808C11D0(SEGMENTED_TO_VIRTUAL(D_06016390), arg1, arg2);
    func_808C11D0(SEGMENTED_TO_VIRTUAL(D_06016590), arg1, arg2);
    func_808C11D0(SEGMENTED_TO_VIRTUAL(D_06016790), arg1, arg2);
    func_808C1230(SEGMENTED_TO_VIRTUAL(D_06015990), arg1, arg2);
    func_808C1230(SEGMENTED_TO_VIRTUAL(D_06015F90), arg1, arg2);
    func_808C1278(SEGMENTED_TO_VIRTUAL(D_06016990), arg1, arg2);
    func_808C1278(SEGMENTED_TO_VIRTUAL(D_06016E10), arg1, arg2);
}

void func_808C1554(u16* D_030021D8, u16* D_808C73C8, s32 arg2, f32 arg3) {
    u16* temp_s3 = SEGMENTED_TO_VIRTUAL(D_030021D8);
    u16* temp_s1 = SEGMENTED_TO_VIRTUAL(D_808C73C8);
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
    BossDodongoEffect* currentEffect = (BossDodongoEffect*)globalCtx->unk_11E10;

    for (i = 0; i < arg5; i++, currentEffect++) {
        if (currentEffect->unk_24 == 0) {
            currentEffect->unk_24 = 1;
            currentEffect->unk_0 = *arg1;
            currentEffect->unk_C = *arg2;
            currentEffect->unk_18 = *arg3;
            currentEffect->unk_2C = arg4 / 1000.0f;
            currentEffect->unk_2A = 255;
            currentEffect->unk_25 = (s16)Math_Rand_ZeroFloat(10.0f);
            break;
        }
    }
}

s32 func_808C18B0(BossDodongo* this, GlobalContext* globalCtx) { // Eat Explosive
    f32 dx;
    f32 dy;
    f32 dz;
    Actor* currentExplosive;
    Actor* thisx = &this->actor;

    currentExplosive = globalCtx->actorCtx.actorList[ACTORTYPE_EXPLOSIVES].first;
    while (currentExplosive != NULL) {
        if (currentExplosive == thisx) {
            currentExplosive = currentExplosive->next;
            continue;
        }
        dx = currentExplosive->posRot.pos.x - this->mouthPos.x;
        dy = currentExplosive->posRot.pos.y - this->mouthPos.y;
        dz = currentExplosive->posRot.pos.z - this->mouthPos.z;
        if ((fabsf(dx) < 40.0f) && (fabsf(dy) < 40.0f) && (fabsf(dz) < 40.0f)) {
            Actor_Kill(currentExplosive);
            return 1;
        }

        currentExplosive = currentExplosive->next;
    }
    return 0;
}
void BossDodongo_Init(Actor* thisx, GlobalContext* globalCtx) {
    BossDodongo* this = THIS;
    s16 temp_v1;
    u16* temp_s1_3;
    u16* temp_s2;
    u32 temp_v0;

    globalCtx->unk_11E10 = &this->unk_920;
    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 9200.0f, ActorShadow_DrawFunc_Circle, 250.0f);
    Actor_SetScale(&this->actor, 0.01f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_0601B310, &D_0600F0D8, NULL, NULL, 0);
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_0600F0D8);
    this->unk_1F8 = 1.0f;
    func_808C1C80(this, globalCtx);
    this->health = 12;
    this->fogMin = 995.0f;
    this->actor.colChkInfo.mass = 0xFF;
    this->fogMax = 1000.0f;
    this->unk_224 = 2.0f;

    this->unk_228 = 9200.0f;
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, this->items);
    if (Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)) { // KD is dead
        temp_s1_3 = SEGMENTED_TO_VIRTUAL(&D_030021D8);
        temp_s2 = SEGMENTED_TO_VIRTUAL(D_808C93C8);
        Actor_Kill(&this->actor);
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, -890.0f, -1523.76f,
                           -3304.0f, 0, 0, 0, 0);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BG_BREAKWALL, -890.0f, -1523.76f, -3304.0f, 0, 0, 0, 0x6000);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, -690.0f, -1523.76f, -3304.0f, 0, 0, 0, 0);

        for (temp_v1 = 0; temp_v1 < 2048; temp_v1++) {
            temp_v0 = temp_v1;
            temp_s1_3[temp_v0] = temp_s2[temp_v0];
        }
    }
    this->actor.flags &= -2;
}

void BossDodongo_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BossDodongo* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyJntSph(globalCtx, &this->collider);
}

void func_808C1C80(BossDodongo* this, GlobalContext* globalCtx) {
    s16 frames = SkelAnime_GetFrameCount(&D_0600F0D8);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600F0D8, 1.0f, 0.0f, frames, 0, -10.0f);
    this->actionFunc = func_808C1D00;
    this->unk_19C = 0;
    this->unk_1BC = 1;
}

void func_808C1D00(BossDodongo* this, GlobalContext* globalCtx) {
    f32 phi_f0;
    Camera* camera;
    Player* player;
    Vec3f sp60;
    Vec3f sp54;
    Vec3f sp48;

    player = PLAYER;
    camera = Gameplay_GetCamera(globalCtx, 0);

    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    if (this->unk_198 != 0) {
        this->unk_198--;
    }
    if (this->unk_19A != 0) {
        this->unk_19A--;
    }
    switch (this->unk_19C) {
        case 0:
            if (player->actor.posRot.pos.y < -1223.76f) {
                this->unk_19C = 1;
                this->actor.posRot.pos.x = -1390.0f;
                this->actor.posRot.pos.z = -3374.0f;
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
            this->unk_19C = 2;
            this->unk_196 = 0x3C;
            this->unk_198 = 0xA0;
            player->actor.posRot.pos.y = -1023.76f;
            this->cameraEye.y = player->actor.posRot.pos.y - 480.0f + 50.0f;
        case 2:
            if (this->unk_198 >= 131) {
                player->actor.posRot.pos.x = -890.0f;
                player->actor.posRot.pos.z = -2804.0f;
                player->actor.posRot.rot.y = 0x3FFF;
                player->actor.speedXZ = 0.0f;
                player->actor.shape.rot.y = player->actor.posRot.rot.y;
                this->cameraEye.x = -890.0f;
                this->cameraEye.z = player->actor.posRot.pos.z - 100.0f;
                this->cameraAt.x = player->actor.posRot.pos.x;
                this->cameraAt.y = player->actor.posRot.pos.y + 20.0f;
                this->cameraAt.z = player->actor.posRot.pos.z;
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
            if (this->unk_198 < 0x3C) {
                this->unk_1BC = 1;
            } else {
                this->unk_1BC = 2;
            }
            func_808C32F4(this, globalCtx);
            if (this->unk_196 == 1) {
                Audio_SetBGM(0x100100FF);
            }
            if (this->unk_196 == 0) {
                Math_SmoothScaleMaxMinF(&this->cameraEye.x, this->unk_3EC.x + 30.0f, 0.2f, this->unk_204 * 20.0f, 0.0f);
                Math_SmoothScaleMaxMinF(&this->cameraEye.y, this->unk_3EC.y, 0.2f, this->unk_204 * 20.0f, 0.0f);
                Math_SmoothScaleMaxMinF(&this->cameraEye.z, this->unk_3EC.z + 10.0f, 0.2f, this->unk_204 * 20.0f, 0.0f);
                Math_SmoothScaleMaxMinF(&this->unk_204, 1.0f, 1.0f, 0.02f, 0.0f);
            } else {
                this->cameraAt.x = player->actor.posRot.pos.x;
                this->cameraAt.y = player->actor.posRot.pos.y + 20.0f;
                this->cameraAt.z = player->actor.posRot.pos.z;
            }
            if ((gSaveContext.eventChkInf[7] & 2) != 0) {
                if (this->unk_198 == 100) {
                    this->actor.posRot.pos.x = -1114.0f;
                    this->actor.posRot.pos.z = -2804.0f;
                    this->actor.posRot.rot.y = 0x3FFF;
                    this->unk_1A2 = 0;
                    this->unk_1A0 = 2;
                    this->unk_19C = 4;
                    this->unk_196 = 30;
                    this->unk_198 = 150;
                    this->unk_204 = 0.0f;
                    SkelAnime_ChangeAnim(&this->skelAnime, &D_06008EEC, 1.0f, 0.0f,
                                         SkelAnime_GetFrameCount(&D_06008EEC), 2, 0.0f);
                    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
                }
            } else if (this->unk_198 == 0) {
                this->unk_19C = 3;
                this->unk_19E = 0x14;
                this->unk_204 = 0.0f;
            }
            break;
        case 3:
            func_808C32F4(this, globalCtx);
            Math_SmoothScaleMaxMinF(&this->unk_20C, sinf(this->unk_19E * 0.05f) * 0.1f, 1.0f, 0.01f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->cameraEye.x, this->unk_3EC.x + 90.0f, 0.2f, this->unk_204 * 20.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->cameraEye.y, this->unk_3EC.y + 50.0f, 0.2f, this->unk_204 * 20.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->cameraEye.z, this->unk_3EC.z, 0.2f, this->unk_204 * 20.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->cameraAt.y, this->unk_3EC.y - 10.0f, 0.2f, this->unk_204 * 20.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->unk_204, 1.0f, 1.0f, 0.02f, 0.0f);
            if (fabsf(player->actor.posRot.pos.x - this->actor.posRot.pos.x) < 200.0f) {
                this->unk_19C = 4;
                this->unk_196 = 0x1E;
                this->unk_198 = 0x96;
                this->unk_204 = 0.0f;
                SkelAnime_ChangeAnim(&this->skelAnime, &D_06008EEC, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06008EEC), 2,
                                     -5.0f);
            }
            break;
        case 4:
            Math_SmoothScaleMaxMinF(&this->unk_20C, 0.0f, 1.0f, 0.01f, 0.0f);
            if ((gSaveContext.eventChkInf[7] & 2) != 0) {
                phi_f0 = -50.0f;
            } else {
                phi_f0 = 0.0f;
            }
            Math_SmoothScaleMaxMinF(&this->cameraEye.x, player->actor.posRot.pos.x + phi_f0 + 70.0f, 0.2f,
                                    this->unk_204 * 20.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->cameraEye.y, player->actor.posRot.pos.y + 10.0f, 0.2f, this->unk_204 * 20.0f,
                                    0.0f);
            Math_SmoothScaleMaxMinF(&this->cameraEye.z, player->actor.posRot.pos.z - 60.0f, 0.2f, this->unk_204 * 20.0f,
                                    0.0f);
            Math_SmoothScaleMaxMinF(&this->cameraAt.x, this->unk_3EC.x, 0.2f, this->unk_204 * 20.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->cameraAt.y, this->unk_3EC.y, 0.2f, this->unk_204 * 20.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->cameraAt.z, this->unk_3EC.z, 0.2f, this->unk_204 * 20.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->unk_204, 1.0f, 1.0f, 0.02f, 0.0f);
            if (this->unk_196 == 0) {
                SkelAnime_FrameUpdateMatrix(&this->skelAnime);
                Math_SmoothScaleMaxMinF(&this->unk_208, 0.05f, 1.0f, 0.005f, 0.0f);
            }
            if (this->unk_198 == 0x64) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_OTAKEBI);
            }
            if (this->unk_198 == 0x5A) {
                if ((gSaveContext.eventChkInf[7] & 2) == 0) {
                    TitleCard_InitBossName(globalCtx, &globalCtx->actorCtx.titleCtx, SEGMENTED_TO_VIRTUAL(&D_06017410),
                                           0xA0, 0xB4, 0x80, 0x28);
                }
                Audio_SetBGM(0x6B);
            }
            if (this->unk_198 == 0) {
                camera->eye = this->cameraEye;
                camera->eyeNext = this->cameraEye;
                camera->at = this->cameraAt;
                func_800C08AC(globalCtx, this->cutsceneCamera, 0);
                this->cutsceneCamera = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                func_808C29B0(this);
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

void func_808C287C(BossDodongo* this) {
    if (this->actionFunc != func_808C2BC8) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06001074, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06001074), 2, -5.0f);
        this->actionFunc = func_808C2BC8;
    }
    this->unk_1DA = 100;
}

void func_808C290C(BossDodongo* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600E848, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600E848), 2, -5.0f);
    this->actionFunc = func_808C2C78;
    this->unk_1B0 = 10;
    this->unk_1C0 = 2;
    this->unk_1DA = 35;
    this->unk_1FC = 50.0f;
    this->unk_200 = 300.0f;
}

void func_808C29B0(BossDodongo* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0601D934, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0601D934), 2, -10.0f);
    this->unk_1AA = 0;
    this->actionFunc = func_808C32F4;
    this->unk_1DA = 0;
    this->actor.flags |= 1;
    this->unk_1E4 = 0.0f;
}

void func_808C2A40(BossDodongo* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600DF38, 1.0f, 0.0f, 59.0f, 2, -5.0f);
    this->actionFunc = &func_808C3704;
    this->unk_1A8 = 0;
    this->unk_1DA = 27;
}

void func_808C2AB0(BossDodongo* this) {
    this->actor.speedXZ = 0.0f;
    this->unk_1E4 = 0.0f;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060061D4, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060061D4), 2, 0.0f);
    this->actionFunc = func_808C30F4;
    this->unk_1DA = 50;
    this->unk_1AE = 0;
}

void func_808C2B38(BossDodongo* this) {
    this->actor.speedXZ = 0.0f;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06008EEC, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06008EEC), 2, -5.0f);
    this->actionFunc = func_808C3224;
    this->unk_1DA = 100;
    this->unk_1AC = 0;
    this->unk_1E2 = 1;
}

void func_808C2BC8(BossDodongo* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxMinF(&this->unk_1F8, 1.0f, 0.5f, 0.02f, 0.001f);
    Math_SmoothScaleMaxMinF(&this->unk_208, 0.05f, 1.0f, 0.005f, 0.0f);
    if (func_800A56C8(&this->skelAnime, SkelAnime_GetFrameCount(&D_06001074))) {
        func_808C2A40(this);
    }
}

void func_808C2C78(BossDodongo* this,
                   GlobalContext* globalCtx) { // Spawn bomb explode effect //Also take bomb damage
    static Color_RGBA8 dustPrimColor = { 255, 255, 0, 255 };
    static Color_RGBA8 dustEnvColor = { 255, 10, 0, 255 };
    s16 pad;
    Vec3f dustVel;
    Vec3f dustAcell;
    Vec3f dustPos;
    s16 i;

    Math_SmoothScaleMaxMinF(&this->unk_208, 0.05f, 1.0f, 0.005f, 0.0f);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_1DA == 0) {
        for (i = 0; i < 30; i++) {
            dustVel.x = Math_Rand_CenteredFloat(20.0f);
            dustVel.y = Math_Rand_CenteredFloat(20.0f);
            dustVel.z = Math_Rand_CenteredFloat(20.0f);
            dustAcell.x = dustVel.x * -0.1f;
            dustAcell.y = dustVel.y * -0.1f;
            dustAcell.z = dustVel.z * -0.1f;
            dustPos.x = this->actor.posRot.pos.x + (dustVel.x * 3.0f);
            dustPos.y = this->actor.posRot.pos.y + 90.0f + (dustVel.y * 3.0f);
            dustPos.z = this->actor.posRot.pos.z + (dustVel.z * 3.0f);
            func_8002836C(globalCtx, &dustPos, &dustVel, &dustAcell, &dustPrimColor, &dustEnvColor, 500, 10, 10);
        }
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06004E0C, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06004E0C), 2, -5.0f);
        this->actionFunc = func_808C2ECC;
        Audio_PlayActorSound2(&this->actor, NA_SE_IT_BOMB_EXPLOSION);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_DAMAGE);
        func_80033E88(&this->actor, globalCtx, 4, 10);
        this->health -= 2;
        if (this->health <= 0) {
            this->health = 1;
        }
    }
}

void func_808C2ECC(BossDodongo* this, GlobalContext* globalCtx) {
    this->unk_1BE = 10;
    Math_SmoothScaleMaxMinF(&this->unk_1F8, 1.3f, 1.0f, 0.1f, 0.001f);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, SkelAnime_GetFrameCount(&D_06004E0C)) != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_060042A8, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060042A8), 0, -5.0f);
        this->actionFunc = func_808C2FAC;
        this->unk_1DA = 0x64;
    }
}

void func_808C2FAC(BossDodongo* this, GlobalContext* globalCtx) {
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_DOWN - SFX_FLAG);
    this->unk_1BE = 10;
    Math_SmoothScaleMaxMinF(&this->unk_1F8, 1.0f, 0.5f, 0.02f, 0.001f);
    Math_SmoothScaleMaxMinF(&this->unk_208, 0.05f, 1.0f, 0.005f, 0.0f);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_1DA == 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06009D10, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06009D10), 2, -5.0f);
        this->actionFunc = func_808C3094;
    }
}

void func_808C3094(BossDodongo* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, SkelAnime_GetFrameCount(&D_06009D10))) {
        func_808C2A40(this);
    }
}

void func_808C30F4(BossDodongo* this, GlobalContext* globalCtx) { // Hit?
    s32 pad;
    Vec3f unusedZeroVec1 = { 0.0f, 0.0f, 0.0f };
    Vec3f unusedZeroVec2 = { 0.0f, 0.0f, 0.0f };

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 12.0f) != 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_CRY);
    }
    if (func_800A56C8(&this->skelAnime, 17.0f) != 0) {
        this->unk_1C8 = 28;
    }
    if ((this->skelAnime.animCurrentFrame > 17.0f) && (this->skelAnime.animCurrentFrame < 35.0f)) {
        func_808C52E0(this, globalCtx, this->unk_1AE);
        this->unk_1AE++;
        Math_SmoothScaleMaxMinF(&this->unk_244, 0.0f, 1.0f, 8.0f, 0.0f);
    }
    if (this->unk_1DA == 0) {
        func_808C2A40(this);
    }
}

void func_808C3224(BossDodongo* this, GlobalContext* GlobalContext) { // Blow fire
    this->unk_1E2 = 1;
    if (this->unk_1AC >= 21) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_BREATH - SFX_FLAG);
    }
    Math_SmoothScaleMaxMinF(&this->unk_208, 0.05f, 1.0f, 0.005f, 0.0f);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_1DA == 0) {
        func_808C2AB0(this);
    } else {
        this->unk_1AC++;
        if ((this->unk_1AC >= 21) && (this->unk_1AC < 0x52) && (func_808C18B0(this, GlobalContext) != 0)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_DRINK);
            func_808C290C(this);
        }
    }
}

Vec3f D_808CA3F8[] = {
    { -1390.0f, 0.0f, -3804.0f },
    { -1390.0f, 0.0f, -2804.0f },
    { -390.0f, 0.0f, -2804.0f },
    { -390.0f, 0.0f, -3804.0f },
};

void func_808C32F4(BossDodongo* this, GlobalContext* globalCtx) {
    Vec3f* sp4C;
    f32 sp48;
    f32 sp44;

    if (this->unk_1AA == 0) {
        if (func_800A56C8(&this->skelAnime, 14.0f) != 0) {
            SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_0601CAE0);
            this->unk_1AA = 1;
        }
        // Cast required due to regaloc in Init
    } else if ((s16)this->unk_1BC != 2) {
        if (((s32)this->skelAnime.animCurrentFrame == 1) || ((s32)this->skelAnime.animCurrentFrame == 0x1F)) {
            if ((s32)this->skelAnime.animCurrentFrame == 1) {
                func_80033260(globalCtx, &this->actor, &this->unk_410, 25.0f, 0xA, 8.0f, 0x1F4, 0xA, 0);
            } else {
                func_80033260(globalCtx, &this->actor, &this->unk_404, 25.0f, 0xA, 8.0f, 0x1F4, 0xA, 0);
            }
            if ((s16)this->unk_1BC != 0) {
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
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    sp4C = &D_808CA3F8[this->unk_1A0];
    this->unk_1EC = 0.7f;
    Math_SmoothScaleMaxMinF(&this->unk_1E4, this->unk_1EC * 4.0f, 1.0f, this->unk_1EC * 0.25f, 0.0f);
    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.x, sp4C->x, 0.3f, this->unk_1E4, 0.0f);
    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.z, sp4C->z, 0.3f, this->unk_1E4, 0.0f);
    sp48 = sp4C->x - this->actor.posRot.pos.x;
    sp44 = sp4C->z - this->actor.posRot.pos.z;
    Math_SmoothScaleMaxMinF(&this->unk_1E8, 2000.0f, 1.0f, this->unk_1EC * 80.0f, 0.0f);
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, Math_atan2f(sp48, sp44) * 10430.378f, 5,
                            (this->unk_1EC * this->unk_1E8), 5);
    Math_SmoothScaleMaxMinS(&this->unk_1C4, 0, 2, 2000, 0);
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
        if ((this->actor.xzDistFromLink < 500.0f) && (this->unk_1A4 != 0) && (this->unk_1BA == 0)) {
            func_808C2B38(this);
            func_808C52E0(this, globalCtx, -1);
        }
        if ((this->unk_1BA == 0) && (this->unk_1B8 == 0)) {
            func_808C2A40(this);
        }
    }
}

void func_808C3704(BossDodongo* this, GlobalContext* globalCtx) {
    Vec3f* sp5C;
    Vec3f sp50;
    f32 sp4C;
    f32 sp48;

    this->actor.flags |= 0x1000000;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_1DA == 10) {
        this->actor.velocity.y = 15.0f;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_CRY);
    }

    if (this->unk_1DA == 1) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_COLI2);
    }
    sp5C = &D_808CA3F8[this->unk_1A0];
    this->unk_1EC = 3.0f;
    if (this->unk_1DA == 0) {
        Math_SmoothScaleMaxMinF(&this->unk_1E4, this->unk_1EC * 5.0f, 1.0f, this->unk_1EC * 0.25f, 0.0f);
        Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.x, sp5C->x, 1.0f, this->unk_1E4, 0.0f);
        Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.z, sp5C->z, 1.0f, this->unk_1E4, 0.0f);
        this->unk_1C4 += 2000;
        if ((this->actor.bgCheckFlags & 1) != 0) {
            this->unk_228 = 7700.0f;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_ROLL - SFX_FLAG);
            if ((this->unk_19E & 7) == 0) {
                Camera_AddQuake(&globalCtx->mainCamera, 2, 1, 8);
            }
            if ((this->unk_19E & 1) == 0) {
                func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 40.0f, 3, 8.0f, 0x1F4, 0xA, 0);
            }
        }
    }
    sp4C = sp5C->x - this->actor.posRot.pos.x;
    sp48 = sp5C->z - this->actor.posRot.pos.z;
    Math_SmoothScaleMaxMinF(&this->unk_1E8, 2000.0f, 1.0f, this->unk_1EC * 100.0f, 0.0f);
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, Math_atan2f(sp4C, sp48) * 10430.378f, 5,
                            this->unk_1EC * this->unk_1E8, 0);
    if (fabsf(sp4C) <= 15.0f && fabsf(sp48) <= 15.0f) {
        this->unk_1A8++;
        if (this->unk_1A8 >= 2) {
            if (this->unk_1A6 != 0) {
                this->unk_1A2 = 1 - this->unk_1A2;
            }
            this->unk_1E8 = 0.0f;
            this->unk_1E4 = 0.0f;
            func_808C29B0(this);
            this->unk_228 = 9200.0f;
            this->actor.velocity.y = 20.0f;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_COLI);
            Camera_AddQuake(&globalCtx->mainCamera, 2, 6, 8);
            sp50.x = this->actor.posRot.pos.x;
            sp50.y = this->actor.posRot.pos.y + 60.0f;
            sp50.z = this->actor.posRot.pos.z;
            func_80033480(globalCtx, &sp50, 250.0f, 40, 800, 10, 0);
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

Vec3f D_808CA428 = { 0.0f, 0.0f, 0.0f };
Vec3f D_808CA434 = { 0.0f, 0.0f, 0.0f };
Color_RGBA8 magmaPrimColor[] = { { 255, 255, 0, 255 }, { 0, 0, 0, 150 } };
Color_RGBA8 magmaEnvColor[] = { { 255, 0, 0, 255 }, { 0, 0, 0, 0 } };
Vec3f D_808CA450 = { 5000.0f, -2500.0f, 0.0f };

//#define NON_MATCHING
#ifdef NON_MATCHING
// Very minor ordering issue near SEGMENTED_TO_VIRTUAL
void BossDodongo_Update(Actor* thisx, GlobalContext* globalCtx) {
    BossDodongo* this = THIS;
    s16 new_var;
    u16* ptr1;
    u16* ptr2;
    Player* player = PLAYER;
    Player* player2 = PLAYER;
    s16 magmaScale;
    s16 i1;
    s16 phi_s0_3;
    s16 sp90;
    s16 magma2DrawMode;
    Vec3f sp84;
    f32 temp_f12;
    f32 temp_f10;
    Vec3f sp6C;
    Vec3f sp60;
    Vec3f sp54;
    f32 sp50;
    f32 sp4C;
    f32 temp_f0;
    f32 temp_f10_2;
    f32 temp_f12_2;
    GlobalContext* new_var2;
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

    func_808C51F4(this, globalCtx);
    func_808C524C(this, globalCtx);
    this->actionFunc(this, globalCtx);
    thisx->shape.rot.y = thisx->posRot.rot.y;
    new_var2 = globalCtx;
    Math_SmoothScaleMaxMinF(&thisx->shape.unk_08, this->unk_228, 1.0f, 100.0f, 0.0f);
    Actor_MoveForward(thisx);
    func_808C5354(this, globalCtx);
    func_8002E4B4(globalCtx, thisx, 10.0f, 10.0f, 20.0f, 4);
    Math_SmoothScaleMaxMinF(&this->unk_208, 0, 1, 0.001f, 0.0);
    Math_SmoothScaleMaxMinF(&this->unk_20C, 0, 1, 0.001f, 0.0);
    if ((this->unk_19E % 128) == 0) {
        for (i1 = 0; i1 < 50; i1++) {
            this->unk_324[i1] = (Math_Rand_ZeroOne() * 0.25f) + 0.5f;
        }
    }

    for (i1 = 0; i1 < 50; i1++) {
        this->unk_25C[i1] += this->unk_324[i1];
    }

    if (this->unk_1C8 != 0) {
        if (this->unk_1C8 >= 11) {
            Math_SmoothScaleMaxMinF(&this->unk_240, (this->unk_1C8 & 1) ? (40.0f) : (60.0f), 1.0f, 50.0f, 0.0f);
        } else {
            Math_SmoothScaleMaxMinF(&this->unk_240, 0.0f, 1, 10.0f, 0.0);
        }

        if ((globalCtx->envCtx.unk_8C[1][2] == 0) && (globalCtx->envCtx.unk_8C[0][2] == 0)) {
            globalCtx->envCtx.unk_8C[1][0] = (u8)this->unk_240;
            globalCtx->envCtx.unk_8C[1][1] = (u8)(this->unk_240 * 0.1f);
            new_var2->envCtx.unk_8C[0][0] = (u8)this->unk_240;
            new_var2->envCtx.unk_8C[0][1] = (u8)(this->unk_240 * 0.1f);
        }
    }

    if (this->unk_1BE != 0) {
        if (this->unk_1BE >= 1000) {
            Math_SmoothScaleMaxMinF(&this->fogR, 30.0f, 1, 20.0f, 0.0);
            Math_SmoothScaleMaxMinF(&this->fogG, 10.0f, 1, 20.0f, 0.0);
        } else {
            this->unk_1BE--;
            Math_SmoothScaleMaxMinF(&this->fogR, 255.0f, 1, 20.0f, 0.0);
            Math_SmoothScaleMaxMinF(&this->fogG, 0.0f, 1, 20.0f, 0.0);
        }

        Math_SmoothScaleMaxMinF(&this->fogB, 0.0f, 1, 20.0f, 0.0);
        Math_SmoothScaleMaxMinF(&this->fogMin, 900.0f, 1, 10.0f, 0.0);
        Math_SmoothScaleMaxMinF(&this->fogMax, 1099.0f, 1, 10.0f, 0.0);
    } else {
        Math_SmoothScaleMaxMinF(&this->fogR, new_var2->lightCtx.unk_07, 1, 5.0f, 0.0);
        Math_SmoothScaleMaxMinF(&this->fogG, new_var2->lightCtx.unk_08, 1.0f, 5.0f, 0.0);
        Math_SmoothScaleMaxMinF(&this->fogB, new_var2->lightCtx.unk_09, 1.0f, 5.0f, 0.0);
        Math_SmoothScaleMaxMinF(&this->fogMin, globalCtx->lightCtx.unk_0A, 1.0, 5.0f, 0.0);
        Math_SmoothScaleMaxMinF(&this->fogMax, 1000.0f, 1, 5.0f, 0.0);
    }

    if (player->actor.posRot.pos.y < (-1000.0f)) {
        magmaScale = 0;
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
            magma2DrawMode = Math_Rand_ZeroOne() * 1.9f;
        } else if (this->unk_224 > 1.1f) {
            phi_s0_3 = 7;
            sp90 = 4095;
            magma2DrawMode = Math_Rand_ZeroOne() * 1.9f;
        } else {
            phi_s0_3 = 1;
            sp90 = -1;
            magma2DrawMode = 1;
            magmaScale = ((s16)(Math_Rand_ZeroOne() * 50)) - 50;
        }

        if (player2->csMode >= 10) {
            phi_s0_3 = -1;
        }

        if ((this->unk_19E & phi_s0_3) == 0) {
            temp_f12 = Math_Rand_ZeroOne() * 330.0f;
            temp_f10 = Math_Rand_ZeroOne() * 6.28f;
            sp84.x = (sinf(temp_f10) * temp_f12) + (-890.0f);
            sp84.y = -1523.76f;
            sp84.z = (cosf(temp_f10) * temp_f12) + (-3304.0f);
            EffectSsGMagma2_Spawn(globalCtx, &sp84, &magmaPrimColor[magma2DrawMode], &magmaEnvColor[magma2DrawMode],
                                  10 - (magma2DrawMode * 5), magma2DrawMode, magmaScale + 100);
        }

        if ((this->unk_19E & sp90) == 0) {
            sp6C = D_808CA428;
            sp60 = D_808CA434;
            sp50 = Math_Rand_ZeroOne() * 330.0f;
            temp_f12_2 = Math_Rand_ZeroOne() * 6.28f;
            temp_f10_2 = sinf(temp_f12_2) * sp50;
            sp54.x = temp_f10_2 + (-890.0f);
            sp54.y = -1523.76f;
            sp54.z = (cosf(temp_f12_2) * sp50) + (-3304.0f);
            EffectSsGMagma_Spawn(globalCtx, &sp54);
            for (i1 = 0; i1 < 4; i1++) {
                sp60.y = 0.4f;
                sp60.x = Math_Rand_CenteredFloat(0.5f);
                sp60.z = Math_Rand_CenteredFloat(0.5f);
                sp50 = Math_Rand_ZeroOne() * 330.0f;
                sp4C = Math_Rand_ZeroOne() * 6.28f;
                sp54.x = (sinf(sp4C) * sp50) + (-890.0f);
                sp54.y = -1513.76f;
                sp54.z = (cosf(sp4C) * sp50) + (-3304.0f);
                func_808C17C8(globalCtx, &sp54, &sp6C, &sp60, ((s16)Math_Rand_ZeroFloat(2.0f)) + 6, 0x50);
            }
        }

        func_808C1554(&D_030021D8, D_808C73C8, this->unk_19E, this->unk_224);
    }

    if (this->unk_1C6 != 0) {
        ptr1 = SEGMENTED_TO_VIRTUAL(D_808C73C8);
        ptr2 = SEGMENTED_TO_VIRTUAL(D_808C93C8);
        // new_var = 20;
        for (i1 = -1; (i1 + 1) < 20; i1++) {
            new_var = this->unk_1C2 & 0x7FF;

            ptr1[new_var] = ptr2[new_var];
            this->unk_1C2 += 37;
        }
        /*i1 = -1;
        while ((i1 + 1) < 20) {
            i1++;
            new_var = (this->unk_1C2) & 0x7ff;
            ptr1[new_var] = ptr2[new_var];
            (this->unk_1C2) = (this->unk_1C2) + 0x25;
        } */

        Math_SmoothScaleMaxMinF(&this->unk_224, 0.0f, 1.0f, 0.01f, 0.0f);
    }

    if (this->unk_1BC == 0) {
        if (this->actionFunc != func_808C5578) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);
        }

        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
        if (this->actionFunc == func_808C3704) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider);
        }
    }

    this->collider.list[0].dim.scale = (this->actionFunc == func_808C3224) ? (0.0f) : (1.0f);
    for (i1 = 6; i1 < 19; i1++) {
        if (i1 != 12) {
            this->collider.list[i1].dim.scale = (this->actionFunc == func_808C3704) ? (0.0f) : (1.0f);
        }
    }

    if (this->unk_244 != 0) {
        gGameInfo->data[((5 * 6) * 16) + 64] = 1;
        gGameInfo->data[((5 * 6) * 16) + 65] = 255;
        gGameInfo->data[((5 * 6) * 16) + 66] = 80;
        gGameInfo->data[((5 * 6) * 16) + 67] = 0;
        gGameInfo->data[((5 * 6) * 16) + 68] = (u8)this->unk_244;
    } else {
        gGameInfo->data[((5 * 6) * 16) + 64] = 0;
    }

    Math_SmoothScaleMaxMinF(&this->unk_244, 0.0f, 1.0f, 2.0f, 0.0f);
    BossDodongo_UpdateEffects(globalCtx);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/BossDodongo_Update.s")
#endif

s32 BossDodongo_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                 Actor* thisx) {
    f32 mtxScaleY;
    f32 mtxScaleZ;
    BossDodongo* this = THIS;

    if ((limbIndex == 6) || (limbIndex == 7)) {
        if (this->unk_25C) {}
        goto block_1;
    }
block_1:
    Matrix_JointPosition(pos, rot);
    if (*dList != 0) {
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
        Matrix_Pull();
        { s32 pad; } // Required to match
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_dodongo.c", 3826);
    }
    return 1;
}

void BossDodongo_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    static Vec3f D_808CA45C = { 0.0f, 0.0f, 0.0f };
    static Vec3f D_808CA468 = { 11500.0f, -3000.0f, 0.0f };
    static Vec3f D_808CA474 = { 5000.0f, -2000.0f, 0.0f };
    static Vec3f D_808CA480 = { 8000.0f, 0.0f, 0.0f };
    static Vec3f D_808CA48C = { 8000.0f, 0.0f, 0.0f };
    BossDodongo* this = THIS;

    if (limbIndex == 6) {
        Matrix_MultVec3f(&D_808CA45C, &this->unk_3EC);
        Matrix_MultVec3f(&D_808CA450, &this->actor.posRot2.pos);
        Matrix_MultVec3f(&D_808CA468, &this->unk_3F8);
        Matrix_MultVec3f(&D_808CA474, &this->mouthPos);
    } else if (limbIndex == 39) {
        Matrix_MultVec3f(&D_808CA480, &this->unk_410);
    } else if (limbIndex == 46) {
        Matrix_MultVec3f(&D_808CA48C, &this->unk_404);
    }
    func_800628A4(limbIndex, &this->collider);
}

void BossDodongo_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BossDodongo* this = THIS;
    s32 pad;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_dodongo.c", 3922);
    func_80093D18(globalCtx->state.gfxCtx);

    if ((this->unk_1C0 >= 2) && ((this->unk_1C0 & 1) != 0)) {
        POLY_OPA_DISP = Gfx_SetFog(POLY_OPA_DISP, 255, 255, 255, 0, 900, 1099);
    } else {
        POLY_OPA_DISP =
            Gfx_SetFog(POLY_OPA_DISP, (u32)this->fogR, (u32)this->fogG, (u32)this->fogB, 0, this->fogMin, this->fogMax);
    }
    Matrix_RotateZ(this->unk_23C, 1);
    Matrix_RotateX((this->unk_1C4 / 32768.0f) * 3.14159f, MTXMODE_APPLY);
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, BossDodongo_OverrideLimbDraw,
                      BossDodongo_PostLimbDraw, this);
    POLY_OPA_DISP = func_800BC8A0(globalCtx, POLY_OPA_DISP);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_dodongo.c", 3981);
    BossDodongo_DrawEffect(globalCtx);
}

f32 func_808C4F6C(BossDodongo* this, GlobalContext* globalCtx) {
    f32 xDiff;
    f32 zDiff;
    f32 sp2C;
    s32 pad;
    f32 temp_f2;
    f32 rotation;
    Player* player;

    player = PLAYER;
    xDiff = player->actor.posRot.pos.x - this->actor.posRot.pos.x;
    zDiff = player->actor.posRot.pos.z - this->actor.posRot.pos.z;
    rotation = Math_Coss(-this->actor.posRot.rot.y);
    sp2C = (Math_Sins(-this->actor.posRot.rot.y) * zDiff) + (rotation * xDiff);
    rotation = Math_Sins(-this->actor.posRot.rot.y);
    temp_f2 = (Math_Coss(-this->actor.posRot.rot.y) * zDiff) + (-rotation * xDiff);
    if ((fabsf(sp2C) < 150.0f) && (100.0f <= temp_f2) && (temp_f2 <= 2000.0f)) {
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
    Player* player;

    player = PLAYER;
    xDiff = player->actor.posRot.pos.x - this->actor.posRot.pos.x;
    zDiff = player->actor.posRot.pos.z - this->actor.posRot.pos.z;
    rotation = Math_Coss((-0x8000 - this->actor.posRot.rot.y));
    sp2C = (Math_Sins((-0x8000 - this->actor.posRot.rot.y)) * zDiff) + (rotation * xDiff);
    rotation = Math_Sins((-0x8000 - this->actor.posRot.rot.y));
    temp_f2 = (Math_Coss((-0x8000 - this->actor.posRot.rot.y)) * zDiff) + (-rotation * xDiff);
    if ((fabsf(sp2C) < 150.0f) && (100.0f <= temp_f2) && (temp_f2 <= 2000.0f)) {
        return temp_f2;
    }
    return -1.0f;
}

void func_808C51F4(BossDodongo* this, GlobalContext* globalCtx) {
    s16 yawDiff;

    yawDiff = func_8002DA78(&this->actor, PLAYER) - this->actor.posRot.rot.y;
    if ((yawDiff < 0x38E3) && (yawDiff >= -0x38E2)) {
        this->unk_1B8 = 1;
    } else {
        this->unk_1B8 = 0;
    }
}

void func_808C524C(BossDodongo* this, GlobalContext* globalCtx) {
    Vec3f* temp_v1;
    s16 i;

    this->unk_1BA = 0;
    for (i = 0; i < 4; i++) {
        temp_v1 = &D_808CA3F8[i];
        if ((fabsf(this->actor.posRot.pos.x - temp_v1->x) < 200.0f) &&
            (fabsf(this->actor.posRot.pos.z - temp_v1->z) < 200.0f)) {
            this->unk_1BA = 1;
            break;
        }
    }
}

void func_808C52E0(BossDodongo* this, GlobalContext* globalCtx, s16 arg2) {
    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_BDFIRE, this->unk_3EC.x,
                       this->unk_3EC.y - 20.0f, this->unk_3EC.z, 0, this->actor.shape.rot.y, 0, arg2);
}

void func_808C5354(BossDodongo* this, GlobalContext* globalCtx) { // Damage Check
    s32 pad;
    ColliderBody* item1;
    u8 swordDamage;
    s32 damage;
    ColliderBody* item2;
    s16 i;

    if ((this->health <= 0) && (this->actionFunc != func_808C5578)) {
        func_808C54C0(this);
        func_80032C7C(globalCtx, &this->actor);
        return;
    }
    if (this->unk_1C0 == 0) {
        if (this->actionFunc == func_808C3224) {
            for (i = 0; i < 19; i++) {
                if ((this->collider.list[i].body.bumperFlags & 2) != 0) {
                    item1 = this->collider.list[i].body.acHitItem;
                    item2 = item1;
                    if ((item2->toucher.flags & 0x10) || (item2->toucher.flags & 4)) {
                        this->collider.list[i].body.bumperFlags &= ~2;
                        this->unk_1C0 = 2;
                        func_808C29B0(this);
                        this->unk_1DA = 0x32;
                        return;
                    }
                }
            }
        }
        if ((this->collider.list->body.bumperFlags & 2) != 0) {
            this->collider.list->body.bumperFlags &= ~2;
            item1 = this->collider.list[0].body.acHitItem;
            if ((this->actionFunc == func_808C2FAC) || (this->actionFunc == func_808C2ECC)) {
                swordDamage = damage = func_800635D0(item1->toucher.flags);
                if (damage != 0) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_DAMAGE);
                    func_808C287C(this);
                    this->unk_1C0 = 5;
                    this->health -= swordDamage;
                }
            }
        }
    }
}

void func_808C54C0(BossDodongo* this) { // Setup Death?
    this->actor.speedXZ = 0.0f;
    this->unk_1E4 = 0.0f;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06002D0C, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06002D0C), 2, -5.0f);
    this->actionFunc = func_808C5578;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_DEAD);
    this->unk_1DA = 0;
    this->unk_19C = 0;
    this->actor.flags = this->actor.flags & ~5;
    this->unk_1BC = 1;
    Audio_SetBGM(0x100100FF);
}

//#define NON_EQUIVALENT
#ifdef NON_EQUIVALENT
void func_808C5578(BossDodongo* this, GlobalContext* globalCtx) {
    static Color_RGBA8 magmaPrimColor2[] = { { 0xFF, 0xFF, 0x00, 0xFF }, { 0x00, 0x00, 0x00, 0x64 } };
    static Color_RGBA8 magmaEnvColor2[] = { { 0xFF, 0x00, 0x00, 0xFF }, { 0x00, 0x00, 0x00, 0x00 } };

    static Color_RGBA8 dustPrimColor = { 255, 255, 255, 255 };
    static Color_RGBA8 dustEnvColor = { 255, 100, 0, 255 };

    Vec3f* cornerPos;
    Player* player;
    Vec3f sp198;
    Vec3f sp184;
    Vec3f effectPos;
    Vec3f dustPos;
    Vec3f sp70;
    f32 sp50;
    Camera* camera;
    f32 distToCorner;
    f32 xDistToCorner;
    f32 xDistToCamera;
    f32 zDistToCorner;
    f32 zDistToCamera;
    s16 colorIndex;
    f32 phi_f2;
    s16 i;
    Vec3f* phi_v0_2;
    Vec3f* phi_v0_3;
    f32 tempSin;
    f32 tempCos;
    f32 temp;
    player = PLAYER;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    switch (this->unk_19C) {
        case 0:
            this->unk_19C = 5;
            func_80064520(globalCtx, &globalCtx->csCtx);
            func_8002DF54(globalCtx, &this->actor, 1);
            this->cutsceneCamera = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 3);
            Gameplay_ChangeCameraStatus(globalCtx, this->cutsceneCamera, 7);
            camera = Gameplay_GetCamera(globalCtx, 0);
            this->cameraEye.x = camera->eye.x;
            this->cameraEye.y = camera->eye.y;
            this->cameraEye.z = camera->eye.z;
            this->cameraAt.x = camera->at.x;
            this->cameraAt.y = camera->at.y;
            this->cameraAt.z = camera->at.z;
            break;
        case 5:
            tempSin = Math_Sins(this->actor.shape.rot.y - 0x1388) * 150.0f;
            tempCos = Math_Coss(this->actor.shape.rot.y - 0x1388) * 150.0f;
            Math_SmoothScaleMaxMinF(&player->actor.posRot.pos.x, this->actor.posRot.pos.x + tempSin, 0.5f, 5.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&player->actor.posRot.pos.z, this->actor.posRot.pos.z + tempCos, 0.5f, 5.0f, 0.0f);

            Math_SmoothScaleMaxMinF(&this->unk_208, 0.07f, 1.0f, 0.005f, 0.0f);
            tempSin = Math_Sins(this->actor.posRot.rot.y) * 230.0f;
            tempCos = Math_Coss(this->actor.posRot.rot.y) * 230.0f;
            Math_SmoothScaleMaxMinF(&this->cameraEye.x, this->actor.posRot.pos.x + tempSin, 0.2f, 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->cameraEye.y, this->actor.posRot.pos.y + 20.0f, 0.2f, 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->cameraEye.z, this->actor.posRot.pos.z + tempCos, 0.2f, 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->cameraAt.x, this->actor.posRot.pos.x, 0.2f, 30.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->cameraAt.y, this->actor.posRot2.pos.y - 70.0f, 0.2f, 30.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->cameraAt.z, this->actor.posRot.pos.z, 0.2f, 30.0f, 0.1f);

            if (func_800A56C8(&this->skelAnime, SkelAnime_GetFrameCount(&D_06002D0C)) != 0) {
                SkelAnime_ChangeAnim(&this->skelAnime, &D_0600DF38, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600DF38), 2,
                                     -1.0f);
                this->unk_19C = 6;
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BG_BREAKWALL, -890.0f, -1523.76f, -3304.0f, 0, 0, 0,
                            0x6000);
            }
            break;
        case 6:
            Math_SmoothScaleMaxMinF(&this->cameraAt.x, this->actor.posRot.pos.x, 0.2f, 30.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->cameraAt.y, (this->actor.posRot.pos.y - 70.0f) + 130.0f, 0.2f, 20.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->cameraAt.z, this->actor.posRot.pos.z, 0.2f, 30.0f, 0.1f);
            if (func_800A56C8(&this->skelAnime, SkelAnime_GetFrameCount(&D_0600DF38))) {
                SkelAnime_ChangeAnim(&this->skelAnime, &D_0600DF38, 1.0f, 30.0f, 59.0f, 2, -1.0f);
                this->unk_19C = 7;
                this->unk_228 = 7700.0f;
                this->unk_204 = 0.0f;
                this->unk_1E4 = 0.0f;
                this->unk_19E = 0;
                this->unk_1A8 = 0;
            }
            break;
        case 7:
            this->unk_1C4 += 0x7D0;
            Math_SmoothScaleMaxMinF(&this->cameraAt.x, this->actor.posRot.pos.x, 0.2f, 30.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->cameraAt.y, (this->actor.posRot.pos.y - 70.0f) + 130.0f, 0.2f, 20.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->cameraAt.z, this->actor.posRot.pos.z, 0.2f, 30.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->cameraEye.x, -890.0f, 0.1f, this->unk_204 * 5.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->cameraEye.z, -3304.0f, 0.1f, this->unk_204 * 5.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->unk_204, 1.0f, 1.0f, 0.1f, 0.0f);
            if (this->unk_1DA == 1) {
                this->unk_19C = 8;
                this->actor.speedXZ = this->unk_1E4 / 1.5f;
                if (this->unk_1A2 == 0) {
                    this->unk_238 = 250.0f;
                } else {
                    this->unk_238 = -250.0f;
                }
                this->unk_1DA = 1000;
                this->unk_234 = 2000.0f;
            } else {
                cornerPos = &D_808CA3F8[this->unk_1A0];
                this->unk_1EC = 3.0f;
                Math_SmoothScaleMaxMinF(&this->unk_1E4, this->unk_1EC * 5.0f, 1.0f, this->unk_1EC * 0.25f, 0.0f);
                xDistToCorner = cornerPos->x - this->actor.posRot.pos.x;
                zDistToCorner = cornerPos->z - this->actor.posRot.pos.z;
                distToCorner = sqrtf(SQ(xDistToCorner) + SQ(zDistToCorner));
                phi_f2 = distToCorner - 200.0f;
                if ((distToCorner < 200.0f) || (this->unk_1DA != 0)) {
                    phi_f2 = 0.0f;
                }
                phi_f2 = CLAMP_MAX(phi_f2, 70.0f);
                this->unk_23C = (Math_Sins(this->unk_19E * 1000) * -50.0f) / 100.0f;

                sp198.x = Math_Sins(this->unk_19E * 1000) * phi_f2;
                sp198.y = 0.0f;
                sp198.z = 0.0f;

                Matrix_RotateY(this->actor.shape.rot.y * (M_PI / 0x8000), MTXMODE_NEW); // 0.0000958738f
                Matrix_MultVec3f(&sp198, &sp184);

                Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.x, cornerPos->x + sp184.x, 1.0f, this->unk_1E4, 0.0f);
                Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.z, cornerPos->z + sp184.z, 1.0f, this->unk_1E4, 0.0f);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_ROLL - SFX_FLAG);
                if ((this->unk_19E & 7) == 0) {
                    Camera_AddQuake(&globalCtx->mainCamera, 2, 1, 8);
                }
                if ((this->unk_19E & 1) == 0) {
                    func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 40.0f, 3, 8.0f, 0x1F4, 0xA, 0);
                }
                xDistToCorner = cornerPos->x - this->actor.posRot.pos.x;
                zDistToCorner = cornerPos->z - this->actor.posRot.pos.z;
                Math_SmoothScaleMaxMinF(&this->unk_1E8, 1500.0f, 1.0f, this->unk_1EC * 100.0f, 0.0f);
                Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y,
                                        (Math_atan2f(xDistToCorner, zDistToCorner) * 10430.378f), 5,
                                        (this->unk_1EC * this->unk_1E8), 0);

                if ((fabsf(xDistToCorner) <= 15.0f) && (fabsf(zDistToCorner) <= 15.0f)) {
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
                    dustPos.x = this->actor.posRot.pos.x;
                    dustPos.y = this->actor.posRot.pos.y + 60.0f;
                    dustPos.z = this->actor.posRot.pos.z;
                    func_80033480(globalCtx, &dustPos, 250.0f, 0x28, 0x320, 0xA, 0);
                }
            }
            break;
        case 8:
        case 9:
            if (this->unk_1DA == 884) {
                SkelAnime_ChangeAnim(&this->skelAnime, &D_060042A8, 1.0f, 0.0f,
                                     (f32)SkelAnime_GetFrameCount(&D_060042A8), 0, -20.0f);
                xDistToCamera = this->cameraEye.x - this->actor.posRot.pos.x;
                zDistToCamera = this->cameraEye.z - this->actor.posRot.pos.z;
                this->unk_22C = sqrtf(SQ(xDistToCamera) + SQ(zDistToCamera));
                this->unk_230 = Math_atan2f(xDistToCamera, zDistToCamera);
                this->unk_1DC = 350;
                this->unk_19C = 9;
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
                Math_SmoothScaleMaxMinS(&this->unk_1C4, -0x4000, 0xA, 0x12C, 0);
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
                Math_SmoothScaleMaxMinF(&this->actor.shape.unk_10, 0.0f, 1.0f, 10.0f, 0.0f);
                if (this->unk_1DA >= 710) {

                    if (this->unk_1DA == 710) {
                        Vec3f D_808CA498[] = {
                            { -440.0f, 0.0f, -3304.0f },
                            { -890.0f, 0.0f, -3574.0f },
                            { -1340.0f, 0.0f, -3304.0f },
                            { -890.0f, 0.0f, -2854.0f },
                        };
                        Vec3f D_808CA4C8[] = {
                            { -890.0f, 0.0f, -2854.0f },
                            { -440.0f, 0.0f, -3304.0f },
                            { -890.0f, 0.0f, -3754.0f },
                            { -1340.0f, 0.0f, -3304.0f },
                        };
                        this->unk_1C6 = 1;
                        if (this->unk_1A2 == 0) {
                            phi_v0_2 = &D_808CA4C8[this->unk_1A0];
                        } else {
                            phi_v0_2 = &D_808CA498[this->unk_1A0];
                        }
                        player->actor.posRot.pos.x = phi_v0_2->x;
                        player->actor.posRot.pos.z = phi_v0_2->z;
                        this->unk_204 = 0.0f;
                    }
                    if (this->unk_1DA >= 885) {
                        Math_SmoothScaleMaxMinF(&this->unk_228, 200.0, 0.2f, 100.0f, 0.0f);
                    } else {
                        Math_SmoothScaleMaxMinF(&this->unk_228, -6600.0f, 0.2f, 30.0f, 0.0f);
                    }
                    //*(int*)0 = 0;
                    { // Scope seems to be required because of how its loaded
                        Vec3f dustVel = { 0.0f, 0.0f, 0.0f };
                        Vec3f dustAcell = { 0.0f, 1.0f, 0.0f };
                        Color_RGBA8* lMagmaPrimColor = &magmaPrimColor2;
                        Color_RGBA8* lMagmaEnvColor = &magmaEnvColor2;
                        effectPos.x = Math_Rand_CenteredFloat(120.0f) + this->actor.posRot.pos.x;
                        effectPos.y = Math_Rand_ZeroFloat(50.0f) + this->actor.posRot.pos.y;
                        effectPos.z = Math_Rand_CenteredFloat(120.0f) + this->actor.posRot.pos.z;
                        func_8002836C(globalCtx, &effectPos, &dustVel, &dustAcell, &dustPrimColor, &dustEnvColor, 0x1F4,
                                      0xA, 0xA);
                        effectPos.x = Math_Rand_CenteredFloat(120.0f) + this->actor.posRot.pos.x;
                        effectPos.y = -1498.76f;
                        effectPos.z = Math_Rand_CenteredFloat(120.0f) + this->actor.posRot.pos.z;
                        colorIndex = (Math_Rand_ZeroOne() * 1.9f);
                        EffectSsGMagma2_Spawn(globalCtx, &effectPos, &lMagmaPrimColor[colorIndex],
                                              &lMagmaEnvColor[colorIndex], 10 - (colorIndex * 5), colorIndex,
                                              (Math_Rand_ZeroOne() * 100.0f) + 100);
                    }
                }
            } else {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_ROLL);
                if ((this->unk_19E & 1) == 0) {
                    func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 40.0f, 3, 8.0f, 0x1F4, 0xA, 0);
                }
            }
            Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.2f, 0.1f, 0.0f);
            this->actor.posRot.rot.y += (s16)this->unk_238;
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
                Math_SmoothScaleMaxMinF(&this->unk_238, 0.0f, 0.05f, 40.0f, 0.0f);
            }
            Math_SmoothScaleMaxMinF(&this->unk_234, 0.0f, 0.2f, 17.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->cameraAt.x, this->actor.posRot.pos.x, 0.2f, 30.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->cameraAt.y, (this->actor.posRot.pos.y - 70.0f) + 130.0f, 0.2f, 20.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->cameraAt.z, this->actor.posRot.pos.z, 0.2f, 30.0f, 0.0f);
            if (this->unk_19C == 9) {
                if (this->unk_1DA < 0x2C6) {
                    Vec3f D_808CA508[] = { { -390.0f, 0.0f, -3304.0f },
                                           { -890.0f, 0.0f, -3804.0f },
                                           { -1390.0f, 0.0f, -3304.0f },
                                           { -890.0f, 0.0f, -2804.0f } };

                    Vec3f D_808CA538[] = { { -890.0f, 0.0f, -2804.0f },
                                           { -390.0f, 0.0f, -3304.0f },
                                           { -890.0f, 0.0f, -3804.0f },
                                           { -1390.0f, 0.0f, -3304.0f } };
                    if (this->unk_1A2 == 0) {
                        phi_v0_3 = &D_808CA538[this->unk_1A0];
                    } else {
                        phi_v0_3 = &D_808CA508[this->unk_1A0];
                    }

                    Math_SmoothScaleMaxMinF(&this->cameraEye.x, phi_v0_3->x, 0.2f, this->unk_204 * 20.0f, 0.0f);
                    Math_SmoothScaleMaxMinF(&this->cameraEye.y, player->actor.posRot.pos.y + 30.0f, 0.1f,
                                            this->unk_204 * 20.0f, 0.0f);
                    Math_SmoothScaleMaxMinF(&this->cameraEye.z, phi_v0_3->z, 0.1f, this->unk_204 * 20.0f, 0.0f);
                    Math_SmoothScaleMaxMinF(&this->unk_204, 1.0f, 1.0f, 0.02f, 0.0f);
                } else {
                    if (this->unk_1A2 == 0) {
                        this->unk_230 += 0.01f;
                    } else {
                        this->unk_230 -= 0.01f;
                    }
                    Math_SmoothScaleMaxMinF(&this->unk_22C, 220.0f, 0.1f, 5.0f, 0.1f);
                    tempSin = this->unk_22C * sinf(this->unk_230);
                    tempCos = this->unk_22C * cosf(this->unk_230);
                    tempSin += this->actor.posRot.pos.x;
                    Math_SmoothScaleMaxMinF(&this->cameraEye.x, tempSin, 0.2f, 50.0f, 0.0f);
                    Math_SmoothScaleMaxMinF(&this->cameraEye.y, this->actor.posRot.pos.y + 20.0f, 0.2f, 50.0f, 0.0f);

                    Math_SmoothScaleMaxMinF(&this->cameraEye.z, this->actor.posRot.pos.z + tempCos, 0.2f, 50.0f, 0.0f);
                    Math_SmoothScaleMaxMinF(&this->unk_23C, 0.0f, 0.2f, 0.01f, 0.0f);
                }
            } else {

                if (this->unk_1A2 == 0) {
                    Math_SmoothScaleMaxMinF(&this->unk_23C, -0.5f, 0.2f, 0.05f, 0.0f);
                } else {
                    Math_SmoothScaleMaxMinF(&this->unk_23C, 0.5f, 0.2f, 0.05f, 0.0f);
                }

                Math_SmoothScaleMaxMinF(&this->cameraEye.x, -890.0f, 0.1f, this->unk_204 * 5.0f, 0.1f);
                Math_SmoothScaleMaxMinF(&this->cameraEye.z, -3304.0f, 0.1f, this->unk_204 * 5.0f, 0.1f);
                Math_SmoothScaleMaxMinF(&this->unk_204, 1.0f, 1.0f, 0.05f, 0.0f);
            }

            if (this->unk_1DA == 820) {
                Audio_SetBGM(0x21);
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART,
                            Math_Sins(this->actor.shape.rot.y) * -50.0f + this->actor.posRot.pos.x,
                            this->actor.posRot.pos.y,
                            Math_Coss(this->actor.shape.rot.y) * -50.0f + this->actor.posRot.pos.z, 0, 0, 0, 0);
            }
            if (this->unk_1DA == 600) {
                camera = Gameplay_GetCamera(globalCtx, 0);
                camera->eye = this->cameraEye;
                camera->eyeNext = this->cameraEye;
                camera->at = this->cameraAt;
                func_800C08AC(globalCtx, this->cutsceneCamera, 0);
                this->unk_1BC = 0;
                this->cutsceneCamera = 0;
                this->unk_19C = 100;
                Gameplay_ChangeCameraStatus(globalCtx, 0, 7);
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, -890.0f, -1523.76f,
                                   -3304.0f, 0, 0, 0, 0);
                this->skelAnime.animPlaybackSpeed = 0.0f;
                Flags_SetClear(globalCtx, globalCtx->roomCtx.curRoom.num);
            }
        case 100:
            if ((this->unk_1DA < 0x2C6) && (Math_Rand_ZeroOne() < 0.5f)) {
                Color_RGBA8 D_808CA568 = { 0x00, 0x00, 0x00, 0x64 };
                Color_RGBA8 D_808CA56C = { 0x00, 0x00, 0x00, 0x00 };
                sp70.x = Math_Rand_CenteredFloat(60.0f) + this->actor.posRot2.pos.x;
                sp70.y = (Math_Rand_ZeroOne() * 50.0f) + -1498.76f;
                sp70.z = Math_Rand_CenteredFloat(60.0f) + this->actor.posRot2.pos.z;
                EffectSsGMagma2_Spawn(globalCtx, &sp70, &D_808CA568, &D_808CA56C, 5, 1,
                                      (s16)(Math_Rand_ZeroOne() * 50.0f) + 50);
            }
            break;
    }
    if (this->cutsceneCamera != 0) {
        Gameplay_CameraSetAtEye(globalCtx, this->cutsceneCamera, &this->cameraAt, &this->cameraEye);
    }
}
#else
s32 D_808CA498[] = { 0xC3DC0000, 0x00000000, 0xC54E8000, 0xC45E8000, 0x00000000, 0xC56AA000,
                     0xC4A78000, 0x00000000, 0xC54E8000, 0xC45E8000, 0x00000000, 0xC5326000 };
s32 D_808CA4C8[] = { 0xC45E8000, 0x00000000, 0xC5326000, 0xC3DC0000, 0x00000000, 0xC54E8000,
                     0xC45E8000, 0x00000000, 0xC56AA000, 0xC4A78000, 0x00000000, 0xC54E8000 };
s32 D_808CA4F8[] = { 0xFFFF00FF, 0x00000064 };
s32 D_808CA500[] = { 0xFF0000FF, 0x00000000 };
s32 D_808CA508[] = { 0xC3C30000, 0x00000000, 0xC54E8000, 0xC45E8000, 0x00000000, 0xC56DC000,
                     0xC4ADC000, 0x00000000, 0xC54E8000, 0xC45E8000, 0x00000000, 0xC52F4000 };
s32 D_808CA538[] = { 0xC45E8000, 0x00000000, 0xC52F4000, 0xC3C30000, 0x00000000, 0xC54E8000,
                     0xC45E8000, 0x00000000, 0xC56DC000, 0xC4ADC000, 0x00000000, 0xC54E8000 };
s32 D_808CA568 = 0x00000064;
s32 D_808CA56C = 0x00000000;
s32 D_808CA570[] = { 0x00000000, 0x00000000, 0x00000000 };
s32 D_808CA57C[] = { 0x00000000, 0x3F800000, 0x00000000 };
s32 D_808CA588 = 0xFFFF64FF;
s32 D_808CA58C = 0xFF6400FF;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C5578.s")
#endif

void BossDodongo_UpdateEffects(GlobalContext* globalCtx) { 
    BossDodongoEffect* currentEffect = (BossDodongoEffect*)globalCtx->unk_11E10;
    Color_RGB8 sp8[] = { { 0xFF, 0x80, 0x00 }, { 0xFF, 0x00, 0x00 }, { 0xFF, 0xFF, 0x00 }, { 0xFF, 0x00, 0x00 } };
    s16 colorIndex;
    s16 i;

    for (i = 0; i < 80; i++, currentEffect++) {
        if (currentEffect->unk_24 != 0) {
            currentEffect->unk_0.x += currentEffect->unk_C.x;
            currentEffect->unk_0.y += currentEffect->unk_C.y;
            currentEffect->unk_0.z += currentEffect->unk_C.z;
            currentEffect->unk_25++;
            currentEffect->unk_C.x += currentEffect->unk_18.x;
            currentEffect->unk_C.y += currentEffect->unk_18.y;
            currentEffect->unk_C.z += currentEffect->unk_18.z;
            if (currentEffect->unk_24 == 1) {
                colorIndex = currentEffect->unk_25 % 4;
                currentEffect->unk_26 = sp8[colorIndex].r;
                currentEffect->unk_27 = sp8[colorIndex].g;
                currentEffect->unk_28 = sp8[colorIndex].b;
                currentEffect->unk_2A -= 20;
                if (currentEffect->unk_2A <= 0) {
                    currentEffect->unk_2A = 0;
                    currentEffect->unk_24 = 0;
                }
            }
        }
    }
}

void BossDodongo_DrawEffect(GlobalContext* globalCtx) {
    MtxF* unkMtx;
    s16 i;
    u8 phi_s3 = 0;
    BossDodongoEffect* currentEffect;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    
    currentEffect = (BossDodongoEffect*)globalCtx->unk_11E10;
    OPEN_DISPS(gfxCtx, "../z_boss_dodongo.c", 5228);
    func_80093D84(globalCtx->state.gfxCtx);
    unkMtx = &globalCtx->mf_11DA0;
    for (i = 0; i < 80; i++, currentEffect++) {
        if (currentEffect->unk_24 == 1) {
            gDPPipeSync(POLY_XLU_DISP++);
            if (phi_s3 == 0) {
                gSPDisplayList(POLY_XLU_DISP++, D_06009D50);
                phi_s3++;
            }
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, currentEffect->unk_26, currentEffect->unk_27, currentEffect->unk_28,
                            currentEffect->unk_2A);
            Matrix_Translate(currentEffect->unk_0.x, currentEffect->unk_0.y, currentEffect->unk_0.z, MTXMODE_NEW);
            func_800D1FD4(unkMtx);
            Matrix_Scale(currentEffect->unk_2C, currentEffect->unk_2C, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_dodongo.c", 5253),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_06009DD0);
        }
    }
    CLOSE_DISPS(gfxCtx, "../z_boss_dodongo.c", 5258);
}
