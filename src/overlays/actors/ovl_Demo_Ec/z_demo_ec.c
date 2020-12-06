#include "z_demo_ec.h"
#include "vt.h"

#define FLAGS 0x00000010

#define THIS ((DemoEc*)thisx)

void DemoEc_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoEc_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoEc_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoEc_Draw(Actor* thisx, GlobalContext* globalCtx);

typedef enum {
    /* 00 */ EC_UPDATE_COMMON,
    /* 01 */ EC_UPDATE_INGO,
    /* 02 */ EC_UPDATE_TALON,
    /* 03 */ EC_UPDATE_WINDMILL_MAN,
    /* 04 */ EC_UPDATE_KOKIRI_BOY,
    /* 05 */ EC_UPDATE_KOKIRI_GIRL,
    /* 06 */ EC_UPDATE_OLD_MAN,
    /* 07 */ EC_UPDATE_BEARDED_MAN,
    /* 08 */ EC_UPDATE_WOMAN,
    /* 09 */ EC_UPDATE_OLD_WOMAN,
    /* 10 */ EC_UPDATE_BOSS_CARPENTER,
    /* 11 */ EC_UPDATE_CARPENTER,
    /* 12 */ EC_UPDATE_DANCING_KOKIRI_BOY,
    /* 13 */ EC_UPDATE_DANCING_KOKIRI_GIRL,
    /* 14 */ EC_UPDATE_GERUDO,
    /* 15 */ EC_UPDATE_DANCING_ZORA,
    /* 16 */ EC_UPDATE_KING_ZORA,
    /* 17 */ EC_UPDATE_17,
    /* 18 */ EC_UPDATE_18,
    /* 19 */ EC_UPDATE_MIDO,
    /* 20 */ EC_UPDATE_20,
    /* 21 */ EC_UPDATE_CUCCO,
    /* 22 */ EC_UPDATE_CUCCO_LADY,
    /* 23 */ EC_UPDATE_POTION_SHOP_OWNER,
    /* 24 */ EC_UPDATE_MASK_SHOP_OWNER,
    /* 25 */ EC_UPDATE_FISHING_MAN,
    /* 26 */ EC_UPDATE_BOMBCHU_SHOP_OWNER,
    /* 27 */ EC_UPDATE_GORON,
    /* 28 */ EC_UPDATE_MALON
} DemoEcUpdateMode;

typedef enum {
    /* 00 */ EC_DRAW_COMMON,
    /* 01 */ EC_DRAW_INGO,
    /* 02 */ EC_DRAW_TALON,
    /* 03 */ EC_DRAW_WINDMILL_MAN,
    /* 04 */ EC_DRAW_KOKIRI_BOY,
    /* 05 */ EC_DRAW_KOKIRI_GIRL,
    /* 06 */ EC_DRAW_OLD_MAN,
    /* 07 */ EC_DRAW_BEARDED_MAN,
    /* 08 */ EC_DRAW_WOMAN,
    /* 09 */ EC_DRAW_OLD_WOMAN,
    /* 10 */ EC_DRAW_BOSS_CARPENTER,
    /* 11 */ EC_DRAW_CARPENTER,
    /* 12 */ EC_DRAW_GERUDO,
    /* 13 */ EC_DRAW_DANCING_ZORA,
    /* 14 */ EC_DRAW_KING_ZORA,
    /* 15 */ EC_DRAW_MIDO,
    /* 16 */ EC_DRAW_CUCCO,
    /* 17 */ EC_DRAW_CUCCO_LADY,
    /* 18 */ EC_DRAW_POTION_SHOP_OWNER,
    /* 19 */ EC_DRAW_MASK_SHOP_OWNER,
    /* 20 */ EC_DRAW_FISHING_MAN,
    /* 21 */ EC_DRAW_BOMBCHU_SHOP_OWNER,
    /* 22 */ EC_DRAW_GORON,
    /* 23 */ EC_DRAW_MALON
} DemoEcDrawconfig;

static s16 sDrawObjects[] = {
    OBJECT_IN,   OBJECT_TA,  OBJECT_FU,       OBJECT_KM1,      OBJECT_KW1,      OBJECT_BJI,      OBJECT_AHG,
    OBJECT_BOB,  OBJECT_BBA, OBJECT_TORYO,    OBJECT_DAIKU,    OBJECT_DAIKU,    OBJECT_DAIKU,    OBJECT_DAIKU,
    OBJECT_KM1,  OBJECT_KW1, OBJECT_GE1,      OBJECT_GE1,      OBJECT_GE1,      OBJECT_ZO,       OBJECT_KZ,
    OBJECT_MD,   OBJECT_NIW, OBJECT_NIW,      OBJECT_NIW,      OBJECT_ANE,      OBJECT_DS2,      OBJECT_OS,
    OBJECT_FISH, OBJECT_RS,  OBJECT_OF1D_MAP, OBJECT_OF1D_MAP, OBJECT_OF1D_MAP, OBJECT_OF1D_MAP, OBJECT_MA2,
};

