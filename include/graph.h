#ifndef GRAPH_H
#define GRAPH_H

#include "ultra64.h"

struct GraphicsContext;

void Graph_ThreadEntry(void*);

#if OOT_DEBUG
void* Graph_Alloc(GraphicsContext* gfxCtx, size_t size);
void Graph_OpenDisps(Gfx** dispRefs, GraphicsContext* gfxCtx, const char* file, int line);
void Graph_CloseDisps(Gfx** dispRefs, GraphicsContext* gfxCtx, const char* file, int line);
#endif

#if OOT_DEBUG
#define GRAPH_ALLOC(gfxCtx, size) Graph_Alloc(gfxCtx, size)
#else
#define GRAPH_ALLOC(gfxCtx, size) ((void*)((gfxCtx)->polyOpa.d = (Gfx*)((u8*)(gfxCtx)->polyOpa.d - ALIGN16(size))))
#endif /* OOT_DEBUG */

#define WORK_DISP       __gfxCtx->work.p
#define POLY_OPA_DISP   __gfxCtx->polyOpa.p
#define POLY_XLU_DISP   __gfxCtx->polyXlu.p
#define OVERLAY_DISP    __gfxCtx->overlay.p

#if OOT_DEBUG

// __gfxCtx shouldn't be used directly.
// Use the DISP macros defined above when writing to display buffers.
#define OPEN_DISPS(gfxCtx, file, line) \
    {                                  \
        GraphicsContext* __gfxCtx;     \
        Gfx* dispRefs[4];              \
        __gfxCtx = gfxCtx;             \
        (void)__gfxCtx;                \
        Graph_OpenDisps(dispRefs, gfxCtx, file, line)

#define CLOSE_DISPS(gfxCtx, file, line)                 \
        Graph_CloseDisps(dispRefs, gfxCtx, file, line); \
    }                                                   \
    (void)0

#else

#define OPEN_DISPS(gfxCtx, file, line)      \
    {                                       \
        GraphicsContext* __gfxCtx = gfxCtx; \
        s32 __dispPad

#define CLOSE_DISPS(gfxCtx, file, line) \
    (void)0;                            \
    }                                   \
    (void)0

#endif /* OOT_DEBUG */

#endif
