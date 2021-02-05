/*
 * File: z_bg_breakwall.c
 * Overlay: Bg_Breakwall
 * Description: Bombable Wall
 */

#include "z_bg_breakwall.h"

#define FLAGS 0x00000010

#define THIS ((BgBreakwall*)thisx)

typedef struct {
    /* 0x00 */ CollisionHeader* colHeader;
    /* 0x04 */ Gfx* dList;
    /* 0x08 */ s8 colType;
} BombableWallInfo;

void BgBreakwall_Init(Actor* thisx, GlobalContext* globalCtx);
void BgBreakwall_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgBreakwall_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80870290(BgBreakwall* this, GlobalContext* globalCtx);
void func_80870394(BgBreakwall* this, GlobalContext* globalCtx);
void BgBreakwall_MovePosY(BgBreakwall* this, GlobalContext* globalCtx);
void BgBreakwall_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_02014F80;

const ActorInit Bg_Breakwall_InitVars = {
    ACTOR_BG_BREAKWALL,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgBreakwall),
    (ActorFunc)BgBreakwall_Init,
    (ActorFunc)BgBreakwall_Destroy,
    (ActorFunc)BgBreakwall_Update,
    NULL,
};

static ColliderQuadInit sQuadInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER | AC_TYPE_OTHER,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_QUAD,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000048, 0x00, 0x00 },
        { 0x00000048, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_NONE,
    },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static BombableWallInfo sBombableWallInfo[] = {
    { 0x06000118, 0x06000040, 0 },
    { 0x06000118, 0x06000040, 0 },
    { 0x060264A8, 0x06025BD0, 1 },
    { 0x06025B64, NULL, -1 },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 400, ICHAIN_STOP),
};

void BgBreakwall_SetupAction(BgBreakwall* this, BgBreakwallActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgBreakwall_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgBreakwall* this = THIS;
    s32 pad;
    s32 wallType = ((this->dyna.actor.params >> 13) & 3) & 0xFF;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, DPM_UNK);
    this->bombableWallDList = sBombableWallInfo[wallType].dList;
    this->colType = sBombableWallInfo[wallType].colType;

    if (this->colType == 1) {
        this->dyna.actor.world.rot.x = 0x4000;
    }

    if (this->bombableWallDList != NULL) {
        if (Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F)) {
            Actor_Kill(&this->dyna.actor);
            return;
        }

        ActorShape_Init(&this->dyna.actor.shape, 0.0f, NULL, 0.0f);
        Collider_InitQuad(globalCtx, &this->collider);
        Collider_SetQuad(globalCtx, &this->collider, &this->dyna.actor, &sQuadInit);
    } else {
        this->dyna.actor.world.pos.y -= 40.0f;
    }

    this->bankIndex = (wallType >= 2) ? Object_GetIndex(&globalCtx->objectCtx, OBJECT_KINGDODONGO)
                                      : Object_GetIndex(&globalCtx->objectCtx, OBJECT_BWALL);

    if (this->bankIndex < 0) {
        Actor_Kill(&this->dyna.actor);
    } else {
        BgBreakwall_SetupAction(this, func_80870290);
    }
}

void BgBreakwall_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgBreakwall* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

