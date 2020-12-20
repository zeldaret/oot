#include "z_en_fr.h"
#include "vt.h"

#define FLAGS 0x02000019

#define THIS ((EnFr*)thisx)

void EnFr_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFr_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFr_Update(Actor* thisx, GlobalContext* globalCtx);

void EnFr_UpdateIdle(EnFr* this, GlobalContext* globalCtx);
void EnFr_UpdateActive(EnFr* this, GlobalContext* globalCtx);

void EnFr_IsDivingIntoWater(EnFr* this, GlobalContext* globalCtx);
void EnFr_DivingIntoWater(EnFr* this, GlobalContext* globalCtx);

s32 EnFr_IsBelowLogSpot(EnFr* this, f32* yDistToLogSpot);
s32 EnFr_IsAboveAndWithin30xzDist(Player* player, EnFr* this);

void EnFr_DecrementBlinkTimer(EnFr* this);
void EnFr_DecrementBlinkTimerUpdate(EnFr* this);

// Animation Functions
void EnFr_InitJumpingOutOfWater(EnFr* this, GlobalContext* globalCtx);
void EnFr_JumpingOutOfWater(EnFr* this, GlobalContext* globalCtx);
void EnFr_OrientOnLogSpot(EnFr* this, GlobalContext* globalCtx);
void EnFr_ChooseJumpFromLogSpot(EnFr* this, GlobalContext* globalCtx);
void EnFr_JumpingUp(EnFr* this, GlobalContext* globalCtx);
void EnFr_JumpingBackIntoWater(EnFr* this, GlobalContext* globalCtx);
void EnFr_OrientUnderwater(EnFr* this);

void EnFr_SetScaleActive(EnFr* this, GlobalContext* globalCtx);
void EnFr_ButterflyPath(EnFr* this, GlobalContext* globalCtx);
s32 EnFr_InitJumpingUp(EnFr* this, s32 frogIndex);

// Activation
void EnFr_Idle(EnFr* this, GlobalContext* globalCtx);
void EnFr_Activate(EnFr* this, GlobalContext* globalCtx);
void EnFr_ActivateCheckFrogSong(EnFr* this, GlobalContext* globalCtx);

// Listening for Child Songs
void EnFr_InitAnimation(EnFr* this, GlobalContext* globalCtx);
void EnFr_ListeningToOcarinaNotes(EnFr* this, GlobalContext* globalCtx);
void EnFr_ChildSong(EnFr* this, GlobalContext* globalCtx);
void EnFr_ChildSongFirstTime(EnFr* this, GlobalContext* globalCtx);

// Frog Song for HP Functions
void EnFr_TalkBeforeFrogSong(EnFr* this, GlobalContext* globalCtx);
void EnFr_InitFrogSong(EnFr* this, GlobalContext* globalCtx);
u8 EnFr_GetNextNoteFrogSong(u8 ocarinaNoteIndex);
void EnFr_ContinueFrogSong(EnFr* this, GlobalContext* globalCtx);
void EnFr_CheckOcarinaInputFrogSong(u8 ocarinaNote);
s32 EnFr_IsFrogSongComplete(EnFr* this, GlobalContext* globalCtx);

void EnFr_OcarinaMistake(EnFr* this, GlobalContext* globalCtx);
void EnFr_DeactivateButterfly();

// Reward Functions
void EnFr_InitReward(EnFr* this, GlobalContext* globalCtx, u8 unk_condition);
void EnFr_PrintTextBox(EnFr* this, GlobalContext* globalCtx);
void EnFr_TalkBeforeReward(EnFr* this, GlobalContext* globalCtx);
void EnFr_SetReward(EnFr* this, GlobalContext* globalCtx);

// Frog
void EnFr_Deactivate(EnFr* this, GlobalContext* globalCtx);
void EnFr_GiveReward(EnFr* this, GlobalContext* globalCtx);
void EnFr_SetIdle(EnFr* this, GlobalContext* globalCtx);

// Drawing Functions
void EnFr_DrawIdle(EnFr* this);
void EnFr_DrawActive(EnFr* this);
s32 EnFr_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx,
                          Gfx** gfx);
void EnFr_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* this);
void EnFr_Draw(Actor* thisx, GlobalContext* globalCtx);

extern FlexSkeletonHeader D_0600B498; // Frog
extern AnimationHeader D_06001534;    // Frog
extern FlexSkeletonHeader D_050036F0; // Butterfly
extern AnimationHeader D_05002470;    // Butterfly
extern AnimationHeader D_060007BC;    // Frog Jumping
extern AnimationHeader D_060011C0;    // Frog Landing

//
// Frogs actor.params system
//
// Represents 6 Actor Instances for frogs:
//     - 1 Prop actor instance set to where Link plays Ocarina, manages 5 frogs
//     - 5 NPC actor instances for the frogs themselves
//
// 0: Prop Actor Instance (located where link detects ocarina, interacts with Link)
// 1: Frog 0 (Yellow)
// 2: Frog 1 (Blue)
// 3: Frog 2 (Red)
// 4: Frog 3 (Purple)
// 5: Frog 4 (White)
//
// Note that because of the Prop Actor, actor.params is 1 shifted from frogIndex
// Therefore, frogIndex = actor.params - 1

//
// sEnFrPointers.flags system
//
//
// sEnFrPointers.flags = 0x01
//      - Activate frogs, frogs will jump out of the water
//
// sEnFrPointers.flags = 0x01 to 0x0B:
//      - Counter: Frogs will sequentially jump out based on counter:
//          - 0x01: Frog 1 (Blue)
//          - 0x03: frog 3 (Purple)
//          - 0x05: frog 0 (Yellow)
//          - 0x07: frog 2 (Red)
//          - 0x09: frog 4 (White)
//      - Will proceed when counter reachers 0x0B
//
// sEnFrPointers.flags = 0x0C
//      - Deactivate frogs, frogs will jump back into the water
//

typedef struct {
    u8 flags;
    EnFr* frogs[5]; // Frog Pointers
} EnFrPointers;

typedef struct {
    f32 xzDist;
    f32 yaw;
    f32 yDist;
} LogSpotToFromWater;

typedef struct {
    u8 red;
    u8 green;
    u8 blue;
    u8 alpha;
} EnFrColor;

// A pointer to each NPC froc actor instance on the heap
EnFrPointers sEnFrPointers = {
    0x00,
    { NULL,  // Frog 0: (Yellow - Middle)
      NULL,  // Frog 1: (Blue - Front Left)
      NULL,  // Frog 2: (Red - Front Right)
      NULL,  // Frog 3: (Purple - Back Left)
      NULL } // Frog 4: (White - Back Right)
};

