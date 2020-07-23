#include "z_en_nb.h"
#include <vt.h>

#define FLAGS 0x00000010

#define THIS ((EnNb*)thisx)

void EnNb_Init(Actor* thisx, GlobalContext* globalCtx);
void EnNb_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnNb_Update(Actor* thisx, GlobalContext* globalCtx);
void EnNb_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnNb_SetupCollider(EnNb* this, GlobalContext* globalCtx);
s32 EnNb_GetParams(EnNb* this);
void func_80AB0FBC(EnNb* this, GlobalContext* globalCtx);
void func_80AB1040(EnNb* this, GlobalContext* globalCtx);
void func_80AB1164(EnNb* this);
s32 EnNb_FrameUpdateMatrix(EnNb* this);
void func_80AB11EC(EnNb* this);
CsCmdActorAction* EnNb_GetCutsceneActionCommand(GlobalContext* globalCtx, s32 npcActionIdx);
void EnNb_SetupAnimation(EnNb* this, AnimationHeader* animationHeader, u8 mode, f32 arg3, s32 arg4);
void func_80AB1650(EnNb* this, GlobalContext* globalCtx);
void EnNb_AppearInChamber(EnNb* this, GlobalContext* globalCtx);
void func_80AB180C(EnNb* this, UNK_TYPE arg1);
void func_80AB1878(EnNb* this, GlobalContext* globalCtx);
void EnNb_AppearInChamberWrapper(EnNb* this, GlobalContext* globalCtx);
void EnNb_SetupChamberCutsceneWrapper(EnNb* this, GlobalContext* globalCtx);
void func_80AB1904(EnNb* this, GlobalContext* globalCtx);
void func_80AB193C(EnNb* this, GlobalContext* globalCtx);
void func_80AB197C(EnNb* this, GlobalContext* globalCtx);
void func_80AB19BC(EnNb* this, GlobalContext* globalCtx);
void func_80AB19FC(EnNb* this, GlobalContext* globalCtx);
void EnNb_SetSageSFX(void);
void func_80AB1A94(EnNb* this, GlobalContext* globalCtx);
void func_80AB1B14(EnNb* this, GlobalContext* globalCtx);
void func_80AB1B68(EnNb* this, GlobalContext* globalCtx);
void func_80AB1CBC(EnNb* this, GlobalContext* globalCtx);
void func_80AB1D54(EnNb* this, GlobalContext* globalCtx);
void func_80AB1D84(EnNb* this, GlobalContext* globalCtx);
void func_80AB1D84(EnNb* this, GlobalContext* globalCtx);
void func_80AB1DD8(EnNb* this, GlobalContext* globalCtx);
void EnNb_DrawTransparency(EnNb* this, GlobalContext* globalCtx);
void EnNb_SetupColossusCapture(EnNb* this, GlobalContext* globalCtx);
void EnNb_PlayCrySFX(EnNb* this, GlobalContext* globalCtx);
void EnNb_PlayAgonySFX(EnNb* this, GlobalContext* globalCtx);
void EnNb_SetupCaptureCutsceneState(EnNb* this, GlobalContext* globalCtx);
void func_80AB2180(EnNb* this, UNK_TYPE arg1);
void EnNb_InColossusCapture(EnNb* this, GlobalContext* globalCtx);
void func_80AB23A8(EnNb* this, GlobalContext* globalCtx);
void func_80AB23D8(EnNb* this, GlobalContext* globalCtx);
void func_80AB242C(EnNb* this, GlobalContext* globalCtx);
void EnNb_KnuckleDefeated(EnNb* this, GlobalContext* globalCtx);
void EnNb_CheckKnuckleCutsceneModeWrapper(EnNb* this, GlobalContext* globalCtx);
void func_80AB2C18(EnNb* this, GlobalContext* globalCtx);
void func_80AB2C60(EnNb* this, GlobalContext* globalCtx);
void func_80AB2D38(EnNb* this, GlobalContext* globalCtx);
void func_80AB2D9C(EnNb* this, GlobalContext* globalCtx);
void func_80AB2E1C(EnNb* this, GlobalContext* globalCtx);
void func_80AB33C0(EnNb* this, GlobalContext* globalCtx);
void func_80AB3BC8(EnNb* this, GlobalContext* globalCtx);
void func_80AB3C1C(EnNb* this, GlobalContext* globalCtx);
void func_80AB3CD4(EnNb* this, GlobalContext* globalCtx);
void func_80AB3D34(EnNb* this, GlobalContext* globalCtx);
void func_80AB3E10(EnNb* this, GlobalContext* globalCtx);
s32 func_80AB3FE8(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx);
void EnNb_DrawNothing(EnNb* this, GlobalContext* globalCtx);
void func_80AB410C(EnNb* this, GlobalContext* globalCtx);
void func_80AB2CCC(EnNb* this, GlobalContext* globalCtx);
void func_80AB2E70(EnNb* this, GlobalContext* globalCtx);
void func_80AB2FE4(EnNb* this, GlobalContext* globalCtx);
void func_80AB285C(EnNb* this);
void func_80AB33E0(EnNb* this, GlobalContext* globalCtx);
void func_80AB3428(EnNb* this, GlobalContext* globalCtx);
void func_80AB3468(EnNb* this, GlobalContext* globalCtx);
void EnNb_CheckToSpawnNearSpiritCrawlspace(EnNb* this, GlobalContext* globalCtx);
void func_80AB359C(EnNb* this);
void func_80AB3C74(EnNb* this, GlobalContext* globalCtx);
void func_80AB3DB0(EnNb* this, GlobalContext* globalCtx);

extern SkeletonHeader D_060181C8;
extern AnimationHeader* D_06009694; // hands on hips standing
extern AnimationHeader* D_0600274C; // raising both arms up (giving medallion to link ?)
extern AnimationHeader* D_06002B4C; // raising both arms up stable (giving medallion to link ?)
extern AnimationHeader* D_06000410; // clasping hands together
extern AnimationHeader* D_06001E7C; // looking around ?
extern AnimationHeader* D_06001350; // i think this is the animation where she is in the purple thing
extern AnimationHeader* D_06001104; // raising arm up
extern AnimationHeader* D_06008BD0; // falls to the ground
extern AnimationHeader* D_060046A8; // looking in crawlspace ?
extern AnimationHeader* D_06003954; // on ground getting up ??
extern AnimationHeader* D_06004030; // looking behind her to the right
extern AnimationHeader* D_06002DBC; // freaking out
extern AnimationHeader* D_060035A8; // looking behind her
extern AnimationHeader* D_06006320; // sees something from behind, turns and runs
extern AnimationHeader* D_06000BC0; // crossed legs
extern AnimationHeader* D_06005CA4; // crossed legs, turns head and looks behind to the right
extern AnimationHeader* D_06005614; // crossed legs, looking behind to the right
extern AnimationHeader* D_06004BB4; // standing up hands on hips
extern AnimationHeader* D_06006E78;
extern AnimationHeader* D_06004E60; // getting up from crawlspace
extern AnimationHeader* D_06004BB4;
extern AnimationHeader* D_06009238; // standard walk 2 ?
extern Gfx D_06013158[];

