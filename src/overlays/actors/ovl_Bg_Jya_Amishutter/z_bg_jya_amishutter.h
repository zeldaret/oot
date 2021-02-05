#ifndef _Z_BG_JYA_AMISHUTTER_H_
#define _Z_BG_JYA_AMISHUTTER_H_

#include "ultra64.h"
#include "global.h"

struct BgJyaAmishutter;

typedef void (*BgJyaAmishutterActionFunc)(struct BgJyaAmishutter*);

typedef struct BgJyaAmishutter {
<<<<<<< HEAD
    /* 0x0000 */ DynaPolyActor dyna;
=======
    /* 0x000 */ DynaPolyActor dyna;
>>>>>>> 011f086075db52c57edf53bd13bea0068728bddf
    /* 0x0164 */ BgJyaAmishutterActionFunc actionFunc;
} BgJyaAmishutter; // size = 0x0168

extern const ActorInit Bg_Jya_Amishutter_InitVars;

#endif
