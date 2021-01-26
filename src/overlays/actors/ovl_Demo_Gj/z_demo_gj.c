#include "z_demo_gj.h"
#include "overlays/actors/ovl_Boss_Ganon2/z_boss_ganon2.h"

#define FLAGS 0x00000030

#define THIS ((DemoGj*)thisx)

void DemoGj_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoGj_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoGj_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoGj_Draw(Actor* thisx, GlobalContext* globalCtx);

extern Gfx D_06000DC0;
extern Gfx D_06000EA0;
extern CollisionHeader D_06001B70;
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
extern CollisionHeader D_060033E0;
extern Gfx D_06003710;
extern CollisionHeader D_06003AF0;


// sCylinderInit
static ColliderCylinderInitType1 D_8097BDE0 = {
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

static ColliderCylinderInitType1 D_8097BE0C = {
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

static ColliderCylinderInitType1 D_8097BE38 = {
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

// velocity
static Vec3f D_8097BE64 = {
    0.0f, 6.0f, 0.0f
};

// accel 
static Vec3f D_8097BE70 = {
    0.0f, 0.0f, 0.0f
};

// primColor
static Color_RGBA8 D_8097BE7C = {
    0, 0, 0, 0
};

// envColor
static Color_RGBA8 D_8097BE80 = {
    0, 0, 0, 0
};


// D_8097BE84
static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

static Vec3f D_8097BE88 = {
    -371.0f, 1188.0f, -303.0f
};

static Vec3f D_8097BE94 = {
    -119.0f, 1056.0f, -147.0f
};

static Vec3f D_8097BEA0 = {
    -6.0f, 1053.0f, -473.0f
};

/*
glabel D_8097BEAC
 .word 0x00000000, 0x00000000, 0x00000000
*/
static Vec3f D_8097BEAC = {
    0.0f, 0.0f, 0.0f
};

/*
glabel D_8097BEB8
 .word 0x00000000, 0x00000000, 0x00000000
*/
static Vec3f D_8097BEB8 = {
    0.0f, 0.0f, 0.0f
};

/*
glabel D_8097BEC4
 .word 0x00000000, 0x00000000, 0x00000000
*/
static Vec3f D_8097BEC4 = {
    0.0f, 0.0f, 0.0f
};



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

s32 func_809789A4(DemoGj* this, GlobalContext* globalCtx, Collider* collider) {
    if (Actor_GetCollidedExplosive(globalCtx, collider) != 0) {
        return 1;
    }
    return 0;
}

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

void func_80978C20(DemoGj *this, GlobalContext *globalCtx, Vec3f *arg2, Vec3f *arg3) {
    Vec3f pos;
    Vec3f velocity;

    s32 phi_s0;
    f32 temp_f0;

    s16 theta = 0;

    s32 i;

    for (i = 0; i < 6; i++) {
        pos.x = Math_SinS(theta) * 16.0f;
        pos.y = (Rand_ZeroOne() * 5.0f) + 2.0f;
        pos.z = Math_CosS(theta) * 16.0f;

        velocity.x = (pos.x * 0.6f) + (12.0f * arg3->x);
        velocity.y = (Rand_ZeroOne() * 36.0f) + 6.0f;
        velocity.z = (pos.z * 0.6f) + (12.0f * arg3->z);

        pos.x += arg2->x;
        pos.y += arg2->y;
        pos.z += arg2->z;

        temp_f0 = Rand_ZeroOne();
        if (temp_f0 < 0.1f) {
            phi_s0 = 0x61;
        } else if (temp_f0 < 0.7f) {
            phi_s0 = 0x41;
        }
        else {
            phi_s0 = 0x21;
        }

        EffectSsKakera_Spawn(
            globalCtx, 
            &pos, 
            &velocity, 
            arg2, 
            -0xC8, 
            phi_s0, 
            0xA, 
            0xA, 
            0, 
            //(s32) ((temp_f20 * 20.0f) + 20.0f), 
            (s32) ((Rand_ZeroOne() * 20.0f) + 20.0f), 
            0x14, 
            0x12C, 
            (s32) (Rand_ZeroOne() * 30.0f) + 0x1E, 
            -1, 
            0x186, 
            &D_06000EA0);

        theta += 0x2AAA;
    }

    func_80978AC4(this, globalCtx);
}

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

void func_80978F60(DemoGj* this, GlobalContext* globalCtx, CollisionHeader *arg2);
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
    s32 pad; // Needed for matching.
    GraphicsContext *gfxCtx;
    
    s16 sp56;
    s16 sp54;
    s16 sp52;

    s32 pad2; // Needed for matching.
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
        // Demo_Gj_common_Reflect : This arg_data is not supported = %d
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


s32 func_809797E4(DemoGj *this, s32 arg1);
#ifdef NON_MATCHING
s32 func_809797E4(DemoGj *this, s32 arg1) {
    BossGanon2 *ganon = (BossGanon2 *)this->ganon;
    arg1 &= 0xFF;

    //if ((ganon != 0) && ((arg1 & 0xFF) == ganon->unk314)) {
    if ((ganon != NULL) && (arg1 == *((u8 *)ganon + 0x314))) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_809797E4.s")
#endif

s32 func_80979818(DemoGj *this, GlobalContext* globalCtx) {
    return func_809797E4(this, 1);
}

s32  func_8097983C(DemoGj *this, GlobalContext* globalCtx) {
    return func_809797E4(this, 2);
}

void func_80979860(DemoGj *this, GlobalContext *globalCtx);
#ifdef NON_MATCHING
void func_80979860(DemoGj *this, GlobalContext *globalCtx) {
    //f32 sp24;
    //f32 sp20;
    Actor *temp_v0;
    Actor *temp_v1_8;
    PosRot *temp_v0_2;
    Vec3s *temp_v1;
    Vec3s *temp_v1_2;
    Vec3s *temp_v1_3;
    Vec3s *temp_v1_4;
    Vec3s *temp_v1_5;
    Vec3s *temp_v1_6;
    Vec3s *temp_v1_7;
    f32 temp_f10;
    //f32 temp_f12;
    f32 temp_f12_2;
    //f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f4;
    f32 temp_f6;
    f32 temp_f8;
    u32 temp_t6;

    temp_v0 = this->ganon;
    if (temp_v0 != 0) {
        temp_f4 = this->dyna.actor.world.pos.x;
        temp_f6 = temp_v0->world.pos.x;
        temp_f8 = this->dyna.actor.world.pos.z;
        temp_f10 = temp_v0->world.pos.z;
        //temp_f12 = temp_f4 - temp_f6;
        //temp_f14 = temp_f8 - temp_f10;
        //sp24 = temp_f12;
        //sp20 = temp_f14;
        temp_t6 = func_80978950(this) - 8;
        switch (temp_t6) {
        case 0:
            temp_v1 = &this->unk_172;
            this->dyna.actor.speedXZ = (f32) gGameInfo->data[2608] + 10.0f;
            this->dyna.actor.velocity.y = (f32) gGameInfo->data[2609] + 40.0f;
            temp_v1->x = gGameInfo->data[2610];
            temp_v1->y = gGameInfo->data[2611] + 0x3E8;
            temp_v1->z = gGameInfo->data[2612] + 0xBB8;
            this->dyna.actor.minVelocityY = ((f32) gGameInfo->data[2613] * 0.01f) + -29.0f;
            this->dyna.actor.gravity = ((f32) gGameInfo->data[2614] * 0.01f) + -5.0f;
            break;
        case 1:
            temp_v1_2 = &this->unk_172;
            this->dyna.actor.speedXZ = (f32) gGameInfo->data[2621] + 10.0f;
            this->dyna.actor.velocity.y = (f32) gGameInfo->data[2622] + 40.0f;
            temp_v1_2->x = gGameInfo->data[2623];
            temp_v1_2->y = gGameInfo->data[2624] + 0x3E8;
            temp_v1_2->z = gGameInfo->data[2625] + 0xBB8;
            this->dyna.actor.minVelocityY = ((f32) gGameInfo->data[2626] * 0.01f) + -29.0f;
            this->dyna.actor.gravity = ((f32) gGameInfo->data[2627] * 0.01f) + -5.0f;
            break;
        case 2:
            temp_v1_3 = &this->unk_172;
            this->dyna.actor.speedXZ = (f32) gGameInfo->data[2634] + 10.0f;
            this->dyna.actor.velocity.y = (f32) gGameInfo->data[2635] + 40.0f;
            temp_v1_3->x = gGameInfo->data[2636];
            temp_v1_3->y = gGameInfo->data[2637] + 0x3E8;
            temp_v1_3->z = gGameInfo->data[2638] + 0xBB8;
            this->dyna.actor.minVelocityY = ((f32) gGameInfo->data[2639] * 0.01f) + -29.0f;
            this->dyna.actor.gravity = ((f32) gGameInfo->data[2640] * 0.01f) + -5.0f;
            break;
        case 3:
            temp_v1_4 = &this->unk_172;
            this->dyna.actor.speedXZ = (f32) gGameInfo->data[2647] + 10.0f;
            this->dyna.actor.velocity.y = (f32) gGameInfo->data[2648] + 40.0f;
            temp_v1_4->x = gGameInfo->data[2649];
            temp_v1_4->y = gGameInfo->data[2650] + 0x3E8;
            temp_v1_4->z = gGameInfo->data[2651] + 0xBB8;
            this->dyna.actor.minVelocityY = ((f32) gGameInfo->data[2652] * 0.01f) + -29.0f;
            this->dyna.actor.gravity = ((f32) gGameInfo->data[2653] * 0.01f) + -5.0f;
            break;
        case 4:
            temp_v1_5 = &this->unk_172;
            this->dyna.actor.speedXZ = (f32) gGameInfo->data[2660] + 10.0f;
            this->dyna.actor.velocity.y = (f32) gGameInfo->data[2661] + 40.0f;
            temp_v1_5->x = gGameInfo->data[2662];
            temp_v1_5->y = gGameInfo->data[2663] + 0x3E8;
            temp_v1_5->z = gGameInfo->data[2664] + 0xBB8;
            this->dyna.actor.minVelocityY = ((f32) gGameInfo->data[2665] * 0.01f) + -29.0f;
            this->dyna.actor.gravity = ((f32) gGameInfo->data[2666] * 0.01f) + -5.0f;
            break;
        case 5:
            temp_v1_6 = &this->unk_172;
            this->dyna.actor.speedXZ = (f32) gGameInfo->data[2673] + 10.0f;
            this->dyna.actor.velocity.y = (f32) gGameInfo->data[2674] + 40.0f;
            temp_v1_6->x = gGameInfo->data[2675];
            temp_v1_6->y = gGameInfo->data[2676] + 0x3E8;
            temp_v1_6->z = gGameInfo->data[2677] + 0xBB8;
            this->dyna.actor.minVelocityY = ((f32) gGameInfo->data[2678] * 0.01f) + -29.0f;
            this->dyna.actor.gravity = ((f32) gGameInfo->data[2679] * 0.01f) + -5.0f;
            break;
        case 6:
            temp_v1_7 = &this->unk_172;
            this->dyna.actor.speedXZ = (f32) gGameInfo->data[2686] + 10.0f;
            this->dyna.actor.velocity.y = (f32) gGameInfo->data[2687] + 70.0f;
            temp_v1_7->x = gGameInfo->data[2607];
            temp_v1_7->y = gGameInfo->data[2606] + 0x3E8;
            temp_v1_7->z = gGameInfo->data[2605] + 0xBB8;
            this->dyna.actor.minVelocityY = ((f32) gGameInfo->data[2604] * 0.01f) + -29.0f;
            this->dyna.actor.gravity = ((f32) gGameInfo->data[2603] * 0.01f) + -5.0f;
            break;
        default:
            //sp20 = temp_f14;
            //sp24 = temp_f12;
            // Demo_Gj_Setup_Move_common : This arg_data is not supported = %d
            osSyncPrintf((const char *) "\x1b[31mDemo_Gj_Setup_Move_common : そんなarg_dataには対応していない = %d\n\x1b[m", this->dyna.actor.params);
            break;
        }

        if (((temp_f4 - temp_f6) == 0.0f) && ((temp_f8 - temp_f10) == 0.0f)) {
            temp_v1_8 = globalCtx->actorCtx.actorLists[2].head;
            temp_v0_2 = &this->dyna.actor.world;
            temp_f12_2 = temp_v1_8->world.pos.x - temp_v0_2->pos.x;
            temp_f14_2 = temp_v1_8->world.pos.z - temp_v0_2->pos.z;
            if (temp_f12_2 != 0.0f || temp_f14_2 != 0.0f) {
                this->dyna.actor.world.rot.y = (s16) (s32) (Math_FAtan2F(temp_f12_2, temp_f14_2) * 10430.378f);
                return;
            }
        } else {
            this->dyna.actor.world.rot.y = (s16) (s32) (Math_FAtan2F(temp_f4 - temp_f6, temp_f8 - temp_f10) * 10430.378f);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_80979860.s")
#endif

void func_80979F9C(DemoGj* this){
    if (func_809797E4(this, 3) != 0) {
        this->unk_17C = 1;
    }

}

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

void func_8097A0E4(DemoGj *this, GlobalContext *globalCtx) {
    if (func_80979818(this, globalCtx) != 0) {
        func_80979860(this, globalCtx);
        this->unk_164 = 8;
        this->unk_168 = 9;
    }
}

void func_8097A130(DemoGj *this, GlobalContext* globalCtx) {
    if (func_8097983C(this, globalCtx) != 0) {
        Actor_Kill(&this->dyna.actor);
    }
}

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

void func_8097A320(DemoGj* this, GlobalContext* globalCtx) {
    if (func_80979818(this, globalCtx) != 0) {
        func_80979860(this, globalCtx);
        this->unk_164 = 9;
        this->unk_168 = 0xA;
    }
}

void func_8097A36C(DemoGj* this, GlobalContext* globalCtx) {
    if (func_8097983C(this, globalCtx) != 0) {
        Actor_Kill(&this->dyna.actor);
    }
}

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

void func_8097A4F0(DemoGj* this, GlobalContext* globalCtx) {
    if (func_80979818(this, globalCtx) != 0) {
        func_80979860(this, globalCtx);        
        this->unk_164 = 0xA;
        this->unk_168 = 0xB;
    }
}

void func_8097A53C(DemoGj* this, GlobalContext* globalCtx) {
    if (func_8097983C(this, globalCtx) != 0) {
        Actor_Kill(&this->dyna.actor);
    }
}

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

void func_8097A6C0(DemoGj* this, GlobalContext* globalCtx) {
    if (func_80979818(this, globalCtx) != 0) {
        func_80979860(this, globalCtx);
        this->unk_164 = 0xB;
        this->unk_168 = 0xC;
    }
}

void func_8097A70C(DemoGj* this, GlobalContext* globalCtx) {
    if (func_8097983C(this, globalCtx) != 0) {
        Actor_Kill(&this->dyna.actor);
    }
}

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

void func_8097A890(DemoGj *this, GlobalContext *globalCtx) {
    if (func_80979818(this, globalCtx) != 0) {
        func_80979860(this, globalCtx);
        this->unk_164 = 0xC;
        this->unk_168 = 0xD;
    }
}

void func_8097A8DC(DemoGj *this, GlobalContext *globalCtx) {
    if (func_8097983C(this, globalCtx) != 0) {
        Actor_Kill(&this->dyna.actor);
    }
}

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
    Actor_MoveForward(&this->dyna.actor);
    this->unk_16C.x = this->unk_16C.x + gGameInfo->data[2675];
    this->unk_16C.y = this->unk_16C.y + (gGameInfo->data[2676] + 0x3E8);
    this->unk_16C.z = this->unk_16C.z + (gGameInfo->data[2677] + 0xBB8);
    func_8097923C(this, globalCtx);
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097A9E4.s")

void func_8097AA60(DemoGj *this, GlobalContext *globalCtx) {
    if (func_80979818(this, globalCtx) != 0) {
        func_80979860(this, globalCtx);
        this->unk_164 = 0xD;
        this->unk_168 = 0xE;
    }
}

void func_8097AAAC(DemoGj *this, GlobalContext *globalCtx) {
    if (func_8097983C(this, globalCtx) != 0) {
        Actor_Kill(&this->dyna.actor);
    }
}

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
    Actor_MoveForward(&this->dyna.actor);
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

void func_8097AC9C(DemoGj *this, GlobalContext *globalCtx) {
    if (func_80979818(this, globalCtx) != 0) {
        func_80979860(this, globalCtx);
        this->unk_164 = 0xE;
        this->unk_168 = 0xF;
    }
}

void func_8097ACE8(DemoGj *this, GlobalContext *globalCtx) {
    if (func_8097983C(this, globalCtx) != 0) {
        Actor_Kill(&this->dyna.actor);
    }
}

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
    func_80978FCC(this, globalCtx, 0xF, 0, NULL);
    func_8097895C(this, globalCtx, &this->unk_184, &D_8097BDE0);
    func_8097895C(this, globalCtx, &this->unk_1D0, &D_8097BDE0);
    func_8097895C(this, globalCtx, &this->unk_21C, &D_8097BDE0);
}

void func_8097AEDC(DemoGj *this, GlobalContext *globalCtx) {
}

void func_8097AEE8(DemoGj *this, GlobalContext *globalCtx);
/*
void *func_8097AEE8(void *arg0, ? arg1) {
    s16 sp22;
    f32 sp1C;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;
    s16 temp_a0;
    void *temp_a0_2;
    void *temp_a2;
    void *temp_v0;
    void *temp_v1;

    temp_a0 = arg0->unk32;
    arg0 = arg0;
    sp22 = temp_a0;
    sp1C = Math_CosS(temp_a0);
    temp_f0 = Math_SinS(temp_a0);
    temp_f2 = 20.0f * sp1C;
    temp_v0 = arg0 + 0x24;
    temp_f12 = -20.0f * temp_f0;
    temp_v1 = arg0 + 0x184;
    temp_a0_2 = arg0 + 0x1D0;
    temp_a2 = arg0 + 0x21C;
    temp_f14 = 20.0f * temp_f0;
    temp_f16 = -20.0f * sp1C;
    temp_v1->unk4A = (s16) (s32) ((temp_v0->unk8 + temp_f2) - temp_f12);
    temp_v1->unk46 = (s16) (s32) (temp_v0->unk0 + temp_f14 + temp_f16);
    temp_v1->unk48 = (s16) (s32) temp_v0->unk4;
    temp_a0_2->unk4A = (s16) (s32) ((temp_v0->unk8 + temp_f16) - temp_f14);
    temp_a0_2->unk46 = (s16) (s32) (temp_v0->unk0 + temp_f12 + temp_f2);
    temp_a0_2->unk48 = (s16) (s32) temp_v0->unk4;
    temp_a2->unk4A = (s16) (s32) ((temp_v0->unk8 + (-60.0f * sp1C)) - (60.0f * temp_f0));
    temp_a2->unk46 = (s16) (s32) (temp_v0->unk0 + (-60.0f * temp_f0) + (60.0f * sp1C));
    temp_a2->unk48 = (s16) (s32) temp_v0->unk4;
    return temp_v0;
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097AEE8.s")

void func_8097B080(DemoGj *this, GlobalContext *globalCtx) {
    CollisionCheckContext *temp_a1;
    GlobalContext* glbCtx = globalCtx;
    Collider* unk_184 = &this->unk_184.base;
    Collider* unk_1D0 = &this->unk_1D0.base;
    Collider* unk_21C = &this->unk_21C.base;

    s32 pad[3];

    temp_a1 = &glbCtx->colChkCtx;
    CollisionCheck_SetAC(glbCtx, temp_a1, unk_184);
    CollisionCheck_SetAC(glbCtx, temp_a1, unk_1D0);
    CollisionCheck_SetAC(glbCtx, temp_a1, unk_21C);
}

void func_8097B0EC(DemoGj *this, GlobalContext *globalCtx, Vec3f *arg2) {
    Vec3f aux;

    aux.x = this->dyna.actor.world.pos.x;
    aux.y = this->dyna.actor.world.pos.y;
    aux.z = this->dyna.actor.world.pos.z;

    func_80978C20(this, globalCtx, &aux, arg2);
}

void func_8097B128(DemoGj *this, GlobalContext *globalCtx) {
    Vec3f *scale = &this->dyna.actor.scale;

    if (func_8097983C(this, globalCtx) != 0) {
        func_80978F60(this, globalCtx, &D_06001F70);
        this->unk_164 = 0x12;
        this->unk_168 = 0x10;
        scale->x *= 0.8f;
        scale->y *= 0.8f;
        scale->z *= 0.8f;
    }
}

s32 func_8097B1B4(DemoGj *this, GlobalContext *globalCtx) {
    if (func_809789A4(this, globalCtx, &this->unk_184.base) != 0) {
        return 1;
    }
    if (func_809789A4(this, globalCtx, &this->unk_1D0.base) != 0) {
        return 1;
    }
    if (func_809789A4(this, globalCtx, &this->unk_21C.base) != 0) {
        return 1;
    }
    return 0;
}

void func_8097B22C(DemoGj *this, GlobalContext *globalCtx) {
    s32 pad;

    Vec3f sp30;
    Vec3f sp24;

    Actor* actor = &this->dyna.actor;

    if (func_809797E4(this, 4) != 0) {
        Actor_Kill(actor);
    } else if (func_8097B1B4(this, globalCtx) != 0) {
        sp30 = D_8097BEAC;

        func_80978B90(this, globalCtx);
        func_8097B0EC(this, globalCtx, &sp30);

        Actor_Kill(actor);
    } else if (this->unk_268 != 0) {
        sp24 = this->unk_26C;
        sp24.y = 0.0f;

        func_80978B90(this, globalCtx);
        func_8097B0EC(this, globalCtx, &sp24);

        Actor_Kill(actor);
    }

    func_8097AEE8(this, globalCtx);
    func_8097B080(this, globalCtx);
}

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
    func_80978FCC(this, globalCtx, 0x10, 0, NULL);
    func_8097895C(this, globalCtx, &this->unk_184, &D_8097BE0C);
    func_8097895C(this, globalCtx, &this->unk_1D0, &D_8097BE0C);
    func_8097895C(this, globalCtx, &this->unk_21C, &D_8097BE0C);
}

void func_8097B444(DemoGj *this, GlobalContext *globalCtx) {
}

void func_8097B450(DemoGj *this, GlobalContext *globalCtx);
/*
void *func_8097B450(void *arg0, ? arg1) {
    s16 sp22;
    f32 sp1C;
    f32 temp_f0;
    s16 temp_a0;
    void *temp_a0_2;
    void *temp_a2;
    void *temp_v0;
    void *temp_v1;

    temp_a0 = arg0->unk32;
    arg0 = arg0;
    sp22 = temp_a0;
    sp1C = Math_CosS(temp_a0);
    temp_f0 = Math_SinS(temp_a0);
    temp_v0 = arg0 + 0x24;
    temp_v1 = arg0 + 0x184;
    temp_a0_2 = arg0 + 0x1D0;
    temp_a2 = arg0 + 0x21C;
    temp_v1->unk4A = (s16) (s32) (temp_v0->unk8 - (35.0f * temp_f0));
    temp_v1->unk46 = (s16) (s32) (temp_v0->unk0 + (35.0f * sp1C));
    temp_v1->unk48 = (s16) (s32) temp_v0->unk4;
    temp_a0_2->unk4A = (s16) (s32) (temp_v0->unk8 - (-10.0f * temp_f0));
    temp_a0_2->unk46 = (s16) (s32) (temp_v0->unk0 + (-10.0f * sp1C));
    temp_a0_2->unk48 = (s16) (s32) temp_v0->unk4;
    temp_a2->unk4A = (s16) (s32) (temp_v0->unk8 - (-55.0f * temp_f0));
    temp_a2->unk46 = (s16) (s32) (temp_v0->unk0 + (-55.0f * sp1C));
    temp_a2->unk48 = (s16) (s32) temp_v0->unk4;
    return temp_v0;
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gj/func_8097B450.s")

void func_8097B5A4(DemoGj *this, GlobalContext *globalCtx) {
    CollisionCheckContext *temp_a1;
    GlobalContext* glbCtx = globalCtx;
    Collider* unk_184 = &this->unk_184.base;
    Collider* unk_1D0 = &this->unk_1D0.base;
    Collider* unk_21C = &this->unk_21C.base;

    s32 pad[3];

    glbCtx = globalCtx;
    temp_a1 = &glbCtx->colChkCtx;

    CollisionCheck_SetAC(glbCtx, temp_a1, unk_184);
    CollisionCheck_SetAC(glbCtx, temp_a1, unk_1D0);
    CollisionCheck_SetAC(glbCtx, temp_a1, unk_21C);
}

s32 func_8097B610(DemoGj *this, GlobalContext *globalCtx) {
    if (func_809789A4(this, globalCtx, &this->unk_184.base) != 0) {
        return 1;
    }
    if (func_809789A4(this, globalCtx, &this->unk_1D0.base) != 0) {
        return 1;
    }
    if (func_809789A4(this, globalCtx, &this->unk_21C.base) != 0) {
        return 1;
    }
    return 0;
}


void func_8097B688(DemoGj *this, GlobalContext *globalCtx, Vec3f *arg2) {
    Vec3f aux;

    aux.x = this->dyna.actor.world.pos.x;
    aux.y = this->dyna.actor.world.pos.y;
    aux.z = this->dyna.actor.world.pos.z;
    func_80978C20(this, globalCtx, &aux, arg2);
}

void func_8097B6C4(DemoGj *this, GlobalContext *globalCtx) {
    Vec3f *scale = &this->dyna.actor.scale;

    if (func_8097983C(this, globalCtx) != 0) {
        func_80978F60(this, globalCtx, &D_06002448);
        this->unk_164 = 0x13;
        this->unk_168 = 0x11;
        scale->x *= 0.8f;
        scale->y *= 0.8f;
        scale->z *= 0.8f;
    }
}

void func_8097B750(DemoGj *this, GlobalContext *globalCtx) {
    s32 pad;

    Vec3f sp30;
    Vec3f sp24;

    Actor* actor = &this->dyna.actor;

    if (func_809797E4(this, 4) != 0) {
        Actor_Kill(actor);
    } else if (func_8097B610(this, globalCtx) != 0) {
        sp30 = D_8097BEB8;

        func_80978B90(this, globalCtx);
        func_8097B688(this, globalCtx, &sp30);

        Actor_Kill(actor);
    } else if (this->unk_268 != 0) {
        sp24 = this->unk_26C;
        sp24.y = 0.0f;

        func_80978B90(this, globalCtx);
        func_8097B688(this, globalCtx, &sp24);

        Actor_Kill(actor);
    }

    func_8097B450(this, globalCtx);
    func_8097B5A4(this, globalCtx);
}

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
    func_80978FCC(this, globalCtx, 0x11, 0, NULL);
    func_8097895C(this, globalCtx, &this->unk_184, &D_8097BE38);
}

void func_8097B930(DemoGj *this, GlobalContext *globalCtx) {
}

void func_8097B93C(DemoGj *this, GlobalContext *globalCtx, Vec3f *arg2) {
    Vec3f aux;

    aux.x = this->dyna.actor.world.pos.x;
    aux.y = this->dyna.actor.world.pos.y;
    aux.z = this->dyna.actor.world.pos.z;
    func_80978C20(this, globalCtx, &aux, arg2);

    aux.x = this->dyna.actor.world.pos.x;
    aux.y = this->dyna.actor.world.pos.y + 100.0f;
    aux.z = this->dyna.actor.world.pos.z;
    func_80978C20(this, globalCtx, &aux, arg2);
}

void func_8097B9BC(DemoGj *this, GlobalContext *globalCtx) {
    Vec3f *scale = &this->dyna.actor.scale;

    if (func_8097983C(this, globalCtx) != 0) {
        func_80978F60(this, globalCtx, &D_06003AF0);
        this->unk_164 = 0x14;
        this->unk_168 = 0x12;
        scale->x *= 0.8f;
        scale->y *= 0.8f;
        scale->z *= 0.8f;
    }
}

void func_8097BA48(DemoGj *this, GlobalContext *globalCtx) {
    Actor* actor = &this->dyna.actor;
    ColliderCylinder *colCylinder = &this->unk_184;
    Collider *collider = &colCylinder->base;
    CollisionCheckContext* colChkCtx = &globalCtx->colChkCtx;

    Vec3f sp3C;
    Vec3f sp30;

    if (func_809797E4(this, 4) != 0) {
        Actor_Kill(actor);
    } else if (func_809789A4(this, globalCtx, collider) != 0) {
        sp3C = D_8097BEC4;

        func_80978B90(this, globalCtx);
        func_8097B93C(this, globalCtx, &sp3C);

        Actor_Kill(actor);
    } else if (this->unk_268 != 0) {
        sp30 = this->unk_26C;
        sp30.y = 0.0f;

        func_80978B90(this, globalCtx);
        func_8097B93C(this, globalCtx, &sp30);

        Actor_Kill(actor);
    }

    Collider_UpdateCylinder(actor, colCylinder);
    CollisionCheck_SetAC(globalCtx, colChkCtx, collider);
}

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
