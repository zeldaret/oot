/*
 * File: z_en_door.c
 * Overlay: ovl_En_Door
 * Description: Doors with handles
 */

#include "z_en_door.h"

#define FLAGS 0x00000010

#define THIS ((EnDoor*)thisx)

#define DOOR_AJAR_SLAM_RANGE 120.0f
#define DOOR_AJAR_OPEN_RANGE (2 * DOOR_AJAR_SLAM_RANGE)

#define DOOR_CHECK_RANGE 40.0f

void EnDoor_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDoor_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDoor_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDoor_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnDoor_SetupType(EnDoor* this, GlobalContext* globalCtx);
void EnDoor_Idle(EnDoor* this, GlobalContext* globalCtx);
void EnDoor_WaitForCheck(EnDoor* this, GlobalContext* globalCtx);
void EnDoor_Check(EnDoor* this, GlobalContext* globalCtx);
void EnDoor_AjarWait(EnDoor* this, GlobalContext* globalCtx);
void EnDoor_AjarOpen(EnDoor* this, GlobalContext* globalCtx);
void EnDoor_AjarClose(EnDoor* this, GlobalContext* globalCtx);
void EnDoor_Open(EnDoor* this, GlobalContext* globalCtx);

const ActorInit En_Door_InitVars = {
    ACTOR_EN_DOOR,
    ACTORTYPE_DOOR,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnDoor),
    (ActorFunc)EnDoor_Init,
    (ActorFunc)EnDoor_Destroy,
    (ActorFunc)EnDoor_Update,
    (ActorFunc)EnDoor_Draw,
};

/**
 * Controls which object and display lists to use in a given scene
 */
static EnDoorInfo sDoorInfo[] = {
    { SCENE_HIDAN, 1, OBJECT_HIDAN_OBJECTS },
    { SCENE_MIZUSIN, 2, OBJECT_MIZU_OBJECTS },
    { SCENE_HAKADAN, 3, OBJECT_HAKA_DOOR },
    { SCENE_HAKADANCH, 3, OBJECT_HAKA_DOOR },
    // KEEP objects should remain last and in this order
    { -1, 0, OBJECT_GAMEPLAY_KEEP },
    { -1, 4, OBJECT_GAMEPLAY_FIELD_KEEP },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(unk_1F, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 4000, ICHAIN_STOP),
};

AnimationHeader* D_809FCECC[] = { 0x0400E758, 0x0400E5B4, 0x04010038, 0x0400E6A0 };

static u8 sDoorAnimOpenFrames[] = { 25, 25, 25, 25 };

static u8 sDoorAnimCloseFrames[] = { 60, 70, 60, 70 };

static Gfx* D_809FCEE4[5][2] = {
    { 0x0400ECB8, 0x0400EE00 }, { 0x0600F998, 0x0600F938 }, { 0x06004958, 0x06004A10 },
    { 0x060013B8, 0x06001420 }, { 0x050047A0, 0x05004978 },
};

extern Gfx D_0400ECB8[];
extern Gfx D_0400EE00[];

extern AnimationHeader D_0400E758;
extern SkeletonHeader D_0400FF78;

void EnDoor_Init(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnDoor* this = THIS;
    EnDoorInfo* objectInfo;
    s32 i;
    s32 objBankIndex;
    f32 xOffset;
    f32 zOffset;

    objectInfo = &sDoorInfo[0];
    Actor_ProcessInitChain(&this->actor, sInitChain);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_0400FF78, &D_0400E758, this->limbDrawTable,
                   this->transitionDrawTable, 5);
    for (i = 0; i < ARRAY_COUNT(sDoorInfo) - 2; i++, objectInfo++) {
        if (globalCtx->sceneNum == objectInfo->sceneNum) {
            break;
        }
    }
    if (i >= ARRAY_COUNT(sDoorInfo) - 2 && Object_GetIndex(&globalCtx->objectCtx, OBJECT_GAMEPLAY_FIELD_KEEP) >= 0) {
        objectInfo++;
    }

    this->dListIndex = objectInfo->dListIndex;
    objBankIndex = Object_GetIndex(&globalCtx->objectCtx, objectInfo->objectId);
    if (objBankIndex < 0) {
        Actor_Kill(&this->actor);
        return;
    }

    this->requiredObjBankIndex = objBankIndex;
    this->dListIndex = objectInfo->dListIndex;
    if (this->actor.objBankIndex == this->requiredObjBankIndex) {
        EnDoor_SetupType(this, globalCtx);
    } else {
        this->actionFunc = EnDoor_SetupType;
    }

    // Double doors
    if (this->actor.params & 0x40) {
        EnDoor* other;

        xOffset = Math_Coss(this->actor.shape.rot.y) * 30.0f;
        zOffset = Math_Sins(this->actor.shape.rot.y) * 30.0f;
        other = (EnDoor*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_DOOR,
                                            this->actor.posRot.pos.x + xOffset, this->actor.posRot.pos.y,
                                            this->actor.posRot.pos.z - zOffset, 0, this->actor.shape.rot.y + 0x8000, 0,
                                            this->actor.params & ~0x40);
        if (other != NULL) {
            other->unk_192 = 1;
        }
        this->actor.posRot.pos.x -= xOffset;
        this->actor.posRot.pos.z += zOffset;
    }
    Actor_SetHeight(&this->actor, 70.0f);
}

