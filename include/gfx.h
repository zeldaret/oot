#ifndef GFX_H
#define GFX_H

#include "ultra64.h"
#include "graph.h"

struct PlayState;

typedef enum {
    /*  0 */ SETUPDL_0,
    /*  1 */ SETUPDL_1,
    /*  2 */ SETUPDL_2,
    /*  3 */ SETUPDL_3,
    /*  4 */ SETUPDL_4,
    /*  5 */ SETUPDL_5,
    /*  6 */ SETUPDL_6,
    /*  7 */ SETUPDL_7,
    /*  8 */ SETUPDL_8,
    /*  9 */ SETUPDL_9,
    /* 10 */ SETUPDL_10,
    /* 11 */ SETUPDL_11,
    /* 12 */ SETUPDL_12,
    /* 13 */ SETUPDL_13,
    /* 14 */ SETUPDL_14,
    /* 15 */ SETUPDL_15,
    /* 16 */ SETUPDL_16,
    /* 17 */ SETUPDL_17,
    /* 18 */ SETUPDL_18,
    /* 19 */ SETUPDL_19,
    /* 20 */ SETUPDL_20,
    /* 21 */ SETUPDL_21,
    /* 22 */ SETUPDL_22,
    /* 23 */ SETUPDL_23,
    /* 24 */ SETUPDL_24,
    /* 25 */ SETUPDL_25,
    /* 26 */ SETUPDL_26,
    /* 27 */ SETUPDL_27,
    /* 28 */ SETUPDL_28,
    /* 29 */ SETUPDL_29,
    /* 30 */ SETUPDL_30,
    /* 31 */ SETUPDL_31,
    /* 32 */ SETUPDL_32,
    /* 33 */ SETUPDL_33,
    /* 34 */ SETUPDL_34,
    /* 35 */ SETUPDL_35,
    /* 36 */ SETUPDL_36,
    /* 37 */ SETUPDL_37,
    /* 38 */ SETUPDL_38,
    /* 39 */ SETUPDL_39,
    /* 40 */ SETUPDL_40,
    /* 41 */ SETUPDL_41,
    /* 42 */ SETUPDL_42,
    /* 43 */ SETUPDL_43,
    /* 44 */ SETUPDL_44,
    /* 45 */ SETUPDL_45,
    /* 46 */ SETUPDL_46,
    /* 47 */ SETUPDL_47,
    /* 48 */ SETUPDL_48,
    /* 49 */ SETUPDL_49,
    /* 50 */ SETUPDL_50,
    /* 51 */ SETUPDL_51,
    /* 52 */ SETUPDL_52,
    /* 53 */ SETUPDL_53,
    /* 54 */ SETUPDL_54,
    /* 55 */ SETUPDL_55,
    /* 56 */ SETUPDL_56,
    /* 57 */ SETUPDL_57,
    /* 58 */ SETUPDL_58,
    /* 59 */ SETUPDL_59,
    /* 60 */ SETUPDL_60,
    /* 61 */ SETUPDL_61,
    /* 62 */ SETUPDL_62,
    /* 63 */ SETUPDL_63,
    /* 64 */ SETUPDL_64,
    /* 65 */ SETUPDL_65,
    /* 66 */ SETUPDL_66,
    /* 67 */ SETUPDL_67,
    /* 68 */ SETUPDL_68,
    /* 69 */ SETUPDL_69,
    /* 70 */ SETUPDL_70,
    /* 71 */ SETUPDL_MAX
} SetupDL;