static s16 sAnimationObjects[] = {
    OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC,  OBJECT_EC,
    OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC,  OBJECT_EC,
    OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC,  OBJECT_EC,
    OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_EC, OBJECT_GM, OBJECT_MA2,
};

// skeletons
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

// animations
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

// mouth textures
extern u8 D_06004350[];
extern u8 D_06007AC0[];
extern u8 D_06006920[];
extern u8 D_060004C8[];
extern u8 D_060035D8[];
extern u8 D_0600DE80[];
extern u8 D_06003770[];

// PostLimbDraw display lists
extern Gfx D_06005BD0[];
extern Gfx D_06005AC0[];
extern Gfx D_06005990[];
extern Gfx D_06005880[];
extern Gfx D_06009198[];
extern Gfx D_06009430[];
extern Gfx D_06009690[];
extern Gfx D_060074C8[];

void DemoEc_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DemoEc* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
}

void DemoEc_Init(Actor* thisx, GlobalContext* globalCtx) {
    DemoEc* this = THIS;

    if ((this->actor.params < 0) || (this->actor.params > 34)) {
        osSyncPrintf(VT_FGCOL(RED) "Demo_Ec_Actor_ct:arg_dataがおかしい!!!!!!!!!!!!\n" VT_RST);
        Actor_Kill(&this->actor);
    } else {
        this->updateMode = EC_UPDATE_COMMON;
        this->drawConfig = EC_DRAW_COMMON;
    }
}

s32 DemoEc_UpdateSkelAnime(DemoEc* this) {
    return SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

void DemoEc_UpdateBgFlags(DemoEc* this, GlobalContext* globalCtx) {
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

void DemoEc_UpdateEyes(DemoEc* this) {
    s32 pad[3];
    s16* blinkTimer = &this->blinkTimer;
    s16* eyeTexIndex = &this->eyeTexIndex;

    if (DECR(*blinkTimer) == 0) {
        *blinkTimer = Math_Rand_S16Offset(60, 60);
    }

    *eyeTexIndex = *blinkTimer;

    if (*eyeTexIndex >= 3) {
        *eyeTexIndex = 0;
    }
}

void DemoEc_SetEyeTexIndex(DemoEc* this, s16 texIndex) {
    this->eyeTexIndex = texIndex;
}

void DemoEc_InitSkelAnime(DemoEc* this, GlobalContext* globalCtx, FlexSkeletonHeader* skeletonHeader) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, SEGMENTED_TO_VIRTUAL(skeletonHeader), NULL, NULL, NULL, 0);
}

void DemoEc_ChangeAnimation(DemoEc* this, AnimationHeader* animation, u8 mode, f32 transitionRate, s32 reverse) {
    f32 frameCount;
    f32 startFrame;
    AnimationHeader* anim;
    f32 playbackSpeed;
    s16 frameCountS;

    anim = SEGMENTED_TO_VIRTUAL(animation);
    frameCountS = SkelAnime_GetFrameCount(anim);

    if (!reverse) {
        startFrame = 0.0f;
        frameCount = frameCountS;
        playbackSpeed = 1.0f;
    } else {
        frameCount = 0.0f;
        startFrame = frameCountS;
        playbackSpeed = -1.0f;
    }

    SkelAnime_ChangeAnim(&this->skelAnime, anim, playbackSpeed, startFrame, frameCount, mode, transitionRate);
}

Gfx* DemoEc_AllocColorDList(GraphicsContext* gfxCtx, u8* color) {
    Gfx* dList;

    dList = Graph_Alloc(gfxCtx, sizeof(Gfx) * 2);
    gDPSetEnvColor(dList, color[0], color[1], color[2], color[3]);
    gSPEndDisplayList(dList + 1);

    return dList;
}

void DemoEc_DrawSkeleton(DemoEc* this, GlobalContext* globalCtx, void* eyeTexture, void* arg3,
                         OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;
    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_demo_ec.c", 565);

    func_80093D18(gfxCtx);

    if (eyeTexture != 0) {
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTexture));
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeTexture));
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

