#include "z_en_md.h"

#define FLAGS 0x02000019

#define THIS ((EnMd*)thisx)

void EnMd_Init(Actor* thisx, GlobalContext* globalCtx);
void EnMd_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnMd_Update(Actor* thisx, GlobalContext* globalCtx);
void EnMd_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80AAB874(EnMd* this, GlobalContext* globalCtx);
void func_80AAB8F8(EnMd* this, GlobalContext* globalCtx);
void func_80AAB948(EnMd* this, GlobalContext* globalCtx);
void func_80AABC10(EnMd* this, GlobalContext* globalCtx);
void func_80AABD0C(EnMd* this, GlobalContext* globalCtx);

const ActorInit En_Md_InitVars = {
    ACTOR_EN_MD,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_MD,
    sizeof(EnMd),
    (ActorFunc)EnMd_Init,
    (ActorFunc)EnMd_Destroy,
    (ActorFunc)EnMd_Update,
    (ActorFunc)EnMd_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 36, 46, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = {
    0x00, 0x0000, 0x0000, 0x0000, 0xFF,
};

static struct_80034EC0_Entry sAnimations[] = {
    { 0x060002C8, 0.0f, 0.0f, -1.0f, 0x00, 0.0f },  { 0x060002C8, 0.0f, 0.0f, -1.0f, 0x00, -10.0f },
    { 0x0600917C, 1.0f, 0.0f, -1.0f, 0x02, -1.0f }, { 0x06009E68, 1.0f, 0.0f, -1.0f, 0x00, -1.0f },
    { 0x06009B1C, 1.0f, 0.0f, -1.0f, 0x02, -1.0f }, { 0x06008E84, 1.0f, 0.0f, -1.0f, 0x00, -1.0f },
    { 0x060097F0, 1.0f, 0.0f, -1.0f, 0x00, -1.0f }, { 0x060092B0, 1.0f, 0.0f, -1.0f, 0x02, -1.0f },
    { 0x0600A138, 1.0f, 0.0f, -1.0f, 0x00, -1.0f }, { 0x06008FC0, 1.0f, 0.0f, -1.0f, 0x02, -1.0f },
    { 0x060002C8, 0.0f, 0.0f, -1.0f, 0x00, -8.0f }, { 0x06008510, 1.0f, 0.0f, -1.0f, 0x00, -1.0f },
    { 0x060095BC, 1.0f, 0.0f, -1.0f, 0x02, -1.0f }, { 0x06008738, 1.0f, 0.0f, -1.0f, 0x00, -1.0f },
};

extern AnimationHeader D_060002C8;
extern SkeletonHeader D_06007FB8;

void func_80AAA250(EnMd* this) {
    f32 initialFrame;

    initialFrame = this->skelAnime.initialFrame;
    this->skelAnime.initialFrame = this->skelAnime.animFrameCount;
    this->skelAnime.animCurrentFrame = this->skelAnime.animFrameCount;
    this->skelAnime.animFrameCount = initialFrame;
    this->skelAnime.animPlaybackSpeed = -1.0f;
}

void func_80AAA274(EnMd* this) {
    switch (this->unk_20A) {
        case 0:
            func_80034EC0(&this->skelAnime, sAnimations, 2);
            this->unk_20A++;
        case 1:
            if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
                func_80034EC0(&this->skelAnime, sAnimations, 3);
                this->unk_20A++;
            }
    }
}

void func_80AAA308(EnMd* this) {
    switch (this->unk_20A) {
        case 0:
            func_80034EC0(&this->skelAnime, sAnimations, 4);
            this->unk_20A++;
        case 1:
            if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
                func_80034EC0(&this->skelAnime, sAnimations, 5);
                this->unk_20A++;
            }
    }
}

void func_80AAA39C(EnMd* this) {
    switch (this->unk_20A) {
        case 0:
            func_80034EC0(&this->skelAnime, sAnimations, 2);
            func_80AAA250(this);
            this->unk_20A++;
        case 1:
            if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
                func_80034EC0(&this->skelAnime, sAnimations, 7);
                this->unk_20A++;
            } else {
                break;
            }
        case 2:
            if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
                func_80034EC0(&this->skelAnime, sAnimations, 8);
                this->unk_20A++;
            }
    }
}

