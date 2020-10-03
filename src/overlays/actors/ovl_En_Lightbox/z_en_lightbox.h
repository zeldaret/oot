#ifndef _Z_EN_LIGHTBOX_H_
#define _Z_EN_LIGHTBOX_H_

#include "ultra64.h"
#include "global.h"

struct EnLightbox;

typedef struct EnLightbox {
    /* 0x0000 */ DynaPolyActor dyna;
} EnLightbox; // size = 0x0164

extern const ActorInit En_Lightbox_InitVars;

#endif
