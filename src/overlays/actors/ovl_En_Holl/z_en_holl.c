#include "z_en_holl.h"

#define FLAGS 0x00000010

#define THIS ((EnHoll*)thisx)

void EnHoll_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHoll_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHoll_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHoll_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 func_80A58C18();
void func_80A58C48(EnHoll* this);
void func_80A58D18(GlobalContext* globalCtx);

void func_80A59828(EnHoll* this, GlobalContext* globalCtx);
void func_80A58DD4(EnHoll* this, GlobalContext* globalCtx);
void func_80A59014(EnHoll* this, GlobalContext* globalCtx);
void func_80A591C0(EnHoll* this, GlobalContext* globalCtx);
void func_80A593A4(EnHoll* this, GlobalContext* globalCtx);
void func_80A59520(EnHoll* this, GlobalContext* globalCtx);
void func_80A59618(EnHoll* this, GlobalContext* globalCtx);
void func_80A59828(EnHoll* this, GlobalContext* globalCtx);

typedef struct {
    f32 unk_0;
    f32 unk_4;
    f32 unk_8;
    f32 unk_C;
} EnHollUnkStruct; // size = 0x10

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

EnHollActionFunc D_80A59A40[] = {
    func_80A58DD4,
    func_80A591C0,
    func_80A59520,
    func_80A59618,
    func_80A59014,
    func_80A593A4,
    func_80A59014, 
};

InitChainEntry D_80A59A5C[] = {
    ICHAIN_F32(unk_F4, 0xFA0, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F8, 0x190, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_FC, 0x190, ICHAIN_STOP)
};

EnHollUnkStruct D_80A59A68[] = {
    {200.0f, 150.0f, 100.0f, 50.0f}, 
    {100.0f, 75.0f, 50.0f, 25.0f},
};

