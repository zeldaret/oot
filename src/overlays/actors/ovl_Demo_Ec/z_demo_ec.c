#include "z_demo_ec.h"
#include "vt.h"

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

static s16 D_80970350[] = { 0x00C0, 0x0088, 0x0133, 0x00FC, 0x00FD, 0x010C, 0x0107, 0x0115, 0x010D,
                            0x0121, 0x0122, 0x0122, 0x0122, 0x0122, 0x00FC, 0x00FD, 0x0116, 0x0116,
                            0x0116, 0x00FE, 0x00FF, 0x00FB, 0x0013, 0x0013, 0x0013, 0x0110, 0x0159,
                            0x013E, 0x015B, 0x0165, 0x00C9, 0x00C9, 0x00C9, 0x00C9, 0x00D0 };
static s16 D_80970398[] = { 0x015A, 0x015A, 0x015A, 0x015A, 0x015A, 0x015A, 0x015A, 0x015A, 0x015A,
                            0x015A, 0x015A, 0x015A, 0x015A, 0x015A, 0x015A, 0x015A, 0x015A, 0x015A,
                            0x015A, 0x015A, 0x015A, 0x015A, 0x015A, 0x015A, 0x015A, 0x015A, 0x015A,
                            0x015A, 0x015A, 0x015A, 0x015A, 0x015A, 0x015A, 0x0126, 0x00D0 };

static Color_RGBA8 D_809703E0 = { 00, 130, 70, 255 };
static Color_RGBA8 D_809703E4 = { 110, 170, 20, 255 };
static Gfx* D_809703E8[] = { 0x06000F4C, 0x06001A0C, 0x06001E0C };
s32 D_809703F4 = 0x46BE3CFF;
s32 D_809703F8 = 0x641E00FF;
static Gfx* D_809703FC[] = { 0x060005FC, 0x060009FC, 0x06000DFC };
s32 D_80970408 = 0x003264FF;
s32 D_8097040C = 0x0032A0FF;
static s32 D_80970410[] = { 0x0600057C, 0x0600067C, 0x0600077C };
s32 D_8097041C = 0xFFFFFFFF;
s32 D_80970420 = 0xFFFFFFFF;
s32 D_80970424[] = { 0x060007C8, 0x06000FC8, 0x060017C8 };
s32 D_80970430[] = { 0x06000708, 0x06000F08, 0x06001708 };
s32 D_8097043C[] = { 0x06003E40, 0x06004640, 0x06004E40 };
s32 D_80970448[] = { 0x06001470, 0x06001870, 0x06001C70, 0x06002070 };
s32 D_80970458[] = { 0x06004FF0, 0x06005930, 0x06005D30, 0x06006130 };
s32 D_80970468[] = { 0x060008C8, 0x060010C8, 0x060018C8 };
Gfx* D_80970474[] = { 0x060030D8, 0x060034D8, 0x060038D8 };
s32 D_80970480[] = { 0x06009250, 0x06009650, 0x06009A50 };
s32 D_8097048C[] = { 0x06003968, 0x06003D68, 0x06004168 };
s32 D_80970498[] = { 0x0600CE80, 0x0600D280, 0x0600D680 };
s32 D_809704A4[] = { 0x06002570, 0x06002C70, 0x06003070 };

