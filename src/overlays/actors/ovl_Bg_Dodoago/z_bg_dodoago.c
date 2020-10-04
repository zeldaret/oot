/*
 * File: z_bg_dodoago.c
 * Overlay: ovl_Bg_Dodoago
 * Description: Dodongo Head Statue in Dodongo's Cavern
 */

#include "z_bg_dodoago.h"
#include "overlays/actors/ovl_En_Bom/z_en_bom.h"

#define FLAGS 0x00000000

#define THIS ((BgDodoago*)thisx)

void BgDodoago_Init(Actor* thisx, GlobalContext* globalCtx);
void BgDodoago_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgDodoago_Update(Actor* thisx, GlobalContext* globalCtx);
void BgDodoago_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80871CF4(BgDodoago* this, GlobalContext* globalCtx);
void func_80871FB8(BgDodoago* this, GlobalContext* globalCtx);
void func_8087227C(BgDodoago* this, GlobalContext* globalCtx);
void func_80872288(BgDodoago* this, GlobalContext* globalCtx);

const ActorInit Bg_Dodoago_InitVars = {
    ACTOR_BG_DODOAGO,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_DDAN_OBJECTS,
    sizeof(BgDodoago),
    (ActorFunc)BgDodoago_Init,
    (ActorFunc)BgDodoago_Destroy,
    (ActorFunc)BgDodoago_Update,
    (ActorFunc)BgDodoago_Draw,
};

static ColliderCylinderInit sColCylinderInit0 = {
    { COLTYPE_UNK10, 0x00, 0x39, 0x00, 0x00, COLSHAPE_CYLINDER },
    { 0x02, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 80, 30, 80, { 0, 0, 0 } },
};

static ColliderCylinderInit sColCylinderInit1 = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x3D, 0x20, COLSHAPE_CYLINDER },
    { 0x02, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 50, 60, 280, { 0, 0, 0 } },
};

s16 sHasParent = false;

extern Gfx D_60013500[];
extern UNK_TYPE D_06001DDC;

void BgDodoago_SetupAction(BgDodoago* this, BgDodoagoActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgDodoago_SpawnSparkles(Vec3f* vec, GlobalContext* globalCtx) {
    Vec3f pos;
    Color_RGBA8 primColor = { 100, 100, 100, 0 };
    Color_RGBA8 envColor = { 40, 40, 40, 0 };
    static Vec3f velocity = { 0.0f, -1.5f, 0.0f };
    static Vec3f acceleration = { 0.0f, -0.2f, 0.0f };
    s32 i;

    for (i = 4; i > 0; i--) {
        pos.x = Math_Rand_CenteredFloat(20.0f) + vec->x;
        pos.y = Math_Rand_CenteredFloat(10.0f) + vec->y;
        pos.z = Math_Rand_CenteredFloat(20.0f) + vec->z;
        EffectSsKiraKira_SpawnSmall(globalCtx, &pos, &velocity, &acceleration, &primColor, &envColor);
    }
}

static InitChainEntry D_808725BC[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 5000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 800, ICHAIN_STOP),
};

u8 D_808727C0[100];

s32 D_80872824;

void BgDodoago_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgDodoago* this = THIS;
    s32 pad;
    s32 localC = 0;

    Actor_ProcessInitChain(&this->dyna.actor, D_808725BC);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_06001DDC, &localC);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, localC);
    ActorShape_Init(&this->dyna.actor.shape, 0.0f, NULL, 0.0f);

    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F))) {
        BgDodoago_SetupAction(this, func_8087227C);
        this->dyna.actor.shape.rot.x = 0x1333;
        globalCtx->unk_11D30[0] = globalCtx->unk_11D30[1] = 0xFF;
        return;
    }

    Collider_InitCylinder(globalCtx, &this->colliders[0]);
    Collider_InitCylinder(globalCtx, &this->colliders[1]);
    Collider_InitCylinder(globalCtx, &this->colliders[2]);
    Collider_SetCylinder(globalCtx, &this->colliders[0], &this->dyna.actor, &sColCylinderInit0);
    Collider_SetCylinder(globalCtx, &this->colliders[1], &this->dyna.actor, &sColCylinderInit1);
    Collider_SetCylinder(globalCtx, &this->colliders[2], &this->dyna.actor, &sColCylinderInit1);
    BgDodoago_SetupAction(this, func_80871CF4);
    D_808727C0[0] = 0;
}

