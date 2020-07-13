#include "z_en_holl.h"

#define FLAGS 0x00000010

#define THIS ((EnHoll*)thisx)

void EnHoll_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHoll_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHoll_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHoll_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A58C48(EnHoll* this);
void func_80A58D18(GlobalContext*);

void func_80A59828(EnHoll* this, GlobalContext* globalCtx);

void func_80A58DD4(EnHoll* this, GlobalContext* globalCtx);
void func_80A59014(EnHoll* this, GlobalContext* globalCtx);
void func_80A591C0(EnHoll* this, GlobalContext* globalCtx);
void func_80A593A4(EnHoll* this, GlobalContext* globalCtx);
void func_80A59520(EnHoll* this, GlobalContext* globalCtx);
void func_80A59618(EnHoll* this, GlobalContext* globalCtx);

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
    func_80A59014
};

static InitChainEntry D_80A59A5C[] = {
    ICHAIN_F32(uncullZoneForward, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 400, ICHAIN_STOP),
};

f32 D_80A59A68[][4] = {
    {200.0f, 150.0f, 100.0f, 50.0f}, 
    {100.0f,  75.0f,  50.0f, 25.0f}
};

Gfx D_80A59A88[] = {
    0x55F04E20, 0x00000000, 
    0x08000800, 0xFFFFFFFF, 
    0xAA104E20, 0x00000000, 
    0x00000800, 0xFFFFFFFF, 
    0xAA10B1E0, 0x00000000, 
    0x00000000, 0xFFFFFFFF, 
    0x55F0B1E0, 0x00000000, 
    0x08000000, 0xFFFFFFFF
};

Gfx D_80A59AC8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineMode(G_CC_PRIMITIVE, G_CC_PASS2),
    gsSPVertex(D_80A59A88, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

void func_80A58C10(EnHoll* this, EnHollActionFunc funcPtr) {
    this->actionFunc = funcPtr;
}

s32 func_80A58C18(void) {
    return (gSaveContext.entranceIndex == 0xEE) && 
           (gSaveContext.sceneSetupIndex == 8);
}

void func_80A58C48(EnHoll* this) {
    s32 params = (this->actor.params >> 6) & 7;

    func_80A58C10(this, D_80A59A40[params]);
    if (&D_80A59A40[0] != &D_80A59A40[params]) {
        this->actor.draw = NULL;
    } else {
        this->unk_14C = 0xFF;
    }
}

void EnHoll_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnHoll* this = THIS;

    Actor_ProcessInitChain(&this->actor, D_80A59A5C);
    func_80A58C48(this);
    this->unk_14F = 0;
}

void EnHoll_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnHoll* this = THIS;
    s32 params = (u16)thisx->params >> 10;
    globalCtx->transitionActorList[params].id = -globalCtx->transitionActorList[params].id;
}

void func_80A58D18(GlobalContext* globalCtx) {
    Room a = globalCtx->roomCtx.curRoom;
    globalCtx->roomCtx.curRoom = globalCtx->roomCtx.prevRoom;
    globalCtx->roomCtx.prevRoom = a;
    globalCtx->roomCtx.unk_30 ^= 1;
}

void func_80A58DD4(EnHoll* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 sp30 = ((globalCtx->sceneNum == 6) ? 1 : 0) & 0xFFFFFFFF;
    Vec3f sp3C;
    f32 tmpf1;
    s32 params;

    func_8002DBD0(&this->actor, &sp3C, &player->actor.posRot.pos);

    if (sp3C.z < 0.0f) {
        this->unk_14E = 0;
    } else {
        this->unk_14E = 1;
    }

    tmpf1 = fabsf(sp3C.z);
    if (((-50.0f < sp3C.y) && (sp3C.y < 200.0f)) && 
        (fabsf(sp3C.x) < 100.0f) && (tmpf1 < D_80A59A68[sp30][0])) {
        params = (u16)this->actor.params >> 10;
        if (D_80A59A68[sp30][1] < tmpf1) {
            if ((globalCtx->roomCtx.prevRoom.num >= 0) && (globalCtx->roomCtx.status == 0)) {
                this->actor.room = *((s8*)&globalCtx->transitionActorList[params] + (this->unk_14E * 2));
                func_80A58D18(globalCtx);
                func_80097534(globalCtx, &globalCtx->roomCtx);
            }
        } else {
            this->actor.room = *((s8*)&globalCtx->transitionActorList[params] + ((this->unk_14E ^ 1) * 2));
            if (globalCtx->roomCtx.prevRoom.num < 0) {
                func_8009728C(globalCtx, &globalCtx->roomCtx, this->actor.room);
                return;
            }
            this->unk_14C = (255.0f / (D_80A59A68[sp30][2] - D_80A59A68[sp30][3])) * (tmpf1 - D_80A59A68[sp30][3]);

            this->unk_14C = (this->unk_14C < 0) ? 0 : 
                        ((this->unk_14C > 0xFF) ? 0xFF : this->unk_14C);

            if (globalCtx->roomCtx.curRoom.num != this->actor.room) {
                func_80A58D18(globalCtx);
            }
        }
    }
}