DemoEcActionFunc D_809704B0[] = {
    // Animate Funcs?
    func_8096DE94, func_8096DF9C, func_8096E0A4, func_8096E1AC, func_8096E380, func_8096E56C, func_8096E69C,
    func_8096E7CC, func_8096E8E4, func_8096E9E8, func_8096EAE8, func_8096EAE8, func_8096EAE8, func_8096EAE8,
    func_8096E244, func_8096E418, func_8096EDFC, func_8096EDFC, func_8096EDFC, func_8096F010, func_8096F12C,
    func_8096F454, func_8096F6D8, func_8096F6D8, func_8096F6D8, func_8096F808, func_8096F924, func_8096FA40,
    func_8096FB48, func_8096FCEC, func_8096FE08, func_8096FE08, func_8096FE08, func_8096FE08, func_8096FFBC,
};
DemoEcActionFunc D_8097053C[] = {
    // Called by update
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

extern AnimationHeader D_0600BD38;
extern SkeletonHeader D_06013B88;
extern AnimationHeader D_060048F4;
extern SkeletonHeader D_0600B7B8;
extern SkeletonHeader D_06006C90;
extern AnimationHeader D_0600196C;
extern SkeletonHeader D_060000F0;
extern AnimationHeader D_06005670;
extern AnimationHeader D_06005EA8;
extern SkeletonHeader D_06007150;
extern AnimationHeader D_0600164C;
extern SkeletonHeader D_06007958;
extern AnimationHeader D_0600164C;
extern AnimationHeader D_0600513C;
extern SkeletonHeader D_06000330;
extern AnimationHeader D_06002254;
extern SkeletonHeader D_0600BFA8;
extern AnimationHeader D_0600C918;
extern SkeletonHeader D_060086D0;
extern AnimationHeader D_06006C40;
extern SkeletonHeader D_06007FB8;
extern AnimationHeader D_060095DC;
extern SkeletonHeader D_06002530;
extern AnimationHeader D_06009BB4;
extern AnimationHeader D_0600A07C;
extern AnimationHeader D_0600A474;
extern AnimationHeader D_06000CD8;
extern SkeletonHeader D_06004258;
extern AnimationHeader D_0600AFE0;
extern SkeletonHeader D_06004658;
extern AnimationHeader D_0600AFE0;
extern SkeletonHeader D_060085F8;
extern SkeletonHeader D_06004868;
extern SkeletonHeader D_0600FEF0;
extern AnimationHeader D_06002FA0;
extern AnimationHeader D_06003A98;
extern AnimationHeader D_06002FA0;
extern AnimationHeader D_060002B8;
extern SkeletonHeader D_06008D90;
extern AnimationHeader D_06009EE0;
extern AnimationHeader D_06006930;
extern AnimationHeader D_06006220;
extern AnimationHeader D_06008D1C;
extern AnimationHeader D_06009234;
extern AnimationHeader D_06004390;
extern Gfx D_06004350[];
extern AnimationHeader D_060076C0;
extern Gfx D_06007AC0[];
extern AnimationHeader D_06005F20;
extern Gfx D_06006920[];
extern Gfx D_060004C8[];

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

    if ((thisx->params < 0) || (thisx->params >= 35)) {
        osSyncPrintf(VT_FGCOL(RED) "Demo_Ec_Actor_ct:arg_dataがおかしい!!!!!!!!!!!!\n" VT_RST, thisx);
        Actor_Kill(thisx);
    } else {
        this->unk_194 = 0;
        this->unk_198 = 0;
    }
}

s32 func_8096D52C(DemoEc* this) {
    return SkelAnime_FrameUpdateMatrix(&this->skelAnime);
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

void func_8096D68C(DemoEc* this) {
    s32 pad[3];
    s16* unk_192 = &this->unk_192;
    s16* unk_190 = &this->unk_190;

    if (DECR(*unk_192) == 0) {
        *unk_192 = Math_Rand_S16Offset(0x3C, 0x3C);
    }
    *unk_190 = *unk_192;
    if (*unk_190 >= 3) {
        *unk_190 = 0;
    }
}

void func_8096D714(DemoEc* this, s16 arg1) {
    this->unk_190 = arg1;
}

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

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096D858.s")
Gfx* func_8096D858(GraphicsContext* gfxCtx, u8 colors[4]) {
    Gfx* dList;

    dList = Graph_Alloc(gfxCtx, sizeof(Gfx) * 2);
    gDPSetEnvColor(dList, colors[0], colors[1], colors[2], colors[3]);
    gSPEndDisplayList(dList + 1);
    return dList;
}

void func_8096D8C4(DemoEc* this, GlobalContext* globalCtx, Gfx* arg2, Gfx* arg3, OverrideLimbDraw2 overrideLimbDraw,
                   PostLimbDraw2 postLimbDraw) {
    GraphicsContext* gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;
    s32 pad;
    gfxCtx = globalCtx->state.gfxCtx;
    OPEN_DISPS(gfxCtx, "../z_demo_ec.c", 565);
    func_80093D18(gfxCtx);
    if (arg2 != 0) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(arg2));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(arg2));
    }
    if (arg3 != 0) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(arg3));
    }
    gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0, 0, 0, 255);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x0C, &D_80116280[2]);
    oGfxCtx->polyOpa.p =
        SkelAnime_DrawSV2(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                          overrideLimbDraw, postLimbDraw, &this->actor, oGfxCtx->polyOpa.p);
    CLOSE_DISPS(gfxCtx, "../z_demo_ec.c", 595);
}

