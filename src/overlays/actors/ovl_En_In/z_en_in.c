#include "z_en_in.h"
#include "overlays/actors/ovl_En_Horse/z_en_horse.h"

#define FLAGS 0x00000019

#define THIS ((EnIn*)thisx)

void EnIn_Init(Actor* thisx, GlobalContext* globalCtx);
void EnIn_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnIn_Update(Actor* thisx, GlobalContext* globalCtx);
void EnIn_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A79FB0(EnIn* this, GlobalContext* globalCtx);
void func_80A7A304(EnIn* this, GlobalContext* globalCtx);
void func_80A7A4C8(EnIn* this, GlobalContext* globalCtx);
void func_80A7A568(EnIn* this, GlobalContext* globalCtx);
void func_80A7A848(EnIn* this, GlobalContext* globalCtx);
void func_80A7ABD4(EnIn* this, GlobalContext* globalCtx);
void func_80A7AEF0(EnIn* this, GlobalContext* globalCtx);
void func_80A7B018(EnIn* this, GlobalContext* globalCtx);
void func_80A7B024(EnIn* this, GlobalContext* globalCtx);
void func_80A7AE84(EnIn* this, GlobalContext* globalCtx);
void func_80A7A770(EnIn* this, GlobalContext* globalCtx);
void func_80A7A940(EnIn* this, GlobalContext* globalCtx);
void func_80A7AA40(EnIn* this, GlobalContext* globalCtx);
void func_80A7A4BC(EnIn* this, GlobalContext* globalCtx);

