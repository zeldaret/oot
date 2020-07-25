#include "z_demo_im.h"

#include <vt.h>

#define FLAGS 0x00000011

#define THIS ((DemoIm*)thisx)

void DemoIm_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoIm_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoIm_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoIm_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_809856F8(DemoIm* this, GlobalContext* globalCtx);
void func_80985718(DemoIm* this, GlobalContext* globalCtx);
void func_80985738(DemoIm* this, GlobalContext* globalCtx);
void func_80985770(DemoIm* this, GlobalContext* globalCtx);
void func_809857B0(DemoIm* this, GlobalContext* globalCtx);
void func_809857F0(DemoIm* this, GlobalContext* globalCtx);
void func_80985830(DemoIm* this, GlobalContext* globalCtx);
void func_80985C10(DemoIm* this, GlobalContext* globalCtx);
void func_80985C40(DemoIm* this, GlobalContext* globalCtx);
void func_80985C94(DemoIm* this, GlobalContext* globalCtx);
void func_80985CE8(DemoIm* this, GlobalContext* globalCtx);
void func_809863BC(DemoIm* this, GlobalContext* globalCtx);
void func_809863DC(DemoIm* this, GlobalContext* globalCtx);
void func_80986430(DemoIm* this, GlobalContext* globalCtx);
void func_80986494(DemoIm* this, GlobalContext* globalCtx);
void func_809864D4(DemoIm* this, GlobalContext* globalCtx);
void func_809868E8(DemoIm* this, GlobalContext* globalCtx);
void func_80986908(DemoIm* this, GlobalContext* globalCtx);
void func_80986948(DemoIm* this, GlobalContext* globalCtx);
void func_80986D40(DemoIm* this, GlobalContext* globalCtx);
void func_80986DC8(DemoIm* this, GlobalContext* globalCtx);
void func_80986E20(DemoIm* this, GlobalContext* globalCtx);
void func_80986E40(DemoIm* this, GlobalContext* globalCtx);
void func_80986EAC(DemoIm* this, GlobalContext* globalCtx);
void func_80986F08(DemoIm* this, GlobalContext* globalCtx);
void func_80986F28(DemoIm* this, GlobalContext* globalCtx);
void func_80986F88(DemoIm* this, GlobalContext* globalCtx);
void func_80986FA8(DemoIm* this, GlobalContext* globalCtx);
void func_80987288(DemoIm* this, GlobalContext* globalCtx);
void func_809872A8(DemoIm* this, GlobalContext* globalCtx);
void func_809872F0(DemoIm* this, GlobalContext* globalCtx);
void func_80987330(DemoIm* this, GlobalContext* globalCtx);
void func_8098764C(DemoIm* this, GlobalContext* globalCtx);
void func_80987658(DemoIm* this, GlobalContext* globalCtx);

UNK_TYPE D_80987830[] = {
    0x06007210,
    0x06007D50,
    0x06008150,
};
u32 D_8098783C[] = {
    0x00000000,
};

static ColliderCylinderInit_Set3 sCylinderInit = {
    { COLTYPE_UNK0, 0x00, 0x00, 0x09, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 25, 80, 0, { 0, 0, 0 } },
};

#include "z_demo_im_cutscene_data.c" EARLY

static DemoImActionFunc sActionFuncs[] = {
    func_809856F8, func_80985718, func_80985738, func_80985770, func_809857B0, func_809857F0, func_80985830,
    func_80985C10, func_80985C40, func_80985C94, func_809863BC, func_809863DC, func_80986430, func_80986494,
    func_809864D4, func_809868E8, func_80986908, func_80986948, func_80986D40, func_80986DC8, func_80986E20,
    func_80986E40, func_80986EAC, func_80986F08, func_80986F28, func_80986F88, func_80986FA8, func_80987288,
    func_809872A8, func_809872F0, func_80987330,
};

u32 D_809887D8[] = {
    0x00000000,
    0x41200000,
    0x00000000,
};

static DemoImDrawFunc sDrawFuncs[] = {
    func_8098764C,
    func_80987658,
    func_80985CE8,
};

