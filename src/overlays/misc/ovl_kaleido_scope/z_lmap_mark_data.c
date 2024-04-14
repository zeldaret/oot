#include "z_kaleido_scope.h"

static const Vtx sMarkBossVtx[] = {
    VTX(-4, 4, 0, 0, 0, 255, 255, 255, 255),
    VTX(-4, -4, 0, 0, 256, 255, 255, 255, 255),
    VTX(4, 4, 0, 256, 0, 255, 255, 255, 255),
    VTX(4, -4, 0, 256, 256, 255, 255, 255, 255),
};

static const Vtx sMarkChestVtx[] = {
    VTX(-4, 4, 0, 0, 0, 255, 255, 255, 255),
    VTX(-4, -4, 0, 0, 256, 255, 255, 255, 255),
    VTX(4, 4, 0, 256, 0, 255, 255, 255, 255),
    VTX(4, -4, 0, 256, 256, 255, 255, 255, 255),
};

#if !OOT_MQ
#include "z_lmap_mark_data_original.inc.c"
#else
#include "z_lmap_mark_data_mq.inc.c"
#endif
