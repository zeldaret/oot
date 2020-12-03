#include "z_demo_ec.h"
#include "vt.h"

#define FLAGS 0x00000010

#define THIS ((DemoEc*)thisx)

void DemoEc_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoEc_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoEc_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoEc_Draw(Actor* thisx, GlobalContext* globalCtx);

void DemoEc_SetupIngo(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupTalon(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupWindmillMan(DemoEc* this, GlobalContext* globalCtx);
void DemEc_SetupKokiriBoy(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupKokiriGirl(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupOldMan(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupBeardedMan(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupWoman(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupOldWoman(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupBossCarpenter(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupCarpenter(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupDancingKokiriBoy(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupDancingKokiriGirl(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupGerudo(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupDancingZora(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupKingZora(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupMido(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupCucco(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupCuccoLady(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupPotionShopOwner(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupMaskShopOwner(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupFishingPondOwner(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupBombchewShopOwner(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupGorons(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupMalon(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_SetupObjects(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateIngo(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateTalon(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateWindmillMan(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateKokiriBoy(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateKokiriGirl(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateOldMan(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateBeardedMan(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateWoman(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateOldWoman(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateBossCarpenter(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateCarpenter(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateDancingKokiriBoy(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateDancingKokiriGirl(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateGerudo(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateDancingZora(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateKingZora(DemoEc* this, GlobalContext* globalCtx);
void func_8096F378(DemoEc* this, GlobalContext* globalCtx);
void func_8096F3D4(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateMido(DemoEc* this, GlobalContext* globalCtx);
void func_8096F640(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateCucco(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateCuccoLady(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdatePotionShopOwner(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateMaskShopOwner(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateFishingPondOwner(DemoEc* this, GlobalContext* globalCtx);
void DempEc_UpdateBombchewShopOwner(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateGorons(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_UpdateMalon(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawNothing(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawIngo(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawTalon(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawWindmillMan(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawKokiriBoy(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawKokiriGirl(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawOldMan(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawBeardedMan(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawWoman(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawOldWoman(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawBossCarpenter(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawCarpenter(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawGerudo(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawDancingZora(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawKingZoroa(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawMido(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawCucco(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawCuccoLady(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawPotionShopOwner(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawMaskShopOwner(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawFishingPondOwner(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawBombchewShopOwner(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawGorons(DemoEc* this, GlobalContext* globalCtx);
void DemoEc_DrawMalon(DemoEc* this, GlobalContext* globalCtx);

static s16 D_80970350[] = {
    OBJECT_IN,   OBJECT_TA,  OBJECT_FU,       OBJECT_KM1,      OBJECT_KW1,      OBJECT_BJI,      OBJECT_AHG,
    OBJECT_BOB,  OBJECT_BBA, OBJECT_TORYO,    OBJECT_DAIKU,    OBJECT_DAIKU,    OBJECT_DAIKU,    OBJECT_DAIKU,
    OBJECT_KM1,  OBJECT_KW1, OBJECT_GE1,      OBJECT_GE1,      OBJECT_GE1,      OBJECT_ZO,       OBJECT_KZ,
    OBJECT_MD,   OBJECT_NIW, OBJECT_NIW,      OBJECT_NIW,      OBJECT_ANE,      OBJECT_DS2,      OBJECT_OS,
    OBJECT_FISH, OBJECT_RS,  OBJECT_OF1D_MAP, OBJECT_OF1D_MAP, OBJECT_OF1D_MAP, OBJECT_OF1D_MAP, OBJECT_MA2,
};

static s16 D_80970398[] = {
    OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC,  OBJECT_EC,
    OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC,  OBJECT_EC,
    OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC,  OBJECT_EC,
    OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_GM, OBJECT_MA2,
};

static Color_RGBA8 D_809703E0 = { 00, 130, 70, 255 };
static Color_RGBA8 D_809703E4 = { 110, 170, 20, 255 };
static Gfx* D_809703E8[] = { 0x06000F4C, 0x06001A0C, 0x06001E0C };
static Gfx* D_809703F4 = 0x46BE3CFF;
static Gfx* D_809703F8 = 0x641E00FF;
static Gfx* D_809703FC[] = { 0x060005FC, 0x060009FC, 0x06000DFC };
static Color_RGBA8 D_80970408 = { 0, 50, 100, 255 };
static Color_RGBA8 D_8097040C = { 0, 50, 160, 255 };
static s32 D_80970410[] = { 0x0600057C, 0x0600067C, 0x0600077C };
static Color_RGBA8 D_8097041C = { 255, 255, 255, 255 };
static Color_RGBA8 D_80970420 = { 255, 255, 255, 255 };
static Gfx* D_80970424[] = { 0x060007C8, 0x06000FC8, 0x060017C8 };
static Gfx* D_80970430[] = { 0x06000708, 0x06000F08, 0x06001708 };
static Gfx* D_8097043C[] = { 0x06003E40, 0x06004640, 0x06004E40 };
static Gfx* D_80970448[] = { 0x06001470, 0x06001870, 0x06001C70, 0x06002070 };
static Gfx* D_80970458[] = { 0x06004FF0, 0x06005930, 0x06005D30, 0x06006130 };
static Gfx* D_80970468[] = { 0x060008C8, 0x060010C8, 0x060018C8 };
Gfx* D_80970474[] = { 0x060030D8, 0x060034D8, 0x060038D8 };
static Gfx* D_80970480[] = { 0x06009250, 0x06009650, 0x06009A50 };
static Gfx* D_8097048C[] = { 0x06003968, 0x06003D68, 0x06004168 };
static Gfx* D_80970498[] = { 0x0600CE80, 0x0600D280, 0x0600D680 };
static Gfx* D_809704A4[] = { 0x06002570, 0x06002C70, 0x06003070 };

extern FlexSkeletonHeader D_06013B88;
extern FlexSkeletonHeader D_0600B7B8;
extern FlexSkeletonHeader D_06006C90;
extern FlexSkeletonHeader D_060000F0;
extern FlexSkeletonHeader D_06007150;
extern FlexSkeletonHeader D_06007958;
extern FlexSkeletonHeader D_06000330;
extern FlexSkeletonHeader D_0600BFA8;
extern FlexSkeletonHeader D_060086D0;
extern FlexSkeletonHeader D_06007FB8;
extern FlexSkeletonHeader D_06002530;
extern FlexSkeletonHeader D_06004258;
extern FlexSkeletonHeader D_06004658;
extern FlexSkeletonHeader D_060085F8;
extern FlexSkeletonHeader D_06004868;
extern FlexSkeletonHeader D_0600FEF0;
extern FlexSkeletonHeader D_06008D90;

extern AnimationHeader D_0600BD38;
extern AnimationHeader D_060048F4;
extern AnimationHeader D_0600196C;
extern AnimationHeader D_06005670;
extern AnimationHeader D_06005EA8;
extern AnimationHeader D_0600164C;
extern AnimationHeader D_0600164C;
extern AnimationHeader D_0600513C;
extern AnimationHeader D_06002254;
extern AnimationHeader D_0600C918;
extern AnimationHeader D_06006C40;
extern AnimationHeader D_060095DC;
extern AnimationHeader D_06009BB4;
extern AnimationHeader D_0600A07C;
extern AnimationHeader D_0600A474;
extern AnimationHeader D_06000CD8;
extern AnimationHeader D_0600AFE0;
extern AnimationHeader D_0600AFE0;
extern AnimationHeader D_06002FA0;
extern AnimationHeader D_06003A98;
extern AnimationHeader D_06002FA0;
extern AnimationHeader D_060002B8;
extern AnimationHeader D_06009EE0;
extern AnimationHeader D_06006930;
extern AnimationHeader D_06006220;
extern AnimationHeader D_06008D1C;
extern AnimationHeader D_06009234;
extern AnimationHeader D_06004390;
extern AnimationHeader D_060076C0;
extern AnimationHeader D_06005F20;

extern Gfx D_06004350[];
extern Gfx D_06007AC0[];
extern Gfx D_06006920[];
extern Gfx D_060004C8[];
extern Gfx D_06005BD0[];
extern Gfx D_06005AC0[];
extern Gfx D_06005990[];
extern Gfx D_06005880[];
extern Gfx D_06009198[];
extern Gfx D_06009430[];
extern Gfx D_06009690[];
extern Gfx D_060035D8[];
extern Gfx D_060074C8[];
extern Gfx D_0600DE80[];
extern Gfx D_06003770[];

void DemoEc_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DemoEc* this = THIS;
    SkelAnime_Free(&this->skelAnime, globalCtx);
}

void DemoEc_Init(Actor* thisx, GlobalContext* globalCtx) {
    DemoEc* this = THIS;

    if ((thisx->params < 0) || (thisx->params > 34)) {
        osSyncPrintf(VT_FGCOL(RED) "Demo_Ec_Actor_ct:arg_dataがおかしい!!!!!!!!!!!!\n" VT_RST);
        Actor_Kill(thisx);
    } else {
        this->animationIndex = 0;
        this->drawIndex = 0;
    }
}

s32 DemoEc_GetFrameUpdateMatrix(DemoEc* this) {
    return SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

void func_8096D54C(DemoEc* this, GlobalContext* globalCtx) {
    func_8002E4B4(globalCtx, &this->actor, 30.0f, 25.0f, 30.0f, 7);
}

void func_8096D594(DemoEc* this, GlobalContext* globalCtx) {
    this->skelAnime.flags |= 3;
    SkelAnime_LoadAnimationType5(globalCtx, &this->actor, &this->skelAnime, 1.0f);
}

void func_8096D5D4(DemoEc* this, GlobalContext* globalCtx) {
    this->skelAnime.unk_3E = this->skelAnime.limbDrawTbl[0];
    this->skelAnime.prevFramePos = this->skelAnime.limbDrawTbl[0];
    this->skelAnime.flags |= 3;
    SkelAnime_LoadAnimationType5(globalCtx, &this->actor, &this->skelAnime, 1.0f);
}

void func_8096D64C(DemoEc* this, GlobalContext* globalCtx) {
    this->skelAnime.flags |= 3;
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

void DemoEc_InitSkelanime(DemoEc* this, GlobalContext* globalCtx, SkeletonHeader* skeletonHeader) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, SEGMENTED_TO_VIRTUAL(skeletonHeader), NULL, NULL, NULL, 0);
}

void DemoEc_ChangeAnimation(DemoEc* this, AnimationHeader* animation, u8 arg2, f32 transitionRate, s32 arg4) {
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

Gfx* func_8096D858(GraphicsContext* gfxCtx, u8 colors[4]) {
    Gfx* dList;

    dList = Graph_Alloc(gfxCtx, sizeof(Gfx) * 2);
    gDPSetEnvColor(dList, colors[0], colors[1], colors[2], colors[3]);
    gSPEndDisplayList(dList + 1);
    return dList;
}

void func_8096D8C4(DemoEc* this, GlobalContext* globalCtx, Gfx* arg2, Gfx* arg3, OverrideLimbDraw overrideLimbDraw,
                   PostLimbDraw postLimbDraw) {
    GraphicsContext* gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;
    s32 pad;
    gfxCtx = globalCtx->state.gfxCtx;
    OPEN_DISPS(gfxCtx, "../z_demo_ec.c", 565);
    func_80093D18(gfxCtx);
    if (arg2 != 0) {
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(arg2));
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(arg2));
    }
    if (arg3 != 0) {
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(arg3));
    }
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0x0C, &D_80116280[2]);
    POLY_OPA_DISP = SkelAnime_DrawFlex(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                                       overrideLimbDraw, postLimbDraw, &this->actor, POLY_OPA_DISP);
    CLOSE_DISPS(gfxCtx, "../z_demo_ec.c", 595);
}

void func_8096DA80(DemoEc* this, GlobalContext* globalCtx, Gfx* arg2, Gfx* arg3, Color_RGBA8* arg4, Color_RGBA8* arg5,
                   OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw) {
    s32 pad;
    GraphicsContext* gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;

    gfxCtx = globalCtx->state.gfxCtx;
    OPEN_DISPS(gfxCtx, "../z_demo_ec.c", 0x261);
    func_80093D18(__gfxCtx);
    if (arg2 != 0) {
        gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(arg2));
    }
    if (arg3 != 0) {
        gSPSegment(POLY_OPA_DISP++, 0x0B, SEGMENTED_TO_VIRTUAL(arg3));
    }
    // @bug Due to the way SEGMENTED_TO_VIRTUAL works func_8096D858 is called twice.  Causing two different Gfx to be
    // allocated
    if (arg4 != 0) {
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(func_8096D858(gfxCtx, arg4)));
    }
    if (arg5 != 0) {
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(func_8096D858(gfxCtx, arg4)));
    }
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0x0C, &D_80116280[2]);

    POLY_OPA_DISP = SkelAnime_DrawFlex(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                                       overrideLimbDraw, postLimbDraw, &this->actor, POLY_OPA_DISP);
    CLOSE_DISPS(gfxCtx, "../z_demo_ec.c", 0x286);
}

void func_8096DD0C(DemoEc* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s32 sp3C = this->unk_1A0;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_demo_ec.c", 0x296);
    gSPSegment(POLY_OPA_DISP++, 0x06, globalCtx->objectCtx.status[sp3C].segment);
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

void DemoEc_SetupIngo(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_06013B88);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_060048F4, 0, 0.0f, 0);
    func_8096D64C(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_INGO;
    this->drawIndex = DRAW_INGO;
}

void DemoEc_UpdateIngo(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D54C(this, globalCtx);
}

void DemoEc_DrawIngo(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D8C4(this, globalCtx, &D_06004390, &D_06004350, 0, 0);
}

void DemoEc_SetupTalon(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_0600B7B8);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600BD38, 0, 0.0f, 0);
    func_8096D64C(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_TALON;
    this->drawIndex = DRAW_TALON;
}

void DemoEc_UpdateTalon(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D54C(this, globalCtx);
}

void DemoEc_DrawTalon(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D8C4(this, globalCtx, &D_060076C0, &D_06007AC0, NULL, NULL);
}

void DemoEc_SetupWindmillMan(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_06006C90);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600196C, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_WINDMILL_MAN;
    this->drawIndex = DRAW_WINDMILL_MAN;
}

void DemoEc_UpdateWindmillMan(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D54C(this, globalCtx);
}

void DemoEc_DrawWindmillMan(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D8C4(this, globalCtx, &D_06005F20, &D_06006920, 0, 0);
}

void DemEc_SetupKokiriBoy(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_060000F0);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06005670, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_KOKIRI_BOY;
    this->drawIndex = DRAW_KOKIRI_BOY;
}

void DemoEc_SetupDancingKokiriBoy(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_060000F0);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600513C, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_DANCING_KOKIRI_BOY;
    this->drawIndex = DRAW_KOKIRI_BOY;
}

void DemoEc_UpdateKokiriBoy(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D54C(this, globalCtx);
}

void DemoEc_UpdateDancingKokiriBoy(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateKokiriBoy(this, globalCtx);
}

void DemoEc_DrawKokiriBoy(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DA80(this, globalCtx, NULL, NULL, &D_809703E0, &D_809703E4, NULL, NULL);
}

void DemoEc_SetupKokiriGirl(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_060000F0);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06005670, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_KOKIRI_GIRL;
    this->drawIndex = DRAW_KOKIRI_GIRL;
}

void DemoEc_SetupDancingKokiriGirl(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_060000F0);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600513C, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_DANCING_KOKIRI_GIRL;
    this->drawIndex = DRAW_KOKIRI_GIRL;
}

void DemoEc_UpdateKokiriGirl(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

void DemoEc_UpdateDancingKokiriGirl(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateKokiriGirl(this, globalCtx);
}

void DemoEc_DrawKokiriGirl(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp2 = this->unk_190;
    Gfx* temp = D_809703E8[temp2];

    func_8096DA80(this, globalCtx, temp, NULL, &D_809703F4, &D_809703F8, NULL, NULL);
}
void DemoEc_SetupOldMan(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_060000F0);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06005EA8, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_OLD_MAN;
    this->drawIndex = DRAW_OLD_MAN;
}

void DemoEc_UpdateOldMan(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

void DemoEc_DrawOldMan(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp2 = this->unk_190;
    Gfx* temp = D_809703FC[temp2];

    func_8096DA80(this, globalCtx, temp, NULL, &D_80970408, &D_8097040C, NULL, NULL);
}

void DemoEc_SetupBeardedMan(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_060000F0);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06005EA8, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = 7;
    this->drawIndex = 7;
}

void DemoEc_UpdateBeardedMan(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

void DemoEc_DrawBeardedMan(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp2 = this->unk_190;
    Gfx* temp = D_80970410[temp2];

    func_8096DA80(this, globalCtx, temp, NULL, &D_8097041C, &D_80970420, NULL, NULL);
}

void DemoEc_SetupWoman(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_060000F0);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06005EA8, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_WOMAN;
    this->drawIndex = DRAW_WOMAN;
}

void DemoEc_UpdateWoman(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

void DemoEc_DrawWoman(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp2 = this->unk_190;
    Gfx* temp = D_80970424[temp2];

    func_8096D8C4(this, globalCtx, temp, NULL, NULL, NULL);
}

void DemoEc_SetupOldWoman(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_060000F0);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06005EA8, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_OLD_WOMAN;
    this->drawIndex = DRAW_OLD_WOMAN;
}

void DemoEc_UpdateOldWoman(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D54C(this, globalCtx);
}

void DemoEc_DrawOldWoman(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D8C4(this, globalCtx, &D_060004C8, NULL, NULL, NULL);
}

void DemoEc_SetupBossCarpenter(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_06007150);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600164C, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_BOSS_CARPENTER;
    this->drawIndex = DRAW_BOSS_CARPENTER;
}

void DemoEc_UpdateBossCarpenter(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D54C(this, globalCtx);
}

void DemoEc_DrawBossCarpenter(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D8C4(this, globalCtx, NULL, NULL, NULL, NULL);
}

void DemoEc_SetupCarpenter(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_06007958);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600164C, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_CARPENTER;
    this->drawIndex = DRAW_CARPENTER;
}

void DemoEc_UpdateCarpenter(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D54C(this, globalCtx);
}

s32 DemoEc_overrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx,
                            Gfx** gfx) {
    if (limbIndex == 1) {
        gDPPipeSync((*gfx)++);
        switch (thisx->params) {
            case 0xA:
                gDPSetEnvColor((*gfx)++, 170, 10, 70, 255);
                break;
            case 0xB:
                gDPSetEnvColor((*gfx)++, 170, 200, 255, 255);
                break;
            case 0xC:
                gDPSetEnvColor((*gfx)++, 0, 230, 70, 255);
                break;
            case 0xD:
                gDPSetEnvColor((*gfx)++, 200, 0, 150, 255);
                break;
        }
    }
    return 0;
}

Gfx* func_8096ECBC(Actor* thisx) {
    switch (thisx->params) {
        case 0xA:
            return D_06005BD0;
        case 0xB:
            return D_06005AC0;
        case 0xC:
            return D_06005990;
        case 0xD:
            return D_06005880;
        default:
            osSyncPrintf("\x1b[31mかつらが無い!!!!!!!!!!!!!!!!\n\x1b[m");
            return 0;
    }
}

void DemoEc_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* actor, Gfx** gfx) {
    s32 temp_v0;

    if (limbIndex == 0xF) {
        temp_v0 = func_8096ECBC(actor);
        gSPDisplayList((*gfx)++, SEGMENTED_TO_VIRTUAL(temp_v0));
    }
}

void DemoEc_DrawCarpenter(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D8C4(this, globalCtx, NULL, 0, DemoEc_overrideLimbDraw, DemoEc_PostLimbDraw);
}

void DemoEc_SetupGerudo(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_06000330);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06002254, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_GERUDO;
    this->drawIndex = DRAW_GERUDO;
}

void DemoEc_UpdateGerudo(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

Gfx* func_8096EEDC(Actor* thisx) {
    switch (thisx->params) {
        case 0x10:
            return D_06009198;
        case 0x11:
            return D_06009430;
        case 0x12:
            return D_06009690;
        default:
            osSyncPrintf("\x1b[31mかつらが無い!!!!!!!!!!!!!!!!\n\x1b[m");
            return 0;
    }
}

void DemoEc_PostLimbDraw2(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* actor, Gfx** gfx) {
    s32 temp_v0;

    if (limbIndex == 0xF) {
        temp_v0 = func_8096EEDC(actor);
        gSPDisplayList((*gfx)++, SEGMENTED_TO_VIRTUAL(temp_v0));
    }
}

void DemoEc_DrawGerudo(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp2 = this->unk_190;
    Gfx* temp = D_80970430[temp2];

    func_8096D8C4(this, globalCtx, temp, NULL, NULL, DemoEc_PostLimbDraw2);
}

void DemoEc_SetupDancingZora(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_0600BFA8);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600C918, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_DANCING_ZORA;
    this->drawIndex = DRAW_DANCING_ZORA;
}

void DemoEc_UpdateDancingZora(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

void DemoEc_DrawDancingZora(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp2 = this->unk_190;
    Gfx* temp = D_8097043C[temp2];

    func_8096D8C4(this, globalCtx, temp, NULL, NULL, NULL);
}

void DemoEc_SetupKingZora(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_060086D0);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06006C40, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_KING_ZORA;
    this->drawIndex = DRAW_KING_ZORA;
    func_8096D714(this, 3);
}

void func_8096F1D4(DemoEc* this) {
    f32 currentFrame = this->skelAnime.animCurrentFrame;

    if (currentFrame <= 32.0f) {
        func_8096D714(this, 3);
    } else {
        func_8096D68C(this);
    }
}

void func_8096F224(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06006930, 2, -8.0f, 0);
    this->animationIndex = 17;
}

void func_8096F26C(DemoEc* this, s32 arg1) {
    if (arg1 != 0) {
        DemoEc_ChangeAnimation(this, &D_06006220, 0, 0.0f, 0);
        this->animationIndex = 18;
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
void DemoEc_UpdateKingZora(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096DE14(this, globalCtx, 6);
    func_8096D54C(this, globalCtx);
    func_8096F2B0(this, globalCtx, 6);
}

void func_8096F378(DemoEc* this, GlobalContext* globalCtx) {
    s32 sp24;

    sp24 = DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096F1D4(this);
    func_8096D54C(this, globalCtx);
    func_8096F26C(this, sp24);
}

void func_8096F3D4(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

void DemoEc_DrawKingZoroa(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp2 = this->unk_190;
    Gfx* temp = D_80970448[temp2];

    func_8096D8C4(this, globalCtx, temp, NULL, NULL, NULL);
}

void DemoEc_SetupMido(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_06007FB8);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_060095DC, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_MIDO;
    this->drawIndex = DRAW_MIDO;
    func_8096D714(this, 3);
}

void func_8096F4FC(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06008D1C, 2, -8.0f, 0);
    this->animationIndex = 20;
}

void func_8096F544(DemoEc* this, s32 arg1) {
    if (arg1 != 0) {
        DemoEc_ChangeAnimation(this, &D_06009234, 0, 0.0f, 0);
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

void DemoEc_UpdateMido(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096DE14(this, globalCtx, 7);
    func_8096D54C(this, globalCtx);
    func_8096F578(this, globalCtx, 7);
}

void func_8096F640(DemoEc* this, GlobalContext* globalCtx) {
    s32 sp24;

    sp24 = DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
    func_8096F544(this, sp24);
}

void DemoEc_DrawMido(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp2 = this->unk_190;
    Gfx* temp = D_80970458[temp2];

    func_8096D8C4(this, globalCtx, temp, NULL, NULL, NULL);
}

void DemoEc_SetupCucco(DemoEc* this, GlobalContext* globalCtx) {
    AnimationHeader* animation;

    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_06002530);
    func_8096DDBC(this, globalCtx);
    if (this->actor.params == 22) {
        animation = &D_06009BB4;
    } else if (this->actor.params == 23) {
        animation = &D_0600A07C;
    } else {
        animation = &D_0600A474;
    }
    DemoEc_ChangeAnimation(this, animation, 0, 0.0f, 0);
    func_8096D64C(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_CUCCO;
    this->drawIndex = DRAW_CUCCO;
}

void DemoEc_UpdateCucco(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D54C(this, globalCtx);
}

void DemoEc_DrawCucco(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D8C4(this, globalCtx, NULL, NULL, NULL, NULL);
}

void DemoEc_SetupCuccoLady(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_060000F0);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06000CD8, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_CUCCO_LADY;
    this->drawIndex = DRAW_CUCCO_LADY;
}

void DemoEc_UpdateCuccoLady(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

void DemoEc_DrawCuccoLady(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp2 = this->unk_190;
    Gfx* temp = D_80970468[temp2];

    func_8096D8C4(this, globalCtx, temp, NULL, NULL, NULL);
}

void DemoEc_SetupPotionShopOwner(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_06004258);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600AFE0, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_POTION_SHOP_OWNER;
    this->drawIndex = DRAW_POTION_SHOP_OWNER;
}

void DemoEc_UpdatePotionShopOwner(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

void DemoEc_DrawPotionShopOwner(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp = this->unk_190;

    func_8096D8C4(this, globalCtx, D_80970474[temp], NULL, NULL, NULL);
}

void DemoEc_SetupMaskShopOwner(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_06004658);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600AFE0, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_MASK_SHOP_OWNER;
    this->drawIndex = DRAW_MASK_SHOP_OWNER;
}

void DemoEc_UpdateMaskShopOwner(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D54C(this, globalCtx);
}

void DemoEc_DrawMaskShopOwner(DemoEc* this, GlobalContext* globalCtx) {
    func_8096D8C4(this, globalCtx, &D_060035D8, NULL, NULL, NULL);
}

void DemoEc_SetupFishingPondOwner(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_060085F8);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600AFE0, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_FISHING_POND_OWNER;
    this->drawIndex = DRAW_FISHING_POND_OWNER;
}

void DemoEc_UpdateFishingPondOwner(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

void DemoEc_PostLimbDraw3(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* actor, Gfx** gfx) {
    if ((limbIndex == 8) && (!(gSaveContext.unk_EC0 & 0x1000))) {
        gSPDisplayList((*gfx)++, SEGMENTED_TO_VIRTUAL(D_060074C8));
    }
}

void DemoEc_DrawFishingPondOwner(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp2 = this->unk_190;
    Gfx* temp = D_80970480[temp2];

    func_8096D8C4(this, globalCtx, temp, NULL, NULL, DemoEc_PostLimbDraw3);
}

void DemoEc_SetupBombchewShopOwner(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_06004868);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600AFE0, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_BOMBCHEW_SHOP_OWNER;
    this->drawIndex = DRAW_BOMBCHEW_SHOP_OWNER;
}

void DempEc_UpdateBombchewShopOwner(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}
void DemoEc_DrawBombchewShopOwner(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp2 = this->unk_190;
    Gfx* temp = D_8097048C[temp2];

    func_8096D8C4(this, globalCtx, temp, NULL, NULL, NULL);
}

#ifdef NON_MATCHING
void DemoEc_SetupGorons(DemoEc* this, GlobalContext* globalCtx) {
    s32 pad;
    f32 phi_f0;
    AnimationHeader* animation;

    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_0600FEF0);
    func_8096DDBC(this, globalCtx);
    if (this->actor.params == 30) {
        animation = &D_06002FA0;
        phi_f0 = 1.0f;
    } else if (this->actor.params == 31) {
        animation = &D_06003A98;
        phi_f0 = 1.0f;
    } else if (this->actor.params == 32) {
        animation = &D_06002FA0;
        phi_f0 = 15.0f;
    } else {
        phi_f0 = 5.0f;
        animation = &D_060002B8;
    }
    DemoEc_ChangeAnimation(this, animation, 0, 0.0f, 0);

    this->actor.scale.x *= phi_f0;
    this->actor.scale.y *= phi_f0;
    this->actor.scale.z *= phi_f0;
    func_8096D64C(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_GORON;
    this->drawIndex = DRAW_GORON;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/DemoEc_SetupGorons.s")
#endif

void DemoEc_UpdateGorons(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

void DemoEc_DrawGorons(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp2 = this->unk_190;
    Gfx* temp = D_80970498[temp2];

    func_8096D8C4(this, globalCtx, temp, &D_0600DE80, NULL, NULL);
}

void DemoEc_SetupMalon(DemoEc* this, GlobalContext* globalCtx) {
    func_8096DD0C(this, globalCtx);
    DemoEc_InitSkelanime(this, globalCtx, &D_06008D90);
    func_8096DDBC(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06009EE0, 0, 0.0f, 0);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->animationIndex = ANIMATE_MALON;
    this->drawIndex = DRAW_MALON;
}

void DemoEc_UpdateMalon(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_GetFrameUpdateMatrix(this);
    func_8096D594(this, globalCtx);
    func_8096D68C(this);
    func_8096D54C(this, globalCtx);
}

void DemoEc_DrawMalon(DemoEc* this, GlobalContext* globalCtx) {
    s32 temp2 = this->unk_190;
    Gfx* temp = D_809704A4[temp2];

    func_8096D8C4(this, globalCtx, temp, &D_06003770, NULL, NULL);
}

static DemoEcSetupFunc sInitFuncs[] = {
    DemoEc_SetupIngo,
    DemoEc_SetupTalon,
    DemoEc_SetupWindmillMan,
    DemEc_SetupKokiriBoy,
    DemoEc_SetupKokiriGirl,
    DemoEc_SetupOldMan,
    DemoEc_SetupBeardedMan,
    DemoEc_SetupWoman,
    DemoEc_SetupOldWoman,
    DemoEc_SetupBossCarpenter,
    DemoEc_SetupCarpenter,
    DemoEc_SetupCarpenter,
    DemoEc_SetupCarpenter,
    DemoEc_SetupCarpenter,
    DemoEc_SetupDancingKokiriBoy,
    DemoEc_SetupDancingKokiriGirl,
    DemoEc_SetupGerudo,
    DemoEc_SetupGerudo,
    DemoEc_SetupGerudo,
    DemoEc_SetupDancingZora,
    DemoEc_SetupKingZora,
    DemoEc_SetupMido,
    DemoEc_SetupCucco,
    DemoEc_SetupCucco,
    DemoEc_SetupCucco,
    DemoEc_SetupCuccoLady,
    DemoEc_SetupPotionShopOwner,
    DemoEc_SetupMaskShopOwner,
    DemoEc_SetupFishingPondOwner,
    DemoEc_SetupBombchewShopOwner,
    DemoEc_SetupGorons,
    DemoEc_SetupGorons,
    DemoEc_SetupGorons,
    DemoEc_SetupGorons,
    DemoEc_SetupMalon,
};

void func_809700DC(DemoEc* this, GlobalContext* globalCtx) {
    s16 params;
    DemoEcSetupFunc setupFunc;

    params = this->actor.params;
    setupFunc = sInitFuncs[params];
    if (setupFunc == NULL) {
        // Demo_Ec_main_init: Initialization process is wrong arg_data
        osSyncPrintf(VT_FGCOL(RED) " Demo_Ec_main_init:初期化処理がおかしいarg_data = %d!\n" VT_RST, params);
        Actor_Kill(&this->actor);
        return;
    }
    setupFunc(this, globalCtx);
}

void DemoEc_SetupObjects(DemoEc* this, GlobalContext* globalCtx) {
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

static DemoEcActionFunc sUpdateFuncs[] = {
    DemoEc_SetupObjects,
    DemoEc_UpdateIngo,
    DemoEc_UpdateTalon,
    DemoEc_UpdateWindmillMan,
    DemoEc_UpdateKokiriBoy,
    DemoEc_UpdateKokiriGirl,
    DemoEc_UpdateOldMan,
    DemoEc_UpdateBeardedMan,
    DemoEc_UpdateWoman,
    DemoEc_UpdateOldWoman,
    DemoEc_UpdateBossCarpenter,
    DemoEc_UpdateCarpenter,
    DemoEc_UpdateDancingKokiriBoy,
    DemoEc_UpdateDancingKokiriGirl,
    DemoEc_UpdateGerudo,
    DemoEc_UpdateDancingZora,
    DemoEc_UpdateKingZora,
    func_8096F378,
    func_8096F3D4,
    DemoEc_UpdateMido,
    func_8096F640,
    DemoEc_UpdateCucco,
    DemoEc_UpdateCuccoLady,
    DemoEc_UpdatePotionShopOwner,
    DemoEc_UpdateMaskShopOwner,
    DemoEc_UpdateFishingPondOwner,
    DempEc_UpdateBombchewShopOwner,
    DemoEc_UpdateGorons,
    DemoEc_UpdateMalon,
};

void DemoEc_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    DemoEc* this = THIS;
    DemoEcActionFunc* actionFunc;

    if ((this->animationIndex < 0) || (this->animationIndex > 0x1C) ||
        (actionFunc = sUpdateFuncs + this->animationIndex, *actionFunc == NULL)) {
        // The main mode is strange !!!!!!!!!!!!!!!!!!!!!!!!!
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        if (actionFunc != sUpdateFuncs) {
            func_8096DDBC(this, globalCtx);
        }
        (*actionFunc)(this, globalCtx);
        if (sUpdateFuncs) {}
    }
}

void DemoEc_DrawNothing(DemoEc* this, GlobalContext* globalCtx) {
}

static DemoEcDrawFunc sDrawFuncs[] = {
    DemoEc_DrawNothing,
    DemoEc_DrawIngo,
    DemoEc_DrawTalon,
    DemoEc_DrawWindmillMan,
    DemoEc_DrawKokiriBoy,
    DemoEc_DrawKokiriGirl,
    DemoEc_DrawOldMan,
    DemoEc_DrawBeardedMan,
    DemoEc_DrawWoman,
    DemoEc_DrawOldWoman,
    DemoEc_DrawBossCarpenter,
    DemoEc_DrawCarpenter,
    DemoEc_DrawGerudo,
    DemoEc_DrawDancingZora,
    DemoEc_DrawKingZoroa,
    DemoEc_DrawMido,
    DemoEc_DrawCucco,
    DemoEc_DrawCuccoLady,
    DemoEc_DrawPotionShopOwner,
    DemoEc_DrawMaskShopOwner,
    DemoEc_DrawFishingPondOwner,
    DemoEc_DrawBombchewShopOwner,
    DemoEc_DrawGorons,
    DemoEc_DrawMalon,
};

void DemoEc_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    DemoEc* this = THIS;
    DemoEcDrawFunc* drawFunc;

    if ((this->drawIndex < 0) || (this->drawIndex >= 24) ||
        (drawFunc = sDrawFuncs + this->drawIndex, *drawFunc == NULL)) {
        // The main mode is strange !!!!!!!!!!!!!!!!!!!!!!!!!
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        if (drawFunc != sDrawFuncs) {
            func_8096DD0C(this, globalCtx);
        }
        (*drawFunc)(this, globalCtx);
        if (sDrawFuncs) {}
    }
}

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