const ActorInit En_In_InitVars = {
    ACTOR_EN_IN,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_IN,
    sizeof(EnIn),
    (ActorFunc)EnIn_Init,
    (ActorFunc)EnIn_Destroy,
    (ActorFunc)EnIn_Update,
    (ActorFunc)EnIn_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 18, 46, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = {
    0, 0, 0, 0, MASS_IMMOVABLE,
};

static struct_D_80AA1678 sAnimationInfo[] = {
    { 0x06001CC0, 1.0f, ANIMMODE_LOOP, 0.0f }, { 0x06001CC0, 1.0f, ANIMMODE_LOOP, -10.0f },
    { 0x06013C6C, 1.0f, ANIMMODE_LOOP, 0.0f }, { 0x06013C6C, 1.0f, ANIMMODE_LOOP, -10.0f },
    { 0x06000CB0, 1.0f, ANIMMODE_LOOP, 0.0f }, { 0x060003B4, 1.0f, ANIMMODE_LOOP, -10.0f },
    { 0x06001BE0, 1.0f, ANIMMODE_LOOP, 0.0f }, { 0x06013D60, 1.0f, ANIMMODE_LOOP, 0.0f },
    { 0x0601431C, 1.0f, ANIMMODE_LOOP, 0.0f }, { 0x06014CA8, 1.0f, ANIMMODE_LOOP, 0.0f },
};

static AnimationHeader* D_80A7B918[] = {
    0x060151C8, 0x06015DF0, 0x06016B3C, 0x06015814, 0x0601646C, 0x060175D0, 0x06017B58, 0x06018C38,
};

static Gfx* sAlternateOutfitDLs[] = {
    NULL,       NULL,       0x06013688, 0x060137C0, 0x06013910, 0x060132B8, 0x060133F0,
    0x06013540, 0x06013100, 0x06011758, 0x06012AC0, 0x06012BF0, 0x06012D20, 0x06012480,
    0x060125B0, 0x060126E0, 0x06011AD8, 0x06012350, 0x06012220, 0x06012120,
};

extern AnimationHeader D_060003B4;
extern AnimationHeader D_06001BE0;
extern AnimationHeader D_06013D60;
extern AnimationHeader D_06014CA8;
extern AnimationHeader D_06015814;
extern AnimationHeader D_0601646C;
extern AnimationHeader D_06018C38;
extern FlexSkeletonHeader D_06013B88;
extern UNK_TYPE D_060034D0;
extern Gfx D_06007A20[];
extern Gfx D_06007BF8[];

u16 func_80A78FB0(GlobalContext* globalCtx) {
    if (gSaveContext.eventChkInf[1] & 0x10) {
        if (gSaveContext.infTable[9] & 0x80) {
            return 0x2046;
        } else {
            return 0x2045;
        }
    }
    if (gSaveContext.infTable[9] & 0x10) {
        return 0x2040;
    } else {
        return 0x203F;
    }
}

u16 func_80A79010(GlobalContext* globalCtx) {
    Player* player = PLAYER;
    u16 temp_v0 = Text_GetFaceReaction(globalCtx, 25);

    if (temp_v0 != 0) {
        return temp_v0;
    }
    if (gSaveContext.eventChkInf[1] & 0x100) {
        if (gSaveContext.nightFlag == 0) {
            return 0x205F;
        } else {
            return 0x2057;
        }
    }
    if (gSaveContext.nightFlag == 1) {
        return 0x204E;
    }
    switch (gSaveContext.eventInf[0] & 0xF) {
        case 1:
            if (!(player->stateFlags1 & 0x800000)) {
                return 0x2036;
            } else if (gSaveContext.eventChkInf[1] & 0x800) {
                if (gSaveContext.infTable[10] & 4) {
                    return 0x2036;
                } else {
                    return 0x2038;
                }
            } else {
                return 0x2037;
            }
        case 3:
            if ((gSaveContext.eventInf[0] & 0x40) || (gSaveContext.eventInf[0] & 0x20)) {
                return 0x203E;
            } else {
                return 0x203D;
            }
        case 4:
            return 0x203A;
        case 5:
        case 6:
            return 0x203C;
        case 7:
            return 0x205B;
        case 2:
        default:
            if (gSaveContext.infTable[0x9] & 0x400) {
                return 0x2031;
            } else {
                return 0x2030;
            }
    }
}

u16 func_80A79168(GlobalContext* globalCtx, Actor* thisx) {
    u16 temp_v0 = Text_GetFaceReaction(globalCtx, 25);

    if (temp_v0 != 0) {
        return temp_v0;
    }
    if (LINK_IS_CHILD) {
        return func_80A78FB0(globalCtx);
    } else {
        return func_80A79010(globalCtx);
    }
}

s16 func_80A791CC(GlobalContext* globalCtx, Actor* thisx) {
    s32 temp_var = 0;
    switch (thisx->textId) {
        case 0x2045:
            gSaveContext.infTable[9] |= 0x80;
            break;
        case 0x203E:
            temp_var = 2;
            break;
        case 0x203F:
            gSaveContext.eventChkInf[1] |= 2;
            gSaveContext.infTable[9] |= 0x10;
            break;
    }
    return temp_var;
}

s16 func_80A7924C(GlobalContext* globalCtx, Actor* thisx) {
    EnIn* this = THIS;
    s32 sp18 = 1;

    switch (this->actor.textId) {
        case 0x2030:
        case 0x2031:
            if (globalCtx->msgCtx.choiceIndex == 1) {
                this->actor.textId = 0x2032;
            } else if (gSaveContext.rupees < 10) {
                this->actor.textId = 0x2033;
            } else {
                this->actor.textId = 0x2034;
            }
            func_8010B720(globalCtx, this->actor.textId);
            gSaveContext.infTable[9] |= 0x400;
            break;
        case 0x2034:
            if (globalCtx->msgCtx.choiceIndex == 1) {
                Rupees_ChangeBy(-10);
                this->actor.textId = 0x205C;
            } else {
                this->actor.textId = 0x2035;
            }
            func_8010B720(globalCtx, this->actor.textId);
            break;
        case 0x2036:
        case 0x2037:
            if (globalCtx->msgCtx.choiceIndex == 1) {
                sp18 = 2;
            } else {
                this->actor.textId = 0x201F;
                func_8010B720(globalCtx, this->actor.textId);
            }
            break;
        case 0x2038:
            if (globalCtx->msgCtx.choiceIndex == 0 && gSaveContext.rupees >= 50) {
                sp18 = 2;
            } else {
                this->actor.textId = 0x2039;
                func_8010B720(globalCtx, this->actor.textId);
                gSaveContext.infTable[10] |= 4;
            }
            break;
        case 0x205B:
            if (globalCtx->msgCtx.choiceIndex == 0 && gSaveContext.rupees >= 50) {
                sp18 = 2;
            } else {
                func_8010B720(globalCtx, this->actor.textId = 0x2039);
                gSaveContext.eventInf[0] &= ~0xF;
                gSaveContext.eventInf[0] &= ~0x20;
                gSaveContext.eventInf[0] &= ~0x40;
                this->actionFunc = func_80A7A4C8;
            }
            break;
    }
    if (!gSaveContext.rupees) {}

    return sp18;
}

s16 func_80A7949C(GlobalContext* globalCtx, Actor* thisx) {
    s32 phi_v1 = 1;
    if (thisx->textId == 0x2035) {
        Rupees_ChangeBy(-10);
        thisx->textId = 0x205C;
        func_8010B720(globalCtx, thisx->textId);
    } else {
        phi_v1 = 2;
    }
    return phi_v1;
}

s16 func_80A79500(GlobalContext* globalCtx, Actor* thisx) {
    s16 sp1E = 1;

    osSyncPrintf("message_check->(%d[%x])\n", func_8010BDBC(&globalCtx->msgCtx), thisx->textId);
    switch (func_8010BDBC(&globalCtx->msgCtx)) {
        case 0:
        case 1:
            break;
        case 2:
            sp1E = func_80A791CC(globalCtx, thisx);
            break;
        case 3:
            break;
        case 4:
            if (func_80106BC8(globalCtx) != 0) {
                sp1E = func_80A7924C(globalCtx, thisx);
            }
            break;
        case 5:
            if (func_80106BC8(globalCtx) != 0) {
                sp1E = func_80A7949C(globalCtx, thisx);
            }
            break;
        case 6:
        case 7:
        case 8:
        case 9:
            break;
    }
    return sp1E;
}

void func_80A795C8(EnIn* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 phi_a3;

    if (this->skelAnime.animation == &D_060003B4 || this->skelAnime.animation == &D_06001BE0 ||
        this->skelAnime.animation == &D_06013D60) {
        phi_a3 = 1;
    } else {
        phi_a3 = 0;
    }
    if (this->actionFunc == func_80A7A568) {
        phi_a3 = 4;
    }
    if (this->actionFunc == func_80A7B024) {
        this->unk_308.unk_18 = globalCtx->view.eye;
        this->unk_308.unk_14 = 60.0f;
    } else {
        this->unk_308.unk_18 = player->actor.world.pos;
        this->unk_308.unk_14 = 16.0f;
    }
    func_80034A14(&this->actor, &this->unk_308, 1, phi_a3);
}

void func_80A79690(SkelAnime* skelAnime, EnIn* this, GlobalContext* globalCtx) {
    if (skelAnime->baseTransl.y < skelAnime->jointTable[0].y) {
        skelAnime->moveFlags |= 3;
        AnimationContext_SetMoveActor(globalCtx, &this->actor, skelAnime, 1.0f);
    }
}

void func_80A796EC(EnIn* this, s32 arg1) {
    Animation_Change(&this->skelAnime, sAnimationInfo[arg1].animation, 1.0f, 0.0f,
                     Animation_GetLastFrame(sAnimationInfo[arg1].animation), sAnimationInfo[arg1].mode,
                     sAnimationInfo[arg1].transitionRate);
}

s32 func_80A7975C(EnIn* this, GlobalContext* globalCtx) {
    if (this->actor.params != 1 || this->actor.shape.rot.z != 1 || LINK_IS_CHILD) {
        return 0;
    }
    this->animationIdx = 1;
    this->collider.base.ocFlags1 &= ~OC1_ON;
    Animation_Change(&this->skelAnime, D_80A7B918[this->animationIdx], 1.0f, 0.0f,
                     Animation_GetLastFrame(D_80A7B918[this->animationIdx]), 2, 0.0f);
    this->actionFunc = func_80A7A304;
    return 1;
}

s32 func_80A79830(EnIn* this, GlobalContext* globalCtx) {
    if (globalCtx->sceneNum == SCENE_SPOT20 && gSaveContext.linkAge == 1 && (gSaveContext.nightFlag == 0) &&
        this->actor.shape.rot.z == 1 && !(gSaveContext.eventChkInf[1] & 0x10)) {
        return 1;
    }
    if (globalCtx->sceneNum == SCENE_MALON_STABLE && gSaveContext.linkAge == 1 && (gSaveContext.nightFlag == 0) &&
        this->actor.shape.rot.z == 3 && (gSaveContext.eventChkInf[1] & 0x10)) {
        return 1;
    }
    if (globalCtx->sceneNum == SCENE_MALON_STABLE && gSaveContext.linkAge == 1 && gSaveContext.nightFlag == 1) {
        if ((this->actor.shape.rot.z == 2) && !(gSaveContext.eventChkInf[1] & 0x10)) {
            return 1;
        }
        if ((this->actor.shape.rot.z == 4) && (gSaveContext.eventChkInf[1] & 0x10)) {
            return 1;
        }
    }
    if (globalCtx->sceneNum == SCENE_SPOT20 && LINK_IS_ADULT && (gSaveContext.nightFlag == 0)) {
        if ((this->actor.shape.rot.z == 5) && !(gSaveContext.eventChkInf[1] & 0x100)) {
            return 2;
        }
        if ((this->actor.shape.rot.z == 7) && (gSaveContext.eventChkInf[1] & 0x100)) {
            return 4;
        }
    }
    if (globalCtx->sceneNum == SCENE_SOUKO && LINK_IS_ADULT && gSaveContext.nightFlag == 1) {
        if (this->actor.shape.rot.z == 6 && !(gSaveContext.eventChkInf[1] & 0x100)) {
            return 3;
        }
        if (this->actor.shape.rot.z == 8 && (gSaveContext.eventChkInf[1] & 0x100)) {
            return 3;
        }
    }
    return 0;
}

void func_80A79A2C(EnIn* this) {
    s16 phi_v1;

    if (this->unk_1EE != 3) {
        if (this->unk_1EA == 0) {
            phi_v1 = 0;
        } else {
            phi_v1 = --this->unk_1EA;
        }
        if (phi_v1 == 0) {
            this->unk_1EE++;
            if (this->unk_1EE >= 3) {
                this->unk_1EA = Rand_S16Offset(30, 30);
                this->unk_1EE = 0;
            }
        }
    }
}

void func_80A79AB4(EnIn* this, GlobalContext* globalCtx) {
    s32 i;
    u32 f = 0;

    if (this->skelAnime.animation != &D_06014CA8) {
        f = globalCtx->gameplayFrames;
    }
    for (i = 0; i < ARRAY_COUNT(this->unk_330); i++) {
        this->unk_330[i].y = (2068 + 50 * i) * f;
        this->unk_330[i].z = (2368 + 50 * i) * f;
    }
}

void func_80A79BAC(EnIn* this, GlobalContext* globalCtx, s32 index, u32 arg3) {
    s16 entrances[] = { 0x0558, 0x04CA, 0x0157 };

    globalCtx->nextEntranceIndex = entrances[index];
    if (index == 2) {
        gSaveContext.nextCutsceneIndex = 0xFFF0;
    }
    globalCtx->fadeTransition = arg3;
    globalCtx->sceneLoadFlag = 0x14;
    func_8002DF54(globalCtx, &this->actor, 8);
    Interface_ChangeAlpha(1);
    if (index == 0) {
        AREG(6) = 0;
    }
    gSaveContext.timer1State = 0;
}

void func_80A79C78(EnIn* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Vec3f subCamAt;
    Vec3f subCamEye;
    Vec3s zeroVec = { 0, 0, 0 };

    this->subCamId = Gameplay_CreateSubCamera(globalCtx);
    Gameplay_ChangeCameraStatus(globalCtx, CAM_ID_MAIN, CAM_STAT_WAIT);
    Gameplay_ChangeCameraStatus(globalCtx, this->subCamId, CAM_STAT_ACTIVE);
    subCamAt.x = this->actor.world.pos.x;
    subCamAt.y = this->actor.world.pos.y + 60.0f;
    subCamAt.z = this->actor.world.pos.z;
    subCamEye.x = subCamAt.x;
    subCamEye.y = subCamAt.y - 22.0f;
    subCamEye.z = subCamAt.z + 40.0f;
    Gameplay_CameraSetAtEye(globalCtx, this->subCamId, &subCamAt, &subCamEye);
    this->actor.shape.rot.y = Math_Vec3f_Yaw(&this->actor.world.pos, &subCamEye);
    this->unk_308.unk_08 = zeroVec;
    this->unk_308.unk_0E = zeroVec;
    func_8010B680(globalCtx, 0x2025, NULL);
    this->unk_308.unk_00 = 1;
    player->actor.world.pos = this->actor.world.pos;
    player->actor.world.pos.x += 100.0f * Math_SinS(this->actor.shape.rot.y);
    player->actor.world.pos.z += 100.0f * Math_CosS(this->actor.shape.rot.y);
    if (player->rideActor != NULL) {
        player->rideActor->world.pos = player->actor.world.pos;
        player->rideActor->freezeTimer = 10;
    }
    player->actor.freezeTimer = 10;
    this->actor.flags &= ~1;
    ShrinkWindow_SetVal(0x20);
    Interface_ChangeAlpha(2);
}

s32 D_80A7B998 = 0;

void EnIn_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnIn* this = THIS;
    RespawnData* respawn = &gSaveContext.respawn[RESPAWN_MODE_DOWN];
    Vec3f respawnPos;

    this->ingoObjBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_IN);
    if (this->ingoObjBankIndex < 0 && this->actor.params > 0) {
        this->actionFunc = NULL;
        Actor_Kill(&this->actor);
        return;
    }
    respawnPos = respawn->pos;
    // hardcoded coords for lon lon entrance
    if (D_80A7B998 == 0 && respawnPos.x == 1107.0f && respawnPos.y == 0.0f && respawnPos.z == -3740.0f) {
        gSaveContext.eventInf[0] = 0;
        D_80A7B998 = 1;
    }
    this->actionFunc = func_80A79FB0;
}

