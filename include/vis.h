#ifndef VIS_H
#define VIS_H

#include "ultra64.h"
#include "color.h"

typedef struct VisParams {
    /* 0x00 */ u32 type;
    /* 0x04 */ u32 setScissor;
    /* 0x08 */ Color_RGBA8_u32 color1;
    /* 0x0C */ Color_RGBA8_u32 color2;
} VisParams; // size = 0x10

typedef enum VisCvgType {
    VISCVG_TYPE_NOP,
    VISCVG_TYPE_MODULATE_FB,               // Multiply coverage with framebuffer
    VISCVG_TYPE_FADE_AND_MODULATE_FB,      // Also fade to color1 by color1.a
    VISCVG_TYPE_MODULATE_COLOR,            // Multiply coverage with color1
    VISCVG_TYPE_MODULATE_FB_ADDITIVE_COLOR // Add color1
} VisCvgType;

typedef struct VisCvg {
    /* 0x00 */ VisParams params; // params.color2 unused
} VisCvg; // size = 0x10

typedef struct VisMono {
    /* 0x00 */ VisParams params; // params.type unused
    /* 0x10 */ u16* tlut;
    /* 0x14 */ Gfx* dList;
} VisMono; // size = 0x18

typedef struct VisZBuffer {
    /* 0x00 */ VisParams params;
} VisZBuffer; // size = 0x10

void VisCvg_Init(VisCvg* this);
void VisCvg_Destroy(VisCvg* this);
void VisCvg_Draw(VisCvg* this, Gfx** gfxp);

void VisMono_Init(VisMono* this);
void VisMono_Destroy(VisMono* this);
void VisMono_Draw(VisMono* this, Gfx** gfxp);

void VisZBuffer_Init(VisZBuffer* this);
void VisZBuffer_Destroy(VisZBuffer* this);
void VisZBuffer_Draw(VisZBuffer* this, Gfx** gfxp);

#endif
