#ifndef FUNCTIONS_H
#define FUNCTIONS_H

#include "z64.h"
#include "macros.h"

void bootproc(void);
void Main_ThreadEntry(void* arg);
void Idle_ThreadEntry(void* arg);
void ViConfig_UpdateVi(u32 black);
void ViConfig_UpdateBlack(void);
#if !PLATFORM_IQUE
void Yaz0_Decompress(uintptr_t romStart, u8* dst, size_t size);
#else
void gzip_decompress(uintptr_t romStart, u8* dst, size_t size);
#endif
void Locale_Init(void);
void Locale_ResetRegion(void);
#if DEBUG_FEATURES
void isPrintfInit(void);
#endif
void rmonPrintf(const char* fmt, ...);
#if DEBUG_FEATURES
void* is_proutSyncPrintf(void* arg, const char* str, size_t count);
NORETURN void func_80002384(const char* exp, const char* file, int line);
#endif
OSPiHandle* osDriveRomInit(void);
void Mio0_Decompress(u8* src, u8* dst);

void FlagSet_Update(PlayState* play);
void Overlay_LoadGameState(GameStateOverlay* overlayEntry);
void Overlay_FreeGameState(GameStateOverlay* overlayEntry);

void ActorOverlayTable_LogPrint(void);
void ActorOverlayTable_Init(void);
void ActorOverlayTable_Cleanup(void);

void SaveContext_Init(void);
s32 func_800635D0(s32);
void Regs_Init(void);
void DebugCamera_ScreenText(u8 x, u8 y, const char* text);
void DebugCamera_ScreenTextColored(u8 x, u8 y, u8 colorIndex, const char* text);
#if DEBUG_FEATURES
void Regs_UpdateEditor(Input* input);
#endif
void Debug_DrawText(GraphicsContext* gfxCtx);

void* MemCpy(void* dest, const void* src, s32 len);

u16 QuestHint_GetSariaTextId(PlayState* play);
u16 QuestHint_GetNaviTextId(PlayState* play);
u16 MaskReaction_GetTextId(PlayState* play, u32 maskReactionSet);
void CutsceneFlags_UnsetAll(PlayState* play);
void CutsceneFlags_Set(PlayState* play, s16 flag);
void CutsceneFlags_Unset(PlayState* play, s16 flag);
s32 CutsceneFlags_Get(PlayState* play, s16 flag);

s32 Kanji_OffsetFromShiftJIS(s32 character);
#if PLATFORM_IQUE
void Font_LoadCharCHN(Font* font, u16 character, u16 codePointIndex);
#endif
void Font_LoadCharWide(Font* font, u16 character, u16 codePointIndex);
void Font_LoadChar(Font* font, u8 character, u16 codePointIndex);
void Font_LoadMessageBoxIcon(Font* font, u16 icon);
void Font_LoadOrderedFont(Font* font);

void Health_InitMeter(PlayState* play);
void Health_UpdateMeter(PlayState* play);
void Health_DrawMeter(PlayState* play);
void Health_UpdateBeatingHeart(PlayState* play);
u32 Health_IsCritical(void);

void MapMark_Init(PlayState* play);
void MapMark_ClearPointers(PlayState* play);
void MapMark_Draw(PlayState* play);
void PreNmiBuff_Init(PreNmiBuff* this);
void PreNmiBuff_SetReset(PreNmiBuff* this);
u32 PreNmiBuff_IsResetting(PreNmiBuff* this);
void Sched_FlushTaskQueue(void);

Path* Path_GetByIndex(PlayState* play, s16 index, s16 max);
f32 Path_OrientAndGetDistSq(Actor* actor, Path* path, s16 waypoint, s16* yaw);
void Path_CopyLastPoint(Path* path, Vec3f* dest);

void PreNMI_Init(GameState* thisx);

void func_80095AA0(PlayState* play, Room* room, Input* input, s32 arg3);
void Room_DrawBackground2D(Gfx** gfxP, void* tex, void* tlut, u16 width, u16 height, u8 fmt, u8 siz, u16 tlutMode,
                           u16 tlutCount, f32 offsetX, f32 offsetY);