void EnIn_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnIn* this = THIS;

    if (this->actionFunc != NULL && this->actionFunc != func_80A79FB0) {
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }
}

void func_80A79FB0(EnIn* this, GlobalContext* globalCtx) {
    s32 sp3C = 0;

    if (Object_IsLoaded(&globalCtx->objectCtx, this->ingoObjBankIndex) || this->actor.params <= 0) {
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 36.0f);
        SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06013B88, NULL, this->jointTable, this->morphTable, 20);
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
        CollisionCheck_SetInfo2(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
        if (func_80A7975C(this, globalCtx)) {
            gSaveContext.eventInf[0] &= ~0x8000;
            return;
        }
        Actor_SetScale(&this->actor, 0.01f);
        this->actor.targetMode = 6;
        this->unk_308.unk_00 = 0;
        this->actionFunc = func_80A7A4BC;

        switch (func_80A79830(this, globalCtx)) {
            case 1:
                func_80A796EC(this, 9);
                this->actionFunc = func_80A7A4BC;
                break;
            case 3:
                func_80A796EC(this, 7);
                this->actionFunc = func_80A7A4BC;
                if (!(gSaveContext.eventChkInf[1] & 0x100)) {
                    this->actor.params = 5;
                }
                break;
            case 4:
                func_80A796EC(this, 8);
                this->unk_1EE = 3;
                this->actionFunc = func_80A7A4BC;
                break;
            case 0:
                Actor_Kill(&this->actor);
                break;
            default:
                switch (gSaveContext.eventInf[0] & 0xF) {
                    case 0:
                    case 2:
                    case 3:
                    case 4:
                    case 7:
                        if (this->actor.params == 2) {
                            sp3C = 1;
                        }
                        break;
                    case 1:
                        if (this->actor.params == 3) {
                            sp3C = 1;
                        }
                        break;
                    case 5:
                    case 6:
                        if (this->actor.params == 4) {
                            sp3C = 1;
                        }
                        break;
                }
                if (sp3C != 1) {
                    Actor_Kill(&this->actor);
                    return;
                }
                switch (gSaveContext.eventInf[0] & 0xF) {
                    case 0:
                    case 2:
                        func_80A796EC(this, 2);
                        this->actionFunc = func_80A7A4C8;
                        gSaveContext.eventInf[0] = 0;
                        break;
                    case 1:
                        this->actor.targetMode = 3;
                        func_80A796EC(this, 2);
                        this->actionFunc = func_80A7A568;
                        func_80088B34(0x3C);
                        break;
                    case 3:
                        func_80A796EC(this, 4);
                        this->actionFunc = func_80A7A770;
                        break;
                    case 4:
                        func_80A796EC(this, 6);
                        this->unk_1EC = 8;
                        this->actionFunc = func_80A7A940;
                        break;
                    case 5:
                    case 6:
                        this->actor.targetMode = 3;
                        func_80A796EC(this, 6);
                        this->unk_1EC = 8;
                        this->actionFunc = func_80A7AA40;
                        break;
                    case 7:
                        func_80A796EC(this, 2);
                        this->actionFunc = func_80A7A848;
                        break;
                }
        }
    }
}

