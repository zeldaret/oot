#ifndef _Z_KALEIDO_SCOPE_H_
#define _Z_KALEIDO_SCOPE_H_

#include "ultra64.h"
#include "global.h"

extern u8 D_8082A420[];
extern s16 D_8082AAEC[];
extern s16 D_8082AB2C[];
extern u8 D_8082ABFC[];
extern u8 D_8082A014[][4];
extern u8 D_8082AC7C[];

void KaleidoScope_DrawQuestStatus(GlobalContext* globalCtx, GraphicsContext* gfxCtx);
s32 func_80815CC8(PauseContext* pauseCtx, s32 arg1);
void KaleidoScope_DrawDebugMenu(GlobalContext* globalCtx);
void KaleidoScope_DrawPlayerWork(GlobalContext* globalCtx);
void KaleidoScope_DrawEquipment(GlobalContext* globalCtx);
void func_80819E14(PauseContext* pauseCtx, u16 arg1, Vtx* arg2);
void KaleidoScope_DrawInventory(GlobalContext* globalCtx);
void func_8081AD44(GlobalContext* globalCtx);
void KaleidoScope_DrawDungeonMap(GlobalContext* globalCtx, GraphicsContext* gfxCtx);
void KaleidoScope_DrawOverworldMap(GlobalContext* globalCtx, GraphicsContext* gfxCtx);
void func_8081EFF0(GlobalContext* globalCtx);
void PauseMapMark_Draw(GlobalContext* globalCtx);
Gfx* KaleidoScope_QuadTextureIA4(Gfx* gfx, void* texture, s16 width, s16 height, u16 point);
Gfx* KaleidoScope_QuadTextureIA8(Gfx* gfx, void* texture, s16 width, s16 height, u16 point);
void func_8081F81C(GlobalContext* globalCtx, u16 arg1);
void KaleidoScope_DrawQuadTextureRGBA32(GraphicsContext* gfxCtx, void* texture, u16 width, u16 height, u16 point);
void KaleidoScope_ProcessPlayerPreRender();
void KaleidoScope_SetupPlayerPreRender(GlobalContext* globalCtx);
void func_8081FE30(GlobalContext* globalCtx, u16 arg1);
void func_80826BA8(GlobalContext* globalCtx);

#endif