static ColliderCylinderInit_Set3 sCylinderInit = {
    { COLTYPE_UNK0, 0x00, 0x00, 0x09, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 25, 80, 0, { 0, 0, 0 } },
};

static UNK_PTR sEyeSegments[] = {
    0x0600B428,
    0x0600D0E8,
    0x0600D4E8,
};

static UNK_TYPE D_80AB4318 = 0;

#include "z_en_nb_cutscene_data.c" EARLY

static EnNbActionFunc sActionFuncs[] = {
    EnNb_AppearInChamberWrapper, EnNb_SetupChamberCutsceneWrapper, func_80AB1904, func_80AB193C, func_80AB197C, func_80AB19BC, func_80AB19FC,
    func_80AB1D54, func_80AB1D84, func_80AB1DD8, func_80AB23A8, func_80AB23D8, func_80AB242C, EnNb_CheckKnuckleCutsceneModeWrapper,
    func_80AB2C18, func_80AB2C60, func_80AB2CCC, func_80AB2D38, func_80AB2D9C, func_80AB2E1C, func_80AB33C0,
    func_80AB33E0, func_80AB3428, func_80AB3468, func_80AB3BC8, func_80AB3C1C, func_80AB3C74, func_80AB3CD4,
    func_80AB3D34, func_80AB3DB0, func_80AB3E10,
};

static Vec3f D_80AB4F48 = { 0.0f, 10.0f, 0.0f };

static EnNbDrawFunc sDrawFuncs[] = {
    EnNb_DrawNothing, func_80AB410C, EnNb_DrawTransparency, func_80AB2E70, func_80AB2FE4,
};

const ActorInit En_Nb_InitVars = {
    ACTOR_EN_NB,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_NB,
    sizeof(EnNb),
    (ActorFunc)EnNb_Init,
    (ActorFunc)EnNb_Destroy,
    (ActorFunc)EnNb_Update,
    (ActorFunc)EnNb_Draw,
};

s32 EnNb_GetWaypoint(EnNb* this) {
    s32 waypoint = this->actor.params >> 8;
    return waypoint & 0xFF;
}

s32 EnNb_GetParams(EnNb* this) {
    s32 params = this->actor.params;
    return params & 0xFF;
}

void EnNb_GetPathInfo(EnNb* this, GlobalContext* globalCtx) {
    Vec3s* pointPos;
    Path* path;
    s32 pad;
    s32 waypoint;

    path = globalCtx->setupPathList;
    if (path != 0) {
        waypoint = EnNb_GetWaypoint(this);
        path += waypoint;
        pointPos = SEGMENTED_TO_VIRTUAL(path->points);
        this->vec_2E4.x = pointPos[0].x;
        this->vec_2E4.y = pointPos[0].y;
        this->vec_2E4.z = pointPos[0].z;
        this->vec_2F0.x = pointPos[1].x;
        this->vec_2F0.y = pointPos[1].y;
        this->vec_2F0.z = pointPos[1].z;
        this->unk_2FC =
            (Math_atan2f(this->vec_2F0.x - this->vec_2E4.x, this->vec_2F0.z - this->vec_2E4.z) * 10430.378f);
        // "En_Nb_Get_path_info Get rail data = %d!!!!!!!!!!!!!!"
        osSyncPrintf("En_Nb_Get_path_info レールデータをゲットだぜ = %d!!!!!!!!!!!!!!\n", waypoint);
    } else {
        // "En_Nb_Get_path_info There is no rail data!!!!!!!!!!!!!!!!!!!!"
        osSyncPrintf("En_Nb_Get_path_info レールデータが無い!!!!!!!!!!!!!!!!!!!!\n");
    }
}

void EnNb_SetupCollider(EnNb* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;
    Collider_InitCylinder(globalCtx, &this->collider);
    if (!thisx) {} // required to match
    Collider_SetCylinder_Set3(globalCtx, &this->collider, thisx, &sCylinderInit);
}

void EnNb_UpdateCollider(EnNb* this, GlobalContext* globalCtx) {
    s32 pad[4];
    ColliderCylinder* collider = &this->collider;

    Collider_CylinderUpdate(&this->actor, collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &collider->base);
}

void EnNb_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnNb* this = THIS;
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80AB0FBC(EnNb* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->struct_300.unk_18 = player->actor.posRot.pos;
    this->struct_300.unk_14 = kREG(16) + 9.0f;
    func_80034A14(&this->actor, &this->struct_300, kREG(17) + 0xC, 2);
}

void func_80AB1040(EnNb* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->struct_300.unk_18 = player->actor.posRot.pos;
    this->struct_300.unk_14 = kREG(16) + 9.0f;
    func_80034A14(&this->actor, &this->struct_300, kREG(17) + 0xC, 4);
}

void func_80AB10C4(EnNb* this) {
    s32 pad2[2];
    Vec3s* tempPtr;
    Vec3s* tempPtr2;

    tempPtr = &this->struct_300.unk_08;
    Math_SmoothScaleMaxMinS(&tempPtr->x, 0, 20, 6200, 100);
    Math_SmoothScaleMaxMinS(&tempPtr->y, 0, 20, 6200, 100);
    tempPtr2 = &this->struct_300.unk_0E;
    Math_SmoothScaleMaxMinS(&tempPtr2->x, 0, 20, 6200, 100);
    Math_SmoothScaleMaxMinS(&tempPtr2->y, 0, 20, 6200, 100);
}

void func_80AB1164(EnNb* this) {
    s32 pad[3];
    s16* blinkTimer = &this->blinkTimer;
    s16* eyeIdx = &this->eyeIdx;

    if (!DECR(*blinkTimer)) {
        *blinkTimer = Math_Rand_S16Offset(60, 60);
    }

    *eyeIdx = *blinkTimer;
    if (*eyeIdx >= 3) {
        *eyeIdx = 0;
    }
}

void func_80AB11EC(EnNb* this) {
    this->action = 7;
    this->drawMode = 0;
    this->alpha = 0;
    this->unk_288 = 0;
    this->actor.shape.unk_14 = 0;
    this->unk_280 = 0.0f;
}

void func_80AB1210(EnNb* this, GlobalContext* globalCtx) {
    s32 one; // required to match
    if (globalCtx->csCtx.state == 0) {
        if (D_80AB4318 != 0) {
            if (this->actor.params == 2) {
                func_80AB11EC(this);
            }

            D_80AB4318 = 0;
        }
    } else {
        one = 1;
        if (D_80AB4318 == 0) {
            D_80AB4318 = one;
        }
    }
}

void func_80AB1284(EnNb* this, GlobalContext* globalCtx) {
    func_8002E4B4(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f, 4);
}

