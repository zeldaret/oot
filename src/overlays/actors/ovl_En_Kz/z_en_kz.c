/*
 * File: z_en_kz.c
 * Overlay: ovl_En_Kz
 * Description: King Zora
 */

#include "z_en_kz.h"

#define FLAGS 0x00000009

#define THIS ((EnKz*)thisx)

void EnKz_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKz_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKz_Update(Actor* thisx, GlobalContext* globalCtx);
void EnKz_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnKz_PreMweepWait(EnKz* this, GlobalContext* globalCtx);
void EnKz_SetupMweep(EnKz* this, GlobalContext* globalCtx);
void EnKz_Mweep(EnKz* this, GlobalContext* globalCtx);
void EnKz_StopMweep(EnKz* this, GlobalContext* globalCtx);
void EnKz_Wait(EnKz* this, GlobalContext* globalCtx);
void EnKz_SetupGetItem(EnKz* this, GlobalContext* globalCtx);
void EnKz_StartTimer(EnKz* this, GlobalContext* globalCtx);

const ActorInit En_Kz_InitVars = {
    ACTOR_EN_KZ,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_KZ,
    sizeof(EnKz),
    (ActorFunc)EnKz_Init,
    (ActorFunc)EnKz_Destroy,
    (ActorFunc)EnKz_Update,
    (ActorFunc)EnKz_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 80, 120, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = {
    0x00, 0x0000, 0x0000, 0x0000, 0xFF,
};

static struct_80034EC0_Entry sAnimations[] = {
    { 0x0600075C, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { 0x0600075C, 1.0f, 0.0f, -1.0f, 0x00, -10.0f },
    { 0x0600046C, 1.0f, 0.0f, -1.0f, 0x00, -10.0f },
};

extern SkeletonHeader D_060086D0;

u16 EnKz_GetTextNoMaskChild(GlobalContext* globalCtx, EnKz* this) {
    Player* player = PLAYER;

    if (CHECK_QUEST_ITEM(QUEST_ZORA_SAPPHIRE)) {
        return 0x402B;
    } else if (gSaveContext.eventChkInf[3] & 8) {
        return 0x401C;
    } else {
        player->exchangeItemId = 0x1D;
        return 0x401A;
    }
}

u16 EnKz_GetTextNoMaskAdult(GlobalContext* globalCtx, EnKz* this) {
    Player* player = PLAYER;

    if (INV_CONTENT(ITEM_TRADE_ADULT) >= ITEM_FROG) {
        if (!(gSaveContext.infTable[19] & 0x200)) {
            if (CHECK_OWNED_EQUIP(EQUIP_TUNIC, 2)) {
                return 0x401F;
            } else {
                return 0x4012;
            }
        } else {
            return CHECK_QUEST_ITEM(QUEST_SONG_SERENADE) ? 0x4045 : 0x401A;
        }
    } else {
        player->exchangeItemId = 0xC;
        return 0x4012;
    }
}

u16 EnKz_GetText(GlobalContext* globalCtx, EnKz* this) {
    u16 reactionText = Text_GetFaceReaction(globalCtx, 0x1E);

    if (reactionText != 0) {
        return reactionText;
    }

    if (LINK_IS_ADULT) {
        return EnKz_GetTextNoMaskAdult(globalCtx, this);
    } else {
        return EnKz_GetTextNoMaskChild(globalCtx, this);
    }
}

s16 func_80A9C6C0(GlobalContext* globalCtx, EnKz* this) {
    s32 pad;
    s16 ret = 1;

    switch (func_8010BDBC(&globalCtx->msgCtx)) {
        case 6:
            ret = 0;
            switch (this->actor.textId) {
                case 0x4012:
                    gSaveContext.infTable[19] |= 0x200;
                    ret = 2;
                    break;
                case 0x401B:
                    ret = func_80106BC8(globalCtx) == 0 ? 1 : 2;
                    break;
                case 0x401F:
                    gSaveContext.infTable[19] |= 0x200;
                    break;
            }
            break;
        case 3:
            if (this->actor.textId != 0x4014) {
                if (this->actor.textId == 0x401B && !this->sfxPlayed) {
                    Audio_PlaySoundGeneral(NA_SE_SY_CORRECT_CHIME, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                           &D_801333E8);
                    this->sfxPlayed = true;
                }
            } else if (!this->sfxPlayed) {
                Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                this->sfxPlayed = true;
            }
            break;
        case 4:
            if (func_80106BC8(globalCtx) == 0) {
                break;
            }
            if (this->actor.textId == 0x4014) {
                if (globalCtx->msgCtx.choiceIndex == 0) {
                    EnKz_SetupGetItem(this, globalCtx);
                    ret = 2;
                } else {
                    this->actor.textId = 0x4016;
                    func_8010B720(globalCtx, this->actor.textId);
                }
            }
            break;
        case 5:
            if (func_80106BC8(globalCtx) != 0) {
                ret = 2;
            }
            break;
        case 0:
        case 1:
        case 2:
        case 7:
        case 8:
        case 9:
            break;
    }
    return ret;
}

void EnKz_UpdateEyes(EnKz* this) {
    if (DECR(this->blinkTimer) == 0) {
        this->eyeIdx += 1;
        if (this->eyeIdx >= 3) {
            this->blinkTimer = Math_Rand_S16Offset(30, 30);
            this->eyeIdx = 0;
        }
    }
}

s32 func_80A9C95C(GlobalContext* globalCtx, EnKz* this, s16* arg2, f32 unkf, callback1_800343CC callback1,
                  callback2_800343CC callback2) {
    Player* player = PLAYER;
    s16 sp32;
    s16 sp30;
    f32 xzDistFromLink;
    f32 yaw;

    if (func_8002F194(&this->actor, globalCtx) != 0) {
        *arg2 = 1;
        return 1;
    }

    if (*arg2 != 0) {
        *arg2 = callback2(globalCtx, this);
        return 0;
    }

    yaw = Math_Vec3f_Yaw(&this->actor.initPosRot.pos, &player->actor.posRot.pos);
    yaw -= this->actor.shape.rot.y;
    if ((fabsf(yaw) > 1638.0f) || (this->actor.xzDistFromLink < 265.0f)) {
        this->actor.flags &= ~1;
        return 0;
    }

    this->actor.flags |= 1;

    func_8002F374(globalCtx, &this->actor, &sp32, &sp30);
    if (!((sp32 >= -30) && (sp32 < 361) && (sp30 >= -10) && (sp30 < 241))) {
        return 0;
    }

    xzDistFromLink = this->actor.xzDistFromLink;
    this->actor.xzDistFromLink = Math_Vec3f_DistXZ(&this->actor.initPosRot.pos, &player->actor.posRot.pos);
    if (func_8002F2CC(&this->actor, globalCtx, unkf) == 0) {
        this->actor.xzDistFromLink = xzDistFromLink;
        return 0;
    }
    this->actor.xzDistFromLink = xzDistFromLink;
    this->actor.textId = callback1(globalCtx, this);

    return 0;
}

void func_80A9CB18(EnKz* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (func_80A9C95C(globalCtx, this, &this->unk_1E0.unk_00, 340.0f, EnKz_GetText, func_80A9C6C0) != 0) {
        if ((this->actor.textId == 0x401A) && (!(gSaveContext.eventChkInf[3] & 8))) {
            if (func_8002F368(globalCtx) == 0x1D) {
                this->actor.textId = 0x401B;
                this->sfxPlayed = false;
            } else {
                this->actor.textId = 0x401A;
            }
            player->actor.textId = this->actor.textId;
            return;
        }
        if (LINK_IS_ADULT) {
            if ((INV_CONTENT(ITEM_TRADE_ADULT) == ITEM_PRESCRIPTION) && (func_8002F368(globalCtx) == 0xC)) {
                this->actor.textId = 0x4014;
                this->sfxPlayed = false;
                player->actor.textId = this->actor.textId;
                this->isTrading = true;
                return;
            }
            this->isTrading = false;
            if (gSaveContext.infTable[19] & 0x200) {
                this->actor.textId = CHECK_QUEST_ITEM(QUEST_SONG_SERENADE) ? 0x4045 : 0x401A;
                player->actor.textId = this->actor.textId;
                return;
            }
            this->actor.textId = CHECK_OWNED_EQUIP(EQUIP_TUNIC, 2) ? 0x401F : 0x4012;
            player->actor.textId = this->actor.textId;
        }
    }
}

s32 EnKz_FollowPath(EnKz* this, GlobalContext* globalCtx) {
    Path* path;
    Vec3s* pointPos;
    f32 pathDiffX;
    f32 pathDiffZ;

    if ((this->actor.params & 0xFF00) == 0xFF00) {
        return 0;
    }

    path = &globalCtx->setupPathList[(this->actor.params & 0xFF00) >> 8];
    pointPos = SEGMENTED_TO_VIRTUAL(path->points);
    pointPos += this->waypoint;

    pathDiffX = pointPos->x - this->actor.posRot.pos.x;
    pathDiffZ = pointPos->z - this->actor.posRot.pos.z;
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, (Math_atan2f(pathDiffX, pathDiffZ) * 10430.3779296875f), 0xA,
                            0x3E8, 1);

    if ((SQ(pathDiffX) + SQ(pathDiffZ)) < 10.0f) {
        this->waypoint++;
        if (this->waypoint >= path->count) {
            this->waypoint = 0;
        }
        return 1;
    }
    return 0;
}

s32 EnKz_SetMovedPos(EnKz* this, GlobalContext* globalCtx) {
    Path* path;
    Vec3s* lastPointPos;

    if ((this->actor.params & 0xFF00) == 0xFF00) {
        return 0;
    }

    path = &globalCtx->setupPathList[(this->actor.params & 0xFF00) >> 8];
    lastPointPos = SEGMENTED_TO_VIRTUAL(path->points);
    lastPointPos += path->count - 1;

    this->actor.posRot.pos.x = lastPointPos->x;
    this->actor.posRot.pos.y = lastPointPos->y;
    this->actor.posRot.pos.z = lastPointPos->z;

    return 1;
}

void EnKz_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnKz* this = THIS;
    s32 pad;

    SkelAnime_InitSV(globalCtx, &this->skelanime, &D_060086D0, NULL, &this->limbDrawTable, &this->transitionDrawTable,
                     12);
    ActorShape_Init(&this->actor.shape, 0.0, NULL, 0.0);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    func_80061EFC(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    Actor_SetScale(&this->actor, 0.01);
    this->actor.unk_1F = 3;
    this->unk_1E0.unk_00 = 0;
    func_80034EC0(&this->skelanime, sAnimations, 0);

    if (gSaveContext.eventChkInf[3] & 8) {
        EnKz_SetMovedPos(this, globalCtx);
    }

    if (LINK_IS_ADULT) {
        if (!(gSaveContext.infTable[19] & 0x100)) {
            Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BG_ICE_SHELTER,
                                this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0,
                                0x04FF);
        }
        this->actionFunc = EnKz_Wait;
    } else {
        this->actionFunc = EnKz_PreMweepWait;
    }
}

