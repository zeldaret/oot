/*
 * File: z_en_ik.c
 * Overlay: ovl_En_Ik
 * Description: Iron Knuckle
 */

#include "z_en_ik.h"

#include "vt.h"

#define FLAGS 0x00000010

#define THIS ((EnIk*)thisx)

typedef void (*EnIkDrawFunc)(struct EnIk*, GlobalContext*);

void EnIk_Init(Actor* thisx, GlobalContext* globalCtx);
void EnIk_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnIk_Update(Actor* thisx, GlobalContext* globalCtx);
void EnIk_Draw(Actor* thisx, GlobalContext* globalCtx);

Actor* func_80A74674(GlobalContext* globalCtx, EnIk* this);
void func_80A74714(EnIk* this);
void func_80A7492C(EnIk* this, GlobalContext* globalCtx);
void func_80A74AAC(EnIk* this);
void func_80A74E2C(EnIk* this);
void func_80A74EBC(EnIk* this, GlobalContext* globalCtx);
void func_80A7506C(EnIk* this);
void func_80A7510C(EnIk* this, GlobalContext* globalCtx);
void func_80A751C8(EnIk* this);
void func_80A75260(EnIk* this, GlobalContext* globalCtx);
void func_80A753D0(EnIk* this);
void func_80A754A0(EnIk* this);
void func_80A755F0(EnIk* this);
void func_80A75FA0(Actor* thisx, GlobalContext* globalCtx);
void func_80A76798(Actor* thisx, GlobalContext* globalCtx);
void func_80A7748C(EnIk* this, GlobalContext* globalCtx);
void func_80A774BC(EnIk* this, GlobalContext* globalCtx);
void func_80A774F8(EnIk* this, GlobalContext* globalCtx);
void func_80A77844(EnIk* this, GlobalContext* globalCtx);
void func_80A77AEC(EnIk* this, GlobalContext* globalCtx);
void func_80A77B0C(EnIk* this, GlobalContext* globalCtx);
void func_80A77B3C(EnIk* this, GlobalContext* globalCtx);
void func_80A77ED0(EnIk* this, GlobalContext* globalCtx);
void func_80A77EDC(EnIk* this, GlobalContext* globalCtx);
void func_80A78160(EnIk* this, GlobalContext* globalCtx);

extern UNK_TYPE D_02003F80;
extern AnimationHeader D_06001C28;
extern AnimationHeader D_06002538;
extern AnimationHeader D_060029FC;
extern AnimationHeader D_060033C4;
extern AnimationHeader D_0600C114;
extern AnimationHeader D_0600DD50;
extern SkeletonHeader D_0601E178;
extern AnimationHeader D_060203D8;
extern SkeletonHeader D_060205C0;

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x05, 0x01 },
    { 25, 80, 0, { 0, 0, 0 } },
};

