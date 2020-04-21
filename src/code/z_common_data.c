#include <ultra64.h>
#include <global.h>

void SaveContext_Init(void) {
    bzero(&gSaveContext, sizeof(gSaveContext));
    D_8015FA88 = 0;
    D_8015FA8C = 0;
    gSaveContext.seqIndex = 0xFF;
    gSaveContext.nightSeqIndex = 0xFF;
    gSaveContext.unk_140E = 0;
    gSaveContext.nextCutsceneIndex = 0xFFEF;
    gSaveContext.cutsceneTrigger = 0;
    gSaveContext.chamberCutsceneNum = 0;
    gSaveContext.nextDayTime = 0xFFFF;
    gSaveContext.environmentTime = 0;
    gSaveContext.dogIsLost = true;
    gSaveContext.nextTransition = 0xFF;
    gSaveContext.unk_13EE = 50;
}
