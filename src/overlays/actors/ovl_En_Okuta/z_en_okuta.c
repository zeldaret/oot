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

extern Gfx D_06003380[];
extern SkeletonHeader D_06003660;
extern AnimationHeader D_06003C64;

static ColliderCylinderInit sCylinderInit1 = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x09, 0x01, 0x01 },
    { 13, 20, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit sCylinderInit2 = {
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
        Collider_SetCylinder(globalCtx, &this->collider, thisx, &sCylinderInit2);
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
        Collider_SetCylinder(globalCtx, &this->collider, thisx, &sCylinderInit1);
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
    static Vec3f accel = { 0.0f, 0.0f, 0.0f };
    static Color_RGBA8 primColor = { 255, 255, 255, 255 };
    static Color_RGBA8 envColor = { 150, 150, 150, 255 };

    func_8002829C(globalCtx, pos, velocity, &accel, &primColor, &envColor, 0x190, scaleStep);
}

void func_80AC09A4(EnOkuta* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC09A4.s")

void func_80AC09E8(EnOkuta* this, GlobalContext* globalCtx);
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

void func_80AC0F64(EnOkuta* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0F64.s")

void func_80AC10A8(EnOkuta* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC10A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC11A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC12D8.s")

void func_80AC1458(EnOkuta* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC1458.s")

void func_80AC14A8(EnOkuta* this, GlobalContext* globalCtx) {
    static Vec3f accel = { 0.0f, -0.5f, 0.0f };
    static Color_RGBA8 primColor = { 255, 255, 255, 255 };
    static Color_RGBA8 envColor = { 150, 150, 150, 0 };
    Vec3f velocity;
    Vec3f pos;
    s32 i;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        this->unk_194++;
    }
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y, 0.5f, 5.0f);
    if (this->unk_194 == 5) {
        pos.x = this->actor.posRot.pos.x;
        pos.y = this->actor.posRot.pos.y + 40.0f;
        pos.z = this->actor.posRot.pos.z;
        velocity.x = 0.0f;
        velocity.y = -0.5f;
        velocity.z = 0.0f;
        func_80AC093C(&pos, &velocity, -0x14, globalCtx);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_DEAD2);
    }
    if (func_800A56C8(&this->skelAnime, 15.0f)) {
        func_80AC09A4(this, globalCtx);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_LAND);
    }
    if (this->unk_194 < 3) {
        Actor_SetScale(&this->actor, ((this->unk_194 * 0.25f) + 1.0f) * 0.01f);
        return;
    }
    if (this->unk_194 < 6) {
        Actor_SetScale(&this->actor, (1.5f - ((this->unk_194 - 2) * 0.2333f)) * 0.01f);
        return;
    }
    if (this->unk_194 < 0xB) {
        Actor_SetScale(&this->actor, (((this->unk_194 - 5) * 0.04f) + 0.8f) * 0.01f);
        return;
    }
    if (Math_ApproxF(&this->actor.scale.x, 0.0f, 0.0005f)) {
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 30, NA_SE_EN_OCTAROCK_BUBLE);
        Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0x70);
        for (i = 0; i < 20; i++) {
            velocity.x = (Math_Rand_ZeroOne() - 0.5f) * 7.0f;
            velocity.y = Math_Rand_ZeroOne() * 7.0f;
            velocity.z = (Math_Rand_ZeroOne() - 0.5f) * 7.0f;
            EffectSsDtBubble_SpawnCustomColor(globalCtx, &this->actor.posRot.pos, &velocity, &accel, &primColor,
                                              &envColor, Math_Rand_S16Offset(100, 50), 25, 0);
        }
        Actor_Kill(&this->actor);
    }
    this->actor.scale.y = this->actor.scale.z = this->actor.scale.x;
}

