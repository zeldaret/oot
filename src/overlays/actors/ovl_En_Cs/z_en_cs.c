#include "z_en_cs.h"
#include "objects/object_cs/object_cs.h"
#include "objects/object_link_child/object_link_child.h"

#define FLAGS 0x00000009

#define THIS ((EnCs*)thisx)

void EnCs_Init(Actor* thisx, GlobalContext* globalCtx);
void EnCs_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnCs_Update(Actor* thisx, GlobalContext* globalCtx);
void EnCs_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnCs_Walk(EnCs* this, GlobalContext* globalCtx);
void EnCs_Talk(EnCs* this, GlobalContext* globalCtx);
void EnCs_Wait(EnCs* this, GlobalContext* globalCtx);
s32 EnCs_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
void EnCs_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx);

const ActorInit En_Cs_InitVars = {
    ACTOR_EN_CS,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_CS,
    sizeof(EnCs),
    (ActorFunc)EnCs_Init,
    (ActorFunc)EnCs_Destroy,
    (ActorFunc)EnCs_Update,
    (ActorFunc)EnCs_Draw,
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
    { 18, 63, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit2 = { 0, 0, 0, 0, MASS_IMMOVABLE };

static DamageTable sDamageTable[] = {
    /* Deku nut      */ DMG_ENTRY(0, 0x0),
    /* Deku stick    */ DMG_ENTRY(0, 0x0),
    /* Slingshot     */ DMG_ENTRY(0, 0x0),
    /* Explosive     */ DMG_ENTRY(0, 0x0),
    /* Boomerang     */ DMG_ENTRY(0, 0x0),
    /* Normal arrow  */ DMG_ENTRY(0, 0x0),
    /* Hammer swing  */ DMG_ENTRY(0, 0x0),
    /* Hookshot      */ DMG_ENTRY(0, 0x0),
    /* Kokiri sword  */ DMG_ENTRY(0, 0x0),
    /* Master sword  */ DMG_ENTRY(0, 0x0),
    /* Giant's Knife */ DMG_ENTRY(0, 0x0),
    /* Fire arrow    */ DMG_ENTRY(0, 0x0),
    /* Ice arrow     */ DMG_ENTRY(0, 0x0),
    /* Light arrow   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 1   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 2   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 3   */ DMG_ENTRY(0, 0x0),
    /* Fire magic    */ DMG_ENTRY(0, 0x0),
    /* Ice magic     */ DMG_ENTRY(0, 0x0),
    /* Light magic   */ DMG_ENTRY(0, 0x0),
    /* Shield        */ DMG_ENTRY(0, 0x0),
    /* Mirror Ray    */ DMG_ENTRY(0, 0x0),
    /* Kokiri spin   */ DMG_ENTRY(0, 0x0),
    /* Giant spin    */ DMG_ENTRY(0, 0x0),
    /* Master spin   */ DMG_ENTRY(0, 0x0),
    /* Kokiri jump   */ DMG_ENTRY(0, 0x0),
    /* Giant jump    */ DMG_ENTRY(0, 0x0),
    /* Master jump   */ DMG_ENTRY(0, 0x0),
    /* Unknown 1     */ DMG_ENTRY(0, 0x0),
    /* Unblockable   */ DMG_ENTRY(0, 0x0),
    /* Hammer jump   */ DMG_ENTRY(0, 0x0),
    /* Unknown 2     */ DMG_ENTRY(0, 0x0),
};

static struct_D_80AA1678 sAnimations[] = {
    { &gGraveyardKidWalkAnim, 1.0f, ANIMMODE_ONCE, -10.0f },
    { &gGraveyardKidSwingStickUpAnim, 1.0f, ANIMMODE_ONCE, -10.0f },
    { &gGraveyardKidGrabStickTwoHandsAnim, 1.0f, ANIMMODE_ONCE, -10.0f },
    { &gGraveyardKidIdleAnim, 1.0f, ANIMMODE_ONCE, -10.0f },
};

void EnCs_SetAnimFromIndex(EnCs* this, s32 animIndex, s32* currentAnimIndex) {
    f32 morphFrames;

    if ((*currentAnimIndex < 0) || (animIndex == *currentAnimIndex)) {
        morphFrames = 0.0f;
    } else {
        morphFrames = sAnimations[animIndex].transitionRate;
    }

    if (sAnimations[animIndex].frameCount >= 0.0f) {
        Animation_Change(&this->skelAnime, sAnimations[animIndex].animation, sAnimations[animIndex].frameCount, 0.0f,
                         Animation_GetLastFrame(sAnimations[animIndex].animation), sAnimations[animIndex].mode,
                         morphFrames);
    } else {
        Animation_Change(&this->skelAnime, sAnimations[animIndex].animation, sAnimations[animIndex].frameCount,
                         Animation_GetLastFrame(sAnimations[animIndex].animation), 0.0f, sAnimations[animIndex].mode,
                         morphFrames);
    }

    *currentAnimIndex = animIndex;
}

void EnCs_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnCs* this = THIS;
    s32 pad;

    if (!IS_DAY) {
        Actor_Kill(&this->actor);
        return;
    }

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 19.0f);

    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &gGraveyardKidSkel, NULL, this->jointTable, this->morphTable, 16);

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);

    CollisionCheck_SetInfo2(&this->actor.colChkInfo, sDamageTable, &sColChkInfoInit2);
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);

    Animation_Change(&this->skelAnime, sAnimations[0].animation, 1.0f, 0.0f,
                     Animation_GetLastFrame(sAnimations[0].animation), sAnimations[0].mode,
                     sAnimations[0].transitionRate);

    this->actor.targetMode = 6;
    this->path = this->actor.params & 0xFF;
    this->unk_1EC = 0; // This variable is unused anywhere else
    this->talkState = 0;
    this->currentAnimIndex = -1;
    this->actor.gravity = -1.0f;

    EnCs_SetAnimFromIndex(this, 0, &this->currentAnimIndex);

    this->actionFunc = EnCs_Walk;
    this->walkSpeed = 1.0f;
}

