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

void* MemCpy(void* dest, const void* src, s32 len);

void MapMark_Init(PlayState* play);
void MapMark_ClearPointers(PlayState* play);
void MapMark_Draw(PlayState* play);
void PreNmiBuff_Init(PreNmiBuff* this);
void PreNmiBuff_SetReset(PreNmiBuff* this);
u32 PreNmiBuff_IsResetting(PreNmiBuff* this);
void Sched_FlushTaskQueue(void);

void PreNMI_Init(GameState* thisx);

void Sample_Destroy(GameState* thisx);
void Sample_Init(GameState* thisx);

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

NORETURN void func_800D31A0(void);
void func_800D31F0(void);
void func_800D3210(void);

void RcpUtils_PrintRegisterStatus(void);
void RcpUtils_Reset(void);
void* Overlay_AllocateAndLoad(uintptr_t vromStart, uintptr_t vromEnd, void* vramStart, void* vramEnd);
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
