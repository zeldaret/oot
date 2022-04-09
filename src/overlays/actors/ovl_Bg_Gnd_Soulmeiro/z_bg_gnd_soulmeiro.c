/*
 * File: z_bg_gnd_soulmeiro.c
 * Overlay: ovl_Bg_Gnd_Soulmeiro
 * Description: Web-Blocked Ceiling Hole (Inside Ganon's Castle)
 */

#include "z_bg_gnd_soulmeiro.h"
#include "objects/object_demo_kekkai/object_demo_kekkai.h"
#include "global.h"

#define FLAGS 0

void BgGndSoulmeiro_Init(Actor* thisx, GlobalContext* globalCtx);
void BgGndSoulmeiro_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgGndSoulmeiro_Update(Actor* thisx, GlobalContext* globalCtx);
void BgGndSoulmeiro_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8087AF38(BgGndSoulmeiro* this, GlobalContext* globalCtx);
void func_8087B284(BgGndSoulmeiro* this, GlobalContext* globalCtx);
void func_8087B350(BgGndSoulmeiro* this, GlobalContext* globalCtx);

const ActorInit Bg_Gnd_Soulmeiro_InitVars = {
    ACTOR_BG_GND_SOULMEIRO,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_DEMO_KEKKAI,
    sizeof(BgGndSoulmeiro),
    (ActorFunc)BgGndSoulmeiro_Init,
    (ActorFunc)BgGndSoulmeiro_Destroy,
    (ActorFunc)BgGndSoulmeiro_Update,
    (ActorFunc)BgGndSoulmeiro_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x00 },
        { 0x00020800, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 50, 20, 20, { 0, 0, 0 } },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

void BgGndSoulmeiro_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgGndSoulmeiro* this = (BgGndSoulmeiro*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->actionFunc = NULL;

    switch (this->actor.params & 0xFF) {
        case 0:
            Collider_InitCylinder(globalCtx, &this->collider);
            Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
            this->actionFunc = func_8087B284;
            if (Flags_GetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F)) {

                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_MIR_RAY, this->actor.world.pos.x,
                            this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 9);
                this->actor.draw = NULL;
                Actor_Kill(&this->actor);
                return;
            } else {
                this->actor.draw = BgGndSoulmeiro_Draw;
            }
            break;
        case 1:
        case 2:
            if (Flags_GetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F)) {
                this->actor.draw = BgGndSoulmeiro_Draw;
            } else {
                this->actor.draw = NULL;
            }
            this->actionFunc = func_8087B350;
            break;
    }
}

void BgGndSoulmeiro_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgGndSoulmeiro* this = (BgGndSoulmeiro*)thisx;

    if ((this->actor.params & 0xFF) == 0) {
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }
}

void func_8087AF38(BgGndSoulmeiro* this, GlobalContext* globalCtx) {
    static Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    Vec3f vecA;
    Vec3f vecB;
    Actor* thisx = &this->actor;

    if (this->unk_198 != 0) {
        this->unk_198--;
    }

    if (this->unk_198 == 20) {
        Flags_SetSwitch(globalCtx, (thisx->params >> 8) & 0x3F);
        thisx->draw = NULL;
    }

    // This should be this->unk_198 == 0, this is required to match
    if (!this->unk_198) {
        Flags_SetSwitch(globalCtx, (thisx->params >> 8) & 0x3F);
        Actor_Kill(&this->actor);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_MIR_RAY, thisx->world.pos.x, thisx->world.pos.y,
                    thisx->world.pos.z, 0, 0, 0, 9);
    } else if ((this->unk_198 % 6) == 0) {
        s32 i;
        s16 temp_2 = Rand_ZeroOne() * (10922.0f); // This should be: 0x10000 / 6.0f

        vecA.y = 0.0f;
        vecB.y = thisx->world.pos.y;

        for (i = 0; i < 6; i++) {
            s16 temp_1 = Rand_CenteredFloat(0x2800) + temp_2;
            f32 temp_3 = Math_SinS(temp_1);
            f32 temp_4 = Math_CosS(temp_1);
            f32 distXZ;

            vecB.x = thisx->world.pos.x + (120.0f * temp_3);
            vecB.z = thisx->world.pos.z + (120.0f * temp_4);
            distXZ = Math_Vec3f_DistXZ(&thisx->home.pos, &vecB) * (1.0f / 120.0f);
            if (distXZ < 0.7f) {
                temp_3 = Math_SinS(temp_1 + 0x8000);
                temp_4 = Math_CosS(temp_1 + 0x8000);
                vecB.x = thisx->world.pos.x + (120.0f * temp_3);
                vecB.z = thisx->world.pos.z + (120.0f * temp_4);
                distXZ = Math_Vec3f_DistXZ(&thisx->home.pos, &vecB) * (1.0f / 120.0f);
            }

            vecA.x = 4.0f * temp_3 * distXZ;
            vecA.y = 0.0f;
            vecA.z = 4.0f * temp_4 * distXZ;
            EffectSsDeadDb_Spawn(globalCtx, &thisx->home.pos, &vecA, &zeroVec, 60, 6, 255, 255, 150, 170, 255, 0, 0, 1,
                                 14, true);
            temp_2 += 0x2AAA;
        }
    }
}

void func_8087B284(BgGndSoulmeiro* this, GlobalContext* globalCtx) {
    s32 pad;

    if (!Flags_GetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F)) {
        this->actor.draw = BgGndSoulmeiro_Draw;
        if (this->collider.base.acFlags & AC_HIT) {
            Audio_PlaySoundGeneral(NA_SE_SY_CORRECT_CHIME, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->unk_198 = 40;
            this->actionFunc = func_8087AF38;
        } else {
            Collider_UpdateCylinder(&this->actor, &this->collider);
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
    }
}

void func_8087B350(BgGndSoulmeiro* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F)) {
        this->actor.draw = BgGndSoulmeiro_Draw;
    } else {
        this->actor.draw = NULL;
    }
}

void BgGndSoulmeiro_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgGndSoulmeiro* this = (BgGndSoulmeiro*)thisx;

    if (this->actionFunc != NULL) {
        this->actionFunc(this, globalCtx);
    }
}

void BgGndSoulmeiro_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static Gfx* dLists[] = {
        gSpiritTrialWebDL,
        gSpiritTrialLightSourceDL,
        gSpiritTrialLightFloorDL,
    };
    s32 params = thisx->params & 0xFF;

    if (1) {}

    switch (params) {
        case 0:
            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_gnd_soulmeiro.c", 398);
            Gfx_SetupDL25Xlu(globalCtx->state.gfxCtx);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_gnd_soulmeiro.c", 400),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, dLists[params]);
            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_gnd_soulmeiro.c", 403);
            break;
        case 1:
            Gfx_DrawDListXlu(globalCtx, dLists[params]);
            break;
        case 2:
            Gfx_DrawDListOpa(globalCtx, dLists[params]);
            break;
    }
}