// Flags for gSaveContext.eventChkInf[13]
u16 sSongIndex[] = { 0x0002,   // ZL            (second bit)
                     0x0004,   // Epona         (third bit)
                     0x0010,   // Saria         (fifth bit)
                     0x0008,   // Suns          (fourth bit)
                     0x0020,   // SoT           (sixth bit)
                     0x0040,   // Storms        (seventh bit)
                     0x0001,   // Frogs 2 Song  (first bit)
                     0x0000 }; // Padding

// u8 Frog Index
// Frog to Index for Song Flag (sSongIndex) Mapping
u8 sFrogToSongIndex[] = { 0x02,   // Frog 0: (Yellow - Middle)
                          0x03,   // Frog 1: (Blue - Front Left)
                          0x04,   // Frog 2: (Red - Front Right)
                          0x00,   // Frog 3: (Purple - Back Left)
                          0x01 }; // Frog 4: (White - Back Right)

// Song to Frog Index Mapping
static s32 sSongToFrog[] = { 0x00000003,   // Song 0 = ZL    = Frog 3 = (Purple - Back Left)
                             0x00000004,   // Song 1 = Epona = Frog 4 = (White - Back Right)
                             0x00000000,   // Song 2 = Saria = Frog 0 = (Yellow - Middle)
                             0x00000001,   // Song 3 = Suns  = Frog 1 = (Blue - Front Left)
                             0x00000002 }; // Song 4 = SoT   = Frog 2 = (Red - Front Right)

const ActorInit En_Fr_InitVars = {
    ACTOR_EN_FR,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_FR,
    sizeof(EnFr),
    (ActorFunc)EnFr_Init,
    (ActorFunc)EnFr_Destroy,
    (ActorFunc)EnFr_Update,
    NULL,
};

static EnFrColor sEnFrColor[5] = { { 0xC8, 0xAA, 0x00, 0xFF },   // frog 0 (Yellow - Middle)
                                   { 0x00, 0xAA, 0xC8, 0xFF },   // frog 1 (Blue - Front Left)
                                   { 0xD2, 0x78, 0x64, 0xFF },   // frog 2 (Red - Front Right)
                                   { 0x78, 0x82, 0xE6, 0xFF },   // frog 3 (Purple - Back Left)
                                   { 0xBE, 0xBE, 0xBE, 0xFF } }; // frog 4 (White - Back Right)

// Jumping back into water frog animation
//      sLogSpotToFromWater[frog].xzDist is magnitude of xz distance frog travels
//      sLogSpotToFromWater[frog].yaw is rot around y-axis of jumping back into water
//      sLogSpotToFromWater[frog].yDist is change in y distance frog travels
static LogSpotToFromWater sLogSpotToFromWater[6] = {
    { 0.0, 0.0, 0.0 },              // Prop   (Where link pulls ocarina)
    { 80.0, -0.375 * M_PI, -80.0 }, // frog 0 (Yellow - Middle)
    { 80.0, -0.5 * M_PI, -80.0 },   // frog 1 (Blue - Front Left)
    { 80.0, -0.25 * M_PI, -80.0 },  // frog 2 (Red - Front Right)
    { 80.0, 0.875 * M_PI, -80.0 },  // frog 3 (Purple - Back Left)
    { 80.0, 0.5 * M_PI, -80.0 }     // frog 4 (White - Back Right)
};

// Timer values for the frog song
static s16 sTimerFrogSong[] = { 40, // frames to play the first note
                                20, // frames to play the second note
                                15, // frames to play the third note
                                12, // frames to play the fourth note
                                12, // frames to play each remaining note
                                0 };

InitChainEntry sInitChain[] = {
    ICHAIN_U8(unk_1F, 2, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 30, ICHAIN_STOP),
};

// Counter to Coordinate Frog jumping out of water one at a time
// Used as part of sEnFrPointers.flags
static u8 sTimerJumpingOutOfWater[] = { 0x05,   // frog 0 (Yellow - Middle)
                                        0x01,   // frog 1 (Blue - Front Left)
                                        0x07,   // frog 2 (Red - Front Right)
                                        0x03,   // frog 3 (Purple - Back Left)
                                        0x09 }; // frog 4 (White - Back Right)

// targetScale (default = 150.0) Actor scale target for Math_SmoothScaleMaxF
// Used as a frog grows from hearing a new child song
static f32 sGrowingScale[] = { 180.0,   // 1st incremental scale
                               210.0,   // 2nd incremental scale
                               240.0,   // 3rd incremental scale
                               270.0 }; // Final scale

static u8 sPitchSmallFrog[] = { 0x05,   // frog 0 (Yellow - C-Down Ocarina)
                                0x02,   // frog 1 (Blue - A Button Ocarina)
                                0x09,   // frog 2 (Red - C-Right Ocarina)
                                0x0B,   // frog 3 (Purple - C-Left Ocarina)
                                0x0E }; // frog 4 (White - C Up Ocarina)

static u8 sPitchLargeFrog[] = { 0xF9,   // frog 0 (Yellow - C-Down Ocarina)
                                0xF6,   // frog 1 (Blue - A Button Ocarina)
                                0xFD,   // frog 2 (Red - C-Right Ocarina)
                                0xFF,   // frog 3 (Purple - C-Left Ocarina)
                                0x02 }; // frog 4 (White - C Up Ocarina)

static u8 sJumpOrder[] = { 0x01,   // frog 1 (Blue)
                           0x00,   // frog 0 (Yellow)
                           0x02,   // frog 2 (Red)
                           0x03,   // frog 3 (Purple)
                           0x04,   // frog 4 (White)
                           0x01,   // frog 1 (Blue)
                           0x00,   // frog 0 (Yellow)
                           0x02 }; // frog 2 (Red)

static u8 sOcarinaNotes[] = { 0x00,   // A Button
                              0x01,   // C-Down
                              0x02,   // C-Right
                              0x03,   // C-Left
                              0x04 }; // C-Up

static s32 sDLists[] = { 0x060059A0, 0x06005BA0 };

void EnFr_OrientUnderwater(EnFr* this) {

    Vec3f vec1;
    Vec3f vec2;
    f32 xzDist;
    s16 yaw;

    vec1.y = 0.0f;
    vec1.x = 0.0f;

    xzDist = sLogSpotToFromWater[this->actor.params].xzDist;
    this->xzDistToLogSpot = xzDist;
    vec1.z = xzDist;

    Matrix_RotateY(sLogSpotToFromWater[this->actor.params].yaw, MTXMODE_NEW);
    Matrix_MultVec3f(&vec1, &vec2);

    this->actor.posRot.pos.x = this->posLogSpot.x + vec2.x;
    this->actor.posRot.pos.z = this->posLogSpot.z + vec2.z;
    this->actor.posRot.pos.y = sLogSpotToFromWater[this->actor.params].yDist + this->posLogSpot.y; // -80.0

    yaw = (s16)(sLogSpotToFromWater[this->actor.params].yaw * (32768.0f / M_PI)) + 32768;

    this->actor.shape.rot.y = yaw;
    this->actor.posRot.rot.y = yaw;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = 0.0f;
}

