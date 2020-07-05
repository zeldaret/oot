#ifndef _Z_BG_YDAN_HASI_H_
#define _Z_BG_YDAN_HASI_H_

#include <ultra64.h>
#include <global.h>

struct BgYdanHasi;
typedef void (*BgYdanHasiActionFunc)(struct BgYdanHasi*);

typedef struct BgYdanHasi {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgYdanHasiActionFunc actionFunc;
    /* 0x0168 */ s8 unk_168;
    /* 0x0169*/  s8 unk_169;
    /* 0x016A */ s16 unk_16A;
} BgYdanHasi; // size = 0x016C

extern const ActorInit Bg_Ydan_Hasi_InitVars;

#endif
