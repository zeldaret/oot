#include "z_demo_ec.h"
#include "vt.h" //Verify that this is the right way

#define FLAGS 0x00000010

#define THIS ((DemoEc*)thisx)

void DemoEc_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoEc_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoEc_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoEc_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8096DE94(DemoEc* this, GlobalContext* globalCtx);
void func_8096DF9C(DemoEc* this, GlobalContext* globalCtx);
void func_8096E0A4(DemoEc* this, GlobalContext* globalCtx);
void func_8096E1AC(DemoEc* this, GlobalContext* globalCtx);
void func_8096E380(DemoEc* this, GlobalContext* globalCtx);
void func_8096E56C(DemoEc* this, GlobalContext* globalCtx);
void func_8096E69C(DemoEc* this, GlobalContext* globalCtx);
void func_8096E7CC(DemoEc* this, GlobalContext* globalCtx);
void func_8096E8E4(DemoEc* this, GlobalContext* globalCtx);
void func_8096E9E8(DemoEc* this, GlobalContext* globalCtx);
void func_8096EAE8(DemoEc* this, GlobalContext* globalCtx);
void func_8096EAE8(DemoEc* this, GlobalContext* globalCtx);
void func_8096EAE8(DemoEc* this, GlobalContext* globalCtx);
void func_8096EAE8(DemoEc* this, GlobalContext* globalCtx);
void func_8096E244(DemoEc* this, GlobalContext* globalCtx);
void func_8096E418(DemoEc* this, GlobalContext* globalCtx);
void func_8096EDFC(DemoEc* this, GlobalContext* globalCtx);
void func_8096EDFC(DemoEc* this, GlobalContext* globalCtx);
void func_8096EDFC(DemoEc* this, GlobalContext* globalCtx);
void func_8096F010(DemoEc* this, GlobalContext* globalCtx);
void func_8096F12C(DemoEc* this, GlobalContext* globalCtx);
void func_8096F454(DemoEc* this, GlobalContext* globalCtx);
void func_8096F6D8(DemoEc* this, GlobalContext* globalCtx);
void func_8096F6D8(DemoEc* this, GlobalContext* globalCtx);
void func_8096F6D8(DemoEc* this, GlobalContext* globalCtx);
void func_8096F808(DemoEc* this, GlobalContext* globalCtx);
void func_8096F924(DemoEc* this, GlobalContext* globalCtx);
void func_8096FA40(DemoEc* this, GlobalContext* globalCtx);
void func_8096FB48(DemoEc* this, GlobalContext* globalCtx);
void func_8096FCEC(DemoEc* this, GlobalContext* globalCtx);
void func_8096FE08(DemoEc* this, GlobalContext* globalCtx);
void func_8096FE08(DemoEc* this, GlobalContext* globalCtx);
void func_8096FE08(DemoEc* this, GlobalContext* globalCtx);
void func_8096FE08(DemoEc* this, GlobalContext* globalCtx);
void func_8096FFBC(DemoEc* this, GlobalContext* globalCtx);
void func_80970140(DemoEc* this, GlobalContext* globalCtx);
void func_8096DF2C(DemoEc* this, GlobalContext* globalCtx);
void func_8096E034(DemoEc* this, GlobalContext* globalCtx);
void func_8096E13C(DemoEc* this, GlobalContext* globalCtx);
void func_8096E2E0(DemoEc* this, GlobalContext* globalCtx);
void func_8096E4B4(DemoEc* this, GlobalContext* globalCtx);
void func_8096E604(DemoEc* this, GlobalContext* globalCtx);
void func_8096E734(DemoEc* this, GlobalContext* globalCtx);
void func_8096E864(DemoEc* this, GlobalContext* globalCtx);
void func_8096E97C(DemoEc* this, GlobalContext* globalCtx);
void func_8096EA80(DemoEc* this, GlobalContext* globalCtx);
void func_8096EB80(DemoEc* this, GlobalContext* globalCtx);
void func_8096E31C(DemoEc* this, GlobalContext* globalCtx);
void func_8096E4F8(DemoEc* this, GlobalContext* globalCtx);
void func_8096EE98(DemoEc* this, GlobalContext* globalCtx);
void func_8096F0AC(DemoEc* this, GlobalContext* globalCtx);
void func_8096F314(DemoEc* this, GlobalContext* globalCtx);
void func_8096F378(DemoEc* this, GlobalContext* globalCtx);
void func_8096F3D4(DemoEc* this, GlobalContext* globalCtx);
void func_8096F5DC(DemoEc* this, GlobalContext* globalCtx);
void func_8096F640(DemoEc* this, GlobalContext* globalCtx);
void func_8096F7A0(DemoEc* this, GlobalContext* globalCtx);
void func_8096F8A4(DemoEc* this, GlobalContext* globalCtx);
void func_8096F9C0(DemoEc* this, GlobalContext* globalCtx);
void func_8096FADC(DemoEc* this, GlobalContext* globalCtx);
void func_8096FBE4(DemoEc* this, GlobalContext* globalCtx);
void func_8096FD88(DemoEc* this, GlobalContext* globalCtx);
void func_8096FF38(DemoEc* this, GlobalContext* globalCtx);
void func_80970058(DemoEc* this, GlobalContext* globalCtx);
void func_809702B0(DemoEc* this, GlobalContext* globalCtx);
void func_8096DF68(DemoEc* this, GlobalContext* globalCtx);
void func_8096E070(DemoEc* this, GlobalContext* globalCtx);
void func_8096E178(DemoEc* this, GlobalContext* globalCtx);
void func_8096E33C(DemoEc* this, GlobalContext* globalCtx);
void func_8096E518(DemoEc* this, GlobalContext* globalCtx);
void func_8096E648(DemoEc* this, GlobalContext* globalCtx);
void func_8096E778(DemoEc* this, GlobalContext* globalCtx);
void func_8096E8A8(DemoEc* this, GlobalContext* globalCtx);
void func_8096E9B8(DemoEc* this, GlobalContext* globalCtx);
void func_8096EABC(DemoEc* this, GlobalContext* globalCtx);
void func_8096EDC0(DemoEc* this, GlobalContext* globalCtx);
void func_8096EFCC(DemoEc* this, GlobalContext* globalCtx);
void func_8096F0F0(DemoEc* this, GlobalContext* globalCtx);
void func_8096F418(DemoEc* this, GlobalContext* globalCtx);
void func_8096F69C(DemoEc* this, GlobalContext* globalCtx);
void func_8096F7DC(DemoEc* this, GlobalContext* globalCtx);
void func_8096F8E8(DemoEc* this, GlobalContext* globalCtx);
void func_8096FA04(DemoEc* this, GlobalContext* globalCtx);
void func_8096FB18(DemoEc* this, GlobalContext* globalCtx);
void func_8096FCA8(DemoEc* this, GlobalContext* globalCtx);
void func_8096FDCC(DemoEc* this, GlobalContext* globalCtx);
void func_8096FF7C(DemoEc* this, GlobalContext* globalCtx);
void func_8097009C(DemoEc* this, GlobalContext* globalCtx);