void EnFr_Init(Actor* thisx, GlobalContext* globalCtx) {

    EnFr* this = THIS;

    // 6 Actor Instances for frogs:
    //     -  5 NPC actor instances for the frogs themselves
    //     -  1 Prop actor instance set to where Link plays Ocarina, manages 5 frogs
    // If (Prop Actor):
    if (this->actor.params == 0) {
        this->actor.destroy = NULL;
        this->actor.draw = NULL;
        this->actor.update = EnFr_UpdateIdle;
        this->actor.flags = this->actor.flags &= ~0x11; // devsplz...

        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_PROP);
        this->actor.textId = 0x40AC;
        this->actionFunc = EnFr_Idle;
    }

    else {
        // Translation: The argument is wrong!!
        if ((this->actor.params >= 6) || (this->actor.params < 0)) {
            osSyncPrintf(VT_COL(RED, WHITE));
            osSyncPrintf("%s[%d] : 引数が間違っている！！(%d)\n", "../z_en_fr.c", 370, this->actor.params);
            osSyncPrintf(VT_RST);
            __assert("0", "../z_en_fr.c", 372);
        }

        this->objBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_GAMEPLAY_FIELD_KEEP);

        // Translation: There is no bank!!
        if (this->objBankIndex < 0) {
            Actor_Kill(&this->actor);
            osSyncPrintf(VT_COL(RED, WHITE));
            osSyncPrintf("%s[%d] : バンクが無いよ！！\n", "../z_en_fr.c", 380);
            osSyncPrintf(VT_RST);
            __assert("0", "../z_en_fr.c", 382);
        }
    }
}

void EnFr_DrawIdle(EnFr* this) {

    // Draw only purple frog when not actively listening to ocarina
    if (this->actor.params != 4) {
        this->actor.draw = NULL;
    } else {
        this->actor.draw = EnFr_Draw;
    }
}

void EnFr_DrawActive(EnFr* this) {
    this->actor.draw = EnFr_Draw;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fr/EnFr_Update.s")
// void EnFr_Update(Actor* thisx, GlobalContext* globalCtx) {

//     EnFr* this = THIS;
//     LightInfo* lightInfo;
//     s32 frogindex;
//     s16 randomNumber;

//     // if(1) {}

//     if (Object_IsLoaded(&globalCtx->objectCtx, this->objBankIndex)) {
//         this->actor.flags &= ~0x10;
//         frogindex = this->actor.params - 1;
//         sEnFrPointers.frogs[frogindex] = this;
//         Actor_ProcessInitChain(&this->actor, sInitChain);

//         // Skeleton for the frog
//         SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600B498, &D_06001534, &this->limbDrawTable,
//                          &this->transitionDrawTable, 24);
//         // Skeleton for the butterfly
//         SkelAnime_Init(globalCtx, &this->skelAnimeButterfly, &D_050036F0, &D_05002470, &this->limbDrawTableButterfly,
//                        &this->transitionDrawTableButterfly, 8);

//         // When playing the frogs song for the HP,
//         // the frog with the next note and the butterfly
//         // turns on its lightsource
//         lightInfo = &this->lightInfo;
//         this->lightNode = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, lightInfo);
//         Lights_PointNoGlowSetInfo(lightInfo, this->actor.initPosRot.pos.x,
//                                   this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z, 255,
//                                   255, 255, -1);

//         // Check to see if the song for a particular frog has been played.
//         // If it has, the frog is larger. If not, the frog is smaller
//         if (gSaveContext.eventChkInf[13] & sSongIndex[sFrogToSongIndex[frogindex]]) {
//             this->scale = 270.0f;
//         }
//         else {
//             this->scale = 150.0f;
//         }

//         // When the frogs are not active (link doesn't have his ocarina out),
//         // Then shrink the frogs down by a factor of 10,000
//         Actor_SetScale(&this->actor, this->scale * 0.0001f);
//         this->actor.minVelocityY = -9999.0f;
//         Actor_SetHeight(&this->actor, 10.0f);

//         this->eyeTexIndex = 1;
//         randomNumber = ((s32)(Math_Rand_ZeroFloat(60.0f) + 20.0f) ) & 0xFFFF;
//         this->blinkTimer = (s16) randomNumber;
//         this->blinkFunc = EnFr_DecrementBlinkTimerUpdate;
//         this->posLogSpot = this->actor.posRot.pos;

//         this->isBelowWaterSurfaceCurrent = false;
//         this->isBelowWaterSurfacePrevious = false;

//         this->isJumpingUp = false;
//         this->actionFunc = EnFr_InitJumpingOutOfWater;
//         this->isDeactivating = false;
//         this->growingScaleIndex = 0;
//         this->isActive = false;
//         this->isJumpingToFrogSong = false;
//         this->songIndex = 7;
//         this->unusedButterflyActor = 0;

//         EnFr_OrientUnderwater(this);
//         EnFr_DrawIdle(this);

//         this->actor.update = EnFr_UpdateActive;
//         this->isButterflyDrawn = false;
//         this->xyAngleButterfly = 0x1000 * (s16) Math_Rand_ZeroFloat(255.0f);
//         this->posButterflyLight.x = this->posButterfly.x = this->posLogSpot.x;
//         this->posButterflyLight.y = this->posButterfly.y = this->posLogSpot.y + 50.0f;
//         this->posButterflyLight.z = this->posButterfly.z = this->posLogSpot.z;

//         this->actor.flags &= ~1;

//     }
// }

void EnFr_Destroy(Actor* thisx, GlobalContext* globalCtx) {

    EnFr* this = THIS;
    LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, this->lightNode);
}

void EnFr_IsDivingIntoWater(EnFr* this, GlobalContext* globalCtx) {
    WaterBox* waterBox;
    f32 waterSurface;

    if (func_80042244(globalCtx, &globalCtx->colCtx, this->actor.posRot.pos.x, this->actor.posRot.pos.z, &waterSurface,
                      &waterBox)) {
        this->isBelowWaterSurfacePrevious = this->isBelowWaterSurfaceCurrent;
        if (this->actor.posRot.pos.y <= waterSurface) {
            this->isBelowWaterSurfaceCurrent = true;
        } else {
            this->isBelowWaterSurfaceCurrent = false;
        }
    }
}

