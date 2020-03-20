#include <ultra64.h>
#include <global.h>

void SaveContext_Init(void)
{
    bzero(&gSaveContext, sizeof(gSaveContext));
    D_8015FA88 = 0;
    D_8015FA8C = 0;
    gSaveContext.seq_index = 0xFF;
    gSaveContext.night_sfx = 0xFF;
    gSaveContext.unk_140E = 0;
    gSaveContext.next_cutscene_index = 0xFFEF;
    gSaveContext.cutscene_trigger = 0;
    gSaveContext.chamber_cutscene_num = 0;
    gSaveContext.next_day_time = 0xFFFF;
    gSaveContext.environment_time = 0;
    gSaveContext.richardIsLost = 1;
    gSaveContext.transition_type = 0xFF;
    gSaveContext.unk_13EE = 50;
}

