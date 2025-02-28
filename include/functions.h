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

void SaveContext_Init(void);

void* MemCpy(void* dest, const void* src, s32 len);

void MapMark_Init(PlayState* play);
void MapMark_ClearPointers(PlayState* play);
void MapMark_Draw(PlayState* play);
void Sched_FlushTaskQueue(void);

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
void Graph_ThreadEntry(void*);

void SysCfb_Init(s32 n64dd);
void* SysCfb_GetFbPtr(s32 idx);
void* SysCfb_GetFbEnd(void);

void RcpUtils_PrintRegisterStatus(void);
void RcpUtils_Reset(void);

void SystemHeap_Init(void* start, u32 size);

f32 absf(f32);

void Regs_InitData(PlayState* play);

#endif