static ColliderTrisItemInit sTrisItemsInit[] = {
    {
        { 0x02, { 0x00000000, 0x00, 0x00 }, { 0xFFC3FFFF, 0x00, 0x00 }, 0x00, 0x09, 0x00 },
        { { { -10.0f, 14.0f, 2.0f }, { -10.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
    {
        { 0x02, { 0x00000000, 0x00, 0x00 }, { 0xFFC3FFFF, 0x00, 0x00 }, 0x00, 0x09, 0x00 },
        { { { -10.0f, -6.0f, 2.0f }, { 9.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
};

static ColliderTrisInit sTrisInit = {
    { COLTYPE_METAL_SHIELD, 0x00, 0x0D, 0x00, 0x00, COLSHAPE_TRIS },
    ARRAY_COUNT(sTrisItemsInit),
    sTrisItemsInit,
};

static ColliderQuadInit sQuadInit = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, 0x00, COLSHAPE_QUAD },
    { 0x00, { 0x20000000, 0x00, 0x40 }, { 0x00000000, 0x00, 0x00 }, 0x81, 0x00, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static DamageTable sDamageTable = { {
    0xD0, 0xF2, 0xE1, 0xF2, 0xD0, 0xE2, 0xF2, 0xD0, 0xF1, 0xF2, 0xF4, 0xE2, 0xE2, 0xE2, 0xE2, 0xE2,
    0xEF, 0x60, 0x60, 0x60, 0x00, 0x00, 0xF1, 0xF4, 0xF2, 0xF2, 0xF8, 0xF4, 0xFA, 0x00, 0xF4, 0x00,
} };

Vec3f D_80A78464 = { 0.0f, 0.5f, 0.0f };

// unused
Vec3f D_80A78470 = { 300.0f, 0.0f, 0.0f };

Vec3f D_80A7847C = { 800.0f, -200.0f, -5200.0f };

Vec3f D_80A78488 = { 0.0f, 0.0f, 0.0f };

Vec3f D_80A78494 = { -200.0f, -2200.0f, -200.0f };

Vec3f D_80A784A0 = { -6000.0f, 2000.0f, -3000.0f };

Vec3f D_80A784AC[] = {
    { -3000.0, -700.0, -5000.0 },
    { -3000.0, -700.0, 2000.0 },
    { 4000.0, -700.0, 2000.0 },
};

Vec3f D_80A784D0[] = {
    { 4000.0, -700.0, 2000.0 },
    { 4000.0, -700.0, -5000.0 },
    { -3000.0, -700.0, -5000.0 },
};

Vec3f D_80A784F4 = { 0.0f, 0.0f, 0.0f };

Vec3f D_80A78500 = { 0.0f, 0.3f, 0.0f };

Color_RGBA8 D_80A7850C = { 200, 200, 200, 255 };

Color_RGBA8 D_80A78510 = { 150, 150, 150, 0 };

Vec3f D_80A78514[] = {
    { 1000.0, -1000.0, 1000.0 },  { 0.0, -1000.0, 0.0 },        { -1000.0, -5000.0, -4000.0 },
    { 1000.0, -5000.0, -3000.0 }, { -1000.0, 1000.0, -6000.0 }, { -1000.0, 3000.0, -5000.0 },
    { -800.0, 1000.0, -3000.0 },  { 0.0, -4000.0, -2000.0 },    { -1000.0, -2000.0, -6000.0 },
    { 1000.0, -3000.0, 0.0 },     { 2000.0, -2000.0, -4000.0 }, { -1000.0, 0.0, -6000.0 },
    { 1000.0, -2000.0, -2000.0 }, { 0.0, -2000.0, 2100.0 },     { 0.0, 0.0, 0.0 },
    { 1000.0, -1000.0, -6000.0 }, { 2000.0, 0.0, -3000.0 },     { -1000.0, -1000.0, -4000.0 },
    { 900.0, -800.0, 2700.0 },
};

Vec3f D_80A785F8 = { 720.0f, 900.0f, 2500.0f };

static EnIkActionFunc sActionFuncs[] = {
    func_80A77AEC, func_80A77B0C, func_80A77B3C, func_80A7748C, func_80A774BC, func_80A774F8,
};

static EnIkDrawFunc sDrawFuncs[] = { func_80A77ED0, func_80A77EDC, func_80A77844 };

const ActorInit En_Ik_InitVars = {
    ACTOR_EN_IK,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_IK,
    sizeof(EnIk),
    (ActorFunc)EnIk_Init,
    (ActorFunc)EnIk_Destroy,
    (ActorFunc)EnIk_Update,
    (ActorFunc)EnIk_Draw,
};

void EnIk_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = THIS;

    if (Actor_FindNearby(globalCtx, &this->actor, ACTOR_EN_IK, ACTORTYPE_ENEMY, 8000.0f) == NULL) {
        func_800F5B58();
    }

    Collider_DestroyTris(globalCtx, &this->unk_3EC);
    Collider_DestroyCylinder(globalCtx, &this->unk_320);
    Collider_DestroyQuad(globalCtx, &this->unk_36C);
}

void EnIk_SetupAction(EnIk* this, EnIkActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void func_80A74398(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = THIS;
    s32 pad;
    EffectBlureInit1 blureInit;

    thisx->update = func_80A75FA0;
    thisx->draw = func_80A76798;
    thisx->flags |= 0x400;

    Collider_InitCylinder(globalCtx, &this->unk_320);
    Collider_SetCylinder(globalCtx, &this->unk_320, thisx, &sCylinderInit);
    Collider_InitTris(globalCtx, &this->unk_3EC);
    Collider_SetTris(globalCtx, &this->unk_3EC, thisx, &sTrisInit, this->unk_40C);
    Collider_InitQuad(globalCtx, &this->unk_36C);
    Collider_SetQuad(globalCtx, &this->unk_36C, thisx, &sQuadInit);

    thisx->colChkInfo.damageTable = &sDamageTable;
    thisx->colChkInfo.mass = 0xFE;
    this->unk_2FC = 0;
    thisx->colChkInfo.health = 30;
    thisx->gravity = -1.0f;
    this->switchFlags = (thisx->params >> 8) & 0xFF;
    thisx->params &= 0xFF;

    if (thisx->params == 0) {
        thisx->colChkInfo.health += 20;
        thisx->naviEnemyId = 52;
    } else {
        Actor_SetScale(thisx, 0.012f);
        thisx->naviEnemyId = 53;
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, thisx, ACTORTYPE_ENEMY);
    }

    blureInit.p1StartColor[0] = blureInit.p1StartColor[1] = blureInit.p2StartColor[0] = blureInit.p2StartColor[1] =
        blureInit.p2StartColor[2] = blureInit.p1EndColor[0] = blureInit.p1EndColor[1] = blureInit.p2EndColor[0] =
            blureInit.p2EndColor[1] = blureInit.p2EndColor[2] = 255;

    blureInit.p2StartColor[3] = 64;
    blureInit.p1StartColor[3] = 200;
    blureInit.p1StartColor[2] = blureInit.p1EndColor[2] = 150;
    blureInit.p1EndColor[3] = blureInit.p2EndColor[3] = 0;

    blureInit.elemDuration = 8;
    blureInit.unkFlag = 0;
    blureInit.calcMode = 2;

    Effect_Add(globalCtx, &this->blureIdx, EFFECT_BLURE1, 0, 0, &blureInit);
    func_80A74714(this);

    if (this->switchFlags != 0xFF) {
        if (Flags_GetSwitch(globalCtx, this->switchFlags)) {
            Actor_Kill(thisx);
        }
    } else if (thisx->params != 0 && Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)) {
        Actor_Kill(thisx);
    }
}

s32 func_80A745E4(EnIk* this, GlobalContext* globalCtx) {
    if (((this->unk_2FB != 0) || (this->actor.params == 0)) &&
        (func_800354B4(globalCtx, &this->actor, 100.0f, 0x2710, 0x4000, this->actor.shape.rot.y) != 0) &&
        (globalCtx->gameplayFrames & 1)) {
        func_80A755F0(this);
        return true;
    }
    return false;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A74674.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A74714.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A747C0.s")

void func_80A7489C(EnIk* this) {
    f32 frames = SkelAnime_GetFrameCount(&D_0600DD50.genericHeader);

    this->actor.flags |= 5;
    this->unk_2F8 = 4;
    this->actor.speedXZ = 0.0f;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600DD50, 0.0f, 0.0f, frames, 0, 4.0f);
    EnIk_SetupAction(this, func_80A7492C);
}

void func_80A7492C(EnIk* this, GlobalContext* globalCtx) {
    s32 phi_a0 = (this->unk_2FB == 0) ? 0x0AAA : 0x3FFC;
    s16 yawDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;

    if ((ABS(yawDiff) <= phi_a0) && (this->actor.xzDistFromLink < 100.0f) &&
        (ABS(this->actor.yDistFromLink) < 150.0f)) {
        if ((globalCtx->gameplayFrames & 1)) {
            func_80A74E2C(this);
        } else {
            func_80A751C8(this);
        }
    } else if ((ABS(yawDiff) <= 0x4000) && (ABS(this->actor.yDistFromLink) < 150.0f)) {
        func_80A74AAC(this);
    } else {
        func_80A74AAC(this);
    }
    func_80A745E4(this, globalCtx);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A74AAC.s")

#ifdef NON_EQUIVALENT
void func_80A74BA4(EnIk* this, GlobalContext* globalCtx) {
    s16 temp_a1;
    s16 temp_t0;
    s16 yawDiff;
    s16 sp30;
    s16 sp2E;
    s16 temp_v1_3;
    s16 phi_t0;
    s32 phi_a1;
    s16 phi_a3;

    if (this->unk_2FB == 0) {
        phi_t0 = 0xAAA;
        phi_a3 = 0x320;
        sp30 = 0;
        sp2E = 0x10;
    } else {
        phi_t0 = 0x3FFC;
        phi_a3 = 0x4B0;
        sp30 = 2;
        sp2E = 9;
    }
    temp_a1 = this->actor.wallPolyRot - this->actor.shape.rot.y;
    if ((this->actor.bgCheckFlags & 8) && (ABS(temp_a1) >= 0x4000)) {
        phi_t0 = (this->actor.yawTowardsLink > 0) ? this->actor.wallPolyRot - 0x4000 : this->actor.wallPolyRot + 0x4000;
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, phi_a1, 1, phi_a3, 0);
    } else {
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 1, phi_a3, 0);
    }
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
    yawDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;
    if ((phi_t0 >= ABS(yawDiff)) && (this->actor.xzDistFromLink < 100.0f)) {
        if (ABS(this->actor.yDistFromLink) < 150.0f) {
            if ((globalCtx->gameplayFrames & 1)) {
                func_80A74E2C(this);
            } else {
                func_80A751C8(this);
            }
        }
    }
    if (func_80A74674(globalCtx, this) != NULL) {
        func_80A751C8(this);
        this->unk_2FC = 1;
    } else {
        temp_t0 = this->actor.yawTowardsLink - this->actor.shape.rot.y;
        if (ABS(temp_t0) > 0x4000) {
            this->unk_300--;
            if (this->unk_300 == 0) {
                func_80A754A0(this);
            }
        } else {
            this->unk_300 = 0x28;
        }
    }
    func_80A745E4(this, globalCtx);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    temp_v1_3 = this->skelAnime.animCurrentFrame;
    if ((sp30 == temp_v1_3) || (sp2E == temp_v1_3)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_WALK);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A74BA4.s")
#endif

void func_80A74E2C(EnIk* this) {
    f32 frames = SkelAnime_GetFrameCount(&D_06001C28.genericHeader);

    this->unk_2FF = 1;
    this->unk_2F8 = 6;
    this->actor.speedXZ = 0.0f;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06001C28, 1.5f, 0.0f, frames, 2, -4.0f);
    EnIk_SetupAction(this, func_80A74EBC);
}

void func_80A74EBC(EnIk* this, GlobalContext* globalCtx) {
    Vec3f sp2C;

    if (this->skelAnime.animCurrentFrame == 15.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_SWING_AXE);
    } else if (this->skelAnime.animCurrentFrame == 21.0f) {
        sp2C.x = this->actor.posRot.pos.x + Math_Sins(this->actor.shape.rot.y + 0x6A4) * 70.0f;
        sp2C.z = this->actor.posRot.pos.z + Math_Coss(this->actor.shape.rot.y + 0x6A4) * 70.0f;
        sp2C.y = this->actor.posRot.pos.y;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_HIT_GND);
        func_8005AA1C(&globalCtx->mainCamera, 2, 0x19, 5);
        func_800AA000(this->actor.xzDistFromLink, 0xFF, 0x14, 0x96);
        func_80062CD4(globalCtx, &sp2C);
    }

    if ((17.0f < this->skelAnime.animCurrentFrame) && (this->skelAnime.animCurrentFrame < 23.0f)) {
        this->unk_2FE = 1;
    } else {
        if ((this->unk_2FB != 0) && (this->skelAnime.animCurrentFrame < 10.0f)) {
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 1, 0x5DC, 0);
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
        }
        this->unk_2FE = 0;
    }

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        func_80A7506C(this);
    }
}

void func_80A7506C(EnIk* this) {
    f32 frames = SkelAnime_GetFrameCount(&D_060029FC.genericHeader);

    this->unk_2FE = 0;
    this->unk_2F9 = (s8)frames;
    this->unk_2F8 = 7;
    this->unk_2FF = this->unk_2FE;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060029FC, 1.0f, 0.0f, frames, 0, -4.0f);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_PULLOUT);
    EnIk_SetupAction(this, func_80A7510C);
}