Vtx D_80A59A88[] = {
    VTX(0x55F0, 0x4E20, 0x0000, 0x0800, 0x0800, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(0xAA10, 0x4E20, 0x0000, 0x0000, 0x0800, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(0xAA10, 0xB1E0, 0x0000, 0x0000, 0x0000, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(0x55F0, 0xB1E0, 0x0000, 0x0800, 0x0000, 0xFF, 0xFF, 0xFF, 0xFF),
};

Gfx D_80A59AC8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(D_80A59A88, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A58C10.s")
//EnHoll_SetupAction
void func_80A58C10(EnHoll* this, EnHollActionFunc func) {
    this->actionFunc = func;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A58C18.s")
s32 func_80A58C18() {
    return gSaveContext.entranceIndex == 0xEE && gSaveContext.sceneSetupIndex == 8;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A58C48.s")
void func_80A58C48(EnHoll* this) {
    s32 actionIdx;

    actionIdx = (this->actor.params >> 6) & 7;
    func_80A58C10(this, D_80A59A40[actionIdx]);
    if (&D_80A59A40[0] != &D_80A59A40[actionIdx]) {
        this->actor.draw = NULL;
    } else {
        this->unk_14C = 0xFF;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/EnHoll_Init.s")
void EnHoll_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnHoll* this = THIS;

    Actor_ProcessInitChain(thisx, &D_80A59A5C);
    func_80A58C48(thisx);
    this->unk_14F = 0;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/EnHoll_Destroy.s")
void EnHoll_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 transitionActorIdx;
    TransitionActorEntry* transitionEntry;

    transitionActorIdx = (u16)thisx->params >> 0xA;
    transitionEntry = &globalCtx->transitionActorList[transitionActorIdx];
    transitionEntry->id = -transitionEntry->id;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A58D18.s")
//EnHoll_SwapRooms
void func_80A58D18(GlobalContext* globalCtx) {
    Room tempRoom;
    RoomContext* roomCtx;

    roomCtx = &globalCtx->roomCtx;
    tempRoom = roomCtx->curRoom;

    roomCtx->curRoom = roomCtx->prevRoom;
    roomCtx->prevRoom = tempRoom;

    globalCtx->roomCtx.unk_30 ^= 1;
}

#ifdef NON_MATCHING
// Regalloc
void func_80A58DD4(EnHoll* this, GlobalContext* globalCtx) {
    f32 temp_f2;
    EnHollUnkStruct* temp_v0;
    Vec3f sp3C;
    s32 phi_t0;
    Player* player;
    s32 temp_a1;

    player = PLAYER;
    phi_t0 = (globalCtx->sceneNum == SCENE_JYASINZOU) ? 1 : 0;
    func_8002DBD0(&this->actor, &sp3C, &player->actor.posRot.pos);
    this->unk_14E = (sp3C.z < 0.0f) ? 0 : 1;
    temp_f2 = fabsf(sp3C.z);
    temp_v0 = &D_80A59A68[phi_t0];
    if (-50.0f < sp3C.y && sp3C.y < 200.0f && fabsf(sp3C.x) < 100.0f && temp_f2 < temp_v0->unk_0) {
        temp_a1 = (u16)this->actor.params >> 0xA;
        if (temp_v0->unk_4 < temp_f2) {
            if (globalCtx->roomCtx.prevRoom.num >= 0 && globalCtx->roomCtx.status == 0) {
                this->actor.room = globalCtx->transitionActorList[temp_a1].info[this->unk_14E].room;
                func_80A58D18(globalCtx);
                func_80097534(globalCtx, &globalCtx->roomCtx);
            }
        } else {
            this->actor.room = globalCtx->transitionActorList[temp_a1].info[this->unk_14E ^ 1].room;
            if (globalCtx->roomCtx.prevRoom.num < 0) {
                func_8009728C(globalCtx, &globalCtx->roomCtx, this->actor.room);
            } else {
                this->unk_14C = (temp_f2 - temp_v0->unk_C) * (255.0f / (temp_v0->unk_8 - temp_v0->unk_C));
                this->unk_14C = CLAMP(this->unk_14C, 0, 0xFF);
                if (globalCtx->roomCtx.curRoom.num != this->actor.room) {
                    func_80A58D18(globalCtx);
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A58DD4.s")
#endif

#ifdef NON_MATCHING
// Regalloc
void func_80A59014(EnHoll* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 pad2;
    Vec3f sp44;
    s32 pad3;
    f32 phi_f2;
    s8 new_var;
    s32 phi_a2;
    s32 phi_a3;
    f32 temp_f0;
    s32 phi_a0;
    Player* player;

    player = PLAYER;

    phi_a2 = D_8011D394 != 0 || globalCtx->csCtx.state != 0;
    func_8002DBD0(&this->actor, &sp44, (phi_a2) ? &globalCtx->view.eye : &player->actor.posRot.pos);

    phi_f2 = (((this->actor.params >> 6) & 7) == 6) ? 100.0f : 200.0f;

    if (func_80A58C18() || (-50.0f < sp44.y && sp44.y < 200.0f && fabsf(sp44.x) < phi_f2 && 
        (temp_f0 = fabsf(sp44.z), (temp_f0 < 100.0f && 50.0f < temp_f0)))) {

        phi_a3 = (u16)this->actor.params >> 0xA;

        new_var = globalCtx->transitionActorList[phi_a3].info[(sp44.z < 0.0f) ? 0 : 1].room;
        this->actor.room = new_var;
        if (this->actor.room != globalCtx->roomCtx.curRoom.num &&
            func_8009728C(globalCtx, &globalCtx->roomCtx, this->actor.room) != 0) {
            func_80A58C10(this, func_80A59828);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A59014.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A591C0.s")
void func_80A591C0(EnHoll* this, GlobalContext* globalCtx) {
    Player* player;
    f32 absY;
    s32 transitionActorIdx;

    player = PLAYER;
    absY = fabsf(this->actor.yDistanceFromLink);
    if ((this->actor.xzDistanceFromLink < 500.0f) && (absY < 700.0f)) {
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
                func_80A58C10(this, func_80A59828);
                this->unk_14F = 1;
                player->actor.speedXZ = 0.0f;
            }
        }
    } else if (this->unk_14F != 0) {
        globalCtx->unk_11E18 = 0;
        this->unk_14F = 0;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A593A4.s")
void func_80A593A4(EnHoll* this, GlobalContext* globalCtx) {
    f32 absY;
    s32 frontOrBack;
    s32 transitionActorIdx;

    if ((this->actor.xzDistanceFromLink < 120.0f) && 
        (absY = fabsf(this->actor.yDistanceFromLink), absY < 200.0f)) {
        if (absY < 50.0f) {
            globalCtx->unk_11E18 = 0xFF;
        } else {
            globalCtx->unk_11E18 = (200.0f - absY) * 1.7000000476837158f;
        }
        if (50.0f < absY) {
            transitionActorIdx = (u16)this->actor.params >> 0xA;
            frontOrBack = (0.0f < this->actor.yDistanceFromLink) ? 0 : 1;
            this->actor.room = globalCtx->transitionActorList[transitionActorIdx].info[frontOrBack].room;
            if (this->actor.room != globalCtx->roomCtx.curRoom.num && 
                func_8009728C(globalCtx, &globalCtx->roomCtx, this->actor.room) != 0) {
                func_80A58C10(this, &func_80A59828);
                this->unk_14F = 1;
            }
        }
    } else if (this->unk_14F != 0) {
        this->unk_14F = 0;
        globalCtx->unk_11E18 = 0;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A59520.s")
void func_80A59520(EnHoll* this, GlobalContext* globalCtx) {
    f32 absY;
    s8 frontOrBack;
    s32 transitionActorIdx;

    if (this->actor.xzDistanceFromLink < 120.0f) {
        absY = fabsf(this->actor.yDistanceFromLink);
        if (absY < 200.0f && 50.0f < absY) {
            transitionActorIdx = (u16)this->actor.params >> 0xA;
            frontOrBack = (0.0f < this->actor.yDistanceFromLink) ? 0 : 1;
            this->actor.room = globalCtx->transitionActorList[transitionActorIdx].info[frontOrBack].room;
            if (this->actor.room != globalCtx->roomCtx.curRoom.num && 
                func_8009728C(globalCtx, &globalCtx->roomCtx, this->actor.room) != 0) {
                func_80A58C10(this, func_80A59828);
            }
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A59618.s")
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
                    func_80A58C10(this, func_80A59828);
                }
            }
        } else if (this->unk_14F != 0) {
            globalCtx->unk_11E18 = 0;
            this->unk_14F = 0;
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A59828.s")
void func_80A59828(EnHoll* this, GlobalContext* globalCtx) {
    if (!func_80A58C18() && globalCtx->roomCtx.status == 0) {
        func_80097534(globalCtx, &globalCtx->roomCtx);
        if (globalCtx->unk_11E18 == 0) {
            this->unk_14F = 0;
        }
        func_80A58C48(this);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/EnHoll_Update.s")
void EnHoll_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnHoll* this = THIS;
    this->actionFunc(this, globalCtx);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/EnHoll_Draw.s")
void EnHoll_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    Gfx* gfxP;
    u32 setupDLIdx;
    GraphicsContext* gfxCtx;
    EnHoll* this;
    Gfx* dispRefs[3];

    this = THIS;
    if (this->unk_14C != 0) {
        gfxCtx = globalCtx->state.gfxCtx;
        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_holl.c", 0x325);

        if (this->unk_14C == 0xFF) {
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

        gSPMatrix(gfxP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_holl.c", 0x338), 
                G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gDPSetPrimColor(gfxP++, 0, 0, 0, 0, 0, (u8)this->unk_14C);
        gSPDisplayList(gfxP++, &D_80A59AC8);

        if (this->unk_14C == 0xFF) {
            gfxCtx->polyOpa.p = gfxP;
        } else {
            gfxCtx->polyXlu.p = gfxP;
        }
        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_holl.c", 0x33F);
    }
}
