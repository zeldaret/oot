#ifndef Z64PLAY_H
#define Z64PLAY_H

#include "ultra64.h"

#include "prerender.h"

#include "z64actor.h"
#include "z64bgcheck.h"
#include "z64camera.h"
#include "z64cutscene.h"
#include "z64environment.h"
#include "z64frame_advance.h"
#include "z64game.h"
#include "z64game_over.h"
#include "z64interface.h"
#include "z64light.h"
#include "z64message.h"
#include "z64object.h"
#include "z64pause.h"
#include "z64scene.h"
#include "z64sfx_source.h"
#include "z64skybox.h"
#include "z64sram.h"
#include "z64transition.h"
#include "z64view.h"

union Color_RGBA8_u32;
struct QuestHintCmd;
struct VisMono;

typedef struct SceneSequences {
    /* 0x00 */ u8 seqId;
    /* 0x01 */ u8 natureAmbienceId;
} SceneSequences; // size = 0x2

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
    /* 0x007A4 */ SceneSequences sceneSequences;
    /* 0x007A8 */ LightContext lightCtx;
    /* 0x007B8 */ FrameAdvanceContext frameAdvCtx;
    /* 0x007C0 */ CollisionContext colCtx;
    /* 0x01C24 */ ActorContext actorCtx;
    /* 0x01D64 */ CutsceneContext csCtx; // "demo_play"
    /* 0x01DB4 */ SfxSource sfxSources[SFX_SOURCE_COUNT];
    /* 0x01F74 */ SramContext sramCtx;
    /* 0x01F78 */ SkyboxContext skyboxCtx;
    /* 0x020D8 */ MessageContext msgCtx;         // "message"
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
    /* 0x11E0C */ struct QuestHintCmd* naviQuestHints;
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

#define GET_ACTIVE_CAM(play) ((play)->cameraPtrs[(play)->activeCamId])
#define GET_PLAYER(play) ((Player*)(play)->actorCtx.actorLists[ACTORCAT_PLAYER].head)

void Play_SetViewpoint(PlayState* this, s16 viewpoint);
s32 Play_CheckViewpoint(PlayState* this, s16 viewpoint);
void Play_SetShopBrowsingViewpoint(PlayState* this);
Gfx* Play_SetFog(PlayState* this, Gfx* gfx);
void Play_Destroy(GameState* thisx);
void Play_Init(GameState* thisx);
void Play_Main(GameState* thisx);
int Play_InCsMode(PlayState* this);
f32 func_800BFCB8(PlayState* this, MtxF* mf, Vec3f* pos);
void* Play_LoadFile(PlayState* this, RomFile* file);
void Play_GetScreenPos(PlayState* this, Vec3f* src, Vec3f* dest);
s16 Play_CreateSubCamera(PlayState* this);
s16 Play_GetActiveCamId(PlayState* this);
s16 Play_ChangeCameraStatus(PlayState* this, s16 camId, s16 status);
void Play_ClearCamera(PlayState* this, s16 camId);
void Play_ClearAllSubCameras(PlayState* this);
Camera* Play_GetCamera(PlayState* this, s16 camId);
s32 Play_SetCameraAtEye(PlayState* this, s16 camId, Vec3f* at, Vec3f* eye);
s32 Play_SetCameraAtEyeUp(PlayState* this, s16 camId, Vec3f* at, Vec3f* eye, Vec3f* up);
s32 Play_SetCameraFov(PlayState* this, s16 camId, f32 fov);
s32 Play_SetCameraRoll(PlayState* this, s16 camId, s16 roll);
void Play_CopyCamera(PlayState* this, s16 destCamId, s16 srcCamId);
s32 Play_InitCameraDataUsingPlayer(PlayState* this, s16 camId, Player* player, s16 setting);
s32 Play_RequestCameraSetting(PlayState* this, s16 camId, s16 setting);
void Play_ReturnToMainCam(PlayState* this, s16 camId, s16 duration);
void Play_SaveSceneFlags(PlayState* this);
void Play_SetupRespawnPoint(PlayState* this, s32 respawnMode, s32 playerParams);
void Play_TriggerVoidOut(PlayState* this);
void Play_TriggerRespawn(PlayState* this);
int Play_CamIsNotFixed(PlayState* this);

#if OOT_DEBUG
extern void* gDebugCutsceneScript;
#endif

extern TransitionTile gTransitionTile;
extern s32 gTransitionTileState;
extern struct VisMono gPlayVisMono;
extern union Color_RGBA8_u32 gVisMonoColor;

#endif
