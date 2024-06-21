#ifndef Z_PLAY_H
#define Z_PLAY_H

#include "ultra64.h"
#include "z64game.h"
#include "z64camera.h"
#include "z64view.h"
#include "z64light.h"
#include "z64bgcheck.h"
#include "z64soundsource.h"
#include "z64sram_buffer.h"
#include "z64skybox.h"
#include "z64message.h"
#include "z64interface.h"
#include "z64pause.h"
#include "z64game_over.h"
#include "z64environment.h"
#include "z64animation.h"
#include "z64object.h"
#include "prerender.h"
#include "z64transition.h"
#include "z64scene.h"
#include "z64quest_hint_commands.h"
#include "z64collision_check.h"

typedef struct {
    /* 0x00 */ u8   seqId;
    /* 0x01 */ u8   natureAmbienceId;
} SequenceContext; // size = 0x2

typedef struct {
    /* 0x00 */ s32 enabled;
    /* 0x04 */ s32 timer;
} FrameAdvanceContext; // size = 0x8

typedef struct PlayState {
    /* 0x00000 */ GameState state;
    /* 0x000A4 */ s16 sceneId;
    /* 0x000A6 */ u8 sceneDrawConfig;
    /* 0x000A7 */ char unk_A7[0x9];
    /* 0x000B0 */ void* sceneSegment;
    /* 0x000B8 */ View view;
    /* 0x001E0 */ Camera mainCamera;
    /* 0x0034C */ Camera subCameras[NUM_CAMS - CAM_ID_SUB_FIRST];
    /* 0x00790 */ Camera* cameraPtrs[NUM_CAMS];
    /* 0x007A0 */ s16 activeCamId;
    /* 0x007A2 */ s16 nextCamId;
    /* 0x007A4 */ SequenceContext sequenceCtx;
    /* 0x007A8 */ LightContext lightCtx;
    /* 0x007B8 */ FrameAdvanceContext frameAdvCtx;
    /* 0x007C0 */ CollisionContext colCtx;
    /* 0x01C24 */ ActorContext actorCtx;
    /* 0x01D64 */ CutsceneContext csCtx; // "demo_play"
    /* 0x01DB4 */ SfxSource sfxSources[16];
    /* 0x01F74 */ SramContext sramCtx;
    /* 0x01F78 */ SkyboxContext skyboxCtx;
    /* 0x020D8 */ MessageContext msgCtx; // "message"
    /* 0x104F0 */ InterfaceContext interfaceCtx; // "parameter"
    /* 0x10760 */ PauseContext pauseCtx;
    /* 0x10A20 */ GameOverContext gameOverCtx;
    /* 0x10A24 */ EnvironmentContext envCtx;
    /* 0x10B20 */ AnimTaskQueue animTaskQueue;
    /* 0x117A4 */ ObjectContext objectCtx;
    /* 0x11CBC */ RoomContext roomCtx;
    /* 0x11D34 */ TransitionActorContext transiActorCtx;
    /* 0x11D3C */ void (*playerInit)(Player* player, struct PlayState* play, FlexSkeletonHeader* skelHeader);
    /* 0x11D40 */ void (*playerUpdate)(Player* player, struct PlayState* play, Input* input);
    /* 0x11D44 */ int (*isPlayerDroppingFish)(struct PlayState* play);
    /* 0x11D48 */ s32 (*startPlayerFishing)(struct PlayState* play);
    /* 0x11D4C */ s32 (*grabPlayer)(struct PlayState* play, Player* player);
    /* 0x11D50 */ s32 (*tryPlayerCsAction)(struct PlayState* play, Actor* actor, s32 csAction);
    /* 0x11D54 */ void (*func_11D54)(Player* player, struct PlayState* play);
    /* 0x11D58 */ s32 (*damagePlayer)(struct PlayState* play, s32 damage);
    /* 0x11D5C */ void (*talkWithPlayer)(struct PlayState* play, Actor* actor);
    /* 0x11D60 */ MtxF viewProjectionMtxF;
    /* 0x11DA0 */ MtxF billboardMtxF;
    /* 0x11DE0 */ Mtx* billboardMtx;
    /* 0x11DE4 */ u32 gameplayFrames;
    /* 0x11DE8 */ u8 linkAgeOnLoad;
    /* 0x11DE9 */ u8 haltAllActors;
    /* 0x11DEA */ u8 spawn;
    /* 0x11DEB */ u8 numActorEntries;
    /* 0x11DEC */ u8 numRooms;
    /* 0x11DF0 */ RomFile* roomList;
    /* 0x11DF4 */ ActorEntry* playerEntry;
    /* 0x11DF8 */ ActorEntry* actorEntryList;
    /* 0x11DFC */ void* unk_11DFC;
    /* 0x11E00 */ Spawn* spawnList;
    /* 0x11E04 */ s16* exitList;
    /* 0x11E08 */ Path* pathList;
    /* 0x11E0C */ QuestHintCmd* naviQuestHints;
    /* 0x11E10 */ void* specialEffects;
    /* 0x11E14 */ u8 skyboxId;
    /* 0x11E15 */ s8 transitionTrigger; // "fade_direction"
    /* 0x11E16 */ s16 unk_11E16;
    /* 0x11E18 */ s16 bgCoverAlpha;
    /* 0x11E1A */ s16 nextEntranceIndex;
    /* 0x11E1C */ char unk_11E1C[0x40];
    /* 0x11E5C */ s8 shootingGalleryStatus;
    /* 0x11E5D */ s8 bombchuBowlingStatus; // "bombchu_game_flag"
    /* 0x11E5E */ u8 transitionType;
    /* 0x11E60 */ CollisionCheckContext colChkCtx;
    /* 0x120FC */ u16 cutsceneFlags[20];
    /* 0x12124 */ PreRender pauseBgPreRender;
    /* 0x12174 */ char unk_12174[0x53];
    /* 0x121C7 */ s8 unk_121C7;
    /* 0x121C8 */ TransitionContext transitionCtx;
    /* 0x12418 */ char unk_12418[0x3];
    /* 0x1241B */ u8 transitionMode; // "fbdemo_wipe_modem"
    /* 0x1241C */ TransitionFade transitionFadeFlash; // Transition fade instance which flashes screen, see R_TRANS_FADE_FLASH_ALPHA_STEP
    /* 0x12428 */ char unk_12428[0x3];
    /* 0x1242B */ u8 viewpoint; // toggleable camera setting by shops or player. Is also equal to the bgCamIndex + 1
    /* 0x1242C */ SceneTableEntry* loadedScene;
    /* 0x12430 */ char unk_12430[0xE8];
} PlayState; // size = 0x12518

#endif