void BgDodoago_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgDodoago* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    Collider_DestroyCylinder(globalCtx, &this->colliders[0]);
    Collider_DestroyCylinder(globalCtx, &this->colliders[1]);
    Collider_DestroyCylinder(globalCtx, &this->colliders[2]);
}

void func_80871CF4(BgDodoago* this, GlobalContext* globalCtx) {
    Actor* explosive = Actor_GetCollidedExplosive(globalCtx, &this->colliders[0].base);

    if (explosive != NULL) {
        this->unk_164 =
            (Math_Vec3f_Yaw(&this->dyna.actor.posRot.pos, &explosive->posRot.pos) >= this->dyna.actor.shape.rot.y) ? 1
                                                                                                                   : 0;

        if (((globalCtx->unk_11D30[0] == 0xFF) && (this->unk_164 == 1)) ||
            ((globalCtx->unk_11D30[1] == 0xFF) && (this->unk_164 == 0))) {
            Flags_SetSwitch(globalCtx, (this->dyna.actor.params & 0x3F));
            this->unk_164 = 0;
            Audio_PlaySoundGeneral(NA_SE_SY_CORRECT_CHIME, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            BgDodoago_SetupAction(this, func_80871FB8);
            func_800800F8(globalCtx, 0xD34, 0xA0, &this->dyna.actor, 0);
        } else if (globalCtx->unk_11D30[this->unk_164] == 0) {
            func_800800F8(globalCtx, 0xBF9, 0x28, &this->dyna.actor, 0);
            BgDodoago_SetupAction(this, func_80872288);
            Audio_PlaySoundGeneral(NA_SE_SY_CORRECT_CHIME, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        } else {
            func_800800F8(globalCtx, 0xBF9, 0x14, &this->dyna.actor, 0);
            Audio_PlaySoundGeneral(NA_SE_SY_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            D_80872824 += 0x1E;
            return;
        }

        if (!sHasParent) {
            this->dyna.actor.parent = explosive;
            sHasParent = true;
            D_80872824 = 0x32;
        }
    } else {

        if (Flags_GetEventChkInf(0xB0)) {
            Collider_CylinderUpdate(&this->dyna.actor, &this->colliders[0]);
            Collider_CylinderUpdate(&this->dyna.actor, &this->colliders[1]);
            Collider_CylinderUpdate(&this->dyna.actor, &this->colliders[2]);
            this->colliders[0].dim.pos.z += 0xC8;
            this->colliders[1].dim.pos.z += 0xD7;
            this->colliders[1].dim.pos.x += 0x5A;
            this->colliders[2].dim.pos.z += 0xD7;
            this->colliders[2].dim.pos.x -= 0x5A;

            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliders[0].base);
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliders[1].base);
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliders[2].base);
        }
    }
}

