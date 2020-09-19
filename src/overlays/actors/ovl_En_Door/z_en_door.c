/*
 * File: z_en_door.c
 * Overlay: ovl_En_Door
 * Description: Door
 */

#include "z_en_door.h"

#define FLAGS 0x00000010

#define THIS ((EnDoor*)thisx)

void EnDoor_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDoor_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDoor_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDoor_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 func_809FCC3C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx);

void func_809FC41C(EnDoor* this, GlobalContext* globalCtx);
void func_809FC5D0(EnDoor* this, GlobalContext* globalCtx);

void func_809FC878(EnDoor* this, GlobalContext* globalCtx);
void func_809FC8C0(EnDoor* this, GlobalContext* globalCtx);
void func_809FC8F4(EnDoor* this, GlobalContext* globalCtx);
void func_809FC928(EnDoor* this, GlobalContext* globalCtx);
void func_809FC998(EnDoor* this, GlobalContext* globalCtx);
void func_809FC9DC(EnDoor* this, GlobalContext* globalCtx);

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

EnDoorObjectInfo D_809FCEA0[] = {
    {SCENE_HIDAN,     0x01, OBJECT_HIDAN_OBJECTS},
    {SCENE_MIZUSIN,   0x02, OBJECT_MIZU_OBJECTS},
    {SCENE_HAKADAN,   0x03, OBJECT_HAKA_DOOR},
    {SCENE_HAKADANCH, 0x03, OBJECT_HAKA_DOOR},
    {0xFFFF,          0x00, OBJECT_GAMEPLAY_KEEP},
    {0xFFFF,          0x04, OBJECT_GAMEPLAY_FIELD_KEEP},
};

InitChainEntry D_809FCEC4[] = {
    ICHAIN_U8(unk_1F, 0x0, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 4000, ICHAIN_STOP),
};

extern AnimationHeader D_0400E758;
extern AnimationHeader D_0400E5B4;
extern AnimationHeader D_04010038;
extern AnimationHeader D_0400E6A0;

AnimationHeader* D_809FCECC[] = {
    &D_0400E758, &D_0400E5B4, &D_04010038, &D_0400E6A0,
};

// TODO check type
u8 D_809FCEDC[] = {
    0x19, 0x19, 0x19, 0x19,
};

// TODO check type
u8 D_809FCEE0[] = {
    0x3C, 0x46, 0x3C, 0x46,
};

extern Gfx D_0400ECB8[];
extern Gfx D_0400EE00[];
extern Gfx D_0600F998[];
extern Gfx D_0600F938[];
extern Gfx D_06004958[];
extern Gfx D_06004A10[];
extern Gfx D_060013B8[];
extern Gfx D_06001420[];
extern Gfx D_050047A0[];
extern Gfx D_05004978[];

Gfx* D_809FCEE4[5][2] = {
    {&D_0400ECB8, &D_0400EE00}, 
    {&D_0600F998, &D_0600F938}, 
    {&D_06004958, &D_06004A10}, 
    {&D_060013B8, &D_06001420}, 
    {&D_050047A0, &D_05004978},
};

extern SkeletonHeader D_0400FF78;

#ifdef NON_MATCHING
// Regalloc only
void EnDoor_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    s32 pad1;
    EnDoorObjectInfo* objectInfo;
    s32 phi_v1;
    s32 objIndex;
    f32 sp48;
    f32 sp44;
    EnDoor* this;
    EnDoor* attached;
    EnDoorObjectInfo* temp;

    objectInfo = D_809FCEA0;
    this = THIS;
    Actor_ProcessInitChain(&this->actor, D_809FCEC4);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_0400FF78, &D_0400E758, &this->unk_198, &this->unk_1B6, 5);
    for (phi_v1 = 0; phi_v1 < 4; phi_v1++, objectInfo++) {
        if (globalCtx->sceneNum == objectInfo->sceneNum) {
            break;
        }
    }
    if (phi_v1 >= 4 && Object_GetIndex(&globalCtx->objectCtx, OBJECT_GAMEPLAY_FIELD_KEEP) >= 0) {
        objectInfo++;
        if (!globalCtx->sceneNum) {} // Moves globalCtx into a saved register
    }

    this->unk_194 = objectInfo->unk_2;
    objIndex = Object_GetIndex(&globalCtx->objectCtx, objectInfo->objectId);
    if (objIndex < 0) {
        Actor_Kill(&this->actor);
        return;
    }

    this->unk_193 = objIndex;
    this->unk_194 = objectInfo->unk_2;

    if (this->unk_193 == this->actor.objBankIndex) {
        func_809FC41C(this, globalCtx);
    } else {
        this->actionFunc = func_809FC41C;
    }

    if ((this->actor.params & 0x40) != 0) {
        sp48 = Math_Coss(this->actor.shape.rot.y) * 30.0f;
        sp44 = Math_Sins(this->actor.shape.rot.y) * 30.0f;
        attached = (EnDoor*)Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_DOOR, 
                    this->actor.posRot.pos.x + sp48, this->actor.posRot.pos.y, this->actor.posRot.pos.z - sp44, 
                    0, this->actor.shape.rot.y + 0x8000, 0, this->actor.params & -0x41);
        if (attached != NULL) {
            attached->unk_192 = 1;
        }
        this->actor.posRot.pos.x -= sp48;
        this->actor.posRot.pos.z += sp44;
    }
    Actor_SetHeight(&this->actor, 70.0f);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/EnDoor_Init.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/EnDoor_Destroy.s")
