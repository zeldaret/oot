#include "z_en_okuta.h"

#define FLAGS 0x00000005

#define THIS ((EnOkuta*)thisx)

void EnOkuta_Init(Actor* thisx, GlobalContext* globalCtx);
void EnOkuta_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnOkuta_Update(Actor* thisx, GlobalContext* globalCtx);
void EnOkuta_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80AC0A88(Actor* thisx);
void func_80AC0F08(EnOkuta* this, GlobalContext* globalCtx);
void func_80AC1938(EnOkuta* this, GlobalContext* globalCtx);

const ActorInit En_Okuta_InitVars = {
    ACTOR_EN_OKUTA,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_OKUTA,
    sizeof(EnOkuta),
    (ActorFunc)EnOkuta_Init,
    (ActorFunc)EnOkuta_Destroy,
    (ActorFunc)EnOkuta_Update,
    (ActorFunc)EnOkuta_Draw,
};

extern SkeletonHeader D_06003660;
extern AnimationHeader D_06003C64;

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x09, 0x01, 0x01 },
    { 13, 20, 0, { 0, 0, 0 } },
};

// sCylinderInit
ColliderCylinderInit D_80AC284C = {
    { COLTYPE_UNK0, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x01, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 20, 40, -30, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 1, 0xF, 0x3C, 0x64 };

static DamageTable sDamageTable = {
    0x00, 0x02, 0x01, 0x02, 0x01, 0x02, 0x02, 0x02, 0x01, 0x02, 0x04, 0x02, 0x34, 0x02, 0x02, 0x02,
    0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, 66, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 6500, ICHAIN_STOP),
};

static Vec3f sAccel = { 0.0f, 0.0f, 0.0f };

static Color_RGBA8 sPrimColor = { 255, 255, 255, 255 };

static Color_RGBA8 sEnvColor = { 150, 150, 150, 255 };

UNK_TYPE D_80AC28BC[] = { 0x00000000, 0xBF000000, 0x00000000 };

UNK_TYPE D_80AC28C8 = 0xFFFFFFFF;

UNK_TYPE D_80AC28CC = 0x96969600;

void EnOkuta_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnOkuta* this = THIS;
    s32 pad;
    WaterBox* outWaterBox;
    f32 ySurface;
    UNK_TYPE sp30;

    Actor_ProcessInitChain(thisx, sInitChain);
    this->unk_196 = (thisx->params >> 8) & 0xFF;
    thisx->params &= 0xFF;
    if (thisx->params == 0) {
        SkelAnime_Init(globalCtx, &this->skelAnime, &D_06003660, &D_06003C64, this->limbDrawTable,
                       this->transitionDrawTable, 38);
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, thisx, &D_80AC284C);
        func_80061ED4(&thisx->colChkInfo, &sDamageTable, &sColChkInfoInit);
        if ((this->unk_196 == 0xFF) || (this->unk_196 == 0)) {
            this->unk_196 = 1;
        }
        thisx->groundY = func_8003C9A4(&globalCtx->colCtx, &thisx->floorPoly, &sp30, thisx, &thisx->posRot.pos);
        if (!func_80042244(globalCtx, &globalCtx->colCtx, thisx->posRot.pos.x, thisx->posRot.pos.z, &ySurface,
                           &outWaterBox) ||
            (ySurface <= thisx->groundY)) {
            Actor_Kill(thisx);
        } else {
            thisx->initPosRot.pos.y = ySurface;
        }
        func_80AC0A88(thisx);
    } else {
        ActorShape_Init(&thisx->shape, 1100.0f, ActorShadow_DrawFunc_Circle, 18.0f);
        thisx->flags &= ~1;
        thisx->flags |= 0x10;
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, thisx, &sCylinderInit);
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, thisx, ACTORTYPE_PROP);
        this->unk_194 = 0x1E;
        thisx->shape.rot.y = 0;
        this->actionFunc = func_80AC1938;
        thisx->speedXZ = 10.0f;
    }
}

void EnOkuta_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnOkuta* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0890.s")

void func_80AC093C(Vec3f* pos, Vec3f* velocity, s16 scaleStep, GlobalContext* globalCtx) {
    func_8002829C(globalCtx, pos, velocity, &sAccel, &sPrimColor, &sEnvColor, 0x190, scaleStep);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC09A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC09E8.s")

void func_80AC0A88(Actor* thisx) {
    EnOkuta* this = THIS;

    thisx->draw = NULL;
    thisx->flags &= ~1;
    this->actionFunc = func_80AC0F08;
    thisx->posRot.pos.y = thisx->initPosRot.pos.y;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0AB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0B24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0B60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0BC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0CAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0D34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0D7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0DC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0F08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0F64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC10A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC11A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC12D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC1458.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC14A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC17BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC1938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC1B80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC1F28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/EnOkuta_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC2350.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC25D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/EnOkuta_Draw.s")