void EnKz_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnKz* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void EnKz_PreMweepWait(EnKz* this, GlobalContext* globalCtx) {
    if (this->unk_1E0.unk_00 == 2) {
        func_80034EC0(&this->skelanime, sAnimations, 2);
        this->unk_1E0.unk_00 = 0;
        this->actionFunc = EnKz_SetupMweep;
    } else {
        func_80034F54(globalCtx, &this->unk_2A6, &this->unk_2BE, 12);
    }
}

void EnKz_SetupMweep(EnKz* this, GlobalContext* globalCtx) {
    Vec3f unused = { 0.0f, 0.0f, 0.0f };
    Vec3f pos;
    Vec3f initPos;

    this->cutsceneCamera = Gameplay_CreateSubCamera(globalCtx);
    this->gameplayCamera = globalCtx->activeCamera;
    Gameplay_ChangeCameraStatus(globalCtx, this->gameplayCamera, 1);
    Gameplay_ChangeCameraStatus(globalCtx, this->cutsceneCamera, 7);
    pos = this->actor.posRot.pos;
    initPos = this->actor.initPosRot.pos;
    pos.y += 60.0f;
    initPos.y += -100.0f;
    initPos.z += 260.0f;
    func_800C04D8(globalCtx, this->cutsceneCamera, &pos, &initPos);
    func_8002DF54(globalCtx, &this->actor, 8);
    this->actor.speedXZ = 0.1f;
    this->actionFunc = EnKz_Mweep;
}