void func_80A7A304(EnIn* this, GlobalContext* globalCtx) {
    if (this->skelAnime.animation == &D_06015814 || this->skelAnime.animation == &D_0601646C) {
        if (this->skelAnime.curFrame == 8.0f) {
            func_800F41E0(&this->actor.projectedPos, NA_SE_VO_IN_LASH_0, 2);
        }
    }
    if (this->skelAnime.animation == &D_06018C38 && this->skelAnime.curFrame == 20.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_VO_IN_CRY_0);
    }
    if (SkelAnime_Update(&this->skelAnime) != 0) {
        this->animationIdx %= 8;
        this->unk_1E8 = this->animationIdx;
        if (this->animationIdx == 3 || this->animationIdx == 4) {
            Audio_PlaySoundGeneral(NA_SE_IT_LASH, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            if (Rand_ZeroOne() < 0.3f) {
                Audio_PlaySoundGeneral(NA_SE_IT_INGO_HORSE_NEIGH, &this->actor.projectedPos, 4, &D_801333E0,
                                       &D_801333E0, &D_801333E8);
            }
        }
        Animation_Change(&this->skelAnime, D_80A7B918[this->animationIdx], 1.0f, 0.0f,
                         Animation_GetLastFrame(D_80A7B918[this->animationIdx]), 2, -10.0f);
    }
}