#ifdef NON_MATCHING
Actor* func_8086FDC0(GlobalContext* globalCtx, BgBreakwall* this, Vec3f* pos, f32 velocity, f32 scaleY, f32 scaleX,
                     s32 count, f32 accel) {
    Actor* actor;
    Vec3f actorPos;
    s32 i;
    s32 j;
    s32 k;
    s16 angle1;
    s16 angle2;
    Vec3f D_808707F0 = { 0.0f, 0.0f, 0.0f }; // unused
    Vec3s actorRotList[] = { { 0, 0, 0 }, { 0, 0, 0x4000 }, { 0, 0, -0x4000 }, { 0, 0, 0 } };
    Vec3f actorScaleList[] = {
        { 0.004f, 0.004f, 0.004f },
        { 0.004f, 0.004f, 0.004f },
        { 0.004f, 0.004f, 0.004f },
        { 0.004f, 0.004f, 0.004f },
    };
    Vec3f actorPosList[][4] = {
        { { 40.0f, 15.0f, 0.0f }, { 30.0f, 57.0f, 0.0f }, { 50.0f, 57.0f, 0.0f }, { 40.0f, 70.0f, 0.0f } },
        { { 55.0f, -15.0f, 0.0f }, { 30.0f, -32.0f, 0.0f }, { 50.0f, -32.0f, 0.0f }, { 20.0f, -10.0f, 0.0f } },
        { { -40.0f, 14.0f, 0.0f }, { -50.0f, 57.0f, 0.0f }, { -30.0f, 57.0f, 0.0f }, { -40.0f, 70.0f, 0.0f } },
        { { -55.0f, -15.0f, 0.0f }, { -55.0f, -32.0f, 0.0f }, { -30.0f, -32.0f, 0.0f }, { -20.0f, -10.0f, 0.0f } },
    };

    for (i = 0; i < 4; i++) {
        if ((i == 0) || (i == 3)) {
            actorScaleList[i].x *= scaleX;
            actorScaleList[i].y *= scaleY;
            actorScaleList[i].z *= scaleY;
        } else {
            actorScaleList[i].x *= scaleY;
            actorScaleList[i].y *= scaleX;
            actorScaleList[i].z *= scaleX;
        }
    }

    for (i = 0; i < count; i++) {
        angle1 = ABS(this->dyna.actor.world.rot.y);
        Matrix_Translate(this->dyna.actor.world.pos.x, this->dyna.actor.world.pos.y, this->dyna.actor.world.pos.z,
                         MTXMODE_NEW);
        Matrix_RotateRPY(this->dyna.actor.world.rot.x, this->dyna.actor.world.rot.y, this->dyna.actor.world.rot.z,
                         MTXMODE_APPLY);
        Matrix_Translate(pos->x, pos->y, pos->z, MTXMODE_APPLY);

        for (j = 3; j >= 0; j--) {
            for (k = 3; k >= 0; k--) {
                Matrix_MultVec3f(&actorPosList[j][k], &actorPos);

                actor =
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_A_OBJ, Rand_CenteredFloat(20.0f) + actorPos.x,
                                Rand_CenteredFloat(20.0f) + actorPos.y, Rand_CenteredFloat(20.0f) + actorPos.z,
                                actorRotList[k].x, actorRotList[k].y + (angle1 + angle2), actorRotList[k].z, 0x000B);

                if ((j & 1) == 0) {
                    func_80033480(globalCtx, &actorPos, velocity * 200.0f, 1, 650, 150, 1);
                }

                if (actor != NULL) {
                    actor->speedXZ = Rand_ZeroOne() + (accel * 0.6f);
                    actor->velocity.y = Rand_ZeroOne() + (accel * 0.6f);
                    actor->world.rot.y += ((Rand_ZeroOne() - 0.5f) * 3000.0f);
                    actor->world.rot.x = (Rand_ZeroOne() * 3500.0f) + 2000;
                    actor->world.rot.z = (Rand_ZeroOne() * 3500.0f) + 2000;
                    actor->parent = &this->dyna.actor;
                    actor->scale.x = Rand_CenteredFloat(0.001f) + actorScaleList[k].x;
                    actor->scale.y = Rand_CenteredFloat(0.001f) + actorScaleList[k].y;
                    actor->scale.z = Rand_CenteredFloat(0.001f) + actorScaleList[k].z;
                }
            }
        }

        angle2 += 0x4000;
    }

    return actor;
}
#else
Actor* func_8086FDC0(GlobalContext* globalCtx, BgBreakwall* this, Vec3f* pos, f32 velocity, f32 scaleY, f32 scaleX,
                     s32 count, f32 accel);
Vec3f D_808707F0 = { 0.0f, 0.0f, 0.0f }; // unused
Vec3s actorRotList[] = { { 0, 0, 0 }, { 0, 0, 0x4000 }, { 0, 0, -0x4000 }, { 0, 0, 0 } };
Vec3f actorScaleList[] = {
    { 0.004f, 0.004f, 0.004f },
    { 0.004f, 0.004f, 0.004f },
    { 0.004f, 0.004f, 0.004f },
    { 0.004f, 0.004f, 0.004f },
};
Vec3f actorPosList[][4] = {
    { { 40.0f, 15.0f, 0.0f }, { 30.0f, 57.0f, 0.0f }, { 50.0f, 57.0f, 0.0f }, { 40.0f, 70.0f, 0.0f } },
    { { 55.0f, -15.0f, 0.0f }, { 30.0f, -32.0f, 0.0f }, { 50.0f, -32.0f, 0.0f }, { 20.0f, -10.0f, 0.0f } },
    { { -40.0f, 14.0f, 0.0f }, { -50.0f, 57.0f, 0.0f }, { -30.0f, 57.0f, 0.0f }, { -40.0f, 70.0f, 0.0f } },
    { { -55.0f, -15.0f, 0.0f }, { -55.0f, -32.0f, 0.0f }, { -30.0f, -32.0f, 0.0f }, { -20.0f, -10.0f, 0.0f } },
};
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Breakwall/func_8086FDC0.s")
#endif

