#include "z_en_holl.h"

#define FLAGS 0x00000010

#define THIS ((EnHoll*)thisx)

void EnHoll_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHoll_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHoll_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHoll_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A59828(EnHoll* this, GlobalContext* globalCtx);
void func_80A58DD4(EnHoll* this, GlobalContext* globalCtx);
void func_80A59014(EnHoll* this, GlobalContext* globalCtx);
void func_80A591C0(EnHoll* this, GlobalContext* globalCtx);
void func_80A593A4(EnHoll* this, GlobalContext* globalCtx);
void func_80A59520(EnHoll* this, GlobalContext* globalCtx);
void func_80A59618(EnHoll* this, GlobalContext* globalCtx);
void func_80A59828(EnHoll* this, GlobalContext* globalCtx);

const ActorInit En_Holl_InitVars = {
    ACTOR_EN_HOLL,
    ACTORTYPE_DOOR,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnHoll),
    (ActorFunc)EnHoll_Init,
    (ActorFunc)EnHoll_Destroy,
    (ActorFunc)EnHoll_Update,
    (ActorFunc)EnHoll_Draw,
};

static EnHollActionFunc sActionFuncs[] = {
    func_80A58DD4,
    func_80A591C0,
    func_80A59520,
    func_80A59618,
    func_80A59014,
    func_80A593A4,
    func_80A59014, 
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneForward, 0xFA0, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 0x190, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 0x190, ICHAIN_STOP)
};

static f32 D_80A59A68[2][4] = {
    {200.0f, 150.0f, 100.0f, 50.0f}, 
    {100.0f, 75.0f, 50.0f, 25.0f},
};