void EnDoor_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    TransitionActorEntry* transitionEntry;
    EnDoor* this = THIS;

    transitionEntry = &globalCtx->transitionActorList[(u16)this->actor.params >> 0xA];
    if (transitionEntry->id < 0) {
        transitionEntry->id = -transitionEntry->id;
    }
}

void EnDoor_SetupType(EnDoor* this, GlobalContext* globalCtx) {
    s32 doorType;

    if (Object_IsLoaded(&globalCtx->objectCtx, this->requiredObjBankIndex)) {
        doorType = this->actor.params >> 7 & 7;
        this->actor.flags &= ~0x10;
        this->actor.objBankIndex = this->requiredObjBankIndex;
        this->actionFunc = EnDoor_Idle;
        if (doorType == DOOR_EVENING) {
            doorType =
                (gSaveContext.dayTime > 0xC000 && gSaveContext.dayTime < 0xE000) ? DOOR_SCENEEXIT : DOOR_CHECKABLE;
        }
        this->actor.posRot.rot.y = 0x0000;
        if (doorType == DOOR_LOCKED) {
            if (!Flags_GetSwitch(globalCtx, this->actor.params & 0x3F)) {
                this->lockTimer = 10;
            }
        } else if (doorType == DOOR_AJAR) {
            if (func_8002DB8C(&this->actor, &PLAYER->actor) > DOOR_AJAR_SLAM_RANGE) {
                this->actionFunc = EnDoor_AjarWait;
                this->actor.posRot.rot.y = -0x1800;
            }
        } else if (doorType == DOOR_CHECKABLE) {
            this->actor.textId = (this->actor.params & 0x3F) + 0x0200;
            if (this->actor.textId == 0x0229 && !(gSaveContext.eventChkInf[1] & 0x10)) {
                // Talon's house door. If Talon has not been woken up at Hyrule Castle
                // this door should be openable at any time of day. Note that there is no
                // check for time of day as the scene setup for Lon Lon merely initializes
                // the door with a different text id between day and night setups
                doorType = DOOR_SCENEEXIT;
            } else {
                this->actionFunc = EnDoor_WaitForCheck;
                this->actor.flags |= 0x8000009;
            }
        }
        // Replace the door type it was loaded with by the new type
        this->actor.params = (this->actor.params & ~0x380) | (doorType << 7);
    }
}

void EnDoor_Idle(EnDoor* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 doorType;
    Vec3f sp2C;
    s16 phi_v0;

    doorType = this->actor.params >> 7 & 7;
    func_8002DBD0(&this->actor, &sp2C, &player->actor.posRot.pos);
    if (this->unk_191 != 0) {
        this->actionFunc = EnDoor_Open;
        SkelAnime_ChangeAnimPlaybackStop(&this->skelAnime, D_809FCECC[this->unk_190],
                                         (player->stateFlags1 & 0x8000000) ? 0.75f : 1.5f);
        if (this->lockTimer != 0) {
            gSaveContext.inventory.dungeonKeys[gSaveContext.mapIndex]--;
            Flags_SetSwitch(globalCtx, this->actor.params & 0x3F);
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_CHAIN_KEY_UNLOCK);
        }
    } else if (!Player_InCsMode(globalCtx)) {
        if (fabsf(sp2C.y) < 20.0f && fabsf(sp2C.x) < 20.0f && fabsf(sp2C.z) < 50.0f) {
            phi_v0 = player->actor.shape.rot.y - this->actor.shape.rot.y;
            if (sp2C.z > 0.0f) {
                phi_v0 = 0x8000 - phi_v0;
            }
            if (ABS(phi_v0) < 0x3000) {
                if (this->lockTimer != 0) {
                    if (gSaveContext.inventory.dungeonKeys[gSaveContext.mapIndex] <= 0) {
                        Player* player2 = PLAYER;

                        player2->naviTextId = -0x203;
                        return;
                    } else {
                        player->doorTimer = 10;
                    }
                }
                player->doorType = (doorType == DOOR_AJAR) ? -1 : 1;
                player->doorDirection = (sp2C.z >= 0.0f) ? 1.0f : -1.0f;
                player->doorActor = &this->actor;
            }
        } else if (doorType == DOOR_AJAR && this->actor.xzDistFromLink > DOOR_AJAR_OPEN_RANGE) {
            this->actionFunc = EnDoor_AjarOpen;
        }
    }
}