void DemoEc_DrawSkeletonCustomColor(DemoEc* this, GlobalContext* globalCtx, Gfx* arg2, Gfx* arg3, u8* color1,
                                    u8* color2, OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw) {
    s32 pad;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;

    OPEN_DISPS(gfxCtx, "../z_demo_ec.c", 609);

    func_80093D18(gfxCtx);

    if (arg2 != 0) {
        gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(arg2));
    }

    if (arg3 != 0) {
        gSPSegment(POLY_OPA_DISP++, 0x0B, SEGMENTED_TO_VIRTUAL(arg3));
    }

    if (color1 != NULL) {
        //! @bug DemoEc_AllocColorDList is called twice in SEGMENTED_TO_VIRTUAL, allocating two display lists
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(DemoEc_AllocColorDList(gfxCtx, color1)));
    }

    if (color2 != NULL) {
        //! @bug DemoEc_AllocColorDList is called twice in SEGMENTED_TO_VIRTUAL, allocating two display lists
        //! @bug meant to pass color2 instead of color1?
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(DemoEc_AllocColorDList(gfxCtx, color1)));
    }

    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0x0C, &D_80116280[2]);
    POLY_OPA_DISP = SkelAnime_DrawFlex(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                                       overrideLimbDraw, postLimbDraw, &this->actor, POLY_OPA_DISP);

    CLOSE_DISPS(gfxCtx, "../z_demo_ec.c", 646);
}

void DemoEc_UseDrawObject(DemoEc* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s32 drawObjBankIndex = this->drawObjBankIndex;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_demo_ec.c", 662);

    gSPSegment(POLY_OPA_DISP++, 0x06, globalCtx->objectCtx.status[drawObjBankIndex].segment);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[drawObjBankIndex].segment);
    if (!globalCtx) {}

    CLOSE_DISPS(gfxCtx, "../z_demo_ec.c", 670);
}

void DemoEc_UseAnimationObject(DemoEc* this, GlobalContext* globalCtx) {
    s32 animObjBankIndex = this->animObjBankIndex;

    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[animObjBankIndex].segment);
}

CsCmdActorAction* DemoEc_GetNpcAction(GlobalContext* globalCtx, s32 actionIndex) {
    if (globalCtx->csCtx.state != 0) {
        return globalCtx->csCtx.npcActions[actionIndex];
    } else {
        return NULL;
    }
}

void DemoEc_SetNpcActionPosRot(DemoEc* this, GlobalContext* globalCtx, s32 actionIndex) {
    CsCmdActorAction* npcAction = DemoEc_GetNpcAction(globalCtx, actionIndex);

    if (npcAction != NULL) {
        this->actor.posRot.pos.x = npcAction->startPos.x;
        this->actor.posRot.pos.y = npcAction->startPos.y;
        this->actor.posRot.pos.z = npcAction->startPos.z;

        this->actor.posRot.rot.y = this->actor.shape.rot.y = npcAction->rot.y;
    }
}

void DemoEc_InitIngo(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_06013B88);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_060048F4, 0, 0.0f, false);
    func_8096D64C(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_INGO;
    this->drawConfig = EC_DRAW_INGO;
}

void DemoEc_UpdateIngo(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

void DemoEc_DrawIngo(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_DrawSkeleton(this, globalCtx, &D_06004390, &D_06004350, 0, 0);
}

void DemoEc_InitTalon(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_0600B7B8);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600BD38, 0, 0.0f, false);
    func_8096D64C(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_TALON;
    this->drawConfig = EC_DRAW_TALON;
}

void DemoEc_UpdateTalon(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

void DemoEc_DrawTalon(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_DrawSkeleton(this, globalCtx, &D_060076C0, &D_06007AC0, NULL, NULL);
}

void DemoEc_InitWindmillMan(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_06006C90);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600196C, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_WINDMILL_MAN;
    this->drawConfig = EC_DRAW_WINDMILL_MAN;
}

void DemoEc_UpdateWindmillMan(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

void DemoEc_DrawWindmillMan(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_DrawSkeleton(this, globalCtx, &D_06005F20, &D_06006920, NULL, NULL);
}

void DemoEc_InitKokiriBoy(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_060000F0);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06005670, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_KOKIRI_BOY;
    this->drawConfig = EC_DRAW_KOKIRI_BOY;
}

void DemoEc_InitDancingKokiriBoy(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_060000F0);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600513C, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_DANCING_KOKIRI_BOY;
    this->drawConfig = EC_DRAW_KOKIRI_BOY;
}

void DemoEc_UpdateKokiriBoy(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

void DemoEc_UpdateDancingKokiriBoy(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateKokiriBoy(this, globalCtx);
}

void DemoEc_DrawKokiriBoy(DemoEc* this, GlobalContext* globalCtx) {
    static u8 color1[] = { 0, 130, 70, 255 };
    static u8 color2[] = { 110, 170, 20, 255 };

    DemoEc_DrawSkeletonCustomColor(this, globalCtx, NULL, NULL, color1, color2, NULL, NULL);
}

void DemoEc_InitKokiriGirl(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_060000F0);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06005670, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_KOKIRI_GIRL;
    this->drawConfig = EC_DRAW_KOKIRI_GIRL;
}