void EnCs_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnCs* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

s32 EnCs_GetTalkState(EnCs* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 pad2;
    s32 talkState = 1;

    switch (func_8010BDBC(&globalCtx->msgCtx)) {
        case 4:
            if (func_80106BC8(globalCtx) != 0) {
                if (globalCtx->msgCtx.choiceIndex == 0) {
                    this->actor.textId = 0x2026;
                    EnCs_SetAnimFromIndex(this, 3, &this->currentAnimIndex);
                    talkState = 2;
                } else {
                    this->actor.textId = 0x2024;
                    EnCs_SetAnimFromIndex(this, 1, &this->currentAnimIndex);
                    talkState = 2;
                }
            }
            break;
        case 6:
            if (func_80106BC8(globalCtx)) {
                if (this->actor.textId == 0x2026) {
                    Player_UnsetMask(globalCtx);
                    Item_Give(globalCtx, ITEM_SOLD_OUT);
                    gSaveContext.itemGetInf[3] |= 0x400;
                    Rupees_ChangeBy(30);
                    this->actor.textId = 0x2027;
                    talkState = 2;
                } else {
                    talkState = 0;
                }
            }
            break;
        case 0:
        case 1:
        case 2:
        case 3:
        case 5:
            break;
    }

    return talkState;
}

s32 EnCs_GetTextID(EnCs* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 textId = Text_GetFaceReaction(globalCtx, 15);

    if (gSaveContext.itemGetInf[3] & 0x400) {
        if (textId == 0) {
            textId = 0x2028;
        }
    } else if (player->currentMask == PLAYER_MASK_SPOOKY) {
        textId = 0x2023;
    } else {
        if (textId == 0) {
            textId = 0x2022;
        }
    }

    return textId;
}

void EnCs_HandleTalking(EnCs* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 sp2A;
    s16 sp28;

    if (this->talkState == 2) {
        func_8010B720(globalCtx, this->actor.textId);
        this->talkState = 1;
    } else if (this->talkState == 1) {
        this->talkState = EnCs_GetTalkState(this, globalCtx);
    } else if (func_8002F194(&this->actor, globalCtx)) {
        if ((this->actor.textId == 0x2022) || ((this->actor.textId != 0x2022) && (this->actor.textId != 0x2028))) {
            EnCs_SetAnimFromIndex(this, 3, &this->currentAnimIndex);
        }

        if ((this->actor.textId == 0x2023) || (this->actor.textId == 0x2028)) {
            EnCs_SetAnimFromIndex(this, 1, &this->currentAnimIndex);
        }

        if (this->actor.textId == 0x2023) {
            func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
        }

        this->talkState = 1;
    } else {
        func_8002F374(globalCtx, &this->actor, &sp2A, &sp28);

        if ((sp2A >= 0) && (sp2A <= 320) && (sp28 >= 0) && (sp28 <= 240) &&
            (func_8002F2CC(&this->actor, globalCtx, 100.0f))) {
            this->actor.textId = EnCs_GetTextID(this, globalCtx);
        }
    }
}