s32 EnNb_FrameUpdateMatrix(EnNb* this) {
    return SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

CsCmdActorAction* EnNb_GetCutsceneActionCommand(GlobalContext* globalCtx, s32 npcActionIdx) {
    if (globalCtx->csCtx.state != 0) {
        return globalCtx->csCtx.npcActions[npcActionIdx];
    }

    return NULL;
}

void EnNb_SetCaptureCutscenePosRot(EnNb* this, GlobalContext* globalCtx, s32 npcActionIdx) {
    CsCmdActorAction* csCmdNPCAction = EnNb_GetCutsceneActionCommand(globalCtx, npcActionIdx);
    s16 newRotY;
    Actor* thisx = &this->actor;

    if (csCmdNPCAction != NULL) {
        thisx->posRot.pos.x = csCmdNPCAction->startPos.x;
        thisx->posRot.pos.y = csCmdNPCAction->startPos.y;
        thisx->posRot.pos.z = csCmdNPCAction->startPos.z;
        newRotY = csCmdNPCAction->rot.y;
        thisx->shape.rot.y = newRotY;
        thisx->posRot.rot.y = newRotY;
    }
}

s32 func_80AB1390(EnNb* this, GlobalContext* globalCtx, u16 arg2, s32 npcActionIdx) {
    CsCmdActorAction* csCmdNPCAction;
    if ((globalCtx->csCtx.state != 0) &&
        (csCmdNPCAction = globalCtx->csCtx.npcActions[npcActionIdx], csCmdNPCAction != NULL) &&
        (csCmdNPCAction->action == arg2)) {
        return 1;
    }

    return 0;
}

s32 func_80AB13D8(EnNb* this, GlobalContext* globalCtx, u16 arg2, s32 npcActionIdx) {
    CsCmdActorAction* csCmdNPCAction;
    if ((globalCtx->csCtx.state != 0) &&
        (csCmdNPCAction = globalCtx->csCtx.npcActions[npcActionIdx], csCmdNPCAction != NULL) &&
        (csCmdNPCAction->action != arg2)) {
        return 1;
    }

    return 0;
}

void func_80AB1420(EnNb* this, GlobalContext* globalCtx, s32 npcActionIdx) {
    CsCmdActorAction* csCmdNPCAction = EnNb_GetCutsceneActionCommand(globalCtx, npcActionIdx);
    s16 newRotY;
    Actor* thisx = &this->actor;

    if (csCmdNPCAction != NULL) {
        thisx->posRot.pos.x = csCmdNPCAction->startPos.x;
        thisx->posRot.pos.y = csCmdNPCAction->startPos.y;
        thisx->posRot.pos.z = csCmdNPCAction->startPos.z;
        newRotY = csCmdNPCAction->rot.y;
        thisx->shape.rot.y = newRotY;
        thisx->posRot.rot.y = newRotY;
    }
}

void EnNb_SetupAnimation(EnNb* this, AnimationHeader* animation, u8 mode, f32 transitionRate, s32 arg4) {
    f32 frameCount = SkelAnime_GetFrameCount(&animation->genericHeader);
    f32 playbackSpeed;
    f32 unk0;
    f32 fc;

    if (arg4 == 0) {
        unk0 = 0.0f;
        fc = frameCount;
        playbackSpeed = 1.0f;
    } else {
        unk0 = frameCount;
        fc = 0.0f;
        playbackSpeed = -1.0f;
    }

    SkelAnime_ChangeAnim(&this->skelAnime, animation, playbackSpeed, unk0, fc, mode, transitionRate);
}

void EnNb_SetChamberAnim(EnNb* this, GlobalContext* globalCtx) {
    EnNb_SetupAnimation(this, &D_06009694, 0, 0, 0);
    this->actor.shape.unk_08 = -10000.0f;
}

void EnNb_SpawnChamberWarp(EnNb* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;
    f32 posX = thisx->posRot.pos.x;
    f32 posY = thisx->posRot.pos.y;
    f32 posZ = thisx->posRot.pos.z;

    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, posX, posY, posZ, 0, 0, 0, 2);
}

void EnNb_SpawnAndGiveSpiritMedallion(EnNb* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 posX = player->actor.posRot.pos.x;
    f32 posY = player->actor.posRot.pos.y + 50.0f;
    f32 posZ = player->actor.posRot.pos.z;

    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_EFFECT, posX, posY, posZ, 0, 0, 0,
                        12);
    Item_Give(globalCtx, ITEM_MEDALLION_SPIRIT);
}

void func_80AB1650(EnNb* this, GlobalContext* globalCtx) {
    this->actor.shape.unk_08 += 83.333336f;
}

void EnNb_AppearInChamber(EnNb* this, GlobalContext* globalCtx) {
    s32 pad[2];
    Player* player;
    s16 temp;

    if ((gSaveContext.chamberCutsceneNum == 3) && (gSaveContext.sceneSetupIndex < 4)) {
        player = PLAYER;
        this->action = NB_CHAMBER_UNDERGROUND;
        globalCtx->csCtx.segment = &D_80AB431C;
        gSaveContext.cutsceneTrigger = 2;
        Item_Give(globalCtx, ITEM_MEDALLION_SPIRIT);
        temp = this->actor.posRot.rot.y + 0x8000;
        player->actor.shape.rot.y = temp;
        player->actor.posRot.rot.y = temp;
    }
}

void EnNb_SetupChamberCutscene(EnNb* this, GlobalContext* globalCtx) {
    CutsceneContext* csCtx = &globalCtx->csCtx;
    CsCmdActorAction* csCmdNPCAction;

    if (csCtx->state != 0) {
        csCmdNPCAction = csCtx->npcActions[1];
        if (csCmdNPCAction != NULL && csCmdNPCAction->action == 2) {
            this->action = NB_CHAMBER_APPEAR;
            this->drawMode = 1;
            EnNb_SpawnChamberWarp(this, globalCtx);
        }
    }
}

void EnNb_SetupDefaultChamberIdle(EnNb* this) {
    if (this->actor.shape.unk_08 >= 0.0f) {
        this->action = NB_CHAMBER_IDLE;
        this->actor.shape.unk_08 = 0.0f;
    }
}

void func_80AB1778(EnNb* this, GlobalContext* globalCtx) {
    AnimationHeader* animation = &D_0600274C;
    CsCmdActorAction* csCmdNPCAction;

    if (globalCtx->csCtx.state != 0) {
        csCmdNPCAction = globalCtx->csCtx.npcActions[1];
        if (csCmdNPCAction != NULL && csCmdNPCAction->action == 3) {
            SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f,
                                 SkelAnime_GetFrameCount(&animation->genericHeader), 2, 0.0f);
            this->action = 4;
        }
    }
}

void func_80AB180C(EnNb* this, UNK_TYPE arg1) {
    AnimationHeader* animation = &D_06002B4C;
    if (arg1 != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&animation->genericHeader), 0, 0.0f);
        this->action = 5;
    }
}

void func_80AB1878(EnNb* this, GlobalContext* globalCtx) {
    CsCmdActorAction* csCmdNPCAction;

    if (globalCtx->csCtx.state != 0) {
        csCmdNPCAction = globalCtx->csCtx.npcActions[6];
        if (csCmdNPCAction != NULL && csCmdNPCAction->action == 2) {
            this->action = 6;
            EnNb_SpawnAndGiveSpiritMedallion(this, globalCtx);
        }
    }
}

void EnNb_AppearInChamberWrapper(EnNb* this, GlobalContext* globalCtx) {
    EnNb_AppearInChamber(this, globalCtx);
}