s32 D_80970350[] = { 0x00C00088, 0x013300FC, 0x00FD010C, 0x01070115, 0x010D0121, 0x01220122,
                     0x01220122, 0x00FC00FD, 0x01160116, 0x011600FE, 0x00FF00FB, 0x00130013,
                     0x00130110, 0x0159013E, 0x015B0165, 0x00C900C9, 0x00C900C9, 0x00D00000 };
s32 D_80970398[] = { 0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A,
                     0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A,
                     0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, 0x015A0126, 0x00D00000 };
s32 D_809703E0 = 0x008246FF;
s32 D_809703E4 = 0x6EAA14FF;
s32 D_809703E8[] = { 0x06000F4C, 0x06001A0C, 0x06001E0C };
s32 D_809703F4 = 0x46BE3CFF;
s32 D_809703F8 = 0x641E00FF;
s32 D_809703FC[] = { 0x060005FC, 0x060009FC, 0x06000DFC };
s32 D_80970408 = 0x003264FF;
s32 D_8097040C = 0x0032A0FF;
s32 D_80970410[] = { 0x0600057C, 0x0600067C, 0x0600077C };
s32 D_8097041C = 0xFFFFFFFF;
s32 D_80970420 = 0xFFFFFFFF;
s32 D_80970424[] = { 0x060007C8, 0x06000FC8, 0x060017C8 };
s32 D_80970430[] = { 0x06000708, 0x06000F08, 0x06001708 };
s32 D_8097043C[] = { 0x06003E40, 0x06004640, 0x06004E40 };
s32 D_80970448[] = { 0x06001470, 0x06001870, 0x06001C70, 0x06002070 };
s32 D_80970458[] = { 0x06004FF0, 0x06005930, 0x06005D30, 0x06006130 };
s32 D_80970468[] = { 0x060008C8, 0x060010C8, 0x060018C8 };
s32 D_80970474[] = { 0x060030D8, 0x060034D8, 0x060038D8 };
s32 D_80970480[] = { 0x06009250, 0x06009650, 0x06009A50 };
s32 D_8097048C[] = { 0x06003968, 0x06003D68, 0x06004168 };
s32 D_80970498[] = { 0x0600CE80, 0x0600D280, 0x0600D680 };
s32 D_809704A4[] = { 0x06002570, 0x06002C70, 0x06003070 };
// clang-format off
DemoEcActionFunc D_809704B0[] = {
    // action funcs
    /*done*/func_8096DE94, /*done*/func_8096DF9C, /*done*/func_8096E0A4, func_8096E1AC, func_8096E380, func_8096E56C, func_8096E69C,
    func_8096E7CC, func_8096E8E4, func_8096E9E8, func_8096EAE8, func_8096EAE8, func_8096EAE8, func_8096EAE8,
    func_8096E244, func_8096E418, func_8096EDFC, func_8096EDFC, func_8096EDFC, func_8096F010, func_8096F12C,
    func_8096F454, func_8096F6D8, func_8096F6D8, func_8096F6D8, func_8096F808, func_8096F924, func_8096FA40,
    func_8096FB48, func_8096FCEC, func_8096FE08, func_8096FE08, func_8096FE08, func_8096FE08, func_8096FFBC,
};
DemoEcActionFunc D_8097053C[] = {
    func_80970140, func_8096DF2C, func_8096E034, func_8096E13C, func_8096E2E0, func_8096E4B4,
    func_8096E604, func_8096E734, func_8096E864, func_8096E97C, func_8096EA80, func_8096EB80,
    func_8096E31C, func_8096E4F8, func_8096EE98, func_8096F0AC, func_8096F314, func_8096F378,
    func_8096F3D4, func_8096F5DC, func_8096F640, func_8096F7A0, func_8096F8A4, func_8096F9C0,
    func_8096FADC, func_8096FBE4, func_8096FD88, func_8096FF38, func_80970058,
};
DemoEcActionFunc D_809705B0[] = {
    func_809702B0, func_8096DF68, func_8096E070, func_8096E178, func_8096E33C, func_8096E518,
    func_8096E648, func_8096E778, func_8096E8A8, func_8096E9B8, func_8096EABC, func_8096EDC0,
    func_8096EFCC, func_8096F0F0, func_8096F418, func_8096F69C, func_8096F7DC, func_8096F8E8,
    func_8096FA04, func_8096FB18, func_8096FCA8, func_8096FDCC, func_8096FF7C, func_8097009C,
};
// clang-format on
extern AnimationHeader D_0600BD38;
extern SkeletonHeader D_06013B88;
extern AnimationHeader D_060048F4;
extern SkeletonHeader D_0600B7B8;
extern SkeletonHeader D_06006C90;
extern AnimationHeader D_0600196C;