void func_80A7A4BC(EnIn* this, GlobalContext* globalCtx) {
}

void func_80A7A4C8(EnIn* this, GlobalContext* globalCtx) {
    if (this->unk_308.unk_00 == 2) {
        func_80A79BAC(this, globalCtx, 1, 0x20);
        gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x000F) | 0x0001;
        gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x8000) | 0x8000;
        gSaveContext.infTable[10] &= ~4;
        func_800775F0(0x40);
        globalCtx->msgCtx.unk_E3E7 = 0;
        globalCtx->msgCtx.msgMode = 0x36;
        this->unk_308.unk_00 = 0;
    }
}

void func_80A7A568(EnIn* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 phi_a2;
    s32 phi_a3;

    if (!(gSaveContext.eventChkInf[1] & 0x800) && (player->stateFlags1 & 0x800000)) {
        gSaveContext.infTable[10] |= 0x800;
    }
    if (gSaveContext.timer1State == 10) {
        Audio_PlaySoundGeneral(NA_SE_SY_FOUND, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        func_80A79C78(this, globalCtx);
        this->actionFunc = func_80A7B024;
        gSaveContext.timer1State = 0;
    } else if (this->unk_308.unk_00 == 2) {
        if (globalCtx->msgCtx.choiceIndex == 0) {
            if (gSaveContext.rupees < 50) {
                globalCtx->msgCtx.unk_E3E7 = 4;
                globalCtx->msgCtx.msgMode = 0x36;
                this->unk_308.unk_00 = 0;
                return;
            }
            gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x10) | (((EnHorse*)PLAYER->rideActor)->type << 4);
            gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0xF) | 2;
            phi_a2 = 2;
            phi_a3 = 2;
        } else {
            Audio_PlaySoundGeneral(NA_SE_SY_FOUND, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            if (!(gSaveContext.eventChkInf[1] & 0x800)) {
                if (gSaveContext.infTable[10] & 0x800) {
                    gSaveContext.eventChkInf[1] |= 0x800;
                    gSaveContext.infTable[10] |= 0x800;
                }
            }
            gSaveContext.eventInf[0] &= ~0xF;
            phi_a2 = 0;
            phi_a3 = 0x20;
        }
        func_80A79BAC(this, globalCtx, phi_a2, phi_a3);
        globalCtx->msgCtx.unk_E3E7 = 0;
        gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x8000) | 0x8000;
        globalCtx->msgCtx.msgMode = 0x36;
        this->unk_308.unk_00 = 0;
    }
}