void Room_Init(PlayState* play, Room* room);
u32 Room_SetupFirstRoom(PlayState* play, RoomContext* roomCtx);
s32 Room_RequestNewRoom(PlayState* play, RoomContext* roomCtx, s32 roomNum);
s32 Room_ProcessRoomRequest(PlayState* play, RoomContext* roomCtx);
void Room_Draw(PlayState* play, Room* room, u32 flags);
void Room_FinishRoomChange(PlayState* play, RoomContext* roomCtx);
void Sample_Destroy(GameState* thisx);
void Sample_Init(GameState* thisx);

void Skin_UpdateVertices(MtxF* mtx, SkinVertex* skinVertices, SkinLimbModif* modifEntry, Vtx* vtxBuf, Vec3f* pos);
void Skin_DrawAnimatedLimb(GraphicsContext* gfxCtx, Skin* skin, s32 limbIndex, s32 arg3, s32 drawFlags);
void Skin_DrawLimb(GraphicsContext* gfxCtx, Skin* skin, s32 limbIndex, Gfx* dlistOverride, s32 drawFlags);
void func_800A6330(Actor* actor, PlayState* play, Skin* skin, SkinPostDraw postDraw, s32 setTranslation);
void func_800A6360(Actor* actor, PlayState* play, Skin* skin, SkinPostDraw postDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 setTranslation);
void func_800A6394(Actor* actor, PlayState* play, Skin* skin, SkinPostDraw postDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 setTranslation, s32 arg6);
void func_800A63CC(Actor* actor, PlayState* play, Skin* skin, SkinPostDraw postDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 setTranslation, s32 arg6, s32 drawFlags);
void Skin_GetLimbPos(Skin* skin, s32 limbIndex, Vec3f* offset, Vec3f* dst);
void Skin_Init(PlayState* play, Skin* skin, SkeletonHeader* skeletonHeader, AnimationHeader* animationHeader);
void Skin_Free(PlayState* play, Skin* skin);
s32 Skin_ApplyAnimTransformations(Skin* skin, MtxF* limbMatrices, Actor* actor, s32 setTranslation);

void Sram_InitNewSave(void);
void Sram_InitDebugSave(void);
void Sram_OpenSave(SramContext* sramCtx);
void Sram_WriteSave(SramContext* sramCtx);
void Sram_VerifyAndLoadAllSaves(FileSelectState* fileSelect, SramContext* sramCtx);
void Sram_InitSave(FileSelectState* fileSelect, SramContext* sramCtx);
void Sram_EraseSave(FileSelectState* fileSelect, SramContext* sramCtx);
void Sram_CopySave(FileSelectState* fileSelect, SramContext* sramCtx);
void Sram_WriteSramHeader(SramContext* sramCtx);
void Sram_InitSram(GameState* gameState, SramContext* sramCtx);
void Sram_Alloc(GameState* gameState, SramContext* sramCtx);
void Sram_Init(PlayState* play, SramContext* sramCtx);
void SsSram_Init(s32 addr, u8 handleType, u8 handleDomain, u8 handleLatency, u8 handlePageSize, u8 handleRelDuration,
                 u8 handlePulse, u32 handleSpeed);
void SsSram_Dma(void* dramAddr, size_t size, s32 direction);
void SsSram_ReadWrite(s32 addr, void* dramAddr, size_t size, s32 direction);

void ViMode_LogPrint(OSViMode* osViMode);
void ViMode_Configure(ViMode* viMode, s32 type, s32 tvType, s32 loRes, s32 antialiasOff, s32 modeN, s32 fb16Bit,
                      s32 width, s32 height, s32 leftAdjust, s32 rightAdjust, s32 upperAdjust, s32 lowerAdjust);
