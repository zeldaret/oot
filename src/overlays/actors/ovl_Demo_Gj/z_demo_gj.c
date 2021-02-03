#include "z_demo_gj.h"
#include "vt.h"

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
static ColliderCylinderInitType1 sCylinderInit1 = {
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

static ColliderCylinderInitType1 sCylinderInit2 = {
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

static ColliderCylinderInitType1 sCylinderInit3 = {
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
static Vec3f sVelocity = { 0.0f, 6.0f, 0.0f };

// accel
static Vec3f sAccel = { 0.0f, 0.0f, 0.0f };

// primColor
static Color_RGBA8 sPrimColor = { 0, 0, 0, 0 };

// envColor
static Color_RGBA8 sEnvColor = { 0, 0, 0, 0 };

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

static Vec3f D_8097BE88 = { -371.0f, 1188.0f, -303.0f };

static Vec3f D_8097BE94 = { -119.0f, 1056.0f, -147.0f };

static Vec3f D_8097BEA0 = { -6.0f, 1053.0f, -473.0f };

static Vec3f D_8097BEAC = { 0.0f, 0.0f, 0.0f };

static Vec3f D_8097BEB8 = { 0.0f, 0.0f, 0.0f };

static Vec3f D_8097BEC4 = { 0.0f, 0.0f, 0.0f };

typedef void (*DemoGjActionFunc)(DemoGj*, GlobalContext*);

void DemoGj_Update0(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update1(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update2(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update3(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update4(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update5(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update6(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update7(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update8(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update9(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update10(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update11(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update12(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update13(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update14(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update15(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update16(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update17(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update18(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update19(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Update20(DemoGj* this, GlobalContext* globalCtx);

static DemoGjActionFunc sUpdateFuncs[] = {
    DemoGj_Update0,  DemoGj_Update1,  DemoGj_Update2,  DemoGj_Update3,  DemoGj_Update4,  DemoGj_Update5,
    DemoGj_Update6,  DemoGj_Update7,  DemoGj_Update8,  DemoGj_Update9,  DemoGj_Update10, DemoGj_Update11,
    DemoGj_Update12, DemoGj_Update13, DemoGj_Update14, DemoGj_Update15, DemoGj_Update16, DemoGj_Update17,
    DemoGj_Update18, DemoGj_Update19, DemoGj_Update20,
};

void DemoGj_Draw0(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Draw1(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Draw2(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Draw3(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Draw4(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Draw5(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Draw6(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Draw7(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Draw8(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Draw9(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Draw10(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Draw11(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Draw12(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Draw13(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Draw14(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Draw15(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Draw16(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Draw17(DemoGj* this, GlobalContext* globalCtx);
void DemoGj_Draw18(DemoGj* this, GlobalContext* globalCtx);

static DemoGjActionFunc sDrawFuncs[] = {
    DemoGj_Draw0,  DemoGj_Draw1,  DemoGj_Draw2,  DemoGj_Draw3,  DemoGj_Draw4,  DemoGj_Draw5,  DemoGj_Draw6,
    DemoGj_Draw7,  DemoGj_Draw8,  DemoGj_Draw9,  DemoGj_Draw10, DemoGj_Draw11, DemoGj_Draw12, DemoGj_Draw13,
    DemoGj_Draw14, DemoGj_Draw15, DemoGj_Draw16, DemoGj_Draw17, DemoGj_Draw18,
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

// bits 11-15
s32 DemoGj_GetCollectibleType(DemoGj* this) {
    s32 params = this->dyna.actor.params >> 0xB;

    return params & 0x1F;
}

// bits 8-10
s32 DemoGj_GetCollectibleAmount(DemoGj* this) {
    s32 params = this->dyna.actor.params >> 0x8;

    return params & 7;
}

// bits 0-7
s32 DemoGj_GetType(DemoGj* this) {
    s32 params = this->dyna.actor.params;

    return params & 0xFF;
}

void DemoGj_Cylinder_Init(DemoGj* this, GlobalContext* globalCtx, ColliderCylinder* cylinder,
                          ColliderCylinderInitType1* cylinderInit) {
    Collider_InitCylinder(globalCtx, cylinder);
    Collider_SetCylinderType1(globalCtx, cylinder, &this->dyna.actor, cylinderInit);
}

s32 DemoGj_Cylinder_HasExploded(DemoGj* this, GlobalContext* globalCtx, ColliderCylinder* cylinder) {
    if (Actor_GetCollidedExplosive(globalCtx, &cylinder->base) != NULL) {
        return 1; // return true; (?)
    }
    return 0; // return false; (?)
}

void DemoGj_Cylinder_Destroy(DemoGj* this, GlobalContext* globalCtx) {
    switch (DemoGj_GetType(this)) {
        case DemoGj_Type_16:
            Collider_DestroyCylinder(globalCtx, &this->cylinders[0]);
            Collider_DestroyCylinder(globalCtx, &this->cylinders[1]);
            Collider_DestroyCylinder(globalCtx, &this->cylinders[2]);
            break;

        case DemoGj_Type_17:
            Collider_DestroyCylinder(globalCtx, &this->cylinders[0]);
            Collider_DestroyCylinder(globalCtx, &this->cylinders[1]);
            Collider_DestroyCylinder(globalCtx, &this->cylinders[2]);
            return;

        case DemoGj_Type_22:
            Collider_DestroyCylinder(globalCtx, &this->cylinders[0]);
            return;

        default:
            break;
    }
}

void DemoGj_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DemoGj* this = THIS;

    DemoGj_Cylinder_Destroy(this, globalCtx);
    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void DemoGj_PlayExplosionSfx(DemoGj* this, GlobalContext* globalCtx) {
    Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.world.pos, 50, NA_SE_EV_GRAVE_EXPLOSION);
}

void func_80978AFC(GlobalContext* globalCtx, Vec3f* pos, f32 arg2) {
    f32 temp = arg2 * 0.2f;
    if (1) {
        // this function just calls EffectSsDust_Spawn() with drawflags=1 and updateMode=0
        func_800283D4(globalCtx, pos, &sVelocity, &sAccel, &sPrimColor, &sEnvColor, temp * Rand_ZeroOne() + arg2, 0xF,
                      0x5A);
    }
}

void DemoGj_DropCollectible(DemoGj* this, GlobalContext* globalCtx) {
    Vec3f* pos = &this->dyna.actor.world.pos;

    s16 collectible;
    s32 amount;

    s32 i;

    collectible = DemoGj_GetCollectibleType(this);
    amount = DemoGj_GetCollectibleAmount(this);

    for (i = 0; i < amount; i++) {
        Item_DropCollectible(globalCtx, pos, collectible);
    }
}

void func_80978C20(DemoGj* this, GlobalContext* globalCtx, Vec3f* arg2, Vec3f* arg3) {
    Vec3f pos;
    Vec3f velocity;

    s32 phi_s0;
    f32 aux;

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

        aux = Rand_ZeroOne();
        if (aux < 0.1f) {
            phi_s0 = 0x61;
        } else if (aux < 0.7f) {
            phi_s0 = 0x41;
        } else {
            phi_s0 = 0x21;
        }

        EffectSsKakera_Spawn(globalCtx, &pos, &velocity, arg2, -0xC8, phi_s0, 0xA, 0xA, 0,
                             Rand_ZeroOne() * 20.0f + 20.0f, 0x14, 0x12C, (s32)(Rand_ZeroOne() * 30.0f) + 0x1E, -1,
                             OBJECT_GEFF, &D_06000EA0);

        theta += 0x2AAA;
    }

    DemoGj_PlayExplosionSfx(this, globalCtx);
}

s32 DemoGj_IsSceneInvalid(void) {
    if (gSaveContext.sceneSetupIndex < 4) {
        return 0; // return false; (?)
    }
    return 1; // return true; (?)
}

s32 DemoGj_FindGanon(DemoGj* this, GlobalContext* globalCtx) {
    Actor* actor;

    if (this->ganon == NULL) {
        actor = globalCtx->actorCtx.actorLists[ACTORCAT_BOSS].head;

        while (actor != NULL) {
            if (actor->id == ACTOR_BOSS_GANON2) {
                this->ganon = (BossGanon2*)actor;

                // Demo_Gj_Search_Boss_Ganon %d: Discover Ganon !!!!
                osSyncPrintf("Demo_Gj_Search_Boss_Ganon %d:ガノン発見!!!!\n", this->dyna.actor.params);
                return true;
            }
            actor = actor->next;
        }

        // Demo_Gj_Search_Boss_Ganon %d: I couldn't find Ganon
        osSyncPrintf("Demo_Gj_Search_Boss_Ganon %d:ガノン発見出来ず\n", this->dyna.actor.params);
        return false;
    }
    //! @bug: Missing return value when `this->ganon` is already set.
}

void DemoGj_InitCommon(DemoGj* this, GlobalContext* globalCtx2, CollisionHeader* header) {
    GlobalContext* globalCtx = globalCtx2;
    Actor* actor = &this->dyna.actor;
    DynaCollisionContext* colCtx_dyna = &globalCtx->colCtx.dyna;
    CollisionHeader* newHeader;

    if (header != NULL) {
        Actor_ProcessInitChain(actor, sInitChain);
        DynaPolyActor_Init(&this->dyna, DPM_UNK);
        newHeader = NULL;
        CollisionHeader_GetVirtual(header, &newHeader);
        this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, colCtx_dyna, actor, newHeader);
    }
}

s32 DemoGj_InitSetIndexes(DemoGj* this, GlobalContext* globalCtx, s32 updateIndex, s32 drawIndex,
                          CollisionHeader* header) {
    if (!DemoGj_IsSceneInvalid()) {
        this->updateIndex = updateIndex;
        this->drawIndex = drawIndex;
        DemoGj_InitCommon(this, globalCtx, header);
        return 1; // return true; (?)
    }
    Actor_Kill(&this->dyna.actor);
    return 0; // return false; (?)
}

void DemoGj_DrawCommon(DemoGj* this, GlobalContext* globalCtx, Gfx* displayList) {
    if (kREG(0) == 0) {
        GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;

        OPEN_DISPS(gfxCtx, "../z_demo_gj.c", 1163);

        func_80093D18(gfxCtx);

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_demo_gj.c", 1165),
                  G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPDisplayList(POLY_OPA_DISP++, displayList);
        gSPPopMatrix(POLY_OPA_DISP++, G_MTX_MODELVIEW);

        CLOSE_DISPS(gfxCtx, "../z_demo_gj.c", 1169);
    }
}

void func_8097911C(DemoGj* this, GlobalContext* globalCtx2, Gfx* displayList) {
    GlobalContext* globalCtx = globalCtx2;
    GraphicsContext* gfxCtx;

    s16 x = this->rotationVec.x;
    s16 y = this->rotationVec.y;
    s16 z = this->rotationVec.z;

    s32 pad; // Needed for matching.
    Mtx* matrix;

    gfxCtx = globalCtx->state.gfxCtx;

    matrix = Graph_Alloc(gfxCtx, sizeof(Mtx));

    OPEN_DISPS(gfxCtx, "../z_demo_gj.c", 1187);

    Matrix_Push();
    Matrix_RotateRPY(x, y, z, MTXMODE_APPLY);
    Matrix_ToMtx(matrix, "../z_demo_gj.c", 1193);
    Matrix_Pull();

    func_80093D18(gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, matrix, G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, displayList);
    gSPPopMatrix(POLY_OPA_DISP++, G_MTX_MODELVIEW);

    CLOSE_DISPS(gfxCtx, "../z_demo_gj.c", 1201);
}

// TODO: find a better name
void DemoGj_Reflect(DemoGj* this, GlobalContext* globalCtx) {
    f32 yPosition = this->dyna.actor.world.pos.y;
    f32* yVelocity = &this->dyna.actor.velocity.y;
    f32* speedXZ = &this->dyna.actor.speedXZ;
    Vec3s* unk_172 = &this->unk_172;
    f32 verticalTranslation;
    Vec3f vec;
    f32 verticalFactor;
    f32 xzPlaneFactor;

    switch (DemoGj_GetType(this)) {
        case DemoGj_Type_08:
            verticalTranslation = kREG(23);
            vec.x = kREG(24) * 0.01f + 1.0f;
            vec.y = kREG(25) * 0.01f + 1.0f;
            vec.z = kREG(26) * 0.01f + 1.0f;
            verticalFactor = kREG(27) * 0.01f + -1.0f;
            xzPlaneFactor = kREG(28) * 0.01f + 1.0f;
            break;

        case DemoGj_Type_09:
            verticalTranslation = kREG(36);
            vec.x = kREG(37) * 0.01f + 1.0f;
            vec.y = kREG(38) * 0.01f + 1.0f;
            vec.z = kREG(39) * 0.01f + 1.0f;
            verticalFactor = kREG(40) * 0.01f + -1.0f;
            xzPlaneFactor = kREG(41) * 0.01f + 1.0f;
            break;

        case DemoGj_Type_10:
            verticalTranslation = kREG(49);
            vec.x = kREG(50) * 0.01f + 1.0f;
            vec.y = kREG(51) * 0.01f + 1.0f;
            vec.z = kREG(52) * 0.01f + 1.0f;
            verticalFactor = kREG(53) * 0.01f + -1.0f;
            xzPlaneFactor = kREG(54) * 0.01f + 1.0f;
            break;

        case DemoGj_Type_11:
            verticalTranslation = kREG(62);
            vec.x = kREG(63) * 0.01f + 1.0f;
            vec.y = kREG(64) * 0.01f + 1.0f;
            vec.z = kREG(65) * 0.01f + 1.0f;
            verticalFactor = kREG(66) * 0.01f + -1.0f;
            xzPlaneFactor = kREG(67) * 0.01f + 1.0f;
            break;

        case DemoGj_Type_12:
            verticalTranslation = kREG(75);
            vec.x = kREG(76) * 0.01f + 1.0f;
            vec.y = kREG(77) * 0.01f + 1.0f;
            vec.z = kREG(78) * 0.01f + 1.0f;
            verticalFactor = kREG(79) * 0.01f + -1.0f;
            xzPlaneFactor = kREG(80) * 0.01f + 1.0f;
            break;

        case DemoGj_Type_13:
            verticalTranslation = kREG(88);
            vec.x = kREG(89) * 0.01f + 1.0f;
            vec.y = kREG(90) * 0.01f + 1.0f;
            vec.z = kREG(91) * 0.01f + 1.0f;
            verticalFactor = kREG(92) * 0.01f + -1.0f;
            xzPlaneFactor = kREG(93) * 0.01f + 1.0f;
            break;

        case DemoGj_Type_14:
            verticalTranslation = kREG(10) + -190.0f;
            vec.x = kREG(9) * 0.01f + 1.0f;
            vec.y = kREG(8) * 0.01f + 1.0f;
            vec.z = kREG(7) * 0.01f + 1.0f;
            verticalFactor = kREG(6) * 0.01f + -1.0f;
            xzPlaneFactor = kREG(5) * 0.01f + 1.0f;
            break;

        default:
            // Demo_Gj_common_Reflect : This arg_data is not supported = %d
            osSyncPrintf(VT_FGCOL(RED) "Demo_Gj_common_Reflect : そんなarg_dataには対応していない = %d\n" VT_RST,
                         this->dyna.actor.params);
            return;
    }

    yPosition += verticalTranslation;
    if (yPosition <= 1086.0f && (*yVelocity < 0.0f)) {
        if (!this->flag2) {
            *yVelocity *= verticalFactor;
            *speedXZ *= xzPlaneFactor;

            unk_172->x *= vec.x;
            unk_172->y *= vec.y;
            unk_172->z *= vec.z;

            if (*yVelocity <= -this->dyna.actor.gravity) {
                *yVelocity = 0.0f;
                *speedXZ = 0.0f;

                unk_172->x = 0;
                unk_172->y = 0;
                unk_172->z = 0;
            }

            this->flag2 = 1; // this->flag2 = true; (?)
        }
    }
}

s32 func_809797E4(DemoGj* this, u8 arg1) {
    BossGanon2* ganon = this->ganon;

    if ((ganon != NULL) && (ganon->unk_314 == arg1)) {
        return 1; // return true; (?)
    }
    return 0; // return false; (?)
}

s32 func_80979818(DemoGj* this, GlobalContext* globalCtx) {
    return func_809797E4(this, 1);
}

s32 func_8097983C(DemoGj* this, GlobalContext* globalCtx) {
    return func_809797E4(this, 2);
}

// TODO: find a better name
void DemoGj_SetupMovement(DemoGj* this, GlobalContext* globalCtx) {
    Actor* actor = &this->dyna.actor;
    Player* player;
    Vec3f* pos = &actor->world.pos;
    Vec3s* unk_172;
    f32 xDistance;
    f32 zDistance;

    if (this->ganon != NULL) {
        xDistance = actor->world.pos.x - this->ganon->actor.world.pos.x;
        zDistance = actor->world.pos.z - this->ganon->actor.world.pos.z;

        unk_172 = &this->unk_172;

        switch (DemoGj_GetType(this)) {
            case DemoGj_Type_08:
                actor->speedXZ = (f32)kREG(16) + 10.0f;
                actor->velocity.y = (f32)kREG(17) + 40.0f;
                unk_172->x = (s16)(kREG(18));
                unk_172->y = (s16)(kREG(19) + 0x3E8);
                unk_172->z = (s16)(kREG(20) + 0xBB8);
                actor->minVelocityY = ((f32)kREG(21) * 0.01f) + -29.0f;
                actor->gravity = ((f32)kREG(22) * 0.01f) + -5.0f;
                break;

            case DemoGj_Type_09:
                actor->speedXZ = (f32)kREG(29) + 10.0f;
                actor->velocity.y = (f32)kREG(30) + 40.0f;
                unk_172->x = (s16)(kREG(31));
                unk_172->y = (s16)(kREG(32) + 0x3E8);
                unk_172->z = (s16)(kREG(33) + 0xBB8);
                actor->minVelocityY = ((f32)kREG(34) * 0.01f) + -29.0f;
                actor->gravity = ((f32)kREG(35) * 0.01f) + -5.0f;
                break;

            case DemoGj_Type_10:
                actor->speedXZ = (f32)kREG(42) + 10.0f;
                actor->velocity.y = (f32)kREG(43) + 40.0f;
                unk_172->x = (s16)(kREG(44));
                unk_172->y = (s16)(kREG(45) + 0x3E8);
                unk_172->z = (s16)(kREG(46) + 0xBB8);
                actor->minVelocityY = ((f32)kREG(47) * 0.01f) + -29.0f;
                actor->gravity = ((f32)kREG(48) * 0.01f) + -5.0f;
                break;

            case DemoGj_Type_11:
                actor->speedXZ = (f32)kREG(55) + 10.0f;
                actor->velocity.y = (f32)kREG(56) + 40.0f;
                unk_172->x = (s16)(kREG(57));
                unk_172->y = (s16)(kREG(58) + 0x3E8);
                unk_172->z = (s16)(kREG(59) + 0xBB8);
                actor->minVelocityY = ((f32)kREG(60) * 0.01f) + -29.0f;
                actor->gravity = ((f32)kREG(61) * 0.01f) + -5.0f;
                break;

            case DemoGj_Type_12:
                actor->speedXZ = (f32)kREG(68) + 10.0f;
                actor->velocity.y = (f32)kREG(69) + 40.0f;
                unk_172->x = (s16)(kREG(70));
                unk_172->y = (s16)(kREG(71) + 0x3E8);
                unk_172->z = (s16)(kREG(72) + 0xBB8);
                actor->minVelocityY = ((f32)kREG(73) * 0.01f) + -29.0f;
                actor->gravity = ((f32)kREG(74) * 0.01f) + -5.0f;
                break;

            case DemoGj_Type_13:
                actor->speedXZ = (f32)kREG(81) + 10.0f;
                actor->velocity.y = (f32)kREG(82) + 40.0f;
                unk_172->x = (s16)(kREG(83));
                unk_172->y = (s16)(kREG(84) + 0x3E8);
                unk_172->z = (s16)(kREG(85) + 0xBB8);
                actor->minVelocityY = ((f32)kREG(86) * 0.01f) + -29.0f;
                actor->gravity = ((f32)kREG(87) * 0.01f) + -5.0f;
                break;

            case DemoGj_Type_14:
                actor->speedXZ = (f32)kREG(94) + 10.0f;
                actor->velocity.y = (f32)kREG(95) + 70.0f;
                unk_172->x = (s16)(kREG(15));
                unk_172->y = (s16)(kREG(14) + 0x3E8);
                unk_172->z = (s16)(kREG(13) + 0xBB8);
                actor->minVelocityY = ((f32)kREG(12) * 0.01f) + -29.0f;
                actor->gravity = ((f32)kREG(11) * 0.01f) + -5.0f;
                break;

            default:
                // Demo_Gj_Setup_Move_common : This arg_data is not supported = %d
                osSyncPrintf(VT_FGCOL(RED) "Demo_Gj_Setup_Move_common : そんなarg_dataには対応していない = %d\n" VT_RST,
                             actor->params);
                break;
        }

        if ((xDistance == 0.0f) && (zDistance == 0.0f)) {
            player = PLAYER;

            xDistance = player->actor.world.pos.x - pos->x;
            zDistance = player->actor.world.pos.z - pos->z;

            if (xDistance != 0.0f || zDistance != 0.0f) {
                actor->world.rot.y = (Math_FAtan2F(xDistance, zDistance) * (0x8000 / M_PI));
                return;
            }
        } else {
            actor->world.rot.y = (Math_FAtan2F(xDistance, zDistance) * (0x8000 / M_PI));
        }
    }
}

void func_80979F9C(DemoGj* this) {
    if (func_809797E4(this, 3)) {
        this->flag1 = 1; // this->flag1 = true; (?)
    }
}

void func_80979FD0(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_InitSetIndexes(this, globalCtx, 1, 2, &D_06001F70);
}

void func_8097A000(DemoGj* this, GlobalContext* globalCtx) {
    Actor_MoveForward(&this->dyna.actor);

    this->rotationVec.x += (s16)(kREG(18));
    this->rotationVec.y += (s16)(kREG(19) + 0x3E8);
    this->rotationVec.z += (s16)(kREG(20) + 0xBB8);

    DemoGj_Reflect(this, globalCtx);
}

void func_8097A07C(DemoGj* this, GlobalContext* globalCtx) {
    u32 gameplayFrames;

    if (!this->flag1) {
        gameplayFrames = globalCtx->gameplayFrames % 3;

        if (1) {}
        if (gameplayFrames == 0) {
            if (!globalCtx->gameplayFrames) {}
            func_80978AFC(globalCtx, &D_8097BE88, 300.0f);
        }

        func_80979F9C(this);
    }
}

void func_8097A0E4(DemoGj* this, GlobalContext* globalCtx) {
    if (func_80979818(this, globalCtx)) {
        DemoGj_SetupMovement(this, globalCtx);
        this->updateIndex = 8;
        this->drawIndex = 9;
    }
}

void func_8097A130(DemoGj* this, GlobalContext* globalCtx) {
    if (func_8097983C(this, globalCtx)) {
        Actor_Kill(&this->dyna.actor);
    }
}

void DemoGj_Update1(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_FindGanon(this, globalCtx);
    func_8097A0E4(this, globalCtx);
}

void DemoGj_Update8(DemoGj* this, GlobalContext* globalCtx) {
    func_8097A000(this, globalCtx);
    func_8097A130(this, globalCtx);
}

void DemoGj_Draw2(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_DrawCommon(this, globalCtx, &D_06001D20);
}

void DemoGj_Draw9(DemoGj* this, GlobalContext* globalCtx) {
    func_8097911C(this, globalCtx, &D_06001D20);
}

void func_8097A208(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_InitSetIndexes(this, globalCtx, 2, 3, &D_06002448);
}

void func_8097A238(DemoGj* this, GlobalContext* globalCtx) {
    Actor_MoveForward(&this->dyna.actor);

    this->rotationVec.x += (s16)(kREG(31));
    this->rotationVec.y += (s16)(kREG(32) + 0x3E8);
    this->rotationVec.z += (s16)(kREG(33) + 0xBB8);

    DemoGj_Reflect(this, globalCtx);
}

void func_8097A2B4(DemoGj* this, GlobalContext* globalCtx) {
    u32 gameplayFrames;

    if (!this->flag1) {
        gameplayFrames = globalCtx->gameplayFrames % 3;

        if (1) {}
        if (gameplayFrames == 1) {
            if (!globalCtx->gameplayFrames) {}
            func_80978AFC(globalCtx, &D_8097BE94, 300.0f);
        }

        func_80979F9C(this);
    }
}

void func_8097A320(DemoGj* this, GlobalContext* globalCtx) {
    if (func_80979818(this, globalCtx)) {
        DemoGj_SetupMovement(this, globalCtx);
        this->updateIndex = 9;
        this->drawIndex = 10;
    }
}

void func_8097A36C(DemoGj* this, GlobalContext* globalCtx) {
    if (func_8097983C(this, globalCtx)) {
        Actor_Kill(&this->dyna.actor);
    }
}

void DemoGj_Update2(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_FindGanon(this, globalCtx);
    func_8097A320(this, globalCtx);
}

void DemoGj_Update9(DemoGj* this, GlobalContext* globalCtx) {
    func_8097A238(this, globalCtx);
    func_8097A36C(this, globalCtx);
}

void DemoGj_Draw3(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_DrawCommon(this, globalCtx, &D_06002160);
}

void DemoGj_Draw10(DemoGj* this, GlobalContext* globalCtx) {
    func_8097911C(this, globalCtx, &D_06002160);
}

void func_8097A444(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_InitSetIndexes(this, globalCtx, 3, 4, &D_06002850);
}

void func_8097A474(DemoGj* this, GlobalContext* globalCtx) {
    Actor_MoveForward(&this->dyna.actor);

    this->rotationVec.x += (s16)(kREG(44));
    this->rotationVec.y += (s16)(kREG(45) + 0x3E8);
    this->rotationVec.z += (s16)(kREG(46) + 0xBB8);

    DemoGj_Reflect(this, globalCtx);
}

void func_8097A4F0(DemoGj* this, GlobalContext* globalCtx) {
    if (func_80979818(this, globalCtx)) {
        DemoGj_SetupMovement(this, globalCtx);
        this->updateIndex = 10;
        this->drawIndex = 11;
    }
}

void func_8097A53C(DemoGj* this, GlobalContext* globalCtx) {
    if (func_8097983C(this, globalCtx)) {
        Actor_Kill(&this->dyna.actor);
    }
}

void DemoGj_Update3(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_FindGanon(this, globalCtx);
    func_8097A4F0(this, globalCtx);
}

void DemoGj_Update10(DemoGj* this, GlobalContext* globalCtx) {
    func_8097A474(this, globalCtx);
    func_8097A53C(this, globalCtx);
}

void DemoGj_Draw4(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_DrawCommon(this, globalCtx, &D_06002600);
}

void DemoGj_Draw11(DemoGj* this, GlobalContext* globalCtx) {
    func_8097911C(this, globalCtx, &D_06002600);
}

void func_8097A614(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_InitSetIndexes(this, globalCtx, 4, 5, &D_06002D28);
}

void func_8097A644(DemoGj* this, GlobalContext* globalCtx) {
    Actor_MoveForward(&this->dyna.actor);

    this->rotationVec.x += (s16)(kREG(57));
    this->rotationVec.y += (s16)(kREG(58) + 0x3E8);
    this->rotationVec.z += (s16)(kREG(59) + 0xBB8);

    DemoGj_Reflect(this, globalCtx);
}

void func_8097A6C0(DemoGj* this, GlobalContext* globalCtx) {
    if (func_80979818(this, globalCtx)) {
        DemoGj_SetupMovement(this, globalCtx);
        this->updateIndex = 11;
        this->drawIndex = 12;
    }
}

void func_8097A70C(DemoGj* this, GlobalContext* globalCtx) {
    if (func_8097983C(this, globalCtx)) {
        Actor_Kill(&this->dyna.actor);
    }
}

void DemoGj_Update4(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_FindGanon(this, globalCtx);
    func_8097A6C0(this, globalCtx);
}

void DemoGj_Update11(DemoGj* this, GlobalContext* globalCtx) {
    func_8097A644(this, globalCtx);
    func_8097A70C(this, globalCtx);
}

void DemoGj_Draw5(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_DrawCommon(this, globalCtx, &D_06002A40);
}

void DemoGj_Draw12(DemoGj* this, GlobalContext* globalCtx) {
    func_8097911C(this, globalCtx, &D_06002A40);
}

void func_8097A7E4(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_InitSetIndexes(this, globalCtx, 5, 6, &D_06002FE4);
}

void func_8097A814(DemoGj* this, GlobalContext* globalCtx) {
    Actor_MoveForward(&this->dyna.actor);

    this->rotationVec.x += (s16)(kREG(70));
    this->rotationVec.y += (s16)(kREG(71) + 0x3E8);
    this->rotationVec.z += (s16)(kREG(72) + 0xBB8);

    DemoGj_Reflect(this, globalCtx);
}

void func_8097A890(DemoGj* this, GlobalContext* globalCtx) {
    if (func_80979818(this, globalCtx)) {
        DemoGj_SetupMovement(this, globalCtx);
        this->updateIndex = 12;
        this->drawIndex = 13;
    }
}

void func_8097A8DC(DemoGj* this, GlobalContext* globalCtx) {
    if (func_8097983C(this, globalCtx)) {
        Actor_Kill(&this->dyna.actor);
    }
}

void DemoGj_Update5(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_FindGanon(this, globalCtx);
    func_8097A890(this, globalCtx);
}

void DemoGj_Update12(DemoGj* this, GlobalContext* globalCtx) {
    func_8097A814(this, globalCtx);
    func_8097A8DC(this, globalCtx);
}

void DemoGj_Draw6(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_DrawCommon(this, globalCtx, &D_06002E80);
}

void DemoGj_Draw13(DemoGj* this, GlobalContext* globalCtx) {
    func_8097911C(this, globalCtx, &D_06002E80);
}

void func_8097A9B4(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_InitSetIndexes(this, globalCtx, 6, 7, &D_060033E0);
}

void func_8097A9E4(DemoGj* this, GlobalContext* globalCtx) {
    Actor_MoveForward(&this->dyna.actor);

    this->rotationVec.x += (s16)(kREG(83));
    this->rotationVec.y += (s16)(kREG(84) + 0x3E8);
    this->rotationVec.z += (s16)(kREG(85) + 0xBB8);

    DemoGj_Reflect(this, globalCtx);
}

void func_8097AA60(DemoGj* this, GlobalContext* globalCtx) {
    if (func_80979818(this, globalCtx)) {
        DemoGj_SetupMovement(this, globalCtx);
        this->updateIndex = 13;
        this->drawIndex = 14;
    }
}

void func_8097AAAC(DemoGj* this, GlobalContext* globalCtx) {
    if (func_8097983C(this, globalCtx)) {
        Actor_Kill(&this->dyna.actor);
    }
}

void DemoGj_Update6(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_FindGanon(this, globalCtx);
    func_8097AA60(this, globalCtx);
}

void DemoGj_Update13(DemoGj* this, GlobalContext* globalCtx) {
    func_8097A9E4(this, globalCtx);
    func_8097AAAC(this, globalCtx);
}

void DemoGj_Draw7(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_DrawCommon(this, globalCtx, &D_06003190);
}

void DemoGj_Draw14(DemoGj* this, GlobalContext* globalCtx) {
    func_8097911C(this, globalCtx, &D_06003190);
}

void func_8097AB84(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_InitSetIndexes(this, globalCtx, 7, 8, &D_06003AF0);
}

void func_8097ABB4(DemoGj* this, GlobalContext* globalCtx) {
    Actor_MoveForward(&this->dyna.actor);

    this->rotationVec.x += (s16)(kREG(15));
    this->rotationVec.y += (s16)(kREG(14) + 0x3E8);
    this->rotationVec.z += (s16)(kREG(13) + 0xBB8);

    DemoGj_Reflect(this, globalCtx);
}

void func_8097AC30(DemoGj* this, GlobalContext* globalCtx) {
    u32 gameplayFrames;

    if (!this->flag1) {
        gameplayFrames = globalCtx->gameplayFrames % 3;

        if (1) {}
        if (gameplayFrames == 2) {
            if (!globalCtx->gameplayFrames) {}
            func_80978AFC(globalCtx, &D_8097BEA0, 300.0f);
        }

        func_80979F9C(this);
    }
}

void func_8097AC9C(DemoGj* this, GlobalContext* globalCtx) {
    if (func_80979818(this, globalCtx)) {
        DemoGj_SetupMovement(this, globalCtx);
        this->updateIndex = 14;
        this->drawIndex = 15;
    }
}

void func_8097ACE8(DemoGj* this, GlobalContext* globalCtx) {
    if (func_8097983C(this, globalCtx)) {
        Actor_Kill(&this->dyna.actor);
    }
}

void DemoGj_Update7(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_FindGanon(this, globalCtx);
    func_8097AC9C(this, globalCtx);
}

void DemoGj_Update14(DemoGj* this, GlobalContext* globalCtx) {
    func_8097ABB4(this, globalCtx);
    func_8097ACE8(this, globalCtx);
}

void DemoGj_Draw8(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_DrawCommon(this, globalCtx, &D_06003710);
}

void DemoGj_Draw15(DemoGj* this, GlobalContext* globalCtx) {
    func_8097911C(this, globalCtx, &D_06003710);
}

void func_8097ADC0(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_InitSetIndexes(this, globalCtx, 0, 1, &D_06001B70);
}

void DemoGj_Update0(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_FindGanon(this, globalCtx);
    func_8097A07C(this, globalCtx);
    func_8097A2B4(this, globalCtx);
    func_8097AC30(this, globalCtx);
}

void DemoGj_Draw1(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_DrawCommon(this, globalCtx, &D_06000DC0);
}

void func_8097AE5C(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_InitSetIndexes(this, globalCtx, 15, 0, NULL);
    DemoGj_Cylinder_Init(this, globalCtx, &this->cylinders[0], &sCylinderInit1);
    DemoGj_Cylinder_Init(this, globalCtx, &this->cylinders[1], &sCylinderInit1);
    DemoGj_Cylinder_Init(this, globalCtx, &this->cylinders[2], &sCylinderInit1);
}

void func_8097AEDC(DemoGj* this, GlobalContext* globalCtx) {
}

void func_8097AEE8(DemoGj* this, GlobalContext* globalCtx) {
    ColliderCylinder* cylinders_0 = &this->cylinders[0];
    ColliderCylinder* cylinders_1 = &this->cylinders[1];
    ColliderCylinder* cylinders_2 = &this->cylinders[2];
    PosRot* actorPosRot = &this->dyna.actor.world;

    s32 pad;

    s16 theta = actorPosRot->rot.y;

    f32 cos_theta = Math_CosS(theta);
    f32 sin_theta = Math_SinS(theta);

    cylinders_0->dim.pos.z = actorPosRot->pos.z + (20.0f * cos_theta) - (-20.0f * sin_theta);
    cylinders_0->dim.pos.x = actorPosRot->pos.x + (20.0f * sin_theta) + (-20.0f * cos_theta);
    cylinders_0->dim.pos.y = actorPosRot->pos.y;

    cylinders_1->dim.pos.z = actorPosRot->pos.z + (-20.0f * cos_theta) - (20.0f * sin_theta);
    cylinders_1->dim.pos.x = actorPosRot->pos.x + (-20.0f * sin_theta) + (20.0f * cos_theta);
    cylinders_1->dim.pos.y = actorPosRot->pos.y;

    cylinders_2->dim.pos.z = actorPosRot->pos.z + (-60.0f * cos_theta) - (60.0f * sin_theta);
    cylinders_2->dim.pos.x = actorPosRot->pos.x + (-60.0f * sin_theta) + (60.0f * cos_theta);
    cylinders_2->dim.pos.y = actorPosRot->pos.y;
}

void func_8097B080(DemoGj* this, GlobalContext* globalCtx2) {
    CollisionCheckContext* colChkCtx;
    GlobalContext* globalCtx = globalCtx2;
    Collider* cylinders_0 = &this->cylinders[0].base;
    Collider* cylinders_1 = &this->cylinders[1].base;
    Collider* cylinders_2 = &this->cylinders[2].base;

    s32 pad[3];

    colChkCtx = &globalCtx->colChkCtx;
    CollisionCheck_SetAC(globalCtx, colChkCtx, cylinders_0);
    CollisionCheck_SetAC(globalCtx, colChkCtx, cylinders_1);
    CollisionCheck_SetAC(globalCtx, colChkCtx, cylinders_2);
}

void func_8097B0EC(DemoGj* this, GlobalContext* globalCtx, Vec3f* arg2) {
    Vec3f pos;

    pos.x = this->dyna.actor.world.pos.x;
    pos.y = this->dyna.actor.world.pos.y;
    pos.z = this->dyna.actor.world.pos.z;

    func_80978C20(this, globalCtx, &pos, arg2);
}

void func_8097B128(DemoGj* this, GlobalContext* globalCtx) {
    Vec3f* scale = &this->dyna.actor.scale;

    if (func_8097983C(this, globalCtx)) {
        DemoGj_InitCommon(this, globalCtx, &D_06001F70);
        this->updateIndex = 18;
        this->drawIndex = 16;
        scale->x *= 0.8f;
        scale->y *= 0.8f;
        scale->z *= 0.8f;
    }
}

s32 DemoGj_Cylinder_AnyHasExploded(DemoGj* this, GlobalContext* globalCtx) {
    if (DemoGj_Cylinder_HasExploded(this, globalCtx, &this->cylinders[0])) {
        return 1; // return true; (?)
    }
    if (DemoGj_Cylinder_HasExploded(this, globalCtx, &this->cylinders[1])) {
        return 1; // return true; (?)
    }
    if (DemoGj_Cylinder_HasExploded(this, globalCtx, &this->cylinders[2])) {
        return 1; // return true; (?)
    }
    return 0; // return false; (?)
}

void func_8097B22C(DemoGj* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f vec1;
    Vec3f vec2;
    Actor* actor = &this->dyna.actor;

    if (func_809797E4(this, 4)) {
        Actor_Kill(actor);
    } else if (DemoGj_Cylinder_AnyHasExploded(this, globalCtx)) {
        vec1 = D_8097BEAC;

        DemoGj_DropCollectible(this, globalCtx);
        func_8097B0EC(this, globalCtx, &vec1);

        Actor_Kill(actor);
    } else if (this->flag3) {
        vec2 = this->unk_26C;
        vec2.y = 0.0f;

        DemoGj_DropCollectible(this, globalCtx);
        func_8097B0EC(this, globalCtx, &vec2);

        Actor_Kill(actor);
    }

    func_8097AEE8(this, globalCtx);
    func_8097B080(this, globalCtx);
}

void DemoGj_Update15(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_FindGanon(this, globalCtx);
    func_8097B128(this, globalCtx);
}

void DemoGj_Update18(DemoGj* this, GlobalContext* globalCtx) {
    func_8097B22C(this, globalCtx);
    func_8097AEDC(this, globalCtx);
}

void DemoGj_Draw16(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_DrawCommon(this, globalCtx, &D_06001D20);
}

void func_8097B3C4(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_InitSetIndexes(this, globalCtx, 16, 0, NULL);
    DemoGj_Cylinder_Init(this, globalCtx, &this->cylinders[0], &sCylinderInit2);
    DemoGj_Cylinder_Init(this, globalCtx, &this->cylinders[1], &sCylinderInit2);
    DemoGj_Cylinder_Init(this, globalCtx, &this->cylinders[2], &sCylinderInit2);
}

void func_8097B444(DemoGj* this, GlobalContext* globalCtx) {
}

void func_8097B450(DemoGj* this, GlobalContext* globalCtx) {
    ColliderCylinder* cylinder0 = &this->cylinders[0];
    ColliderCylinder* cylinder1 = &this->cylinders[1];
    ColliderCylinder* cylinder2 = &this->cylinders[2];
    PosRot* actorPosRot = &this->dyna.actor.world;

    s32 pad;

    s16 theta = actorPosRot->rot.y;

    f32 cos_theta = Math_CosS(theta);
    f32 sin_theta = Math_SinS(theta);

    cylinder0->dim.pos.z = actorPosRot->pos.z - (35.0f * sin_theta);
    cylinder0->dim.pos.x = actorPosRot->pos.x + (35.0f * cos_theta);
    cylinder0->dim.pos.y = actorPosRot->pos.y;

    cylinder1->dim.pos.z = actorPosRot->pos.z - (-10.0f * sin_theta);
    cylinder1->dim.pos.x = actorPosRot->pos.x + (-10.0f * cos_theta);
    cylinder1->dim.pos.y = actorPosRot->pos.y;

    cylinder2->dim.pos.z = actorPosRot->pos.z - (-55.0f * sin_theta);
    cylinder2->dim.pos.x = actorPosRot->pos.x + (-55.0f * cos_theta);
    cylinder2->dim.pos.y = actorPosRot->pos.y;
}

void func_8097B5A4(DemoGj* this, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    CollisionCheckContext* colChkCtx = &globalCtx->colChkCtx;

    Collider* cylinders_0 = &this->cylinders[0].base;
    Collider* cylinders_1 = &this->cylinders[1].base;
    Collider* cylinders_2 = &this->cylinders[2].base;

    s32 pad[3];

    CollisionCheck_SetAC(globalCtx, colChkCtx, cylinders_0);
    CollisionCheck_SetAC(globalCtx, colChkCtx, cylinders_1);
    CollisionCheck_SetAC(globalCtx, colChkCtx, cylinders_2);
}

// Does the same as `DemoGj_Cylinder_AnyHasExploded`
s32 DemoGj_Cylinder_AnyHasExploded2(DemoGj* this, GlobalContext* globalCtx) {
    if (DemoGj_Cylinder_HasExploded(this, globalCtx, &this->cylinders[0])) {
        return 1; // return true; (?)
    }
    if (DemoGj_Cylinder_HasExploded(this, globalCtx, &this->cylinders[1])) {
        return 1; // return true; (?)
    }
    if (DemoGj_Cylinder_HasExploded(this, globalCtx, &this->cylinders[2])) {
        return 1; // return true; (?)
    }
    return 0; // return false; (?)
}

void func_8097B688(DemoGj* this, GlobalContext* globalCtx, Vec3f* arg2) {
    Vec3f pos;

    pos.x = this->dyna.actor.world.pos.x;
    pos.y = this->dyna.actor.world.pos.y;
    pos.z = this->dyna.actor.world.pos.z;

    func_80978C20(this, globalCtx, &pos, arg2);
}

void func_8097B6C4(DemoGj* this, GlobalContext* globalCtx) {
    Vec3f* scale = &this->dyna.actor.scale;

    if (func_8097983C(this, globalCtx)) {
        DemoGj_InitCommon(this, globalCtx, &D_06002448);
        this->updateIndex = 19;
        this->drawIndex = 17;
        scale->x *= 0.8f;
        scale->y *= 0.8f;
        scale->z *= 0.8f;
    }
}

void func_8097B750(DemoGj* this, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;

    Vec3f vec1;
    Vec3f vec2;

    Actor* actor = &this->dyna.actor;

    if (func_809797E4(this, 4)) {
        Actor_Kill(actor);
    } else if (DemoGj_Cylinder_AnyHasExploded2(this, globalCtx)) {
        vec1 = D_8097BEB8;

        DemoGj_DropCollectible(this, globalCtx);
        func_8097B688(this, globalCtx, &vec1);

        Actor_Kill(actor);
    } else if (this->flag3) {
        vec2 = this->unk_26C;
        vec2.y = 0.0f;

        DemoGj_DropCollectible(this, globalCtx);
        func_8097B688(this, globalCtx, &vec2);

        Actor_Kill(actor);
    }

    func_8097B450(this, globalCtx);
    func_8097B5A4(this, globalCtx);
}

void DemoGj_Update16(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_FindGanon(this, globalCtx);
    func_8097B6C4(this, globalCtx);
}

void DemoGj_Update19(DemoGj* this, GlobalContext* globalCtx) {
    func_8097B750(this, globalCtx);
    func_8097B444(this, globalCtx);
}

void DemoGj_Draw17(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_DrawCommon(this, globalCtx, &D_06002160);
}

void func_8097B8E8(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_InitSetIndexes(this, globalCtx, 17, 0, NULL);
    DemoGj_Cylinder_Init(this, globalCtx, &this->cylinders[0], &sCylinderInit3);
}

void func_8097B930(DemoGj* this, GlobalContext* globalCtx) {
}

void func_8097B93C(DemoGj* this, GlobalContext* globalCtx, Vec3f* arg2) {
    Vec3f pos;

    pos.x = this->dyna.actor.world.pos.x;
    pos.y = this->dyna.actor.world.pos.y;
    pos.z = this->dyna.actor.world.pos.z;
    func_80978C20(this, globalCtx, &pos, arg2);

    pos.x = this->dyna.actor.world.pos.x;
    pos.y = this->dyna.actor.world.pos.y + 100.0f;
    pos.z = this->dyna.actor.world.pos.z;
    func_80978C20(this, globalCtx, &pos, arg2);
}

void func_8097B9BC(DemoGj* this, GlobalContext* globalCtx) {
    Vec3f* scale = &this->dyna.actor.scale;

    if (func_8097983C(this, globalCtx)) {
        DemoGj_InitCommon(this, globalCtx, &D_06003AF0);
        this->updateIndex = 20;
        this->drawIndex = 18;
        scale->x *= 0.8f;
        scale->y *= 0.8f;
        scale->z *= 0.8f;
    }
}

void func_8097BA48(DemoGj* this, GlobalContext* globalCtx) {
    Actor* actor = &this->dyna.actor;
    ColliderCylinder* cylinder = &this->cylinders[0];
    Collider* collider = &cylinder->base;
    CollisionCheckContext* colChkCtx = &globalCtx->colChkCtx;

    Vec3f vec1;
    Vec3f vec2;

    if (func_809797E4(this, 4)) {
        Actor_Kill(actor);
    } else if (DemoGj_Cylinder_HasExploded(this, globalCtx, cylinder)) {
        vec1 = D_8097BEC4;

        DemoGj_DropCollectible(this, globalCtx);
        func_8097B93C(this, globalCtx, &vec1);

        Actor_Kill(actor);
    } else if (this->flag3) {
        vec2 = this->unk_26C;
        vec2.y = 0.0f;

        DemoGj_DropCollectible(this, globalCtx);
        func_8097B93C(this, globalCtx, &vec2);

        Actor_Kill(actor);
    }

    Collider_UpdateCylinder(actor, cylinder);
    CollisionCheck_SetAC(globalCtx, colChkCtx, collider);
}

void DemoGj_Update17(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_FindGanon(this, globalCtx);
    func_8097B9BC(this, globalCtx);
}

void DemoGj_Update20(DemoGj* this, GlobalContext* globalCtx) {
    func_8097BA48(this, globalCtx);
    func_8097B930(this, globalCtx);
}

void DemoGj_Draw18(DemoGj* this, GlobalContext* globalCtx) {
    DemoGj_DrawCommon(this, globalCtx, &D_06003710);
}

void DemoGj_Update(Actor* thisx, GlobalContext* globalCtx) {
    DemoGj* this = THIS;

    if (this->updateIndex < 0 || this->updateIndex >= 21 || sUpdateFuncs[this->updateIndex] == NULL) {
        // The main mode is abnormal!!!!!!!!!!!!!!!!!!!!!!!!!
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }

    sUpdateFuncs[this->updateIndex](this, globalCtx);
}

void DemoGj_Init(Actor* thisx, GlobalContext* globalCtx) {
    DemoGj* this = THIS;

    switch (DemoGj_GetType(this)) {
        case DemoGj_Type_04:
            func_8097ADC0(this, globalCtx);
            return;

        case DemoGj_Type_08:
            func_80979FD0(this, globalCtx);
            return;

        case DemoGj_Type_09:
            func_8097A208(this, globalCtx);
            return;

        case DemoGj_Type_10:
            func_8097A444(this, globalCtx);
            return;

        case DemoGj_Type_11:
            func_8097A614(this, globalCtx);
            return;

        case DemoGj_Type_12:
            func_8097A7E4(this, globalCtx);
            return;

        case DemoGj_Type_13:
            func_8097A9B4(this, globalCtx);
            return;

        case DemoGj_Type_14:
            func_8097AB84(this, globalCtx);
            return;

        case DemoGj_Type_16:
            func_8097AE5C(this, globalCtx);
            return;

        case DemoGj_Type_17:
            func_8097B3C4(this, globalCtx);
            return;

        case DemoGj_Type_22:
            func_8097B8E8(this, globalCtx);
            return;

        default:
            // Demo_Gj_Actor_ct There is no such argument!!!!!!!!!!!!!!!!!!!!!!
            osSyncPrintf(VT_FGCOL(RED) "Demo_Gj_Actor_ct そんな引数は無い!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST, globalCtx,
                         this);
            Actor_Kill(&this->dyna.actor);
    }
}

void DemoGj_Draw0(DemoGj* this, GlobalContext* globalCtx) {
}

void DemoGj_Draw(Actor* thisx, GlobalContext* globalCtx) {
    DemoGj* this = THIS;

    if (this->drawIndex < 0 || this->drawIndex >= 19 || sDrawFuncs[this->drawIndex] == NULL) {
        // The drawing mode is abnormal!!!!!!!!!!!!!!!!!!!!!!!!!
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }

    sDrawFuncs[this->drawIndex](this, globalCtx);
}