void func_80A7A770(EnIn* this, GlobalContext* globalCtx) {
    if (this->unk_308.unk_00 == 0) {
        this->actor.flags |= 0x10000;
    } else if (this->unk_308.unk_00 == 2) {
        Rupees_ChangeBy(-50);
        this->actor.flags &= ~0x10000;
        func_80A796EC(this, 3);
        this->actionFunc = func_80A7A848;
        gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x0F) | 7;
        this->unk_308.unk_00 = 0;
        gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & 0xFFFF) | 0x20;
        if (!(gSaveContext.eventInf[0] & 0x40)) {
            globalCtx->msgCtx.unk_E3E7 = 4;
            globalCtx->msgCtx.msgMode = 0x36;
        }
    }
}

void func_80A7A848(EnIn* this, GlobalContext* globalCtx) {
    if (this->unk_308.unk_00 == 2) {
        if ((globalCtx->msgCtx.choiceIndex == 0 && gSaveContext.rupees < 50) || globalCtx->msgCtx.choiceIndex == 1) {
            gSaveContext.eventInf[0] &= ~0xF;
            this->actionFunc = func_80A7A4C8;
        } else {
            func_80A79BAC(this, globalCtx, 2, 0x26);
            gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0xF) | 2;
            gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x8000) | 0x8000;
            globalCtx->msgCtx.unk_E3E7 = 0;
            globalCtx->msgCtx.msgMode = 0x36;
        }
        this->unk_308.unk_00 = 0;
        gSaveContext.eventInf[0] &= ~0x20;
        gSaveContext.eventInf[0] &= ~0x40;
    }
}

void func_80A7A940(EnIn* this, GlobalContext* globalCtx) {
    if (this->unk_308.unk_00 == 0) {
        this->actor.flags |= 0x10000;
        return;
    }
    if (this->unk_1EC != 0) {
        this->unk_1EC--;
        if (this->unk_1EC == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_VO_IN_LOST);
        }
    }
    if (this->unk_308.unk_00 == 2) {
        this->actor.flags &= ~0x10000;
        func_80A79BAC(this, globalCtx, 2, 0x26);
        gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x000F) | 0x0002;
        gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x8000) | 0x8000;
        globalCtx->msgCtx.unk_E3E7 = 0;
        globalCtx->msgCtx.msgMode = 0x36;
        this->unk_308.unk_00 = 0;
        gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & 0xFFFF) | 0x40;
    }
}