void EnNb_SetupChamberCutsceneWrapper(EnNb* this, GlobalContext* globalCtx) {
    EnNb_SetupChamberCutscene(this, globalCtx);
}

void func_80AB1904(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1650(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    EnNb_SetupDefaultChamberIdle(this);
}

void func_80AB193C(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    func_80AB1778(this, globalCtx);
}

void func_80AB197C(EnNb* this, GlobalContext* globalCtx) {
    s32 something;
    func_80AB1284(this, globalCtx);
    something = EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    func_80AB180C(this, something);
}

void func_80AB19BC(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    func_80AB1878(this, globalCtx);
}

void func_80AB19FC(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
}

void EnNb_InLightArrowOrSealingState(EnNb* this, GlobalContext* globalCtx) {
    EnNb_SetupAnimation(this, &D_06000410, 2, 0.0f, 0);
    this->action = 7;
    this->actor.shape.unk_14 = 0;
}

void EnNb_SetSageSFX(void) {
    func_800788CC(NA_SE_SY_WHITE_OUT_T);
}

void func_80AB1A94(EnNb* this, GlobalContext* globalCtx) {
    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_6K, this->actor.posRot.pos.x,
                        kREG(21) + 22.0f + this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 7);
}

void func_80AB1B14(EnNb* this, GlobalContext* globalCtx) {
    if (func_80AB1390(this, globalCtx, 4, 1)) {
        this->action = 8;
        this->drawMode = 2;
        this->alpha = 0;
        this->actor.shape.unk_14 = 0;
        this->unk_280 = 0.0f;
        EnNb_SetSageSFX();
    }
}

void func_80AB1B68(EnNb* this, GlobalContext* globalCtx) {
    f32* unk_280 = &this->unk_280;
    s32 alpha;

    if (func_80AB1390(this, globalCtx, 4, 1)) {
        *unk_280 += 1.0f;
        if (*unk_280 >= kREG(5) + 10.0f) {
            this->action = 9;
            this->drawMode = 1;
            *unk_280 = kREG(5) + 10.0f;
            this->alpha = 255;
            this->actor.shape.unk_14 = 0xFF;
            return;
        }
    } else {
        *unk_280 -= 1.0f;
        if (*unk_280 <= 0.0f) {
            this->action = 7;
            this->drawMode = 0;
            *unk_280 = 0.0f;
            this->alpha = 0;
            this->actor.shape.unk_14 = 0;
            return;
        }
    }

    alpha = (*unk_280 / (kREG(5) + 10.0f)) * 255.0f;
    this->alpha = alpha;
    this->actor.shape.unk_14 = alpha;
}

void func_80AB1CBC(EnNb* this, GlobalContext* globalCtx) {
    if (func_80AB13D8(this, globalCtx, 4, 1)) {
        this->action = 8;
        this->drawMode = 2;
        this->unk_280 = kREG(5) + 10.0f;
        this->alpha = 255;
        if (this->unk_288 == 0) {
            func_80AB1A94(this, globalCtx);
            this->unk_288 = 1;
        }

        this->actor.shape.unk_14 = 0xFF;
    }
}

void func_80AB1D54(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1B14(this, globalCtx);
    func_80AB1210(this, globalCtx);
}

void func_80AB1D84(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    func_80AB1B68(this, globalCtx);
    func_80AB1210(this, globalCtx);
}

void func_80AB1DD8(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    func_80AB1CBC(this, globalCtx);
    func_80AB1210(this, globalCtx);
}

void EnNb_DrawTransparency(EnNb* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s16 eyeSegIdx = this->eyeIdx;
    UNK_PTR addr = sEyeSegments[eyeSegIdx];
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nb_inKenjyanomaDemo02.c", 263);
    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(addr));
    gSPSegment(gfxCtx->polyXlu.p++, 0x09, SEGMENTED_TO_VIRTUAL(addr));
    gDPSetEnvColor(gfxCtx->polyXlu.p++, 0, 0, 0, this->alpha);
    gSPSegment(gfxCtx->polyXlu.p++, 0x0C, &D_80116280[0]);

    gfxCtx->polyXlu.p = SkelAnime_DrawSV2(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                                          NULL, NULL, NULL, gfxCtx->polyXlu.p);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nb_inKenjyanomaDemo02.c", 290);
}

void EnNb_SetupColossusCapture(EnNb* this, GlobalContext* globalCtx) {
    EnNb_SetupAnimation(this, &D_06001E7C, 0, 0.0f, 0);
    this->action = NB_CAPTURED;
    this->actor.shape.unk_14 = 0;
    gSaveContext.eventChkInf[9] |= 32;
}

void EnNb_PlayCrySFX(EnNb* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.frames == 3) {
        func_80078914(&this->actor.projectedPos, NA_SE_VO_NB_CRY_0);
    }
}

void EnNb_PlayAgonySFX(EnNb* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.frames == 420) {
        func_80078914(&this->actor.projectedPos, NA_SE_VO_NB_AGONY);
    }
}

void EnNb_SetPosRotInPortal(EnNb* this, GlobalContext* globalCtx) {
    CsCmdActorAction* csCmdNPCAction = EnNb_GetCutsceneActionCommand(globalCtx, 1);
    PosRot* posRot = &this->actor.posRot;
    f32 f0;
    s32 pad;
    Vec3f startPos;
    Vec3f endPos;
    if (csCmdNPCAction != 0) {
        f0 = func_8006F9BC(csCmdNPCAction->endFrame, csCmdNPCAction->startFrame, globalCtx->csCtx.frames, 4, 4);
        startPos.x = csCmdNPCAction->startPos.x;
        startPos.y = csCmdNPCAction->startPos.y;
        startPos.z = csCmdNPCAction->startPos.z;
        endPos.x = csCmdNPCAction->endPos.x;
        endPos.y = csCmdNPCAction->endPos.y;
        endPos.z = csCmdNPCAction->endPos.z;
        posRot->pos.x = (((endPos.x - startPos.x) * f0) + startPos.x);
        posRot->pos.y = (((endPos.y - startPos.y) * f0) + startPos.y);
        posRot->pos.z = (((endPos.z - startPos.z) * f0) + startPos.z);
    }
}

void EnNb_SetupCaptureCutsceneState(EnNb* this, GlobalContext* globalCtx) {
    EnNb_SetCaptureCutscenePosRot(this, globalCtx, 1);
    this->action = NB_CAPTURED;
    this->drawMode = 0;
    this->actor.shape.unk_14 = 0;
}

void func_80AB2180(EnNb* this, UNK_TYPE arg1) {
    AnimationHeader* animation = &D_06001350;
    if (arg1 != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&animation->genericHeader), 0, 0.0f);
    }
}

void func_80AB21E0(EnNb* this) {
    AnimationHeader* animation = &D_06001E7C;
    SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f, SkelAnime_GetFrameCount(&animation->genericHeader), 0,
                         -8.0f);
    this->action = 11;
    this->drawMode = 1;
}

void EnNb_SetupPortalCapture(EnNb* this) {
    AnimationHeader* animation = &D_06001104;
    SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f, SkelAnime_GetFrameCount(&animation->genericHeader), 2,
                         -8.0f);
    this->action = 12;
    this->drawMode = 1;
}