Gfx* Gfx_SetFog(Gfx* gfx, s32 r, s32 g, s32 b, s32 a, s32 near, s32 far);
Gfx* Gfx_SetFogWithSync(Gfx* gfx, s32 r, s32 g, s32 b, s32 a, s32 near, s32 far);
Gfx* Gfx_SetFog2(Gfx* gfx, s32 r, s32 g, s32 b, s32 a, s32 near, s32 far);
Gfx* Gfx_SetupDL(Gfx* gfx, u32 i);
Gfx* Gfx_SetupDL_57(Gfx* gfx);
Gfx* Gfx_SetupDL_52NoCD(Gfx* gfx);
void Gfx_SetupDL_57Opa(GraphicsContext* gfxCtx);
void Gfx_SetupDL_51Opa(GraphicsContext* gfxCtx);
void Gfx_SetupDL_54Opa(GraphicsContext* gfxCtx);
void Gfx_SetupDL_26Opa(GraphicsContext* gfxCtx);
void Gfx_SetupDL_25Xlu2(GraphicsContext* gfxCtx);
void func_80093C80(struct PlayState* play);
void Gfx_SetupDL_25Opa(GraphicsContext* gfxCtx);
void Gfx_SetupDL_25Xlu(GraphicsContext* gfxCtx);
Gfx* Gfx_SetupDL_64(Gfx* gfx);
Gfx* Gfx_SetupDL_34(Gfx* gfx);
void Gfx_SetupDL_44Xlu(GraphicsContext* gfxCtx);
void Gfx_SetupDL_36Opa(GraphicsContext* gfxCtx);
void Gfx_SetupDL_28Opa(GraphicsContext* gfxCtx);
Gfx* Gfx_SetupDL_28(Gfx* gfx);
void Gfx_SetupDL_38Xlu(GraphicsContext* gfxCtx);
void Gfx_SetupDL_4Xlu(GraphicsContext* gfxCtx);
void Gfx_SetupDL_37Opa(GraphicsContext* gfxCtx);
Gfx* Gfx_SetupDL_39(Gfx* gfx);
void Gfx_SetupDL_39Opa(GraphicsContext* gfxCtx);
void Gfx_SetupDL_39Overlay(GraphicsContext* gfxCtx);
void Gfx_SetupDL_39Ptr(Gfx** gfxP);
void Gfx_SetupDL_40Opa(GraphicsContext* gfxCtx);
void Gfx_SetupDL_41Opa(GraphicsContext* gfxCtx);
void Gfx_SetupDL_47Xlu(GraphicsContext* gfxCtx);
Gfx* Gfx_SetupDL_20NoCD(Gfx* gfx);
Gfx* Gfx_SetupDL_66(Gfx* gfx);
Gfx* func_800947AC(Gfx* gfx);
void Gfx_SetupDL_42Opa(GraphicsContext* gfxCtx);
void Gfx_SetupDL_42Overlay(GraphicsContext* gfxCtx);
void Gfx_SetupDL_27Xlu(GraphicsContext* gfxCtx);
void Gfx_SetupDL_60NoCDXlu(GraphicsContext* gfxCtx);
void Gfx_SetupDL_61Xlu(GraphicsContext* gfxCtx);
void Gfx_SetupDL_56Ptr(Gfx** gfxP);
Gfx* Gfx_BranchTexScroll(Gfx** gfxP, u32 x, u32 y, s32 width, s32 height);
Gfx* func_80094E78(GraphicsContext* gfxCtx, u32 x, u32 y);
Gfx* Gfx_TexScroll(GraphicsContext* gfxCtx, u32 x, u32 y, s32 width, s32 height);
Gfx* Gfx_TwoTexScroll(GraphicsContext* gfxCtx, s32 tile1, u32 x1, u32 y1, s32 width1, s32 height1, s32 tile2, u32 x2,
                      u32 y2, s32 width2, s32 height2);
Gfx* Gfx_TwoTexScrollEnvColor(GraphicsContext* gfxCtx, s32 tile1, u32 x1, u32 y1, s32 width1, s32 height1, s32 tile2,
                              u32 x2, u32 y2, s32 width2, s32 height2, s32 r, s32 g, s32 b, s32 a);
Gfx* Gfx_EnvColor(GraphicsContext* gfxCtx, s32 r, s32 g, s32 b, s32 a);
void Gfx_SetupFrame(GraphicsContext* gfxCtx, u8 r, u8 g, u8 b);
void func_80095974(GraphicsContext* gfxCtx);

#endif