void func_80A7AA40(EnIn* this, GlobalContext* globalCtx) {
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    Vec3f subCamAt;
    Vec3f subCamEye;

    this->subCamId = Gameplay_CreateSubCamera(globalCtx);
    this->activeCamId = globalCtx->activeCamId;
    Gameplay_ChangeCameraStatus(globalCtx, this->activeCamId, CAM_STAT_WAIT);
    Gameplay_ChangeCameraStatus(globalCtx, this->subCamId, CAM_STAT_ACTIVE);

    this->subCamAtOffset.x = 0.0f;
    this->subCamAtOffset.y = 50.0f;
    this->subCamAtOffset.z = 0.0f;
    this->subCamEyeOffset.x = 0.0f;
    this->subCamEyeOffset.y = 50.0f;
    this->subCamEyeOffset.z = 50.0f;

    subCamAt = this->actor.world.pos;
    subCamEye = this->actor.world.pos;

    subCamAt.x += this->subCamAtOffset.x;
    subCamAt.y += this->subCamAtOffset.y;
    subCamAt.z += this->subCamAtOffset.z;

    subCamEye.x += this->subCamEyeOffset.x;
    subCamEye.y += this->subCamEyeOffset.y;
    subCamEye.z += this->subCamEyeOffset.z;

    Gameplay_CameraSetAtEye(globalCtx, this->subCamId, &subCamAt, &subCamEye);
    this->actor.textId = 0x203B;
    func_8010B680(globalCtx, this->actor.textId, NULL);
    this->unk_308.unk_00 = 1;
    this->unk_1FC = 0;
    globalCtx->csCtx.frames = 0;
    ShrinkWindow_SetVal(0x20);
    Interface_ChangeAlpha(2);
    this->actionFunc = func_80A7ABD4;
}