void EnNb_InColossusCapture(EnNb* this, GlobalContext* globalCtx) {
    CsCmdActorAction* csCmdNPCAction = EnNb_GetCutsceneActionCommand(globalCtx, 1);
    s32 action;
    s32 unk_28C;

    if (csCmdNPCAction != NULL) {
        action = csCmdNPCAction->action;
        unk_28C = this->unk_28C;
        if (action != unk_28C) {
            switch (action) {
                case 1:
                    EnNb_SetupCaptureCutsceneState(this, globalCtx);
                    break;
                case 7: // camera at link in front of mirror shield chest
                    func_80AB21E0(this);
                    break;
                case 8: // nabooru in portal, arm up
                    EnNb_SetupPortalCapture(this);
                    break;
                case 9:
                    Actor_Kill(&this->actor);
                    break;
                default:
                    // "En_Nb_Kidnap_Check_DemoMode: No such action!!!!!!!!"
                    osSyncPrintf("En_Nb_Kidnap_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
                    break;
            }
            this->unk_28C = action;
        }
    }
}

void func_80AB23A8(EnNb* this, GlobalContext* globalCtx) {
    EnNb_PlayCrySFX(this, globalCtx);
    EnNb_InColossusCapture(this, globalCtx);
}

void func_80AB23D8(EnNb* this, GlobalContext* globalCtx) {
    EnNb_PlayCrySFX(this, globalCtx);
    EnNb_PlayAgonySFX(this, globalCtx);
    func_80AB1164(this);
    EnNb_FrameUpdateMatrix(this);
    EnNb_InColossusCapture(this, globalCtx);
}

void func_80AB242C(EnNb* this, GlobalContext* globalCtx) {
    s32 something;

    func_80AB1164(this);
    something = EnNb_FrameUpdateMatrix(this);
    func_80AB2180(this, something);
    EnNb_SetPosRotInPortal(this, globalCtx);
    EnNb_InColossusCapture(this, globalCtx);
}

void EnNb_KnuckleDefeated(EnNb* this, GlobalContext* globalCtx) {
    AnimationHeader* animation = &D_06008BD0;
    EnNb_SetupAnimation(this, animation, 0, 0.0f, 0);
    this->action = 13;
    this->actor.shape.unk_14 = 0;
}

void EnNb_PlayKnuckleDefeatSFX(EnNb* this, GlobalContext* globalCtx) {
    Vec3f* projectedPos = &this->actor.projectedPos;
    s32 pad;

    if (globalCtx->csCtx.frames == 548) {
        func_80078914(projectedPos, NA_SE_VO_NB_CRY_0);
        func_80078914(projectedPos, NA_SE_EN_FANTOM_HIT_THUNDER);
    }
}

void func_80AB250C(EnNb* this) {
    s32 pad;
    SkelAnime* skelAnime = &this->skelAnime;

    if ((skelAnime->mode == 2) && ((func_800A56C8(skelAnime, 18.0f) != 0) || (func_800A56C8(skelAnime, 25.0f) != 0))) {
        func_80078914(&this->actor.projectedPos, NA_SE_EV_HUMAN_BOUND);
    }
}

void func_80AB2570(EnNb* this) {
    s32 pad;
    SkelAnime* skelAnime = &this->skelAnime;

    if ((skelAnime->mode == 2) && (func_800A56C8(skelAnime, 9.0f) != 0)) {
        func_80078914(&this->actor.projectedPos, NA_SE_PL_WALK_CONCRETE);
    }
}

void func_80AB25BC(EnNb* this) {
    s32 pad;
    SkelAnime* skelAnime = &this->skelAnime;

    if ((func_800A56C8(skelAnime, 9.0f) != 0) || (func_800A56C8(skelAnime, 13.0f) != 0)) {
        func_80078914(&this->actor.projectedPos, NA_SE_PL_WALK_CONCRETE);
    }
}

void func_80AB2610(EnNb* this, GlobalContext* globalCtx) {
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_6K, this->actor.posRot.pos.x,
                kREG(21) + 22.0f + this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0xB);
}

void func_80AB2688(EnNb* this, GlobalContext* globalCtx) {
    this->skelAnime.flags |= 1;
    SkelAnime_LoadAnimationType5(globalCtx, &this->actor, &this->skelAnime, 1.0f);
}

void func_80AB26C8(EnNb* this) {
    this->action = 13;
    this->drawMode = 0;
    this->actor.shape.unk_14 = 0;
}

void func_80AB26DC(EnNb* this, GlobalContext* globalCtx) {
    s32 pad;
    AnimationHeader* animation = &D_06008BD0;
    f32 frames = SkelAnime_GetFrameCount(&animation->genericHeader);

    EnNb_SetCaptureCutscenePosRot(this, globalCtx, 1);
    SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f, frames, 2, 0.0f);
    this->action = 14;
    this->drawMode = 3;
    this->actor.shape.unk_14 = 0xFF;
}

void func_80AB2774(EnNb* this) {
    AnimationHeader* animation = &D_06008BD0;
    f32 frames = SkelAnime_GetFrameCount(&animation->genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f, frames, 2, 0.0f);
    this->action = 15;
    this->drawMode = 3;
    this->actor.shape.unk_14 = 0xFF;
}

void func_80AB27F0(EnNb* this, UNK_TYPE arg1) {
    AnimationHeader* animation = &D_060046A8;
    if (arg1 != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&animation->genericHeader), 0, 0.0f);
        this->drawMode = 3;
    }
}

void func_80AB285C(EnNb* this) {
    AnimationHeader* animation = &D_06003954;
    f32 frames = SkelAnime_GetFrameCount(&animation->genericHeader);
    SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f, frames, 2, -8.0f);
    this->action = 16;
    this->drawMode = 1;
    this->actor.shape.unk_14 = 0xFF;
}

void func_80AB28DC(EnNb* this, UNK_TYPE arg1) {
    AnimationHeader* animation = &D_06004030;
    if (arg1 != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&animation->genericHeader), 0, 0.0f);
        this->drawMode = 4;
    }
}

void func_80AB2948(EnNb* this) {
    AnimationHeader* animation = &D_06002DBC;
    f32 frames = SkelAnime_GetFrameCount(&animation->genericHeader);
    SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f, frames, 2, -8.0f);
    this->action = 17;
    this->drawMode = 4;
    this->actor.shape.unk_14 = 0xFF;
}

void func_80AB29C8(EnNb* this, UNK_TYPE arg1) {
    AnimationHeader* animation = &D_060035A8;
    if (arg1 != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&animation->genericHeader), 0, 0.0f);
    }
}

void func_80AB2A28(EnNb* this, GlobalContext* globalCtx, UNK_TYPE arg2) {
    if ((this->unk_288 == 0) && (arg2 != 0)) {
        func_80AB2610(this, globalCtx);
        this->unk_288 = 1;
    }
}