void ViMode_Save(ViMode* viMode);
void ViMode_Load(ViMode* viMode);
void ViMode_Init(ViMode* viMode);
void ViMode_Destroy(ViMode* viMode);
void ViMode_ConfigureFeatures(ViMode* viMode, s32 viFeatures);
void ViMode_Update(ViMode* viMode, Input* input);
void PlayerCall_InitFuncPtrs(void);
void TransitionTile_Destroy(TransitionTile* this);
TransitionTile* TransitionTile_Init(TransitionTile* this, s32 cols, s32 rows);
void TransitionTile_Draw(TransitionTile* this, Gfx** gfxP);
void TransitionTile_Update(TransitionTile* this);
void TransitionTriforce_Start(void* thisx);
void* TransitionTriforce_Init(void* thisx);
void TransitionTriforce_Destroy(void* thisx);
void TransitionTriforce_Update(void* thisx, s32 updateRate);
void TransitionTriforce_SetColor(void* thisx, u32 color);
void TransitionTriforce_SetType(void* thisx, s32 type);
void TransitionTriforce_Draw(void* thisx, Gfx** gfxP);
s32 TransitionTriforce_IsDone(void* thisx);
void TransitionWipe_Start(void* thisx);
void* TransitionWipe_Init(void* thisx);
void TransitionWipe_Destroy(void* thisx);
void TransitionWipe_Update(void* thisx, s32 updateRate);
void TransitionWipe_Draw(void* thisx, Gfx** gfxP);
s32 TransitionWipe_IsDone(void* thisx);
void TransitionWipe_SetType(void* thisx, s32 type);
void TransitionWipe_SetColor(void* thisx, u32 color);
void TransitionCircle_Start(void* thisx);
void* TransitionCircle_Init(void* thisx);
void TransitionCircle_Destroy(void* thisx);
void TransitionCircle_Update(void* thisx, s32 updateRate);
void TransitionCircle_Draw(void* thisx, Gfx** gfxP);
s32 TransitionCircle_IsDone(void* thisx);
void TransitionCircle_SetType(void* thisx, s32 type);
void TransitionCircle_SetColor(void* thisx, u32 color);
void TransitionCircle_SetUnkColor(void* thisx, u32 color);
void TransitionFade_Start(void* thisx);
void* TransitionFade_Init(void* thisx);
void TransitionFade_Destroy(void* thisx);
void TransitionFade_Update(void* thisx, s32 updateRate);
void TransitionFade_Draw(void* thisx, Gfx** gfxP);
s32 TransitionFade_IsDone(void* thisx);
void TransitionFade_SetColor(void* thisx, u32 color);
void TransitionFade_SetType(void* thisx, s32 type);

void DebugCamera_Init(DebugCam* debugCam, Camera* cameraPtr);
void DebugCamera_Enable(DebugCam* debugCam, Camera* cam);
void DebugCamera_Update(DebugCam* debugCam, Camera* cam);
void DebugCamera_Reset(Camera* cam, DebugCam* debugCam);
void func_800BB0A0(f32 u, Vec3f* pos, f32* roll, f32* viewAngle, f32* point0, f32* point1, f32* point2, f32* point3);
s32 func_800BB2B4(Vec3f* pos, f32* roll, f32* fov, CutsceneCameraPoint* point, s16* keyFrame, f32* curFrame);

void PreRender_SetValuesSave(PreRender* this, u32 width, u32 height, void* fbuf, void* zbuf, void* cvg);
void PreRender_Init(PreRender* this);
void PreRender_SetValues(PreRender* this, u32 width, u32 height, void* fbuf, void* zbuf);
void PreRender_Destroy(PreRender* this);
void func_800C170C(PreRender* this, Gfx** gfxP, void* buf, void* bufSave, u32 r, u32 g, u32 b, u32 a);
void func_800C1AE8(PreRender* this, Gfx** gfxP, void* fbuf, void* fbufSave);
void PreRender_SaveZBuffer(PreRender* this, Gfx** gfxP);
void PreRender_SaveFramebuffer(PreRender* this, Gfx** gfxP);
void PreRender_DrawCoverage(PreRender* this, Gfx** gfxP);
void PreRender_RestoreZBuffer(PreRender* this, Gfx** gfxP);
void func_800C213C(PreRender* this, Gfx** gfxP);
void PreRender_RestoreFramebuffer(PreRender* this, Gfx** gfxP);
void PreRender_CopyImageRegion(PreRender* this, Gfx** gfxP);
void PreRender_ApplyFilters(PreRender* this);
void GameState_SetFBFilter(Gfx** gfxP);
void GameState_Draw(GameState* gameState, GraphicsContext* gfxCtx);
void GameState_SetFrameBuffer(GraphicsContext* gfxCtx);
void GameState_ReqPadData(GameState* gameState);
void GameState_Update(GameState* gameState);
void GameState_InitArena(GameState* gameState, size_t size);
void GameState_Realloc(GameState* gameState, size_t size);
void GameState_Init(GameState* gameState, GameStateFunc init, GraphicsContext* gfxCtx);
void GameState_Destroy(GameState* gameState);
GameStateFunc GameState_GetInit(GameState* gameState);
u32 GameState_IsRunning(GameState* gameState);
#if DEBUG_FEATURES
void* GameState_Alloc(GameState* gameState, size_t size, const char* file, int line);
void* GameAlloc_MallocDebug(GameAlloc* this, u32 size, const char* file, int line);
#endif
void* GameAlloc_Malloc(GameAlloc* this, u32 size);
void GameAlloc_Free(GameAlloc* this, void* data);
void GameAlloc_Cleanup(GameAlloc* this);
void GameAlloc_Init(GameAlloc* this);
void Graph_InitTHGA(GraphicsContext* gfxCtx);
GameStateOverlay* Graph_GetNextGameState(GameState* gameState);
void Graph_Init(GraphicsContext* gfxCtx);
void Graph_Destroy(GraphicsContext* gfxCtx);
void Graph_TaskSet00(GraphicsContext* gfxCtx);
void Graph_Update(GraphicsContext* gfxCtx, GameState* gameState);
void Graph_ThreadEntry(void*);