void func_80A7510C(EnIk* this, GlobalContext* globalCtx) {
    f32 frames;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) || (--this->unk_2F9 == 0)) {
        if (this->unk_2F8 == 8) {
            func_80A7489C(this);
        } else {
            frames = SkelAnime_GetFrameCount(&D_06002538.genericHeader);
            this->unk_2F8 = 8;
            SkelAnime_ChangeAnim(&this->skelAnime, &D_06002538, 1.5f, 0.0f, frames, 3, -4.0f);
        }
    }
}

void func_80A751C8(EnIk* this) {
    f32 frames = SkelAnime_GetFrameCount(&D_060033C4.genericHeader);

    this->unk_2FF = 2;
    this->unk_300 = 0;
    this->unk_2F8 = 6;
    this->actor.speedXZ = 0.0f;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060033C4, 0.0f, 0.0f, frames, 3, -6.0f);
    this->unk_2FC = 0;
    EnIk_SetupAction(this, func_80A75260);
}

void func_80A75260(EnIk* this, GlobalContext* globalCtx) {
    f32 temp_f0;

    this->unk_300 += 0x1C2;
    temp_f0 = Math_Sins(this->unk_300);
    this->skelAnime.animPlaybackSpeed = ABS(temp_f0);

    if (this->skelAnime.animCurrentFrame > 11.0f) {
        this->unk_2FF = 3;
    }
    if (((1.0f < this->skelAnime.animCurrentFrame) && (this->skelAnime.animCurrentFrame < 9.0f)) ||
        ((13.0f < this->skelAnime.animCurrentFrame) && (this->skelAnime.animCurrentFrame < 18.0f))) {
        if ((this->unk_2FC == 0) && (this->unk_2FB != 0) && (this->skelAnime.animCurrentFrame < 10.0f)) {
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 1, 0x5DC, 0);
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
        }
        if (this->unk_2FE < 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_SWING_AXE);
        }
        this->unk_2FE = 1;
    } else {
        this->unk_2FE = 0;
    }
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        func_80A753D0(this);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A753D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7545C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A754A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A75530.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A755F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7567C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A75790.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A758B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7598C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A75A38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A75C38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A75FA0.s")