void func_80A7ABD4(EnIn* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Vec3f subCamAt;
    Vec3f subCamEye;

    if (player->rideActor != NULL) {
        player->rideActor->freezeTimer = 10;
    }
    player->actor.freezeTimer = 10;
    if (this->actor.textId == 0x203B) {
        if (this->unk_1EC != 0) {
            this->unk_1EC--;
            if (this->unk_1EC == 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_VO_IN_LOST);
            }
        }
    }
    if (this->unk_308.unk_00 != 0) {
        if (this->unk_308.unk_00 == 2) {
            if (this->actor.textId == 0x203B) {
                this->actor.textId = 0x203C;
                func_8010B680(globalCtx, this->actor.textId, NULL);
                this->unk_308.unk_00 = 1;
                func_80A796EC(this, 3);
            } else {
                globalCtx->msgCtx.msgMode = 0x36;
                this->unk_308.unk_00 = 0;
            }
        }
    } else {
        if (globalCtx->csCtx.frames++ >= 50) {
            this->actionFunc = func_80A7AE84;
            return;
        }
        if (globalCtx->csCtx.frames == 44) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_RONRON_DOOR_CLOSE);
        }
        Math_SmoothStepToF(&this->subCamAtOffset.x, 0.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothStepToF(&this->subCamAtOffset.y, 50.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothStepToF(&this->subCamAtOffset.z, 0.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothStepToF(&this->subCamEyeOffset.x, 0.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothStepToF(&this->subCamEyeOffset.y, 150.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothStepToF(&this->subCamEyeOffset.z, 300.0f, 0.06f, 10000.0f, 0.0f);

        subCamAt = this->actor.world.pos;
        subCamEye = this->actor.world.pos;

        subCamAt.x += this->subCamAtOffset.x;
        subCamAt.y += this->subCamAtOffset.y;
        subCamAt.z += this->subCamAtOffset.z;
        subCamEye.x += this->subCamEyeOffset.x;
        subCamEye.y += this->subCamEyeOffset.y;
        subCamEye.z += this->subCamEyeOffset.z;
        Gameplay_CameraSetAtEye(globalCtx, this->subCamId, &subCamAt, &subCamEye);
    }
}

void func_80A7AE84(EnIn* this, GlobalContext* globalCtx) {
    Gameplay_ChangeCameraStatus(globalCtx, this->activeCamId, CAM_STAT_ACTIVE);
    Gameplay_ClearCamera(globalCtx, this->subCamId);
    func_8002DF54(globalCtx, &this->actor, 7);
    Interface_ChangeAlpha(0x32);
    this->actionFunc = func_80A7AEF0;
}

void func_80A7AEF0(EnIn* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 yaw;
    Vec3f pos = this->actor.world.pos;

    pos.x += 90.0f * Math_SinS(this->actor.shape.rot.y);
    pos.z += 90.0f * Math_CosS(this->actor.shape.rot.y);
    yaw = Math_Vec3f_Yaw(&pos, &player->actor.world.pos);
    if (ABS(yaw) > 0x4000) {
        globalCtx->nextEntranceIndex = 0x0476;
        globalCtx->sceneLoadFlag = 0x14;
        globalCtx->fadeTransition = 5;
        this->actionFunc = func_80A7B018;
    } else if (this->unk_308.unk_00 == 2) {
        globalCtx->msgCtx.unk_E3E7 = 4;
        globalCtx->msgCtx.msgMode = 0x36;
        this->unk_308.unk_00 = 0;
    }
}

void func_80A7B018(EnIn* this, GlobalContext* globalCtx) {
}

void func_80A7B024(EnIn* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (player->rideActor != NULL) {
        player->rideActor->freezeTimer = 10;
    }
    player->actor.freezeTimer = 10;
    if (this->unk_308.unk_00 == 2) {
        if (1) {}
        if (!(gSaveContext.eventChkInf[1] & 0x800) && (gSaveContext.infTable[10] & 0x800)) {
            gSaveContext.eventChkInf[1] |= 0x800;
            gSaveContext.infTable[10] |= 0x800;
        }
        func_80A79BAC(this, globalCtx, 0, 0x26);
        gSaveContext.eventInf[0] = gSaveContext.eventInf[0] & ~0xF;
        gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x8000) | 0x8000;
        globalCtx->msgCtx.unk_E3E7 = 4;
        globalCtx->msgCtx.msgMode = 0x36;
        this->unk_308.unk_00 = 0;
    }
}

void EnIn_Update(Actor* thisx, GlobalContext* globalCtx) {
    ColliderCylinder* collider;
    EnIn* this = THIS;

    if (this->actionFunc == func_80A79FB0) {
        this->actionFunc(this, globalCtx);
        return;
    }
    collider = &this->collider;
    Collider_UpdateCylinder(&this->actor, collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &collider->base);
    if (this->actionFunc != func_80A7A304) {
        SkelAnime_Update(&this->skelAnime);
        if (this->skelAnime.animation == &D_06001BE0 && ((gSaveContext.eventInf[0] & 0xF) != 6)) {
            func_80A79690(&this->skelAnime, this, globalCtx);
        }
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    }
    func_80A79A2C(this);
    this->actionFunc(this, globalCtx);
    if (this->actionFunc != func_80A7A304) {
        func_80A79AB4(this, globalCtx);
        if (gSaveContext.timer2Value < 6 && gSaveContext.timer2State != 0 && this->unk_308.unk_00 == 0) {
            if (func_8002F194(&this->actor, globalCtx)) {}
        } else {
            func_800343CC(globalCtx, &this->actor, &this->unk_308.unk_00,
                          ((this->actor.targetMode == 6) ? 80.0f : 320.0f) + this->collider.dim.radius, func_80A79168,
                          func_80A79500);
            if (this->unk_308.unk_00 != 0) {
                this->unk_1FA = this->unk_1F8;
                this->unk_1F8 = func_8010BDBC(&globalCtx->msgCtx);
            }
        }
        func_80A795C8(this, globalCtx);
    }
}

s32 EnIn_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnIn* this = THIS;
    Vec3s sp2C;

    if (this->actor.params > 0 && limbIndex != 16) {
        if (sAlternateOutfitDLs[limbIndex] != NULL) {
            *dList = sAlternateOutfitDLs[limbIndex];
        }
    }
    if (limbIndex == 16) {
        Matrix_Translate(1500.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        sp2C = this->unk_308.unk_08;
        Matrix_RotateZ(BINANG_TO_RAD(sp2C.x), MTXMODE_APPLY);
        Matrix_RotateX(BINANG_TO_RAD(sp2C.y), MTXMODE_APPLY);
        Matrix_Translate(-1500.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }
    if (limbIndex == 9) {
        sp2C = this->unk_308.unk_0E;
        Matrix_RotateX(BINANG_TO_RAD(sp2C.x), MTXMODE_APPLY);
        Matrix_RotateY(BINANG_TO_RAD(sp2C.y), MTXMODE_APPLY);
    }
    if (limbIndex == 9 || limbIndex == 10 || limbIndex == 13) {
        rot->y += Math_SinS(this->unk_330[limbIndex].y) * 200.0f;
        rot->z += Math_CosS(this->unk_330[limbIndex].z) * 200.0f;
    }
    return 0;
}

void EnIn_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnIn* this = THIS;
    Vec3f D_80A7B9A8 = { 1600.0, 0.0f, 0.0f };

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_in.c", 2335);
    if (limbIndex == 16) {
        Matrix_MultVec3f(&D_80A7B9A8, &this->actor.focus.pos);
        this->actor.focus.rot = this->actor.world.rot;
    }
    if (limbIndex == 12 && this->skelAnime.animation == &D_06014CA8) {
        gSPDisplayList(POLY_OPA_DISP++, D_06007A20);
    }
    if (limbIndex == 15 && this->skelAnime.animation == &D_06014CA8) {
        gSPDisplayList(POLY_OPA_DISP++, D_06007BF8);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_in.c", 2365);
}

void EnIn_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static UNK_TYPE* D_80A7B9B4[] = { 0x06003590, 0x060047D0, 0x06004BD0, 0x06004390 };
    EnIn* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_in.c", 2384);
    if (this->actionFunc != func_80A79FB0) {
        func_80093D18(globalCtx->state.gfxCtx);
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80A7B9B4[this->unk_1EE]));
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&D_060034D0));
        SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                              this->skelAnime.dListCount, EnIn_OverrideLimbDraw, EnIn_PostLimbDraw, &this->actor);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_in.c", 2416);
}
