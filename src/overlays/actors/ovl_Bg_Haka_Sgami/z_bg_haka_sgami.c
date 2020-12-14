/*
 * File: z_bg_haka_sgami.c
 * Overlay: ovl_Bg_Haka_Sgami
 * Description: Shadow Temple Spinning Scythe Trap
 */

#include "z_bg_haka_sgami.h"

#define FLAGS 0x00000011

#define THIS ((BgHakaSgami*)thisx)

typedef enum {
    /* 0 */ SCYTHE_TRAP_SHADOW_TEMPLE,
    /* 1 */ SCYTHE_TRAP_SHADOW_TEMPLE_INVISIBLE,
    /* 2 */ ICE_CAVERN_SHADOW_TEMPLE_INVISIBLE
} SpinningScytheTrapMode;

void BgHakaSgami_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHakaSgami_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHakaSgami_Update(Actor* thisx, GlobalContext* globalCtx);

void func_8087E7E4(BgHakaSgami* this, GlobalContext* globalCtx);
void func_8087E858(BgHakaSgami* this, GlobalContext* globalCtx);
void BgHakaSgami_Draw(BgHakaSgami* this, GlobalContext* globalCtx);

extern Gfx D_0600BF20;
extern Gfx D_060021F0;

const ActorInit Bg_Haka_Sgami_InitVars = {
    ACTOR_BG_HAKA_SGAMI,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgHakaSgami),
    (ActorFunc)BgHakaSgami_Init,
    (ActorFunc)BgHakaSgami_Destroy,
    (ActorFunc)BgHakaSgami_Update,
    NULL,
};