Gfx* func_80A761B0(GraphicsContext* gfxCtx, u8 primR, u8 primG, u8 primB, u8 envR, u8 envG, u8 envB) {
    Gfx* displayList;
    Gfx* displayListHead;

    displayList = Graph_Alloc(gfxCtx, 4 * sizeof(Gfx));
    displayListHead = displayList;

    gDPPipeSync(displayListHead++);
    gDPSetPrimColor(displayListHead++, 0, 0, primR, primG, primB, 255);
    gDPSetEnvColor(displayListHead++, envR, envG, envB, 255);
    gSPEndDisplayList(displayListHead++);

    return displayList;
}

s32 EnIk_OverrideLimbDraw3(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* actor);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/EnIk_OverrideLimbDraw3.s")

void EnIk_PostLimbDraw3(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* actor);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/EnIk_PostLimbDraw3.s")

void func_80A76798(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ik_inFight.c", 1309);

    func_80093D18(globalCtx->state.gfxCtx);
    func_80093D84(globalCtx->state.gfxCtx);

    if (this->actor.params == 0) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, func_80A761B0(globalCtx->state.gfxCtx, 245, 225, 155, 30, 30, 0));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, func_80A761B0(globalCtx->state.gfxCtx, 255, 40, 0, 40, 0, 0));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, func_80A761B0(globalCtx->state.gfxCtx, 255, 255, 255, 20, 40, 30));
    } else if (this->actor.params == 1) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, func_80A761B0(globalCtx->state.gfxCtx, 245, 255, 205, 30, 35, 0));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, func_80A761B0(globalCtx->state.gfxCtx, 185, 135, 25, 20, 20, 0));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, func_80A761B0(globalCtx->state.gfxCtx, 255, 255, 255, 30, 40, 20));
    } else if (this->actor.params == 2) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, func_80A761B0(globalCtx->state.gfxCtx, 55, 65, 55, 0, 0, 0));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, func_80A761B0(globalCtx->state.gfxCtx, 205, 165, 75, 25, 20, 0));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, func_80A761B0(globalCtx->state.gfxCtx, 205, 165, 75, 25, 20, 0));
    } else {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, func_80A761B0(globalCtx->state.gfxCtx, 255, 255, 255, 180, 180, 180));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, func_80A761B0(globalCtx->state.gfxCtx, 225, 205, 115, 25, 20, 0));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, func_80A761B0(globalCtx->state.gfxCtx, 225, 205, 115, 25, 20, 0));
    }
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                     EnIk_OverrideLimbDraw3, EnIk_PostLimbDraw3, &this->actor);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ik_inFight.c", 1351);
}