void func_80AAA474(EnMd* this) {
    switch (this->unk_20A) {
        case 0:
            func_80034EC0(&this->skelAnime, sAnimations, 7);
            this->unk_20A++;
        case 1:
            if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
                func_80034EC0(&this->skelAnime, sAnimations, 10);
                this->unk_20A++;
            }
    }
}

void func_80AAA508(EnMd* this) {
    switch (this->unk_20A) {
        case 0:
            func_80034EC0(&this->skelAnime, sAnimations, 2);
            func_80AAA250(this);
            this->unk_20A++;
        case 1:
            if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
                func_80034EC0(&this->skelAnime, sAnimations, 10);
                this->unk_20A++;
            }
    }
}

void func_80AAA5A4(EnMd* this) {
    switch (this->unk_20A) {
        case 0:
            func_80034EC0(&this->skelAnime, sAnimations, 9);
            this->unk_20A++;
        case 1:
            if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
                func_80034EC0(&this->skelAnime, sAnimations, 6);
                this->unk_20A++;
            }
    }
}

void func_80AAA638(EnMd* this) {
    switch (this->unk_20A) {
        case 0:
            func_80034EC0(&this->skelAnime, sAnimations, 9);
            func_80AAA250(this);
            this->unk_20A++;
        case 1:
            if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
                func_80034EC0(&this->skelAnime, sAnimations, 10);
                this->unk_20A++;
            }
    }
}

void func_80AAA6D4(EnMd* this) {
    switch (this->unk_20A) {
        case 0:
            func_80034EC0(&this->skelAnime, sAnimations, 11);
            this->unk_20A++;
        case 1:
            if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
                func_80034EC0(&this->skelAnime, sAnimations, 6);
                this->unk_20A++;
            }
    }
}

void func_80AAA768(EnMd* this) {
    switch (this->unk_20A) {
        case 0:
            func_80034EC0(&this->skelAnime, sAnimations, 12);
            this->unk_20A++;
        case 1:
            if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
                func_80034EC0(&this->skelAnime, sAnimations, 3);
                this->unk_20A++;
            }
    }
}

void func_80AAA7FC(EnMd* this) {
    switch (this->unk_20A) {
        case 0:
            func_80034EC0(&this->skelAnime, sAnimations, 13);
            this->unk_20A++;
        case 1:
            if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
                func_80034EC0(&this->skelAnime, sAnimations, 6);
                this->unk_20A++;
            }
    }
}

void func_80AAA890(EnMd* this) {
    switch (this->unk_20A) {
        case 0:
            func_80034EC0(&this->skelAnime, sAnimations, 7);
            func_80AAA250(this);
            this->unk_20A++;
        case 1:
            if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
                func_80034EC0(&this->skelAnime, sAnimations, 10);
                this->unk_20A++;
            }
    }
}

void func_80AAA92C(EnMd* this, u8 arg1) {
    this->unk_20B = arg1;
    this->unk_20A = 0;
}

void func_80AAA93C(EnMd* this) {
    switch (this->unk_20B) {
        case 1:
            func_80AAA274(this);
            break;
        case 2:
            func_80AAA308(this);
            break;
        case 3:
            func_80AAA39C(this);
            break;
        case 4:
            func_80AAA474(this);
            break;
        case 5:
            func_80AAA508(this);
            break;
        case 6:
            func_80AAA5A4(this);
            break;
        case 7:
            func_80AAA638(this);
            break;
        case 8:
            func_80AAA6D4(this);
            break;
        case 9:
            func_80AAA768(this);
            break;
        case 10:
            func_80AAA7FC(this);
            break;
        case 11:
            func_80AAA890(this);
    }
}