void func_8096DA80(DemoEc* this, GlobalContext* globalCtx, Gfx* arg2, Gfx* arg3, Color_RGBA8* arg4, Color_RGBA8* arg5,
                   OverrideLimbDraw2 overrideLimbDraw, PostLimbDraw2 postLimbDraw) {
    s32 pad;
    GraphicsContext* gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;

    gfxCtx = globalCtx->state.gfxCtx;
    OPEN_DISPS(gfxCtx, "../z_demo_ec.c", 0x261);
    func_80093D18(oGfxCtx);
    if (arg2 != 0) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, SEGMENTED_TO_VIRTUAL(arg2));
    }
    if (arg3 != 0) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0B, SEGMENTED_TO_VIRTUAL(arg3));
    }
    // @bug Due to the way SEGMENTED_TO_VIRTUAL works func_8096D858 is called twice.  Causing two different Gfx to be
    // allocated
    if (arg4 != 0) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(func_8096D858(gfxCtx, arg4)));
    }
    if (arg5 != 0) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(func_8096D858(gfxCtx, arg4)));
    }
    gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0xFF);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x0C, &D_80116280[2]);

    oGfxCtx->polyOpa.p =
        SkelAnime_DrawSV2(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                          overrideLimbDraw, postLimbDraw, &this->actor, oGfxCtx->polyOpa.p);
    CLOSE_DISPS(gfxCtx, "../z_demo_ec.c", 0x286);
}

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
    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[temp].segment);
}

CsCmdActorAction* func_8096DDF0(GlobalContext* globalCtx, s32 arg2) {
    if (globalCtx->csCtx.state != 0) {
        return globalCtx->csCtx.npcActions[arg2];
    }
    return NULL;
}

void func_8096DE14(DemoEc* this, GlobalContext* globalCtx, s32 arg2) {
    s16 yRot;
    CsCmdActorAction* npcAction;

    npcAction = func_8096DDF0(globalCtx, arg2);
    if (npcAction != NULL) {
        this->actor.posRot.pos.x = npcAction->startPos.x;
        this->actor.posRot.pos.y = npcAction->startPos.y;
        this->actor.posRot.pos.z = npcAction->startPos.z;
        yRot = npcAction->rot.y;
        this->actor.shape.rot.y = yRot;
        this->actor.posRot.rot.y = yRot;
    }
}

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

void func_8096DF2C(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D54C(this, globalCtx);
}

void func_8096DF68(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D8C4(this, globalCtx, &D_06004390, &D_06004350, 0, 0);
}

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

void func_8096E034(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D54C(this, globalCtx);
}

void func_8096E070(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D8C4(this, globalCtx, &D_060076C0, &D_06007AC0, 0, 0);
}

void func_8096E0A4(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_06006C90);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_0600196C, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 3;
    this->unk_198 = 3;
}

void func_8096E13C(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D54C(this, globalCtx);
}

void func_8096E178(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D8C4(this, globalCtx, &D_06005F20, &D_06006920, 0, 0);
}

void func_8096E1AC(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_060000F0);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_06005670, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 4;
    this->unk_198 = 4;
}

void func_8096E244(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_060000F0);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_0600513C, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 0xC;
    this->unk_198 = 4;
}

void func_8096E2E0(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D54C(this, globalCtx);
}

void func_8096E31C(DemoEc* this, GlobalContext* globalCtx) {
    func_8096E2E0(this, globalCtx);
}

void func_8096E33C(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DA80(this, globalCtx, NULL, NULL, &D_809703E0, &D_809703E4, 0, 0);
}

void func_8096E380(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_060000F0);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_06005670, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 5;
    this->unk_198 = 5;
}

void func_8096E418(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_060000F0);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_0600513C, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 13;
    this->unk_198 = 5;
}

void func_8096E4B4(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

void func_8096E4F8(DemoEc* this, GlobalContext* globalCtx) {
    func_8096E4B4(this, globalCtx);
}

void func_8096E518(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp2 = this->unk_190;
    Gfx* temp = D_809703E8[temp2];

    func_8096DA80(this, globalCtx, temp, NULL, &D_809703F4, &D_809703F8, 0, 0);
}
void func_8096E56C(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_060000F0);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_06005EA8, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 6;
    this->unk_198 = 6;
}

void func_8096E604(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

void func_8096E648(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp2 = this->unk_190;
    Gfx* temp = D_809703FC[temp2];

    func_8096DA80(this, globalCtx, temp, NULL, &D_80970408, &D_8097040C, 0, 0);
}

void func_8096E69C(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_060000F0);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_06005EA8, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 7;
    this->unk_198 = 7;
}

