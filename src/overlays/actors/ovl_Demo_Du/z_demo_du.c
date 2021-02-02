#include "z_demo_du.h"
#include "vt.h"

#define FLAGS 0x00000010

#define THIS ((DemoDu*)thisx)

typedef void (*DemoDuActionFunc)(DemoDu*, GlobalContext*);
typedef void (*DemoDuDrawFunc)(Actor*, GlobalContext*);

void DemoDu_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoDu_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoDu_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoDu_Draw(Actor* thisx, GlobalContext* globalCtx);

extern AnimationHeader D_06000800;
extern AnimationHeader D_06000D00;
extern AnimationHeader D_06001D70;
extern AnimationHeader D_06002374;
extern AnimationHeader D_0600288C;
extern AnimationHeader D_06005458;
extern AnimationHeader D_06006104;
extern AnimationHeader D_060067CC;
extern AnimationHeader D_06006EB0;
extern Gfx D_06007FC0;
extern FlexSkeletonHeader D_06011CA8;
extern AnimationHeader D_06012014;


static s32 sUnused = 0;

#include "z_demo_du_cutscene_data.c" EARLY

static Gfx* sEyeTextures[] = {0x06008080, 0x06008480, 0x06008880, 0x0600A540};
static Gfx* D_8096CE84[] = {0x06008C80, 0x06009D40, 0x0600A940, 0x0600B180};


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
    this->shadowAlpha = 0;
    this->unk_1AC = 0;
    this->actor.shape.shadowAlpha = 0;
    this->unk_1A4 = 0.0f;
}

void func_80969BC4(DemoDu* this, GlobalContext* globalCtx) {
    static s32 D_8096CE94 = 0;

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

s32 func_80969C38(DemoDu* this) {
    return SkelAnime_Update(&this->skelAnime);
}

void func_80969C58(DemoDu* this, GlobalContext* globalCtx) {
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f, 5);
}

CsCmdActorAction* DemoDu_GetNpcAction(GlobalContext* globalCtx, s32 idx) {
    if (globalCtx->csCtx.state != 0) {
        return globalCtx->csCtx.npcActions[idx];
    }
    return NULL;
}

s32 DemoDu_IsNpcDoingThisAction(DemoDu* this, GlobalContext* globalCtx, u16 action, s32 idx) {
    CsCmdActorAction *npcAction;

    npcAction = DemoDu_GetNpcAction(globalCtx, idx);
    if ((npcAction != NULL) && (npcAction->action == action)) {
        return true;
    }
    return false;
}

s32 DemoDu_IsNpcNotDoingThisAction(DemoDu *this, GlobalContext *globalCtx, u16 action, s32 idx) {
    CsCmdActorAction *npcAction;

    npcAction = DemoDu_GetNpcAction(globalCtx, idx);
    if ((npcAction != NULL) && (npcAction->action != action)) {
        return true;
    }
    return false;
}

void func_80969D5C(DemoDu *this, GlobalContext *globalCtx, s32 idx) {
    CsCmdActorAction *npcAction;
    s16 rotY;

    npcAction = DemoDu_GetNpcAction(globalCtx, idx);
    if (npcAction != NULL) {
        this->actor.world.pos.x = npcAction->startPos.x;
        this->actor.world.pos.y = npcAction->startPos.y;
        this->actor.world.pos.z = npcAction->startPos.z;

        rotY = npcAction->rot.y;
        this->actor.shape.rot.y = rotY;
        this->actor.world.rot.y = rotY;
    }
}

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

void func_80969EDC(DemoDu* this, GlobalContext* globalCtx) {
    f32 posX = this->actor.world.pos.x;
    f32 posY = this->actor.world.pos.y;
    f32 posZ = this->actor.world.pos.z;

    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, posX, posY, posZ, 0, 0, 0, 2);
}