void EnFr_DivingIntoWater(EnFr* this, GlobalContext* globalCtx) {
    Vec3f vec;

    // Jumping into or out of water
    if (this->isBelowWaterSurfaceCurrent != this->isBelowWaterSurfacePrevious) {
        vec.x = this->actor.posRot.pos.x;
        vec.y = this->actor.posRot.pos.y - 10.0f;
        vec.z = this->actor.posRot.pos.z;
        EffectSsGSplash_Spawn(globalCtx, &vec, NULL, NULL, 1, 1);

        // Jumping out of the water
        if (this->isBelowWaterSurfaceCurrent == false) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_DIVE_INTO_WATER_L);
        }
        // Jumping into the water
        else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_BOMB_DROP_WATER);
        }
    }
}

// Check if frog is moving down and is below posLogSpot. If so, then set frog to posLogSpot.
s32 EnFr_IsBelowLogSpot(EnFr* this, f32* yDistToLogSpot) {

    yDistToLogSpot[0] = this->actor.posRot.pos.y - this->posLogSpot.y;

    if ((this->actor.velocity.y < 0.0f) && (yDistToLogSpot[0] <= 0.0f)) {
        this->actor.velocity.y = 0.0f;
        this->actor.posRot.pos.y = this->posLogSpot.y;
        return true;
    } else {
        return false;
    }
}

s32 EnFr_IsAboveAndWithin30xzDist(Player* player, EnFr* this) {
    f32 xDistFromLink;
    f32 zDistFromLink;
    f32 yDistFromLink;

    xDistFromLink = player->actor.posRot.pos.x - this->actor.posRot.pos.x;
    zDistFromLink = player->actor.posRot.pos.z - this->actor.posRot.pos.z;
    yDistFromLink = player->actor.posRot.pos.y - this->actor.posRot.pos.y;

    return ((SQ(xDistFromLink) + SQ(zDistFromLink)) <= SQ(30.0f)) && (yDistFromLink >= 0.0f);
}

void EnFr_DecrementBlinkTimer(EnFr* this) {
    if (this->blinkTimer) {
        this->blinkTimer--;
    } else {
        this->blinkFunc = EnFr_DecrementBlinkTimerUpdate;
    }
}

void EnFr_DecrementBlinkTimerUpdate(EnFr* this) {

    if (this->blinkTimer) {
        this->blinkTimer--;
    } else if (this->eyeTexIndex) {
        this->eyeTexIndex = 0;
        this->blinkTimer = (s16)(Math_Rand_ZeroFloat(60.0f) + 20.0f);
        this->blinkFunc = EnFr_DecrementBlinkTimer;
    } else {
        this->eyeTexIndex = 1;
        this->blinkTimer = 1;
    }
}

void EnFr_InitJumpingOutOfWater(EnFr* this, GlobalContext* globalCtx) {
    AnimationHeader* objSegChangeAnime = &D_060007BC;

    // Frogs jumping out one at a time in order sTimerJumpingOutOfWater
    if (sEnFrPointers.flags == sTimerJumpingOutOfWater[this->actor.params - 1]) {

        SkelAnime_ChangeAnim(&this->skelAnime, objSegChangeAnime, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(objSegChangeAnime), 2, 0.0f);

        EnFr_DrawActive(this);

        this->actionFunc = EnFr_JumpingOutOfWater;
    }
}

void EnFr_JumpingOutOfWater(EnFr* this, GlobalContext* globalCtx) {
    Vec3f vec1;
    Vec3f vec2;

    // Increment flag to time the next frog jumping out of water
    if (this->skelAnime.animCurrentFrame == 6.0f) {
        sEnFrPointers.flags++;
        this->skelAnime.animPlaybackSpeed = 0.0f;

        // Midway through jump
    } else if (this->skelAnime.animCurrentFrame == 3.0f) {
        this->actor.gravity = -10.0f;
        this->actor.speedXZ = 0.0f;
        this->actor.velocity.y = 47.0f;
    }

    vec1.y = 0.0f;
    vec1.x = 0.0f;
    vec1.z = this->xzDistToLogSpot;

    Matrix_RotateY(((this->actor.posRot.rot.y + 32768) / 32768.0f) * M_PI, MTXMODE_NEW);
    Matrix_MultVec3f(&vec1, &vec2);

    this->actor.posRot.pos.x = this->posLogSpot.x + vec2.x;
    this->actor.posRot.pos.z = this->posLogSpot.z + vec2.z;

    if (this->skelAnime.animCurrentFrame >= 3.0f) {
        Math_SmoothScaleMaxF(&this->xzDistToLogSpot, 0.0f, 1.0f, 10.0f);
    }

    // The frog has reached the log
    if (EnFr_IsBelowLogSpot(this, &vec2.y)) {
        this->actor.gravity = 0.0f;
        this->actionFunc = EnFr_OrientOnLogSpot;
        this->unusedFloat = 0.0f;
    }

    if ((this->actor.velocity.y <= 0.0f) && (vec2.y < 40.0f)) {
        this->skelAnime.animPlaybackSpeed = 1.0f;
    }
}

void EnFr_OrientOnLogSpot(EnFr* this, GlobalContext* globalCtx) {
    s16 func;
    func = Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 2, 10000, 100);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    if (func == 0 && this->skelAnime.animCurrentFrame == this->skelAnime.animFrameCount) {
        sEnFrPointers.flags++;
        this->actionFunc = EnFr_ChooseJumpFromLogSpot;
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06001534, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06001534), 0, 0.0f);
    }
}

void EnFr_ChooseJumpFromLogSpot(EnFr* this, GlobalContext* globalCtx) {

    // Jumping back into water
    if (sEnFrPointers.flags == 0xC) {
        this->actor.posRot.rot.y = (32768.0f / M_PI) * sLogSpotToFromWater[this->actor.params].yaw;
        SkelAnime_ChangeAnim(&this->skelAnime, &D_060007BC, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060007BC), 2, 0.0f);

        this->actionFunc = EnFr_JumpingBackIntoWater;
    } else if (this->isJumpingUp) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_060007BC, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060007BC), 2, 0.0f);
        this->actionFunc = EnFr_JumpingUp;
    }
}

