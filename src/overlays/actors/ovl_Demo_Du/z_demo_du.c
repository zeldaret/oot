#include "z_demo_du.h"
#include "vt.h"

#define FLAGS 0x00000010

#define THIS ((DemoDu*)thisx)

void DemoDu_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoDu_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoDu_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoDu_Draw(Actor* thisx, GlobalContext* globalCtx);

extern AnimationHeader D_06000800;
extern AnimationHeader D_06000D00;
extern AnimationHeader D_06001D70;
extern AnimationHeader D_06002374;
extern AnimationHeader D_0600288C;
extern UNK_TYPE D_06005458;
extern UNK_TYPE D_06006104;
extern AnimationHeader D_060067CC;
extern AnimationHeader D_06006EB0;
extern Gfx D_06007FC0;
extern FlexSkeletonHeader D_06011CA8;
extern AnimationHeader D_06012014;



static s32 sUnused = 0;

#include "z_demo_du_cutscene_data.c" EARLY

static Gfx* sEyeTextures[] = {0x06008080, 0x06008480, 0x06008880, 0x0600A540};

static Gfx* D_8096CE84[] = {0x06008C80, 0x06009D40, 0x0600A940, 0x0600B180};

/*
glabel D_8096CE94
 .word 0x00000000
*/
//extern UNK_TYPE D_8096CE94;
//extern s32 D_8096CE94;
static s32 D_8096CE94 = 0;

/*
glabel D_8096CE98
 .word 0x00000000, 0x00000000, 0x00000000
*/
//extern UNK_TYPE D_8096CE98[];
//extern Vec3f D_8096CE98;
static Vec3f D_8096CE98 = {0.0f, 0.0f, 0.0f};

/*
glabel D_8096CEA4
 .word 0x00000000, 0x3E99999A, 0x00000000
*/
//extern UNK_TYPE D_8096CEA4[];
//extern Vec3f D_8096CEA4;
static Vec3f D_8096CEA4 = {0.0f, 0.3f, 0.0f};

/*
glabel D_8096CEB0
 .word 0xBE966EFF
*/
//extern UNK_TYPE D_8096CEB0;
/*
glabel D_8096CEB0
 190, 150, 110, 255
*/
//extern Color_RGBA8 D_8096CEB0;
static Color_RGBA8 D_8096CEB0 = {190, 150, 110, 255};

/*
glabel D_8096CEB4
 .word 0x785028FF
*/
//extern UNK_TYPE D_8096CEB4;
/*
glabel D_8096CEB4
 120, 80, 40, 255
*/
//extern Color_RGBA8 D_8096CEB4;
static Color_RGBA8 D_8096CEB4 = {120, 80, 40, 255};

/*
glabel D_8096CEB8
 .word 
 0x41300000, 0xC1300000, 0xC0C00000, 
 0x00000000, 0x41600000, 0xC1500000, 
 0x41600000, 0xC0000000, 0xC1200000, 
 0x41200000, 0xC0C00000, 0xC1000000
*/
//extern UNK_TYPE D_8096CEB8[];
/*
glabel D_8096CEB8
 .word 
 11.0f, -11.0f, -6.0f, 
 0.0f, 14.0f, -13.0f, 
 14.0f, -2.0f, -10.0f, 
 10.0f, -6.0f, -8.0f
*/
//extern f32 D_8096CEB8[];
static Vec3f D_8096CEB8[] = {
 { 11.0f, -11.0f,  -6.0f },
 {  0.0f,  14.0f, -13.0f },
 { 14.0f,  -2.0f, -10.0f },
 { 10.0f,  -6.0f,  -8.0f }
};

/*
glabel D_8096CEE8
 .word 
 0x41000000, 0x40C00000, 0x41000000,
 0x41500000, 0x41000000, 0xC1200000, 
 0xC1600000, 0x3F800000, 0xC1600000, 
 0x40A00000, 0x41400000, 0xC1100000, 
 0x41300000, 0x40C00000, 0xC0E00000, 
 0x41600000, 0x41600000, 0xC1600000
*/
//extern UNK_TYPE D_8096CEE8[];
/*
glabel D_8096CEE8
 .word 
 8.0f, 6.0f, 8.0f,
 13.0f, 8.0f, -10.0f, 
 -14.0f, 1.0f, -14.0f, 
 5.0f, 12.0f, -9.0f, 
 11.0f, 6.0f, -7.0f, 
 14.0f, 14.0f, -14.0f
*/
//extern Vec3f D_8096CEE8[6];
//extern f32 D_8096CEE8[];
static Vec3f D_8096CEE8[] = {
 {   8.0f,  6.0f,   8.0f },
 {  13.0f,  8.0f, -10.0f },
 { -14.0f,  1.0f, -14.0f },
 {   5.0f, 12.0f,  -9.0f },
 {  11.0f,  6.0f,  -7.0f },
 {  14.0f, 14.0f, -14.0f },
};