void func_80AAAA24(EnMd* this) {
    if (this->unk_1E0.unk_00 != 0) {
        switch (this->actor.textId) {
            case 0x102F:
                if ((this->unk_208 == 0) && (this->unk_20B != 1)) {
                    func_80AAA92C(this, 1);
                }
                if ((this->unk_208 == 2) && (this->unk_20B != 2)) {
                    func_80AAA92C(this, 2);
                }
                if ((this->unk_208 == 5) && (this->unk_20B != 8)) {
                    func_80AAA92C(this, 8);
                }
                if ((this->unk_208 == 11) && (this->unk_20B != 9)) {
                    func_80AAA92C(this, 9);
                }
                break;
            case 0x1033:
                if ((this->unk_208 == 0) && (this->unk_20B != 1)) {
                    func_80AAA92C(this, 1);
                }
                if ((this->unk_208 == 1) && (this->unk_20B != 2)) {
                    func_80AAA92C(this, 2);
                }
                if ((this->unk_208 == 5) && (this->unk_20B != 10)) {
                    func_80AAA92C(this, 10);
                }
                if ((this->unk_208 == 7) && (this->unk_20B != 9)) {
                    func_80AAA92C(this, 9);
                }
                break;
            case 0x1030:
            case 0x1034:
            case 0x1045:
                if ((this->unk_208 == 0) && (this->unk_20B != 1)) {
                    func_80AAA92C(this, 1);
                }
                break;
            case 0x1046:
                if ((this->unk_208 == 0) && (this->unk_20B != 6)) {
                    func_80AAA92C(this, 6);
                }
                break;
        }
    } else if (this->skelAnime.animCurrentSeg != &D_060002C8) {
        func_80034EC0(&this->skelAnime, sAnimations, 10);
        func_80AAA92C(this, 0);
    }

    func_80AAA93C(this);
}

s16 func_80AAAC78(EnMd* this, GlobalContext* globalCtx) {
    s16 dialogState = func_8010BDBC(&globalCtx->msgCtx);

    if ((this->unk_209 == 10) || (this->unk_209 == 5) || (this->unk_209 == 2) || (this->unk_209 == 1)) {
        if (this->unk_209 != dialogState) {
            this->unk_208++;
        }
    }

    this->unk_209 = dialogState;
    return dialogState;
}

u16 EnMd_GetTextKokiriForest(GlobalContext* globalCtx, EnMd* this) {
    u16 reactionText = Text_GetFaceReaction(globalCtx, 0x11);

    if (reactionText != 0) {
        return reactionText;
    }

    this->unk_208 = 0;
    this->unk_209 = 0;

    if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) {
        return 0x1045;
    }

    if (gSaveContext.eventChkInf[0] & 0x10) {
        return 0x1034;
    }

    if ((CUR_EQUIP_VALUE(EQUIP_SHIELD) == 1) && (CUR_EQUIP_VALUE(EQUIP_SWORD) == 1)) {
        return 0x1033;
    }

    if (gSaveContext.infTable[0] & 0x1000) {
        return 0x1030;
    }

    return 0x102F;
}

u16 EnMd_GetTextKokiriHome(GlobalContext* globalCtx, EnMd* this) {
    this->unk_208 = 0;
    this->unk_209 = 0;

    if (gSaveContext.eventChkInf[4] & 1) {
        return 0x1028;
    }

    return 0x1046;
}

u16 EnMd_GetTextLostWoods(GlobalContext* globalCtx, EnMd* this) {
    this->unk_208 = 0;
    this->unk_209 = 0;

    if (gSaveContext.eventChkInf[4] & 0x100) {
        if (gSaveContext.infTable[1] & 0x200) {
            return 0x1071;
        }
        return 0x1070;
    }

    if (gSaveContext.eventChkInf[0] & 0x400) {
        return 0x1068;
    }

    if (gSaveContext.infTable[1] & 0x20) {
        return 0x1061;
    }

    return 0x1060;
}

u16 EnMd_GetText(GlobalContext* globalCtx, EnMd* this) {
    switch (globalCtx->sceneNum) {
        case SCENE_SPOT04:
            return EnMd_GetTextKokiriForest(globalCtx, this);
        case SCENE_KOKIRI_HOME4:
            return EnMd_GetTextKokiriHome(globalCtx, this);
        case SCENE_SPOT10:
            return EnMd_GetTextLostWoods(globalCtx, this);
        default:
            return 0;
    }
}

s16 func_80AAAF04(GlobalContext* globalCtx, EnMd* this) {
    switch (func_80AAAC78(this, globalCtx)) {
        case 0:
        case 1:
        case 3:
        case 4:
        case 6:
        case 7:
        case 8:
        case 9:
            return 1;
        case 2:
            switch (this->actor.textId) {
                case 0x1028:
                    gSaveContext.eventChkInf[0] |= 0x8000;
                    break;
                case 0x102F:
                    gSaveContext.eventChkInf[0] |= 4;
                    gSaveContext.infTable[0] |= 0x1000;
                    break;
                case 0x1060:
                    gSaveContext.infTable[1] |= 0x20;
                    break;
                case 0x1070:
                    gSaveContext.infTable[1] |= 0x200;
                    break;
                case 0x1033:
                case 0x1067:
                    return 2;
            }
            return 0;
        case 5:
            if (func_80106BC8(globalCtx) != 0) {
                return 2;
            }
        default:
            return 1;
    }
}