const ActorInit Demo_Ec_InitVars = {
    ACTOR_DEMO_EC,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_EC,
    sizeof(DemoEc),
    (ActorFunc)DemoEc_Init,
    (ActorFunc)DemoEc_Destroy,
    (ActorFunc)DemoEc_Update,
    (ActorFunc)DemoEc_Draw,
};

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/DemoEc_Destroy.s")

void DemoEc_Init(Actor* thisx, GlobalContext* globalCtx) {
    DemoEc* this = THIS;

    if ((thisx->params < 0) || (thisx->params >= 0x23)) {
        osSyncPrintf(VT_FGCOL(RED) "Demo_Ec_Actor_ct:arg_dataがおかしい!!!!!!!!!!!!\n" VT_RST, thisx);
        Actor_Kill(thisx);
    } else {
        this->unk_194 = 0;
        this->unk_198 = 0;
    }
}

void func_8096D52C(DemoEc* this) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

void func_8096D54C(DemoEc* this, GlobalContext* globalCtx) {
    func_8002E4B4(globalCtx, &this->actor, 30.0f, 25.0f, 30.0f, 7);
}

void func_8096D594(DemoEc* this, GlobalContext* globalCtx) {
    this->skelAnime.flags = (this->skelAnime.flags | 3);
    SkelAnime_LoadAnimationType5(globalCtx, &this->actor, &this->skelAnime, 1.0f);
}