ColliderTrisItemInit D_8087EE60[] = {
    {
        { 0x02, { 0x20000000, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
        { { { 365.0f, 45.0f, 27.0f }, { 130.0f, 45.0f, 150.0f }, { 290.0f, 45.0f, 145.0f } } },
    },
    {
        { 0x02, { 0x20000000, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
        { { { 250.0f, 45.0f, 90.0f }, { 50.0f, 45.0f, 80.0f }, { 160.0f, 45.0f, 160.0f } } },
    },
    {
        { 0x02, { 0x20000000, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
        { { { -305.0f, 33.0f, -7.0f }, { -220.0f, 33.0f, 40.0f }, { -130.0f, 33.0f, -5.0f } } },
    },
    {
        { 0x02, { 0x20000000, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
        { { { -190.0f, 33.0f, 40.0f }, { -30.0f, 33.0f, 15.0f }, { -70.0f, 33.0f, -30.0f } } },
    },
};

ColliderTrisInit D_8087EF50 = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, 0x20, COLSHAPE_TRIS },
    4,
    D_8087EE60,
};

ColliderCylinderInit D_8087EF60 = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 80, 130, 0, { 0, 0, 0 } },
};

CollisionCheckInfoInit D_8087EF8C = { 0x00, 0x0050, 0x0082, 0xFF };

InitChainEntry D_8087EF94[] = {
    ICHAIN_F32(uncullZoneScale, 1000, ICHAIN_CONTINUE),
    ICHAIN_U8(unk_1F, 4, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

u8 sBlureP1StartColor[] = {
    250,
    250,
    250,
    200,
};

u8 sBlureP2StartColor[] = {
    200,
    200,
    200,
    130,
};

u8 sBlureP1EndColor[] = {
    200,
    200,
    200,
    60,
};

u8 sBlureP2EndColor[] = {
    150,
    150,
    150,
    20,
};

Vec3f D_8087EFB0[] = {
    { -20.0f, 50.0f, 130.0f },
    { -50.0f, 33.0f, 20.0f },
};

Vec3f D_8087EFC8[] = {
    { 380.0f, 50.0f, 50.0f },
    { 310.0f, 33.0f, 0.0f },
};

#ifdef NON_MATCHING
// Probably functionally equivalent but tons of issues with assignment ordering
void BgHakaSgami_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaSgami* this = THIS;
    s32 pad;

    EffectBlureInit1 blureInit;

    Actor_ProcessInitChain(thisx, D_8087EF94);

    this->isInvisible = thisx->params;
    thisx->params = (thisx->params >> 8) & 0xFF;

    if (this->isInvisible != 0) {
        thisx->flags |= 0x80;
    }

    Collider_InitTris(globalCtx, &this->colliderScythe);
    Collider_SetTris(globalCtx, &this->colliderScythe, thisx, &D_8087EF50, this->colliderScytheItems);
    Collider_InitCylinder(globalCtx, &this->colliderScytheCenter);
    Collider_SetCylinder(globalCtx, &this->colliderScytheCenter, thisx, &D_8087EF60);

    this->colliderScytheCenter.dim.pos.x = thisx->posRot.pos.x;
    this->colliderScytheCenter.dim.pos.y = thisx->posRot.pos.y;
    this->colliderScytheCenter.dim.pos.z = thisx->posRot.pos.z;

    func_80061ED4(&thisx->colChkInfo, NULL, &D_8087EF8C);

    blureInit.p1StartColor[0] = sBlureP1StartColor[0];
    blureInit.p1StartColor[1] = sBlureP1StartColor[1];
    blureInit.p1StartColor[2] = sBlureP1StartColor[2];
    blureInit.p1StartColor[3] = sBlureP1StartColor[3];

    blureInit.p1EndColor[0] = sBlureP1EndColor[0];
    blureInit.p1EndColor[1] = sBlureP1EndColor[1];
    blureInit.p1EndColor[2] = sBlureP1EndColor[2];
    blureInit.p1EndColor[3] = sBlureP1EndColor[3];

    blureInit.p2StartColor[0] = sBlureP2StartColor[0];
    blureInit.p2StartColor[1] = sBlureP2StartColor[1];
    blureInit.p2StartColor[2] = sBlureP2StartColor[2];
    blureInit.p2StartColor[3] = sBlureP2StartColor[3];

    blureInit.p2EndColor[0] = sBlureP2EndColor[0];
    blureInit.p2EndColor[1] = sBlureP2EndColor[1];
    blureInit.p2EndColor[2] = sBlureP2EndColor[2];
    blureInit.p2EndColor[3] = sBlureP2EndColor[3];

    blureInit.elemDuration = 10;
    blureInit.unkFlag = false;
    blureInit.calcMode = 2;

    Effect_Add(globalCtx, this->blureEffectIndex[0], EFFECT_BLURE1, 0, 0, &blureInit);
    Effect_Add(globalCtx, this->blureEffectIndex[1], EFFECT_BLURE1, 0, 0, &blureInit);

    if (thisx->params == SCYTHE_TRAP_SHADOW_TEMPLE) {
        this->objectBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_HAKA_OBJECTS);
        thisx->flags &= ~1;
    } else {
        this->objectBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_ICE_OBJECTS);
        this->colliderScytheCenter.dim.radius = 30;
        this->colliderScytheCenter.dim.height = 70;
        Actor_SetHeight(thisx, 40.0f);
    }

    if (this->objectBankIndex < 0) {
        Actor_Kill(thisx);
        return;
    }

    this->actionFunc = func_8087E7E4;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Sgami/BgHakaSgami_Init.s")
#endif

void BgHakaSgami_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaSgami* this = THIS;

    Effect_Delete(globalCtx, this->blureEffectIndex[0]);
    Effect_Delete(globalCtx, this->blureEffectIndex[1]);
    Collider_DestroyTris(globalCtx, &this->colliderScythe);
    Collider_DestroyCylinder(globalCtx, &this->colliderScytheCenter);
}

void func_8087E7E4(BgHakaSgami* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->objectBankIndex)) {
        this->actor.objBankIndex = this->objectBankIndex;
        this->actor.draw = BgHakaSgami_Draw;
        this->timer = 32;
        this->actor.flags &= ~0x10;
        this->actionFunc = func_8087E858;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Sgami/func_8087E858.s")

void BgHakaSgami_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaSgami* this = THIS;
    Player* player = PLAYER;

    if (!(player->stateFlags1 & 0x300000C0) || (this->actionFunc == func_8087E7E4)) {
        this->actionFunc(this, globalCtx);
    }
}

void BgHakaSgami_Draw(BgHakaSgami* this, GlobalContext* globalCtx) {
    if (this->isInvisible) {
        Gfx_DrawDListXlu(globalCtx, &D_0600BF20);
    } else if (this->actor.params == SCYTHE_TRAP_SHADOW_TEMPLE) {
        Gfx_DrawDListOpa(globalCtx, &D_0600BF20);
    } else {
        Gfx_DrawDListOpa(globalCtx, &D_060021F0);
    }
}