void func_8096E734(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

void func_8096E778(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp2 = this->unk_190;
    Gfx* temp = D_80970410[temp2];

    func_8096DA80(this, globalCtx, temp, NULL, &D_8097041C, &D_80970420, 0, 0);
}

void func_8096E7CC(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_060000F0);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_06005EA8, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 8;
    this->unk_198 = 8;
}

void func_8096E864(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

void func_8096E8A8(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp2 = this->unk_190;
    Gfx* temp = D_80970424[temp2];

    func_8096D8C4(this, globalCtx, temp, 0, 0, 0);
}

void func_8096E8E4(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_060000F0);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_06005EA8, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 9;
    this->unk_198 = 9;
}

void func_8096E97C(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D54C(this, globalCtx);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E9B8.s")
void func_8096E9B8(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D8C4(this, globalCtx, &D_060004C8, 0, 0, 0);
}

void func_8096E9E8(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_06007150);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_0600164C, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 10;
    this->unk_198 = 10;
}

void func_8096EA80(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D54C(this, globalCtx);
}

void func_8096EABC(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D8C4(this, globalCtx, NULL, 0, 0, 0);
}

void func_8096EAE8(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_06007958);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_0600164C, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 11;
    this->unk_198 = 11;
}

void func_8096EB80(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D54C(this, globalCtx);
}

// Override limb draw
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EBBC.s")
s32 func_8096EBBC(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx,
                  Gfx** gfx) {

    /*s16 temp_v0;
    DemoEc* this = (DemoEc*)thisx;
    if (limbIndex == 1) {

        gDPPipeSync(*gfx++);
        temp_v0 = this->actor.params;
        if (this->actor.params == 0xA) {
            goto block_6;
        }
        else if (this->actor.params == 0xB) {
            goto block_7;
        }
        else if (this->actor.params == 0xC) {
            goto block_8;
        }
        else if (this->actor.params == 0xD) {
            goto block_9;
        }
        return 0;
    block_6:
        gDPSetEnvColor(*gfx+1, 170, 10, 70, 255);
        return 0;
    block_7:
        gDPSetEnvColor(*gfx++, 170, 200, 255, 255);
        return 0;
    block_8:
        gDPSetEnvColor(*gfx++, 0, 230, 70, 255);
        return 0;
    block_9:
        gDPSetEnvColor(*gfx++, 200, 0, 150, 255);
        return 0;
    }
}*/

    s16 temp_v0;
    if (limbIndex == 1) {
        temp_v0 = thisx->params;
        gDPPipeSync(*gfx++);
        switch (thisx->params) {
            case 0xA:
                gDPSetEnvColor(*gfx+1, 170, 10, 70, 255);
                return 0;
            case 0xB:
                gDPSetEnvColor(*gfx++, 170, 200, 255, 255);
                return 0;
            case 0xC:
                gDPSetEnvColor(*gfx++, 0, 230, 70, 255);
                return 0;
            case 0xD:
                gDPSetEnvColor(*gfx++, 200, 0, 150, 255);
                return 0;
            default:
                return 0;
        }
        return 0;
    }
}