void EnDoor_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    TransitionActorEntry* transitionEntry;
    EnDoor* this = THIS;

    transitionEntry = &globalCtx->transitionActorList[(u16)this->actor.params >> 0xA];
    if (transitionEntry->id < 0) {
        transitionEntry->id = -transitionEntry->id;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/func_809FC41C.s")
void func_809FC41C(EnDoor* this, GlobalContext* globalCtx) {
    s32 phi_v1;

    if (Object_IsLoaded(&globalCtx->objectCtx, this->unk_193)) {
        phi_v1 = (this->actor.params >> 7) & 7;
        this->actor.flags &= -0x11;
        this->actor.objBankIndex = this->unk_193;
        this->actionFunc = func_809FC5D0;
        if (phi_v1 == 6) {
            phi_v1 = (gSaveContext.dayTime >= 0xC001 && gSaveContext.dayTime < 0xE000) ? 3 : 5;
        }
        this->actor.posRot.rot.y = 0x0000;
        if (phi_v1 == 1) {
            if (Flags_GetSwitch(globalCtx, this->actor.params & 0x3F) == 0) {
                this->unk_196 = 0xA;
            }
        } else if (phi_v1 == 4) {
            if (120.0f < func_8002DB8C(&this->actor, PLAYER)) {
                this->actionFunc = func_809FC8F4;
                this->actor.posRot.rot.y = -0x1800;
            }
        } else if (phi_v1 == 5) {
            this->actor.textId = (this->actor.params & 0x3F) + 0x0200;
            if ((this->actor.textId == 0x0229) && !(gSaveContext.eventChkInf[1] & 0x10)) {
                phi_v1 = 3;
            } else {
                this->actionFunc = func_809FC878;
                this->actor.flags |= 0x8000009;
            }
        }
        this->actor.params = (this->actor.params & 0xFC7F) | (phi_v1 << 7);
    }
}

#ifdef NON_MATCHING
// Regalloc only
void func_809FC5D0(EnDoor* this, GlobalContext *globalCtx) {
    Player* player;
    s32 sp38;
    Vec3f sp2C;
    s32 pad;
    s16 phi_v0;
    s16 temp_v0;

    player = PLAYER;
    sp38 = (this->actor.params >> 7) & 7;
    func_8002DBD0(&this->actor, &sp2C, &player->actor.posRot.pos);
    if ((u8)this->unk_191 != 0) {
        this->actionFunc = func_809FC9DC;
        SkelAnime_ChangeAnimPlaybackStop(&this->skelAnime, D_809FCECC[this->unk_190], (((s32)player->stateFlags1 * 0x10) < 0) ? 0.75f : 1.5f);
        if (this->unk_196 != 0) {
            gSaveContext.dungeonKeys[gSaveContext.mapIndex]--;
            Flags_SetSwitch(globalCtx, this->actor.params & 0x3F);
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_CHAIN_KEY_UNLOCK);
        }
    } else if (!func_8008E988(globalCtx)) {
        if (fabsf(sp2C.y) < 20.0f && fabsf(sp2C.x) < 20.0f && fabsf(sp2C.z) < 50.0f) {
            phi_v0 = player->actor.shape.rot.y - this->actor.shape.rot.y;
            if (sp2C.z > 0.0f) {
                phi_v0 = 0x8000 - phi_v0;
            }
            if (ABS(phi_v0) < 0x3000) {
                if (this->unk_196 != 0) {
                    if (gSaveContext.dungeonKeys[gSaveContext.mapIndex] <= 0) {
                        PLAYER->naviMessageId = -0x203; // PLAYER over player required
                        return;
                    } else {
                        player->doorTimer = 0xA;
                    }
                }
                player->doorType = (sp38 == 4) ? -1 : 1;
                player->doorDirection = (sp2C.z >= 0.0f) ? 1.0f : -1.0f;
                player->doorActor = &this->actor;
            }
        } else if (sp38 == 4 && 240.0f < this->actor.xzDistFromLink) {
            this->actionFunc = func_809FC928;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/func_809FC5D0.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/func_809FC878.s")
void func_809FC878(EnDoor* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        this->actionFunc = func_809FC8C0;
    } else {
        func_8002F2CC(&this->actor, globalCtx, 40.0f);
    }
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/func_809FC8C0.s")
void func_809FC8C0(EnDoor* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx) != 0) {
        this->actionFunc = func_809FC878;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/func_809FC8F4.s")
void func_809FC8F4(EnDoor* this, GlobalContext* globalCtx) {
    if (this->actor.xzDistFromLink < 120.0f) {
        this->actionFunc = func_809FC998;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/func_809FC928.s")
void func_809FC928(EnDoor* this, GlobalContext* globalCtx) {
    if (this->actor.xzDistFromLink < 120.0f) {
        this->actionFunc = func_809FC998;
    } else if (Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, -0x1800, 0x100) != 0) {
        this->actionFunc = func_809FC8F4;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/func_809FC998.s")
void func_809FC998(EnDoor* this, GlobalContext* globalCtx) {
    if (Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, 0, 0x700) != 0) {
        this->actionFunc = func_809FC5D0;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/func_809FC9DC.s")
void func_809FC9DC(EnDoor* this, GlobalContext* globalCtx) {
    SkelAnime* skelAnime;
    s32 i;
    s32 temp_s1;

    skelAnime = &this->skelAnime;
    if (DECR(this->unk_196) == 0) {
        if (SkelAnime_FrameUpdateMatrix(skelAnime) != 0) {
            this->actionFunc = func_809FC5D0;
            this->unk_191 = 0;
        } else if (func_800A56C8(skelAnime, D_809FCEDC[this->unk_190]) != 0) {
            Audio_PlayActorSound2(this, (globalCtx->sceneNum == SCENE_HAKADAN || 
                globalCtx->sceneNum == SCENE_HAKADANCH || 
                globalCtx->sceneNum == SCENE_HIDAN) ? NA_SE_EV_IRON_DOOR_OPEN : NA_SE_OC_DOOR_OPEN);
            if (this->skelAnime.animPlaybackSpeed < 1.5f) {
                temp_s1 = (s32) (Math_Rand_ZeroOne() * 30.0f) + 0x32; // temp required to match
                for (i = 0; i < temp_s1; i++) {
                    func_800293E4(globalCtx, &this->actor.posRot.pos, 60.0f, 100.0f, 50.0f, 0.15000000596046448f);
                }
            }
        } else if (func_800A56C8(skelAnime, D_809FCEE0[this->unk_190]) != 0) {
            Audio_PlayActorSound2(this, (globalCtx->sceneNum == SCENE_HAKADAN || 
                globalCtx->sceneNum == SCENE_HAKADANCH || 
                globalCtx->sceneNum == SCENE_HIDAN) ? NA_SE_EV_IRON_DOOR_CLOSE : NA_SE_EV_DOOR_CLOSE);
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/EnDoor_Update.s")
void EnDoor_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnDoor* this = THIS;
    this->actionFunc(this, globalCtx);
}

// EnDoor_OverrideLimbDraw
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/func_809FCC3C.s")
s32 func_809FCC3C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    s32 pad;
    TransitionActorEntry* transitionEntry;
    Gfx** temp_a2;
    s32 pad2;
    s16 phi_v0_2;
    s32 phi_v0;
    EnDoor* this;

    this = THIS;
    if (limbIndex == 4) {
        temp_a2 = &D_809FCEE4[(s8)this->unk_194];
        transitionEntry = &globalCtx->transitionActorList[(u16)this->actor.params >> 0xA];
        rot->z += this->actor.posRot.rot.y;
        if ((globalCtx->roomCtx.prevRoom.num >= 0) || (transitionEntry->sides[1].room == transitionEntry->sides[0].room)) {
            phi_v0_2 = ((this->actor.shape.rot.y + this->skelAnime.limbDrawTbl[3].z) + rot->z) - Math_Vec3f_Yaw(&globalCtx->view.eye, &this->actor.posRot.pos);
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

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/EnDoor_Draw.s")
void EnDoor_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnDoor* this;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    this = THIS;
    if (this->actor.objBankIndex == this->unk_193) {
        gfxCtx = globalCtx->state.gfxCtx;
        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_door.c", 0x38E);
        func_80093D18(globalCtx->state.gfxCtx);
        SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_809FCC3C, NULL, &this->actor);
        if (this->actor.posRot.rot.y != 0) {
            if(!this) {} // Required for saved register
            if (this->actor.posRot.rot.y > 0) {
                gSPDisplayList(gfxCtx->polyOpa.p++, &D_0400EE00);
            } else {
                gSPDisplayList(gfxCtx->polyOpa.p++, &D_0400ECB8);
            }
        }
        if (this->unk_196 != 0) {
            func_80033F54(globalCtx, this->unk_196, 0);
        }
        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_door.c", 0x3AD);
    }
}
