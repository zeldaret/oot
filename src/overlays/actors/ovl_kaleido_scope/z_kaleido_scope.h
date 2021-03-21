#ifndef _Z_KALEIDO_SCOPE_H_
#define _Z_KALEIDO_SCOPE_H_

#include "ultra64.h"
#include "global.h"

extern u8 D_8082A420[];
extern s16 D_8082AAEC[];
extern s16 D_8082AB2C[];
extern u8 D_8082ABFC[];
extern u8 D_8082AC7C[];

void func_80813820(GlobalContext* globalCtx, GraphicsContext* gfxCtx);
s32 func_80815CC8(PauseContext* pauseCtx, s32 arg1);
void func_808161AC(GlobalContext* globalCtx);
void func_8081819C(GlobalContext* globalCtx);
void func_80818340(GlobalContext* globalCtx);
void func_80819E14(PauseContext* pauseCtx, u16 arg1, Vtx* arg2);
void func_80819E6C(GlobalContext* globalCtx);
void func_8081AD44(GlobalContext* globalCtx);
void func_8081BB10(GlobalContext* globalCtx, GraphicsContext* gfxCtx);
void func_8081D398(GlobalContext* globalCtx, GraphicsContext* gfxCtx);
void func_8081EFF0(GlobalContext* globalCtx);
void PauseMapMark_Draw(GlobalContext* globalCtx);
Gfx* func_8081F334(Gfx* gfx, void* texture, s16 width, s16 height, u16 arg4);
Gfx* func_8081F50C(Gfx* gfx, void* texture, s16 width, s16 height, u16 arg4);
void func_8081F81C(GlobalContext* globalCtx, u16 arg1);
void func_8081F87C(GraphicsContext* gfxCtx, void* texture, u16 width, u16 height, u16 arg4);
void func_8081F2FC();
void func_8081F1F0(GlobalContext* globalCtx);
void func_8081FE30(GlobalContext* globalCtx, u16 arg1);
void func_80826BA8(GlobalContext* globalCtx);

#endif