void DemoEc_InitDancingKokiriGirl(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_060000F0);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600513C, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_DANCING_KOKIRI_GIRL;
    this->drawConfig = EC_DRAW_KOKIRI_GIRL;
}

void DemoEc_UpdateKokiriGirl(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

void DemoEc_UpdateDancingKokiriGirl(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateKokiriGirl(this, globalCtx);
}

void DemoEc_DrawKokiriGirl(DemoEc* this, GlobalContext* globalCtx) {
    static void* eyeTextures[] = { 0x06000F4C, 0x06001A0C, 0x06001E0C };
    static u8 color1[] = { 70, 190, 60, 255 };
    static u8 color2[] = { 100, 30, 0, 255 };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeletonCustomColor(this, globalCtx, eyeTexture, NULL, color1, color2, NULL, NULL);
}
void DemoEc_InitOldMan(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_060000F0);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06005EA8, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_OLD_MAN;
    this->drawConfig = EC_DRAW_OLD_MAN;
}

void DemoEc_UpdateOldMan(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

void DemoEc_DrawOldMan(DemoEc* this, GlobalContext* globalCtx) {
    static void* eyeTextures[] = { 0x060005FC, 0x060009FC, 0x06000DFC };
    static u8 color1[] = { 0, 50, 100, 255 };
    static u8 color2[] = { 0, 50, 160, 255 };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeletonCustomColor(this, globalCtx, eyeTexture, NULL, color1, color2, NULL, NULL);
}

void DemoEc_InitBeardedMan(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_060000F0);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06005EA8, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_BEARDED_MAN;
    this->drawConfig = EC_DRAW_BEARDED_MAN;
}

void DemoEc_UpdateBeardedMan(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

void DemoEc_DrawBeardedMan(DemoEc* this, GlobalContext* globalCtx) {
    static void* eyeTextures[] = { 0x0600057C, 0x0600067C, 0x0600077C };
    static u8 color1[] = { 255, 255, 255, 255 };
    static u8 color2[] = { 255, 255, 255, 255 };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeletonCustomColor(this, globalCtx, eyeTexture, NULL, color1, color2, NULL, NULL);
}

void DemoEc_InitWoman(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_060000F0);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06005EA8, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_WOMAN;
    this->drawConfig = EC_DRAW_WOMAN;
}

void DemoEc_UpdateWoman(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

void DemoEc_DrawWoman(DemoEc* this, GlobalContext* globalCtx) {
    static Gfx* eyeTextures[] = { 0x060007C8, 0x06000FC8, 0x060017C8 };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, globalCtx, eyeTexture, NULL, NULL, NULL);
}

void DemoEc_InitOldWoman(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_060000F0);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06005EA8, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_OLD_WOMAN;
    this->drawConfig = EC_DRAW_OLD_WOMAN;
}

void DemoEc_UpdateOldWoman(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

void DemoEc_DrawOldWoman(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_DrawSkeleton(this, globalCtx, &D_060004C8, NULL, NULL, NULL);
}

void DemoEc_InitBossCarpenter(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_06007150);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600164C, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_BOSS_CARPENTER;
    this->drawConfig = EC_DRAW_BOSS_CARPENTER;
}

void DemoEc_UpdateBossCarpenter(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

void DemoEc_DrawBossCarpenter(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_DrawSkeleton(this, globalCtx, NULL, NULL, NULL, NULL);
}

void DemoEc_InitCarpenter(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_06007958);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600164C, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_CARPENTER;
    this->drawConfig = EC_DRAW_CARPENTER;
}

void DemoEc_UpdateCarpenter(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

s32 DemoEc_CarpenterOverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                     void* thisx, Gfx** gfx) {
    DemoEc* this = THIS;

    if (limbIndex == 1) {
        gDPPipeSync((*gfx)++);
        switch (this->actor.params) {
            case 10:
                gDPSetEnvColor((*gfx)++, 170, 10, 70, 255);
                break;
            case 11:
                gDPSetEnvColor((*gfx)++, 170, 200, 255, 255);
                break;
            case 12:
                gDPSetEnvColor((*gfx)++, 0, 230, 70, 255);
                break;
            case 13:
                gDPSetEnvColor((*gfx)++, 200, 0, 150, 255);
                break;
        }
    }

    return 0;
}

Gfx* DemoEc_GetCarpenterPostLimbDList(DemoEc* this) {
    switch (this->actor.params) {
        case 10:
            return D_06005BD0;
        case 11:
            return D_06005AC0;
        case 12:
            return D_06005990;
        case 13:
            return D_06005880;
        default:
            osSyncPrintf(VT_FGCOL(RED) "かつらが無い!!!!!!!!!!!!!!!!\n" VT_RST);
            return 0;
    }
}