s32 EnCs_GetwaypointCount(Path* pathList, s32 pathIndex) {
    Path* path = &pathList[pathIndex];

    return path->count;
}

s32 EnCs_GetPathPoint(Path* pathList, Vec3f* dest, s32 pathIndex, s32 waypoint) {
    Path* path = pathList;
    Vec3s* pathPos;

    path += pathIndex;
    pathPos = &((Vec3s*)SEGMENTED_TO_VIRTUAL(path->points))[waypoint];

    dest->x = pathPos->x;
    dest->y = pathPos->y;
    dest->z = pathPos->z;

    return 0;
}

s32 EnCs_HandleWalking(EnCs* this, GlobalContext* globalCtx) {
    f32 xDiff;
    f32 zDiff;
    Vec3f pathPos;
    s32 waypointCount;
    s16 walkAngle1;
    s16 walkAngle2;

    EnCs_GetPathPoint(globalCtx->setupPathList, &pathPos, this->path, this->waypoint);
    xDiff = pathPos.x - this->actor.world.pos.x;
    zDiff = pathPos.z - this->actor.world.pos.z;
    walkAngle1 = Math_FAtan2F(xDiff, zDiff) * (32768.0f / M_PI);
    this->walkAngle = walkAngle1;
    this->walkDist = sqrtf((xDiff * xDiff) + (zDiff * zDiff));

    while (this->walkDist <= 10.44f) {
        this->waypoint++;
        waypointCount = EnCs_GetwaypointCount(globalCtx->setupPathList, this->path);

        if ((this->waypoint < 0) || (!(this->waypoint < waypointCount))) {
            this->waypoint = 0;
        }

        EnCs_GetPathPoint(globalCtx->setupPathList, &pathPos, this->path, this->waypoint);
        xDiff = pathPos.x - this->actor.world.pos.x;
        zDiff = pathPos.z - this->actor.world.pos.z;
        walkAngle2 = Math_FAtan2F(xDiff, zDiff) * (32768.0f / M_PI);
        this->walkAngle = walkAngle2;
        this->walkDist = sqrtf((xDiff * xDiff) + (zDiff * zDiff));
    }

    Math_SmoothStepToS(&this->actor.shape.rot.y, this->walkAngle, 1, 2500, 0);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->actor.speedXZ = this->walkSpeed;
    Actor_MoveForward(&this->actor);
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);

    return 0;
}

void EnCs_Walk(EnCs* this, GlobalContext* globalCtx) {
    s32 rnd;
    s32 animIndex;
    s32 curAnimFrame;

    if (this->talkState != 0) {
        this->actionFunc = EnCs_Talk;
        return;
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        animIndex = this->currentAnimIndex;

        if (this->talkState == 0) {
            if (gSaveContext.itemGetInf[3] & 0x400) {
                rnd = Rand_ZeroOne() * 10.0f;
            } else {
                rnd = Rand_ZeroOne() * 5.0f;
            }

            if (rnd == 0) {
                if (gSaveContext.itemGetInf[3] & 0x400) {
                    animIndex = 2.0f * Rand_ZeroOne();
                    animIndex = (animIndex == 0) ? 2 : 1;
                } else {
                    animIndex = 2;
                }

                this->actionFunc = EnCs_Wait;
            } else {
                animIndex = 0;
            }
        }

        EnCs_SetAnimFromIndex(this, animIndex, &this->currentAnimIndex);
    }

    if (this->talkState == 0) {
        curAnimFrame = this->skelAnime.curFrame;

        if (((curAnimFrame >= 8) && (curAnimFrame < 16)) || ((curAnimFrame >= 23) && (curAnimFrame < 30)) ||
            (curAnimFrame == 0)) {
            this->walkSpeed = 0.0f;
        } else {
            this->walkSpeed = 1.0f;
        }

        EnCs_HandleWalking(this, globalCtx);
    }
}

void EnCs_Wait(EnCs* this, GlobalContext* globalCtx) {
    s32 animIndex;

    if (this->talkState != 0) {
        this->actionFunc = EnCs_Talk;
        return;
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        animIndex = this->currentAnimIndex;

        if (this->talkState == 0) {
            if (this->animLoopCount > 0) {
                this->animLoopCount--;
                animIndex = this->currentAnimIndex;
            } else {
                animIndex = 0;
                this->actionFunc = EnCs_Walk;
            }
        }

        EnCs_SetAnimFromIndex(this, animIndex, &this->currentAnimIndex);
    }
}

