#include "z_demo_gj.h"
#include "overlays/actors/ovl_Boss_Ganon2/z_boss_ganon2.h"

#define FLAGS 0x00000030

#define THIS ((DemoGj*)thisx)

void DemoGj_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoGj_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoGj_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoGj_Draw(Actor* thisx, GlobalContext* globalCtx);

extern Gfx D_06000DC0;
extern UNK_TYPE D_06000EA0;
extern UNK_TYPE D_06001B70;
extern Gfx D_06001D20;
extern CollisionHeader D_06001F70;
extern Gfx D_06002160;
extern CollisionHeader D_06002448;
extern Gfx D_06002600;
extern CollisionHeader D_06002850;
extern Gfx D_06002A40;
extern CollisionHeader D_06002D28;
extern Gfx D_06002E80;
extern CollisionHeader D_06002FE4;
extern Gfx D_06003190;
extern UNK_TYPE D_060033E0;
extern Gfx D_06003710;
extern UNK_TYPE D_06003AF0;

typedef void (*DemoGjActionFunc)(DemoGj*, GlobalContext*);

void func_8097ADF0(DemoGj* this, GlobalContext* globalCtx);
void func_8097A160(DemoGj* this, GlobalContext* globalCtx);
void func_8097A39C(DemoGj* this, GlobalContext* globalCtx);
void func_8097A56C(DemoGj* this, GlobalContext* globalCtx);
void func_8097A73C(DemoGj* this, GlobalContext* globalCtx);
void func_8097A90C(DemoGj* this, GlobalContext* globalCtx);
void func_8097AADC(DemoGj* this, GlobalContext* globalCtx);
void func_8097AD18(DemoGj* this, GlobalContext* globalCtx);
void func_8097A190(DemoGj* this, GlobalContext* globalCtx);
void func_8097A3CC(DemoGj* this, GlobalContext* globalCtx);
void func_8097A59C(DemoGj* this, GlobalContext* globalCtx);
void func_8097A76C(DemoGj* this, GlobalContext* globalCtx);
void func_8097A93C(DemoGj* this, GlobalContext* globalCtx);
void func_8097AB0C(DemoGj* this, GlobalContext* globalCtx);
void func_8097AD48(DemoGj* this, GlobalContext* globalCtx);
void func_8097B340(DemoGj* this, GlobalContext* globalCtx);
void func_8097B864(DemoGj* this, GlobalContext* globalCtx);
void func_8097BB78(DemoGj* this, GlobalContext* globalCtx);
void func_8097B370(DemoGj* this, GlobalContext* globalCtx);
void func_8097B894(DemoGj* this, GlobalContext* globalCtx);
void func_8097BBA8(DemoGj* this, GlobalContext* globalCtx);

extern DemoGjActionFunc D_8097BED0[];
/*
static DemoGjActionFunc D_8097BED0[] = {
    func_8097ADF0,
    func_8097A160,
    func_8097A39C,
    func_8097A56C,
    func_8097A73C,
    func_8097A90C,
    func_8097AADC,
    func_8097AD18,
    func_8097A190,
    func_8097A3CC,
    func_8097A59C,
    func_8097A76C,
    func_8097A93C,
    func_8097AB0C,
    func_8097AD48,
    func_8097B340,
    func_8097B864,
    func_8097BB78,
    func_8097B370,
    func_8097B894,
    func_8097BBA8,
};
*/


void func_8097BD70(DemoGj* this, GlobalContext* globalCtx); 
void func_8097AE38(DemoGj* this, GlobalContext* globalCtx); 
void func_8097A1C0(DemoGj* this, GlobalContext* globalCtx); 
void func_8097A3FC(DemoGj* this, GlobalContext* globalCtx); 
void func_8097A5CC(DemoGj* this, GlobalContext* globalCtx); 
void func_8097A79C(DemoGj* this, GlobalContext* globalCtx); 
void func_8097A96C(DemoGj* this, GlobalContext* globalCtx); 
void func_8097AB3C(DemoGj* this, GlobalContext* globalCtx); 
void func_8097AD78(DemoGj* this, GlobalContext* globalCtx); 
void func_8097A1E4(DemoGj* this, GlobalContext* globalCtx); 
void func_8097A420(DemoGj* this, GlobalContext* globalCtx); 
void func_8097A5F0(DemoGj* this, GlobalContext* globalCtx); 
void func_8097A7C0(DemoGj* this, GlobalContext* globalCtx); 
void func_8097A990(DemoGj* this, GlobalContext* globalCtx); 
void func_8097AB60(DemoGj* this, GlobalContext* globalCtx); 
void func_8097AD9C(DemoGj* this, GlobalContext* globalCtx); 
void func_8097B3A0(DemoGj* this, GlobalContext* globalCtx); 
void func_8097B8C4(DemoGj* this, GlobalContext* globalCtx); 
void func_8097BBD8(DemoGj* this, GlobalContext* globalCtx); 