void DemoEc_CarpenterPostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx,
                                  Gfx** gfx) {
    DemoEc* this = THIS;
    Gfx* postLimbDList;

    if (limbIndex == 15) {
        postLimbDList = DemoEc_GetCarpenterPostLimbDList(this);
        gSPDisplayList((*gfx)++, SEGMENTED_TO_VIRTUAL(postLimbDList));
    }
}

void DemoEc_DrawCarpenter(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_DrawSkeleton(this, globalCtx, NULL, 0, DemoEc_CarpenterOverrideLimbDraw, DemoEc_CarpenterPostLimbDraw);
}

void DemoEc_InitGerudo(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_06000330);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06002254, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_GERUDO;
    this->drawConfig = EC_DRAW_GERUDO;
}

void DemoEc_UpdateGerudo(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

Gfx* DemoEc_GetGerudoPostLimbDList(DemoEc* this) {
    switch (this->actor.params) {
        case 16:
            return D_06009198;
        case 17:
            return D_06009430;
        case 18:
            return D_06009690;
        default:
            osSyncPrintf(VT_FGCOL(RED) "かつらが無い!!!!!!!!!!!!!!!!\n" VT_RST);
            return NULL;
    }
}

void DemoEc_GerudoPostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx,
                               Gfx** gfx) {
    DemoEc* this = THIS;
    Gfx* postLimbDList;

    if (limbIndex == 15) {
        postLimbDList = DemoEc_GetGerudoPostLimbDList(this);
        gSPDisplayList((*gfx)++, SEGMENTED_TO_VIRTUAL(postLimbDList));
    }
}

void DemoEc_DrawGerudo(DemoEc* this, GlobalContext* globalCtx) {
    static void* eyeTextures[] = { 0x06000708, 0x06000F08, 0x06001708 };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, globalCtx, eyeTexture, NULL, NULL, DemoEc_GerudoPostLimbDraw);
}

void DemoEc_InitDancingZora(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_0600BFA8);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600C918, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_DANCING_ZORA;
    this->drawConfig = EC_DRAW_DANCING_ZORA;
}

void DemoEc_UpdateDancingZora(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

void DemoEc_DrawDancingZora(DemoEc* this, GlobalContext* globalCtx) {
    static void* eyeTextures[] = { 0x06003E40, 0x06004640, 0x06004E40 };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, globalCtx, eyeTexture, NULL, NULL, NULL);
}

void DemoEc_InitKingZora(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_060086D0);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06006C40, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_KING_ZORA;
    this->drawConfig = EC_DRAW_KING_ZORA;
    DemoEc_SetEyeTexIndex(this, 3);
}

void func_8096F1D4(DemoEc* this) {
    f32 currentFrame = this->skelAnime.animCurrentFrame;

    if (currentFrame <= 32.0f) {
        DemoEc_SetEyeTexIndex(this, 3);
    } else {
        DemoEc_UpdateEyes(this);
    }
}

void func_8096F224(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06006930, 2, -8.0f, false);
    this->updateMode = EC_UPDATE_17;
}

void func_8096F26C(DemoEc* this, s32 arg1) {
    if (arg1 != 0) {
        DemoEc_ChangeAnimation(this, &D_06006220, 0, 0.0f, false);
        this->updateMode = EC_UPDATE_18;
    }
}

void func_8096F2B0(DemoEc* this, GlobalContext* globalCtx, s32 arg2) {
    CsCmdActorAction* npcAction;
    s32 sp18;

    npcAction = DemoEc_GetNpcAction(globalCtx, arg2);

    if (npcAction != NULL) {
        sp18 = npcAction->action;
        if ((sp18 != this->npcAction)) {
            if (this->npcAction) {}
            if (sp18 == 2) {
                func_8096F224(this, globalCtx);
            }
            this->npcAction = sp18;
        }
    }
}

void DemoEc_UpdateKingZora(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_SetNpcActionPosRot(this, globalCtx, 6);
    DemoEc_UpdateBgFlags(this, globalCtx);
    func_8096F2B0(this, globalCtx, 6);
}

void func_8096F378(DemoEc* this, GlobalContext* globalCtx) {
    s32 animDone = DemoEc_UpdateSkelAnime(this);

    func_8096D594(this, globalCtx);
    func_8096F1D4(this);
    DemoEc_UpdateBgFlags(this, globalCtx);
    func_8096F26C(this, animDone);
}

void func_8096F3D4(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

void DemoEc_DrawKingZora(DemoEc* this, GlobalContext* globalCtx) {
    static void* eyeTextures[] = { 0x06001470, 0x06001870, 0x06001C70, 0x06002070 };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, globalCtx, eyeTexture, NULL, NULL, NULL);
}