u8 EnMd_ShouldSpawn(EnMd* this, GlobalContext* globalCtx) {
    if (globalCtx->sceneNum == SCENE_SPOT04) {
        if (!(gSaveContext.eventChkInf[1] & 0x1000) && !(gSaveContext.eventChkInf[4] & 1)) {
            return 1;
        }
    }

    if (globalCtx->sceneNum == SCENE_KOKIRI_HOME4) {
        if (((gSaveContext.eventChkInf[1] & 0x1000) != 0) || ((gSaveContext.eventChkInf[4] & 1) != 0)) {
            if (LINK_IS_CHILD) {
                return 1;
            }
        }
    }

    if (globalCtx->sceneNum == SCENE_SPOT10) {
        return 1;
    }

    return 0;
}

void EnMd_UpdateEyes(EnMd* this) {
    if (DECR(this->blinkTimer) == 0) {
        this->eyeIdx++;
        if (this->eyeIdx > 2) {
            this->blinkTimer = Math_Rand_S16Offset(30, 30);
            this->eyeIdx = 0;
        }
    }
}

void func_80AAB158(EnMd* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 absYawDiff;
    s16 temp;
    s16 temp2;
    s16 yawDiff;

    if (this->actor.xzDistFromLink < 170.0f) {
        yawDiff = (f32)this->actor.yawTowardsLink - this->actor.shape.rot.y;
        absYawDiff = ABS(yawDiff);

        temp = (absYawDiff <= func_800347E8(2)) ? 2 : 1;
        temp2 = 1;
    } else {
        temp = 1;
        temp2 = 0;
    }

    if (this->unk_1E0.unk_00 != 0) {
        temp = 4;
    }

    if (this->actionFunc == func_80AABD0C) {
        temp = 1;
        temp2 = 0;
    }
    if (this->actionFunc == func_80AAB8F8) {
        temp = 4;
        temp2 = 1;
    }

    if ((globalCtx->csCtx.state != 0) || (D_8011D394 != 0)) {
        this->unk_1E0.unk_18 = globalCtx->view.eye;
        this->unk_1E0.unk_14 = 40.0f;
        temp = 2;
    } else {
        this->unk_1E0.unk_18 = player->actor.posRot.pos;
        this->unk_1E0.unk_14 = (gSaveContext.linkAge > 0) ? 0.0f : -18.0f;
    }

    func_80034A14(&this->actor, &this->unk_1E0, 2, temp);
    if (this->actionFunc != func_80AABC10) {
        if (temp2) {
            func_800343CC(globalCtx, &this->actor, &this->unk_1E0.unk_00, this->collider.dim.radius + 30.0f,
                          EnMd_GetText, func_80AAAF04);
        }
    }
}

u8 EnMd_FollowPath(EnMd* this, GlobalContext* globalCtx) {
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
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, Math_atan2f(pathDiffX, pathDiffZ) * (65536.0f / (2 * M_PI)), 4,
                            4000, 1);

    if ((SQ(pathDiffX) + SQ(pathDiffZ)) < 100.0f) {
        this->waypoint++;
        if (this->waypoint >= path->count) {
            this->waypoint = 0;
        }
        return 1;
    }
    return 0;
}

u8 EnMd_SetMovedPos(EnMd* this, GlobalContext* globalCtx) {
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

void func_80AAB5A4(EnMd* this, GlobalContext* globalCtx) {
    f32 temp;

    if (globalCtx->sceneNum != SCENE_KOKIRI_HOME4) {
        temp = (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD) && !(gSaveContext.eventChkInf[1] & 0x1000) &&
                (globalCtx->sceneNum == SCENE_SPOT04))
                   ? 100.0f
                   : 400.0f;
        this->alpha = func_80034DD4(this, globalCtx, this->alpha, temp);
        this->actor.shape.unk_14 = this->alpha;
    } else {
        this->alpha = 255;
        this->actor.shape.unk_14 = this->alpha;
    }
}