void EnKz_Mweep(EnKz* this, GlobalContext* globalCtx) {
    Vec3f unused = { 0.0f, 0.0f, 0.0f };
    Vec3f pos;
    Vec3f initPos;

    pos = this->actor.posRot.pos;
    initPos = this->actor.initPosRot.pos;
    pos.y += 60.0f;
    initPos.y += -100.0f;
    initPos.z += 260.0f;
    func_800C04D8(globalCtx, this->cutsceneCamera, &pos, &initPos);
    if ((EnKz_FollowPath(this, globalCtx) == 1) && (this->waypoint == 0)) {
        func_80034EC0(&this->skelanime, sAnimations, 1);
        Inventory_ReplaceItem(globalCtx, ITEM_LETTER_RUTO, ITEM_BOTTLE);
        EnKz_SetMovedPos(this, globalCtx);
        gSaveContext.eventChkInf[3] |= 8;
        this->actor.speedXZ = 0.0;
        this->actionFunc = EnKz_StopMweep;
    }
    if (this->skelanime.animCurrentFrame == 13.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_VO_KZ_MOVE);
    }
}

void EnKz_StopMweep(EnKz* this, GlobalContext* globalCtx) {
    Gameplay_ChangeCameraStatus(globalCtx, this->gameplayCamera, 7);
    Gameplay_ClearCamera(globalCtx, this->cutsceneCamera);
    func_8002DF54(globalCtx, &this->actor, 7);
    this->actionFunc = EnKz_Wait;
}