void func_80871FB8(BgDodoago* this, GlobalContext* globalCtx) {
    Vec3f currentPos;
    Vec3f D_808725CC[] = {
        { 0.0f, -200.0f, 430.0f },   { 20.0f, -200.0f, 420.0f }, { -20.0f, -200.0f, 420.0f },
        { 40.0, -200.0f, 380.0f },   { -40.0, -200.0f, 380.0f }, { 50.0, -200.0f, 350.0f },
        { -50.0f, -200.0f, 350.0f }, { 60.0f, -200.0f, 320.0f }, { -60.0f, -200.0f, 320.0f },
        { 70.0f, -200.0f, 290.0f },  { -70.0, -200.0f, 290.0f },
    };
    s32 i;

    if (globalCtx->unk_11D30[0] < 0xFF) {
        globalCtx->unk_11D30[0] += 5;
    }
    if (globalCtx->unk_11D30[1] < 0xFF) {
        globalCtx->unk_11D30[1] += 5;
    }

    if (globalCtx->unk_11D30[0] != 0xFF || globalCtx->unk_11D30[1] != 0xFF) {
        D_80872824--;
        return;
    }

    if (D_80872824 == 0x6C) {
        for (i = 10; i >= 0; i--) {
            currentPos.x = D_808725CC[i].x + this->dyna.actor.posRot.pos.x;
            currentPos.y = D_808725CC[i].y + this->dyna.actor.posRot.pos.y;
            currentPos.z = D_808725CC[i].z + this->dyna.actor.posRot.pos.z;
            func_80033480(globalCtx, &currentPos, 2.0f, 3, 0xC8, 0x4B, 1);
        }
    }

    currentPos.x = this->dyna.actor.posRot.pos.x + 200.0f;
    currentPos.y = this->dyna.actor.posRot.pos.y - 20.0f;
    currentPos.z = this->dyna.actor.posRot.pos.z + 100.0f;

    BgDodoago_SpawnSparkles(&currentPos, globalCtx);

    currentPos.x = this->dyna.actor.posRot.pos.x - 200.0f;
    currentPos.y = this->dyna.actor.posRot.pos.y - 20.0f;
    currentPos.z = this->dyna.actor.posRot.pos.z + 100.0f;

    BgDodoago_SpawnSparkles(&currentPos, globalCtx);
    Math_ApproxS(&this->unk_164, 0x64, 3);
    func_800AA000(500.0f, 0x78, 0x14, 0xA);

    if (Math_SmoothScaleMaxMinS(&this->dyna.actor.shape.rot.x, 0x1333, 0x6E - this->unk_164, 0x3E8, 0x32) == 0) {
        BgDodoago_SetupAction(this, func_8087227C);
        Audio_PlaySoundGeneral(NA_SE_EV_STONE_BOUND, &this->dyna.actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
    } else {
        Audio_PlaySoundGeneral(NA_SE_EV_STONE_STATUE_OPEN - SFX_FLAG, &this->dyna.actor.projectedPos, 4, &D_801333E0,
                               &D_801333E0, &D_801333E8);
    }
}

void func_8087227C(BgDodoago* this, GlobalContext* globalCtx) {
}

void func_80872288(BgDodoago* this, GlobalContext* globalCtx) {
    globalCtx->unk_11D30[this->unk_164] += 5;

    if (globalCtx->unk_11D30[this->unk_164] == 0xFF) {
        BgDodoago_SetupAction(this, func_80871CF4);
    }
}

void BgDodoago_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgDodoago* this = THIS;
    EnBom* bomb;

    if (this->dyna.actor.parent == NULL) {
        if ((s32)(this->colliders[1].base.maskA & 2) || (this->colliders[2].base.maskA & 2)) {

            if ((s32)(this->colliders[1].base.maskA & 2)) {
                bomb = (EnBom*)this->colliders[1].base.oc;
            } else {
                bomb = (EnBom*)this->colliders[2].base.oc;
            }
            this->colliders[1].base.maskA &= ~2;
            this->colliders[2].base.maskA &= ~2;
            if (bomb->actor.type == ACTORTYPE_EXPLOSIVES && bomb->actor.id == ACTOR_EN_BOM && bomb->actor.params == 0) {
                this->dyna.actor.parent = &bomb->actor;
                bomb->timer = 50;
                bomb->actor.speedXZ = 0.0f;
                D_80872824 = 0;
            }
        }
    } else {
        D_80872824++;
        Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F);
        if (D_808727C0[0] == 0 && D_80872824 >= 0x8D) {
            if (Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F)) {
                D_808727C0[0]++;
            } else {
                this->dyna.actor.parent = NULL;
            }
        }
    }
    this->actionFunc(this, globalCtx);
}

void BgDodoago_Draw(Actor* thisx, GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_dodoago.c", 672);

    if (Flags_GetEventChkInf(0xB0)) {
        func_80093D18(globalCtx->state.gfxCtx);
        gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_dodoago.c", 677),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_60013500);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_dodoago.c", 681);
}