extern DemoGjActionFunc D_8097BF24[];
/*
static DemoGjActionFunc D_8097BF24[] = {
    func_8097BD70, 
    func_8097AE38, 
    func_8097A1C0, 
    func_8097A3FC, 
    func_8097A5CC, 
    func_8097A79C, 
    func_8097A96C, 
    func_8097AB3C, 
    func_8097AD78, 
    func_8097A1E4, 
    func_8097A420, 
    func_8097A5F0, 
    func_8097A7C0, 
    func_8097A990, 
    func_8097AB60, 
    func_8097AD9C, 
    func_8097B3A0, 
    func_8097B8C4, 
    func_8097BBD8, 
};
*/

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


extern Vec3f D_8097BE64; // velocity
extern Vec3f D_8097BE70; // accel
extern Color_RGBA8 D_8097BE7C; // primColor
extern Color_RGBA8 D_8097BE80; // envColor

extern Vec3f D_8097BE88;
extern Vec3f D_8097BEA0;

extern ColliderCylinderInitType1 D_8097BDE0;
extern ColliderCylinderInitType1 D_8097BE0C;
extern ColliderCylinderInitType1 D_8097BE38;


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

void func_80978AFC(GlobalContext *globalCtx, Vec3f* pos, f32 arg2);
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

s32 func_80978EE4(DemoGj *this, GlobalContext *globalCtx);
#ifdef NON_MATCHING
s32 func_80978EE4(DemoGj *this, GlobalContext *globalCtx) {
    Actor* actor;

    if (this->ganon == NULL) {
        actor = globalCtx->actorCtx.actorLists[ACTORCAT_BOSS].head;

        for (; actor != NULL; actor = actor->next) {
            if (actor->id == ACTOR_BOSS_GANON2) {
                this->ganon = actor;

                // Demo_Gj_Search_Boss_Ganon %d: Discover Ganon !!!!
                osSyncPrintf("Demo_Gj_Search_Boss_Ganon %d:ガノン発見!!!!\n", this->dyna.actor.params, this);
                return 1;
            }
        }

        // Demo_Gj_Search_Boss_Ganon %d: I couldn't find Ganon
        osSyncPrintf("Demo_Gj_Search_Boss_Ganon %d:ガノン発見出来ず\n", this->dyna.actor.params, this);
    }

    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_80978EE4.s")
#endif

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
    Actor_Kill(&this->dyna.actor);
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

void func_8097911C(DemoGj* this, GlobalContext* globalCtx, Gfx* displayList) {
    void* dummy; // Needed for matching.
    GraphicsContext *gfxCtx;
    
    s16 sp56;
    s16 sp54;
    s16 sp52;

    void* dummy2; // Needed for matching.
    Mtx* matrix;

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

void func_8097923C(DemoGj* this, GlobalContext* globalCtx);
#ifdef NON_MATCHING
void func_8097923C(DemoGj *this, GlobalContext *globalCtx) {
    f32 actor_y = this->dyna.actor.world.pos.y;
    f32* actor_y_velocity = &this->dyna.actor.velocity.y;
    f32* actor_speedXZ = &this->dyna.actor.speedXZ;
    Vec3s* unk_172 = &this->unk_172;

    f32 phi_f12;
    f32 phi_f14;
    f32 phi_f16;
    f32 phi_f18;
    f32 phi_f20;
    f32 phi_f22;

    switch (func_80978950(this) - 8) {
    case 0:
        phi_f12 = gGameInfo->data[2615];
        phi_f14 = gGameInfo->data[2616] * 0.01f + 1.0f;
        phi_f16 = gGameInfo->data[2617] * 0.01f + 1.0f;
        phi_f18 = gGameInfo->data[2618] * 0.01f + 1.0f;
        phi_f20 = gGameInfo->data[2619] * 0.01f + -1.0f;
        phi_f22 = gGameInfo->data[2620] * 0.01f + 1.0f;
        break;
    case 1:
        phi_f12 = gGameInfo->data[2628];
        phi_f14 = gGameInfo->data[2629] * 0.01f + 1.0f;
        phi_f16 = gGameInfo->data[2630] * 0.01f + 1.0f;
        phi_f18 = gGameInfo->data[2631] * 0.01f + 1.0f;
        phi_f20 = gGameInfo->data[2632] * 0.01f + -1.0f;
        phi_f22 = gGameInfo->data[2633] * 0.01f + 1.0f;
        break;
    case 2:
        phi_f12 = gGameInfo->data[2641];
        phi_f14 = gGameInfo->data[2642] * 0.01f + 1.0f;
        phi_f16 = gGameInfo->data[2643] * 0.01f + 1.0f;
        phi_f18 = gGameInfo->data[2644] * 0.01f + 1.0f;
        phi_f20 = gGameInfo->data[2645] * 0.01f + -1.0f;
        phi_f22 = gGameInfo->data[2646] * 0.01f + 1.0f;
        break;
    case 3:
        phi_f12 = gGameInfo->data[2654];
        phi_f14 = gGameInfo->data[2655] * 0.01f + 1.0f;
        phi_f16 = gGameInfo->data[2656] * 0.01f + 1.0f;
        phi_f18 = gGameInfo->data[2657] * 0.01f + 1.0f;
        phi_f20 = gGameInfo->data[2658] * 0.01f + -1.0f;
        phi_f22 = gGameInfo->data[2659] * 0.01f + 1.0f;
        break;
    case 4:
        phi_f12 = gGameInfo->data[2667];
        phi_f14 = gGameInfo->data[2668] * 0.01f + 1.0f;
        phi_f16 = gGameInfo->data[2669] * 0.01f + 1.0f;
        phi_f18 = gGameInfo->data[2670] * 0.01f + 1.0f;
        phi_f20 = gGameInfo->data[2671] * 0.01f + -1.0f;
        phi_f22 = gGameInfo->data[2672] * 0.01f + 1.0f;
        break;
    case 5:
        phi_f12 = gGameInfo->data[2680];
        phi_f14 = gGameInfo->data[2681] * 0.01f + 1.0f;
        phi_f16 = gGameInfo->data[2682] * 0.01f + 1.0f;
        phi_f18 = gGameInfo->data[2683] * 0.01f + 1.0f;
        phi_f20 = gGameInfo->data[2684] * 0.01f + -1.0f;
        phi_f22 = gGameInfo->data[2685] * 0.01f + 1.0f;
        break;
    case 6:
        phi_f12 = gGameInfo->data[2602] + -190.0f;
        phi_f14 = gGameInfo->data[2601] * 0.01f + 1.0f;
        phi_f16 = gGameInfo->data[2600] * 0.01f + 1.0f;
        phi_f18 = gGameInfo->data[2599] * 0.01f + 1.0f;
        phi_f20 = gGameInfo->data[2598] * 0.01f + -1.0f;
        phi_f22 = gGameInfo->data[2597] * 0.01f + 1.0f;
        break;
    default:
        osSyncPrintf("\x1b[31mDemo_Gj_common_Reflect : そんなarg_dataには対応していない = %d\n\x1b[m", this->dyna.actor.params);
        return;
    }

    if ((actor_y + phi_f12) <= 1086.0f) {
        if ((*actor_y_velocity < 0.0f) && (this->unk_180 == 0)) {
            *actor_y_velocity *= phi_f20;
            *actor_speedXZ *= phi_f22;
            unk_172->x *= phi_f14;
            unk_172->y *= phi_f16;
            unk_172->z *= phi_f18;
            if (*actor_y_velocity <= -this->dyna.actor.gravity) {
                *actor_y_velocity = 0.0f;
                *actor_speedXZ = 0.0f;
                unk_172->x = 0;
                unk_172->y = 0;
                unk_172->z = 0;
            }
            this->unk_180 = 1;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097923C.s")
#endif

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
s32 func_80979818(? arg1) {
    func_809797E4(1);
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_80979818.s")

/*
s32 func_8097983C(? arg1) {
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

void func_8097A000(DemoGj* this, GlobalContext* globalCtx);
#ifdef NON_MATCHING
/*
void func_8097A000(DemoGj *this, GlobalContext *globalCtx) {
    Actor_MoveForward(&this->dyna.actor);
    this->unk_16C.x += gGameInfo->data[2610];
    this->unk_16C.y += 0x3E8 + gGameInfo->data[2611];
    this->unk_16C.z = 0xBB8 + gGameInfo->data[2612] + this->unk_16C.z;
    func_8097923C(this, globalCtx);
}
*/

void func_8097A000(DemoGj *this, GlobalContext *globalCtx) {
    Actor_MoveForward(&this->dyna.actor);
    this->unk_16C.x = this->unk_16C.x + gGameInfo->data[2610];
    this->unk_16C.y = this->unk_16C.y + (gGameInfo->data[2611] + 0x3E8);
    this->unk_16C.z = this->unk_16C.z + (gGameInfo->data[2612] + 0xBB8);
    func_8097923C(this, globalCtx);
}

#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A000.s")
#endif

void func_8097A07C(DemoGj* this, GlobalContext* globalCtx);
/*
void func_8097A07C(DemoGj *this, GlobalContext *globalCtx) {
    if (this->unk_17C == 0) {
        if ((globalCtx->gameplayFrames % 3)==0) {
            func_80978AFC(globalCtx, &D_8097BE88, 300.0f);
        }
        func_80979F9C(this);
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A07C.s")

void func_8097A0E4(DemoGj *this, GlobalContext *globalCtx);
//#ifdef NON_MATCHING
/*
void func_8097A0E4(DemoGj *this, GlobalContext *globalCtx) {
    if (func_80979818() != 0) {
        func_80979860(this, globalCtx);
        this->unk_164 = 8;
        this->unk_168 = 9;
    }
}
*/
//#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A0E4.s")
//#endif

void func_8097A130(DemoGj* this, GlobalContext* globalCtx);
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

void func_8097A190(DemoGj* this, GlobalContext* globalCtx) {
    func_8097A000(this, globalCtx);
    func_8097A130(this, globalCtx);
}

void func_8097A1C0(DemoGj* this, GlobalContext* globalCtx) {
    func_80979030(this, globalCtx, &D_06001D20);
}

void func_8097A1E4(DemoGj* this, GlobalContext* globalCtx) {
    func_8097911C(this, globalCtx, &D_06001D20);
}

void func_8097A208(DemoGj* this, GlobalContext* globalCtx) {
    func_80978FCC(this, globalCtx, 2, 3, &D_06002448);
}

void func_8097A238(DemoGj* this, GlobalContext* globalCtx);
#ifdef NON_MATCHING
void func_8097A238(DemoGj *this, GlobalContext* globalCtx) {
    Actor_MoveForward(&this->dyna.actor);
    this->unk_16C.x = this->unk_16C.x + gGameInfo->data[2623];
    this->unk_16C.y = this->unk_16C.y + (gGameInfo->data[2624] + 0x3E8);
    this->unk_16C.z = this->unk_16C.z + (gGameInfo->data[2625] + 0xBB8);
    func_8097923C(this, globalCtx);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A238.s")
#endif

//s32 func_8097A2B4(void *arg0, GlobalContext* globalCtx);
void func_8097A2B4(void *arg0, GlobalContext* globalCtx);
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

void func_8097A320(DemoGj* this, GlobalContext* globalCtx);
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

void func_8097A36C(DemoGj* this, GlobalContext* globalCtx);
/*
void func_8097A36C(DemoGj* this, GlobalContext* globalCtx) {
    if (func_8097983C() != 0) {
        Actor_Kill(&this->dyna.actor);
    }
}*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A36C.s")

void func_8097A39C(DemoGj* this, GlobalContext* globalCtx) {
    func_80978EE4(this, globalCtx);
    func_8097A320(this, globalCtx);
}

void func_8097A3CC(DemoGj* this, GlobalContext* globalCtx) {
    func_8097A238(this, globalCtx);
    func_8097A36C(this, globalCtx);
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

void func_8097A474(DemoGj* this, GlobalContext* globalCtx);
#ifdef NON_MATCHING
void func_8097A474(DemoGj* this, GlobalContext* globalCtx) {
    Actor_MoveForward(&this->dyna.actor);
    this->unk_16C.x = this->unk_16C.x + gGameInfo->data[2636];
    this->unk_16C.y = this->unk_16C.y + (gGameInfo->data[2637] + 0x3E8);
    this->unk_16C.z = this->unk_16C.z + (gGameInfo->data[2638] + 0xBB8);
    func_8097923C(this, globalCtx);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A474.s")
#endif

void func_8097A4F0(DemoGj* this, GlobalContext* globalCtx);
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

void func_8097A53C(DemoGj* this, GlobalContext* globalCtx);
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
    func_8097A4F0(this, globalCtx);
}

void func_8097A59C(DemoGj* this, GlobalContext* globalCtx) {
    func_8097A474(this, globalCtx);
    func_8097A53C(this, globalCtx);
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

void func_8097A644(DemoGj* this, GlobalContext* globalCtx);
#ifdef NON_MATCHING
void func_8097A644(DemoGj* this, GlobalContext* globalCtx) {
    Actor_MoveForward(&this->dyna.actor);
    this->unk_16C.x = this->unk_16C.x + gGameInfo->data[2649];
    this->unk_16C.y = this->unk_16C.y + (gGameInfo->data[2650] + 0x3E8);
    this->unk_16C.z = this->unk_16C.z + (gGameInfo->data[2651] + 0xBB8);
    func_8097923C(this, globalCtx);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A644.s")
#endif

void func_8097A6C0(DemoGj* this, GlobalContext* globalCtx);
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

void func_8097A70C(DemoGj* this, GlobalContext* globalCtx);
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
    func_8097A6C0(this, globalCtx);
}

void func_8097A76C(DemoGj* this, GlobalContext* globalCtx) {
    func_8097A644(this, globalCtx);
    func_8097A70C(this, globalCtx);
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

void func_8097A814(DemoGj* this, GlobalContext* globalCtx);
#ifdef NON_MATCHING
void func_8097A814(DemoGj* this, GlobalContext* globalCtx) {
    Actor_MoveForward(&this->dyna.actor);
    this->unk_16C.x = (s16) (this->unk_16C.x + gGameInfo->data[2662]);
    this->unk_16C.y = (s16) (this->unk_16C.y+ (gGameInfo->data[2663] + 0x3E8));
    this->unk_16C.z = (s16) (this->unk_16C.z + (gGameInfo->data[2664] + 0xBB8));
    func_8097923C(this, globalCtx);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A814.s")
#endif

void func_8097A890(DemoGj *this, GlobalContext *globalCtx);
/*
void func_8097A890(DemoGj *this, GlobalContext *globalCtx) {
    if (func_80979818() != 0) {
        func_80979860(this, globalCtx);
        this->unk_164 = 0xC;
        this->unk_168 = 0xD;
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A890.s")

void func_8097A8DC(DemoGj *this, GlobalContext *globalCtx);
/*
void func_8097A8DC(DemoGj *this, GlobalContext *globalCtx) {
    if (func_8097983C() != 0) {
        Actor_Kill((Actor *) this);
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A8DC.s")

void func_8097A90C(DemoGj *this, GlobalContext *globalCtx) {
    func_80978EE4(this, globalCtx);
    func_8097A890(this, globalCtx);
}

void func_8097A93C(DemoGj *this, GlobalContext *globalCtx) {
    func_8097A814(this, globalCtx);
    func_8097A8DC(this, globalCtx);
}

void func_8097A96C(DemoGj *this, GlobalContext *globalCtx) {
    func_80979030(this, globalCtx, &D_06002E80);
}

void func_8097A990(DemoGj *this, GlobalContext *globalCtx) {
    func_8097911C(this, globalCtx, &D_06002E80);
}

void func_8097A9B4(DemoGj *this, GlobalContext *globalCtx) {
    func_80978FCC(this, globalCtx, 6, 7, &D_060033E0);
}

void func_8097A9E4(DemoGj *this, GlobalContext *globalCtx);
/*
void func_8097A9E4(DemoGj *this, GlobalContext *globalCtx) {
    Actor_MoveForward((Actor *) this);
    this->unk_16C.x = this->unk_16C.x + gGameInfo->data[2675];
    this->unk_16C.y = this->unk_16C.y + (gGameInfo->data[2676] + 0x3E8);
    this->unk_16C.z = this->unk_16C.z + (gGameInfo->data[2677] + 0xBB8);
    func_8097923C(this, globalCtx);
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A9E4.s")

void func_8097AA60(DemoGj *this, GlobalContext *globalCtx);
/*
void func_8097AA60(DemoGj *this, GlobalContext *globalCtx) {
    if (func_80979818() != 0) {
        func_80979860(this, globalCtx);
        this->unk_164 = 0xD;
        this->unk_168 = 0xE;
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AA60.s")

void func_8097AAAC(DemoGj *this, GlobalContext *globalCtx);
/*
void func_8097AAAC(DemoGj *this, GlobalContext *globalCtx) {
    if (func_8097983C() != 0) {
        Actor_Kill((Actor *) this);
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AAAC.s")

void func_8097AADC(DemoGj *this, GlobalContext *globalCtx) {
    func_80978EE4(this, globalCtx);
    func_8097AA60(this, globalCtx);
}

void func_8097AB0C(DemoGj *this, GlobalContext *globalCtx) {
    func_8097A9E4(this, globalCtx);
    func_8097AAAC(this, globalCtx);
}

void func_8097AB3C(DemoGj *this, GlobalContext *globalCtx) {
    func_80979030(this, globalCtx, &D_06003190);
}

void func_8097AB60(DemoGj *this, GlobalContext *globalCtx) {
    func_8097911C(this, globalCtx, &D_06003190);
}

void func_8097AB84(DemoGj *this, GlobalContext *globalCtx) {
    func_80978FCC(this, globalCtx, 7, 8, &D_06003AF0);
}

void func_8097ABB4(DemoGj *this, GlobalContext *globalCtx);
/*
void func_8097ABB4(DemoGj *this, GlobalContext *globalCtx) {
    Actor_MoveForward((Actor *) this);
    this->unk_16C.x = this->unk_16C.x + gGameInfo->data[2607];
    this->unk_16C.y = this->unk_16C.y + (gGameInfo->data[2606] + 0x3E8);
    this->unk_16C.z = this->unk_16C.z + (gGameInfo->data[2605] + 0xBB8);
    func_8097923C(this, globalCtx);
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097ABB4.s")

void func_8097AC30(DemoGj *this, GlobalContext *globalCtx);
/*void func_8097AC30(DemoGj *this, GlobalContext *globalCtx) {
    if (this->unk_17C == 0) {
        if (((u32) globalCtx->gameplayFrames % 3U) == 2) {
            this = this;
            func_80978AFC(globalCtx, &D_8097BEA0, 300.0f);
        }
        func_80979F9C(this);
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AC30.s")

void func_8097AC9C(DemoGj *this, GlobalContext *globalCtx);
/*
void func_8097AC9C(DemoGj *this, GlobalContext *globalCtx) {
    if (func_80979818() != 0) {
        func_80979860(this, globalCtx);
        this->unk_164 = 0xE;
        this->unk_168 = 0xF;
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AC9C.s")

void func_8097ACE8(DemoGj *this, GlobalContext *globalCtx);
/*
void func_8097ACE8(DemoGj *this, GlobalContext *globalCtx) {
    if (func_8097983C() != 0) {
        Actor_Kill((Actor *) this);
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097ACE8.s")

void func_8097AD18(DemoGj *this, GlobalContext *globalCtx) {
    func_80978EE4(this, globalCtx);
    func_8097AC9C(this, globalCtx);
}

void func_8097AD48(DemoGj *this, GlobalContext *globalCtx) {
    func_8097ABB4(this, globalCtx);
    func_8097ACE8(this, globalCtx);
}

void func_8097AD78(DemoGj *this, GlobalContext *globalCtx) {
    func_80979030(this, globalCtx, &D_06003710);
}

void func_8097AD9C(DemoGj *this, GlobalContext *globalCtx) {
    func_8097911C(this, globalCtx, &D_06003710);
}

void func_8097ADC0(DemoGj *this, GlobalContext *globalCtx) {
    func_80978FCC(this, globalCtx, 0, 1, &D_06001B70);
}

void func_8097ADF0(DemoGj *this, GlobalContext *globalCtx) {
    func_80978EE4(this, globalCtx);
    func_8097A07C(this, globalCtx);
    func_8097A2B4(this, globalCtx);
    func_8097AC30(this, globalCtx);
}

void func_8097AE38(DemoGj *this, GlobalContext *globalCtx) {
    func_80979030(this, globalCtx, &D_06000DC0);
}

void func_8097AE5C(DemoGj *this, GlobalContext *globalCtx) {
    func_80978FCC(this, globalCtx, 0xF, 0, 0);
    func_8097895C(this, globalCtx, &this->unk_184, &D_8097BDE0);
    func_8097895C(this, globalCtx, &this->unk_1D0, &D_8097BDE0);
    func_8097895C(this, globalCtx, &this->unk_21C, &D_8097BDE0);
}

void func_8097AEDC(DemoGj *this, GlobalContext *globalCtx) {
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AEE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B080.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B0EC.s")

void func_8097B128(DemoGj *this, GlobalContext *globalCtx);
/*
void func_8097B128(DemoGj *this, GlobalContext *globalCtx) {
    DemoGj *temp_a0;
    Vec3f *temp_v0;

    temp_a0 = this;
    if (func_8097983C() != 0) {
        this = temp_a0;
        func_80978F60(temp_a0, globalCtx, &D_06001F70);
        this->unk_164 = 0x12;
        this->unk_168 = 0x10;
        temp_v0 = &this->dyna.actor.scale;
        temp_v0->x = temp_v0->x * 0.8f;
        temp_v0->y = temp_v0->y * 0.8f;
        temp_v0->z = temp_v0->z * 0.8f;
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B128.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B1B4.s")

void func_8097B22C(DemoGj *this, GlobalContext *globalCtx);
/*
void func_8097B22C(DemoGj *this, GlobalContext *globalCtx) {
    ? sp30;
    f32 sp28;
    ? sp24;

    if (func_809797E4(4) != 0) {
        Actor_Kill((Actor *) this);
    } else if (func_8097B1B4(this, globalCtx) != 0) {
        sp30.unk0 = (s32) D_8097BEAC.unk0;
        sp30.unk4 = (s32) D_8097BEAC.unk4;
        sp30.unk8 = (s32) D_8097BEAC.unk8;
        func_80978B90(this, globalCtx);
        func_8097B0EC(this, globalCtx, &sp30);
        Actor_Kill((Actor *) this);
    } else if (this->unk_268 != 0) {
        sp24.unk0 = (s32) this->unk26C;
        sp24.unk4 = (s32) this->unk270;
        sp24.unk8 = (s32) this->unk274;
        sp28 = 0.0f;
        func_80978B90(this, globalCtx);
        func_8097B0EC(this, globalCtx, &sp24);
        Actor_Kill((Actor *) this);
    }
    func_8097AEE8(this, globalCtx);
    func_8097B080(this, globalCtx);
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B22C.s")

void func_8097B340(DemoGj *this, GlobalContext *globalCtx) {
    func_80978EE4(this, globalCtx);
    func_8097B128(this, globalCtx);
}

void func_8097B370(DemoGj *this, GlobalContext *globalCtx) {
    func_8097B22C(this, globalCtx);
    func_8097AEDC(this, globalCtx);
}

void func_8097B3A0(DemoGj *this, GlobalContext *globalCtx) {
    func_80979030(this, globalCtx, &D_06001D20);
}

void func_8097B3C4(DemoGj *this, GlobalContext *globalCtx) {
    func_80978FCC(this, globalCtx, 0x10, 0, 0);
    func_8097895C(this, globalCtx, &this->unk_184, &D_8097BE0C);
    func_8097895C(this, globalCtx, &this->unk_1D0, &D_8097BE0C);
    func_8097895C(this, globalCtx, &this->unk_21C, &D_8097BE0C);
}

void func_8097B444(DemoGj *this, GlobalContext *globalCtx) {
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B450.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B5A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B688.s")

void func_8097B6C4(DemoGj *this, GlobalContext *globalCtx);
/*
void func_8097B6C4(DemoGj *this, GlobalContext *globalCtx) {
    DemoGj *temp_a0;
    Vec3f *temp_v0;

    temp_a0 = this;
    if (func_8097983C() != 0) {
        this = temp_a0;
        func_80978F60(temp_a0, globalCtx, &D_06002448);
        this->unk_164 = 0x13;
        this->unk_168 = 0x11;
        temp_v0 = &this->dyna.actor.scale;
        temp_v0->x = temp_v0->x * 0.8f;
        temp_v0->y = temp_v0->y * 0.8f;
        temp_v0->z = temp_v0->z * 0.8f;
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B6C4.s")

void func_8097B750(DemoGj *this, GlobalContext *globalCtx);
/*
void func_8097B750(DemoGj *this, GlobalContext *globalCtx) {
    ? sp30;
    f32 sp28;
    ? sp24;

    if (func_809797E4(4) != 0) {
        Actor_Kill((Actor *) this);
    } else if (func_8097B610(this, globalCtx) != 0) {
        sp30.unk0 = (s32) D_8097BEB8.unk0;
        sp30.unk4 = (s32) D_8097BEB8.unk4;
        sp30.unk8 = (s32) D_8097BEB8.unk8;
        func_80978B90(this, globalCtx);
        func_8097B688(this, globalCtx, &sp30);
        Actor_Kill((Actor *) this);
    } else if (this->unk_268 != 0) {
        sp24.unk0 = (s32) this->unk26C;
        sp24.unk4 = (s32) this->unk270;
        sp24.unk8 = (s32) this->unk274;
        sp28 = 0.0f;
        func_80978B90(this, globalCtx);
        func_8097B688(this, globalCtx, &sp24);
        Actor_Kill((Actor *) this);
    }
    func_8097B450(this, globalCtx);
    func_8097B5A4(this, globalCtx);
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B750.s")

void func_8097B864(DemoGj *this, GlobalContext *globalCtx) {
    func_80978EE4(this, globalCtx);
    func_8097B6C4(this, globalCtx);
}

void func_8097B894(DemoGj *this, GlobalContext *globalCtx) {
    func_8097B750(this, globalCtx);
    func_8097B444(this, globalCtx);
}

void func_8097B8C4(DemoGj *this, GlobalContext *globalCtx) {
    func_80979030(this, globalCtx, &D_06002160);
}

void func_8097B8E8(DemoGj *this, GlobalContext *globalCtx) {
    func_80978FCC(this, globalCtx, 0x11, 0, 0);
    func_8097895C(this, globalCtx, &this->unk_184, &D_8097BE38);
}

void func_8097B930(DemoGj *this, GlobalContext *globalCtx) {
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B93C.s")

void func_8097B9BC(DemoGj *this, GlobalContext *globalCtx);
/*
void func_8097B9BC(DemoGj *this, GlobalContext *globalCtx) {
    DemoGj *temp_a0;
    Vec3f *temp_v0;

    temp_a0 = this;
    if (func_8097983C() != 0) {
        this = temp_a0;
        func_80978F60(temp_a0, globalCtx, (CollisionHeader *) &D_06003AF0);
        this->unk_164 = 0x14;
        this->unk_168 = 0x12;
        temp_v0 = &this->dyna.actor.scale;
        temp_v0->x = temp_v0->x * 0.8f;
        temp_v0->y = temp_v0->y * 0.8f;
        temp_v0->z = temp_v0->z * 0.8f;
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B9BC.s")

void func_8097BA48(DemoGj *this, GlobalContext *globalCtx);
/*
void func_8097BA48(DemoGj *this, GlobalContext *globalCtx) {
    ? sp3C;
    f32 sp34;
    ? sp30;
    ColliderCylinder *temp_s2;
    ColliderCylinder *phi_s2;

    if (func_809797E4(4) != 0) {
        Actor_Kill((Actor *) this);
        phi_s2 = &this->unk_184;
    } else {
        temp_s2 = &this->unk_184;
        if (func_809789A4(this, globalCtx, temp_s2) != 0) {
            sp3C.unk0 = (s32) D_8097BEC4.unk0;
            sp3C.unk4 = (s32) D_8097BEC4.unk4;
            sp3C.unk8 = (s32) D_8097BEC4.unk8;
            func_80978B90(this, globalCtx);
            func_8097B93C(this, globalCtx, &sp3C);
            Actor_Kill((Actor *) this);
            phi_s2 = temp_s2;
        } else {
            phi_s2 = temp_s2;
            if (this->unk_268 != 0) {
                sp30.unk0 = (s32) this->unk26C;
                sp30.unk4 = (s32) this->unk270;
                sp30.unk8 = (s32) this->unk274;
                sp34 = 0.0f;
                func_80978B90(this, globalCtx);
                func_8097B93C(this, globalCtx, &sp30);
                Actor_Kill((Actor *) this);
                phi_s2 = temp_s2;
            }
        }
    }
    Collider_UpdateCylinder((Actor *) this, phi_s2);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, (Collider *) phi_s2);
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097BA48.s")

void func_8097BB78(DemoGj *this, GlobalContext *globalCtx) {
    func_80978EE4(this, globalCtx);
    func_8097B9BC(this, globalCtx);
}

void func_8097BBA8(DemoGj *this, GlobalContext *globalCtx) {
    func_8097BA48(this, globalCtx);
    func_8097B930(this, globalCtx);
}

void func_8097BBD8(DemoGj *this, GlobalContext *globalCtx) {
    func_80979030(this, globalCtx, &D_06003710);
}

void DemoGj_Update(Actor* thisx, GlobalContext* globalCtx) {
    DemoGj *this = THIS;
    DemoGjActionFunc temp_v1;

    if (this->unk_164 < 0 || this->unk_164 >= 0x15 || (temp_v1 = D_8097BED0[this->unk_164]) == NULL) {
        // The main mode is abnormal!!!!!!!!!!!!!!!!!!!!!!!!!
        osSyncPrintf("\x1b[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n\x1b[m");
        return;
    }

    temp_v1(this, globalCtx);
}

void DemoGj_Init(Actor *thisx, GlobalContext *globalCtx) {
    u32 temp_t6;
    DemoGj *this = THIS;

    temp_t6 = func_80978950(this) - 4;
    switch (temp_t6) {
    case 0:
        func_8097ADC0(this, globalCtx);
        return;
    case 4:
        func_80979FD0(this, globalCtx);
        return;
    case 5:
        func_8097A208(this, globalCtx);
        return;
    case 6:
        func_8097A444(this, globalCtx);
        return;
    case 7:
        func_8097A614(this, globalCtx);
        return;
    case 8:
        func_8097A7E4(this, globalCtx);
        return;
    case 9:
        func_8097A9B4(this, globalCtx);
        return;
    case 10:
        func_8097AB84(this, globalCtx);
        return;
    case 12:
        func_8097AE5C(this, globalCtx);
        return;
    case 13:
        func_8097B3C4(this, globalCtx);
        return;
    case 18:
        func_8097B8E8(this, globalCtx);
        return;

    default:
        // Demo_Gj_Actor_ct There is no such argument!!!!!!!!!!!!!!!!!!!!!!
        osSyncPrintf("\x1b[31mDemo_Gj_Actor_ct そんな引数は無い!!!!!!!!!!!!!!!!!!!!!!\n\x1b[m", globalCtx, this);
        Actor_Kill(&this->dyna.actor);
    }
}

void func_8097BD70(DemoGj *this, GlobalContext *globalCtx) {
}

void DemoGj_Draw(Actor *thisx, GlobalContext *globalCtx) {
    DemoGj *this = THIS;
    DemoGjActionFunc temp_v1;

    if (this->unk_168 < 0 || this->unk_168 >= 0x13 || (temp_v1 = D_8097BF24[this->unk_168]) == NULL) {
        // The drawing mode is abnormal!!!!!!!!!!!!!!!!!!!!!!!!!
        osSyncPrintf("\x1b[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n\x1b[m");
        return;
    }

    temp_v1(this, globalCtx);
}