typedef void (*DemoDuActionFunc)(DemoDu*, GlobalContext*);

void func_8096A224(DemoDu* this, GlobalContext* globalCtx);
void func_8096A244(DemoDu* this, GlobalContext* globalCtx);
void func_8096A264(DemoDu* this, GlobalContext* globalCtx);
void func_8096A294(DemoDu* this, GlobalContext* globalCtx);
void func_8096A2CC(DemoDu* this, GlobalContext* globalCtx);
void func_8096A300(DemoDu* this, GlobalContext* globalCtx);
void func_8096A338(DemoDu* this, GlobalContext* globalCtx);
void func_8096AFFC(DemoDu* this, GlobalContext* globalCtx);
void func_8096B030(DemoDu* this, GlobalContext* globalCtx);
void func_8096B06C(DemoDu* this, GlobalContext* globalCtx);
void func_8096B0C0(DemoDu* this, GlobalContext* globalCtx);
void func_8096B0F8(DemoDu* this, GlobalContext* globalCtx);
void func_8096B140(DemoDu* this, GlobalContext* globalCtx);
void func_8096B184(DemoDu* this, GlobalContext* globalCtx);
void func_8096B1DC(DemoDu* this, GlobalContext* globalCtx);
void func_8096B220(DemoDu* this, GlobalContext* globalCtx);
void func_8096B27C(DemoDu* this, GlobalContext* globalCtx);
void func_8096B2D4(DemoDu* this, GlobalContext* globalCtx);
void func_8096B318(DemoDu* this, GlobalContext* globalCtx);
void func_8096B360(DemoDu* this, GlobalContext* globalCtx);
void func_8096B3A4(DemoDu* this, GlobalContext* globalCtx);
void func_8096B768(DemoDu* this, GlobalContext* globalCtx);
void func_8096B798(DemoDu* this, GlobalContext* globalCtx);
void func_8096B7EC(DemoDu* this, GlobalContext* globalCtx);
void func_8096BD2C(DemoDu* this, GlobalContext* globalCtx);
void func_8096BD4C(DemoDu* this, GlobalContext* globalCtx);
void func_8096BD94(DemoDu* this, GlobalContext* globalCtx);
void func_8096BDD4(DemoDu* this, GlobalContext* globalCtx);
void func_8096BE14(DemoDu* this, GlobalContext* globalCtx);

static DemoDuActionFunc sUpdateFuncs[] = {
    func_8096A224, func_8096A244, func_8096A264, func_8096A294, func_8096A2CC, 
    func_8096A300, func_8096A338, func_8096AFFC, func_8096B030, func_8096B06C, 
    func_8096B0C0, func_8096B0F8, func_8096B140, func_8096B184, func_8096B1DC, 
    func_8096B220, func_8096B27C, func_8096B2D4, func_8096B318, func_8096B360, 
    func_8096B3A4, func_8096B768, func_8096B798, func_8096B7EC, func_8096BD2C, 
    func_8096BD4C, func_8096BD94, func_8096BDD4, func_8096BE14
};


typedef void (*DemoDuDrawFunc)(Actor*, GlobalContext*);

void func_8096BF54(Actor* thisx, GlobalContext* globalCtx2);
void func_8096BF60(Actor* thisx, GlobalContext* globalCtx2);
void func_8096B840(Actor* thisx, GlobalContext* globalCtx2);

static DemoDuDrawFunc sDrawFuncs[] = {
    func_8096BF54, func_8096BF60, func_8096B840
};


const ActorInit Demo_Du_InitVars = {
    ACTOR_DEMO_DU,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_DU,
    sizeof(DemoDu),
    (ActorFunc)DemoDu_Init,
    (ActorFunc)DemoDu_Destroy,
    (ActorFunc)DemoDu_Update,
    (ActorFunc)DemoDu_Draw,
};


void DemoDu_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DemoDu* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
}

void DemoDu_UpdateEyes(DemoDu* this) {
    s16* blinkTimer = &this->blinkTimer;
    s16* eyeTexIndex = &this->eyeTexIndex;
    s32 pad[3];

    if (DECR(*blinkTimer) == 0) {
        *blinkTimer = Rand_S16Offset(60, 60);
    }

    *eyeTexIndex = *blinkTimer;
    if (*eyeTexIndex >= 3) {
        *eyeTexIndex = 0;
    }
}