#ifdef NON_MATCHING
// Fake maching, a LOT of stack missing
void func_80A59014(EnHoll* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Vec3f sp44;

    Vec3f* phi_a2_2;
    s32 tmp;
    s32 params;
    f32 tmpf1;
    s32 pad1;

    Vec3f pad;
    Vec3f pad2;


    tmp = D_8011D394 != 0;
    if (!tmp) {
        tmp = globalCtx->csCtx.state != 0;
    }

    if (tmp) {
        phi_a2_2 = &globalCtx->view.eye;
    } else {
        phi_a2_2 = &player->actor.posRot.pos;
    }
    

    func_8002DBD0(&this->actor, &sp44, phi_a2_2);

    if (((this->actor.params >> 6) & 7) == 6) {
        tmpf1 = 100.0f;
    } else {
        tmpf1 = 200.0f;
    }

    if (func_80A58C18() || 
        (
            (-50.0f < sp44.y) && 
            ((sp44.y < 200.0f) && (fabsf(sp44.x) < tmpf1)) && 
            ((fabsf(sp44.z) < 100.0f) && (50.0f < sp44.z))
        )
       ) {
        params = (u16)this->actor.params >> 10;

        if (sp44.z < 0.0f) {
            tmp = 0;
        } else {
            tmp = 1;
        }

        this->actor.room = *((s8*)&globalCtx->transitionActorList[params] + (tmp * 2));
        if (this->actor.room != globalCtx->roomCtx.curRoom.num) {
            if (globalCtx){};
            if (func_8009728C(globalCtx, &globalCtx->roomCtx, (s64)this->actor.room)) {
                func_80A58C10(this, func_80A59828);
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A59014.s")
#endif

void func_80A591C0(EnHoll* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 tmpf1;
    s32 params;

    tmpf1 = fabsf(this->actor.yDistFromLink);
    if ((this->actor.xzDistFromLink < 500.0f) && (tmpf1 < 700.0f)) {
        params = (u16)this->actor.params >> 10;
        if (tmpf1 < 95.0f) {
            globalCtx->unk_11E18 = 0xFF;
        } else if (605.0f < tmpf1) {
            globalCtx->unk_11E18 = 0;
        } else {
            globalCtx->unk_11E18 = (s16)(605.0f - tmpf1) * 0.5f;
        }

        if (tmpf1 < 95.0f) {
            this->actor.room = globalCtx->transitionActorList[params].backRoom;
            Math_SmoothScaleMaxMinF(&player->actor.posRot.pos.x, this->actor.posRot.pos.x, 1.0f, 50.0f, 10.0f);
            Math_SmoothScaleMaxMinF(&player->actor.posRot.pos.z, this->actor.posRot.pos.z, 1.0f, 50.0f, 10.0f);
            if (this->actor.room != globalCtx->roomCtx.curRoom.num) {
                if (func_8009728C(globalCtx, &globalCtx->roomCtx, this->actor.room) != 0) {
                    func_80A58C10(this, func_80A59828);
                    this->unk_14F = 1;
                    player->actor.speedXZ = 0.0f;
                }
            }
        }
    } else if (this->unk_14F != 0) {
        globalCtx->unk_11E18 = 0;
        this->unk_14F = 0;
    }
}

void func_80A593A4(EnHoll* this, GlobalContext* globalCtx) {
    f32 tmpf1;
    s32 tmp;
    s32 params;

    if (this->actor.xzDistFromLink < 120.0f) {
        tmpf1 = fabsf(this->actor.yDistFromLink);
        if (tmpf1 < 200.0f) {
            if (tmpf1 < 50.0f) {
                globalCtx->unk_11E18 = 0xFF;
            } else {
                globalCtx->unk_11E18 = (200.0f - tmpf1) * 1.7f;
            }
            if (tmpf1 > 50.0f) {
                params = (u16)this->actor.params >> 0xA;
                tmp = (this->actor.yDistFromLink > 0.0f) ? 0 : 1;

                this->actor.room = *((s8*)&globalCtx->transitionActorList[params] + (tmp * 2));
                if (this->actor.room != globalCtx->roomCtx.curRoom.num) {
                    if (func_8009728C(globalCtx, &globalCtx->roomCtx, this->actor.room) != 0) {
                        func_80A58C10(this, func_80A59828);
                        this->unk_14F = 1;
                    }
                }
            }
            return;
        }
    }
    if (this->unk_14F != 0) {
        this->unk_14F = 0;
        globalCtx->unk_11E18 = 0;
    }
}

void func_80A59520(EnHoll *this, GlobalContext *globalCtx) {
    f32 tmpf1;
    s32 phi_v1;
    s32 params;

    if (this->actor.xzDistFromLink < 120.0f) {
        tmpf1 = fabsf(this->actor.yDistFromLink);
        if ((tmpf1 < 200.0f) && (50.0f < tmpf1)) {
            params = (u16)this->actor.params >> 0xA;
            if (this->actor.yDistFromLink > 0.0f) {
                phi_v1 = 0;
            } else {
                phi_v1 = 1;
            }
            this->actor.room = *((s8*)&globalCtx->transitionActorList[params] + (phi_v1 * 2));
            if (this->actor.room != globalCtx->roomCtx.curRoom.num) {
                if (func_8009728C(globalCtx, &globalCtx->roomCtx, this->actor.room) != 0) {
                    func_80A58C10(this, func_80A59828);
                }
            }
        }
    }
}

void func_80A59618(EnHoll* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Vec3f sp38;
    f32 tmpf1;
    s32 tmp;
    s32 params;
    s32 tmp2;

    if (!Flags_GetSwitch(globalCtx, this->actor.params & 0x3F)) {
        if (this->unk_14F != 0) {
            globalCtx->unk_11E18 = 0;
            this->unk_14F = 0;
        }
    } else {
        func_8002DBD0(&this->actor, &sp38, &player->actor.posRot.pos);
        tmpf1 = fabsf(sp38.z);
        if ((-50.0f < sp38.y)      && (sp38.y < 200.0f) && 
            (fabsf(sp38.x) < 200.0f) && (tmpf1 < 100.0f)) {

            params = (u16)this->actor.params >> 0xA;

            this->unk_14F = 1;
            tmp2 = (tmpf1 - 50.0f) * 5.9f;
            globalCtx->unk_11E18 = 0xFF - tmp2;
            
            if (globalCtx->unk_11E18 >= 0x100) {
                globalCtx->unk_11E18 = 0xFF;
            } else if (globalCtx->unk_11E18 < 0) {
                globalCtx->unk_11E18 = 0;
            }
            if (tmpf1 < 50.0f) {
                if (sp38.z < 0.0f) {
                    tmp = 0;
                } else {
                    tmp = 1;
                }
                this->actor.room = *((s8*)&globalCtx->transitionActorList[params] + (tmp * 2));
                if (this->actor.room != globalCtx->roomCtx.curRoom.num) {
                    if (func_8009728C(globalCtx, &globalCtx->roomCtx, this->actor.room)) {
                        func_80A58C10(this, func_80A59828);
                    }
                }
            }
        } else {
            if (this->unk_14F != 0) {
                globalCtx->unk_11E18 = 0;
                this->unk_14F = 0;
            }
        }
    }
}

void func_80A59828(EnHoll* this, GlobalContext* globalCtx) {
    if (func_80A58C18() == 0) {
        if (globalCtx->roomCtx.status == 0) {
            func_80097534(globalCtx, &globalCtx->roomCtx);
            if (globalCtx->unk_11E18 == 0) {
                this->unk_14F = 0;
            }
            func_80A58C48(this);
        }
    }
}

void EnHoll_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnHoll* this = THIS;
    this->actionFunc(this, globalCtx);
}

void EnHoll_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnHoll* this = THIS;
    Gfx* b;
    u32 tmp;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    if (this->unk_14C != 0) {
        gfxCtx = globalCtx->state.gfxCtx;
        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_holl.c", 0x325);
        
        if (this->unk_14C == 0xFF) {
            b = gfxCtx->polyOpa.p;
            tmp = 0x25;
        } else {
            b = gfxCtx->polyXlu.p;
            tmp = 0;
        }
        b = Gfx_CallSetupDL(b, tmp);

        if (this->unk_14E == 0) {
            Matrix_RotateY(M_PI, MTXMODE_APPLY);
        }

        gSPMatrix(b++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_holl.c", 0x338), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gDPSetPrimColor(b++, 0, 0, 0x00, 0x00, 0x00, (u8)this->unk_14C);
        gSPDisplayList(b++, D_80A59AC8);

        if (this->unk_14C == 0xFF) {
            gfxCtx->polyOpa.p = b;
        } else {
            gfxCtx->polyXlu.p = b;
        }

        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_holl.c", 0x33F);
    }
}