void EnFr_JumpingUp(EnFr* this, GlobalContext* globalCtx) {
    f32 yDistToLogSpot;

    if (this->skelAnime.animCurrentFrame == 6.0f) {
        this->skelAnime.animPlaybackSpeed = 0.0f;

    } else if (this->skelAnime.animCurrentFrame == 3.0f) {
        this->actor.gravity = -10.0f;
        this->actor.velocity.y = 25.0f;

        // Used only for frogs 2
        if (this->isJumpingToFrogSong) {
            this->isJumpingToFrogSong = false;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_EAT);
        }
    }

    if (EnFr_IsBelowLogSpot(this, &yDistToLogSpot)) {
        this->isJumpingUp = false;
        this->actor.gravity = 0.0f;
        SkelAnime_ChangeAnim(&this->skelAnime, &D_060011C0, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060011C0), 0, 0.0f);
        this->actionFunc = EnFr_ChooseJumpFromLogSpot;
    } else if ((this->actor.velocity.y <= 0.0f) && (yDistToLogSpot < 40.0f)) {
        this->skelAnime.animPlaybackSpeed = 1.0f;
    }
}

void EnFr_JumpingBackIntoWater(EnFr* this, GlobalContext* globalCtx) {
    f32 y_underwater;

    y_underwater = sLogSpotToFromWater[this->actor.params].yDist + this->posLogSpot.y;

    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.posRot.rot.y, 2, 10000, 100);

    if (this->skelAnime.animCurrentFrame == 6.0f) {
        this->skelAnime.animPlaybackSpeed = 0.0f;
    } else if (this->skelAnime.animCurrentFrame == 3.0f) {
        this->actor.speedXZ = 6.0f;
        this->actor.gravity = -10.0f;
        this->actor.velocity.y = 25.0f;
    }

    // Final Spot Reached
    if ((this->actor.velocity.y < 0.0f) && (this->actor.posRot.pos.y < y_underwater)) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06001534, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06001534), 0, 0.0f);
        this->actionFunc = EnFr_InitJumpingOutOfWater;
        EnFr_DrawIdle(this);
        this->isDeactivating = true;
        EnFr_OrientUnderwater(this);
    }
}

void EnFr_SetScaleActive(EnFr* this, GlobalContext* globalCtx) {
    if (this->isGrowing) {
        if (this->isGrowing != true) {
            return;
        }
    }

    else {
        Math_SmoothScaleMaxF(&this->scale, sGrowingScale[this->growingScaleIndex], 2.0f, 25.0f);
        if (this->scale >= sGrowingScale[this->growingScaleIndex]) {
            this->scale = sGrowingScale[this->growingScaleIndex];
            if (this->growingScaleIndex < 3) {
                this->isGrowing = true;
            } else {
                this->isJumpingUp = false;
                this->isActive = false;
            }
        }
        return;
    }

    Math_SmoothScaleMaxF(&this->scale, 150.0f, 2.0f, 25.0f);
    if (this->scale <= 150.0f) {
        this->scale = 150.0f;
        this->growingScaleIndex++;
        if (this->growingScaleIndex >= 4) {
            this->growingScaleIndex = 3;
        }
        this->isGrowing = false;
    }
}

void EnFr_ButterflyPath(EnFr* this, GlobalContext* globalCtx) {
    s16 rot_y;
    f32 temp_sin;
    Vec3f vec1;
    Vec3f vec2;

    rot_y = this->actor.shape.rot.y;

    this->xyAngleButterfly += 0x1000;
    Matrix_Translate(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, MTXMODE_NEW);
    Matrix_RotateRPY(this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, MTXMODE_APPLY);

    vec1.y = 0.0f;
    vec1.x = 0.0f;
    vec1.z = 25.0f;
    Matrix_MultVec3f(&vec1, &vec2);

    temp_sin = Math_Sins(this->xyAngleButterfly * 2) * 5.0f;

    this->posButterfly.x = (Math_Sins(rot_y) * temp_sin) + vec2.x;
    this->posButterfly.y = (2.0f * Math_Coss(this->xyAngleButterfly)) + (this->posLogSpot.y + 50.0f);
    this->posButterfly.z = (Math_Coss(rot_y) * temp_sin) + vec2.z;

    Matrix_Translate(this->posButterfly.x, this->posButterfly.y, this->posButterfly.z, MTXMODE_NEW);
    Matrix_RotateRPY(this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, MTXMODE_APPLY);

    vec1.x = 0.0f;
    vec1.y = -15.0f;
    vec1.z = 20.0f;
    Matrix_MultVec3f(&vec1, &this->posButterflyLight);
}

void EnFr_UpdateActive(EnFr* this, GlobalContext* globalCtx) {

    this->jumpCounter++;
    Actor_SetScale(&this->actor, this->scale * 0.0001f);

    if (this->isActive) {
        EnFr_SetScaleActive(this, globalCtx);
    } else {
        Actor_SetHeight(&this->actor, 10.0f);
        this->blinkFunc(this);
        this->actionFunc(this, globalCtx);
        EnFr_IsDivingIntoWater(this, globalCtx);
        EnFr_DivingIntoWater(this, globalCtx);
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        SkelAnime_FrameUpdateMatrix(&this->skelAnimeButterfly);
        EnFr_ButterflyPath(this, globalCtx);
        Actor_MoveForward(&this->actor);
    }
}

s32 EnFr_InitJumpingUp(EnFr* this, s32 frogIndex) {
    EnFr* frog;
    u8 audio_pitch;

    frog = sEnFrPointers.frogs[frogIndex];
    // frog->actor.id
    if (frog && frog->isJumpingUp == false) {
        if (frog->growingScaleIndex == 3) {
            audio_pitch = sPitchLargeFrog[frogIndex];
        } else {
            audio_pitch = sPitchSmallFrog[frogIndex];
        }
        if (this->songIndex == 6) {
            frog->isJumpingToFrogSong = true;
        }
        frog->isJumpingUp = true;
        func_800F4BF4(&frog->actor.projectedPos, NA_SE_EV_FROG_JUMP, (s8)audio_pitch);
        return true;
    }
    return false;
}

void EnFr_Idle(EnFr* this, GlobalContext* globalCtx) {

    Player* player = PLAYER;
    s16 rotY;

    // If Link pulls out ocarina?
    if (player->stateFlags2 & 0x2000000) {
        if (globalCtx->msgCtx.unk_E3EE == 4) {
            globalCtx->msgCtx.unk_E3EE = 0;
        }

        func_800800F8(globalCtx, 0x100E, ~0x62, &this->actor, 0);
        globalCtx->msgCtx.msgMode = 0x37;

        player->actor.posRot.pos.x = this->actor.posRot.pos.x; // x = 990.0f
        player->actor.posRot.pos.y = this->actor.posRot.pos.y; // y = 205.0f
        player->actor.posRot.pos.z = this->actor.posRot.pos.z; // z = -1220.0f

        rotY = this->actor.posRot.rot.y;
        player->actor.shape.rot.y = rotY;
        player->actor.posRot.rot.y = rotY;
        player->currentYaw = rotY;

        this->reward = 0;

        this->actionFunc = EnFr_Activate;
    }

    else if (EnFr_IsAboveAndWithin30xzDist(player, this)) {
        player->unk_6A8 = &this->actor;
    }
}

