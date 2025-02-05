#include "global.h"
#include "region.h"
#include "versions.h"

#pragma increment_block_number "gc-eu:128 gc-eu-mq:128 gc-jp:128 gc-jp-ce:128 gc-jp-mq:128 gc-us:128 gc-us-mq:128" \
                               "ntsc-1.0:176 ntsc-1.1:176 ntsc-1.2:176 pal-1.0:192 pal-1.1:192"

ALIGNED(16) SaveContext gSaveContext;
#if PLATFORM_IQUE
// Unknown bss padding, placed here for matching
char sUnknownBssPadding[0x20];
#endif
u32 D_8015FA88;
u32 D_8015FA8C;

void SaveContext_Init(void) {
    bzero(&gSaveContext, sizeof(gSaveContext));
    D_8015FA88 = 0;
    D_8015FA8C = 0;
    gSaveContext.seqId = (u8)NA_BGM_DISABLED;
    gSaveContext.natureAmbienceId = NATURE_ID_DISABLED;
    gSaveContext.forcedSeqId = NA_BGM_GENERAL_SFX;
    gSaveContext.nextCutsceneIndex = 0xFFEF;
    gSaveContext.cutsceneTrigger = 0;
    gSaveContext.chamberCutsceneNum = CHAMBER_CS_FOREST;
    gSaveContext.nextDayTime = NEXT_TIME_NONE;
    gSaveContext.skyboxTime = 0;
    gSaveContext.dogIsLost = true;
    gSaveContext.nextTransitionType = TRANS_NEXT_TYPE_DEFAULT;
    gSaveContext.prevHudVisibilityMode = HUD_VISIBILITY_ALL;
#if OOT_NTSC && OOT_VERSION < GC_US || PLATFORM_IQUE
    if (gCurrentRegion == REGION_JP) {
        gSaveContext.language = LANGUAGE_JPN;
    }
    if (gCurrentRegion == REGION_US) {
        gSaveContext.language = LANGUAGE_ENG;
    }
#elif OOT_VERSION == GC_US || OOT_VERSION == GC_US_MQ
    gSaveContext.language = LANGUAGE_ENG;
#elif OOT_VERSION == GC_JP_CE
    gSaveContext.language = LANGUAGE_JPN;
#endif
}