void EnMd_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnMd* this = THIS;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 24.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06007FB8, NULL, this->limbDrawTable, this->transitionDrawTable,
                     17);

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    func_80061EFC(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    if (!EnMd_ShouldSpawn(&this->actor, globalCtx)) {
        Actor_Kill(&this->actor);
        return;
    }

    func_80034EC0(&this->skelAnime, sAnimations, 0);
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.unk_1F = 6;
    this->alpha = 255;
    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_ELF, this->actor.posRot.pos.x,
                       this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 3);

    if (((globalCtx->sceneNum == SCENE_SPOT04) && !(gSaveContext.eventChkInf[0] & 0x10)) ||
        ((globalCtx->sceneNum == SCENE_SPOT04) && (gSaveContext.eventChkInf[0] & 0x10) &&
         CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) ||
        ((globalCtx->sceneNum == SCENE_SPOT10) && !(gSaveContext.eventChkInf[0] & 0x400))) {
        this->actor.initPosRot.pos = this->actor.posRot.pos;
        this->actionFunc = func_80AAB948;
        return;
    }

    if (globalCtx->sceneNum != SCENE_KOKIRI_HOME4) {
        EnMd_SetMovedPos(&this->actor, globalCtx);
    }

    this->actionFunc = func_80AAB874;
}

void EnMd_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnMd* this = THIS;
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80AAB874(EnMd* this, GlobalContext* globalCtx) {
    if (this->skelAnime.animCurrentSeg == &D_060002C8) {
        func_80034F54(globalCtx, &this->unk_214, &this->unk_236, 17);
    } else if ((this->unk_1E0.unk_00 == 0) && (this->unk_20B != 7)) {
        func_80AAA92C(this, 7);
    }

    func_80AAAA24(this);
}

void func_80AAB8F8(EnMd* this, GlobalContext* globalCtx) {
    if (this->skelAnime.animCurrentSeg == &D_060002C8) {
        func_80034F54(globalCtx, &this->unk_214, &this->unk_236, 17);
    }
    func_80AAA93C(this);
}

void func_80AAB948(EnMd* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 temp;
    Actor* actorToBlock = &PLAYER->actor;
    s16 yaw;

    func_80AAAA24(this);

    if (this->unk_1E0.unk_00 == 0) {
        this->actor.posRot.rot.y = this->actor.yawTowardsLink;
        this->actor.shape.rot.y = this->actor.yawTowardsLink;

        yaw = Math_Vec3f_Yaw(&this->actor.initPosRot.pos, &actorToBlock->posRot.pos);

        this->actor.posRot.pos.x = this->actor.initPosRot.pos.x;
        this->actor.posRot.pos.x += 60.0f * Math_Sins(yaw);

        this->actor.posRot.pos.z = this->actor.initPosRot.pos.z;
        this->actor.posRot.pos.z += 60.0f * Math_Coss(yaw);

        temp = fabsf((f32)this->actor.yawTowardsLink - yaw) * 0.001f * 3.0f;
        this->skelAnime.animPlaybackSpeed = CLAMP(temp, 1.0f, 3.0f);
    }

    if (this->unk_1E0.unk_00 == 2) {
        if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD) && !(gSaveContext.eventChkInf[1] & 0x1000) &&
            (globalCtx->sceneNum == SCENE_SPOT04)) {
            globalCtx->msgCtx.msgMode = 0x37;
        }

        if (globalCtx->sceneNum == SCENE_SPOT04) {
            gSaveContext.eventChkInf[0] |= 0x10;
        }
        if (globalCtx->sceneNum == SCENE_SPOT10) {
            gSaveContext.eventChkInf[0] |= 0x400;
        }

        func_80AAA92C(this, 3);
        func_80AAA93C(this);
        this->waypoint = 1;
        this->unk_1E0.unk_00 = 0;
        this->actionFunc = func_80AABD0C;
        this->actor.speedXZ = 1.5f;
        return;
    }

    if (this->skelAnime.animCurrentSeg == &D_060002C8) {
        func_80034F54(globalCtx, &this->unk_214, &this->unk_236, 17);
    }

    if ((this->unk_1E0.unk_00 == 0) && (globalCtx->sceneNum == SCENE_SPOT10)) {
        if (player->stateFlags2 & 0x1000000) {
            player->stateFlags2 |= 0x2000000;
            player->unk_6A8 = &this->actor;
            func_8010BD58(globalCtx, 0x22);
            this->actionFunc = func_80AABC10;
            return;
        }

        if (this->actor.xzDistFromLink < (30.0f + this->collider.dim.radius)) {
            player->stateFlags2 |= 0x800000;
        }
    }
}