void func_80870290(BgBreakwall* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->bankIndex)) {
        CollisionHeader* colHeader = NULL;
        s32 wallType = ((this->dyna.actor.params >> 13) & 3) & 0xFF;

        this->dyna.actor.objBankIndex = this->bankIndex;
        Actor_SetObjectDependency(globalCtx, &this->dyna.actor);
        this->dyna.actor.flags &= ~0x10;
        this->dyna.actor.draw = BgBreakwall_Draw;

        CollisionHeader_GetVirtual(sBombableWallInfo[wallType].colHeader, &colHeader);
        this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);

        if (wallType == 3) {
            BgBreakwall_SetupAction(this, BgBreakwall_MovePosY);
        } else {
            BgBreakwall_SetupAction(this, func_80870394);
        }
    }
}

void func_80870394(BgBreakwall* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & 2) {
        Vec3f effectPos;
        s32 wallType = ((this->dyna.actor.params >> 13) & 3) & 0xFF;

        DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);

        effectPos.x = 0.0f;
        effectPos.z = 0.0f;
        effectPos.y = 0.0f;

        if (this->dyna.actor.world.rot.x == 0) {
            effectPos.y = 55.0f;
        } else {
            effectPos.z = 25.0f;
            effectPos.y = -10.0f;
        }

        func_8086FDC0(globalCtx, this, &effectPos, 0.0f, 6.4f, 5.0f, 1, 2.0f);
        Flags_SetSwitch(globalCtx, this->dyna.actor.params & 0x3F);

        if (wallType == 2) {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_EXPLOSION);
        } else {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_WALL_BROKEN);
        }

        if (wallType == 0) {
            if (!(Flags_GetEventChkInf(0xB0))) {
                Flags_SetEventChkInf(0xB0);
                Cutscene_SetSegment(globalCtx, &D_02014F80);
                gSaveContext.cutsceneTrigger = 1;
                Audio_PlaySoundGeneral(NA_SE_SY_CORRECT_CHIME, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                func_8002DF54(globalCtx, NULL, 0x31);
            }
        }

        if (this->dyna.actor.params < 0) {
            Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }

        Actor_Kill(&this->dyna.actor);
    }
}

void BgBreakwall_MovePosY(BgBreakwall* this, GlobalContext* globalCtx) {
    Math_StepToF(&this->dyna.actor.world.pos.y, KREG(80) + this->dyna.actor.home.pos.y, 1.0f);
}

void BgBreakwall_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgBreakwall* this = THIS;

    this->actionFunc(this, globalCtx);
}

static Vec3f sColQuadList[][4] = {
    { { 800.0f, 1600.0f, 100.0f }, { -800.0f, 1600.0f, 100.0f }, { 800.0f, 0.0f, 100.0f }, { -800.0f, 0.0f, 100.0f } },
    { { 10.0f, 0.0f, 10.0f }, { -10.0f, 0.0f, 10.0f }, { 10.0f, 0.0f, -10.0f }, { -10.0f, 0.0f, -10.0f } },
};

void BgBreakwall_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgBreakwall* this = THIS;

    if (this->bombableWallDList != NULL) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_breakwall.c", 767);

        func_80093D18(globalCtx->state.gfxCtx);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_breakwall.c", 771),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, this->bombableWallDList);

        if (this->colType >= 0) {
            Vec3f colQuad[4];
            Vec3f* src = &sColQuadList[this->colType][0];
            Vec3f* dst = &colQuad[0];
            s32 i;

            for (i = 0; i < 4; i++) {
                Matrix_MultVec3f(src++, dst++);
            }

            Collider_SetQuadVertices(&this->collider, &colQuad[0], &colQuad[1], &colQuad[2], &colQuad[3]);
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_breakwall.c", 822);
    }
}