const ActorInit Demo_Im_InitVars = {
    ACTOR_DEMO_IM,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_IM,
    sizeof(DemoIm),
    (ActorFunc)DemoIm_Init,
    (ActorFunc)DemoIm_Destroy,
    (ActorFunc)DemoIm_Update,
    (ActorFunc)DemoIm_Draw,
};

extern AnimationHeader D_06001868;
extern SkeletonHeader D_0600F788;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80984BE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80984C68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80984C8C.s")

void func_80984D00(DemoIm* this, GlobalContext* globalCtx) {
    ColliderCylinder* collider = &this->collider;
    if (this) {}

    Collider_InitCylinder(globalCtx, collider);
    Collider_SetCylinder_Set3(globalCtx, collider, &this->actor, &sCylinderInit);
}

void func_80984D4C(DemoIm* this, GlobalContext* globalCtx) {
    ColliderCylinder* collider = &this->collider;

    Collider_DestroyCylinder(globalCtx, collider);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80984D74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80984DB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80984E58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80984F10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80984F94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985018.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985060.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985080.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809850A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809850E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985134.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985180.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985200.s")

void func_80985280(DemoIm* this, AnimationHeader* animationHeader, u8 arg2, f32 transitionRate, s32 arg4) {
    f32 frameCount = SkelAnime_GetFrameCount(&animationHeader->genericHeader);
    f32 playbackSpeed;
    f32 unk0;
    f32 fc;

    if (arg4 == 0) {
        unk0 = 0.0f;
        fc = frameCount;
        playbackSpeed = 1.0f;
    } else {
        fc = 0.0f;
        unk0 = frameCount;
        playbackSpeed = -1.0f;
    }

    SkelAnime_ChangeAnim(&this->skelAnime, animationHeader, playbackSpeed, unk0, fc, arg2, transitionRate);
}

void func_80985310(DemoIm* this, GlobalContext* globalCtx) {
    func_80985280(this, &D_06001868, 0, 0.0f, 0);
    this->actor.shape.unk_08 = -10000.0f;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985358.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809853B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985430.s")

void func_8098544C(DemoIm* this, GlobalContext* globalCtx) {
    s32 pad[2];
    Player* player;

    if ((gSaveContext.chamberCutsceneNum == 4) && (gSaveContext.sceneSetupIndex < 4)) {
        player = PLAYER;
        this->action = 1;
        globalCtx->csCtx.segment = D_8098786C;
        gSaveContext.cutsceneTrigger = 2;
        Item_Give(globalCtx, GI_BOMBCHUS_5);
        player->actor.posRot.rot.y = player->actor.shape.rot.y = this->actor.posRot.rot.y + 0x8000;
    }
}

void func_809854DC(DemoIm* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809854DC.s")
/*
void func_809854DC(DemoIm *this, GlobalContext *globalCtx) {
    if (globalCtx->csCtx.state != 0) {
        if (globalCtx->unk1DA0 != 0) {
            if (*globalCtx->unk1DA0 == 2) {
                SkelAnime_ChangeAnim(&this->skelAnime, (void *)0x6001868, 1.0f, 0.0f, SkelAnime_GetFrameCount((void *)0x6001868), 0, 0.0f);
                this->action = 2;
                this->drawConfig = 1;
                func_80985358(this, globalCtx);
            }
        }
    }
}
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_8098557C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809855A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985640.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809856AC.s")

void func_809856F8(DemoIm *this, GlobalContext *globalCtx) {
    func_8098544C(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985718.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985738.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985770.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809857B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809857F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985830.s")

void func_80985860(DemoIm* this, GlobalContext* globalCtx) {
    func_80985280(this, &D_06001868, 0, 0.0f, 0);
    this->action = 7;
    this->actor.shape.unk_14 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809858A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809858C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985948.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809859E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985B34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985C10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985C40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985C94.s")

void func_80985CE8(DemoIm* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s16 unk_25C = this->unk_25C;
    UNK_TYPE sp68 = D_80987830[unk_25C];
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_demo_im_inKenjyanomaDemo02.c", 281);
    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(sp68));
    gSPSegment(gfxCtx->polyXlu.p++, 0x09, SEGMENTED_TO_VIRTUAL(sp68));
    gDPSetEnvColor(gfxCtx->polyXlu.p++, 0, 0, 0, this->unk_26C);
    gSPSegment(gfxCtx->polyXlu.p++, 0x0C, &D_80116280[0]);

    gfxCtx->polyXlu.p = SkelAnime_DrawSV2(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                                          NULL, NULL, NULL, gfxCtx->polyXlu.p);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_demo_im_inKenjyanomaDemo02.c", 308);
}

void func_80985E60(DemoIm* this, GlobalContext* globalCtx) {
    func_80985280(this, &D_06001868, 0, 0.0f, 0);
    this->action = 10;
    this->unk_280 = 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985EAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985EF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985F54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985F64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985FE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_8098604C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809860C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809860DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986148.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809861C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_8098629C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809862E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809863BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809863DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986430.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986494.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809864D4.s")

void func_8098652C(DemoIm* this, GlobalContext* globalCtx) {
    func_80985280(this, &D_06001868, 0, 0.0f, 0);
    this->action = 15;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986570.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809865F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986700.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986710.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986794.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_8098680C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809868E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986908.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986948.s")

void func_809869B0(DemoIm* this, GlobalContext* globalCtx) {
    func_80985280(this, &D_06001868, 0, 0.0f, 0);
    this->action = 18;
    this->actor.shape.unk_14 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809869F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986A5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986AD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986B2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986BA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986BE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986BF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986C30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986CC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986CFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986D40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986DC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986E20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986E40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986EAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986F08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986F28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986F88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986FA8.s")

void func_80987018(DemoIm* this, GlobalContext* globalCtx) {
    func_80985280(this, &D_06001868, 0, 0.0f, 0);
    this->action = 27;
    this->drawConfig = 0;
    this->actor.shape.unk_14 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80987064.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809870F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80987128.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80987174.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809871B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809871E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80987288.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809872A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809872F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80987330.s")

void DemoIm_Update(Actor* thisx, GlobalContext* globalCtx) {
    DemoIm* this = THIS;

    if ((this->action < 0) || (this->action >= 31) || (sActionFuncs[this->action] == NULL)) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sActionFuncs[this->action](this, globalCtx);
}

void DemoIm_Init(Actor* thisx, GlobalContext* globalCtx) {
    DemoIm* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    func_80984D00(this, globalCtx);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0600F788, NULL, this->limbDrawTable, this->transitionDrawTable,
                     17);
    thisx->flags &= ~1;

    switch (this->actor.params) {
        case 2:
            func_80985860(this, globalCtx);
            break;
        case 3:
            func_80985E60(this, globalCtx);
            break;
        case 4:
            func_8098652C(this, globalCtx);
            break;
        case 5:
            func_809869B0(this, globalCtx);
            break;
        case 6:
            func_80987018(this, globalCtx);
            break;
        default:
            func_80985310(this, globalCtx);
    }
}

void DemoIm_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DemoIm* this = THIS;

    func_80984D4C(this, globalCtx);
}

s32 func_80987514(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80987514.s")

void func_809875C0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809875C0.s")

void func_8098764C(DemoIm* this, GlobalContext* globalCtx) {
}

void func_80987658(DemoIm* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s16 unk_25C = this->unk_25C;
    UNK_TYPE sp68 = D_80987830[unk_25C];
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_demo_im.c", 904);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(sp68));
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(sp68));
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0, 0, 0, 255);
    gSPSegment(gfxCtx->polyOpa.p++, 0x0C, &D_80116280[2]);

    SkelAnime_DrawSV(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount, func_80987514,
                     func_809875C0, &this->actor);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_demo_im.c", 925);
}

void DemoIm_Draw(Actor* thisx, GlobalContext* globalCtx) {
    DemoIm* this = THIS;

    if ((this->drawConfig < 0) || (this->drawConfig >= 3) || (sDrawFuncs[this->drawConfig] == NULL)) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sDrawFuncs[this->drawConfig](this, globalCtx);
}