void func_80AABC10(EnMd* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (globalCtx->msgCtx.unk_E3EE >= 4) {
        this->actionFunc = func_80AAB948;
        globalCtx->msgCtx.unk_E3EE = 4;
    } else if (globalCtx->msgCtx.unk_E3EE == 3) {
        Audio_PlaySoundGeneral(NA_SE_SY_CORRECT_CHIME, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->actor.textId = 0x1067;
        func_8002F2CC(&this->actor, globalCtx, this->collider.dim.radius + 30.0f);

        this->actionFunc = func_80AAB948;
        globalCtx->msgCtx.unk_E3EE = 4;
    } else {
        player->stateFlags2 |= 0x800000;
    }
}

void func_80AABD0C(EnMd* this, GlobalContext* globalCtx) {
    func_80034F54(globalCtx, &this->unk_214, &this->unk_236, 17);
    func_80AAA93C(this);

    if (!(EnMd_FollowPath(this, globalCtx)) || (this->waypoint != 0)) {
        this->actor.shape.rot = this->actor.posRot.rot;
        return;
    }

    if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD) && !(gSaveContext.eventChkInf[1] & 0x1000) &&
        (globalCtx->sceneNum == SCENE_SPOT04)) {
        func_80106CCC(globalCtx);
        gSaveContext.eventChkInf[1] |= 0x1000;
        Actor_Kill(&this->actor);
        return;
    }

    func_80AAA92C(this, 11);

    this->skelAnime.animPlaybackSpeed = 0.0f;
    this->actor.speedXZ = 0.0f;
    this->actor.initPosRot.pos = this->actor.posRot.pos;
    this->actionFunc = func_80AAB8F8;
}

void EnMd_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnMd* this = THIS;
    s32 pad;

    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    EnMd_UpdateEyes(this);
    func_80AAB5A4(this, globalCtx);
    Actor_MoveForward(&this->actor);
    func_80AAB158(this, globalCtx);
    func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    this->actionFunc(this, globalCtx);
}

s32 EnMd_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx,
                          Gfx** gfx) {
    EnMd* this = THIS;
    Vec3s vec;

    if (limbIndex == 16) {
        Matrix_Translate(1200.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        vec = this->unk_1E0.unk_08;
        Matrix_RotateX((vec.y / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_RotateZ((vec.x / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_Translate(-1200.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }
    if (limbIndex == 9) {
        vec = this->unk_1E0.unk_0E;
        Matrix_RotateX((vec.x / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_RotateY((vec.y / 32768.0f) * M_PI, MTXMODE_APPLY);
    }

    if (((limbIndex == 9) || (limbIndex == 10)) || (limbIndex == 13)) {
        rot->y += Math_Sins(this->unk_214[limbIndex]) * 200.0f;
        rot->z += Math_Coss(this->unk_236[limbIndex]) * 200.0f;
    }

    return 0;
}

void EnMd_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx, Gfx** gfx) {
    s32 pad;
    Vec3f vec = { 400.0f, 0.0f, 0.0f };

    if (limbIndex == 16) {
        Matrix_MultVec3f(&vec, &thisx->posRot2.pos);
    }
}

void EnMd_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static UNK_PTR sEyesSegments[] = {
        0x06004FF0,
        0x06005930,
        0x06005D30,
    };
    EnMd* this = THIS;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_md.c", 1280);
    if (this->alpha == 255) {
        gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(sEyesSegments[this->eyeIdx]));
        func_80034BA0(globalCtx, &this->skelAnime, EnMd_OverrideLimbDraw, EnMd_PostLimbDraw, &this->actor, this->alpha);
    } else if (this->alpha != 0) {
        gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(sEyesSegments[this->eyeIdx]));
        func_80034CC4(globalCtx, &this->skelAnime, EnMd_OverrideLimbDraw, EnMd_PostLimbDraw, &this->actor, this->alpha);
    }

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_md.c", 1317);
}
