#include "global.h"

#if !OOT_MQ
#include "z_map_mark_data_original.inc.c"
#else
#include "z_map_mark_data_mq.inc.c"
#endif

MapMarkData* gMapMarkDataTable[] = {
    sMapMarkDekuTree,    sMapMarkDodongosCavern, sMapMarkJabuJabuBelly, sMapMarkForestTemple, sMapMarkFireTemple,
    sMapMarkWaterTemple, sMapMarkSpiritTemple,   sMapMarkShadowTemple,  sMapMarkBottomWell,   sMapMarkIceCavern,
};