void func_80AC17BC(EnOkuta* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC17BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC1938.s")

void func_80AC1B80(EnOkuta* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC1B80.s")

void func_80AC1F28(EnOkuta* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC1F28.s")

void EnOkuta_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnOkuta* this = THIS;
    Player* player = PLAYER;
    GlobalContext* globalCtx2 = globalCtx;
    WaterBox* outWaterBox;
    f32 ySurface;
    Vec3f sp38;
    s32 sp34;

    if (!(player->stateFlags1 & 0x300000C0)) {
        if (this->actor.params == 0) {
            func_80AC1F28(this, globalCtx2);
            if (!func_80042244(globalCtx2, &globalCtx2->colCtx, this->actor.posRot.pos.x, this->actor.posRot.pos.z,
                               &ySurface, &outWaterBox) ||
                (ySurface < this->actor.groundY)) {
                if (this->actor.colChkInfo.health != 0) {
                    Actor_Kill(&this->actor);
                    return;
                }
            } else {
                this->actor.initPosRot.pos.y = ySurface;
            }
        }
        this->actionFunc(this, globalCtx2);
        if (this->actor.params == 0) {
            func_80AC1B80(this);
            this->collider.dim.height = (((sCylinderInit2.dim.height * this->unk_364.y) - this->collider.dim.yShift) *
                                         this->actor.scale.y * 100.0f);
        } else {
            sp34 = false;
            Actor_MoveForward(&this->actor);
            Math_Vec3f_Copy(&sp38, &this->actor.posRot.pos);
            func_8002E4B4(globalCtx2, &this->actor, 10.0f, 15.0f, 30.0f, 5);
            if ((this->actor.bgCheckFlags & 8) &&
                func_80042048(&globalCtx2->colCtx, this->actor.wallPoly, this->actor.wallPolySource)) {
                sp34 = true;
                this->actor.bgCheckFlags &= ~8;
            }
            if ((this->actor.bgCheckFlags & 1) &&
                func_80042048(&globalCtx2->colCtx, this->actor.floorPoly, this->actor.floorPolySource)) {
                sp34 = true;
                this->actor.bgCheckFlags &= ~1;
            }
            if (sp34 && !(this->actor.bgCheckFlags & 9)) {
                Math_Vec3f_Copy(&this->actor.posRot.pos, &sp38);
            }
        }
        Collider_CylinderUpdate(&this->actor, &this->collider);
        if ((this->actionFunc == func_80AC0F64) || (this->actionFunc == func_80AC10A8)) {
            this->collider.dim.pos.y =
                this->actor.posRot.pos.y + (this->skelAnime.limbDrawTbl->y * this->actor.scale.y);
            this->collider.dim.radius = sCylinderInit2.dim.radius * this->actor.scale.x * 100.0f;
        }
        if (this->actor.params == 0x10) {
            this->actor.flags |= 0x1000000;
            CollisionCheck_SetAT(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
        }
        if (this->actionFunc != func_80AC0F08) {
            if ((this->actionFunc != func_80AC14A8) && (this->actionFunc != func_80AC1458) &&
                (this->actionFunc != func_80AC17BC)) {
                CollisionCheck_SetAC(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
            }
            CollisionCheck_SetOC(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
        }
        Actor_SetHeight(&this->actor, 15.0f);
        if ((this->actor.params == 0) && (this->actor.draw != NULL)) {
            func_80AC09E8(this, globalCtx2);
        }
    }
}

s32 func_80AC2350(EnOkuta* this, f32 arg1, Vec3f* arg2);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC2350.s")

s32 func_80AC25D8(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* actor) {
    EnOkuta* this = (EnOkuta*)actor;
    f32 phi_f0 = this->skelAnime.animCurrentFrame;
    Vec3f scale;
    s32 doScale = false;

    if (this->actionFunc == func_80AC14A8) {
        phi_f0 += this->unk_194;
    }
    if (limbIndex == 5) {
        if ((this->unk_364.x != 1.0f) || (this->unk_364.y != 1.0f) || (this->unk_364.z != 1.0f)) {
            scale = this->unk_364;
            doScale = true;
        }
    } else if (limbIndex == 8) {
        doScale = func_80AC2350(this, phi_f0, &scale);
    }
    if (doScale) {
        Matrix_Scale(scale.x, scale.y, scale.z, MTXMODE_APPLY);
    }
    return 0;
}

void EnOkuta_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnOkuta* this = THIS;
    s32 pad;

    func_80093D18(globalCtx->state.gfxCtx);

    if (this->actor.params == 0) {
        SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_80AC25D8, NULL,
                       &this->actor);
        return;
    }

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_okuta.c", 1653);

    Matrix_Mult(&globalCtx->mf_11DA0, MTXMODE_APPLY);
    Matrix_RotateZ(this->actor.initPosRot.rot.z * 0.0000958738f, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_okuta.c", 1657),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_06003380);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_okuta.c", 1662);
}