void func_8096D5D4(DemoEc* this, GlobalContext* globalCtx) {
    this->skelAnime.unk_3E = this->skelAnime.limbDrawTbl[0];
    this->skelAnime.prevFramePos = this->skelAnime.limbDrawTbl[0];
    this->skelAnime.flags = (this->skelAnime.flags | 3);
    SkelAnime_LoadAnimationType5(globalCtx, &this->actor, &this->skelAnime, 1.0f);
}

void func_8096D64C(DemoEc* this, GlobalContext* globalCtx) {
    this->skelAnime.flags = (this->skelAnime.flags | 3);
    SkelAnime_LoadAnimationType5(globalCtx, &this->actor, &this->skelAnime, 1.0f);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096D68C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096D714.s")

void func_8096D728(DemoEc* this, GlobalContext* globalCtx, SkeletonHeader* header) {
    SkelAnime_InitSV(globalCtx, &this->skelAnime, SEGMENTED_TO_VIRTUAL(header), NULL, 0, 0, 0);
}

void func_8096D79C(DemoEc* this, AnimationHeader* animation, u8 arg2, f32 transitionRate, s32 arg4) {
    f32 phi_f2;
    f32 phi_f0;
    AnimationHeader* animationA;
    f32 playbackSpeed;
    s16 frameCount;

    animationA = SEGMENTED_TO_VIRTUAL(animation);
    frameCount = SkelAnime_GetFrameCount(animationA);
    if (arg4 == 0) {
        phi_f0 = 0.0f;
        phi_f2 = frameCount;
        playbackSpeed = 1.0f;
    } else {
        phi_f2 = 0.0f;
        playbackSpeed = -1.0f;
        phi_f0 = frameCount;
    }
    SkelAnime_ChangeAnim(&this->skelAnime, animationA, playbackSpeed, phi_f0, phi_f2, arg2, transitionRate);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096D858.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096D8C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096DA80.s")

void func_8096DD0C(DemoEc* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s32 sp3C = this->unk_1A0;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_demo_ec.c", 0x296);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x06, globalCtx->objectCtx.status[sp3C].segment);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[sp3C].segment);
    if (!globalCtx) {}
    CLOSE_DISPS(gfxCtx, "../z_demo_ec.c", 0x29E);
}

void func_8096DDBC(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp = this->unk_1A4;
    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[temp].segment); //
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096DDF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096DE14.s")

void func_8096DE94(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_06013B88);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_060048F4, 0, 0.0f, 0);
    func_8096D64C(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 1;
    this->unk_198 = 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096DF2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096DF68.s")

void func_8096DF9C(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_0600B7B8);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_0600BD38, 0, 0.0f, 0);
    func_8096D64C(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 2;
    this->unk_198 = 2;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E070.s")

void func_8096E0A4(DemoEc *this, GlobalContext *globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx,&D_06006C90);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_0600196C, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 3;
    this->unk_198 = 3;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E13C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E178.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E1AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E244.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E2E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E31C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E33C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E380.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E418.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E4B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E4F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E518.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E56C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E604.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E648.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E69C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E734.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E778.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E7CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E864.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E8A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E8E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E97C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E9B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E9E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EA80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EABC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EAE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EB80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EBBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096ECBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096ED40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EDC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EDFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EE98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EEDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EF4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EFCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F010.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F0AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F0F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F12C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F1D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F26C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F2B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F314.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F378.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F3D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F418.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F454.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F4FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F544.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F578.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F5DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F640.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F69C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F6D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F7A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F7DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F808.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F8A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F8E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F924.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F9C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FA04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FA40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FADC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FB18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FB48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FBE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FC28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FCA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FCEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FD88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FDCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FE08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FF38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FF7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FFBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_80970058.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8097009C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_809700DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_80970140.s")

#ifdef NON_MATCHING
void DemoEc_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    DemoEc* this = THIS;
    DemoEcActionFunc* actionFunc;

    if ((this->unk_194 < 0) || (this->unk_194 > 0x1C) ||
        (actionFunc = D_8097053C + this->unk_194, *actionFunc == NULL)) {
        osSyncPrintf((const char*)"\x1b[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n\x1b[m");
    } else {
        if (actionFunc != D_8097053C) {
            func_8096DDBC(this, globalCtx);
        }
        (*actionFunc)(this, globalCtx);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/DemoEc_Update.s")
#endif
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_809702B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/DemoEc_Draw.s")