void EnFr_Activate(EnFr* this, GlobalContext* globalCtx) {

    // Goes to activated idle
    if (globalCtx->msgCtx.msgMode == 0xC) {
        globalCtx->msgCtx.msgMode = 0x37;
        sEnFrPointers.flags = 1;
        this->actionFunc = EnFr_ActivateCheckFrogSong;
    }

    // Goes to Frogs 2 Song
    else if (globalCtx->msgCtx.msgMode == 0x37) {
        sEnFrPointers.flags = 1;
        this->actionFunc = EnFr_ActivateCheckFrogSong;
    }
}

void EnFr_ActivateCheckFrogSong(EnFr* this, GlobalContext* globalCtx) {

    if (sEnFrPointers.flags == 0xB) {

        // Check if all 6 child songs have been played for the frogs
        if ((gSaveContext.eventChkInf[13] & 2)          // ZL (Purple Frog)
            && (gSaveContext.eventChkInf[13] & 4)       // Epona (White Frog)
            && (gSaveContext.eventChkInf[13] & 0x10)    // Saria (Yellow Frog)
            && (gSaveContext.eventChkInf[13] & 8)       // Suns (Blue Frog)
            && (gSaveContext.eventChkInf[13] & 0x20)    // SoT (Red Frog)
            && (gSaveContext.eventChkInf[13] & 0x40)) { // SoS
            this->actionFunc = EnFr_TalkBeforeFrogSong;
            this->songIndex = 6;
            func_8010B680(globalCtx, 0x40AB, &this->actor);
        } else {
            this->songIndex = 0;
            this->actionFunc = EnFr_InitAnimation;
        }
    }
}

void EnFr_InitAnimation(EnFr* this, GlobalContext* globalCtx) {
    EnFr* frog;
    s32 frogIndex;

    for (frogIndex = 0; frogIndex < 5; frogIndex++) {
        frog = sEnFrPointers.frogs[frogIndex];
        if (frog && (frog->actionFunc == EnFr_ChooseJumpFromLogSpot)) {
            continue;
        } else {
            return;
        }
    }
    func_8010BD58(globalCtx, 0x30);
    this->actionFunc = EnFr_ListeningToOcarinaNotes;
}

void EnFr_ListeningToOcarinaNotes(EnFr* this, GlobalContext* globalCtx) {

    this->songIndex = 7; // No Song

    // Ocarina Song played
    switch (globalCtx->msgCtx.unk_E3EE - 1) {
        case 6: // Zeldas Lullaby   (unk_E3EE == 7)
            this->songIndex = 0;
            break;
        case 5: // Epona's Song     (unk_E3EE == 6)
            this->songIndex = 1;
            break;
        case 4: // Saria's Song     (unk_E3EE == 5)
            this->songIndex = 2;
            break;
        case 7: // Suns Song        (unk_E3EE == 8)
            this->songIndex = 3;
            break;
        case 8: // Song of Time     (unk_E3EE == 9)
            this->songIndex = 4;
            break;
        case 9: // Song of Storms   (unk_E3EE == 10)
            this->songIndex = 5;
            break;
        case 3: //                  (unk_E3EE == 4)
            EnFr_OcarinaMistake(this, globalCtx);
            break;

        // Ocarina note played, but no song played
        case 0: //                  (unk_E3EE == 1)

            // Jumping frogs in open ocarina based on ocarina note played
            switch (globalCtx->msgCtx.unk_E410) {
                // A Button Pressed
                case 0:
                    EnFr_InitJumpingUp(this, 1); // Blue Frog Jumps
                    break;

                // C-Down Button
                case 1:
                    EnFr_InitJumpingUp(this, 0); // Yellow Frog Jumps
                    break;

                // C-Right Button
                case 2:
                    EnFr_InitJumpingUp(this, 2); // Red Frog Jumps
                    break;

                // C-Left Button
                case 3:
                    EnFr_InitJumpingUp(this, 3); // Purple Frog Jumps
                    break;

                // C-Up Button
                case 4:
                    EnFr_InitJumpingUp(this, 4); // White Frog Jumps
                    break;
            }
    }
    if (this->songIndex != 7) {
        this->jumpCounter = 0;
        this->actionFunc = EnFr_ChildSong;
    }
}

void EnFr_ChildSong(EnFr* this, GlobalContext* globalCtx) {
    EnFr* frog;
    u8 songIndex;

    if (this->jumpCounter < 48) {
        if (!(this->jumpCounter & 3)) { // % 4
            // 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3 (11 celebratory jumps)
            EnFr_InitJumpingUp(this, sJumpOrder[(this->jumpCounter >> 2) & 7]); // % 8
        }
    }

    else {
        songIndex = this->songIndex;

        // Song of Storms
        if (songIndex == 5) {
            this->actor.textId = 0x40AA;
            EnFr_InitReward(this, globalCtx, false);
        }

        // ZL, Epona, Saria, Suns, SoT
        else if ((gSaveContext.eventChkInf[13] & sSongIndex[songIndex]) == 0) {
            frog = sEnFrPointers.frogs[sSongToFrog[songIndex]];
            // Sound Effect: Player Accomplished Something
            func_80078884(NA_SE_SY_CORRECT_CHIME);
            if (frog->actionFunc == EnFr_ChooseJumpFromLogSpot) {
                frog->isJumpingUp = true;
                frog->isActive = true;
                Audio_PlayActorSound2(&frog->actor, NA_SE_EV_FROG_GROW_UP);
                this->actionFunc = EnFr_ChildSongFirstTime;
            } else {
                this->jumpCounter = 48;
            }
        }

        else {
            this->actor.textId = 0x40A9;
            EnFr_InitReward(this, globalCtx, true);
        }
    }
}

void EnFr_ChildSongFirstTime(EnFr* this, GlobalContext* globalCtx) {
    EnFr* frog;
    frog = sEnFrPointers.frogs[sSongToFrog[this->songIndex]];
    if (frog->isActive == false) {
        this->actor.textId = 0x40A9;
        EnFr_InitReward(this, globalCtx, true);
    }
}

void EnFr_TalkBeforeFrogSong(EnFr* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx))) {
        func_80106CCC(globalCtx);
        this->frogSongTimer = 2;
        this->actionFunc = EnFr_InitFrogSong;
    }
}