void EnKz_Wait(EnKz* this, GlobalContext* globalCtx) {
    if (this->unk_1E0.unk_00 == 2) {
        this->actionFunc = EnKz_SetupGetItem;
        EnKz_SetupGetItem(this, globalCtx);
    } else {
        func_80034F54(globalCtx, &this->unk_2A6, &this->unk_2BE, 12);
    }
}

void EnKz_SetupGetItem(EnKz* this, GlobalContext* globalCtx) {
    s32 getItemID;
    f32 xzRange;
    f32 yRange;

    if (func_8002F410(this, globalCtx)) {
        this->actor.attachedA = NULL;
        this->unk_1E0.unk_00 = 1;
        this->actionFunc = EnKz_StartTimer;
    } else {
        getItemID = this->isTrading == true ? GI_FROG : GI_TUNIC_ZORA;
        yRange = fabsf(this->actor.yDistFromLink) + 1.0f;
        xzRange = this->actor.xzDistFromLink + 1.0f;
        func_8002F434(&this->actor, globalCtx, getItemID, xzRange, yRange);
    }
}

void EnKz_StartTimer(EnKz* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && (func_80106BC8(globalCtx))) {
        if (INV_CONTENT(ITEM_TRADE_ADULT) == ITEM_FROG) {
            func_80088AA0(180); // start timer2 with 3 minutes
            gSaveContext.eventInf[1] &= ~1;
        }
        this->unk_1E0.unk_00 = 0;
        this->actionFunc = EnKz_Wait;
    }
}

void EnKz_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnKz* this = THIS;
    s32 pad;

    if (LINK_IS_ADULT && !(gSaveContext.infTable[19] & 0x100)) {
        gSaveContext.infTable[19] |= 0x100;
    }
    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    EnKz_UpdateEyes(this);
    Actor_MoveForward(&this->actor);
    if (this->actionFunc != EnKz_StartTimer) {
        func_80A9CB18(this, globalCtx);
    }
    this->actionFunc(this, globalCtx);
}

s32 EnKz_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    s32 limb = limbIndex;

    if (limb == 8 || limb == 9 || limb == 10) {
        rot->y += Math_Sins(THIS->unk_2A6[limb]) * 200.0f;
        rot->z += Math_Coss(THIS->unk_2BE[limb]) * 200.0f;
    }
    return 0;
}

void EnKz_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    s32 limb = limbIndex;
    Vec3f mult = { 2600.0f, 0.0f, 0.0f };

    if (limb == 11) {
        Matrix_MultVec3f(&mult, &THIS->actor.posRot2.pos);
    }
}

void EnKz_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static UNK_PTR sEyeSegments[] = {
        0x06001470,
        0x06001870,
        0x06001C70,
    };
    EnKz* this = THIS;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_kz.c", 1259);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeSegments[this->eyeIdx]));
    func_800943C8(globalCtx->state.gfxCtx);
    SkelAnime_DrawSV(globalCtx, this->skelanime.skeleton, this->skelanime.limbDrawTbl, this->skelanime.dListCount,
                     EnKz_OverrideLimbDraw, EnKz_PostLimbDraw, &this->actor);
    Graph_CloseDisps(&dispRefs, globalCtx->state.gfxCtx, "../z_en_kz.c", 1281);
}