void func_80969F38(DemoDu *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    f32 posX = player->actor.world.pos.x;
    f32 posY = player->actor.world.pos.y + 80.0f;
    f32 posZ = player->actor.world.pos.z;

    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_EFFECT, posX, posY, posZ, 0, 0, 0, 9);
    Item_Give(globalCtx, ITEM_MEDALLION_FIRE);
}

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
            func_80969EDC(this, globalCtx);
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
    CsCmdActorAction *npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[6];
        if ((npcAction != NULL) && (npcAction->action == 2)) {
            this->updateIndex = 6;
            func_80969F38(this, globalCtx);
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

void func_8096A3B4(DemoDu* this) {
    func_80078914(&this->actor.projectedPos, NA_SE_EN_GOLON_LAND_BIG);
}

void func_8096A3D8(GlobalContext *globalCtx) {
    if (globalCtx->csCtx.frames == 160) {
        func_800788CC(NA_SE_EV_OBJECT_FALL);
    }
}

void func_8096A408(GlobalContext *globalCtx) {
    Player* player = PLAYER;
    Vec3f* projectedPos = &player->actor.projectedPos;

    func_80078914(projectedPos, NA_SE_EN_DARUNIA_HIT_LINK);
    Audio_PlaySoundGeneral(NA_SE_VO_LI_DAMAGE_S_KID, projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

void func_8096A45C(DemoDu *this) {
    func_80078914(&this->actor.projectedPos, NA_SE_EN_DARUNIA_HIT_BREAST - SFX_FLAG);
}

void func_8096A480(GlobalContext *globalCtx) {
    Player* player;

    if (globalCtx->csCtx.frames == 1400) {
        player = PLAYER;
        Audio_PlaySoundGeneral(NA_SE_VO_LI_FALL_L_KID, &player->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

void func_8096A4D4(GlobalContext *globalCtx) {
    Player* player;

    if (globalCtx->csCtx.frames == 174) {
        player = PLAYER;
        Audio_PlaySoundGeneral(NA_SE_VO_LI_SURPRISE_KID, &player->actor.projectedPos, 4U, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

void func_8096A528(DemoDu *this, GlobalContext *globalCtx) {
    u16* frames = &globalCtx->csCtx.frames;

    if (*frames < 0x104) {
        DemoDu_UpdateEyes(this);
        func_80969B8C(this, 0);
    } else if (*frames < 0x14F) {
        DemoDu_UpdateEyes(this);
        func_80969B8C(this, 3);
        return;
    } else if (*frames < 0x16D) {
        DemoDu_SetEyeTexIndex(this, 3);
        func_80969B8C(this, 1);
        return;
    } else if (*frames < 0x18B) {
        DemoDu_SetEyeTexIndex(this, 0);
        func_80969B8C(this, 3);
        return;
    } else if (*frames < 0x19A) {
        DemoDu_UpdateEyes(this);
        func_80969B8C(this, 0);
        return;
    } else {
        DemoDu_UpdateEyes(this);
        func_80969B8C(this, 3);
    }
}

void func_8096A630(DemoDu* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f pos = this->actor.world.pos;

    pos.y += gGameInfo->data[2597];
    func_80033480(globalCtx, &pos, gGameInfo->data[2593] + 100.0f, gGameInfo->data[2594] + 0xA, gGameInfo->data[2595] + 0x12C, gGameInfo->data[2596], 0);
    func_8096A3B4(this);
}


static Vec3f D_8096CE98 = {0.0f, 0.0f, 0.0f};

static Vec3f D_8096CEA4 = {0.0f, 0.3f, 0.0f};

static Color_RGBA8 D_8096CEB0 = {190, 150, 110, 255};

static Color_RGBA8 D_8096CEB4 = {120, 80, 40, 255};

static Vec3f D_8096CEB8[] = {
 { 11.0f, -11.0f,  -6.0f },
 {  0.0f,  14.0f, -13.0f },
 { 14.0f,  -2.0f, -10.0f },
 { 10.0f,  -6.0f,  -8.0f }
};

static Vec3f D_8096CEE8[] = {
 {   8.0f,  6.0f,   8.0f },
 {  13.0f,  8.0f, -10.0f },
 { -14.0f,  1.0f, -14.0f },
 {   5.0f, 12.0f,  -9.0f },
 {  11.0f,  6.0f,  -7.0f },
 {  14.0f, 14.0f, -14.0f },
};

void func_8096A6E0(DemoDu* this, GlobalContext* globalCtx);
/*
void func_8096A6E0(DemoDu* this, GlobalContext* globalCtx) {
    //s32 pad;
    Player* player;
    f32 x;
    //s32 pad2;
    f32 y;
    //s16 scale;
    f32 z;
    s32 temp_v0;
    Vec3f spB0;
    Vec3f spA4;
    Vec3f *phi_s0;
    Color_RGBA8 sp9C;
    Color_RGBA8 sp98;
    Vec3f *headPos;
    Vec3f sp88;
    SkelAnime *skelAnime;

    skelAnime = &this->skelAnime;

    if (Animation_OnFrame(skelAnime, 31.0f) || Animation_OnFrame(skelAnime, 41.0f)) {
        player = PLAYER;
        headPos = &player->bodyPartsPos[PLAYER_LIMB_HEAD];

        spB0 = D_8096CE98;
        spA4 = D_8096CEA4;
        phi_s0 = D_8096CEE8;

        do{
            sp9C = D_8096CEB0;
            sp98 = D_8096CEB4;

            if (Animation_OnFrame(skelAnime, 31.0f)) {
                x = phi_s0[5].x;
                y = phi_s0[5].y;
                z = phi_s0[5].z;
                sp88.x = x + headPos->x;
                sp88.y = y + headPos->y;
                sp88.z = z + headPos->z;
            } else {
                x = phi_s0[0].x;
                y = phi_s0[0].y;
                z = phi_s0[0].z;
                sp88.x = x + headPos->x;
                sp88.y = y + headPos->y;
                sp88.z = z + headPos->z;
            }

            temp_v0 = Rand_ZeroOne() * 20.0f - 10.0f;

            sp9C.r += temp_v0;
            sp9C.g += temp_v0;
            sp9C.b += temp_v0;
            sp98.r += temp_v0;
            sp98.g += temp_v0;
            sp98.b += temp_v0;

            //scale = Rand_ZeroOne() * 40.0f + 200.0f;

            func_8002829C(
                globalCtx, 
                &sp88, 
                &spB0, 
                &spA4, 
                &sp9C, 
                &sp98, 
                //scale,
                Rand_ZeroOne() * 40.0f + 200.0f,
                0
                );

            phi_s0 -= 1;
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
            func_8096A630(this, globalCtx);
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
    if (arg1) {
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

void func_8096B4A8(DemoDu *this, GlobalContext *globalCtx) {
    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_6K, this->actor.world.pos.x, (f32) gGameInfo->data[2608] + 22.0f + this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 3);
}

void func_8096B528(DemoDu *this, GlobalContext *globalCtx) {
    if (DemoDu_IsNpcDoingThisAction(this, globalCtx, 4, 2)) {
        this->updateIndex = 22;
        this->drawIndex = 2;
        this->shadowAlpha = 0;
        this->actor.shape.shadowAlpha = 0;
        this->unk_1A4 = 0.0f;
        func_8096B488();
    }
}

void func_8096B57C(DemoDu *this, GlobalContext *globalCtx) {
    f32 *unk_1A4 = &this->unk_1A4;
    s32 shadowAlpha = 0xFF;

    if (DemoDu_IsNpcDoingThisAction(this, globalCtx, 4, 2)) {
        *unk_1A4 += 1.0f;
        if (*unk_1A4 >= gGameInfo->data[2597] + 10.0f) {
            this->updateIndex = 23;
            this->drawIndex = 1;
            *unk_1A4 = gGameInfo->data[2597] + 10.0f;
            this->shadowAlpha = shadowAlpha;
            this->actor.shape.shadowAlpha = shadowAlpha;
            return;
        }
    } else {
        *unk_1A4 -= 1.0f;
        if (*unk_1A4 <= 0.0f) {
            this->updateIndex = 21;
            this->drawIndex = 0;
            *unk_1A4 = 0.0f;
            this->shadowAlpha = 0;
            this->actor.shape.shadowAlpha = 0;
            return;
        }
    }
    shadowAlpha = (*unk_1A4 / (gGameInfo->data[2597] + 10.0f)) * 255.0f;
    this->shadowAlpha = shadowAlpha;
    this->actor.shape.shadowAlpha = shadowAlpha;
}

void func_8096B6D0(DemoDu *this, GlobalContext *globalCtx) {
    if (DemoDu_IsNpcNotDoingThisAction(this, globalCtx, 4, 2)) {
        this->updateIndex = 22;
        this->drawIndex = 2;
        this->unk_1A4 = gGameInfo->data[2597] + 10.0f;
        this->shadowAlpha = 0xFF;
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
    Gfx* eyeTexture = sEyeTextures[eyeTexIndex];
    s32 pad;
    s16 unk_194 = this->unk_194;
    Gfx* sp64 = D_8096CE84[unk_194];
    SkelAnime* skelAnime = &this->skelAnime;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_du_inKenjyanomaDemo02.c", 275);

    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTexture));
    gSPSegment(POLY_XLU_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sp64));

    gSPSegment(POLY_XLU_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(&D_06007FC0));

    gDPSetEnvColor(POLY_XLU_DISP++, 0x00, 0x00, 0x00, this->shadowAlpha);

    gSPSegment(POLY_XLU_DISP++, 0x0C, &D_80116280[0]);

    POLY_XLU_DISP = SkelAnime_DrawFlex(globalCtx, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount, 0, 0, 0, POLY_XLU_DISP);

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
    s32 shadowAlpha = 0xFF;
    f32 temp_f0;
    f32 *unk_1A4;

    this->unk_1A4 += 1.0f;
    temp_f0 = gGameInfo->data[2609] + 10.0f;
    unk_1A4 = &this->unk_1A4;

    if (temp_f0 <= *unk_1A4) {
        this->shadowAlpha = shadowAlpha;
        this->actor.shape.shadowAlpha = shadowAlpha;
    } else {
        shadowAlpha = *unk_1A4 / temp_f0 * 255.0f;
        this->shadowAlpha = shadowAlpha;
        this->actor.shape.shadowAlpha = shadowAlpha;
    }
}

void func_8096BB24(DemoDu *this, GlobalContext *globalCtx) {
    func_80969D5C(this, globalCtx, 2);
    this->updateIndex = 25;
    this->drawIndex = 2;
}

void func_8096BB5C(DemoDu *this) {
    if (gGameInfo->data[2609] + 10.0f <= this->unk_1A4) {
        this->updateIndex = 26;
        this->drawIndex = 1;
    }
}

void func_8096BBA8(DemoDu *this) {
    func_80969DDC(this, &D_06005458, ANIMMODE_ONCE, -8.0f, 0);
    this->updateIndex = 27;
}

void func_8096BBE8(DemoDu *this) {
    func_80969DDC(this, &D_06006104, ANIMMODE_ONCE, 0.0f, 0);
    this->updateIndex = 28;
}

void func_8096BC28(DemoDu *this, s32 arg1) {
    if (arg1) {
        func_80969DDC(this, &D_060067CC, ANIMMODE_LOOP, 0.0f, 0);
        this->updateIndex = 26;
    }
}

void func_8096BC6C(DemoDu *this, GlobalContext *globalCtx) {
    s32 unk_1B0;
    s32 action;
    CsCmdActorAction *npcAction = DemoDu_GetNpcAction(globalCtx, 2);

    if (npcAction != NULL) {
        action = npcAction->action;
        unk_1B0 = this->unk_1B0;
        if (action != unk_1B0) {
            switch (action) {
            case 9:
                func_8096BB24(this, globalCtx);
                break;
            case 10:
                func_8096BBA8(this);
                break;
            case 11:
                func_8096BBE8(this);
                break;
            default:
                // Demo_Du_inEnding_Check_DemoMode:There is no such operation!!!!!!!!
                osSyncPrintf("Demo_Du_inEnding_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
                break;
            }
            this->unk_1B0 = action;
        }
    }
}

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


static DemoDuActionFunc sUpdateFuncs[] = {
    func_8096A224, func_8096A244, func_8096A264, func_8096A294, func_8096A2CC, 
    func_8096A300, func_8096A338, func_8096AFFC, func_8096B030, func_8096B06C, 
    func_8096B0C0, func_8096B0F8, func_8096B140, func_8096B184, func_8096B1DC, 
    func_8096B220, func_8096B27C, func_8096B2D4, func_8096B318, func_8096B360, 
    func_8096B3A4, func_8096B768, func_8096B798, func_8096B7EC, func_8096BD2C, 
    func_8096BD4C, func_8096BD94, func_8096BDD4, func_8096BE14
};

void DemoDu_Update(Actor* thisx, GlobalContext* globalCtx) {
    DemoDu* this = THIS;

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


static DemoDuDrawFunc sDrawFuncs[] = {
    func_8096BF54, func_8096BF60, func_8096B840
};

void DemoDu_Draw(Actor* thisx, GlobalContext* globalCtx) {
    DemoDu* this = THIS;

    if (this->drawIndex < 0 || this->drawIndex >= 3 || sDrawFuncs[this->drawIndex] == NULL) {
        // The drawing mode is abnormal!!!!!!!!!!!!!!!!!!!!!!!!!
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sDrawFuncs[this->drawIndex](thisx, globalCtx);
}

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