static Vtx sVertices[] = {
    VTX(0x55F0, 0x4E20, 0x0000, 0x0800, 0x0800, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(0xAA10, 0x4E20, 0x0000, 0x0000, 0x0800, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(0xAA10, 0xB1E0, 0x0000, 0x0000, 0x0000, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(0x55F0, 0xB1E0, 0x0000, 0x0800, 0x0000, 0xFF, 0xFF, 0xFF, 0xFF),
};

static Gfx sDisplayList[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineMode(G_CC_PRIMITIVE, G_CC_PASS2),
    gsSPVertex(sVertices, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

void EnHoll_SetupAction(EnHoll* this, EnHollActionFunc func) {
    this->actionFunc = func;
}

s32 EnHoll_IsKokiriSetup8() {
    return gSaveContext.entranceIndex == 0x00EE && gSaveContext.sceneSetupIndex == 8;
}

void EnHoll_ChooseAction(EnHoll* this) {
    s32 action;

    action = (this->actor.params >> 6) & 7;
    EnHoll_SetupAction(this, sActionFuncs[action]);
    if (&sActionFuncs[0] != &sActionFuncs[action]) {
        this->actor.draw = NULL;
    } else {
        this->planeAlpha = 0xFF;
    }
}

void EnHoll_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnHoll* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    EnHoll_ChooseAction(this);
    this->unk_14F = 0;
}

void EnHoll_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 transitionActorIdx;
    TransitionActorEntry* transitionEntry;

    transitionActorIdx = (u16)thisx->params >> 0xA;
    transitionEntry = &globalCtx->transitionActorList[transitionActorIdx];
    transitionEntry->id = -transitionEntry->id;
}

void EnHoll_SwapRooms(GlobalContext* globalCtx) {
    Room tempRoom;
    RoomContext* roomCtx;

    roomCtx = &globalCtx->roomCtx;
    tempRoom = roomCtx->curRoom;
    roomCtx->curRoom = roomCtx->prevRoom;
    roomCtx->prevRoom = tempRoom;
    globalCtx->roomCtx.unk_30 ^= 1;
}

// Horizontal Planes
void func_80A58DD4(EnHoll* this, GlobalContext* globalCtx) {
    Player* player;
    s32 phi_t0;
    Vec3f vec;
    f32 absZ;
    s32 transitionActorIdx;

    player = PLAYER;
    phi_t0 = ((globalCtx->sceneNum == SCENE_JYASINZOU) ? 1 : 0) & 0xFFFFFFFF;
    func_8002DBD0(&this->actor, &vec, &player->actor.posRot.pos);
    this->unk_14E = (vec.z < 0.0f) ? 0 : 1;
    absZ = fabsf(vec.z);
    if (-50.0f < vec.y && vec.y < 200.0f && fabsf(vec.x) < 100.0f && absZ < D_80A59A68[phi_t0][0]) {
        transitionActorIdx = (u16)this->actor.params >> 0xA;
        if (D_80A59A68[phi_t0][1] < absZ) {
            if (globalCtx->roomCtx.prevRoom.num >= 0 && globalCtx->roomCtx.status == 0) {
                this->actor.room = globalCtx->transitionActorList[transitionActorIdx].info[this->unk_14E].room;
                EnHoll_SwapRooms(globalCtx);
                func_80097534(globalCtx, &globalCtx->roomCtx);
            }
        } else {
            this->actor.room = globalCtx->transitionActorList[transitionActorIdx].info[this->unk_14E ^ 1].room;
            if (globalCtx->roomCtx.prevRoom.num < 0) {
                func_8009728C(globalCtx, &globalCtx->roomCtx, this->actor.room);
            } else {
                this->planeAlpha = (255.0f / (D_80A59A68[phi_t0][2] - D_80A59A68[phi_t0][3])) * (absZ - D_80A59A68[phi_t0][3]);
                this->planeAlpha = (this->planeAlpha < 0) ? 0 : 
                        ((this->planeAlpha > 0xFF) ? 0xFF : this->planeAlpha);
                if (globalCtx->roomCtx.curRoom.num != this->actor.room) {
                    EnHoll_SwapRooms(globalCtx);
                }
            }
        }
    }
}

// Horizontal Planes
#ifdef NON_MATCHING
// Regalloc near the end
void func_80A59014(EnHoll* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 pad2;
    Vec3f sp44;
    TransitionActorEntry* new_var2;
    f32 phi_f2;
    s32 new_var;
    s32 phi_a2;
    s32 phi_a3;
    f32 temp_f0;
    s32 phi_a0;
    Player* player;

    player = PLAYER;
    phi_a2 = D_8011D394 != 0 || globalCtx->csCtx.state != 0;
    func_8002DBD0(&this->actor, &sp44, (phi_a2) ? &globalCtx->view.eye : &player->actor.posRot.pos);
    phi_f2 = (((this->actor.params >> 6) & 7) == 6) ? 100.0f : 200.0f;
    if (EnHoll_IsKokiriSetup8() || (-50.0f < sp44.y && sp44.y < 200.0f && fabsf(sp44.x) < phi_f2 && 
        (temp_f0 = fabsf(sp44.z), (temp_f0 < 100.0f && 50.0f < temp_f0)))) {
        phi_a3 = (u16)this->actor.params >> 0xA;
        new_var = globalCtx->transitionActorList[phi_a3].info[(sp44.z < 0.0f) ? 0 : 1].room;
        this->actor.room = new_var;
        if (this->actor.room != globalCtx->roomCtx.curRoom.num && func_8009728C(globalCtx, &globalCtx->roomCtx, this->actor.room & 0xFFFFFFFF) != 0) {
            EnHoll_SetupAction(this, func_80A59828);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A59014.s")
#endif

// Vertical Planes
void func_80A591C0(EnHoll* this, GlobalContext* globalCtx) {
    Player* player;
    f32 absY;
    s32 transitionActorIdx;

    player = PLAYER;
    absY = fabsf(this->actor.yDistFromLink);
    if ((this->actor.xzDistFromLink < 500.0f) && (absY < 700.0f)) {
        transitionActorIdx = (u16)this->actor.params >> 0xA;
        if (absY < 95.0f) {
            globalCtx->unk_11E18 = 0xFF;
        } else if (605.0f < absY) {
            globalCtx->unk_11E18 = 0;
        } else {
            globalCtx->unk_11E18 = ((s16)(605.0f - absY)) * 0.5f;
        }
        if (absY < 95.0f) {
            this->actor.room = (&globalCtx->transitionActorList[transitionActorIdx])->backRoom;
            Math_SmoothScaleMaxMinF(&player->actor.posRot.pos.x, this->actor.posRot.pos.x, 1.0f, 50.0f, 10.0f);
            Math_SmoothScaleMaxMinF(&player->actor.posRot.pos.z, this->actor.posRot.pos.z, 1.0f, 50.0f, 10.0f);
            if (this->actor.room != globalCtx->roomCtx.curRoom.num &&
                func_8009728C(globalCtx, &globalCtx->roomCtx, this->actor.room) != 0) {
                EnHoll_SetupAction(this, func_80A59828);
                this->unk_14F = 1;
                player->actor.speedXZ = 0.0f;
            }
        }
    } else if (this->unk_14F != 0) {
        globalCtx->unk_11E18 = 0;
        this->unk_14F = 0;
    }
}

// Vertical Planes
void func_80A593A4(EnHoll* this, GlobalContext* globalCtx) {
    f32 absY;
    s32 frontOrBack;
    s32 transitionActorIdx;

    if ((this->actor.xzDistFromLink < 120.0f) && 
        (absY = fabsf(this->actor.yDistFromLink), absY < 200.0f)) {
        if (absY < 50.0f) {
            globalCtx->unk_11E18 = 0xFF;
        } else {
            globalCtx->unk_11E18 = (200.0f - absY) * 1.7000000476837158f;
        }
        if (50.0f < absY) {
            transitionActorIdx = (u16)this->actor.params >> 0xA;
            frontOrBack = (0.0f < this->actor.yDistFromLink) ? 0 : 1;
            this->actor.room = globalCtx->transitionActorList[transitionActorIdx].info[frontOrBack].room;
            if (this->actor.room != globalCtx->roomCtx.curRoom.num && 
                func_8009728C(globalCtx, &globalCtx->roomCtx, this->actor.room) != 0) {
                EnHoll_SetupAction(this, &func_80A59828);
                this->unk_14F = 1;
            }
        }
    } else if (this->unk_14F != 0) {
        this->unk_14F = 0;
        globalCtx->unk_11E18 = 0;
    }
}

// Vertical Planes
void func_80A59520(EnHoll* this, GlobalContext* globalCtx) {
    f32 absY;
    s8 frontOrBack;
    s32 transitionActorIdx;

    if (this->actor.xzDistFromLink < 120.0f) {
        absY = fabsf(this->actor.yDistFromLink);
        if (absY < 200.0f && 50.0f < absY) {
            transitionActorIdx = (u16)this->actor.params >> 0xA;
            frontOrBack = (0.0f < this->actor.yDistFromLink) ? 0 : 1;
            this->actor.room = globalCtx->transitionActorList[transitionActorIdx].info[frontOrBack].room;
            if (this->actor.room != globalCtx->roomCtx.curRoom.num && 
                func_8009728C(globalCtx, &globalCtx->roomCtx, this->actor.room) != 0) {
                EnHoll_SetupAction(this, func_80A59828);
            }
        }
    }
}

// Horizontal Planes
void func_80A59618(EnHoll* this, GlobalContext* globalCtx) {
    Player* player;
    Vec3f sp38;
    f32 temp_f2;
    s32 frontOrBack;
    s32 transitionActorIdx;

    player = PLAYER;
    if (Flags_GetSwitch(globalCtx, this->actor.params & 0x3F) == 0) {
        if(this->unk_14F != 0) {
            globalCtx->unk_11E18 = 0;
            this->unk_14F = 0;
        }
    } else {
        func_8002DBD0(&this->actor, &sp38, &player->actor.posRot.pos);
        temp_f2 = fabsf(sp38.z);
        if ((-50.0f < sp38.y) && (sp38.y < 200.0f) && (fabsf(sp38.x) < 200.0f) && (temp_f2 < 100.0f)) {
            this->unk_14F = 1;
            transitionActorIdx = (u16)this->actor.params >> 0xA;
            globalCtx->unk_11E18 = 0xFF - (s32)((temp_f2 - 50.0f) * 5.900000095367432f);
            if (globalCtx->unk_11E18 >= 0x100) {
                globalCtx->unk_11E18 = 0xFF;
            } else if (globalCtx->unk_11E18 < 0) {
                globalCtx->unk_11E18 = 0;
            }
            if (temp_f2 < 50.0f) {
                frontOrBack = (sp38.z < 0.0f) ? 0 : 1;
                this->actor.room = globalCtx->transitionActorList[transitionActorIdx].info[frontOrBack].room;
                if (this->actor.room != globalCtx->roomCtx.curRoom.num && func_8009728C(globalCtx, &globalCtx->roomCtx, this->actor.room) != 0) {
                    EnHoll_SetupAction(this, func_80A59828);
                }
            }
        } else if (this->unk_14F != 0) {
            globalCtx->unk_11E18 = 0;
            this->unk_14F = 0;
        }
    }
}

void func_80A59828(EnHoll* this, GlobalContext* globalCtx) {
    if (!EnHoll_IsKokiriSetup8() && globalCtx->roomCtx.status == 0) {
        func_80097534(globalCtx, &globalCtx->roomCtx);
        if (globalCtx->unk_11E18 == 0) {
            this->unk_14F = 0;
        }
        EnHoll_ChooseAction(this);
    }
}

void EnHoll_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnHoll* this = THIS;
    this->actionFunc(this, globalCtx);
}

void EnHoll_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnHoll* this;
    Gfx* gfxP;
    u32 setupDLIdx;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    this = THIS;
    // Only draw the plane if not invisible
    if (this->planeAlpha != 0) {
        gfxCtx = globalCtx->state.gfxCtx;
        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_holl.c", 0x325);
        if (this->planeAlpha == 0xFF) {
            gfxP = gfxCtx->polyOpa.p;
            setupDLIdx = 37;
        } else {
            gfxP = gfxCtx->polyXlu.p;
            setupDLIdx = 0;
        }
        gfxP = Gfx_CallSetupDL(gfxP, setupDLIdx);
        if (this->unk_14E == 0) {
            Matrix_RotateY(3.1415927410125732f, MTXMODE_APPLY);
        }

        gSPMatrix(gfxP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_holl.c", 0x338), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gDPSetPrimColor(gfxP++, 0, 0, 0, 0, 0, (u8)this->planeAlpha);
        gSPDisplayList(gfxP++, sDisplayList);

        if (this->planeAlpha == 0xFF) {
            gfxCtx->polyOpa.p = gfxP;
        } else {
            gfxCtx->polyXlu.p = gfxP;
        }
        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_holl.c", 0x33F);
    }
}