/*s32 func_8096EBBC(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    if (limbIndex == 1) {
        // temp_a0 = *arg6;
        //*arg6 = (void *) (temp_a0 + 8);
        // temp_a0->unk4 = 0;
        // temp_a0->unk0 = 0xE7000000;
        gDPPipeSync(dList++);
        switch (thisx->params) {
            case 0xA:
                gDPSetEnvColor(dList++, 170, 10, 70, 255);
                return 0;
            case 0xB:
                gDPSetEnvColor(dList++, 170, 200, 255, 255);
                return 0;
            case 0xC:
                gDPSetEnvColor(dList++, 0, 230, 70, 255);
                return 0;
            case 0xD:
                return 0;
            default:
                gDPSetEnvColor(dList++, 200, 0, 150, 255);
                return 0;

    }
    return 0;
}*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096ECBC.s")
void func_8096ECBC(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot,
                   Actor* thisx); // Post LimbDraw

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096ED40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EDC0.s")
// void func_8096EDC0(DemoEc *this, GlobalContext *globalCtx) {
//    func_8096D8C4(this, globalCtx, NULL, 0, &func_8096EBBC, &func_8096ED40);
//}

void func_8096EDFC(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_06000330);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_06002254, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 14;
    this->unk_198 = 12;
}

void func_8096EE98(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EEDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EF4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EFCC.s")

void func_8096F010(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_0600BFA8);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_0600C918, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 15;
    this->unk_198 = 13;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F0AC.s")
void func_8096F0AC(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F0F0.s")

void func_8096F12C(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_060086D0);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_06006C40, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 16;
    this->unk_198 = 14;
    func_8096D714(this, 3);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F1D4.s")

void func_8096F224(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_06006930, 2, -8.0f, 0);
    this->unk_194 = 17;
}

void func_8096F26C(DemoEc* this, s32 arg1) {
    if (arg1 != 0) {
        func_8096D79C(this, &D_06006220, 0, 0.0f, 0);
        this->unk_194 = 18;
    }
}

void func_8096F2B0(DemoEc* this, GlobalContext* globalCtx, s32 arg2) {
    CsCmdActorAction* npcAction;
    s32 sp18;
    npcAction = func_8096DDF0(globalCtx, arg2);
    if (npcAction != NULL) {
        sp18 = npcAction->action;
        if ((sp18 != this->action)) {
            if (this->action) {}
            if (sp18 == 2) {
                func_8096F224(this, globalCtx);
            }
            this->action = sp18;
        }
    }
}
void func_8096F314(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096DE14(this, globalCtx, 6);
    func_8096D54C(this, globalCtx);
    func_8096F2B0(this, globalCtx, 6);
}

void func_8096F378(DemoEc* this, GlobalContext* globalCtx) {
    s32 sp24;

    sp24 = func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096F1D4(this);
    func_8096D54C(this, globalCtx);
    func_8096F26C(this, sp24);
}

void func_8096F3D4(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F418.s")

void func_8096F454(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_06007FB8);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_060095DC, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 19;
    this->unk_198 = 15;
    func_8096D714(this, 3);
}

void func_8096F4FC(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_06008D1C, 2, -8.0f, 0);
    this->unk_194 = 20;
}

void func_8096F544(DemoEc* this, s32 arg1) {
    if (arg1 != 0) {
        func_8096D79C(this, &D_06009234, 0, 0.0f, 0);
    }
}

void func_8096F578(DemoEc* this, GlobalContext* globalCtx, s32 arg2) {
    CsCmdActorAction* npcAction;
    s32 sp18;
    npcAction = func_8096DDF0(globalCtx, arg2);
    if (npcAction != NULL) {
        sp18 = npcAction->action;
        if ((sp18 != this->action)) {
            if (this->action) {}
            if (sp18 == 2) {
                func_8096F4FC(this, globalCtx);
            }
            this->action = sp18;
        }
    }
}

void func_8096F5DC(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096DE14(this, globalCtx, 7);
    func_8096D54C(this, globalCtx);
    func_8096F578(this, globalCtx, 7);
}

void func_8096F640(DemoEc* this, GlobalContext* globalCtx) {
    s32 sp24;

    sp24 = func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
    func_8096F544(this, sp24);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F69C.s")

void func_8096F6D8(DemoEc* this, GlobalContext* globalCtx) {
    AnimationHeader* phi_a1;

    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_06002530);
    func_8096DDBC(this, globalCtx);
    if (this->actor.params == 22) {
        phi_a1 = &D_06009BB4;
    } else if (this->actor.params == 23) {
        phi_a1 = &D_0600A07C;
    } else {
        phi_a1 = &D_0600A474;
    }
    func_8096D79C(this, phi_a1, 0, 0.0f, 0);
    func_8096D64C(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 21;
    this->unk_198 = 16;
}

void func_8096F7A0(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D54C(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F7DC.s")

void func_8096F808(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_060000F0);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_06000CD8, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 22;
    this->unk_198 = 17;
}

void func_8096F8A4(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F8E8.s")

void func_8096F924(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_06004258);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_0600AFE0, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 23;
    this->unk_198 = 18;
}

void func_8096F9C0(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

void func_8096FA04(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp = this->unk_190;
    func_8096D8C4(this, globalCtx, D_80970474[temp], 0, 0, 0);
}

void func_8096FA40(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_06004658);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_0600AFE0, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 24;
    this->unk_198 = 19;
}

void func_8096FADC(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D54C(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FB18.s")

void func_8096FB48(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_060085F8);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_0600AFE0, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 25;
    this->unk_198 = 20;
}

void func_8096FBE4(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FC28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FCA8.s")

void func_8096FCEC(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_06004868);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_0600AFE0, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 26;
    this->unk_198 = 21;
}

void func_8096FD88(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FDCC.s")

#ifdef NON_MATCHING
void func_8096FE08(DemoEc* this, GlobalContext* globalCtx) {
    s32 pad;
    // Vec3f* temp_v0_2;
    f32 phi_f0;
    AnimationHeader* phi_a1;

    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_0600FEF0);
    func_8096DDBC(this, globalCtx);
    if (this->actor.params == 30) {
        phi_a1 = &D_06002FA0;
        phi_f0 = 1.0f;
    } else if (this->actor.params == 31) {
        phi_a1 = &D_06003A98;
        phi_f0 = 1.0f;
    } else if (this->actor.params == 32) {
        phi_a1 = &D_06002FA0;
        phi_f0 = 15.0f;
    } else {
        phi_f0 = 5.0f;
        phi_a1 = &D_060002B8;
    }
    func_8096D79C(this, phi_a1, 0, 0.0f, 0);

    this->actor.scale.x *= phi_f0;
    this->actor.scale.y *= phi_f0;
    this->actor.scale.z *= phi_f0;
    // temp_v0_2 = &this->actor.scale;
    // temp_f0 = phi_f0;
    // temp_v0_2->x = temp_v0_2->x * phi_f0;
    // temp_v0_2->y = temp_v0_2->y * phi_f0;
    // temp_v0_2->z = temp_v0_2->z * phi_f0;
    func_8096D64C(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 27;
    this->unk_198 = 22;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FE08.s")
#endif

void func_8096FF38(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FF7C.s")

void func_8096FFBC(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    func_8096D728(this, globalCtx, &D_06008D90);
    func_8096DDBC(this, globalCtx);
    func_8096D79C(this, &D_06009EE0, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 30.0f);
    this->unk_194 = 0x1C;
    this->unk_198 = 0x17;
}

void func_80970058(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D52C(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8097009C.s")

void func_809700DC(DemoEc* this, GlobalContext* globalCtx) {
    s16 params;
    DemoEcActionFunc actionFunc;

    params = this->actor.params;
    actionFunc = D_809704B0[params];
    if (actionFunc == NULL) {
        // Demo_Ec_main_init: Initialization process is wrong arg_data
        osSyncPrintf(VT_FGCOL(RED) " Demo_Ec_main_init:初期化処理がおかしいarg_data = %d!\n" VT_RST, params);
        Actor_Kill(&this->actor);
        return;
    }
    actionFunc(this, globalCtx);
}

void func_80970140(DemoEc* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 temp;
    s32 tempParams;
    s16 pad2;
    s16 sp28;
    s32 sp24;
    s32 temp_v0;

    tempParams = this->actor.params;
    temp = D_80970350[tempParams];
    sp28 = D_80970398[tempParams];
    sp24 = Object_GetIndex(&globalCtx->objectCtx, temp);
    temp_v0 = Object_GetIndex(&globalCtx->objectCtx, sp28);
    if ((temp_v0 < 0) || (sp24 < 0)) {
        // Demo_Ec_main_bank: Bank unreadable arg_data =%
        osSyncPrintf(VT_FGCOL(RED) "Demo_Ec_main_bank:バンクを読めない arg_data = %d!\n" VT_RST, tempParams);
        Actor_Kill(&this->actor);
        return;
    }
    if ((Object_IsLoaded(&globalCtx->objectCtx, sp24) != 0) && (Object_IsLoaded(&globalCtx->objectCtx, temp_v0) != 0)) {
        this->unk_1A0 = sp24;
        this->unk_1A4 = temp_v0;
        func_809700DC(this, globalCtx);
    }
}

void DemoEc_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    DemoEc* this = THIS;
    DemoEcActionFunc* actionFunc;

    if ((this->unk_194 < 0) || (this->unk_194 > 0x1C) ||
        (actionFunc = D_8097053C + this->unk_194, *actionFunc == NULL)) {
        // The main mode is strange !!!!!!!!!!!!!!!!!!!!!!!!!
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        if (actionFunc != D_8097053C) {
            func_8096DDBC(this, globalCtx);
        }
        (*actionFunc)(this, globalCtx);
        if (D_8097053C) {}
    }
}

void func_809702B0(DemoEc* this, GlobalContext* globalCtx) {
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/DemoEc_Draw.s")
