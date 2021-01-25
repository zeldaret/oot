#include "z_demo_gj.h"

#define FLAGS 0x00000030

#define THIS ((DemoGj*)thisx)

void DemoGj_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoGj_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoGj_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoGj_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000DC0;
extern UNK_TYPE D_06000EA0;
extern UNK_TYPE D_06001B70;
extern Gfx D_06001D20;
extern CollisionHeader D_06001F70;
extern Gfx D_06002160;
extern UNK_TYPE D_06002448;
extern Gfx D_06002600;
extern UNK_TYPE D_06002850;
extern Gfx D_06002A40;
extern UNK_TYPE D_06002D28;
extern UNK_TYPE D_06002E80;
extern UNK_TYPE D_06002FE4;
extern UNK_TYPE D_06003190;
extern UNK_TYPE D_060033E0;
extern UNK_TYPE D_06003710;
extern UNK_TYPE D_06003AF0;

/*
const ActorInit Demo_Gj_InitVars = {
    ACTOR_DEMO_GJ,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_GJ,
    sizeof(DemoGj),
    (ActorFunc)DemoGj_Init,
    (ActorFunc)DemoGj_Destroy,
    (ActorFunc)DemoGj_Update,
    (ActorFunc)DemoGj_Draw,
};

static ColliderCylinderInitType1 sCylinderInit = {
    {
        COLTYPE_HIT0,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000008, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 30, 100, 0, { 0, 0, 0 } },
};

static ColliderCylinderInitType1 sCylinderInit = {
    {
        COLTYPE_HIT0,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000008, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 25, 110, 0, { 0, 0, 0 } },
};

static ColliderCylinderInitType1 sCylinderInit = {
    {
        COLTYPE_HIT0,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000008, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 25, 200, 0, { 0, 0, 0 } },
};
*/

/*
static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(unk_50, 100, ICHAIN_STOP),
};
*/
// D_8097BE84
extern InitChainEntry sInitChain[];


s32 func_80978930(DemoGj *this) {
    s32 params = this->dyna.actor.params >> 0xB;
    return params & 0x1F;
}

s32 func_80978940(DemoGj *this) {
    s32 params = this->dyna.actor.params >> 0x8;
    return params & 7;
}

s32 func_80978950(DemoGj *this) {
    s32 params = this->dyna.actor.params;
    return params & 0xFF;
}

void func_8097895C(DemoGj* this, GlobalContext* globalCtx, ColliderCylinder* arg2, ColliderCylinderInitType1* arg3) {
    Collider_InitCylinder(globalCtx, arg2);
    Collider_SetCylinderType1(globalCtx, arg2, &this->dyna.actor, arg3);
}

#ifdef NON_MATCHING
/*s32 func_809789A4(s32 arg0, GlobalContext* globalCtx, Collider* collider) {
    if (Actor_GetCollidedExplosive(globalCtx, collider) != 0) {
        return 1;
    }
    return 0;
}*/
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_809789A4.s")
#endif


void func_809789D8(DemoGj* this, GlobalContext* globalCtx) {
    s32 temp_v0;

    temp_v0 = func_80978950(this);

    switch (temp_v0) {
    case 0x10:
        Collider_DestroyCylinder(globalCtx, &this->unk_184);
        Collider_DestroyCylinder(globalCtx, &this->unk_1D0);
        Collider_DestroyCylinder(globalCtx, &this->unk_21C);
        break;

    case 0x11:
        Collider_DestroyCylinder(globalCtx, &this->unk_184);
        Collider_DestroyCylinder(globalCtx, &this->unk_1D0);
        Collider_DestroyCylinder(globalCtx, &this->unk_21C);
        return;

    case 0x16:
        Collider_DestroyCylinder(globalCtx, &this->unk_184);
        return;
    
    default:
        break;
    }
}

void DemoGj_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DemoGj* this = THIS;
    func_809789D8(this, globalCtx);
    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void func_80978AC4(DemoGj* this, GlobalContext* globalCtx) {
    Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.world.pos, 0x32, NA_SE_EV_GRAVE_EXPLOSION);
}

