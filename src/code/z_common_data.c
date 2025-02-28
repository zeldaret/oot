#include "alignment.h"
#include "region.h"
#include "sequence.h"
#include "versions.h"
#include "z_locale.h"
#include "z64environment.h"
#include "z64save.h"
#include "z64transition.h"
#include "z64cutscene.h"

#pragma increment_block_number "gc-eu:192 gc-eu-mq:192 gc-jp:192 gc-jp-ce:192 gc-jp-mq:192 gc-us:192 gc-us-mq:192" \
                               "ntsc-1.0:0 ntsc-1.1:0 ntsc-1.2:0 pal-1.0:0 pal-1.1:0"

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
    gSaveContext.nextCutsceneIndex = CS_INDEX_NEXT_EMPTY;
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