void EnFr_CheckOcarinaInputFrogSong(u8 ocarinaNote) {
    EnFr* frog;
    s32 frogIndexButterfly;
    s32 frogIndex;

    switch (ocarinaNote) {
        case 0:
            frogIndexButterfly = 1;
            break;
        case 1:
            frogIndexButterfly = 0;
            break;
        case 2:
            frogIndexButterfly = 2;
            break;
        case 3:
            frogIndexButterfly = 3;
            break;
        case 4:
            frogIndexButterfly = 4;
    }

    // Turn on or off butterfly above frog
    for (frogIndex = 0; frogIndex < 5; frogIndex++) {
        frog = sEnFrPointers.frogs[frogIndex];
        if (frogIndex == frogIndexButterfly) {
            frog->isButterflyDrawn = true;
        } else {
            frog->isButterflyDrawn = false;
        }
    }
}

void EnFr_DeactivateButterfly() {
    s32 frogIndex;
    EnFr* frog;

    for (frogIndex = 0; frogIndex < 5; frogIndex++) {
        frog = sEnFrPointers.frogs[frogIndex];
        frog->isButterflyDrawn = false;
    }
}

u8 EnFr_GetNextNoteFrogSong(u8 ocarinaNoteIndex) {
    // Frogs 2 HP is not obtained, song is set
    if ((gSaveContext.eventChkInf[13] & 1) == 0) {
        return gFrogsSongPtr[ocarinaNoteIndex];
    }

    // Frogs 2 HP is obtained, return random note
    else {
        return sOcarinaNotes[(s32)Math_Rand_ZeroFloat(60.0f) % 5];
    }
}

void EnFr_InitFrogSong(EnFr* this, GlobalContext* globalCtx) {

    if (this->frogSongTimer) {
        this->frogSongTimer--;
    }

    else {
        // Initialize timer for frogs 2 HP (also set to 100 elsewhere?)
        this->frogSongTimer = 40;
        this->ocarinaNoteIndex = 0;
        func_8010BD58(globalCtx, 0x2F);
        this->ocarinaNote = EnFr_GetNextNoteFrogSong(this->ocarinaNoteIndex);
        EnFr_CheckOcarinaInputFrogSong(this->ocarinaNote);
        this->actionFunc = EnFr_ContinueFrogSong;
    }
}

s32 EnFr_IsFrogSongComplete(EnFr* this, GlobalContext* globalCtx) {
    u8 index;
    u8 ocarinaNote;
    MessageContext* temp_msgCtx;
    u8 ocarinaNoteIndex;
    temp_msgCtx = &globalCtx->msgCtx;

    // Using (*temp_msgCtx.unk_E410) was the only way to get it to work???
    if (this->ocarinaNote == (*temp_msgCtx).unk_E410) {
        this->ocarinaNoteIndex++;
        ocarinaNoteIndex = this->ocarinaNoteIndex;

        if (1) {}
        // Frog Song is completed
        if (ocarinaNoteIndex >= 0xE) {
            this->ocarinaNoteIndex = 0xD;
            return true;
        }

        // The first four notes have more frames to receive an input
        if (ocarinaNoteIndex < 4) {
            index = (s32)ocarinaNoteIndex;
        } else {
            index = 4;
        }

        ocarinaNote = EnFr_GetNextNoteFrogSong(ocarinaNoteIndex);
        this->ocarinaNote = ocarinaNote;
        EnFr_CheckOcarinaInputFrogSong(ocarinaNote);

        this->frogSongTimer = sTimerFrogSong[index];
    }
    return false;
}

void EnFr_OcarinaMistake(EnFr* this, GlobalContext* globalCtx) {
    func_80106CCC(globalCtx);
    this->reward = 0;

    // Sound Effect: Make a Mistake Playing the Ocarina
    func_80078884(NA_SE_SY_OCARINA_ERROR);

    // Comment from z_en_fu.c: seems to be related to setting instrument type
    func_800ED858(0);
    sEnFrPointers.flags = 0xC;

    EnFr_DeactivateButterfly();
    this->actionFunc = EnFr_Deactivate;
}

void EnFr_ContinueFrogSong(EnFr* this, GlobalContext* globalCtx) {
    s32 counter;
    EnFr* frog;
    int i;

    if (this->frogSongTimer == 0) {
        EnFr_OcarinaMistake(this, globalCtx);
    } else {
        this->frogSongTimer--;

        // Frogs 2 Song
        if (globalCtx->msgCtx.msgMode == 0x32) {
            counter = 0;
            for (i = 0; i < 5; i++) {
                frog = sEnFrPointers.frogs[i];
                if (frog && frog->actionFunc == EnFr_ChooseJumpFromLogSpot) {
                    continue;
                } else {
                    counter++; // a0
                }
            }

            // Cancel if b is pressed
            if ((counter == 0) && CHECK_BTN_ALL(globalCtx->state.input[0].press.button, BTN_B)) {
                EnFr_OcarinaMistake(this, globalCtx);
                return;
            }
        }

        if (globalCtx->msgCtx.msgMode == 0x33) {
            globalCtx->msgCtx.msgMode = 0x31;

            // Jumping frogs in frogs song based on ocarina note played
            switch (globalCtx->msgCtx.unk_E410) {
                // A Button Pressed
                case 0:
                    EnFr_InitJumpingUp(this, 1); // Blue Frog Jumps
                    break;

                // C-Down Button Pressed
                case 1:
                    EnFr_InitJumpingUp(this, 0); // Yellow Frog Jumps
                    break;

                // C-Right Button
                case 2:
                    EnFr_InitJumpingUp(this, 2); // Red Frog Jumps
                    break;

                // C-Left Button
                case 3:
                    EnFr_InitJumpingUp(this, 3); // Purple Frog Jumps
                    break;

                // C-Up Button
                case 4:
                    EnFr_InitJumpingUp(this, 4); // White Frog Jumps
            }

            if (EnFr_IsFrogSongComplete(this, globalCtx)) {
                this->actor.textId = 0x40AC;
                EnFr_InitReward(this, globalCtx, false);
            }
        }
    }
}

void EnFr_InitReward(EnFr* this, GlobalContext* globalCtx, u8 unk_condition) {
    EnFr_DeactivateButterfly();

    // rupee reward
    if (unk_condition) {
        // Sound Effect: Reveal Treasure Chest
        func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
    }
    // HP reward
    else {
        // Sound Effect: Player Accomplished Something
        func_80078884(NA_SE_SY_CORRECT_CHIME);
    }
    // Disable ocarina
    func_800ED858(0); // Comment from z_en_fu.c: seems to be related to setting instrument type
    globalCtx->msgCtx.msgMode = 55;
    this->actionFunc = EnFr_PrintTextBox;
}

void EnFr_PrintTextBox(EnFr* this, GlobalContext* globalCtx) {
    // Looking up text box message
    func_8010B680(globalCtx, this->actor.textId, &this->actor);
    this->actionFunc = EnFr_TalkBeforeReward;
}