void DemoEc_InitMido(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_06007FB8);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_060095DC, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_MIDO;
    this->drawConfig = EC_DRAW_MIDO;
    DemoEc_SetEyeTexIndex(this, 3);
}

void func_8096F4FC(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06008D1C, 2, -8.0f, false);
    this->updateMode = EC_UPDATE_20;
}

void func_8096F544(DemoEc* this, s32 changeAnim) {
    if (changeAnim) {
        DemoEc_ChangeAnimation(this, &D_06009234, 0, 0.0f, false);
    }
}

void func_8096F578(DemoEc* this, GlobalContext* globalCtx, s32 arg2) {
    CsCmdActorAction* npcAction;
    s32 sp18;
    npcAction = DemoEc_GetNpcAction(globalCtx, arg2);
    if (npcAction != NULL) {
        sp18 = npcAction->action;
        if ((sp18 != this->npcAction)) {
            if (this->npcAction) {}
            if (sp18 == 2) {
                func_8096F4FC(this, globalCtx);
            }
            this->npcAction = sp18;
        }
    }
}

void DemoEc_UpdateMido(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_SetNpcActionPosRot(this, globalCtx, 7);
    DemoEc_UpdateBgFlags(this, globalCtx);
    func_8096F578(this, globalCtx, 7);
}

void func_8096F640(DemoEc* this, GlobalContext* globalCtx) {
    s32 animDone = DemoEc_UpdateSkelAnime(this);

    func_8096D594(this, globalCtx);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, globalCtx);
    func_8096F544(this, animDone);
}

void DemoEc_DrawMido(DemoEc* this, GlobalContext* globalCtx) {
    static void* eyeTextures[] = { 0x06004FF0, 0x06005930, 0x06005D30, 0x06006130 };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, globalCtx, eyeTexture, NULL, NULL, NULL);
}

void DemoEc_InitCucco(DemoEc* this, GlobalContext* globalCtx) {
    AnimationHeader* animation;

    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_06002530);
    DemoEc_UseAnimationObject(this, globalCtx);

    if (this->actor.params == 22) {
        animation = &D_06009BB4;
    } else if (this->actor.params == 23) {
        animation = &D_0600A07C;
    } else {
        animation = &D_0600A474;
    }

    DemoEc_ChangeAnimation(this, animation, 0, 0.0f, false);
    func_8096D64C(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_CUCCO;
    this->drawConfig = EC_DRAW_CUCCO;
}

void DemoEc_UpdateCucco(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

void DemoEc_DrawCucco(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_DrawSkeleton(this, globalCtx, NULL, NULL, NULL, NULL);
}

void DemoEc_InitCuccoLady(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_060000F0);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06000CD8, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_CUCCO_LADY;
    this->drawConfig = EC_DRAW_CUCCO_LADY;
}

void DemoEc_UpdateCuccoLady(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

void DemoEc_DrawCuccoLady(DemoEc* this, GlobalContext* globalCtx) {
    static void* eyeTextures[] = { 0x060008C8, 0x060010C8, 0x060018C8 };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, globalCtx, eyeTexture, NULL, NULL, NULL);
}

void DemoEc_InitPotionShopOwner(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_06004258);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600AFE0, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_POTION_SHOP_OWNER;
    this->drawConfig = EC_DRAW_POTION_SHOP_OWNER;
}

void DemoEc_UpdatePotionShopOwner(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

void DemoEc_DrawPotionShopOwner(DemoEc* this, GlobalContext* globalCtx) {
    static void* eyeTextures[] = { 0x060030D8, 0x060034D8, 0x060038D8 };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, globalCtx, eyeTexture, NULL, NULL, NULL);
}

void DemoEc_InitMaskShopOwner(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_06004658);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600AFE0, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_MASK_SHOP_OWNER;
    this->drawConfig = EC_DRAW_MASK_SHOP_OWNER;
}

void DemoEc_UpdateMaskShopOwner(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

void DemoEc_DrawMaskShopOwner(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_DrawSkeleton(this, globalCtx, &D_060035D8, NULL, NULL, NULL);
}

void DemoEc_InitFishingMan(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_060085F8);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600AFE0, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_FISHING_MAN;
    this->drawConfig = EC_DRAW_FISHING_MAN;
}

void DemoEc_UpdateFishingMan(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

void DemoEc_FishingManPostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx,
                                   Gfx** gfx) {
    DemoEc* this = THIS;

    if ((limbIndex == 8) && !(gSaveContext.unk_EC0 & 0x1000)) {
        gSPDisplayList((*gfx)++, SEGMENTED_TO_VIRTUAL(D_060074C8));
    }
}