void func_80AB2A68(EnNb* this) {
    AnimationHeader* animation = &D_06006320;
    f32 frames = SkelAnime_GetFrameCount(&animation->genericHeader);
    SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f, frames, 2, -8.0f);
    this->action = 18;
    this->drawMode = 4;
    this->actor.shape.unk_14 = 0xFF;
}

void func_80AB2AE8(EnNb* this) {
    this->action = 19;
    this->drawMode = 0;
    this->actor.shape.unk_14 = 0;
}

void EnNb_CheckKnuckleCutsceneMode(EnNb* this, GlobalContext* globalCtx) {
    CsCmdActorAction* csCmdNPCAction;
    s32 csAction;
    s32 csActionMinusOne;
    s32 unk_28C;

    csCmdNPCAction = EnNb_GetCutsceneActionCommand(globalCtx, 1);
    if (csCmdNPCAction != 0) {
        csAction = csCmdNPCAction->action;
        csActionMinusOne = csAction - 1;
        unk_28C = this->unk_28C;
        if (csAction != unk_28C) {
            switch (csActionMinusOne) {
                case 0:
                    func_80AB26C8(this);
                    break;
                case 9:
                    func_80AB26DC(this, globalCtx);
                    break;
                case 10:
                    func_80AB2774(this);
                    break;
                case 11:
                    func_80AB285C(this);
                    break;
                case 12:
                    func_80AB2948(this);
                    break;
                case 13:
                    func_80AB2A68(this);
                    break;
                case 8:
                    func_80AB2AE8(this);
                    break;
                default:
                    // "En_Nb_Confrontion_Check_DemoMode: No such action!!!!!!!!"
                    osSyncPrintf("En_Nb_Confrontion_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
                    break;
            }
            this->unk_28C = csAction;
        }
    }
}

void EnNb_CheckKnuckleCutsceneModeWrapper(EnNb* this, GlobalContext* globalCtx) {
    EnNb_CheckKnuckleCutsceneMode(this, globalCtx);
}

void func_80AB2C18(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1164(this);
    func_80AB2688(this, globalCtx);
    func_80AB1284(this, globalCtx);
    EnNb_CheckKnuckleCutsceneMode(this, globalCtx);
}

void func_80AB2C60(EnNb* this, GlobalContext* globalCtx) {
    UNK_TYPE something;

    func_80AB1164(this);
    something = EnNb_FrameUpdateMatrix(this);
    func_80AB27F0(this, something);
    func_80AB250C(this);
    func_80AB2688(this, globalCtx);
    func_80AB1284(this, globalCtx);
    EnNb_CheckKnuckleCutsceneMode(this, globalCtx);
}

void func_80AB2CCC(EnNb* this, GlobalContext* globalCtx) {
    UNK_TYPE something;

    func_80AB1164(this);
    something = EnNb_FrameUpdateMatrix(this);
    func_80AB28DC(this, something);
    func_80AB2570(this);
    func_80AB2688(this, globalCtx);
    func_80AB1284(this, globalCtx);
    EnNb_CheckKnuckleCutsceneMode(this, globalCtx);
}

void func_80AB2D38(EnNb* this, GlobalContext* globalCtx) {
    s32 something;

    func_80AB1164(this);
    something = EnNb_FrameUpdateMatrix(this);
    func_80AB29C8(this, something);
    func_80AB2688(this, globalCtx);
    func_80AB1284(this, globalCtx);
    EnNb_CheckKnuckleCutsceneMode(this, globalCtx);
}

void func_80AB2D9C(EnNb* this, GlobalContext* globalCtx) {
    UNK_TYPE something;

    EnNb_PlayKnuckleDefeatSFX(this, globalCtx);
    func_80AB1164(this);
    something = EnNb_FrameUpdateMatrix(this);
    func_80AB25BC(this);
    func_80AB2688(this, globalCtx);
    func_80AB1284(this, globalCtx);
    func_80AB2A28(this, globalCtx, something);
    EnNb_CheckKnuckleCutsceneMode(this, globalCtx);
}

void func_80AB2E1C(EnNb* this, GlobalContext* globalCtx) {
    this->unk_290++;
    if (this->unk_290 > 60.0f) {
        Actor_Kill(&this->actor);
    }
}

extern UNK_PTR D_0600D8E8;
void func_80AB2E70(EnNb* this, GlobalContext* globalCtx) {
    s32 pad;
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nb_inConfrontion.c", 572);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(&D_0600D8E8));
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(&D_0600D8E8));
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0xFF);
    gSPSegment(gfxCtx->polyOpa.p++, 0x0C, &D_80116280[2]);
    SkelAnime_DrawSV(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount, NULL, NULL, &this->actor);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nb_inConfrontion.c", 593);
}

s32 func_80AB2FC0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnNb* this = THIS;
    if (limbIndex == 15) {
        *dList = &D_06013158;
    }

    return 0;
}

void func_80AB2FE4(EnNb* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 eyeSegIdx = this->eyeIdx;
    SkelAnime* skelAnime = &this->skelAnime;
    void* srcSegment = sEyeSegments[eyeSegIdx];
    void* srcSegmentC = &D_80116280[2];
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nb_inConfrontion.c", 623);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(srcSegment));
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(srcSegment));
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0xFF);
    gSPSegment(gfxCtx->polyOpa.p++, 0x0C, srcSegmentC);
    SkelAnime_DrawSV(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount, func_80AB2FC0, NULL,
                     &this->actor);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nb_inConfrontion.c", 644);
}

void EnNb_InCredits(EnNb* this, GlobalContext* globalCtx) {
    EnNb_SetupAnimation(this, &D_06000BC0, 0, 0.0f, 0);
    this->action = 20;
    this->drawMode = 0;
    this->actor.shape.unk_14 = 0;
}

void func_80AB319C(EnNb* this) {
    f32* unk_280 = &this->unk_280;
    s32 something;


    this->unk_280++;
    if ((kREG(17) + 10.0f) <= this->unk_280) {
        this->alpha = 0xFF;
        this->actor.shape.unk_14 = 0xFF;
    } else {
        something = (*unk_280 / (kREG(17) + 10.0f)) * 255.0f;
        this->alpha = something;
        this->actor.shape.unk_14 = something;
    }
}

void func_80AB3228(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1420(this, globalCtx, 1);
    this->action = 21;
    this->drawMode = 2;
}

void func_80AB3260(EnNb* this) {
    if (this->unk_280 >= kREG(17) + 10.0f) {
        this->action = 22;
        this->drawMode = 1;
    }
}

void func_80AB32AC(EnNb* this) {
    EnNb_SetupAnimation(this, &D_06005CA4, 2, -8.0f, 0);
    this->action = 23;
}

void func_80AB32EC(EnNb* this, UNK_TYPE arg1) {
    if (arg1 != 0) {
        EnNb_SetupAnimation(this, &D_06005614, 0, 0.0f, 0);
    }
}