void EnFr_TalkBeforeReward(EnFr* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
        this->frogSongTimer = 100;
        func_80106CCC(globalCtx);
        this->actionFunc = EnFr_SetReward;
    }
}

void EnFr_SetReward(EnFr* this, GlobalContext* globalCtx) {

    u16 songIndex;

    sEnFrPointers.flags = 0xC;
    songIndex = this->songIndex;
    this->actionFunc = EnFr_Deactivate;
    this->reward = 0;

    // 5 Child Song Rewards: 1st time Purple Rupee, afterwards blupee
    if ((songIndex >= 0) && (songIndex < 5)) {
        if (!(gSaveContext.eventChkInf[13] & sSongIndex[songIndex])) {
            gSaveContext.eventChkInf[13] |= sSongIndex[songIndex];
            this->reward = GI_RUPEE_PURPLE;
        } else {
            this->reward = GI_RUPEE_BLUE;
        }
    }

    // Song of Storms Reward: 1st time HP, afterwards blupee
    else if (songIndex == 5) {
        if (!(gSaveContext.eventChkInf[13] & sSongIndex[songIndex])) {
            gSaveContext.eventChkInf[13] |= sSongIndex[songIndex];
            this->reward = GI_HEART_PIECE;
        } else {
            this->reward = GI_RUPEE_BLUE;
        }
    }

    // Frogs 2 Reward: 1st time HP, afterwards purple rupee
    else if (songIndex == 6) {
        if (!(gSaveContext.eventChkInf[13] & sSongIndex[songIndex])) {
            gSaveContext.eventChkInf[13] |= sSongIndex[songIndex];
            this->reward = GI_HEART_PIECE;
        } else {
            this->reward = GI_RUPEE_PURPLE;
        }
    }
}

void EnFr_Deactivate(EnFr* this, GlobalContext* globalCtx) {

    EnFr* frog_loop1;
    EnFr* frog_loop2;
    int frogIndex;

    // Originally was going to have separate butterfly actor
    // Changed to include butterfly as part of frog actor
    // This unused code would have frozen the butterfly actor above frog
    if (this->unusedButterflyActor) {
        this->unusedButterflyActor->freezeTimer = 0xA;
    }

    for (frogIndex = 0; frogIndex < 5; frogIndex++) {

        frog_loop1 = sEnFrPointers.frogs[frogIndex];
        // Translation: There are no frogs!?
        if (!frog_loop1) {
            osSyncPrintf(VT_COL(RED, WHITE));
            osSyncPrintf("%s[%d]カエルがいない！？\n", "../z_en_fr.c", 1604);
            osSyncPrintf(VT_RST);
            return;
        } else if (frog_loop1->isDeactivating != true) {
            return;
        }
    }

    for (frogIndex = 0; frogIndex < 5; frogIndex++) {
        frog_loop2 = sEnFrPointers.frogs[frogIndex];
        // Translation: There are no frogs!?
        if (!frog_loop2) {
            osSyncPrintf(VT_COL(RED, WHITE));
            osSyncPrintf("%s[%d]カエルがいない！？\n", "../z_en_fr.c", 1618);
            osSyncPrintf(VT_RST);
            return;
        }

        frog_loop2->isDeactivating = false;
    }

    globalCtx->msgCtx.unk_E3EE = 4;
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_FROG_CRY_0);

    if (this->reward == 0) {
        this->actionFunc = EnFr_Idle;
    } else {
        this->actionFunc = EnFr_GiveReward;
        func_8002F434(&this->actor, globalCtx, this->reward, 30.0f, 100.0f);
    }
}

void EnFr_GiveReward(EnFr* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actor.parent = NULL;
        this->actionFunc = EnFr_SetIdle;
    } else {
        func_8002F434(&this->actor, globalCtx, this->reward, 30.0f, 100.0f);
    }
}

void EnFr_SetIdle(EnFr* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && (func_80106BC8(globalCtx))) {
        this->actionFunc = EnFr_Idle;
    }
}

void EnFr_UpdateIdle(EnFr* this, GlobalContext* globalCtx) {

    if (BREG(0)) {
        DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                               this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, 1.0f, 1.0f,
                               1.0f, 255, 0, 0, 255, 4, globalCtx->state.gfxCtx);
    }
    this->jumpCounter++;
    this->actionFunc(this, globalCtx);
}

s32 EnFr_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                          Gfx** gfx) {
    if ((limbIndex == 7) || (limbIndex == 8)) {
        *dList = NULL;
    }
    return 0;
}

void EnFr_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {

    EnFr* this = THIS;

    if ((limbIndex == 7) || (limbIndex == 8)) {

        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_fr.c", 1735);
        Matrix_Push();
        func_800D1FD4(&globalCtx->mf_11DA0);

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_fr.c", 1738),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, *dList);
        Matrix_Pull();
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_fr.c", 1741);
    }
}

void EnFr_Draw(Actor* thisx, GlobalContext* globalCtx) {

    s16 NoGlowRadius;
    EnFr* this = THIS;
    s16 frogindex;

    frogindex = this->actor.params - 1;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_fr.c", 1754);
    // gfxCtx = globalCtx->state.gfxCtx;

    func_80093D18(globalCtx->state.gfxCtx);

    // For the frogs 2 HP, the frog with the next note and the butterfly lights up
    if (this->isButterflyDrawn) {
        NoGlowRadius = 95;
    } else {
        NoGlowRadius = -1;
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, 255);
    Lights_PointNoGlowSetInfo(&this->lightInfo, this->posButterflyLight.x, this->posButterflyLight.y,
                              this->posButterflyLight.z, 255, 255, 255, NoGlowRadius);
    gDPSetEnvColor(POLY_OPA_DISP++, sEnFrColor[frogindex].red, sEnFrColor[frogindex].green, sEnFrColor[frogindex].blue,
                   255);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sDLists[this->eyeTexIndex]));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sDLists[this->eyeTexIndex]));
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                          EnFr_OverrideLimbDraw, EnFr_PostLimbDraw, this);

    if (this->isButterflyDrawn) {
        Matrix_Translate(this->posButterfly.x, this->posButterfly.y, this->posButterfly.z, MTXMODE_NEW);
        Matrix_Scale(0.015f, 0.015f, 0.015f, MTXMODE_APPLY);
        Matrix_RotateRPY(this->actor.shape.rot.x, this->actor.shape.rot.y, this->actor.shape.rot.z, MTXMODE_APPLY);
        SkelAnime_DrawOpa(globalCtx, this->skelAnimeButterfly.skeleton, this->skelAnimeButterfly.limbDrawTbl, NULL,
                          NULL, NULL);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_fr.c", 1816);
}
