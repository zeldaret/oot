#ifndef VIS_H
#define VIS_H

#include "ultra64.h"
#include "color.h"

typedef enum VisCvgType {
    VISCVG_TYPE_NOP,
    VISCVG_TYPE_MODULATE_FB,
    VISCVG_TYPE_FADE_AND_MODULATE_FB,
    VISCVG_TYPE_MODULATE_COLOR,
    VISCVG_TYPE_MODULATE_FB_ADDITIVE_COLOR
} VisCvgType;

typedef struct VisCvg {
    /* 0x00 */ u32 type;
    /* 0x04 */ u32 setScissor;
    /* 0x08 */ Color_RGBA8_u32 color;
    /* 0x0C */ Color_RGBA8_u32 envColor;
} VisCvg; // size = 0x10

typedef struct VisMono {
    /* 0x00 */ u32 unk_00;
    /* 0x04 */ u32 setScissor;
    /* 0x08 */ Color_RGBA8_u32 primColor;
    /* 0x0C */ Color_RGBA8_u32 envColor;
    /* 0x10 */ u16* tlut;
    /* 0x14 */ Gfx* dList;
} VisMono; // size = 0x18

// Vis...
typedef struct struct_80166500 {
    /* 0x00 */ u32 useRgba;
    /* 0x04 */ u32 setScissor;
    /* 0x08 */ Color_RGBA8_u32 primColor;
    /* 0x08 */ Color_RGBA8_u32 envColor;
} struct_80166500; // size = 0x10

void VisCvg_Init(VisCvg* this);
void VisCvg_Destroy(VisCvg* this);
void VisCvg_Draw(VisCvg* this, Gfx** gfxp);
void VisMono_Init(VisMono* this);
void VisMono_Destroy(VisMono* this);
void VisMono_Draw(VisMono* this, Gfx** gfxp);
void func_800AD920(struct_80166500* this);
void func_800AD950(struct_80166500* this);
void func_800AD958(struct_80166500* this, Gfx** gfxp);

#endif