ListAlloc* ListAlloc_Init(ListAlloc* this);
void* ListAlloc_Alloc(ListAlloc* this, u32 size);
void ListAlloc_Free(ListAlloc* this, void* data);
void ListAlloc_FreeAll(ListAlloc* this);
void Main(void* arg);
void SysCfb_Init(s32 n64dd);
void* SysCfb_GetFbPtr(s32 idx);
void* SysCfb_GetFbEnd(void);

u64* SysUcode_GetUCodeBoot(void);
size_t SysUcode_GetUCodeBootSize(void);
u64* SysUcode_GetUCode(void);
u64* SysUcode_GetUCodeData(void);
NORETURN void func_800D31A0(void);
void func_800D31F0(void);
void func_800D3210(void);
void* DebugArena_Malloc(u32 size);
void* DebugArena_MallocR(u32 size);
void* DebugArena_Realloc(void* ptr, u32 newSize);
void DebugArena_Free(void* ptr);
void* DebugArena_Calloc(u32 num, u32 size);
void DebugArena_GetSizes(u32* outMaxFree, u32* outFree, u32* outAlloc);
void DebugArena_Check(void);
void DebugArena_Init(void* start, u32 size);
void DebugArena_Cleanup(void);
s32 DebugArena_IsInitialized(void);
#if DEBUG_FEATURES
void DebugArena_CheckPointer(void* ptr, u32 size, const char* name, const char* action);
void* DebugArena_MallocDebug(u32 size, const char* file, int line);
void* DebugArena_MallocRDebug(u32 size, const char* file, int line);
void* DebugArena_ReallocDebug(void* ptr, u32 newSize, const char* file, int line);
void DebugArena_FreeDebug(void* ptr, const char* file, int line);
void DebugArena_Display(void);
#endif

void RcpUtils_PrintRegisterStatus(void);
void RcpUtils_Reset(void);
void* Overlay_AllocateAndLoad(uintptr_t vromStart, uintptr_t vromEnd, void* vramStart, void* vramEnd);
void MtxConv_F2L(Mtx* m1, MtxF* m2);
void MtxConv_L2F(MtxF* m1, Mtx* m2);
void Overlay_Relocate(void* allocatedRamAddr, OverlayRelocationSection* ovlRelocs, void* vramStart);
size_t Overlay_Load(uintptr_t vromStart, uintptr_t vromEnd, void* vramStart, void* vramEnd, void* allocatedRamAddr);
// ? func_800FC800(?);
// ? func_800FC83C(?);
// ? func_800FCAB4(?);
void SystemHeap_Init(void* start, u32 size);

f32 absf(f32);

void Regs_InitData(PlayState* play);

void Setup_Init(GameState* thisx);
void Setup_Destroy(GameState* thisx);
void ConsoleLogo_Init(GameState* thisx);
void ConsoleLogo_Destroy(GameState* thisx);
void MapSelect_Init(GameState* thisx);
void MapSelect_Destroy(GameState* thisx);
void TitleSetup_Init(GameState* thisx);
void TitleSetup_Destroy(GameState* thisx);
void FileSelect_Init(GameState* thisx);
void FileSelect_Destroy(GameState* thisx);

#endif
