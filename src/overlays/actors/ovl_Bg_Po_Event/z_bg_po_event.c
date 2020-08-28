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

void func_808A68D0(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A69DC(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A6BC8(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A6CCC(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A6F7C(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A7138(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A7238(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A72AC(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A7500(BgPoEvent* this, GlobalContext* globalCtx);
void func_808A75B8(BgPoEvent* this, GlobalContext* globalCtx);

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

s32 D_808A7CD0[] = {0x04000000, 0x00000000, 0x00000000, 0x0001F820, 0x00000000, 0x00010000, 
                    0x41C80000, 0x42040000, 0x00000000, 0xC1C80000, 0x42040000, 0x00000000, 
                    0xC1C80000, 0xC2040000, 0x00000000, 0x04000000, 0x00000000, 0x00000000, 
                    0x0001F820, 0x00000000, 0x00010000, 0x41C80000, 0x42040000, 0x00000000,
                    0xC1C80000, 0xC2040000, 0x00000000, 0x41C80000, 0xC2040000, 0x00000000};


s32 D_808A7D48[] = {0x0A000900, 0x20020000, 0x00000002, 0x808A7CD0};

// static ColliderTrisItemInit D_808A7CD0[2] /*sTrisItemsInit[2]*/ = {
    // {
        // { 0x04, { 0x00000000, 0x00, 0x00 }, { 0x0001F820, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        // { { { 25.0f, 33.0f, 0.0f }, { -25.0f, 33.0f, 0.0f }, { -25.0f, -33.0f, 0.0f } } },
    // },
    // {
        // { 0x04, { 0x00000000, 0x00, 0x00 }, { 0x0001F820, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        // { { { 25.0f, 33.0f, 0.0f }, { -25.0f, -33.0f, 0.0f }, { 25.0f, -33.0f, 0.0f } } },
    // },
// };


// static ColliderTrisInit D_808A7D48 /*sTrisInit*/ =
// {
    // { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x20, COLSHAPE_TRIS },
    // 2, D_808A7CD0 /*sTrisItemsInit*/,
// };

u8 D_808A7D58[] = {0,0,0,0};
s32 D_808A7D5C[] = {0x00000000, 0x00000000, 0x00000000};
s32 D_808A7D68[] = {0xFAEAFC9E, 0x058D03D9};
s32 D_808A7D70[] = {0x04530443};
s32 D_808A7D74[] = {0xF2C8F34C};
s16 D_808A7D78[] = {0x0865,0x07B1, 0x0775,0x0000};
s16 D_808A7D80[] = {0xFA7E,0xFABA, 0xFA06,0x0000};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

s32 D_808A7D8C = 0;
f32 D_808A7D90 = 0.0f;
Gfx* D_808A7D94[] = {D_060075A0, D_060079E0, D_06006830, D_06006D60, D_06007230, NULL, NULL};

u8 D_808A80A0;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A6210.s")

void func_808A658C(BgPoEvent *this, GlobalContext *globalCtx) {
    s32 pad;
    s32 local_c = 0;
    s32 sp54;
    Actor *temp_v0_2;

    this->dyna.actor.flags |= 0x30;
    DynaPolyInfo_Alloc(&D_06007860, &local_c);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, local_c);
     if (this->unk_168 == 0) {
        if (this->unk_169 != 3) {
            if (Actor_SpawnAttached(&globalCtx->actorCtx, &this->dyna.actor, globalCtx, 0x93,
                                    D_808A7D78[this->unk_169], this->dyna.actor.posRot.pos.y,
                                    D_808A7D80[this->unk_169], 0, this->dyna.actor.shape.rot.y,
                                    this->dyna.actor.shape.rot.z - 0x4000,
                                   ((this->unk_169 + 1) << 0xC) + (this->unk_168 << 8) + this->dyna.actor.params) == NULL) {
                Actor_Kill(&this->dyna.actor);
                return;
            }
            if (this->unk_169 == 0) {
                temp_v0_2 = this->dyna.actor.attachedB;
                if (temp_v0_2->attachedB == 0) {
                    Actor_Kill(&this->dyna.actor);
                    return;
                }
                if (temp_v0_2->attachedB->attachedB == 0) {
                    Actor_Kill(&this->dyna.actor);
                    Actor_Kill(this->dyna.actor.attachedB);
                    return;
                }
                this->dyna.actor.attachedA = temp_v0_2->attachedB->attachedB;
                temp_v0_2->attachedB->attachedB->attachedB = &this->dyna.actor;
            }
        }
    }
    this->dyna.actor.posRot.pos.y = 833.0f;
    this->dyna.actor.groundY = func_8003C9A4(&globalCtx->colCtx, &this->dyna.actor.floorPoly, &sp54, &this->dyna.actor, &this->dyna.actor.posRot.pos);
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
        Collider_SetTris(globalCtx, collider, &this->dyna.actor, &D_808A7D48, this->colliderItems);
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
        this->unk_16C.unk16 = 0x2D;
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

    if (this->unk_16C.unk16 != 0) {
        this->unk_16C.unk16--;
    }
    
    if (this->unk_16C.unk16 < 0xF) {
        temp_f0 = (this->unk_16C.unk16 % 3) - 1;
        this->dyna.actor.posRot.pos.x = this->dyna.actor.initPosRot.pos.x + 2.0f*temp_f0;
        temp1 = this->unk_16C.unk16 % 4;
        if ( temp1 == 0) {
            Audio_PlayActorSound2(&this->dyna.actor, 0x2838);
        }
    }
    if (this->unk_16C.unk16 == 0) {
        this->dyna.actor.posRot.pos.x = this->dyna.actor.initPosRot.pos.x;
        D_808A80A0 = 0;
        this->unk_16C.unk16 = 0x3C;
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
        temp_f10 = this->dyna.actor.attachedB->posRot.pos.z;
        if (this->unk_169 == 3) {
            phi_v1 = temp_f6;
            phi_a1 = temp_f10;
            phi_a3 = this->dyna.actor.posRot.pos.x;
            phi_t0 = this->dyna.actor.attachedB->posRot.pos.x;
        } else { //this->unk_169 == 1
            phi_v1 = temp_f6;
            phi_a1 = temp_f10;
            phi_a3 = this->dyna.actor.attachedB->posRot.pos.x;
            phi_t0 = this->dyna.actor.posRot.pos.x;
        }
    } else {
        temp_f6 = this->dyna.actor.posRot.pos.x;
        temp_f10 = this->dyna.actor.attachedB->posRot.pos.x;
        if (this->unk_169 == 0) {
            phi_v1 = temp_f6;
            phi_a1 = temp_f10;
            phi_a3 = this->dyna.actor.posRot.pos.z;
            phi_t0 = this->dyna.actor.attachedB->posRot.pos.z;
        } else { //this->unk_169 == 2
            phi_v1 = temp_f6;
            phi_a1 = temp_f10;
            phi_a3 = this->dyna.actor.attachedB->posRot.pos.z;
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
            func_80088B34(this->unk_16C.unk16);
            if (D_808A7D8C == 0) {
                D_808A7D8C = 1;
            } else {
                func_8002DF54(globalCtx, &PLAYER->actor, 7);
            }
        }
        this->unk_16A = 0;//
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
            //*((s16*)player + 0x340) &= ~0x10;
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
        func_808A6A94(this->dyna.actor.attachedA);
    }
    func_8002F974(&this->dyna.actor, 0x200A);
}
        /*if (this->unk_168 != 1) {
            func_808A6A94(this);
            func_808A6A94(this->dyna.actor.attachedA);
        considered_harmful:
            func_8002F974(&this->dyna.actor, 0x200A);
        }
    } else {
        goto considered_harmful;
    }
}*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A7138.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A7238.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A72AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A7328.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A7444.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A7500.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A7530.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A7568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A75B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A780C.s")

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
    GraphicsContext * gfxCtx = globalCtx->state.gfxCtx;
    Gfx * disprefs[4];


    Graph_OpenDisps(disprefs, globalCtx->state.gfxCtx, "../z_bg_po_event.c", 0x5C9);
    func_80093D18(globalCtx->state.gfxCtx);
    if ((this->unk_168 == 3) || (this->unk_168 == 2)) {
        if (this->actionFunc == func_808A7500) {
            phi_a0 = 0xFF;
        } else if (this->actionFunc == func_808A75B8) {
            phi_a0 = 0;
        } else {
            phi_a0 = this->unk_16C.unk8[1];
        }
        gDPSetEnvColor(gfxCtx->polyOpa.p++,0xFF, 0xFF, 0xFF, phi_a0);
    }
    gSPMatrix(gfxCtx->polyOpa.p++,Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_po_event.c", 0x5DD), 
                G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++,D_808A7D94[this->unk_168]);
    Graph_CloseDisps(disprefs, globalCtx->state.gfxCtx, "../z_bg_po_event.c", 0x5E4);
    
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