void EnIk_StartMusic(void) {
    func_800F5ACC(0x38);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A76C14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A76DDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A76E2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7707C.s")

CsCmdActorAction* EnIk_GetNpcAction(GlobalContext* globalCtx, s32 actionIdx) {
    if (globalCtx->csCtx.state != 0) {
        return globalCtx->csCtx.npcActions[actionIdx];
    } else {
        return NULL;
    }
}

void func_80A770C0(EnIk* this, GlobalContext* globalCtx, s32 actionIdx) {
    CsCmdActorAction* npcAction = EnIk_GetNpcAction(globalCtx, actionIdx);

    if (npcAction != NULL) {
        this->actor.posRot.pos.x = npcAction->startPos.x;
        this->actor.posRot.pos.y = npcAction->startPos.y;
        this->actor.posRot.pos.z = npcAction->startPos.z;
        this->actor.posRot.rot.y = this->actor.shape.rot.y = npcAction->rot.y;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77140.s")

void func_80A77148(EnIk* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77148.s")

void func_80A77158(EnIk* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77158.s")

void func_80A771E4(EnIk* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A771E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77264.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A772A4.s")

void func_80A772EC(EnIk* this, GlobalContext* globalCtx) {
    static Vec3f D_80A78FA0;
    s32 pad[2];
    f32 wDest;

    SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &this->actor.posRot.pos, &D_80A78FA0, &wDest);
    Audio_PlaySoundGeneral(NA_SE_EN_IRONNACK_DEAD, &D_80A78FA0, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

void func_80A7735C(EnIk* this, GlobalContext* globalCtx) {
    s32 pad[3];
    f32 frames = SkelAnime_GetFrameCount(&D_060203D8.genericHeader);

    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_060205C0, NULL, this->limbDrawTable, this->transitionDrawTable,
                     30);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060203D8, 1.0f, 0.0f, frames, 2, 0.0f);
    this->action = 3;
    this->drawMode = 2;
    func_80A770C0(this, globalCtx, 4);
    func_80A772EC(this, globalCtx);
    this->actor.shape.unk_14 = 0xFF;
}

void func_80A77434(EnIk* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77434.s")

void func_80A77474(EnIk* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77474.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7748C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A774BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A774F8.s")

s32 EnIk_OverrideLimbDraw2(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* actor);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/EnIk_OverrideLimbDraw2.s")

void EnIk_PostLimbDraw2(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* actor);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/EnIk_PostLimbDraw2.s")

void func_80A77844(EnIk* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;
    s32 pad[2];

    OPEN_DISPS(gfxCtx, "../z_en_ik_inAwake.c", 322);

    func_8002EBCC(&this->actor, globalCtx, 0);
    func_80093D18(gfxCtx);
    func_80093D84(gfxCtx);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x08, func_80A761B0(gfxCtx, 245, 225, 155, 30, 30, 0));
    gSPSegment(oGfxCtx->polyOpa.p++, 0x09, func_80A761B0(gfxCtx, 255, 40, 0, 40, 0, 0));
    gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, func_80A761B0(gfxCtx, 255, 255, 255, 20, 40, 30));
    SkelAnime_DrawSV(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                     EnIk_OverrideLimbDraw2, EnIk_PostLimbDraw2, &this->actor);

    CLOSE_DISPS(gfxCtx, "../z_en_ik_inAwake.c", 345);
}

void func_80A779DC(EnIk* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction = EnIk_GetNpcAction(globalCtx, 4);
    u32 action;
    u32 currentNpcAction;

    if (npcAction != NULL) {
        action = npcAction->action;
        currentNpcAction = this->npcAction;
        if (action != currentNpcAction) {
            switch (action) {
                case 1:
                    func_80A77148(this);
                    break;
                case 2:
                    func_80A77158(this, globalCtx);
                    break;
                case 3:
                    func_80A771E4(this);
                    break;
                case 4:
                    func_80A78160(this, globalCtx);
                    break;
                case 5:
                    func_80A7735C(this, globalCtx);
                    break;
                case 6:
                    func_80A77434(this, globalCtx);
                    break;
                case 7:
                    func_80A77474(this, globalCtx);
                    break;
                default:
                    osSyncPrintf("En_Ik_inConfrontion_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
            }

            this->npcAction = action;
        }
    }
}

void func_80A77AEC(EnIk* this, GlobalContext* globalCtx) {
    func_80A779DC(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77B0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77B3C.s")

void EnIk_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = THIS;

    if (this->action < 0 || this->action >= ARRAY_COUNT(sActionFuncs) || sActionFuncs[this->action] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        sActionFuncs[this->action](this, globalCtx);
    }
}

s32 EnIk_OverrideLimbDraw1(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* actor);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/EnIk_OverrideLimbDraw1.s")

void EnIk_PostLimbDraw1(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* actor);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/EnIk_PostLimbDraw1.s")

void func_80A77ED0(EnIk* this, GlobalContext* globalCtx) {
}

void func_80A77EDC(EnIk* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;
    s32 pad[2];

    OPEN_DISPS(gfxCtx, "../z_en_ik_inConfrontion.c", 630);

    func_8002EBCC(&this->actor, globalCtx, 0);
    func_80093D18(gfxCtx);
    func_80093D84(gfxCtx);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x08, func_80A761B0(gfxCtx, 245, 225, 155, 30, 30, 0));
    gSPSegment(oGfxCtx->polyOpa.p++, 0x09, func_80A761B0(gfxCtx, 255, 40, 0, 40, 0, 0));
    gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, func_80A761B0(gfxCtx, 255, 255, 255, 20, 40, 30));
    SkelAnime_DrawSV(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                     EnIk_OverrideLimbDraw1, EnIk_PostLimbDraw1, &this->actor);

    CLOSE_DISPS(gfxCtx, "../z_en_ik_inConfrontion.c", 653);
}

void EnIk_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = THIS;

    if (this->drawMode < 0 || this->drawMode >= ARRAY_COUNT(sDrawFuncs) || sDrawFuncs[this->drawMode] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        sDrawFuncs[this->drawMode](this, globalCtx);
    }
}

void func_80A780D0(EnIk* this, GlobalContext* globalCtx) {
    if (this->actor.params == 0) {
        if (!(gSaveContext.eventChkInf[3] & 0x800)) {
            this->actor.update = EnIk_Update;
            this->actor.draw = EnIk_Draw;
            Actor_SetScale(&this->actor, 0.01f);
        } else {
            func_80A78160(this, globalCtx);
            EnIk_StartMusic();
        }
    }
    osSyncPrintf("En_Ik_inConfrontion_Init : %d !!!!!!!!!!!!!!!!\n", this->actor.params);
}

void func_80A78160(EnIk* this, GlobalContext* globalCtx) {
    this->actor.update = func_80A75FA0;
    this->actor.draw = func_80A76798;
    this->actor.flags |= 5;
    gSaveContext.eventChkInf[3] |= 0x800;
    Actor_SetScale(&this->actor, 0.012f);
    func_80A7489C(this);
}

void func_80A781CC(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = THIS;

    if (!Gameplay_InCsMode(globalCtx)) {
        this->actor.update = EnIk_Update;
        this->actor.draw = EnIk_Draw;
        Cutscene_SetSegment(globalCtx, &D_02003F80);
        gSaveContext.cutsceneTrigger = 1;
        Actor_SetScale(&this->actor, 0.01f);
        gSaveContext.eventChkInf[3] |= 0x1000;
        func_80A7735C(this, globalCtx);
    }
}

void EnIk_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = THIS;
    s32 flag = this->actor.params & 0xFF00;

    if (((this->actor.params & 0xFF) == 0 && (gSaveContext.eventChkInf[3] & 0x1000)) ||
        (flag != 0 && Flags_GetSwitch(globalCtx, flag >> 8))) {
        Actor_Kill(&this->actor);
    } else {
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0601E178, &D_0600C114, this->limbDrawTable,
                         this->transitionDrawTable, 30);
        func_80A74398(&this->actor, globalCtx);
        func_80A780D0(this, globalCtx);
    }
}
