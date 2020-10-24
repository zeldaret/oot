/*
 * File: z_select.c
 * Overlay: ovl_select
 * Description: Debug Scene Select Menu
 */

#include "ultra64.h"
#include "global.h"
#include "vt.h"
#include "alloca.h"

void Select_LoadTitle(SelectContext* this) {
    this->state.running = false;
    SET_NEXT_GAMESTATE(&this->state, Title_Init, TitleContext);
}

void Select_LoadGame(SelectContext* this, s32 entranceIndex) {
    osSyncPrintf(VT_FGCOL(BLUE));
    osSyncPrintf("\n\n\nＦＩＬＥ＿ＮＯ＝%x\n\n\n", gSaveContext.fileNum);
    osSyncPrintf(VT_RST);
    if (gSaveContext.fileNum == 0xFF) {
        Sram_InitDebugSave();
        gSaveContext.unk_13F6 = gSaveContext.magic;
        gSaveContext.magic = 0;
        gSaveContext.unk_13F4 = 0;
        gSaveContext.magicLevel = gSaveContext.magic;
    }
    gSaveContext.buttonStatus[4] = BTN_ENABLED;
    gSaveContext.buttonStatus[3] = BTN_ENABLED;
    gSaveContext.buttonStatus[2] = BTN_ENABLED;
    gSaveContext.buttonStatus[1] = BTN_ENABLED;
    gSaveContext.buttonStatus[0] = BTN_ENABLED;
    gSaveContext.unk_13E7 = gSaveContext.unk_13E8 = gSaveContext.unk_13EA = gSaveContext.unk_13EC = 0;
    Audio_SetBGM(NA_BGM_STOP);
    gSaveContext.entranceIndex = entranceIndex;
    gSaveContext.respawnFlag = 0;
    gSaveContext.respawn[RESPAWN_MODE_DOWN].entranceIndex = -1;
    gSaveContext.seqIndex = 0xFF;
    gSaveContext.nightSeqIndex = 0xFF;
    gSaveContext.showTitleCard = true;
    D_8011FB30 = 0;
    this->state.running = false;
    SET_NEXT_GAMESTATE(&this->state, Gameplay_Init, GlobalContext);
}