void DemoEc_DrawFishingMan(DemoEc* this, GlobalContext* globalCtx) {
    static void* eyeTextures[] = { 0x06009250, 0x06009650, 0x06009A50 };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, globalCtx, eyeTexture, NULL, NULL, DemoEc_FishingManPostLimbDraw);
}

void DemoEc_InitBombchuShopOwner(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_06004868);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_0600AFE0, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_BOMBCHU_SHOP_OWNER;
    this->drawConfig = EC_DRAW_BOMBCHU_SHOP_OWNER;
}

void DempEc_UpdateBombchuShopOwner(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, globalCtx);
}
void DemoEc_DrawBombchuShopOwner(DemoEc* this, GlobalContext* globalCtx) {
    static void* eyeTextures[] = { 0x06003968, 0x06003D68, 0x06004168 };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, globalCtx, eyeTexture, NULL, NULL, NULL);
}

void DemoEc_InitGorons(DemoEc* this, GlobalContext* globalCtx) {
    s32 pad[2];
    AnimationHeader* animation;
    f32 goronScale;
    Vec3f* scale = &this->actor.scale;

    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_0600FEF0);
    DemoEc_UseAnimationObject(this, globalCtx);

    if (this->actor.params == 30) {
        animation = &D_06002FA0;
        goronScale = 1.0f;
    } else if (this->actor.params == 31) {
        animation = &D_06003A98;
        goronScale = 1.0f;
    } else if (this->actor.params == 32) {
        animation = &D_06002FA0;
        goronScale = 15.0f;
    } else {
        goronScale = 5.0f;
        animation = &D_060002B8;
    }

    DemoEc_ChangeAnimation(this, animation, 0, 0.0f, false);

    scale->x *= goronScale;
    scale->y *= goronScale;
    scale->z *= goronScale;

    func_8096D64C(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_GORON;
    this->drawConfig = EC_DRAW_GORON;
}

void DemoEc_UpdateGorons(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

void DemoEc_DrawGorons(DemoEc* this, GlobalContext* globalCtx) {
    static void* eyeTextures[] = { 0x0600CE80, 0x0600D280, 0x0600D680 };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, globalCtx, eyeTexture, &D_0600DE80, NULL, NULL);
}

void DemoEc_InitMalon(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UseDrawObject(this, globalCtx);
    DemoEc_InitSkelAnime(this, globalCtx, &D_06008D90);
    DemoEc_UseAnimationObject(this, globalCtx);
    DemoEc_ChangeAnimation(this, &D_06009EE0, 0, 0.0f, false);
    func_8096D5D4(this, globalCtx);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->updateMode = EC_UPDATE_MALON;
    this->drawConfig = EC_DRAW_MALON;
}

void DemoEc_UpdateMalon(DemoEc* this, GlobalContext* globalCtx) {
    DemoEc_UpdateSkelAnime(this);
    func_8096D594(this, globalCtx);
    DemoEc_UpdateEyes(this);
    DemoEc_UpdateBgFlags(this, globalCtx);
}

void DemoEc_DrawMalon(DemoEc* this, GlobalContext* globalCtx) {
    static void* eyeTextures[] = { 0x06002570, 0x06002C70, 0x06003070 };
    s32 eyeTexIndex = this->eyeTexIndex;
    void* eyeTexture = eyeTextures[eyeTexIndex];

    DemoEc_DrawSkeleton(this, globalCtx, eyeTexture, &D_06003770, NULL, NULL);
}

static DemoEcInitFunc sInitFuncs[] = {
    DemoEc_InitIngo,
    DemoEc_InitTalon,
    DemoEc_InitWindmillMan,
    DemoEc_InitKokiriBoy,
    DemoEc_InitKokiriGirl,
    DemoEc_InitOldMan,
    DemoEc_InitBeardedMan,
    DemoEc_InitWoman,
    DemoEc_InitOldWoman,
    DemoEc_InitBossCarpenter,
    DemoEc_InitCarpenter,
    DemoEc_InitCarpenter,
    DemoEc_InitCarpenter,
    DemoEc_InitCarpenter,
    DemoEc_InitDancingKokiriBoy,
    DemoEc_InitDancingKokiriGirl,
    DemoEc_InitGerudo,
    DemoEc_InitGerudo,
    DemoEc_InitGerudo,
    DemoEc_InitDancingZora,
    DemoEc_InitKingZora,
    DemoEc_InitMido,
    DemoEc_InitCucco,
    DemoEc_InitCucco,
    DemoEc_InitCucco,
    DemoEc_InitCuccoLady,
    DemoEc_InitPotionShopOwner,
    DemoEc_InitMaskShopOwner,
    DemoEc_InitFishingMan,
    DemoEc_InitBombchuShopOwner,
    DemoEc_InitGorons,
    DemoEc_InitGorons,
    DemoEc_InitGorons,
    DemoEc_InitGorons,
    DemoEc_InitMalon,
};