void DemoDu_SetEyeTexIndex(DemoDu* this, s16 eyeTexIndex) {
    this->eyeTexIndex = eyeTexIndex;
}

void func_80969B8C(DemoDu* this, s16 unk_194) {
    this->unk_194 = unk_194;
}

void func_80969BA0(DemoDu* this) {
    this->updateIndex = 21;
    this->drawIndex = 0;
    this->unk_1A8 = 0;
    this->unk_1AC = 0;
    this->actor.shape.shadowAlpha = 0;
    this->unk_1A4 = 0.0f;
}

void func_80969BC4(DemoDu* this, GlobalContext* globalCtx);
/*
void func_80969BC4(DemoDu* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.state == 0) {
        if (D_8096CE94 != 0) {
            if (this->actor.params == 2) {
                func_80969BA0(this);
            }
            D_8096CE94 = 0;
            return;
        }
    } else if (D_8096CE94 == 0) {
        D_8096CE94 = 1;
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969BC4.s")

s32 func_80969C38(DemoDu* this) {
    return SkelAnime_Update(&this->skelAnime);
}

void func_80969C58(DemoDu* this, GlobalContext* globalCtx) {
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f, 5);
}

CsCmdActorAction* func_80969CA0(GlobalContext* globalCtx, s32 arg1) {
    if (globalCtx->csCtx.state != 0) {
        return globalCtx->csCtx.npcActions[arg1];
    }
    return NULL;
}

s32 func_80969CC4(DemoDu* this, GlobalContext* globalCtx, u16 actionId, s32 arg3) {
    CsCmdActorAction *npcAction;

    npcAction = func_80969CA0(globalCtx, arg3);
    if ((npcAction != NULL) && (npcAction->action == actionId)) {
        return 1;
    }
    return 0;
}

s32 func_80969D10(DemoDu* this, GlobalContext* globalCtx, s32 arg2, s32 arg3);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969D10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969D5C.s")

void func_80969DDC(DemoDu *this, AnimationHeader *animation, u8 mode, f32 morphFrames, s32 arg4) {
    f32 startFrame;
    s16 lastFrame;
    f32 endFrame;
    f32 playSpeed;

    lastFrame = Animation_GetLastFrame(animation);
    if (arg4 == 0) {
        startFrame = 0.0f;
        endFrame = lastFrame;
        playSpeed = 1.0f;
    } else {
        endFrame = 0.0f;
        playSpeed = -1.0f;
        startFrame = lastFrame;
    }
    Animation_Change(&this->skelAnime, animation, playSpeed, startFrame, endFrame, mode, morphFrames);
}

void func_80969E6C(DemoDu* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06011CA8, &D_06006EB0, NULL, NULL, 0);
    this->actor.shape.yOffset = -10000.0f;
    DemoDu_SetEyeTexIndex(this, 1);
    func_80969B8C(this, 3);
}

void func_80969EDC();
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969EDC.s")

void func_80969F38();
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969F38.s")

void func_80969FB4(DemoDu* this, GlobalContext* globalCtx) {
    this->actor.shape.yOffset = this->actor.shape.yOffset + (250.0f/3.0f);
}

void func_80969FD0(DemoDu* this, GlobalContext* globalCtx2) {
    s32 pad;
    GlobalContext* globalCtx = globalCtx2;
    Player* player;
    s16 rotY;

    if ((gSaveContext.chamberCutsceneNum == 1) && (gSaveContext.sceneSetupIndex < 4)) {
        player = PLAYER;

        this->updateIndex = 1;
        globalCtx->csCtx.segment = (void *) D_8096C1A4;
        gSaveContext.cutsceneTrigger = 2;
        Item_Give(globalCtx, ITEM_MEDALLION_FIRE);

        rotY = this->actor.world.rot.y + 0x8000;
        player->actor.shape.rot.y = rotY;
        player->actor.world.rot.y = rotY;
    }
}

void func_8096A05C(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[2];
        if ((npcAction != NULL) && (npcAction->action != 1)) {
            this->updateIndex = 2;
            this->drawIndex = 1;
            func_80969EDC();
        }
    }
}

void func_8096A0AC(DemoDu *this) {
    if (this->actor.shape.yOffset >= 0.0f) {
        this->updateIndex = 3;
        this->actor.shape.yOffset = 0.0f;
    }
}

void func_8096A0D8(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[2];
        if ((npcAction != NULL) && (npcAction->action != 2)) {
            Animation_Change(&this->skelAnime, &D_06000800, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000800), 2, 0.0f);
            this->updateIndex = 4;
        }
    }
}

void func_8096A16C(DemoDu *this, s32 arg1) {
    if (arg1) {
        Animation_Change(&this->skelAnime, &D_06000D00, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000D00), 0, 0.0f);
        this->updateIndex = 5;
    }
}

void func_8096A1D8(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *temp_v0;

    if (globalCtx->csCtx.state != 0) {
        temp_v0 = globalCtx->csCtx.npcActions[6];
        if ((temp_v0 != 0) && (temp_v0->action == 2)) {
            this->updateIndex = 6;
            func_80969F38();
        }
    }
}

void func_8096A224(DemoDu *this, GlobalContext *globalCtx) {
    func_80969FD0(this, globalCtx);
}

void func_8096A244(DemoDu *this, GlobalContext *globalCtx) {
    func_8096A05C(this, globalCtx);
}

void func_8096A264(DemoDu *this, GlobalContext *globalCtx) {
    func_80969FB4(this, globalCtx);
    func_80969C38(this);
    func_8096A0AC(this);
}

void func_8096A294(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    func_8096A0D8(this, globalCtx);
}

void func_8096A2CC(DemoDu *this, GlobalContext *globalCtx) {
    s32 aux;

    func_80969C58(this, globalCtx);
    aux = func_80969C38(this);
    func_8096A16C(this, aux);
}

void func_8096A300(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    func_8096A1D8(this, globalCtx);
}

void func_8096A338(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
}

void func_8096A360(DemoDu* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06011CA8, NULL, NULL, NULL, 0);
    this->updateIndex = 7;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A3B4.s")

void func_8096A3D8(GlobalContext *globalCtx);
void func_8096A3D8(GlobalContext *globalCtx) {
    if (globalCtx->csCtx.frames == 160) {
        func_800788CC(NA_SE_EV_OBJECT_FALL);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A408.s")

void func_8096A45C(DemoDu *this) {
    func_80078914(&this->actor.projectedPos, NA_SE_EN_DARUNIA_HIT_BREAST - SFX_FLAG);
}

void func_8096A480(GlobalContext *globalCtx) {
    Player* player;

    if (globalCtx->csCtx.frames == 0x578) {
        player = PLAYER;
        Audio_PlaySoundGeneral(NA_SE_VO_LI_FALL_L_KID, &player->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

void func_8096A4D4(GlobalContext *globalCtx) {
    Player* player;

    if (globalCtx->csCtx.frames == 0xAE) {
        player = PLAYER;
        Audio_PlaySoundGeneral(NA_SE_VO_LI_SURPRISE_KID, &player->actor.projectedPos, 4U, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

void func_8096A528(DemoDu *this, GlobalContext *globalCtx);
#ifdef NON_MATCHING
void func_8096A528(DemoDu *this, GlobalContext *globalCtx) {
    if (globalCtx->csCtx.frames < 0x104) {
        DemoDu_UpdateEyes(this);
        func_80969B8C(this, 0);
    } else if (globalCtx->csCtx.frames < 0x14F) {
        DemoDu_UpdateEyes(this);
        func_80969B8C(this, 3);
    } else if (globalCtx->csCtx.frames < 0x16D) {
        DemoDu_SetEyeTexIndex(this, 3);
        func_80969B8C(this, 1);
    } else if (globalCtx->csCtx.frames < 0x18B) {
        DemoDu_SetEyeTexIndex(this, 0);
        func_80969B8C(this, 3);
    } else if (globalCtx->csCtx.frames < 0x19A) {
        DemoDu_UpdateEyes(this);
        func_80969B8C(this, 0);
    } else {
        DemoDu_UpdateEyes(this);
        func_80969B8C(this, 3);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A528.s")
#endif

void func_8096A630();
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A630.s")

void func_8096A6E0(DemoDu* this, GlobalContext* globalCtx);
// maybe when i import the data this will be fixed, hopefully...
/*
void func_8096A6E0(DemoDu* this, GlobalContext* globalCtx2) {
    SkelAnime* skelAnime = &this->skelAnime;
    GlobalContext* globalCtx = globalCtx2;
    Vec3f spA4;
    //s32 pad2[2];
    //s32 pad3;
    //s32 pad2[1];
    //s32 pad;
    Vec3f* temp_s1;// = &player->bodyPartsPos[0x0B];
    //s32 pad;
    
    s32 temp_v0;
    Color_RGBA8 sp98;
    Color_RGBA8 sp9C;
    f32* phi_s0;
    Vec3f sp88;
    //Player* player;// = PLAYER;
    Vec3f spB0;

    if ((Animation_OnFrame(skelAnime, 31.0f)) || (Animation_OnFrame(skelAnime, 41.0f))) {
        temp_s1 = &PLAYER->bodyPartsPos[0x0B];

        spB0 = D_8096CE98;
        spA4 = D_8096CEA4;
            phi_s0 = D_8096CEE8;

        do {
        //for (; phi_s0 >= (f32*) &D_8096CEB8; phi_s0 -= 3) {
        loop_3: 
            sp9C = D_8096CEB0;
                *(s32*)0 = 0;
            sp98 = D_8096CEB4; 


            if (Animation_OnFrame(skelAnime, 31.0f)) {
                sp88.x = phi_s0[5*3] + temp_s1->x;
                sp88.y = phi_s0[5*3+1] + temp_s1->y;
                sp88.z = phi_s0[5*3+2] + temp_s1->z;
            } else {
                sp88.x = phi_s0[0] + temp_s1->x;
                sp88.y = phi_s0[0+1] + temp_s1->y;
                sp88.z = phi_s0[0+2] + temp_s1->z;
            }

            temp_v0 = (s32) ((Rand_ZeroOne() * 20.0f) - 10.0f);

            sp9C.r += temp_v0;
            sp9C.g += temp_v0;
            sp9C.b += temp_v0;
            sp98.r += temp_v0;
            sp98.g += temp_v0;
            sp98.b += temp_v0;
            
            func_8002829C(
                globalCtx, 
                &sp88, 
                &spB0, 
                &spA4, 
                &sp9C, 
                &sp98, 
                (s32) ((Rand_ZeroOne() * 40.0f) + 200.0f), 
                0
                );
                

            //D_8096CEE8--;
            phi_s0 -= 3;


        } while (phi_s0 >= D_8096CEB8);

        func_8096A408(globalCtx);
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A6E0.s")

void func_8096A970(DemoDu *this, GlobalContext *globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    CutsceneContext* csCtx = &globalCtx->csCtx;
    CsCmdActorAction* npcAction;
    Vec3f startPos;
    Vec3f endPos;
    Vec3f* pos = &this->actor.world.pos;
    f32 temp_f0;

    if (csCtx->state != 0) {
        npcAction = csCtx->npcActions[2];
        if (npcAction != NULL) {
            temp_f0 = func_8006F93C(npcAction->endFrame, npcAction->startFrame, csCtx->frames);

            startPos.x = npcAction->startPos.x;
            startPos.y = npcAction->startPos.y;
            startPos.z = npcAction->startPos.z;

            endPos.x = npcAction->endPos.x;
            endPos.y = npcAction->endPos.y;
            endPos.z = npcAction->endPos.z;

            pos->x = ((endPos.x - startPos.x) * temp_f0) + startPos.x;
            pos->y = ((endPos.y - startPos.y) * temp_f0) + startPos.y;
            pos->z = ((endPos.z - startPos.z) * temp_f0) + startPos.z;
        }
    }
}

void func_8096AA4C(DemoDu *this, GlobalContext *globalCtx) {
    this->updateIndex = 8;
}

void func_8096AA5C(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[2];
        if ((npcAction != NULL) && (npcAction->action != 1)) {
            Animation_Change(&this->skelAnime, &D_0600288C, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600288C), 2, 0.0f);
            this->updateIndex = 9;
            this->drawIndex = 1;
            func_8096A970(this, globalCtx);
        }
    }
}

void func_8096AB00(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *npcAction;
    CutsceneContext *csCtx = &globalCtx->csCtx;

    if (csCtx->state != 0) {
        npcAction = csCtx->npcActions[2];
        if ((npcAction != NULL) && (csCtx->frames >= npcAction->endFrame)) {
            this->updateIndex = 0xA;
            func_8096A630();
        }
    }
}

void func_8096AB54(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[2];
        if ((npcAction != NULL) && (npcAction->action != 2)) {
            this->updateIndex = 11;
        }
    }
}

void func_8096AB8C(DemoDu *this, s32 arg1) {
    if (arg1) {
        Animation_Change(&this->skelAnime, &D_06006EB0, 1.0f, 0.0f, Animation_GetLastFrame(&D_06006EB0), 0, 0.0f);
        this->updateIndex = 12;
    }
}

void func_8096ABF8(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[2];
        if ((npcAction != NULL) && (npcAction->action != 3)) {
            Animation_Change(&this->skelAnime, &D_06002374, 1.0f, 0.0f, Animation_GetLastFrame(&D_06002374), 2, -4.0f);
            this->updateIndex = 13;
        }
    }
}

void func_8096AC90(DemoDu *this, s32 arg1) {
    if (arg1) {
        Animation_Change(&this->skelAnime, &D_06006EB0, 1.0f, 0.0f, Animation_GetLastFrame(&D_06006EB0), 0, 0.0f);
        this->updateIndex = 14;
    }
}

void func_8096ACFC(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[2];
        if ((npcAction != NULL) && (npcAction->action != 4)) {
            Animation_Change(&this->skelAnime, &D_06001D70, 1.0f, 0.0f, Animation_GetLastFrame(&D_06001D70), 2, 0.0f);
            this->updateIndex = 15;
        }
    }
}

void func_8096AD90(DemoDu *this, s32 arg1) {
    if (arg1) {
        Animation_Change(&this->skelAnime, &D_06002374, 1.0f, 0.0f, Animation_GetLastFrame(&D_06002374), 2, 0.0f);
        this->updateIndex = 16;
    }
}

void func_8096AE00(DemoDu *this, s32 arg1) {
    if (arg1 != 0) {
        Animation_Change(&this->skelAnime, &D_06006EB0, 1.0f, 0.0f, Animation_GetLastFrame(&D_06006EB0), 0, 0.0f);
        this->updateIndex = 17;
    }
}

void func_8096AE6C(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[2];
        if ((npcAction != NULL) && (npcAction->action != 5)) {
            Animation_Change(&this->skelAnime, &D_06000800, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000800), 2, 0.0f);
            this->updateIndex = 18;
        }
    }
}

void func_8096AF00(DemoDu *this, s32 arg1) {
    if (arg1) {
        Animation_Change(&this->skelAnime, &D_06000D00, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000D00), 0, 0.0f);
        this->updateIndex = 19;
    }
}

void func_8096AF6C(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[2];
        if ((npcAction != NULL) && (npcAction->action != 6)) {
            Animation_Change(&this->skelAnime, &D_06006EB0, 1.0f, 0.0f, Animation_GetLastFrame(&D_06006EB0), 0, 0.0f);
            this->updateIndex = 20;
        }
    }
}

void func_8096AFFC(DemoDu *this, GlobalContext *globalCtx) {
    func_8096A3D8(globalCtx);
    func_8096AA4C(this, globalCtx);
}

void func_8096B030(DemoDu *this, GlobalContext *globalCtx) {
    func_8096A3D8(globalCtx);
    func_8096A4D4(globalCtx);
    func_8096AA5C(this, globalCtx);
}

void func_8096B06C(DemoDu *this, GlobalContext *globalCtx) {
    func_8096A970(this, globalCtx);
    func_80969C58(this, globalCtx);
    func_8096A3D8(globalCtx);
    func_8096A4D4(globalCtx);
    func_8096AB00(this, globalCtx);
}

void func_8096B0C0(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_8096A4D4(globalCtx);
    func_8096AB54(this, globalCtx);
}

void func_8096B0F8(DemoDu *this, GlobalContext *globalCtx) {
    s32 aux;

    func_80969C58(this, globalCtx);
    aux = func_80969C38(this);
    func_8096A528(this, globalCtx);
    func_8096AB8C(this, aux);
}

void func_8096B140(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    func_8096A528(this, globalCtx);
    func_8096ABF8(this, globalCtx);
}

void func_8096B184(DemoDu *this, GlobalContext *globalCtx) {
    s32 aux;

    func_80969C58(this, globalCtx);
    aux = func_80969C38(this);
    func_8096A45C(this);
    func_8096A528(this, globalCtx);
    func_8096AC90(this, aux);
}

void func_8096B1DC(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    func_8096A528(this, globalCtx);
    func_8096ACFC(this, globalCtx);
}

void func_8096B220(DemoDu *this, GlobalContext *globalCtx) {
    s32 aux;

    func_80969C58(this, globalCtx);
    aux = func_80969C38(this);
    func_8096A528(this, globalCtx);
    func_8096A6E0(this, globalCtx);
    func_8096AD90(this, aux);
}

void func_8096B27C(DemoDu *this, GlobalContext *globalCtx) {
    s32 aux;

    func_80969C58(this, globalCtx);
    aux = func_80969C38(this);
    func_8096A45C(this);
    func_8096A528(this, globalCtx);
    func_8096AE00(this, aux);
}

void func_8096B2D4(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    func_8096A528(this, globalCtx);
    func_8096AE6C(this, globalCtx);
}

void func_8096B318(DemoDu *this, GlobalContext *globalCtx) {
    s32 aux;

    func_80969C58(this, globalCtx);
    aux = func_80969C38(this);
    func_8096A528(this, globalCtx);
    func_8096AF00(this, aux);
}

void func_8096B360(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    func_8096A528(this, globalCtx);
    func_8096AF6C(this, globalCtx);
}

void func_8096B3A4(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    func_8096A528(this, globalCtx);
    func_8096A480(globalCtx);
}

void func_8096B3E4(DemoDu* this, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    SkelAnime* skelAnime = &this->skelAnime;
    s32 pad;
    f32 lastFrame;

    lastFrame = (f32) Animation_GetLastFrame(&D_06012014);
    SkelAnime_InitFlex(globalCtx2, skelAnime, &D_06011CA8, NULL, NULL, NULL, 0);
    Animation_Change(skelAnime, &D_06012014, 1.0f, 0.0f, lastFrame, 2, 0.0f);
    this->updateIndex = 0x15;
    this->actor.shape.shadowAlpha = 0;
}

void func_8096B488() {
    func_800788CC(NA_SE_SY_WHITE_OUT_T);
}

void func_8096B4A8(DemoDu *this, GlobalContext *globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B4A8.s")

void func_8096B528(DemoDu *this, GlobalContext *globalCtx) {
    if (func_80969CC4(this, globalCtx, 4, 2)) {
        this->updateIndex = 22;
        this->drawIndex = 2;
        this->unk_1A8 = 0;
        this->actor.shape.shadowAlpha = 0;
        this->unk_1A4 = 0.0f;
        func_8096B488();
    }
}

void func_8096B57C(DemoDu *this, GlobalContext *globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B57C.s")

void func_8096B6D0(DemoDu *this, GlobalContext *globalCtx) {
    if (func_80969D10(this, globalCtx, 4, 2) != 0) {
        this->updateIndex = 22;
        this->drawIndex = 2;
        this->unk_1A4 = gGameInfo->data[2597] + 10.0f;
        this->unk_1A8 = 0xFF;
        if (this->unk_1AC == 0) {
            func_8096B4A8(this, globalCtx);
            this->unk_1AC = 1;
        }
        this->actor.shape.shadowAlpha = 0xFF;
    }
}

void func_8096B768(DemoDu *this, GlobalContext *globalCtx) {
    func_8096B528(this, globalCtx);
    func_80969BC4(this, globalCtx);
}

void func_8096B798(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    DemoDu_UpdateEyes(this);
    func_8096B57C(this, globalCtx);
    func_80969BC4(this, globalCtx);
}

void func_8096B7EC(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    DemoDu_UpdateEyes(this);
    func_8096B6D0(this, globalCtx);
    func_80969BC4(this, globalCtx);
}

void func_8096B840(Actor* thisx, GlobalContext *globalCtx2) {
    GlobalContext *globalCtx = globalCtx2;
    DemoDu* this = THIS;
    s16 eyeTexIndex = this->eyeTexIndex;
    Gfx* sp70 = sEyeTextures[eyeTexIndex];
    s32 pad;
    s16 unk_194 = this->unk_194;
    Gfx* sp64 = D_8096CE84[unk_194];
    SkelAnime* skelAnime = &this->skelAnime;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_du_inKenjyanomaDemo02.c", 275);

    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sp70));
    gSPSegment(POLY_XLU_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sp64));

    gSPSegment(POLY_XLU_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(&D_06007FC0));

    gDPSetEnvColor(POLY_XLU_DISP++, 0x00, 0x00, 0x00, this->unk_1A8);

    gSPSegment(POLY_XLU_DISP++, 0x0C, &D_80116280[0]);

    POLY_XLU_DISP = SkelAnime_DrawFlex(globalCtx, skelAnime->skeleton, skelAnime->jointTable, (s32) skelAnime->dListCount, 0, 0, 0, POLY_XLU_DISP);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_du_inKenjyanomaDemo02.c", 304);
}

void func_8096BA2C(DemoDu* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06011CA8, &D_060067CC, NULL, NULL, 0);
    this->updateIndex = 24;
    this->drawIndex = 0;
    this->actor.shape.shadowAlpha = 0;
    func_80969B8C(this, 3);
}

void func_8096BA98(DemoDu *this) {
    s32 temp_f18 = 0xFF;
    f32 temp_f0;
    f32 *unk_1A4;

    this->unk_1A4 += 1.0f;
    temp_f0 = gGameInfo->data[2609] + 10.0f;
    unk_1A4 = &this->unk_1A4;

    if (temp_f0 <= *unk_1A4) {
        this->unk_1A8 = temp_f18;
        this->actor.shape.shadowAlpha = temp_f18;
    } else {
        temp_f18 = *unk_1A4 / temp_f0 * 255.0f;
        this->unk_1A8 = temp_f18;
        this->actor.shape.shadowAlpha = temp_f18;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BB24.s")

void func_8096BB5C(DemoDu *this) {
    if (gGameInfo->data[2609] + 10.0f <= this->unk_1A4) {
        this->updateIndex = 26;
        this->drawIndex = 1;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BBA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BBE8.s")

void func_8096BC28(DemoDu *this, s32 arg1) {
    if (arg1) {
        func_80969DDC(this, &D_060067CC, 0, 0.0f, 0);
        this->updateIndex = 26;
    }
}

void func_8096BC6C(DemoDu *this, GlobalContext *globalCtx);
/*
void func_8096BC6C(DemoDu *this, GlobalContext *globalCtx) {
    char *sp20;
    CsCmdActorAction *temp_v0;
    u16 temp_a2;

    temp_v0 = func_80969CA0(globalCtx, 2);
    if (temp_v0 != 0) {
        temp_a2 = temp_v0->action;
        if (temp_a2 != this->unk_1B0) {
            if (temp_a2 != 9) {
                if (temp_a2 != 0xA) {
                    if (temp_a2 != 0xB) {
                        sp20 = (char *) temp_a2;
                        osSyncPrintf((const char *) "Demo_Du_inEnding_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
                    } else {
                        sp20 = (char *) temp_a2;
                        func_8096BBE8(this);
                    }
                } else {
                    sp20 = (char *) temp_a2;
                    func_8096BBA8(this);
                }
            } else {
                sp20 = (char *) temp_a2;
                func_8096BB24(this, globalCtx, temp_a2);
            }
            this->unk_1B0 = sp20;
        }
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BC6C.s")

void func_8096BD2C(DemoDu *this, GlobalContext *globalCtx) {
    func_8096BC6C(this, globalCtx);
}

void func_8096BD4C(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    DemoDu_UpdateEyes(this);
    func_8096BA98(this);
    func_8096BB5C(this);
}

void func_8096BD94(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    DemoDu_UpdateEyes(this);
    func_8096BC6C(this, globalCtx);
}

void func_8096BDD4(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    DemoDu_UpdateEyes(this);
    func_8096BC6C(this, globalCtx);
}

void func_8096BE14(DemoDu *this, GlobalContext *globalCtx) {
    s32 aux;

    func_80969C58(this, globalCtx);
    aux = func_80969C38(this);
    DemoDu_UpdateEyes(this);
    func_8096BC28(this, aux);
}

void DemoDu_Update(Actor* thisx, GlobalContext* globalCtx) {
    DemoDu* this = THIS;
    DemoDuActionFunc temp_v1;

    if (this->updateIndex < 0 || this->updateIndex >= 29 || sUpdateFuncs[this->updateIndex] == NULL) {
        // The main mode is abnormal!!!!!!!!!!!!!!!!!!!!!!!!!
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sUpdateFuncs[this->updateIndex](this, globalCtx);
}

void DemoDu_Init(Actor* thisx, GlobalContext* globalCtx) {
    DemoDu* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    switch (this->actor.params) {
    case 1:
        func_8096A360(this, globalCtx);
        return;
    
    case 2:
        func_8096B3E4(this, globalCtx);
        return;
    
    case 3:
        func_8096BA2C(this, globalCtx);
        return;
    
    default:
        func_80969E6C(this, globalCtx);
        return;
    }
}

void func_8096BF54(Actor *thisx, GlobalContext *globalCtx2) {
}

void func_8096BF60(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext *globalCtx = globalCtx2;
    DemoDu* this = THIS;
    s16 eyeTexIndex = this->eyeTexIndex;
    Gfx* eyeTexture = sEyeTextures[eyeTexIndex];
    s32 pad;
    s16 unk_194 = this->unk_194;
    Gfx* sp5C = D_8096CE84[unk_194];
    SkelAnime* skelAnime = &this->skelAnime;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_du.c", 615);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTexture));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sp5C));
    gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(&D_06007FC0));

    gDPSetEnvColor(POLY_OPA_DISP++, 0x00, 0x00, 0x00, 0xFF);

    gSPSegment(POLY_OPA_DISP++, 0x0C, &D_80116280[2]);

    SkelAnime_DrawFlexOpa(globalCtx, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount, NULL, NULL, this);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_du.c", 638);
}

void DemoDu_Draw(Actor* thisx, GlobalContext* globalCtx) {
    DemoDu* this = THIS;

    if (this->drawIndex < 0 || this->drawIndex >= 3 || sDrawFuncs[this->drawIndex] == NULL) {
        // The drawing mode is abnormal!!!!!!!!!!!!!!!!!!!!!!!!!
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sDrawFuncs[this->drawIndex](thisx, globalCtx);
}