void EnNb_CheckCreditsCutsceneMode(EnNb* this, GlobalContext* globalCtx) {
    CsCmdActorAction* csCmdNPCAction = EnNb_GetCutsceneActionCommand(globalCtx, 1);
    s32 action;
    s32 unk_28C;

    if (csCmdNPCAction != NULL) {
        action = csCmdNPCAction->action;
        unk_28C = this->unk_28C;
        if (action != unk_28C) {
            switch (action) {
                case 15:
                    func_80AB3228(this, globalCtx);
                    break;
                case NB_CREDITS_LOOK_BEHIND:
                    func_80AB32AC(this);
                    break;
                default:
                    osSyncPrintf("En_Nb_inEnding_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
                    break;
            }
            this->unk_28C = action;
        }
    }
}

// In Credits
void func_80AB33C0(EnNb* this, GlobalContext* globalCtx) {
    EnNb_CheckCreditsCutsceneMode(this, globalCtx);
}

void func_80AB33E0(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    func_80AB319C(this);
    func_80AB3260(this);
}

void func_80AB3428(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    EnNb_CheckCreditsCutsceneMode(this, globalCtx);
}

void func_80AB3468(EnNb* this, GlobalContext* globalCtx) {
    s32 something;

    func_80AB1284(this, globalCtx);
    something = EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    func_80AB32EC(this, something);
}
void EnNb_CheckToSpawnNearSpiritCrawlspace(EnNb* this, GlobalContext* globalCtx) {
    if (!(gSaveContext.eventChkInf[9] & 0x20) && gSaveContext.linkAge == 1) { 
        EnNb_GetPathInfo(this, globalCtx);
        if (!(gSaveContext.eventChkInf[9] & 0x10)) { // looking into crawlspace
            EnNb_SetupAnimation(this, &D_06006E78, 0, 0.0f, 0); 
            this->action = NB_CROUCH_CRAWLSPACE;
            this->drawMode = 1;
        } else {
            EnNb_SetupAnimation(this, &D_06004BB4, 0, 0.0f, 0);
            this->unk_2E0 = 1;
            this->actor.flags |= 9;
            this->actor.posRot.pos = this->vec_2F0;
            this->action = NB_IDLE_AFTER_TALK;
            this->drawMode = 1;
        }
    } else {
        Actor_Kill(&this->actor);
    }
}

void func_80AB359C(EnNb* this) {
    PosRot* posRot = &this->actor.posRot;
    Vec3f* vec_2E4 = &this->vec_2E4;
    Vec3f* vec_2F0 = &this->vec_2F0;
    f32 f0;
    u16 temp_t1;
    s16 temp_2;

    this->unk_2FE++;
    temp_2 = kREG(17);
    temp_t1 = temp_2;
    temp_t1 += 0x19; // Oddly needs all these temps to match
    if (temp_t1 >= this->unk_2FE) {
        f0 = func_8006F9BC(temp_t1, 0, this->unk_2FE, 3, 3);
        posRot->pos.x = vec_2E4->x + (f0 * (vec_2F0->x - vec_2E4->x));
        posRot->pos.y = vec_2E4->y + (f0 * (vec_2F0->y - vec_2E4->y));
        posRot->pos.z = vec_2E4->z + (f0 * (vec_2F0->z - vec_2E4->z));
    }
}

void EnNb_SetNoticeSFX(EnNb* this) {
    func_80078914(&this->actor.projectedPos, NA_SE_VO_NB_NOTICE);
}

s32 EnNb_GetNoticedStatus(EnNb* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 playerX = player->actor.posRot.pos.x;
    f32 playerZ = player->actor.posRot.pos.z;
    f32 thisX = this->actor.posRot.pos.x;
    f32 thisZ = this->actor.posRot.pos.z;

    if (SQ(playerX - thisX) + SQ(playerZ - thisZ) < 6400.0f) {
        return true;
    }
    return false;
}

#ifdef NON_MATCHING
// regalloc, functionally equivalent, tested in-game
void func_80AB36DC(EnNb* this, GlobalContext* globalCtx) {

    u16 temp_a1;
    s16 temp;
    s32 unk_2FE;
    unk_2FE = this->unk_2FE;
    temp_a1 = kREG(17) + 0x19;
    if (this->unk_2FE < ((u16)(temp_a1 - 4))) {
        temp = 4 - this->unk_2FE;
        if (temp > 0) {
            Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->unk_2FC, temp, 0x1838, 0x64);
        }
    } else {
        if ((temp = temp_a1 - this->unk_2FE) > 0) {
            Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.initPosRot.rot.y, temp, 0x1838, 0x64);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB36DC.s")
#endif

void EnNb_CheckNoticed(EnNb* this, GlobalContext* globalCtx) {
    if (EnNb_GetNoticedStatus(this, globalCtx)) {
        EnNb_SetupAnimation(this, &D_06004E60, 2, -8.0f, 0);
        this->action = NB_NOTICE_PLAYER;
        EnNb_SetNoticeSFX(this);
    }
}

void func_80AB37E0(EnNb* this, UNK_TYPE arg1) {
    if (arg1 != 0) {
        EnNb_SetupAnimation(this, &D_06004BB4, 0, -8.0f, 0);
        this->unk_2E0 = 1;
        this->actor.flags |= 9;
        this->action = NB_IDLE_CRAWLSPACE;
    }
}

void func_80AB3838(EnNb* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        this->action = NB_IN_DIALOG;
    } else {
        this->actor.flags |= 9;
        if (!(gSaveContext.infTable[22] & 0x1000)) {
            this->actor.textId = 0x601D; // "I haven't seen you around, kid...What do you want?"
        } else {
            this->actor.textId = 0x6024; // "I want to ask you a favor...Will you go through..."
        }
        func_8002F2F4(&this->actor, globalCtx);
    }
}

void func_80AB38AC(EnNb* this, GlobalContext* globalCtx) {
    EnNb_SetupAnimation(this, &D_06004E60, 2, -8.0f, 0);
    gSaveContext.eventChkInf[9] |= 16;
    this->action = NB_IN_PATH;
    this->actor.flags &= ~9;
}

void EnNb_SetTextIdAsChild(EnNb* this, GlobalContext* globalCtx) {

    s32 pad;
    u8 choiceIndex;
    MessageContext* msgCtx;
    u16 textId;

    textId = this->actor.textId;
    msgCtx = &globalCtx->msgCtx;
    if (func_8010BDBC(msgCtx) == 2) {
        // "Thanks, kid! You and I, let's give Ganondorf and his followers a big surprise, shall we?"
        if (textId == 0x6025) {
            func_80AB38AC(this, globalCtx);
        } else {
            // "Well, what did I expect? After all, you're just a kid!"
            if (textId == 0x6027) {
                gSaveContext.infTable[22] |= 0x1000;
            }
            this->action = NB_IDLE_CRAWLSPACE;
        }
        this->actor.flags &= ~9;
    } else if ((func_8010BDBC(msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
        choiceIndex = globalCtx->msgCtx.choiceIndex;
        // "I haven't seen you around, kid..What do you want?" ..proceeds to print choices
        if (textId == 0x601D) {
            switch (choiceIndex) {
                case 0:
                    // "You're just a kid! The temple is no place for kids!"
                    this->actor.textId = 0x601E;
                    break;
                case 1:
                    // "A Sage? I don't know anyone like that."
                    this->actor.textId = 0x601F;
                    break;
                default:
                    // "You have nothing to do? What good timing!" ... proceeds to ask question asking if Link is one of Ganondorf's followers
                    this->actor.textId = 0x6020;
            }
        } else {
            if (textId == 0x6020) {
                switch (choiceIndex) {
                    case 0:
                        // "Wha-ha-ha! Don't try to act cool, kid. I was just asking! A kid like you..."
                        this->actor.textId = 0x6021;
                        break;
                    default:
                        // "Uh-huh! You've got guts. I think I like you"
                        this->actor.textId = 0x6022;
                        break;
                }
            } else {
                switch (choiceIndex) {
                    case 0:
                        // "Thanks, kid! You and I, let's give Ganondorf and his followers a big surprise, shall we?"
                        this->actor.textId = 0x6025;
                        break;
                    default:
                        // "Well, what did I expect? After all, you're just a kid!"
                        this->actor.textId = 0x6027;
                        break;
                }
            }
        }

        func_8010B720(globalCtx, this->actor.textId);
    }
}

void func_80AB3A7C(EnNb* this, GlobalContext* globalCtx, UNK_TYPE arg2) {
    u16 unk_2FE = this->unk_2FE;
    if ((((kREG(17) + 0x19) & 0xFFFF) > unk_2FE)) {
        if (arg2 != 0) {
            EnNb_SetupAnimation(this, &D_06009238, 0, 0.0f, 0);
        }
    } else {
        EnNb_SetupAnimation(this, &D_06004BB4, 0, -8.0f, 0);
        this->action = NB_IDLE_AFTER_TALK;
    }
}

void func_80AB3B04(EnNb* this, GlobalContext* globalCtx) {
    u16 maskReaction;

    if (func_8002F194(&this->actor, globalCtx) != 0) {
        this->action = 30;
    } else {
        this->actor.flags |= 9;
        maskReaction = Text_GetFaceReaction(globalCtx, 0x23);
        this->actor.textId = maskReaction;
        if ((maskReaction & 0xFFFF) == 0) {
            // "If you can successfully get the Silver Gauntlets...I'll do something great for you!"
            this->actor.textId = 0x6026;
        }
        func_8002F2F4(&this->actor, globalCtx);
    }
}

void func_80AB3B7C(EnNb* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        this->action = NB_IDLE_AFTER_TALK;
        this->actor.flags &= ~9;
    }
}

// Runs in child spirit
void func_80AB3BC8(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_UpdateCollider(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    EnNb_CheckNoticed(this, globalCtx);
}

void func_80AB3C1C(EnNb* this, GlobalContext* globalCtx) {
    s32 something;

    func_80AB1284(this, globalCtx);
    EnNb_UpdateCollider(this, globalCtx);
    something = EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    func_80AB37E0(this, something);
}

void func_80AB3C74(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_UpdateCollider(this, globalCtx);
    func_80AB0FBC(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    func_80AB3838(this, globalCtx);
}

void func_80AB3CD4(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_UpdateCollider(this, globalCtx);
    func_80AB0FBC(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    EnNb_SetTextIdAsChild(this, globalCtx);
}

// Action Function 28 // Something to do with path
void func_80AB3D34(EnNb* this, GlobalContext* globalCtx) {
    s32 something;

    func_80AB359C(this);
    func_80AB1284(this, globalCtx);
    EnNb_UpdateCollider(this, globalCtx);
    func_80AB36DC(this, globalCtx);
    func_80AB10C4(this);
    something = EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    func_80AB3A7C(this, globalCtx, something);
}

void func_80AB3DB0(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_UpdateCollider(this, globalCtx);
    func_80AB0FBC(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    func_80AB3B04(this, globalCtx);
}

void func_80AB3E10(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_UpdateCollider(this, globalCtx);
    func_80AB1040(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    func_80AB3B7C(this, globalCtx);
}

void EnNb_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnNb* this = THIS;

    if (this->action < 0 || this->action > 30 || sActionFuncs[this->action] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        sActionFuncs[this->action](this, globalCtx);
    }
}

void EnNb_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnNb* this = THIS;
    SkelAnime* skelAnime = &this->skelAnime;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    EnNb_SetupCollider(this, globalCtx);
    SkelAnime_InitSV(globalCtx, skelAnime, &D_060181C8, NULL, &this->limbDrawTable, &this->transitionDrawTable, 19);

    switch (EnNb_GetParams(this)) {
        case 2: // light arrow room & sealing of ganon
            EnNb_InLightArrowOrSealingState(this, globalCtx);
            break;
        case 3: // after getting silver gauntlets
            EnNb_SetupColossusCapture(this, globalCtx);
            break;
        case 4: // nabooru knuckle fight
            EnNb_KnuckleDefeated(this, globalCtx);
            break;
        case 5: // nabooru in credits
            EnNb_InCredits(this, globalCtx);
            break;
        case 6: // spirit temple child link
            EnNb_CheckToSpawnNearSpiritCrawlspace(this, globalCtx);
            break;
        default: // giving medallion
            EnNb_SetChamberAnim(this, globalCtx);
            break;
    }
}

s32 func_80AB3FE8(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnNb* this = THIS;
    struct_80034A14_arg1* struct_300 = &this->struct_300;

    s32 ret = 0;
    if (this->unk_2E0 != 0) {

        if (limbIndex == 8) {
            rot->x += struct_300->unk_0E.y;
            rot->y -= struct_300->unk_0E.x;
            ret = 0;
        }

        else if (limbIndex == 15) {
            rot->x += struct_300->unk_08.y;
            rot->z += struct_300->unk_08.x;
            ret = 0;
        }
    }
    return ret;
}

void EnNb_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    EnNb* this = THIS;
    Vec3f vec1;
    Vec3f vec2;

    if (limbIndex == 15) {
        vec1 = D_80AB4F48;
        Matrix_MultVec3f(&vec1, &vec2);
        thisx->posRot2.pos.x = vec2.x;
        thisx->posRot2.pos.y = vec2.y;
        thisx->posRot2.pos.z = vec2.z;
        thisx->posRot2.rot.x = thisx->posRot.rot.x;
        thisx->posRot2.rot.y = thisx->posRot.rot.y;
        thisx->posRot2.rot.z = thisx->posRot.rot.z;
    }
}

void EnNb_DrawNothing(EnNb* this, GlobalContext* globalCtx) {
}

void func_80AB410C(EnNb* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 eyeIdx = this->eyeIdx;
    SkelAnime* skelAnime = &this->skelAnime;
    void* srcSegment = sEyeSegments[eyeIdx];
    void* srcSegmentC = &D_80116280[2];
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nb.c", 992);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(srcSegment));
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(srcSegment));
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0, 0, 0, 255);
    gSPSegment(gfxCtx->polyOpa.p++, 0x0C, srcSegmentC);
    SkelAnime_DrawSV(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount, func_80AB3FE8,
                     EnNb_PostLimbDraw, &this->actor);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nb.c", 1013);
}

void EnNb_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnNb* this = THIS;

    if (this->drawMode < 0 || this->drawMode >= 5 || sDrawFuncs[this->drawMode] == NULL) {
        // "The drawing mode is wrong!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        sDrawFuncs[this->drawMode](this, globalCtx);
    }
}
