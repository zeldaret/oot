/*
 * File: z_bg_ganon_otyka.c
 * Overlay: ovl_Bg_Ganon_Otyka
 * Description: Falling Platform (Ganondorf Fight)
 */

#include "z_bg_ganon_otyuka.h"

#define FLAGS 0x00000030

#define THIS ((BgGanonOtyuka*)thisx)

void BgGanonOtyuka_Init(Actor* thisx, GlobalContext* globalCtx);
void BgGanonOtyuka_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgGanonOtyuka_Update(Actor* thisx, GlobalContext* globalCtx);
void BgGanonOtyuka_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80875A0C(BgGanonOtyuka* this, GlobalContext* globalCtx);
void func_80875C88(BgGanonOtyuka* this, GlobalContext* globalCtx);
void func_808760DC(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Bg_Ganon_Otyuka_InitVars = {
    ACTOR_BG_GANON_OTYUKA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GANON,
    sizeof(BgGanonOtyuka),
    (ActorFunc)BgGanonOtyuka_Init,
    (ActorFunc)BgGanonOtyuka_Destroy,
    (ActorFunc)BgGanonOtyuka_Update,
    (ActorFunc)BgGanonOtyuka_Draw,
};

// sInitChain
InitChainEntry D_80876A60[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

UNK_TYPE D_80876A64[] = {
    0x01020408,
};

UNK_TYPE D_80876A68[] = {
    0x42F00000, 0x00000000, 0x00000000, 0xC2F00000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x42F00000, 0x00000000, 0x00000000, 0xC2F00000,
};

UNK_TYPE D_80876A98[] = {
    0x3C3C0000,
};

UNK_TYPE D_80876A9C[] = {
    0x32140000,
};

UNK_TYPE D_80876AA0[] = {
    0x42700000, 0x00000000, 0x00000000, 0xC2700000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x42700000, 0x00000000, 0x00000000, 0xC2700000,
};

UNK_TYPE D_80876AD0[] = {
    0x3FC90FDB,
    0xBFC90FDB,
    0x00000000,
    0x40490FDB,
};

#include "z_bg_ganon_otyuka_gfx.c"

// cameraDataList
CamData D_80877DA8[] = { { 0, 0, 0 } };

// surfaceTypeList
UNK_TYPE D_80877DB0[] = {
    0x00000000,
    0x000007C0,
    0x00000000,
    0x000007C2,
};

// polyList
CollisionPoly D_80877DC0[] = {
    { { 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02 }, { 32767, 0, 0 }, -60 },
    { { 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x03 }, { 32767, 0, 0 }, -60 },
    { { 0x00, 0x00, 0x00, 0x03, 0x00, 0x02, 0x00, 0x04 }, { 0, 0, -32767 }, -60 },
    { { 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05 }, { 0, 0, -32767 }, -60 },
    { { 0x00, 0x00, 0x00, 0x05, 0x00, 0x04, 0x00, 0x06 }, { -32767, 0, 0 }, -60 },
    { { 0x00, 0x00, 0x00, 0x05, 0x00, 0x06, 0x00, 0x07 }, { -32767, 0, 0 }, -60 },
    { { 0x00, 0x00, 0x00, 0x07, 0x00, 0x06, 0x00, 0x01 }, { 0, 0, 32767 }, -60 },
    { { 0x00, 0x00, 0x00, 0x07, 0x00, 0x01, 0x00, 0x00 }, { 0, 0, 32767 }, -60 },
    { { 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x05 }, { 0, 32767, 0 }, 0 },
    { { 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x07 }, { 0, 32767, 0 }, 0 },
};

// vtxList
Vec3s D_80877E60[] = {
    { 60, 0, 60 },     { 60, -60, 60 }, { 60, -60, -60 }, { 60, 0, -60 },
    { -60, -60, -60 }, { -60, 0, -60 }, { -60, -60, 60 }, { -60, 0, 60 },
};

CollisionHeader D_80877E90 = {
    { -60, -60, -60 },
    { 60, 0, 60 },
    ARRAY_COUNT(D_80877E60),
    D_80877E60,
    ARRAY_COUNT(D_80877DC0),
    D_80877DC0,
    D_80877DB0,
    D_80877DA8,
    0,
    NULL,
};

void BgGanonOtyuka_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgGanonOtyuka* this = THIS;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(thisx, &D_80876A60);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_80877E90, &colHeader);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, colHeader);
    if (thisx->params != 0x23) {
        thisx->draw = NULL;
        this->actionFunc = func_80875A0C;
    } else {
        thisx->update = func_808760DC;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/BgGanonOtyuka_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/func_80875A0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/func_80875C88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/func_808760DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/BgGanonOtyuka_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/BgGanonOtyuka_Draw.s")
