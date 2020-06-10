#include <ultra64.h>
#include <global.h>
#include <vt.h>
#include <alloca.h>

void Select_LoadTitle(SelectContext* this) {
    this->state.running = false;
    SET_NEXT_GAMESTATE(&this->state, Title_Init, TitleContext);
}

void Select_LoadGame(SelectContext* this, s32 entranceIndex) {
    osSyncPrintf(VT_FGCOL(BLUE));
    osSyncPrintf("\n\n\nＦＩＬＥ＿ＮＯ＝%x\n\n\n", gSaveContext.fileNum);
    osSyncPrintf(VT_RST);
    if (gSaveContext.fileNum == 0xFF) {
        func_800A82C8();
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
    gSaveContext.respawn[0].entranceIndex = -1;
    gSaveContext.seqIndex = 0xFF;
    gSaveContext.nightSeqIndex = 0xFF;
    gSaveContext.unk_13C7 = 1;
    D_8011FB30 = 0;
    this->state.running = false;
    SET_NEXT_GAMESTATE(&this->state, Gameplay_Init, GlobalContext)
}

static MapEntry sMaps[] = {
    { " 1:SPOT00", Select_LoadGame, 0x000000CD },
    { " 2:SPOT01", Select_LoadGame, 0x000000DB },
    { " 3:SPOT02", Select_LoadGame, 0x000000E4 },
    { " 4:SPOT03", Select_LoadGame, 0x000000EA },
    { " 5:SPOT04", Select_LoadGame, 0x000000EE },
    { " 6:SPOT05", Select_LoadGame, 0x000000FC },
    { " 7:SPOT06", Select_LoadGame, 0x00000102 },
    { " 8:SPOT07", Select_LoadGame, 0x00000108 },
    { " 9:SPOT08", Select_LoadGame, 0x0000010E },
    { "10:SPOT09", Select_LoadGame, 0x00000117 },
    { "11:SPOT10", Select_LoadGame, 0x0000011E },
    { "12:SPOT11", Select_LoadGame, 0x00000123 },
    { "13:SPOT12", Select_LoadGame, 0x00000129 },
    { "14:SPOT13", Select_LoadGame, 0x00000130 },
    { "15:SPOT15", Select_LoadGame, 0x00000138 },
    { "16:SPOT16", Select_LoadGame, 0x0000013D },
    { "17:SPOT17", Select_LoadGame, 0x00000147 },
    { "18:SPOT18", Select_LoadGame, 0x0000014D },
    { "19:SPOT20", Select_LoadGame, 0x00000157 },
    { "20:\x8Dﾄｷﾉﾏ", Select_LoadGame, 0x00000053 },
    { "21:\x8Dｹﾝｼﾞｬﾉﾏ", Select_LoadGame, 0x0000006B },
    { "22:\x8Dｼｬﾃｷｼﾞｮｳ", Select_LoadGame, 0x0000003B },
    { "23:\x8Cﾊｲﾗﾙ\x8Dﾆﾜ\x8Cｹﾞｰﾑ", Select_LoadGame, 0x0000007A },
    { "24:\x8Dﾊｶｼﾀﾄﾋﾞｺﾐｱﾅ", Select_LoadGame, 0x0000031C },
    { "25:\x8Dﾊｶｼﾀﾄﾋﾞｺﾐｱﾅ 2", Select_LoadGame, 0x0000004B },
    { "26:\x8Dｵｳｹ ﾉ ﾊｶｱﾅ", Select_LoadGame, 0x0000002D },
    { "27:\x8Dﾀﾞｲﾖｳｾｲﾉｲｽﾞﾐ", Select_LoadGame, 0x00000315 },
    { "28:\x8Dﾄﾋﾞｺﾐ ﾖｳｾｲ ｱﾅ", Select_LoadGame, 0x0000036D },
    { "29:\x8Dﾏﾎｳｾｷ ﾖｳｾｲﾉｲｽﾞﾐ", Select_LoadGame, 0x00000371 },
    { "30:\x8Cｶﾞﾉﾝ\x8Dｻｲｼｭｳｾﾝ", Select_LoadGame, 0x0000043F },
    { "31:\x8Cﾊｲﾗﾙ\x8Dﾅｶﾆﾜ", Select_LoadGame, 0x00000400 },
    { "32:\x8Dﾂﾘﾎﾞﾘ", Select_LoadGame, 0x0000045F },
    { "33:\x8Cﾎﾞﾑﾁｭｳﾎﾞｰﾘﾝｸﾞ", Select_LoadGame, 0x00000507 },
    { "34:\x8Cﾛﾝﾛﾝ\x8Dﾎﾞｸｼﾞｮｳ ｿｳｺ 1", Select_LoadGame, 0x0000004F },
    { "35:\x8Cﾛﾝﾛﾝ\x8Dﾎﾞｸｼﾞｮｳ ｿｳｺ 2", Select_LoadGame, 0x000005D0 },
    { "36:\x8Dﾐﾊﾘ ｺﾞﾔ", Select_LoadGame, 0x0000007E },
    { "37:\x8Dﾏﾎｳ ﾉ ｸｽﾘﾔ", Select_LoadGame, 0x00000072 },
    { "38:\x8Dﾀｶﾗﾊﾞｺﾔ", Select_LoadGame, 0x00000063 },
    { "39:\x8Dｷﾝ \x8Cｽﾀﾙﾁｭﾗ ﾊｳｽ", Select_LoadGame, 0x00000550 },
    { "40:\x8Dｼﾞｮｳｶﾏﾁ ｲﾘｸﾞﾁ", Select_LoadGame, 0x00000033 },
    { "41:\x8Dｼﾞｮｳｶﾏﾁ", Select_LoadGame, 0x000000B1 },
    { "42:\x8Dｳﾗﾛｼﾞ", Select_LoadGame, 0x000000AD },
    { "43:\x8Dﾄｷﾉｼﾝﾃﾞﾝ ﾏｴ", Select_LoadGame, 0x00000171 },
    { "44:\x8Dﾘﾝｸﾉｲｴ", Select_LoadGame, 0x000000BB },
    { "45:\x8Cｶｶﾘｺ\x8Dﾑﾗﾉﾅｶﾞﾔ", Select_LoadGame, 0x000002FD },
    { "46:\x8Dｳﾗﾛｼﾞﾉ ｲｴ", Select_LoadGame, 0x0000043B },
    { "47:\x8Dｺｷﾘﾉﾑﾗ ﾓﾉｼﾘｷｮｳﾀﾞｲﾉｲｴ", Select_LoadGame, 0x000000C9 },
    { "48:\x8Dｺｷﾘﾉﾑﾗ ﾌﾀｺﾞﾉｲｴ", Select_LoadGame, 0x0000009C },
    { "49:\x8Dｺｷﾘﾉﾑﾗ \x8Cﾐﾄﾞ\x8Dﾉｲｴ", Select_LoadGame, 0x00000433 },
    { "50:\x8Dｺｷﾘﾉﾑﾗ \x8Cｻﾘｱ\x8Dﾉｲｴ", Select_LoadGame, 0x00000437 },
    { "51:\x8Dｳﾏｺﾞﾔ", Select_LoadGame, 0x000002F9 },
    { "52:\x8Dﾊｶﾓﾘﾉｲｴ", Select_LoadGame, 0x0000030D },
    { "53:\x8Dｳﾗﾛｼﾞ ｲﾇｵﾊﾞｻﾝﾉｲｴ", Select_LoadGame, 0x00000398 },
    { "54:\x8Dｶｶﾘｺﾑﾗ \x8Cｲﾝﾊﾟ\x8Dﾉｲｴ", Select_LoadGame, 0x0000039C },
    { "55:\x8Cﾊｲﾘｱ\x8D ｹﾝｷｭｳｼﾞｮ", Select_LoadGame, 0x00000043 },
    { "56:\x8Cﾃﾝﾄ", Select_LoadGame, 0x000003A0 },
    { "57:\x8Dﾀﾃﾉﾐｾ", Select_LoadGame, 0x000000B7 },
    { "58:\x8Dｺｷﾘｿﾞｸﾉﾐｾ", Select_LoadGame, 0x000000C1 },
    { "59:\x8Cｺﾞﾛﾝ\x8Dﾉﾐｾ", Select_LoadGame, 0x0000037C },
    { "60:\x8Cｿﾞｰﾗ\x8Dﾉﾐｾ", Select_LoadGame, 0x00000380 },
    { "61:\x8Cｶｶﾘｺ\x8Dﾑﾗ  ｸｽﾘﾔ", Select_LoadGame, 0x00000384 },
    { "62:\x8Dｼﾞｮｳｶﾏﾁ ｸｽﾘﾔ", Select_LoadGame, 0x00000388 },
    { "63:\x8Dｳﾗﾛｼﾞ ﾖﾙﾉﾐｾ", Select_LoadGame, 0x00000390 },
    { "64:\x8Dｵﾒﾝﾔ", Select_LoadGame, 0x00000530 },
    { "65:\x8Cｹﾞﾙﾄﾞ\x8Dﾉｼｭｳﾚﾝｼﾞｮｳ", Select_LoadGame, 0x00000008 },
    { "66:\x8Dﾖｳｾｲﾉｷﾉ \x8Cﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x00000000 },
    { "67:\x8Dﾖｳｾｲﾉｷﾉ \x8Cﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", Select_LoadGame, 0x0000040F },
    { "68:\x8Cﾄﾞﾄﾞﾝｺﾞ ﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x00000004 },
    { "69:\x8Cﾄﾞﾄﾞﾝｺﾞ ﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", Select_LoadGame, 0x0000040B },
    { "70:\x8Dｷｮﾀﾞｲｷﾞｮ \x8Cﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x00000028 },
    { "71:\x8Dｷｮﾀﾞｲｷﾞｮ \x8Cﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", Select_LoadGame, 0x00000301 },
    { "72:\x8Dﾓﾘﾉｼﾝﾃﾞﾝ", Select_LoadGame, 0x00000169 },
    { "73:\x8Dﾓﾘﾉｼﾝﾃﾞﾝ \x8Cﾎﾞｽ", Select_LoadGame, 0x0000000C },
    { "74:\x8Dｲﾄﾞｼﾀ \x8Cﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x00000098 },
    { "75:\x8Dﾊｶｼﾀ \x8Cﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x00000037 },
    { "76:\x8Dﾊｶｼﾀ \x8Cﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", Select_LoadGame, 0x00000413 },
    { "77:\x8Dﾋﾉｼﾝﾃﾞﾝ", Select_LoadGame, 0x00000165 },
    { "78:\x8Dﾋﾉｼﾝﾃﾞﾝ \x8Cﾎﾞｽ", Select_LoadGame, 0x00000305 },
    { "79:\x8Dﾐｽﾞﾉｼﾝﾃﾞﾝ", Select_LoadGame, 0x00000010 },
    { "80:\x8Dﾐｽﾞﾉｼﾝﾃﾞﾝ \x8Cﾎﾞｽ", Select_LoadGame, 0x00000417 },
    { "81:\x8Dｼﾞｬｼﾝｿﾞｳ \x8Cﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x00000082 },
    { "82:\x8Dｼﾞｬｼﾝｿﾞｳ \x8Cﾀﾞﾝｼﾞｮﾝ ｱｲｱﾝﾅｯｸ", Select_LoadGame, 0x0000008D },
    { "83:\x8Dｼﾞｬｼﾝｿﾞｳ \x8Cﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", Select_LoadGame, 0x000005EC },
    { "84:\x8Cｶﾞﾉﾝ\x8Dﾉﾄｳ", Select_LoadGame, 0x0000041B },
    { "85:\x8Cｶﾞﾉﾝ\x8Dﾉﾄｳ\x8Cﾎﾞｽ", Select_LoadGame, 0x0000041F },
    { "86:\x8Dｺｵﾘﾉﾄﾞｳｸﾂ", Select_LoadGame, 0x00000088 },
    { "87:\x8Dﾊｶｼﾀ\x8Cﾘﾚｰ", Select_LoadGame, 0x0000044F },
    { "88:\x8Cｶﾞﾉﾝ\x8Dﾁｶ \x8Cﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x00000467 },
    { "89:\x8Cｶﾞﾉﾝ\x8Dｻｲｼｭｳｾﾝ \x8Cﾃﾞﾓ & ﾊﾞﾄﾙ", Select_LoadGame, 0x00000517 },
    { "90:\x8Cｶﾞﾉﾝ\x8Dﾉﾄｳ ｿﾉｺﾞ 1", Select_LoadGame, 0x00000179 },
    { "91:\x8Cｶﾞﾉﾝ\x8Dﾉﾄｳ ｿﾉｺﾞ 2", Select_LoadGame, 0x000001B5 },
    { "92:\x8Cｶﾞﾉﾝ\x8Dﾉﾄｳ ｿﾉｺﾞ 3", Select_LoadGame, 0x000003DC },
    { "93:\x8Cｶﾞﾉﾝ\x8Dﾉﾄｳ ｿﾉｺﾞ 4", Select_LoadGame, 0x000003E4 },
    { "94:\x8Cｶﾞﾉﾝ\x8Dﾁｶ ｿﾉｺﾞ", Select_LoadGame, 0x0000056C },
    { "95:\x8Cｹﾞﾙﾄﾞ\x8Dﾂｳﾛ 1-2", Select_LoadGame, 0x00000486 },
    { "96:\x8Cｹﾞﾙﾄﾞ\x8Dﾂｳﾛ 3-4 9-10", Select_LoadGame, 0x0000048E },
    { "97:\x8Cｹﾞﾙﾄﾞ\x8Dﾂｳﾛ 5-6", Select_LoadGame, 0x00000496 },
    { "98:\x8Cｹﾞﾙﾄﾞ\x8Dﾂｳﾛ 7-8", Select_LoadGame, 0x0000049E },
    { "99:\x8Cｹﾞﾙﾄﾞ\x8Dﾂｳﾛ 11-12", Select_LoadGame, 0x000004AE },
    { "100:\x8Cｹﾞﾙﾄﾞ\x8Dﾂｳﾛ 13", Select_LoadGame, 0x00000570 },
    { "101:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 0", Select_LoadGame, 0x0000003F },
    { "102:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 1", Select_LoadGame, 0x00000598 },
    { "103:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 2", Select_LoadGame, 0x0000059C },
    { "104:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 3", Select_LoadGame, 0x000005A0 },
    { "105:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 4", Select_LoadGame, 0x000005A4 },
    { "106:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 5", Select_LoadGame, 0x000005A8 },
    { "107:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 6", Select_LoadGame, 0x000005AC },
    { "108:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 7", Select_LoadGame, 0x000005B0 },
    { "109:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 8", Select_LoadGame, 0x000005B4 },
    { "110:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 9", Select_LoadGame, 0x000005B8 },
    { "111:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 10", Select_LoadGame, 0x000005BC },
    { "112:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 11", Select_LoadGame, 0x000005C0 },
    { "113:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 12", Select_LoadGame, 0x000005C4 },
    { "114:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 13", Select_LoadGame, 0x000005FC },
    { "115:\x8Cﾊｲﾗﾙ ﾃﾞﾓ", Select_LoadGame, 0x000000A0 }, // BD20F0
    { "116:\x8Dﾍﾞｯｼﾂ (ﾀｶﾗﾊﾞｺ\x8Cﾜｰﾌﾟ)", Select_LoadGame, 0x00000520 },
    { "117:\x8Dｻｻ\x8Cﾃｽﾄ", Select_LoadGame, 0x00000018 },
    { "118:\x8Cﾃｽﾄﾏｯﾌﾟ", Select_LoadGame, 0x00000094 },
    { "119:\x8Cﾃｽﾄﾙｰﾑ", Select_LoadGame, 0x00000024 },
    { "120:\x8Dﾁｭｳ\x8Cｽﾀﾛﾌｫｽ\x8Dﾍﾞﾔ", Select_LoadGame, 0x0000001C },
    { "121:\x8Cﾎﾞｽｽﾀﾛﾌｫｽ\x8Dﾍﾞﾔ", Select_LoadGame, 0x00000020 },
    { "122:Sutaru", Select_LoadGame, 0x00000047 },
    { "123:jikkenjyou", Select_LoadGame, 0x000002EA },
    { "124:depth\x8Cﾃｽﾄ", Select_LoadGame, 0x000000B6 },
    { "125:\x8Cﾊｲﾗﾙ\x8Dﾆﾜ\x8Cｹﾞｰﾑ2", Select_LoadGame, 0x00000076 },
    { "title", Select_LoadTitle, 0x00000000 },
};

//mostly regalloc, a good amount of instruction ordering. confirmed equivalent in game.
#ifdef NON_MATCHING
void Select_UpdateMenu(SelectContext* this) {
    Input* pad1;
    s32 pad;
    MapEntry* selectedMap;

    pad1 = &this->state.input[0];

    if (this->unk_21C == 0) {

        if (CHECK_PAD(pad1->press, A_BUTTON) || CHECK_PAD(pad1->press, START_BUTTON)) {
            selectedMap = &this->maps[this->currentMap];
            if (selectedMap->loadFunc != NULL) {
                selectedMap->loadFunc(this, selectedMap->entranceIndex);
            }
        }

        if (CHECK_PAD(pad1->press, B_BUTTON)) {
            if (LINK_AGE_IN_YEARS == YEARS_ADULT) {
                gSaveContext.linkAge = 1;
            } else {
                gSaveContext.linkAge = 0;
            }
        }

        if (CHECK_PAD(pad1->press, Z_TRIG)) {
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
        } else if (CHECK_PAD(pad1->press, R_TRIG)) {
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
        if (CHECK_PAD(pad1->press, U_CBUTTONS)) {
            this->opt--;
        }
        if (CHECK_PAD(pad1->press, D_CBUTTONS)) {
            this->opt++;
        }

        if (CHECK_PAD(pad1->press, U_JPAD)) {
            if (this->unk_22C == 1) {
                this->unk_224 = 0;
            }
            if (this->unk_224 == 0) {
                this->unk_224 = 0x14;
                this->unk_22C = 1;
                Audio_PlaySoundGeneral(0x1800, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                this->unk_220 = SREG(30);
            }
        }

        if (CHECK_PAD(pad1->cur, U_JPAD) && this->unk_224 == 0) {
            Audio_PlaySoundGeneral(0x1800, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->unk_220 = SREG(30) * 3;
        }

        if (CHECK_PAD(pad1->press, D_JPAD)) {
            if (this->unk_230 == 1) {
                this->unk_228 = 0;
            }
            if (this->unk_228 == 0) {
                this->unk_228 = 0x14;
                this->unk_230 = 1;
                Audio_PlaySoundGeneral(0x1800, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                this->unk_220 = -SREG(30);
            }
        }

        if (CHECK_PAD(pad1->cur, D_JPAD) && (this->unk_228 == 0)) {
            Audio_PlaySoundGeneral(0x1800, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->unk_220 = -SREG(30) * 3;
        }

        if (CHECK_PAD(pad1->press, L_JPAD) || CHECK_PAD(pad1->cur, L_JPAD)) {//
            Audio_PlaySoundGeneral(0x1800, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->unk_220 = SREG(30);
        }

        if (CHECK_PAD(pad1->press, R_JPAD) || CHECK_PAD(pad1->cur, R_JPAD)) {
            Audio_PlaySoundGeneral(0x1800, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->unk_220 = -SREG(30);
        }
    }

    if (CHECK_PAD(pad1->press, L_TRIG)) {
        this->unk_1DC = (++this->unk_1DC + 7) % 7;
        this->currentMap = this->unk_20C = this->unk_1E0[this->unk_1DC];
    }

    this->unk_21C += this->unk_220;

    if (this->unk_21C < -7) {
        this->unk_220 = 0;
        this->unk_21C = 0;

        this->currentMap = (++this->currentMap + this->count) % this->count;
        if (this->currentMap == ((this->unk_20C + this->count + 0x13) % this->count)) {
            this->unk_20C = (++this->unk_20C + this->count) % this->count;
        }
    }

    if (this->unk_21C >= 8) {
        this->unk_220 = 0;
        this->unk_21C = 0;

        if (this->currentMap == this->unk_20C) {
            this->unk_20C = ((this->unk_20C - 2) + this->count) % this->count;
        }

        this->currentMap = ((--this->currentMap) + this->count) % this->count;

        if (this->currentMap == ((this->unk_20C + this->count) % this->count)) {
            this->unk_20C = (--this->unk_20C + this->count) % this->count;
        }
    }

    this->currentMap = (this->currentMap + this->count) % this->count;
    this->unk_20C = (this->unk_20C + this->count) % this->count;

    dREG(80) = this->currentMap;
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
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_select/Select_UpdateMenu.s")
#endif

void Select_PrintMenu(SelectContext* this, GfxPrint* printer) {
    s32 map;
    s32 i;
    char* name;

    GfxPrint_SetColor(printer, 255, 155, 150, 255);
    GfxPrint_SetPos(printer, 12, 2);
    GfxPrint_Printf(printer, "ZELDA MAP SELECT");
    GfxPrint_SetColor(printer, 255, 255, 255, 255);

    for (i = 0; i < 20; i++) {
        GfxPrint_SetPos(printer, 9, i + 4);

        map = ((this->unk_20C + i) + this->count) % this->count;
        if (map == this->currentMap) {
            GfxPrint_SetColor(printer, 255, 20, 20, 255);
        } else {
            GfxPrint_SetColor(printer, 200, 200, 55, 255);
        }

        name = this->maps[map].name;
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
    "\x8Dｼﾊﾞﾗｸｵﾏﾁｸﾀﾞｻｲ", // "Please wait a minute"
    "\x8Dﾁｮｯﾄ ﾏｯﾃﾈ",     // "Hold on a sec"
    "\x8Cｳｪｲﾄ ｱ ﾓｰﾒﾝﾄ",  // "Wait a moment"
    "\x8Cﾛｰﾄﾞ\x8Dﾁｭｳ",   // "Loading"
    "\x8Dﾅｳ ﾜｰｷﾝｸﾞ",     // "Now working"
    "\x8Dｲﾏ ﾂｸｯﾃﾏｽ",     // "Now creating"
    "\x8Dｺｼｮｳｼﾞｬﾅｲﾖ",    // "It's not broken"
    "\x8Cｺｰﾋｰ ﾌﾞﾚｲｸ",    // "Coffee Break"
    "\x8C"
    "Bﾒﾝｦｾｯﾄｼﾃｸﾀﾞｻｲ",                      // "Please set B side"
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
    GraphicsContext* gfxCtx;
    GfxPrint* printer;
    Gfx* dispRefs[5];

    gfxCtx = this->state.gfxCtx;
    Graph_OpenDisps(dispRefs, gfxCtx, "../z_select.c", 930);
    
    gSPSegment(gfxCtx->polyOpa.p++, 0x00, 0x00000000);
    func_80095248(gfxCtx, 0, 0, 0);
    INIT_FULLSCREEN_VIEWPORT(&this->view)
    func_800AAA50(&this->view, 0xF);
    func_80094140(gfxCtx);
    printer = alloca(sizeof(GfxPrint));
    GfxPrint_Init(printer);
    GfxPrint_Open(printer, gfxCtx->polyOpa.p);
    Select_PrintMenu(this, printer);
    {
        s32 arg;

        arg = gSaveContext.linkAge;
        Select_PrintAgeSetting(this, printer, arg);

        arg = gSaveContext.cutsceneIndex & 0xFFFF;
        Select_PrintCutsceneSetting(this, printer, arg);
    }
    gfxCtx->polyOpa.p = GfxPrint_Close(printer);
    GfxPrint_Destroy(printer);

    Graph_CloseDisps(dispRefs, gfxCtx, "../z_select.c", 966);
}

void Select_DrawLoadingScreen(SelectContext* this) {
    GraphicsContext* gfxCtx;
    GfxPrint* printer;
    Gfx* dispRefs[5];

    gfxCtx = this->state.gfxCtx;
    Graph_OpenDisps(dispRefs, gfxCtx, "../z_select.c", 977);

    gSPSegment(gfxCtx->polyOpa.p++, 0x00, 0x00000000);
    func_80095248(gfxCtx, 0, 0, 0);
    INIT_FULLSCREEN_VIEWPORT(&this->view)
    func_800AAA50(&this->view, 0xF);
    func_80094140(gfxCtx);
    printer = alloca(sizeof(GfxPrint));
    GfxPrint_Init(printer);
    GfxPrint_Open(printer, gfxCtx->polyOpa.p);
    Select_PrintLoadingMessage(this, printer);
    gfxCtx->polyOpa.p = GfxPrint_Close(printer);
    GfxPrint_Destroy(printer);

    Graph_CloseDisps(dispRefs, gfxCtx, "../z_select.c", 1006);
}

void Select_Draw(SelectContext* this) {
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[5];

    gfxCtx = this->state.gfxCtx;
    Graph_OpenDisps(dispRefs, gfxCtx, "../z_select.c", 1013);
    gSPSegment(gfxCtx->polyOpa.p++, 0x00, 0x00000000);
    func_80095248(gfxCtx, 0, 0, 0);
    INIT_FULLSCREEN_VIEWPORT(&this->view)
    func_800AAA50(&this->view, 0xF);

    if (this->state.running == false) {
        Select_DrawLoadingScreen(this);
    } else {
        Select_DrawMenu(this);
    }

    Graph_CloseDisps(dispRefs, gfxCtx, "../z_select.c", 1037);
}

void Select_Main(SelectContext* this) {
    Select_UpdateMenu(this);
    Select_Draw(this);
}

void Select_Destroy(SelectContext* this) {
    osSyncPrintf("%c", 7);
    // "view_cleanup will hang, so it won't be called"
    osSyncPrintf("*** view_cleanupはハングアップするので、呼ばない ***\n");
}

void Select_Init(SelectContext* this) {
    u32 size;
    s32 pad[2];

    this->state.main = Select_Main;
    this->state.destroy = Select_Destroy;
    this->maps = sMaps;
    this->unk_20C = 0;
    this->currentMap = 0;
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
        this->currentMap = dREG(80);
        this->unk_20C = dREG(81);
        this->unk_1DC = dREG(82);
    }
    SREG(30) = 1;

    this->staticSegment = GameState_Alloc(this, size, "../z_select.c", 1114);
    DmaMgr_SendRequest1(this->staticSegment, _z_select_staticSegmentRomStart, size, "../z_select.c", 1115);
    gSaveContext.cutsceneIndex = 0x8000;
    gSaveContext.linkAge = 1;
}
