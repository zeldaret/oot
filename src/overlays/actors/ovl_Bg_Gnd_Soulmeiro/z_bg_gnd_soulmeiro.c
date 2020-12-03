/*
 * File: z_bg_gnd_soulmeiro.c
 * Overlay: ovl_Bg_Gnd_Soulmeiro
 * Description: Web-Blocked Ceiling Hole (Inside Ganon's Castle)
 */

#include "z_bg_gnd_soulmeiro.h"
#include "global.h"

#define FLAGS 0x00000000

#define THIS ((BgGndSoulmeiro*)thisx)

void BgGndSoulmeiro_Init(Actor* thisx, GlobalContext* globalCtx);
void BgGndSoulmeiro_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgGndSoulmeiro_Update(Actor* thisx, GlobalContext* globalCtx);
void BgGndSoulmeiro_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8087AF38(BgGndSoulmeiro* this, GlobalContext* globalCtx);
void func_8087B284(BgGndSoulmeiro* this, GlobalContext* globalCtx);
void func_8087B350(BgGndSoulmeiro* this, GlobalContext* globalCtx);

const ActorInit Bg_Gnd_Soulmeiro_InitVars = {
    ACTOR_BG_GND_SOULMEIRO,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_DEMO_KEKKAI,
    sizeof(BgGndSoulmeiro),
    (ActorFunc)BgGndSoulmeiro_Init,
    (ActorFunc)BgGndSoulmeiro_Destroy,
    (ActorFunc)BgGndSoulmeiro_Update,
    (ActorFunc)BgGndSoulmeiro_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0x00020800, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 50, 20, 20, { 0, 0, 0 } },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

static Vec3f sZeroVec = { 0.0f, 0.0f, 0.0f };

static Gfx* D_8087B578[] = { 0x06007C00, 0x06002320, 0x060035A0 };

void BgGndSoulmeiro_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgGndSoulmeiro* this = THIS;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->actionFunc = NULL;

    switch (this->actor.params & 0xFF) {
        case 0:
            Collider_InitCylinder(globalCtx, &this->collider);
            Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
            this->actionFunc = func_8087B284;
            if (Flags_GetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F)) {

                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_MIR_RAY, this->actor.posRot.pos.x,
                            this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 9);
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
    BgGndSoulmeiro* this = THIS;

    if ((this->actor.params & 0xFF) == 0) {
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }
}

void func_8087AF38(BgGndSoulmeiro* this, GlobalContext* globalCtx) {
    Vec3f vecA;
    Vec3f vecB;
    s16 temp_1;
    s16 temp_2;
    f32 temp_3;
    f32 temp_4;
    f32 distXZ;
    s32 i;
    BgGndSoulmeiro* this2;

    if (this->unk_198 != 0) {
        this->unk_198--;
    }

    if (this->unk_198 == 20) {
        Flags_SetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F);
        this->actor.draw = NULL;
    }

    // This should be this->unk_198 == 0, this is required to match
    if (!this->unk_198) {
        Flags_SetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F);
        Actor_Kill(&this->actor);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_MIR_RAY, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                    this->actor.posRot.pos.z, 0, 0, 0, 9);
        return;
    }

    if (1) {}

    if ((this->unk_198 % 6) == 0) {
        temp_2 = Math_Rand_ZeroOne() * (10922.0f); // This should be: 0x10000 / 6.0f
        vecA.y = 0.0f;
        vecB.y = this->actor.posRot.pos.y;

        this2 = this;
        for (i = 0; i < 6; i++) {
            temp_1 = Math_Rand_CenteredFloat(0x2800) + temp_2;
            temp_3 = Math_Sins(temp_1);
            temp_4 = Math_Coss(temp_1);
            vecB.x = this2->actor.posRot.pos.x + (120.0f * temp_3);
            vecB.z = this2->actor.posRot.pos.z + (120.0f * temp_4);
            distXZ = Math_Vec3f_DistXZ(&this2->actor.initPosRot.pos, &vecB) * (1.0f / 120.f);
            if (distXZ < 0.7f) {
                temp_3 = Math_Sins(temp_1 + 0x8000);
                temp_4 = Math_Coss(temp_1 + 0x8000);
                vecB.x = this->actor.posRot.pos.x + (120.0f * temp_3);
                vecB.z = this->actor.posRot.pos.z + (120.0f * temp_4);
                distXZ = Math_Vec3f_DistXZ(&this->actor.initPosRot.pos, &vecB) * (1.0f / 120.f);
            }

            vecA.x = 4.0f * temp_3 * distXZ;
            vecA.y = 0.0f;
            vecA.z = 4.0f * temp_4 * distXZ;
            EffectSsDeadDb_Spawn(globalCtx, &this->actor.initPosRot.pos, &vecA, &sZeroVec, 60, 6, 255, 255, 150, 170,
                                 255, 0, 0, 1, 14, true);
            temp_2 += 0x2AAA;
        }
    }
}

void func_8087B284(BgGndSoulmeiro* this, GlobalContext* globalCtx) {
    s32 pad;

    if (!Flags_GetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F)) {
        this->actor.draw = BgGndSoulmeiro_Draw;
        if (this->collider.base.acFlags & 2) {
            Audio_PlaySoundGeneral(NA_SE_SY_CORRECT_CHIME, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->unk_198 = 40;
            this->actionFunc = func_8087AF38;
            return;
        }
        Collider_CylinderUpdate(&this->actor, &this->collider);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
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
    BgGndSoulmeiro* this = THIS;

    if (this->actionFunc != NULL) {
        this->actionFunc(this, globalCtx);
    }
}

void BgGndSoulmeiro_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 params = thisx->params & 0xFF;

    if (1) {}

    switch (params) {
        case 0:
            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_gnd_soulmeiro.c", 398);

            func_80093D84(globalCtx->state.gfxCtx);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_gnd_soulmeiro.c", 400),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_XLU_DISP++, D_8087B578[params]);
            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_gnd_soulmeiro.c", 403);
            break;
        case 1:
            Gfx_DrawDListXlu(globalCtx, D_8087B578[params]);
            break;
        case 2:
            Gfx_DrawDListOpa(globalCtx, D_8087B578[params]);
            break;
    }
}