static SceneSelectEntry sScenes[] = {
    { " 1:SPOT00", Select_LoadGame, 0x00CD },
    { " 2:SPOT01", Select_LoadGame, 0x00DB },
    { " 3:SPOT02", Select_LoadGame, 0x00E4 },
    { " 4:SPOT03", Select_LoadGame, 0x00EA },
    { " 5:SPOT04", Select_LoadGame, 0x00EE },
    { " 6:SPOT05", Select_LoadGame, 0x00FC },
    { " 7:SPOT06", Select_LoadGame, 0x0102 },
    { " 8:SPOT07", Select_LoadGame, 0x0108 },
    { " 9:SPOT08", Select_LoadGame, 0x010E },
    { "10:SPOT09", Select_LoadGame, 0x0117 },
    { "11:SPOT10", Select_LoadGame, 0x011E },
    { "12:SPOT11", Select_LoadGame, 0x0123 },
    { "13:SPOT12", Select_LoadGame, 0x0129 },
    { "14:SPOT13", Select_LoadGame, 0x0130 },
    { "15:SPOT15", Select_LoadGame, 0x0138 },
    { "16:SPOT16", Select_LoadGame, 0x013D },
    { "17:SPOT17", Select_LoadGame, 0x0147 },
    { "18:SPOT18", Select_LoadGame, 0x014D },
    { "19:SPOT20", Select_LoadGame, 0x0157 },
    { "20:\x8Dﾄｷﾉﾏ", Select_LoadGame, 0x0053 },
    { "21:\x8Dｹﾝｼﾞｬﾉﾏ", Select_LoadGame, 0x006B },
    { "22:\x8Dｼｬﾃｷｼﾞｮｳ", Select_LoadGame, 0x003B },
    { "23:\x8Cﾊｲﾗﾙ\x8Dﾆﾜ\x8Cｹﾞｰﾑ", Select_LoadGame, 0x007A },
    { "24:\x8Dﾊｶｼﾀﾄﾋﾞｺﾐｱﾅ", Select_LoadGame, 0x031C },
    { "25:\x8Dﾊｶｼﾀﾄﾋﾞｺﾐｱﾅ 2", Select_LoadGame, 0x004B },
    { "26:\x8Dｵｳｹ ﾉ ﾊｶｱﾅ", Select_LoadGame, 0x002D },
    { "27:\x8Dﾀﾞｲﾖｳｾｲﾉｲｽﾞﾐ", Select_LoadGame, 0x0315 },
    { "28:\x8Dﾄﾋﾞｺﾐ ﾖｳｾｲ ｱﾅ", Select_LoadGame, 0x036D },
    { "29:\x8Dﾏﾎｳｾｷ ﾖｳｾｲﾉｲｽﾞﾐ", Select_LoadGame, 0x0371 },
    { "30:\x8Cｶﾞﾉﾝ\x8Dｻｲｼｭｳｾﾝ", Select_LoadGame, 0x043F },
    { "31:\x8Cﾊｲﾗﾙ\x8Dﾅｶﾆﾜ", Select_LoadGame, 0x0400 },
    { "32:\x8Dﾂﾘﾎﾞﾘ", Select_LoadGame, 0x045F },
    { "33:\x8Cﾎﾞﾑﾁｭｳﾎﾞｰﾘﾝｸﾞ", Select_LoadGame, 0x0507 },
    { "34:\x8Cﾛﾝﾛﾝ\x8Dﾎﾞｸｼﾞｮｳ ｿｳｺ 1", Select_LoadGame, 0x004F },
    { "35:\x8Cﾛﾝﾛﾝ\x8Dﾎﾞｸｼﾞｮｳ ｿｳｺ 2", Select_LoadGame, 0x05D0 },
    { "36:\x8Dﾐﾊﾘ ｺﾞﾔ", Select_LoadGame, 0x007E },
    { "37:\x8Dﾏﾎｳ ﾉ ｸｽﾘﾔ", Select_LoadGame, 0x0072 },
    { "38:\x8Dﾀｶﾗﾊﾞｺﾔ", Select_LoadGame, 0x0063 },
    { "39:\x8Dｷﾝ \x8Cｽﾀﾙﾁｭﾗ ﾊｳｽ", Select_LoadGame, 0x0550 },
    { "40:\x8Dｼﾞｮｳｶﾏﾁ ｲﾘｸﾞﾁ", Select_LoadGame, 0x0033 },
    { "41:\x8Dｼﾞｮｳｶﾏﾁ", Select_LoadGame, 0x00B1 },
    { "42:\x8Dｳﾗﾛｼﾞ", Select_LoadGame, 0x00AD },
    { "43:\x8Dﾄｷﾉｼﾝﾃﾞﾝ ﾏｴ", Select_LoadGame, 0x0171 },
    { "44:\x8Dﾘﾝｸﾉｲｴ", Select_LoadGame, 0x00BB },
    { "45:\x8Cｶｶﾘｺ\x8Dﾑﾗﾉﾅｶﾞﾔ", Select_LoadGame, 0x02FD },
    { "46:\x8Dｳﾗﾛｼﾞﾉ ｲｴ", Select_LoadGame, 0x043B },
    { "47:\x8Dｺｷﾘﾉﾑﾗ ﾓﾉｼﾘｷｮｳﾀﾞｲﾉｲｴ", Select_LoadGame, 0x00C9 },
    { "48:\x8Dｺｷﾘﾉﾑﾗ ﾌﾀｺﾞﾉｲｴ", Select_LoadGame, 0x009C },
    { "49:\x8Dｺｷﾘﾉﾑﾗ \x8Cﾐﾄﾞ\x8Dﾉｲｴ", Select_LoadGame, 0x0433 },
    { "50:\x8Dｺｷﾘﾉﾑﾗ \x8Cｻﾘｱ\x8Dﾉｲｴ", Select_LoadGame, 0x0437 },
    { "51:\x8Dｳﾏｺﾞﾔ", Select_LoadGame, 0x02F9 },
    { "52:\x8Dﾊｶﾓﾘﾉｲｴ", Select_LoadGame, 0x030D },
    { "53:\x8Dｳﾗﾛｼﾞ ｲﾇｵﾊﾞｻﾝﾉｲｴ", Select_LoadGame, 0x0398 },
    { "54:\x8Dｶｶﾘｺﾑﾗ \x8Cｲﾝﾊﾟ\x8Dﾉｲｴ", Select_LoadGame, 0x039C },
    { "55:\x8Cﾊｲﾘｱ\x8D ｹﾝｷｭｳｼﾞｮ", Select_LoadGame, 0x0043 },
    { "56:\x8Cﾃﾝﾄ", Select_LoadGame, 0x03A0 },
    { "57:\x8Dﾀﾃﾉﾐｾ", Select_LoadGame, 0x00B7 },
    { "58:\x8Dｺｷﾘｿﾞｸﾉﾐｾ", Select_LoadGame, 0x00C1 },
    { "59:\x8Cｺﾞﾛﾝ\x8Dﾉﾐｾ", Select_LoadGame, 0x037C },
    { "60:\x8Cｿﾞｰﾗ\x8Dﾉﾐｾ", Select_LoadGame, 0x0380 },
    { "61:\x8Cｶｶﾘｺ\x8Dﾑﾗ  ｸｽﾘﾔ", Select_LoadGame, 0x0384 },
    { "62:\x8Dｼﾞｮｳｶﾏﾁ ｸｽﾘﾔ", Select_LoadGame, 0x0388 },
    { "63:\x8Dｳﾗﾛｼﾞ ﾖﾙﾉﾐｾ", Select_LoadGame, 0x0390 },
    { "64:\x8Dｵﾒﾝﾔ", Select_LoadGame, 0x0530 },
    { "65:\x8Cｹﾞﾙﾄﾞ\x8Dﾉｼｭｳﾚﾝｼﾞｮｳ", Select_LoadGame, 0x0008 },
    { "66:\x8Dﾖｳｾｲﾉｷﾉ \x8Cﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x0000 },
    { "67:\x8Dﾖｳｾｲﾉｷﾉ \x8Cﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", Select_LoadGame, 0x040F },
    { "68:\x8Cﾄﾞﾄﾞﾝｺﾞ ﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x0004 },
    { "69:\x8Cﾄﾞﾄﾞﾝｺﾞ ﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", Select_LoadGame, 0x040B },
    { "70:\x8Dｷｮﾀﾞｲｷﾞｮ \x8Cﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x0028 },
    { "71:\x8Dｷｮﾀﾞｲｷﾞｮ \x8Cﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", Select_LoadGame, 0x0301 },
    { "72:\x8Dﾓﾘﾉｼﾝﾃﾞﾝ", Select_LoadGame, 0x0169 },
    { "73:\x8Dﾓﾘﾉｼﾝﾃﾞﾝ \x8Cﾎﾞｽ", Select_LoadGame, 0x000C },
    { "74:\x8Dｲﾄﾞｼﾀ \x8Cﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x0098 },
    { "75:\x8Dﾊｶｼﾀ \x8Cﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x0037 },
    { "76:\x8Dﾊｶｼﾀ \x8Cﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", Select_LoadGame, 0x0413 },
    { "77:\x8Dﾋﾉｼﾝﾃﾞﾝ", Select_LoadGame, 0x0165 },
    { "78:\x8Dﾋﾉｼﾝﾃﾞﾝ \x8Cﾎﾞｽ", Select_LoadGame, 0x0305 },
    { "79:\x8Dﾐｽﾞﾉｼﾝﾃﾞﾝ", Select_LoadGame, 0x0010 },
    { "80:\x8Dﾐｽﾞﾉｼﾝﾃﾞﾝ \x8Cﾎﾞｽ", Select_LoadGame, 0x0417 },
    { "81:\x8Dｼﾞｬｼﾝｿﾞｳ \x8Cﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x0082 },
    { "82:\x8Dｼﾞｬｼﾝｿﾞｳ \x8Cﾀﾞﾝｼﾞｮﾝ ｱｲｱﾝﾅｯｸ", Select_LoadGame, 0x008D },
    { "83:\x8Dｼﾞｬｼﾝｿﾞｳ \x8Cﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", Select_LoadGame, 0x05EC },
    { "84:\x8Cｶﾞﾉﾝ\x8Dﾉﾄｳ", Select_LoadGame, 0x041B },
    { "85:\x8Cｶﾞﾉﾝ\x8Dﾉﾄｳ\x8Cﾎﾞｽ", Select_LoadGame, 0x041F },
    { "86:\x8Dｺｵﾘﾉﾄﾞｳｸﾂ", Select_LoadGame, 0x0088 },
    { "87:\x8Dﾊｶｼﾀ\x8Cﾘﾚｰ", Select_LoadGame, 0x044F },
    { "88:\x8Cｶﾞﾉﾝ\x8Dﾁｶ \x8Cﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x0467 },
    { "89:\x8Cｶﾞﾉﾝ\x8Dｻｲｼｭｳｾﾝ \x8Cﾃﾞﾓ & ﾊﾞﾄﾙ", Select_LoadGame, 0x0517 },
    { "90:\x8Cｶﾞﾉﾝ\x8Dﾉﾄｳ ｿﾉｺﾞ 1", Select_LoadGame, 0x0179 },
    { "91:\x8Cｶﾞﾉﾝ\x8Dﾉﾄｳ ｿﾉｺﾞ 2", Select_LoadGame, 0x01B5 },
    { "92:\x8Cｶﾞﾉﾝ\x8Dﾉﾄｳ ｿﾉｺﾞ 3", Select_LoadGame, 0x03DC },
    { "93:\x8Cｶﾞﾉﾝ\x8Dﾉﾄｳ ｿﾉｺﾞ 4", Select_LoadGame, 0x03E4 },
    { "94:\x8Cｶﾞﾉﾝ\x8Dﾁｶ ｿﾉｺﾞ", Select_LoadGame, 0x056C },
    { "95:\x8Cｹﾞﾙﾄﾞ\x8Dﾂｳﾛ 1-2", Select_LoadGame, 0x0486 },
    { "96:\x8Cｹﾞﾙﾄﾞ\x8Dﾂｳﾛ 3-4 9-10", Select_LoadGame, 0x048E },
    { "97:\x8Cｹﾞﾙﾄﾞ\x8Dﾂｳﾛ 5-6", Select_LoadGame, 0x0496 },
    { "98:\x8Cｹﾞﾙﾄﾞ\x8Dﾂｳﾛ 7-8", Select_LoadGame, 0x049E },
    { "99:\x8Cｹﾞﾙﾄﾞ\x8Dﾂｳﾛ 11-12", Select_LoadGame, 0x04AE },
    { "100:\x8Cｹﾞﾙﾄﾞ\x8Dﾂｳﾛ 13", Select_LoadGame, 0x0570 },
    { "101:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 0", Select_LoadGame, 0x003F },
    { "102:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 1", Select_LoadGame, 0x0598 },
    { "103:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 2", Select_LoadGame, 0x059C },
    { "104:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 3", Select_LoadGame, 0x05A0 },
    { "105:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 4", Select_LoadGame, 0x05A4 },
    { "106:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 5", Select_LoadGame, 0x05A8 },
    { "107:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 6", Select_LoadGame, 0x05AC },
    { "108:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 7", Select_LoadGame, 0x05B0 },
    { "109:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 8", Select_LoadGame, 0x05B4 },
    { "110:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 9", Select_LoadGame, 0x05B8 },
    { "111:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 10", Select_LoadGame, 0x05BC },
    { "112:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 11", Select_LoadGame, 0x05C0 },
    { "113:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 12", Select_LoadGame, 0x05C4 },
    { "114:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 13", Select_LoadGame, 0x05FC },
    { "115:\x8Cﾊｲﾗﾙ ﾃﾞﾓ", Select_LoadGame, 0x00A0 },
    { "116:\x8Dﾍﾞｯｼﾂ (ﾀｶﾗﾊﾞｺ\x8Cﾜｰﾌﾟ)", Select_LoadGame, 0x0520 },
    { "117:\x8Dｻｻ\x8Cﾃｽﾄ", Select_LoadGame, 0x0018 },
    { "118:\x8Cﾃｽﾄﾏｯﾌﾟ", Select_LoadGame, 0x0094 },
    { "119:\x8Cﾃｽﾄﾙｰﾑ", Select_LoadGame, 0x0024 },
    { "120:\x8Dﾁｭｳ\x8Cｽﾀﾛﾌｫｽ\x8Dﾍﾞﾔ", Select_LoadGame, 0x001C },
    { "121:\x8Cﾎﾞｽｽﾀﾛﾌｫｽ\x8Dﾍﾞﾔ", Select_LoadGame, 0x0020 },
    { "122:Sutaru", Select_LoadGame, 0x0047 },
    { "123:jikkenjyou", Select_LoadGame, 0x02EA },
    { "124:depth\x8Cﾃｽﾄ", Select_LoadGame, 0x00B6 },
    { "125:\x8Cﾊｲﾗﾙ\x8Dﾆﾜ\x8Cｹﾞｰﾑ2", Select_LoadGame, 0x0076 },
    { "title", Select_LoadTitle, 0x0000 },
};

void Select_UpdateMenu(SelectContext* this) {
    Input* controller1;
    s32 pad;
    SceneSelectEntry* selectedScene;

    controller1 = &this->state.input[0];

    if (this->unk_21C == 0) {

        if (CHECK_BTN_ALL(controller1->press.button, BTN_A) || CHECK_BTN_ALL(controller1->press.button, BTN_START)) {
            selectedScene = &this->scenes[this->currentScene];
            if (selectedScene->loadFunc != NULL) {
                selectedScene->loadFunc(this, selectedScene->entranceIndex);
            }
        }

        if (CHECK_BTN_ALL(controller1->press.button, BTN_B)) {
            if (LINK_AGE_IN_YEARS == YEARS_ADULT) {
                gSaveContext.linkAge = 1;
            } else {
                gSaveContext.linkAge = 0;
            }
        }

        if (CHECK_BTN_ALL(controller1->press.button, BTN_Z)) {
            if (gSaveContext.cutsceneIndex == 0x8000) {
                gSaveContext.cutsceneIndex = 0;
            } else if (gSaveContext.cutsceneIndex == 0) {
                gSaveContext.cutsceneIndex = 0xFFF0;
            } else if (gSaveContext.cutsceneIndex == 0xFFF0) {
                gSaveContext.cutsceneIndex = 0xFFF1;
            } else if (gSaveContext.cutsceneIndex == 0xFFF1) {
                gSaveContext.cutsceneIndex = 0xFFF2;
            } else if (gSaveContext.cutsceneIndex == 0xFFF2) {
                gSaveContext.cutsceneIndex = 0xFFF3;
            } else if (gSaveContext.cutsceneIndex == 0xFFF3) {
                gSaveContext.cutsceneIndex = 0xFFF4;
            } else if (gSaveContext.cutsceneIndex == 0xFFF4) {
                gSaveContext.cutsceneIndex = 0xFFF5;
            } else if (gSaveContext.cutsceneIndex == 0xFFF5) {
                gSaveContext.cutsceneIndex = 0xFFF6;
            } else if (gSaveContext.cutsceneIndex == 0xFFF6) {
                gSaveContext.cutsceneIndex = 0xFFF7;
            } else if (gSaveContext.cutsceneIndex == 0xFFF7) {
                gSaveContext.cutsceneIndex = 0xFFF8;
            } else if (gSaveContext.cutsceneIndex == 0xFFF8) {
                gSaveContext.cutsceneIndex = 0xFFF9;
            } else if (gSaveContext.cutsceneIndex == 0xFFF9) {
                gSaveContext.cutsceneIndex = 0xFFFA;
            } else if (gSaveContext.cutsceneIndex == 0xFFFA) {
                gSaveContext.cutsceneIndex = 0x8000;
            }
        } else if (CHECK_BTN_ALL(controller1->press.button, BTN_R)) {
            if (gSaveContext.cutsceneIndex == 0x8000) {
                gSaveContext.cutsceneIndex = 0xFFFA;
            } else if (gSaveContext.cutsceneIndex == 0) {
                gSaveContext.cutsceneIndex = 0x8000;
            } else if (gSaveContext.cutsceneIndex == 0xFFF0) {
                gSaveContext.cutsceneIndex = 0;
            } else if (gSaveContext.cutsceneIndex == 0xFFF1) {
                gSaveContext.cutsceneIndex = 0xFFF0;
            } else if (gSaveContext.cutsceneIndex == 0xFFF2) {
                gSaveContext.cutsceneIndex = 0xFFF1;
            } else if (gSaveContext.cutsceneIndex == 0xFFF3) {
                gSaveContext.cutsceneIndex = 0xFFF2;
            } else if (gSaveContext.cutsceneIndex == 0xFFF4) {
                gSaveContext.cutsceneIndex = 0xFFF3;
            } else if (gSaveContext.cutsceneIndex == 0xFFF5) {
                gSaveContext.cutsceneIndex = 0xFFF4;
            } else if (gSaveContext.cutsceneIndex == 0xFFF6) {
                gSaveContext.cutsceneIndex = 0xFFF5;
            } else if (gSaveContext.cutsceneIndex == 0xFFF7) {
                gSaveContext.cutsceneIndex = 0xFFF6;
            } else if (gSaveContext.cutsceneIndex == 0xFFF8) {
                gSaveContext.cutsceneIndex = 0xFFF7;
            } else if (gSaveContext.cutsceneIndex == 0xFFF9) {
                gSaveContext.cutsceneIndex = 0xFFF8;
            } else if (gSaveContext.cutsceneIndex == 0xFFFA) {
                gSaveContext.cutsceneIndex = 0xFFF9;
            }
        }

        gSaveContext.nightFlag = 0;
        if (gSaveContext.cutsceneIndex == 0) {
            gSaveContext.nightFlag = 1;
        }

        // user can change "opt", but it doesn't do anything
        if (CHECK_BTN_ALL(controller1->press.button, BTN_CUP)) {
            this->opt--;
        }
        if (CHECK_BTN_ALL(controller1->press.button, BTN_CDOWN)) {
            this->opt++;
        }

        if (CHECK_BTN_ALL(controller1->press.button, BTN_DUP)) {
            if (this->unk_22C == 1) {
                this->unk_224 = 0;
            }
            if (this->unk_224 == 0) {
                this->unk_224 = 0x14;
                this->unk_22C = 1;
                Audio_PlaySoundGeneral(NA_SE_IT_SWORD_IMPACT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                this->unk_220 = SREG(30);
            }
        }

        if (CHECK_BTN_ALL(controller1->cur.button, BTN_DUP) && this->unk_224 == 0) {
            Audio_PlaySoundGeneral(NA_SE_IT_SWORD_IMPACT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->unk_220 = SREG(30) * 3;
        }

        if (CHECK_BTN_ALL(controller1->press.button, BTN_DDOWN)) {
            if (this->unk_230 == 1) {
                this->unk_228 = 0;
            }
            if (this->unk_228 == 0) {
                this->unk_228 = 0x14;
                this->unk_230 = 1;
                Audio_PlaySoundGeneral(NA_SE_IT_SWORD_IMPACT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                this->unk_220 = -SREG(30);
            }
        }

        if (CHECK_BTN_ALL(controller1->cur.button, BTN_DDOWN) && (this->unk_228 == 0)) {
            Audio_PlaySoundGeneral(NA_SE_IT_SWORD_IMPACT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->unk_220 = -SREG(30) * 3;
        }

        if (CHECK_BTN_ALL(controller1->press.button, BTN_DLEFT) || CHECK_BTN_ALL(controller1->cur.button, BTN_DLEFT)) {
            Audio_PlaySoundGeneral(NA_SE_IT_SWORD_IMPACT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->unk_220 = SREG(30);
        }

        if (CHECK_BTN_ALL(controller1->press.button, BTN_DRIGHT) ||
            CHECK_BTN_ALL(controller1->cur.button, BTN_DRIGHT)) {
            Audio_PlaySoundGeneral(NA_SE_IT_SWORD_IMPACT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->unk_220 = -SREG(30);
        }
    }

    if (CHECK_BTN_ALL(controller1->press.button, BTN_L)) {
        this->unk_1DC++;
        this->unk_1DC = (this->unk_1DC + 7) % 7;
        this->currentScene = this->unk_20C = this->unk_1E0[this->unk_1DC];
    }

    this->unk_21C += this->unk_220;

    if (this->unk_21C < -7) {
        this->unk_220 = 0;
        this->unk_21C = 0;

        this->currentScene++;
        this->currentScene = (this->currentScene + this->count) % this->count;

        if (this->currentScene == ((this->unk_20C + this->count + 0x13) % this->count)) {
            this->unk_20C++;
            this->unk_20C = (this->unk_20C + this->count) % this->count;
        }
    }

    if (this->unk_21C >= 8) {
        this->unk_220 = 0;
        this->unk_21C = 0;

        if (this->currentScene == this->unk_20C) {
            this->unk_20C -= 2;
            this->unk_20C = (this->unk_20C + this->count) % this->count;
        }

        this->currentScene--;
        this->currentScene = (this->currentScene + this->count) % this->count;

        if (this->currentScene == ((this->unk_20C + this->count) % this->count)) {
            this->unk_20C--;
            this->unk_20C = (this->unk_20C + this->count) % this->count;
        }
    }

    this->currentScene = (this->currentScene + this->count) % this->count;
    this->unk_20C = (this->unk_20C + this->count) % this->count;

    dREG(80) = this->currentScene;
    dREG(81) = this->unk_20C;
    dREG(82) = this->unk_1DC;

    if (this->unk_224 != 0) {
        this->unk_224--;
    }

    if (this->unk_224 == 0) {
        this->unk_22C = 0;
    }

    if (this->unk_228 != 0) {
        this->unk_228--;
    }

    if (this->unk_228 == 0) {
        this->unk_230 = 0;
    }
}

void Select_PrintMenu(SelectContext* this, GfxPrint* printer) {
    s32 scene;
    s32 i;
    char* name;

    GfxPrint_SetColor(printer, 255, 155, 150, 255);
    GfxPrint_SetPos(printer, 12, 2);
    GfxPrint_Printf(printer, "ZELDA MAP SELECT");
    GfxPrint_SetColor(printer, 255, 255, 255, 255);

    for (i = 0; i < 20; i++) {
        GfxPrint_SetPos(printer, 9, i + 4);

        scene = ((this->unk_20C + i) + this->count) % this->count;
        if (scene == this->currentScene) {
            GfxPrint_SetColor(printer, 255, 20, 20, 255);
        } else {
            GfxPrint_SetColor(printer, 200, 200, 55, 255);
        }

        name = this->scenes[scene].name;
        if (name == NULL) {
            name = "**Null**";
        }

        GfxPrint_Printf(printer, "%s", name);
    };

    GfxPrint_SetColor(printer, 155, 55, 150, 255);
    GfxPrint_SetPos(printer, 20, 26);
    GfxPrint_Printf(printer, "OPT=%d", this->opt);
}

static char* sLoadingMessages[] = {
    "\x8Dｼﾊﾞﾗｸｵﾏﾁｸﾀﾞｻｲ",                   // "Please wait a minute"
    "\x8Dﾁｮｯﾄ ﾏｯﾃﾈ",                       // "Hold on a sec"
    "\x8Cｳｪｲﾄ ｱ ﾓｰﾒﾝﾄ",                    // "Wait a moment"
    "\x8Cﾛｰﾄﾞ\x8Dﾁｭｳ",                     // "Loading"
    "\x8Dﾅｳ ﾜｰｷﾝｸﾞ",                       // "Now working"
    "\x8Dｲﾏ ﾂｸｯﾃﾏｽ",                       // "Now creating"
    "\x8Dｺｼｮｳｼﾞｬﾅｲﾖ",                      // "It's not broken"
    "\x8Cｺｰﾋｰ ﾌﾞﾚｲｸ",                      // "Coffee Break"
    "\x8C\Bﾒﾝｦｾｯﾄｼﾃｸﾀﾞｻｲ",                 // "Please set B side"
    "\x8Dｼﾞｯﾄ\x8Cｶﾞﾏﾝ\x8Dﾉ\x8Cｺ\x8Dﾃﾞｱｯﾀ", // "Be patient, now"
    "\x8Dｲﾏｼﾊﾞﾗｸｵﾏﾁｸﾀﾞｻｲ",                 // "Please wait just a minute"
    "\x8Dｱﾜﾃﾅｲｱﾜﾃﾅｲ｡ﾋﾄﾔｽﾐﾋﾄﾔｽﾐ｡",          // "Don't worry, don't worry. Take a break, take a break"
};

void Select_PrintLoadingMessage(SelectContext* this, GfxPrint* printer) {
    s32 randomMsg;

    GfxPrint_SetPos(printer, 0xA, 0xF);
    GfxPrint_SetColor(printer, 255, 255, 255, 255);
    randomMsg = Math_Rand_ZeroOne() * ARRAY_COUNT(sLoadingMessages);
    GfxPrint_Printf(printer, "%s", sLoadingMessages[randomMsg]);
}

static char* sAgeLabels[] = {
    "\x8D"
    "17(ﾜｶﾓﾉ)", // "17(young)"
    "\x8D"
    "5(ﾜｶｽｷﾞ)", // "5(very young)"
};

void Select_PrintAgeSetting(SelectContext* this, GfxPrint* printer, s32 age) {
    GfxPrint_SetPos(printer, 4, 26);
    GfxPrint_SetColor(printer, 255, 255, 55, 255);
    GfxPrint_Printf(printer, "Age:%s", sAgeLabels[age]);
}

void Select_PrintCutsceneSetting(SelectContext* this, GfxPrint* printer, u16 csIndex) {
    char* label;

    GfxPrint_SetPos(printer, 4, 25);
    GfxPrint_SetColor(printer, 255, 255, 55, 255);

    switch (csIndex) {
        case 0:
            label = "\x8D ﾖﾙ \x8Cｺﾞﾛﾝ";
            gSaveContext.dayTime = 0;
            break;
        case 0x8000:
            // clang-format off
            gSaveContext.dayTime = 0x8000; label = "\x8Dｵﾋﾙ \x8Cｼﾞｬﾗ";
            // clang-format on
            break;
        case 0xFFF0:
            // clang-format off
            gSaveContext.dayTime = 0x8000; label = "ﾃﾞﾓ00";
            // clang-format on
            break;
        case 0xFFF1:
            label = "ﾃﾞﾓ01";
            break;
        case 0xFFF2:
            label = "ﾃﾞﾓ02";
            break;
        case 0xFFF3:
            label = "ﾃﾞﾓ03";
            break;
        case 0xFFF4:
            label = "ﾃﾞﾓ04";
            break;
        case 0xFFF5:
            label = "ﾃﾞﾓ05";
            break;
        case 0xFFF6:
            label = "ﾃﾞﾓ06";
            break;
        case 0xFFF7:
            label = "ﾃﾞﾓ07";
            break;
        case 0xFFF8:
            label = "ﾃﾞﾓ08";
            break;
        case 0xFFF9:
            label = "ﾃﾞﾓ09";
            break;
        case 0xFFFA:
            label = "ﾃﾞﾓ0A";
            break;
    };

    gSaveContext.environmentTime = gSaveContext.dayTime;
    GfxPrint_Printf(printer, "Stage:\x8C%s", label);
}

void Select_DrawMenu(SelectContext* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    GfxPrint* printer;

    OPEN_DISPS(gfxCtx, "../z_select.c", 930);

    gSPSegment(oGfxCtx->polyOpa.p++, 0x00, NULL);
    func_80095248(gfxCtx, 0, 0, 0);
    SET_FULLSCREEN_VIEWPORT(&this->view);
    func_800AAA50(&this->view, 0xF);
    func_80094140(gfxCtx);
    printer = alloca(sizeof(GfxPrint));
    GfxPrint_Init(printer);
    GfxPrint_Open(printer, oGfxCtx->polyOpa.p);
    Select_PrintMenu(this, printer);
    Select_PrintAgeSetting(this, printer, ((void)0, gSaveContext.linkAge));
    Select_PrintCutsceneSetting(this, printer, ((void)0, gSaveContext.cutsceneIndex));
    oGfxCtx->polyOpa.p = GfxPrint_Close(printer);
    GfxPrint_Destroy(printer);

    CLOSE_DISPS(gfxCtx, "../z_select.c", 966);
}

void Select_DrawLoadingScreen(SelectContext* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    GfxPrint* printer;

    OPEN_DISPS(gfxCtx, "../z_select.c", 977);

    gSPSegment(oGfxCtx->polyOpa.p++, 0x00, NULL);
    func_80095248(gfxCtx, 0, 0, 0);
    SET_FULLSCREEN_VIEWPORT(&this->view);
    func_800AAA50(&this->view, 0xF);
    func_80094140(gfxCtx);
    printer = alloca(sizeof(GfxPrint));
    GfxPrint_Init(printer);
    GfxPrint_Open(printer, oGfxCtx->polyOpa.p);
    Select_PrintLoadingMessage(this, printer);
    oGfxCtx->polyOpa.p = GfxPrint_Close(printer);
    GfxPrint_Destroy(printer);

    CLOSE_DISPS(gfxCtx, "../z_select.c", 1006);
}

void Select_Draw(SelectContext* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_select.c", 1013);

    gSPSegment(oGfxCtx->polyOpa.p++, 0x00, NULL);
    func_80095248(gfxCtx, 0, 0, 0);
    SET_FULLSCREEN_VIEWPORT(&this->view);
    func_800AAA50(&this->view, 0xF);

    if (!this->state.running) {
        Select_DrawLoadingScreen(this);
    } else {
        Select_DrawMenu(this);
    }

    CLOSE_DISPS(gfxCtx, "../z_select.c", 1037);
}

void Select_Main(GameState* thisx) {
    SelectContext* this = (SelectContext*)thisx;
    
    Select_UpdateMenu(this);
    Select_Draw(this);
}

void Select_Destroy(GameState* thisx) {
    osSyncPrintf("%c", 7);
    // "view_cleanup will hang, so it won't be called"
    osSyncPrintf("*** view_cleanupはハングアップするので、呼ばない ***\n");
}

void Select_Init(GameState* thisx) {
    SelectContext* this = (SelectContext*)thisx;
    u32 size;
    s32 pad;

    this->state.main = Select_Main;
    this->state.destroy = Select_Destroy;
    this->scenes = sScenes;
    this->unk_20C = 0;
    this->currentScene = 0;
    this->unk_1E0[0] = 0;
    this->unk_1E0[1] = 0x13;
    this->unk_1E0[2] = 0x25;
    this->unk_1E0[3] = 0x33;
    this->unk_1E0[4] = 0x3B;
    this->unk_1E0[5] = 0x49;
    this->unk_1E0[6] = 0x5B;
    this->unk_1DC = 0;
    this->opt = 0;
    this->count = 126;
    View_Init(&this->view, this->state.gfxCtx);
    this->view.flags = 0xA;
    this->unk_21C = 0;
    this->unk_220 = 0;
    this->unk_224 = 0;
    this->unk_228 = 0;
    this->unk_22C = 0;
    this->unk_230 = 0;
    this->unk_234 = 0;

    size = (u32)_z_select_staticSegmentRomEnd - (u32)_z_select_staticSegmentRomStart;

    if ((dREG(80) >= 0) && (dREG(80) < this->count)) {
        this->currentScene = dREG(80);
        this->unk_20C = dREG(81);
        this->unk_1DC = dREG(82);
    }
    SREG(30) = 1;

    this->staticSegment = GameState_Alloc(this, size, "../z_select.c", 1114);
    DmaMgr_SendRequest1(this->staticSegment, _z_select_staticSegmentRomStart, size, "../z_select.c", 1115);
    gSaveContext.cutsceneIndex = 0x8000;
    gSaveContext.linkAge = 1;
}