void EnCs_Talk(EnCs* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (SkelAnime_Update(&this->skelAnime) != 0) {
        EnCs_SetAnimFromIndex(this, this->currentAnimIndex, &this->currentAnimIndex);
    }

    this->flag |= 1;
    this->npcInfo.unk_18.x = player->actor.focus.pos.x;
    this->npcInfo.unk_18.y = player->actor.focus.pos.y;
    this->npcInfo.unk_18.z = player->actor.focus.pos.z;
    func_80034A14(&this->actor, &this->npcInfo, 0, 4);

    if (this->talkState == 0) {
        EnCs_SetAnimFromIndex(this, 0, &this->currentAnimIndex);
        this->actionFunc = EnCs_Walk;
        this->flag &= ~1;
    }
}

void EnCs_Update(Actor* thisx, GlobalContext* globalCtx) {
    static s32 eyeBlinkFrames[] = { 70, 1, 1 };
    EnCs* this = THIS;
    s32 pad;

    if (this->currentAnimIndex == 0) {
        if (((s32)this->skelAnime.curFrame == 9) || ((s32)this->skelAnime.curFrame == 23)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_CHIBI_WALK);
        }
    } else if (this->currentAnimIndex == 1) {
        if (((s32)this->skelAnime.curFrame == 10) || ((s32)this->skelAnime.curFrame == 25)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_CHIBI_WALK);
        }
    } else if ((this->currentAnimIndex == 2) && ((s32)this->skelAnime.curFrame == 20)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_CHIBI_WALK);
    }

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);

    this->actionFunc(this, globalCtx);

    EnCs_HandleTalking(this, globalCtx);

    this->eyeBlinkTimer--;

    if (this->eyeBlinkTimer < 0) {
        this->eyeIndex++;

        if (this->eyeIndex >= 3) {
            this->eyeIndex = 0;
        }

        this->eyeBlinkTimer = eyeBlinkFrames[this->eyeIndex];
    }
}

void EnCs_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static void* eyeTextures[] = {
        gGraveyardKidEyesOpenTex,
        gGraveyardKidEyesHalfTex,
        gGraveyardKidEyesClosedTex,
    };
    EnCs* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_cs.c", 968);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTextures[this->eyeIndex]));

    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnCs_OverrideLimbDraw, EnCs_PostLimbDraw, &this->actor);

    if (gSaveContext.itemGetInf[3] & 0x400) {
        s32 childLinkObjectIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_LINK_CHILD);

        // Handle attaching the Spooky Mask to the boy's face
        if (childLinkObjectIndex >= 0) {
            Mtx* mtx;

            Matrix_Put(&this->spookyMaskMtx);
            mtx = Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_cs.c", 1000);
            gSPSegment(POLY_OPA_DISP++, 0x06, globalCtx->objectCtx.status[childLinkObjectIndex].segment);
            gSPSegment(POLY_OPA_DISP++, 0x0D, mtx - 7);
            gSPDisplayList(POLY_OPA_DISP++, gLinkChildSpookyMaskDL);
            gSPSegment(POLY_OPA_DISP++, 0x06, globalCtx->objectCtx.status[this->actor.objBankIndex].segment);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_cs.c", 1015);
}

s32 EnCs_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnCs* this = THIS;

    if (this->flag & 1) {
        switch (limbIndex) {
            case 8:
                rot->x += this->npcInfo.unk_0E.y;
                rot->y -= this->npcInfo.unk_0E.x;
                break;
            case 15:
                rot->x += this->npcInfo.unk_08.y;
                rot->z += this->npcInfo.unk_08.x;
                break;
        }
    }

    return 0;
}

void EnCs_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f D_809E2970 = { 500.0f, 800.0f, 0.0f };
    EnCs* this = THIS;

    if (limbIndex == 15) {
        Matrix_MultVec3f(&D_809E2970, &this->actor.focus.pos);
        Matrix_Translate(0.0f, -200.0f, 0.0f, MTXMODE_APPLY);
        Matrix_RotateY(0.0f, MTXMODE_APPLY);
        Matrix_RotateX(0.0f, MTXMODE_APPLY);
        Matrix_RotateZ(1.7453293f, MTXMODE_APPLY); // close to 5 * M_PI / 9
        Matrix_Get(&this->spookyMaskMtx);
    }
}