void func_80978AFC(GlobalContext *globalCtx, Vec3f *arg1, f32 arg2);
/*
void func_80978AFC(GlobalContext *globalCtx, Vec3f *arg1, f32 arg2) {
    arg2 = arg2;
    func_800283D4(globalCtx, arg1, &D_8097BE64, &D_8097BE70, &D_8097BE7C, &D_8097BE80, (s32) ((Rand_ZeroOne() * (arg2 * 0.2f)) + arg2), 0xF, 0x5A);
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_80978AFC.s")

void func_80978B90(DemoGj* this, GlobalContext* globalCtx);
#ifdef NON_MATCHING
// register usage doesn't match.
void func_80978B90(DemoGj* this, GlobalContext* globalCtx) {
    s32 temp_v0;
    s16 temp_s2;

    s32 i;

    temp_s2 = func_80978930(this);
    temp_v0 = func_80978940(this);

    for (i = 0; i < temp_v0; i++) {
        Item_DropCollectible(globalCtx, &this->dyna.actor.world.pos, temp_s2);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_80978B90.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_80978C20.s")

s32 func_80978EBC(void) {
    if (gSaveContext.sceneSetupIndex < 4) {
        return 0;
    }
    return 1;
}

void func_80978EE4(DemoGj* this, GlobalContext* globalCtx);
/*
void func_80978EE4(DemoGj* this, GlobalContext* globalCtx) {
    Actor *temp_v0;
    char *temp_v0_2;
    char *phi_v0;

    if (this->unk_178 == 0) {
        temp_v0 = globalCtx->actorCtx.actorLists[9].head;
        phi_v0 = (char *) temp_v0;
        if (temp_v0 != 0) {
loop_2:
            if (phi_v0->unk0 == 0x17A) {
                this->unk_178 = phi_v0;
                osSyncPrintf((const char *) "Demo_Gj_Search_Boss_Ganon %d:ガノン発見!!!!\n", this->dyna.actor.params, this);
                return;
            }
            temp_v0_2 = phi_v0->unk124;
            phi_v0 = temp_v0_2;
            if (temp_v0_2 != 0) {
                goto loop_2;
            }
        }
        osSyncPrintf((const char *) "Demo_Gj_Search_Boss_Ganon %d:ガノン発見出来ず\n", this->dyna.actor.params, this);
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_80978EE4.s")

#ifdef NON_MATCHING
void func_80978F60(DemoGj* this, GlobalContext* globalCtx, CollisionHeader *arg2) {
    GlobalContext* glb_ctx;
    Actor* actor;
    DynaCollisionContext* colctx_dyna;
    CollisionHeader *sp18;

    actor = &this->dyna.actor;
    glb_ctx = globalCtx;
    colctx_dyna = &glb_ctx->colCtx.dyna;

    if (arg2 != NULL) {
        Actor_ProcessInitChain(actor, sInitChain);
        DynaPolyActor_Init(&this->dyna, 0);
        sp18 = NULL;
        CollisionHeader_GetVirtual(arg2, &sp18);
        this->dyna.bgId = DynaPoly_SetBgActor(glb_ctx, colctx_dyna, actor, sp18);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_80978F60.s")
#endif

s32 func_80978FCC(DemoGj* this, GlobalContext* globalCtx, s32 arg2, s32 arg3, CollisionHeader* arg4) {
    if (func_80978EBC() == 0) {
        this->unk_164 = arg2;
        this->unk_168 = arg3;
        func_80978F60(this, globalCtx, arg4);
        return 1;
    }
    Actor_Kill((Actor *) this);
    return 0;
}

void func_80979030(DemoGj* this, GlobalContext* globalCtx, Gfx* displayList) {
    if (gGameInfo->data[2592] == 0) {
        GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
        OPEN_DISPS(gfxCtx, "../z_demo_gj.c", 1163);

        func_80093D18(gfxCtx);

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_demo_gj.c", 1165), G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPDisplayList(POLY_OPA_DISP++, displayList);
        gSPPopMatrix(POLY_OPA_DISP++, G_MTX_MODELVIEW);

        CLOSE_DISPS(gfxCtx, "../z_demo_gj.c", 1169);
    }
}

#ifdef NON_MATCHING
void func_8097911C(DemoGj* this, GlobalContext* globalCtx, Gfx* displayList) {
    GraphicsContext *gfxCtx;
    Mtx* matrix;
    
    s16 sp56;
    s16 sp54;
    s16 sp52;

    sp56 = this->unk_16C.x;
    sp54 = this->unk_16C.y;
    sp52 = this->unk_16C.z;

    gfxCtx = globalCtx->state.gfxCtx;

    matrix = Graph_Alloc(gfxCtx, 0x40);

    OPEN_DISPS(gfxCtx, "../z_demo_gj.c", 1187);

    Matrix_Push();
    Matrix_RotateRPY(sp56, sp54, sp52, MTXMODE_APPLY);
    Matrix_ToMtx(matrix, "../z_demo_gj.c", 1193);
    Matrix_Pull();

    func_80093D18(gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, matrix, G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, displayList);
    gSPPopMatrix(POLY_OPA_DISP++, G_MTX_MODELVIEW);

    CLOSE_DISPS(gfxCtx, "../z_demo_gj.c", 1201);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097911C.s")
#endif

void func_8097923C(DemoGj* this, UNK_TYPE arg1);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097923C.s")

/*
s32 func_809797E4(void* arg0, s32 arg1) {
    void *temp_v0;

    temp_v0 = this->arg0;
    if ((temp_v0 != 0) && ((arg1 & 0xFF) == arg0->unk314)) {
        return 1;
    }
    return 0;
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_809797E4.s")

/*
void func_80979818(? arg1) {
    func_809797E4(1);
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_80979818.s")

/*
void func_8097983C(? arg1) {
    func_809797E4(2);
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097983C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_80979860.s")

/*
void func_80979F9C(void *arg0) {
    if (func_809797E4(3) != 0) {
        arg0->unk17C = 1;
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_80979F9C.s")

void func_80979FD0(DemoGj* this, GlobalContext* globalCtx) {
    func_80978FCC(this, globalCtx, 1, 2, &D_06001F70);
}

void func_8097A000(DemoGj* this, s32 arg1);
#ifdef NON_MATCHING
void func_8097A000(DemoGj *this, s32 arg1) {
    Actor_MoveForward(&this->dyna.actor);
    this->unk_16C.x += gGameInfo->data[2610];
    this->unk_16C.y += 0x3E8 + gGameInfo->data[2611];
    this->unk_16C.z = 0xBB8 + gGameInfo->data[2612] + this->unk_16C.z;
    func_8097923C(this, arg1);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A000.s")
#endif

//s32 func_8097A07C(DemoGj* this, GlobalContext* globalCtx);
/*
s32 func_8097A07C(DemoGj* this, GlobalContext* globalCtx) {
    s32 phi_return;

    phi_return = globalCtx + 0x10000;
    if (this->unk17C == 0) {
        if (((u32) globalCtx->gameplayFrames % 3U) == 0) {
            this = this;
            func_80978AFC(globalCtx, &D_8097BE88, 300.0f);
        }
        phi_return = func_80979F9C(this);
    }
    return phi_return;
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A07C.s")

void func_8097A0E4(DemoGj *this, GlobalContext *globalCtx);
#ifdef NON_MATCHING
void func_8097A0E4(DemoGj *this, GlobalContext *globalCtx) {
    if (func_80979818() != 0) {
        func_80979860(this, globalCtx);
        this->unk_164 = 8;
        this->unk_168 = 9;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A0E4.s")
#endif

/*
void func_8097A130(DemoGj *this) {
    if (func_8097983C() != 0) {
        Actor_Kill(&this->dyna.actor);
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A130.s")

void func_8097A160(DemoGj* this, GlobalContext* globalCtx) {
    func_80978EE4(this, globalCtx);
    func_8097A0E4(this, globalCtx);
}

void func_8097A190(DemoGj* this, s32 arg1);
/*
void func_8097A190(DemoGj* this, s32 arg1) {
    func_8097A000(this, arg1);
    func_8097A130(this, arg1);
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A190.s")

void func_8097A1C0(DemoGj* this, GlobalContext* globalCtx) {
    func_80979030(this, globalCtx, &D_06001D20);
}

void func_8097A1E4(DemoGj* this, GlobalContext* globalCtx) {
    func_8097911C(this, globalCtx, &D_06001D20);
}
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A1E4.s")

void func_8097A208(DemoGj* this, GlobalContext* globalCtx) {
    func_80978FCC(this, globalCtx, 2, 3, &D_06002448);
}
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A208.s")

void func_8097A238(DemoGj* this, s32 arg1);
#ifdef NON_MATCHING
void func_8097A238(DemoGj *this, s32 arg1) {
    Actor_MoveForward(&this->dyna.actor);
    this->unk_16C.x = this->unk_16C.x + gGameInfo->data[2623];
    this->unk_16C.y = this->unk_16C.y + (gGameInfo->data[2624] + 0x3E8);
    this->unk_16C.z = this->unk_16C.z + (gGameInfo->data[2625] + 0xBB8);
    func_8097923C(this, arg1);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A238.s")
#endif

/*
s32 func_8097A2B4(void *arg0, GlobalContext* globalCtx) {
    s32 phi_return;

    phi_return = globalCtx + 0x10000;
    if (arg0->unk17C == 0) {
        if (((u32) globalCtx->gameplayFrames % 3U) == 1) {
            arg0 = arg0;
            func_80978AFC(globalCtx, &D_8097BE94, 300.0f);
        }
        phi_return = func_80979F9C(arg0);
    }
    return phi_return;
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A2B4.s")

/*
void func_8097A320(DemoGj* this, s32 arg1) {
    if (func_80979818() != 0) {
        func_80979860(this, arg1);
        this->unk_164 = 9;
        this->unk_168 = 0xA;
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A320.s")

/*
void func_8097A36C(DemoGj* this) {
    if (func_8097983C() != 0) {
        Actor_Kill(&this->dyna.actor);
    }
}*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A36C.s")

void func_8097A39C(DemoGj* this, GlobalContext* globalCtx) {
    func_80978EE4(this, globalCtx);
    func_8097A320(this, globalCtx);
}

void func_8097A3CC(DemoGj* this, s32 arg1) {
    func_8097A238(this, arg1);
    func_8097A36C(this, arg1);
}

void func_8097A3FC(DemoGj* this, GlobalContext* globalCtx) {
    func_80979030(this, globalCtx, &D_06002160);
}

void func_8097A420(DemoGj* this, GlobalContext* globalCtx) {
    func_8097911C(this, globalCtx, &D_06002160);
}

void func_8097A444(DemoGj* this, GlobalContext* globalCtx) {
    func_80978FCC(this, globalCtx, 3, 4, &D_06002850);
}

void func_8097A474(DemoGj* this, s32 arg1);
#ifdef NON_MATCHING
void func_8097A474(DemoGj* this, s32 arg1) {
    Actor_MoveForward(&this->dyna.actor);
    this->unk_16C.x = this->unk_16C.x + gGameInfo->data[2636];
    this->unk_16C.y = this->unk_16C.y + (gGameInfo->data[2637] + 0x3E8);
    this->unk_16C.z = this->unk_16C.z + (gGameInfo->data[2638] + 0xBB8);
    func_8097923C(this, arg1);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A474.s")
#endif

void func_8097A4F0(DemoGj* this, s32 arg1);
/*
void func_8097A4F0(DemoGj* this, s32 arg1) {
    if (func_80979818() != 0) {
        func_80979860(this, arg1);        
        this->unk_164 = 0xA;
        this->unk_168 = 0xB;
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A4F0.s")

/*
void func_8097A53C(DemoGj* this) {
    if (func_8097983C() != 0) {
        Actor_Kill(&this->dyna.actor);
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A53C.s")

void func_8097A56C(DemoGj* this, GlobalContext* globalCtx) {
    func_80978EE4(this, globalCtx);
    func_8097A4F0(this, (s32) globalCtx); // TODO: check this.
}

void func_8097A59C(DemoGj* this, s32 arg1) {
    func_8097A474(this, arg1);
    func_8097A53C(this, arg1);
}

void func_8097A5CC(DemoGj* this, GlobalContext* globalCtx) {
    func_80979030(this, globalCtx, &D_06002600);
}

void func_8097A5F0(DemoGj* this, GlobalContext* globalCtx) {
    func_8097911C(this, globalCtx, &D_06002600);
}

void func_8097A614(DemoGj* this, GlobalContext* globalCtx) {
    func_80978FCC(this, globalCtx, 4, 5, &D_06002D28);
}

void func_8097A644(DemoGj* this, s32 arg1);
#ifdef NON_MATCHING
void func_8097A644(DemoGj* this, s32 arg1) {
    Actor_MoveForward(&this->dyna.actor);
    this->unk_16C.x = this->unk_16C.x + gGameInfo->data[2649];
    this->unk_16C.y = this->unk_16C.y + (gGameInfo->data[2650] + 0x3E8);
    this->unk_16C.z = this->unk_16C.z + (gGameInfo->data[2651] + 0xBB8);
    func_8097923C(this, arg1);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A644.s")
#endif

void func_8097A6C0(DemoGj* this, s32 arg1);
/*
void func_8097A6C0(DemoGj* this, s32 arg1) {
    if (func_80979818() != 0) {
        func_80979860(this, arg1);
        this->unk_164 = 0xB;
        this->unk_168 = 0xC;
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A6C0.s")

void func_8097A70C(DemoGj* this, s32 arg1);
/*
void func_8097A70C(DemoGj* this, s32 arg1) {
    if (func_8097983C() != 0) {
        Actor_Kill(&this->dyna.actor);
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A70C.s")

void func_8097A73C(DemoGj* this, GlobalContext* globalCtx) {
    func_80978EE4(this, globalCtx);
    func_8097A6C0(this, (s32) globalCtx);
}

void func_8097A76C(DemoGj* this, s32 arg1) {
    func_8097A644(this, arg1);
    func_8097A70C(this, arg1);
}

void func_8097A79C(DemoGj* this, GlobalContext* globalCtx) {
    func_80979030(this, globalCtx, &D_06002A40);
}

void func_8097A7C0(DemoGj* this, GlobalContext* globalCtx) {
    func_8097911C(this, globalCtx, &D_06002A40);
}

void func_8097A7E4(DemoGj* this, GlobalContext* globalCtx) {
    func_80978FCC(this, globalCtx, 5, 6, &D_06002FE4);
}

void func_8097A814(DemoGj* this, s32 arg1);
#ifdef NON_MATCHING
void func_8097A814(DemoGj* this, s32 arg1) {
    Actor_MoveForward(&this->dyna.actor);
    this->unk_16C.x = (s16) (this->unk_16C.x + gGameInfo->data[2662]);
    this->unk_16C.y = (s16) (this->unk_16C.y+ (gGameInfo->data[2663] + 0x3E8));
    this->unk_16C.z = (s16) (this->unk_16C.z + (gGameInfo->data[2664] + 0xBB8));
    func_8097923C(this, arg1);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A814.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A890.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A8DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A90C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A93C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A96C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A990.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A9B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A9E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AA60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AAAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AADC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AB0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AB3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AB60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AB84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097ABB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AC30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AC9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097ACE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AD18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AD48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AD78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AD9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097ADC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097ADF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AE38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AE5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AEDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AEE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B080.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B0EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B128.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B1B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B22C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B340.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B370.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B3A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B3C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B444.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B450.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B5A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B688.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B6C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B750.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B864.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B894.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B8C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B8E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B930.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B93C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B9BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097BA48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097BB78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097BBA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097BBD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/DemoGj_Update.s")

#ifdef NON_MATCHING
/*void DemoGj_Init(Actor* thisx, GlobalContext *globalCtx) {
    DemoGj *this = THIS
    DemoGj *temp_a2;
    u32 temp_t6;

    temp_t6 = func_80978950() - 4;
    temp_a2 = this;
    if (temp_t6 < 0x13U) {
        goto **(&jtbl_8097C234 + (temp_t6 * 4));
    case 0:
        func_8097ADC0(temp_a2, globalCtx, temp_a2);
        return;
    case 4:
        func_80979FD0(temp_a2, globalCtx, temp_a2);
        return;
    case 5:
        func_8097A208(temp_a2, globalCtx, temp_a2);
        return;
    case 6:
        func_8097A444(temp_a2, globalCtx, temp_a2);
        return;
    case 7:
        func_8097A614(temp_a2, globalCtx, temp_a2);
        return;
    case 8:
        func_8097A7E4(temp_a2, globalCtx, temp_a2);
        return;
    case 9:
        func_8097A9B4(temp_a2, globalCtx, temp_a2);
        return;
    case 10:
        func_8097AB84(temp_a2, globalCtx, temp_a2);
        return;
    case 12:
        func_8097AE5C(temp_a2, globalCtx, temp_a2);
        return;
    case 13:
        func_8097B3C4(temp_a2, globalCtx, temp_a2);
        return;
    case 18:
        func_8097B8E8(temp_a2, globalCtx, temp_a2);
        return;
    }
default:
    this = temp_a2;
    osSyncPrintf((const char *) "\x1b[31mDemo_Gj_Actor_ct そんな引数は無い!!!!!!!!!!!!!!!!!!!!!!\n\x1b[m", globalCtx, temp_a2);
    Actor_Kill((Actor *) this);
}*/
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/DemoGj_Init.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097BD70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/DemoGj_Draw.s")