void DemoEc_InitNpc(DemoEc* this, GlobalContext* globalCtx) {
    s16 type = this->actor.params;

    if (sInitFuncs[type] == NULL) {
        // Demo_Ec_main_init: Initialization process is wrong arg_data
        osSyncPrintf(VT_FGCOL(RED) " Demo_Ec_main_init:初期化処理がおかしいarg_data = %d!\n" VT_RST, type);
        Actor_Kill(&this->actor);
        return;
    }

    sInitFuncs[type](this, globalCtx);
}

void DemoEc_InitCommon(DemoEc* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 primary;
    s32 type;
    s16 pad2;
    s16 sp28;
    s32 primaryBankIndex;
    s32 secondaryBankIndex;

    type = this->actor.params;
    primary = sDrawObjects[type];
    sp28 = sAnimationObjects[type];
    primaryBankIndex = Object_GetIndex(&globalCtx->objectCtx, primary);
    secondaryBankIndex = Object_GetIndex(&globalCtx->objectCtx, sp28);

    if ((secondaryBankIndex < 0) || (primaryBankIndex < 0)) {
        // Demo_Ec_main_bank: Bank unreadable arg_data =%
        osSyncPrintf(VT_FGCOL(RED) "Demo_Ec_main_bank:バンクを読めない arg_data = %d!\n" VT_RST, type);
        Actor_Kill(&this->actor);
        return;
    }

    if (Object_IsLoaded(&globalCtx->objectCtx, primaryBankIndex) &&
        Object_IsLoaded(&globalCtx->objectCtx, secondaryBankIndex)) {

        this->drawObjBankIndex = primaryBankIndex;
        this->animObjBankIndex = secondaryBankIndex;

        DemoEc_InitNpc(this, globalCtx);
    }
}

static DemoEcUpdateFunc sUpdateFuncs[] = {
    DemoEc_InitCommon,
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
    DemoEc_UpdateFishingMan,
    DempEc_UpdateBombchuShopOwner,
    DemoEc_UpdateGorons,
    DemoEc_UpdateMalon,
};

void DemoEc_Update(Actor* thisx, GlobalContext* globalCtx) {
    DemoEc* this = THIS;
    s32 updateMode = this->updateMode;

    if ((updateMode < 0) || (updateMode >= ARRAY_COUNT(sUpdateFuncs)) || sUpdateFuncs[updateMode] == NULL) {
        // The main mode is strange !!!!!!!!!!!!!!!!!!!!!!!!!
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        if (updateMode != EC_UPDATE_COMMON) {
            DemoEc_UseAnimationObject(this, globalCtx);
        }
        sUpdateFuncs[updateMode](this, globalCtx);
    }
}

void DemoEc_DrawCommon(DemoEc* this, GlobalContext* globalCtx) {
}

static DemoEcDrawFunc sDrawFuncs[] = {
    DemoEc_DrawCommon,          DemoEc_DrawIngo,
    DemoEc_DrawTalon,           DemoEc_DrawWindmillMan,
    DemoEc_DrawKokiriBoy,       DemoEc_DrawKokiriGirl,
    DemoEc_DrawOldMan,          DemoEc_DrawBeardedMan,
    DemoEc_DrawWoman,           DemoEc_DrawOldWoman,
    DemoEc_DrawBossCarpenter,   DemoEc_DrawCarpenter,
    DemoEc_DrawGerudo,          DemoEc_DrawDancingZora,
    DemoEc_DrawKingZora,        DemoEc_DrawMido,
    DemoEc_DrawCucco,           DemoEc_DrawCuccoLady,
    DemoEc_DrawPotionShopOwner, DemoEc_DrawMaskShopOwner,
    DemoEc_DrawFishingMan,      DemoEc_DrawBombchuShopOwner,
    DemoEc_DrawGorons,          DemoEc_DrawMalon,
};

void DemoEc_Draw(Actor* thisx, GlobalContext* globalCtx) {
    DemoEc* this = THIS;
    s32 drawConfig = this->drawConfig;

    if ((drawConfig < 0) || (drawConfig >= ARRAY_COUNT(sDrawFuncs)) || sDrawFuncs[drawConfig] == NULL) {
        // The main mode is strange !!!!!!!!!!!!!!!!!!!!!!!!!
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        if (drawConfig != EC_DRAW_COMMON) {
            DemoEc_UseDrawObject(this, globalCtx);
        }
        sDrawFuncs[drawConfig](this, globalCtx);
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