void EnDoor_WaitForCheck(EnDoor* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = EnDoor_Check;
    } else {
        func_8002F2CC(&this->actor, globalCtx, DOOR_CHECK_RANGE);
    }
}

void EnDoor_Check(EnDoor* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx)) {
        this->actionFunc = EnDoor_WaitForCheck;
    }
}

void EnDoor_AjarWait(EnDoor* this, GlobalContext* globalCtx) {
    if (this->actor.xzDistFromLink < DOOR_AJAR_SLAM_RANGE) {
        this->actionFunc = EnDoor_AjarClose;
    }
}

void EnDoor_AjarOpen(EnDoor* this, GlobalContext* globalCtx) {
    if (this->actor.xzDistFromLink < DOOR_AJAR_SLAM_RANGE) {
        this->actionFunc = EnDoor_AjarClose;
    } else if (Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, -0x1800, 0x100)) {
        this->actionFunc = EnDoor_AjarWait;
    }
}

void EnDoor_AjarClose(EnDoor* this, GlobalContext* globalCtx) {
    if (Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, 0, 0x700)) {
        this->actionFunc = EnDoor_Idle;
    }
}

void EnDoor_Open(EnDoor* this, GlobalContext* globalCtx) {
    s32 i;
    s32 numEffects;

    if (DECR(this->lockTimer) == 0) {
        if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
            this->actionFunc = EnDoor_Idle;
            this->unk_191 = 0;
        } else if (func_800A56C8(&this->skelAnime, sDoorAnimOpenFrames[this->unk_190])) {
            Audio_PlayActorSound2(&this->actor,
                                  (globalCtx->sceneNum == SCENE_HAKADAN || globalCtx->sceneNum == SCENE_HAKADANCH ||
                                   globalCtx->sceneNum == SCENE_HIDAN)
                                      ? NA_SE_EV_IRON_DOOR_OPEN
                                      : NA_SE_OC_DOOR_OPEN);
            if (this->skelAnime.animPlaybackSpeed < 1.5f) {
                numEffects = (s32)(Math_Rand_ZeroOne() * 30.0f) + 50;
                for (i = 0; i < numEffects; i++) {
                    EffectSsBubble_Spawn(globalCtx, &this->actor.posRot.pos, 60.0f, 100.0f, 50.0f, 0.15f);
                }
            }
        } else if (func_800A56C8(&this->skelAnime, sDoorAnimCloseFrames[this->unk_190])) {
            Audio_PlayActorSound2(&this->actor,
                                  (globalCtx->sceneNum == SCENE_HAKADAN || globalCtx->sceneNum == SCENE_HAKADANCH ||
                                   globalCtx->sceneNum == SCENE_HIDAN)
                                      ? NA_SE_EV_IRON_DOOR_CLOSE
                                      : NA_SE_EV_DOOR_CLOSE);
        }
    }
}

void EnDoor_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnDoor* this = THIS;
    this->actionFunc(this, globalCtx);
}

s32 EnDoor_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    s32 pad;
    TransitionActorEntry* transitionEntry;
    Gfx** temp_a2;
    s32 pad2;
    s16 phi_v0_2;
    s32 phi_v0;
    EnDoor* this = THIS;

    if (limbIndex == 4) {
        temp_a2 = D_809FCEE4[this->dListIndex];
        transitionEntry = &globalCtx->transitionActorList[(u16)this->actor.params >> 0xA];
        rot->z += this->actor.posRot.rot.y;
        if ((globalCtx->roomCtx.prevRoom.num >= 0) ||
            (transitionEntry->sides[0].room == transitionEntry->sides[1].room)) {
            phi_v0_2 = ((this->actor.shape.rot.y + this->skelAnime.limbDrawTbl[3].z) + rot->z) -
                       Math_Vec3f_Yaw(&globalCtx->view.eye, &this->actor.posRot.pos);
            *dList = (ABS(phi_v0_2) < 0x4000) ? temp_a2[0] : temp_a2[1];
        } else {
            phi_v0 = this->unk_192;
            if (transitionEntry->sides[0].room != this->actor.room) {
                phi_v0 ^= 1;
            }
            *dList = temp_a2[phi_v0];
        }
    }
    return 0;
}

void EnDoor_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnDoor* this = THIS;

    if (this->actor.objBankIndex == this->requiredObjBankIndex) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_door.c", 910);

        func_80093D18(globalCtx->state.gfxCtx);
        SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, EnDoor_OverrideLimbDraw,
                          NULL, &this->actor);
        if (this->actor.posRot.rot.y != 0) {
            if (1) {}
            if (this->actor.posRot.rot.y > 0) {
                gSPDisplayList(POLY_OPA_DISP++, D_0400EE00);
            } else {
                gSPDisplayList(POLY_OPA_DISP++, D_0400ECB8);
            }
        }
        if (this->lockTimer != 0) {
            Actor_DrawDoorLock(globalCtx, this->lockTimer, 0);
        }

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_door.c", 941);
    }
}
