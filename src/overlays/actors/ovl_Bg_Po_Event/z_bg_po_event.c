#include "z_bg_po_event.h"

#define FLAGS 0x00000000

#define THIS ((BgPoEvent*)thisx)

void BgPoEvent_Init(Actor* thisx, GlobalContext* globalCtx);
void BgPoEvent_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgPoEvent_Update(Actor* thisx, GlobalContext* globalCtx);
void BgPoEvent_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808A6210(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A658C(BgPoEvent* this, GlobalContext* globalCtx);

void func_808A6A94(BgPoEvent* this);
s32 func_808A7444(BgPoEvent* this);

void func_808A68D0(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A69DC(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A6BC8(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A6CCC(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A6F7C(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A7138(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A7238(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A72AC(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A7328(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A7500(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A7530(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A7568(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A75B8(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A780C(BgPoEvent* this, GlobalContext* globalCtx);

extern UNK_TYPE D_06007860;
extern Gfx D_060075A0[];
extern Gfx D_060079E0[];
extern Gfx D_06006830[];
extern Gfx D_06006D60[];
extern Gfx D_06007230[];

const ActorInit Bg_Po_Event_InitVars = {
    ACTOR_BG_PO_EVENT,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_PO_SISTERS,
    sizeof(BgPoEvent),
    (ActorFunc)BgPoEvent_Init,
    (ActorFunc)BgPoEvent_Destroy,
    (ActorFunc)BgPoEvent_Update,
    (ActorFunc)BgPoEvent_Draw,
};

static ColliderTrisItemInit sTrisItemsInit[2] = {
    {
        { 0x04, { 0x00000000, 0x00, 0x00 }, { 0x0001F820, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 25.0f, 33.0f, 0.0f }, { -25.0f, 33.0f, 0.0f }, { -25.0f, -33.0f, 0.0f } } },
    },
    {
        { 0x04, { 0x00000000, 0x00, 0x00 }, { 0x0001F820, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 25.0f, 33.0f, 0.0f }, { -25.0f, -33.0f, 0.0f }, { 25.0f, -33.0f, 0.0f } } },
    },
};


static ColliderTrisInit sTrisInit =
{
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x20, COLSHAPE_TRIS },
    2, sTrisItemsInit,
};

u8 D_808A7D58[] = {0,0,0,0};
Vec3f D_808A7D5C = {0.0f, 0.0f, 0.0f};
s16 D_808A7D68[] = {0xFAEA,0xFC9E, 0x058D,0x03D9};
s16 D_808A7D70[] = {0x0453,0x0443};
s16 D_808A7D74[] = {0xF2C8,0xF34C};
s16 D_808A7D78[] = {0x0865,0x07B1, 0x0775,0x0000};
s16 D_808A7D80[] = {0xFA7E,0xFABA, 0xFA06,0x0000};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

s32 D_808A7D8C = 0;
f32 D_808A7D90 = 0.0f;
Gfx* D_808A7D94[] = {D_060075A0, D_060079E0, D_06006830, D_06006D60, D_06007230, NULL, NULL};

u8 D_808A80A0;

void func_808A6210(BgPoEvent *this, GlobalContext *globalCtx) {
    ColliderTrisItemInit* item;
    Vec3f* vtxVec;
    s32 i1;
    s32 i2;
    Vec3f sp9C[3];
    f32 coss;
    f32 sins;
    f32 scaley;
    s32 phi_t2;

    sins = Math_Sins(this->dyna.actor.shape.rot.y);
    coss = Math_Coss(this->dyna.actor.shape.rot.y);
    if (this->unk_168 == 4) {
        sins *= 2.4f; 
        scaley = 1.818f;
        coss *= 2.4f;
    } else {
        scaley = 1.0f;
    }
    for(i1 = 0; i1 < sTrisInit.count; i1++) {
        item = &sTrisInit.list[i1];
        if(1){}
        for(i2 = 0;i2 != 3; i2++) {
            vtxVec = &item->dim.vtx[i2];
            sp9C[i2].x = (vtxVec->x * coss) + (this->dyna.actor.initPosRot.pos.x + (sins * vtxVec->z)); 
            sp9C[i2].y = (vtxVec->y * scaley) + this->dyna.actor.initPosRot.pos.y;
            sp9C[i2].z = this->dyna.actor.initPosRot.pos.z + (coss * vtxVec->z) - (vtxVec->x * sins);
        }
        func_800627A0(&this->collider1, i1, &sp9C[0], &sp9C[1], &sp9C[2]);
    }
    if (this->unk_168 != 4) {
        if (this->unk_169 != 2) {
            if (this->unk_168 == 2) {
                phi_t2 = this->unk_169;
            } else {
                phi_t2 = this->unk_169 + 2;
            }
            if (Actor_SpawnAsChild(&globalCtx->actorCtx, &this->dyna.actor, globalCtx, ACTOR_BG_PO_EVENT,
                                    D_808A7D68[phi_t2], D_808A7D70[this->unk_169], D_808A7D74[this->unk_169],
                                    0, this->dyna.actor.shape.rot.y + 0x8000, 0,
                                    ((this->unk_169 + 1) << 0xC) + (this->unk_168 << 8) + this->dyna.actor.params) == 0) {
                Actor_Kill(&this->dyna.actor);
                return;
            }
            if (this->unk_169 == 0) {
                if (this->dyna.actor.child->child == NULL) {
                    Actor_Kill(&this->dyna.actor);
                    return;
                }
                this->dyna.actor.parent = this->dyna.actor.child->child;
                this->dyna.actor.child->child->child = &this->dyna.actor;
            }
        }
    }
    this->unk_16C = 0;
    if (this->unk_168 == 4) {
        D_808A80A0 = 0;
        this->actionFunc = &func_808A72AC;
    } else {
        D_808A80A0 = (s32)(Math_Rand_ZeroOne() * 3.0f) % 3;
        this->actionFunc = &func_808A7500;
    }
}

void func_808A658C(BgPoEvent *this, GlobalContext *globalCtx) {
    Actor* thisx = &this->dyna.actor;
    s32 local_c = 0;
    s32 sp54;

    thisx->flags |= 0x30;
    DynaPolyInfo_Alloc(&D_06007860, &local_c);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, local_c);
     if ((this->unk_168 == 0) && (this->unk_169 != 3)) {
        if (Actor_SpawnAsChild(&globalCtx->actorCtx, thisx, globalCtx, ACTOR_BG_PO_EVENT,
                                D_808A7D78[this->unk_169], thisx->posRot.pos.y, D_808A7D80[this->unk_169],
                                0, thisx->shape.rot.y, thisx->shape.rot.z - 0x4000,
                               ((this->unk_169 + 1) << 0xC) + (this->unk_168 << 8) + thisx->params) == NULL) {
            Actor_Kill(thisx);
            return;
        }
        if (this->unk_169 == 0) {
            if (thisx->child->child == 0) {
                Actor_Kill(&this->dyna.actor);
                return;
            }
            if (thisx->child->child->child == 0) {
                Actor_Kill(thisx);
                Actor_Kill(thisx->child);
                return;
            }
            thisx->parent = thisx->child->child->child;
            thisx->child->child->child->child = thisx;
        }
    }
    thisx->posRot.pos.y = 833.0f;
    thisx->groundY = func_8003C9A4(&globalCtx->colCtx, &thisx->floorPoly, &sp54, thisx, &thisx->posRot.pos);
    this->actionFunc = func_808A68D0;
}

void BgPoEvent_Init(Actor *thisx, GlobalContext *globalCtx) {
    BgPoEvent* this = THIS;
    ColliderTris* collider;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    this->unk_168 = (thisx->params >> 8) & 0xF;
    this->unk_169 = (thisx->params >> 0xC) & 0xF;
    thisx->params &= 0x3F;
    
    if (this->unk_168 >= 2) {
        collider = &this->collider1;
        Collider_InitTris(globalCtx, collider);
        Collider_SetTris(globalCtx, collider, &this->dyna.actor, &sTrisInit, this->colliderItems);
        if (Flags_GetSwitch(globalCtx, thisx->params)) {
            Actor_Kill(&this->dyna.actor);
        } else {
            func_808A6210(this, globalCtx);
        }
    } else {
        DynaPolyInfo_SetActorMove(&this->dyna, 0);
        if (Flags_GetSwitch(globalCtx, thisx->params)) {
            Actor_Kill(&this->dyna.actor);
        } else {
            func_808A658C(this, globalCtx);
        }
    }
}

void BgPoEvent_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    BgPoEvent* this = THIS;

    if (this->unk_168 >= 2) {
        Collider_DestroyTris(globalCtx, &this->collider1);
    } else {
        DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
        if ((this->unk_168 == 1) && (gSaveContext.timer1Value > 0)){
            gSaveContext.timer1State = 0xA;
        }
    }
}

void func_808A68D0(BgPoEvent *this, GlobalContext *globalCtx) {
    
    this->dyna.actor.posRot.pos.y = 833.0f;
    if (D_808A80A0 == 0x3F) {
        if (this->unk_168 == 1) {
            func_800800F8(globalCtx, 0xC4E, 0x41, NULL, 0);
        }
        this->unk_16C = 0x2D;
        this->actionFunc = func_808A69DC;
    } else if (this->dyna.actor.xzDistFromLink > 50.0f) {
        if (this->unk_168 != 1) {
            D_808A80A0 |= (1 << this->unk_169);
        } else {
            D_808A80A0 |= 0x10;
        }
    } else if (this->unk_168 != 1) {
        D_808A80A0 &= ~(1 << this->unk_169);
    } else {
        D_808A80A0 &= ~0x10;
    }
}

#ifdef NON_MATCHING
//regalloc
void func_808A69DC(BgPoEvent *this, GlobalContext *globalCtx) {
    f32 temp_f0;
    s32 temp1;

    if (this->unk_16C != 0) {
        this->unk_16C--;
    }
    
    if (this->unk_16C < 0xF) {
        temp_f0 = (this->unk_16C % 3) - 1;
        this->dyna.actor.posRot.pos.x = this->dyna.actor.initPosRot.pos.x + 2.0f*temp_f0;
        temp1 = this->unk_16C % 4;
        if ( temp1 == 0) {
            Audio_PlayActorSound2(&this->dyna.actor, 0x2838);
        }
    }
    if (this->unk_16C == 0) {
        this->dyna.actor.posRot.pos.x = this->dyna.actor.initPosRot.pos.x;
        D_808A80A0 = 0;
        this->unk_16C = 0x3C;
        this->actionFunc = func_808A6BC8;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A69DC.s")
#endif

void func_808A6A94(BgPoEvent *this) {
    s32 temp_f10;
    s32 temp_f6;
    s32 phi_v1;
    s32 phi_a1;
    s32 phi_t0;
    s32 phi_a3;

    if ((this->unk_169 == 3) || (this->unk_169 == 1)) {
        temp_f6 = this->dyna.actor.posRot.pos.z;
        temp_f10 = this->dyna.actor.child->posRot.pos.z;
        if (this->unk_169 == 3) {
            phi_v1 = temp_f6;
            phi_a1 = temp_f10;
            phi_a3 = this->dyna.actor.posRot.pos.x;
            phi_t0 = this->dyna.actor.child->posRot.pos.x;
        } else { //this->unk_169 == 1
            phi_v1 = temp_f6;
            phi_a1 = temp_f10;
            phi_a3 = this->dyna.actor.child->posRot.pos.x;
            phi_t0 = this->dyna.actor.posRot.pos.x;
        }
    } else {
        temp_f6 = this->dyna.actor.posRot.pos.x;
        temp_f10 = this->dyna.actor.child->posRot.pos.x;
        if (this->unk_169 == 0) {
            phi_v1 = temp_f6;
            phi_a1 = temp_f10;
            phi_a3 = this->dyna.actor.posRot.pos.z;
            phi_t0 = this->dyna.actor.child->posRot.pos.z;
        } else { //this->unk_169 == 2
            phi_v1 = temp_f6;
            phi_a1 = temp_f10;
            phi_a3 = this->dyna.actor.child->posRot.pos.z;
            phi_t0 = this->dyna.actor.posRot.pos.z;
        }
    }
    if ((phi_v1 == phi_a1) && ((phi_t0 - phi_a3) == 60)) {
        D_808A80A0 |= (1 << this->unk_169);
    } else {
        D_808A80A0 &= ~(1 << this->unk_169);
    }
}

#ifdef NON_MATCHING
//Something's up with that D_808A7D8C. Check this again later. 
void func_808A6BC8(BgPoEvent *this, GlobalContext *globalCtx) {
    f32 *temp_a0;

    temp_a0 = &this->dyna.actor.posRot.pos.y;
    this->dyna.actor.velocity.y++; //Oh come on.
    if (Math_ApproxF(temp_a0, 433.0f, this->dyna.actor.velocity.y) != 0) {
        this->dyna.actor.flags &= ~0x20;
        this->dyna.actor.velocity.y = 0.0f;
        D_808A7D58[0] += 1;
        if (this->unk_168 != 1) {
            func_808A6A94(this);
        } else {
            Audio_PlayActorSound2(&this->dyna.actor, 0x281D);
            func_80033E88(&this->dyna.actor, globalCtx, 5, 5);
            func_80088B34(this->unk_16C);
            if (D_808A7D8C == 0) {
                D_808A7D8C = 1;
            } else {
                func_8002DF54(globalCtx, &PLAYER->actor, 7);
            }
        }
        this->unk_16A = 0;
        this->actionFunc = func_808A6CCC;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A6BC8.s")
#endif

void func_808A6CCC(BgPoEvent *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    Actor *temp_v0;

    if (D_808A80A0 == 0xF) {
        this->actionFunc = func_808A7238;
        if ((this->unk_168 == 0) && (this->unk_169 == 0)) {
            temp_v0 = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_PO_SISTERS, this->dyna.actor.posRot.pos.x + 30.0f,
                                  this->dyna.actor.posRot.pos.y - 30.0f, this->dyna.actor.posRot.pos.z + 30.0f,
                                  0, this->dyna.actor.shape.rot.y, 0, this->dyna.actor.params + 0x300);
            if (temp_v0 != 0) {
                func_800800F8(globalCtx, 0xC62, 0x1E, temp_v0, 0);
            }
            func_80078884(0x4802);
            gSaveContext.timer1State = 0xA;
            return;
        }
    } else {
        if((gSaveContext.timer1Value == 0) && (D_808A7D58[0] == 5)) {
            player->stateFlags2 &= ~0x10;
            D_808A80A0 = 0x10;
            D_808A7D58[0] = 0;
        }
        if ((D_808A80A0 == 0x40) || ((D_808A80A0 == 0x10) && (func_8008E988(globalCtx) == 0))) {
            this->dyna.actor.posRot.rot.z = this->dyna.actor.shape.rot.z;
            this->actionFunc = &func_808A7138;
            if (D_808A80A0 == 0x10) {
                D_808A80A0 = 0x40;
                Audio_PlayActorSound2(&this->dyna.actor, 0x28A4);
                func_8002DF54(globalCtx, &player->actor, 8);
            }
        } else if (0.0f != this->dyna.unk_150) {
            if (this->unk_16A == 0) {
                if (func_800435D8(globalCtx, &this->dyna, 0x1E, 0x32, -0x14) != 0) {
                    D_808A7D58[0]--;
                    this->unk_16A = (this->dyna.unk_150 >= 0.0f) ? 1.0f : -1.0f;
                    this->actionFunc = func_808A6F7C;
                } else {
                    //*((s16*)player + 340) &= ~0x10;
                    player->stateFlags2 &= ~0x10;
                    this->dyna.unk_150 = 0.0f;
                }
            } else {
                //*((s16*)player + 340) &= ~0x10;
                player->stateFlags2 &= ~0x10;
                this->dyna.unk_150 = 0.0f;
                if (this->unk_16A != 0) {
                    this->unk_16A--;
                }
            }
        } else {
            this->unk_16A = 0;
        }
    }
}

void func_808A6F7C(BgPoEvent *this, GlobalContext *globalCtx) {
    f32 sp34;
    s32 sp30;
    Player* player = PLAYER;
    f32 temp_f0;

    this->dyna.actor.speedXZ = this->dyna.actor.speedXZ + 0.1f;
    temp_f0 = this->dyna.actor.speedXZ;
    if (2.0f < temp_f0) {
        this->dyna.actor.speedXZ = 2.0f;
    } else {
        this->dyna.actor.speedXZ = temp_f0;
    }
    sp30 = Math_ApproxF(&D_808A7D90, 20.0f, this->dyna.actor.speedXZ);
    sp34 = this->unk_16A * D_808A7D90;
    this->dyna.actor.posRot.pos.x = (Math_Sins(this->dyna.unk_158) * sp34) + this->dyna.actor.initPosRot.pos.x;
    this->dyna.actor.posRot.pos.z = (Math_Coss(this->dyna.unk_158) * sp34) + this->dyna.actor.initPosRot.pos.z;
    if (sp30 != 0) {
        player->stateFlags2 &= ~0x10;
        if ((0.0f < this->dyna.unk_150) && (func_800435D8(globalCtx, &this->dyna, 0x1E, 0x32, -0x14) == 0)) {
                Audio_PlayActorSound2(&this->dyna.actor, 0x2835);
        }
        this->dyna.unk_150 = 0.0f;
        this->dyna.actor.initPosRot.pos.x = this->dyna.actor.posRot.pos.x;
        this->dyna.actor.initPosRot.pos.z = this->dyna.actor.posRot.pos.z;
        D_808A7D90 = 0.0f;
        this->dyna.actor.speedXZ = 0.0f;
        this->unk_16A = 5;
        D_808A7D58[0]++;
        this->actionFunc = func_808A6CCC;
        if (this->unk_168 == 1) {
            return;
        }
        func_808A6A94(this);
        func_808A6A94((BgPoEvent*) this->dyna.actor.parent);
    }
    func_8002F974(&this->dyna.actor, 0x200A);
}

void func_808A7138(BgPoEvent *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;

    if (0.0f != this->dyna.unk_150) {
        player->stateFlags2 &= ~0x10;
        this->dyna.unk_150 = 0.0f;
    }
    if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, 493.0f, 1.0f) != 0) {
        if (Math_ApproxUpdateScaledS(&this->dyna.actor.shape.rot.z, this->dyna.actor.posRot.rot.z - 0x4000, 0x400) != 0) {
            this->unk_169 = (this->unk_169 + 1) % 4;
            this->actionFunc = func_808A6BC8;
            D_808A80A0 = 0;
            if (this->unk_168 == 1) {
                this->unk_16C += 10;
                this->unk_16C = (this->unk_16C >= 121) ? 120 : this->unk_16C;
            }
        }
    }
}

void func_808A7238(BgPoEvent *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;

    if (0.0f != this->dyna.unk_150) {
        player->stateFlags2 &= ~0x10;
    }
    if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, 369.0f, 2.0f) != 0) {
        D_808A80A0 = 0x20;
        Actor_Kill(&this->dyna.actor);
    }
}

void func_808A72AC(BgPoEvent *this, GlobalContext *globalCtx) {
    if ((this->collider1.base.acFlags & 2) != 0) {
        D_808A80A0 |= 0x20;
        this->unk_16C = 5;
        func_8003426C(&this->dyna.actor, 0x4000, 0xFF, 0, 5);
        Audio_PlayActorSound2(&this->dyna.actor, 0x38EF);
        this->actionFunc = func_808A7328;
    }
}

void func_808A7328(BgPoEvent* this, GlobalContext *globalCtx) {
    Vec3f sp54;

    if (D_808A80A0 == 0xF) {
        sp54.x = this->dyna.actor.posRot.pos.x - 5.0f;
        sp54.y = Math_Rand_CenteredFloat(120.0f) + this->dyna.actor.posRot.pos.y;
        sp54.z = Math_Rand_CenteredFloat(120.0f) + this->dyna.actor.posRot.pos.z;
        func_8002A6B8(globalCtx, &sp54, &D_808A7D5C, &D_808A7D5C, 0xAA, 0, 0xC8,0xFF, 0x64, 0xAA, 0, 0xFF, 0, 1, 9, 1);
    } else if (D_808A80A0 == 0x20) {
        Actor_Kill(&this->dyna.actor);
    } else if (this->unk_16C != 0) {
        this->unk_16C--;
    }
}

s32 func_808A7444(BgPoEvent *this) {
    
    if ((this->dyna.actor.parent != NULL) && (this->dyna.actor.child != NULL)) {
        if (Math_Rand_ZeroOne() < 0.5f) {
            D_808A80A0 = ((BgPoEvent*)this->dyna.actor.parent)->unk_169;
        } else {
            D_808A80A0 = ((BgPoEvent*)this->dyna.actor.child)->unk_169;
        }
    } else if (this->dyna.actor.parent != NULL) {
        D_808A80A0 = ((BgPoEvent*)this->dyna.actor.parent)->unk_169;
    } else if (this->dyna.actor.child != NULL) {
        D_808A80A0 = ((BgPoEvent*)this->dyna.actor.child)->unk_169;
    } else {
        return 0;
    }
    return 1;
}

void func_808A7500(BgPoEvent *this, GlobalContext *globalCtx) {
    if (D_808A80A0 == this->unk_169) {
        this->unk_16C = 0xFF;
        this->actionFunc = func_808A7530;
    }
}

void func_808A7530(BgPoEvent *this, GlobalContext *globalCtx) {
    this->unk_16C -= 20;
    if (this->unk_16C <= 0) {
        this->unk_16C = 0x3E8;
        this->actionFunc = func_808A75B8;
    }
}

void func_808A7568(BgPoEvent *this, GlobalContext *globalCtx) {
    this->unk_16C +=  0x14;
    if (this->unk_16C >= 0xFF) {
        func_808A7444(this);
        this->actionFunc = func_808A7500;
    }
}

#ifdef NON_MATCHING
void func_808A75B8(BgPoEvent *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    s32 phi_v0;

    if (this->unk_16C != 0) {
        this->unk_16C--;
    }
    
    if ((this->unk_16C == 0)||((this->dyna.actor.xzDistFromLink < 150.0f) && (this->dyna.actor.yDistFromLink < 50.0f))) {
        goto block_14;
    }
    if ((func_8002DD78(&player->actor) == 0) || !(this->dyna.actor.xzDistFromLink < 320.0f)) {
        goto block_17;
    }
    if(this->unk_169 != 2) {
        phi_v0 = 0;
        if(this->dyna.actor.yDistFromLink < 100.0f) {
            phi_v0 = 1;
        }
    } else {
        phi_v0 = 0;
        if(this->dyna.actor.yDistFromLink < 0.0f) {
            phi_v0 = 1;
        }
    }
    if ((phi_v0 == 0) || (func_8002DFC8(this, 0x2000, globalCtx) == 0)) {
        goto block_17;
    }
block_14:
    if ((this->dyna.actor.parent == NULL) && (this->dyna.actor.child == NULL)) {
            goto block_17;
    }
    this->unk_16C = 0;
    Audio_PlayActorSound2(this, 0x38EC);
    this->actionFunc = &func_808A7568;
    return;
block_17:
    if ((this->collider1.base.acFlags & 2) == 0) {
        return;
    }
    if (func_808A7444(this) == 0) {
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, 0x91,
                    this->dyna.actor.posRot.pos.x, this->dyna.actor.posRot.pos.y - 40.0f, this->dyna.actor.posRot.pos.z,
                    0, this->dyna.actor.shape.rot.y, 0, this->dyna.actor.params + ((this->unk_168 - 1) << 8));
        func_800800F8(globalCtx, 0xC58, 0x50, this, 0);
        func_80078884(0x4802);

    } else {
        Audio_PlayActorSound2(this, 0x38EF);
        func_800800F8(globalCtx, 0xC58, 0x23, this, 0);
    }
    if (this->dyna.actor.parent != NULL) {
        this->dyna.actor.parent->child = NULL;
        this->dyna.actor.parent = NULL;
    }
    if (this->dyna.actor.child != NULL) {
        this->dyna.actor.child->parent = NULL;
        this->dyna.actor.child = NULL;
    }
    this->unk_16C = 0x14;
    this->actionFunc = &func_808A780C;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A75B8.s")
#endif

void func_808A780C(BgPoEvent *this, GlobalContext *globalCtx) {
    Vec3f sp54;

    this->unk_16C--;
    sp54.x = (Math_Sins(this->dyna.actor.shape.rot.y) * 5.0f) + this->dyna.actor.posRot.pos.x;
    sp54.y = Math_Rand_CenteredFloat(66.0f) + this->dyna.actor.posRot.pos.y;
    sp54.z = Math_Rand_CenteredFloat(50.0f) + this->dyna.actor.posRot.pos.z;
    if (this->unk_16C >= 0) {
        if (this->unk_168 == 2) {
            func_8002A6B8(globalCtx, &sp54, &D_808A7D5C, &D_808A7D5C, 0x64, 0, 0xFF, 0xFF, 0x96, 0xAA, 0xFF, 0, 0, 1, 9, 1);
        } else {
            func_8002A6B8(globalCtx, &sp54, &D_808A7D5C, &D_808A7D5C, 0x64, 0, 0xC8, 0xFF, 0xFF, 0xAA, 0x32, 0x64, 0xFF, 1, 9, 1);
        }
    }
    if (this->unk_16C == 0) {
        this->dyna.actor.draw = NULL;
    }
    if (this->unk_16C < -0x3C) {
        Actor_Kill(&this->dyna.actor);
    }
}

void BgPoEvent_Update(Actor *thisx, GlobalContext *globalCtx) {
    BgPoEvent* this = THIS;

    this->actionFunc(this,globalCtx);
    if ((this->actionFunc == func_808A72AC) || (this->actionFunc == func_808A75B8)) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }
}

void BgPoEvent_Draw(Actor *thisx, GlobalContext *globalCtx) {
    BgPoEvent* this = THIS;
    f32 pad;
    f32 pad2;
    Vec3f sp58;
    Vec3f sp4C;
    f32 temp_f0;
    u8 phi_a0;


    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_po_event.c", 0x5C9);
    func_80093D18(globalCtx->state.gfxCtx);
    if ((this->unk_168 == 3) || (this->unk_168 == 2)) {
        if (this->actionFunc == func_808A7500) {
            phi_a0 = 0xFF;
        } else if (this->actionFunc == func_808A75B8) {
            phi_a0 = 0;
        } else {
            phi_a0 = this->unk_16C; //note: cast from s16 to u8.
        }
        gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0xFF, 0xFF, 0xFF, phi_a0);
    }
    gSPMatrix(oGfxCtx->polyOpa.p++,Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_po_event.c", 0x5DD), 
                G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyOpa.p++,D_808A7D94[this->unk_168]);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_po_event.c", 0x5E4);
    
    if ((this->unk_168 == 0) || (this->unk_168 == 1)) {
        temp_f0 = (833.0f - thisx->posRot.pos.y) * 0.0025f;
        if (!(temp_f0 > 1.0f)) {
            sp58.x = thisx->posRot.pos.x;
            sp58.y = thisx->posRot.pos.y - 30.0f;
            sp58.z = thisx->posRot.pos.z;
            sp4C.y = 1.0f;
            sp4C.x = sp4C.z = (temp_f0 * 0.3f) + 0.4f;
            func_80033C30(&sp58, &sp4C, (u8) (155.0f + temp_f0 * 100.0f), globalCtx);
        }
    }
}
