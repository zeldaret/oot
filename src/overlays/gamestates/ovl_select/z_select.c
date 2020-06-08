#include <ultra64.h>
#include <global.h>
#include <vt.h>
#include <alloca.h>

void func_80800B90(SelectContext*);
void func_80800BAC(SelectContext*, s32);

static SelectSlot slotData[] = {
    { " 1:SPOT00", func_80800BAC, 0x000000CD },
    { " 2:SPOT01", func_80800BAC, 0x000000DB },
    { " 3:SPOT02", func_80800BAC, 0x000000E4 },
    { " 4:SPOT03", func_80800BAC, 0x000000EA },
    { " 5:SPOT04", func_80800BAC, 0x000000EE },
    { " 6:SPOT05", func_80800BAC, 0x000000FC },
    { " 7:SPOT06", func_80800BAC, 0x00000102 },
    { " 8:SPOT07", func_80800BAC, 0x00000108 },
    { " 9:SPOT08", func_80800BAC, 0x0000010E },
    { "10:SPOT09", func_80800BAC, 0x00000117 },
    { "11:SPOT10", func_80800BAC, 0x0000011E },
    { "12:SPOT11", func_80800BAC, 0x00000123 },
    { "13:SPOT12", func_80800BAC, 0x00000129 },
    { "14:SPOT13", func_80800BAC, 0x00000130 },
    { "15:SPOT15", func_80800BAC, 0x00000138 },
    { "16:SPOT16", func_80800BAC, 0x0000013D },
    { "17:SPOT17", func_80800BAC, 0x00000147 },
    { "18:SPOT18", func_80800BAC, 0x0000014D },
    { "19:SPOT20", func_80800BAC, 0x00000157 },
    { "20:・ﾄｷﾉﾏ", func_80800BAC, 0x00000053 },
    { "21:・ｹﾝｼﾞｬﾉﾏ", func_80800BAC, 0x0000006B },
    { "22:・ｼｬﾃｷｼﾞｮｳ", func_80800BAC, 0x0000003B },
    { "23:・ﾊｲﾗﾙ・ﾆﾜ・ｹﾞｰﾑ", func_80800BAC, 0x0000007A },
    { "24:・ﾊｶｼﾀﾄﾋﾞｺﾐｱﾅ", func_80800BAC, 0x0000031C },
    { "25:・ﾊｶｼﾀﾄﾋﾞｺﾐｱﾅ 2", func_80800BAC, 0x0000004B },
    { "26:・ｵｳｹ ﾉ ﾊｶｱﾅ", func_80800BAC, 0x0000002D },
    { "27:・ﾀﾞｲﾖｳｾｲﾉｲｽﾞﾐ", func_80800BAC, 0x00000315 },
    { "28:・ﾄﾋﾞｺﾐ ﾖｳｾｲ ｱﾅ", func_80800BAC, 0x0000036D },
    { "29:・ﾏﾎｳｾｷ ﾖｳｾｲﾉｲｽﾞﾐ", func_80800BAC, 0x00000371 },
    { "30:・ｶﾞﾉﾝ・ｻｲｼｭｳｾﾝ", func_80800BAC, 0x0000043F },
    { "31:・ﾊｲﾗﾙ・ﾅｶﾆﾜ", func_80800BAC, 0x00000400 },
    { "32:・ﾂﾘﾎﾞﾘ", func_80800BAC, 0x0000045F },
    { "33:・ﾎﾞﾑﾁｭｳﾎﾞｰﾘﾝｸﾞ", func_80800BAC, 0x00000507 },
    { "34:・ﾛﾝﾛﾝ・ﾎﾞｸｼﾞｮｳ ｿｳｺ 1", func_80800BAC, 0x0000004F },
    { "35:・ﾛﾝﾛﾝ・ﾎﾞｸｼﾞｮｳ ｿｳｺ 2", func_80800BAC, 0x000005D0 },
    { "36:・ﾐﾊﾘ ｺﾞﾔ", func_80800BAC, 0x0000007E },
    { "37:・ﾏﾎｳ ﾉ ｸｽﾘﾔ", func_80800BAC, 0x00000072 },
    { "38:・ﾀｶﾗﾊﾞｺﾔ", func_80800BAC, 0x00000063 },
    { "39:・ｷﾝ ・ｽﾀﾙﾁｭﾗ ﾊｳｽ", func_80800BAC, 0x00000550 },
    { "40:・ｼﾞｮｳｶﾏﾁ ｲﾘｸﾞﾁ", func_80800BAC, 0x00000033 },
    { "41:・ｼﾞｮｳｶﾏﾁ", func_80800BAC, 0x000000B1 },
    { "42:・ｳﾗﾛｼﾞ", func_80800BAC, 0x000000AD },
    { "43:・ﾄｷﾉｼﾝﾃﾞﾝ ﾏｴ", func_80800BAC, 0x00000171 },
    { "44:・ﾘﾝｸﾉｲｴ", func_80800BAC, 0x000000BB },
    { "45:・ｶｶﾘｺ・ﾑﾗﾉﾅｶﾞﾔ", func_80800BAC, 0x000002FD },
    { "46:・ｳﾗﾛｼﾞﾉ ｲｴ", func_80800BAC, 0x0000043B },
    { "47:・ｺｷﾘﾉﾑﾗ ﾓﾉｼﾘｷｮｳﾀﾞｲﾉｲｴ", func_80800BAC, 0x000000C9 },
    { "48:・ｺｷﾘﾉﾑﾗ ﾌﾀｺﾞﾉｲｴ", func_80800BAC, 0x0000009C },
    { "49:・ｺｷﾘﾉﾑﾗ ・ﾐﾄﾞ・ﾉｲｴ", func_80800BAC, 0x00000433 },
    { "50:・ｺｷﾘﾉﾑﾗ ・ｻﾘｱ・ﾉｲｴ", func_80800BAC, 0x00000437 },
    { "51:・ｳﾏｺﾞﾔ", func_80800BAC, 0x000002F9 },
    { "52:・ﾊｶﾓﾘﾉｲｴ", func_80800BAC, 0x0000030D },
    { "53:・ｳﾗﾛｼﾞ ｲﾇｵﾊﾞｻﾝﾉｲｴ", func_80800BAC, 0x00000398 },
    { "54:・ｶｶﾘｺﾑﾗ ・ｲﾝﾊﾟ・ﾉｲｴ", func_80800BAC, 0x0000039C },
    { "55:・ﾊｲﾘｱ・ ｹﾝｷｭｳｼﾞｮ", func_80800BAC, 0x00000043 },
    { "56:・ﾃﾝﾄ", func_80800BAC, 0x000003A0 },
    { "57:・ﾀﾃﾉﾐｾ", func_80800BAC, 0x000000B7 },
    { "58:・ｺｷﾘｿﾞｸﾉﾐｾ", func_80800BAC, 0x000000C1 },
    { "59:・ｺﾞﾛﾝ・ﾉﾐｾ", func_80800BAC, 0x0000037C },
    { "60:・ｿﾞｰﾗ・ﾉﾐｾ", func_80800BAC, 0x00000380 },
    { "61:・ｶｶﾘｺ・ﾑﾗ  ｸｽﾘﾔ", func_80800BAC, 0x00000384 },
    { "62:・ｼﾞｮｳｶﾏﾁ ｸｽﾘﾔ", func_80800BAC, 0x00000388 },
    { "63:・ｳﾗﾛｼﾞ ﾖﾙﾉﾐｾ", func_80800BAC, 0x00000390 },
    { "64:・ｵﾒﾝﾔ", func_80800BAC, 0x00000530 },
    { "65:・ｹﾞﾙﾄﾞ・ﾉｼｭｳﾚﾝｼﾞｮｳ", func_80800BAC, 0x00000008 },
    { "66:・ﾖｳｾｲﾉｷﾉ ・ﾀﾞﾝｼﾞｮﾝ", func_80800BAC, 0x00000000 },
    { "67:・ﾖｳｾｲﾉｷﾉ ・ﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", func_80800BAC, 0x0000040F },
    { "68:・ﾄﾞﾄﾞﾝｺﾞ ﾀﾞﾝｼﾞｮﾝ", func_80800BAC, 0x00000004 },
    { "69:・ﾄﾞﾄﾞﾝｺﾞ ﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", func_80800BAC, 0x0000040B },
    { "70:・ｷｮﾀﾞｲｷﾞｮ ・ﾀﾞﾝｼﾞｮﾝ", func_80800BAC, 0x00000028 },
    { "71:・ｷｮﾀﾞｲｷﾞｮ ・ﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", func_80800BAC, 0x00000301 },
    { "72:・ﾓﾘﾉｼﾝﾃﾞﾝ", func_80800BAC, 0x00000169 },
    { "73:・ﾓﾘﾉｼﾝﾃﾞﾝ ・ﾎﾞｽ", func_80800BAC, 0x0000000C },
    { "74:・ｲﾄﾞｼﾀ ・ﾀﾞﾝｼﾞｮﾝ", func_80800BAC, 0x00000098 },
    { "75:・ﾊｶｼﾀ ・ﾀﾞﾝｼﾞｮﾝ", func_80800BAC, 0x00000037 },
    { "76:・ﾊｶｼﾀ ・ﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", func_80800BAC, 0x00000413 },
    { "77:・ﾋﾉｼﾝﾃﾞﾝ", func_80800BAC, 0x00000165 },
    { "78:・ﾋﾉｼﾝﾃﾞﾝ ・ﾎﾞｽ", func_80800BAC, 0x00000305 },
    { "79:・ﾐｽﾞﾉｼﾝﾃﾞﾝ", func_80800BAC, 0x00000010 },
    { "80:・ﾐｽﾞﾉｼﾝﾃﾞﾝ ・ﾎﾞｽ", func_80800BAC, 0x00000417 },
    { "81:・ｼﾞｬｼﾝｿﾞｳ ・ﾀﾞﾝｼﾞｮﾝ", func_80800BAC, 0x00000082 },
    { "82:・ｼﾞｬｼﾝｿﾞｳ ・ﾀﾞﾝｼﾞｮﾝ ｱｲｱﾝﾅｯｸ", func_80800BAC, 0x0000008D },
    { "83:・ｼﾞｬｼﾝｿﾞｳ ・ﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", func_80800BAC, 0x000005EC },
    { "84:・ｶﾞﾉﾝ・ﾉﾄｳ", func_80800BAC, 0x0000041B },
    { "85:・ｶﾞﾉﾝ・ﾉﾄｳ・ﾎﾞｽ", func_80800BAC, 0x0000041F },
    { "86:・ｺｵﾘﾉﾄﾞｳｸﾂ", func_80800BAC, 0x00000088 },
    { "87:・ﾊｶｼﾀ・ﾘﾚｰ", func_80800BAC, 0x0000044F },
    { "88:・ｶﾞﾉﾝ・ﾁｶ ・ﾀﾞﾝｼﾞｮﾝ", func_80800BAC, 0x00000467 },
    { "89:・ｶﾞﾉﾝ・ｻｲｼｭｳｾﾝ ・ﾃﾞﾓ & ﾊﾞﾄﾙ", func_80800BAC, 0x00000517 },
    { "90:・ｶﾞﾉﾝ・ﾉﾄｳ ｿﾉｺﾞ 1", func_80800BAC, 0x00000179 },
    { "91:・ｶﾞﾉﾝ・ﾉﾄｳ ｿﾉｺﾞ 2", func_80800BAC, 0x000001B5 },
    { "92:・ｶﾞﾉﾝ・ﾉﾄｳ ｿﾉｺﾞ 3", func_80800BAC, 0x000003DC },
    { "93:・ｶﾞﾉﾝ・ﾉﾄｳ ｿﾉｺﾞ 4", func_80800BAC, 0x000003E4 },
    { "94:・ｶﾞﾉﾝ・ﾁｶ ｿﾉｺﾞ", func_80800BAC, 0x0000056C },
    { "95:・ｹﾞﾙﾄﾞ・ﾂｳﾛ 1-2", func_80800BAC, 0x00000486 },
    { "96:・ｹﾞﾙﾄﾞ・ﾂｳﾛ 3-4 9-10", func_80800BAC, 0x0000048E },
    { "97:・ｹﾞﾙﾄﾞ・ﾂｳﾛ 5-6", func_80800BAC, 0x00000496 },
    { "98:・ｹﾞﾙﾄﾞ・ﾂｳﾛ 7-8", func_80800BAC, 0x0000049E },
    { "99:・ｹﾞﾙﾄﾞ・ﾂｳﾛ 11-12", func_80800BAC, 0x000004AE },
    { "100:・ｹﾞﾙﾄﾞ・ﾂｳﾛ 13", func_80800BAC, 0x00000570 },
    { "101:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 0", func_80800BAC, 0x0000003F },
    { "102:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 1", func_80800BAC, 0x00000598 },
    { "103:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 2", func_80800BAC, 0x0000059C },
    { "104:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 3", func_80800BAC, 0x000005A0 },
    { "105:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 4", func_80800BAC, 0x000005A4 },
    { "106:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 5", func_80800BAC, 0x000005A8 },
    { "107:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 6", func_80800BAC, 0x000005AC },
    { "108:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 7", func_80800BAC, 0x000005B0 },
    { "109:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 8", func_80800BAC, 0x000005B4 },
    { "110:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 9", func_80800BAC, 0x000005B8 },
    { "111:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 10", func_80800BAC, 0x000005BC },
    { "112:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 11", func_80800BAC, 0x000005C0 },
    { "113:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 12", func_80800BAC, 0x000005C4 },
    { "114:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 13", func_80800BAC, 0x000005FC },
    { "115:・ﾊｲﾗﾙ ﾃﾞﾓ", func_80800BAC, 0x000000A0 },
    { "116:・ﾍﾞｯｼﾂ (ﾀｶﾗﾊﾞｺ・ﾜｰﾌﾟ)", func_80800BAC, 0x00000520 },
    { "117:・ｻｻ・ﾃｽﾄ", func_80800BAC, 0x00000018 },
    { "118:・ﾃｽﾄﾏｯﾌﾟ", func_80800BAC, 0x00000094 },
    { "119:・ﾃｽﾄﾙｰﾑ", func_80800BAC, 0x00000024 },
    { "120:・ﾁｭｳ・ｽﾀﾛﾌｫｽ・ﾍﾞﾔ", func_80800BAC, 0x0000001C },
    { "121:・ﾎﾞｽｽﾀﾛﾌｫｽ・ﾍﾞﾔ", func_80800BAC, 0x00000020 },
    { "122:Sutaru", func_80800BAC, 0x00000047 },
    { "123:jikkenjyou", func_80800BAC, 0x000002EA },
    { "124:depth・ﾃｽﾄ", func_80800BAC, 0x000000B6 },
    { "125:・ﾊｲﾗﾙ・ﾆﾜ・ｹﾞｰﾑ2", func_80800BAC, 0x00000076 },
    { "title", func_80800B90, 0x00000000 },
};

static char* sLoadingMessages[12] = {
    "ｼﾊﾞﾗｸｵﾏﾁｸﾀﾞｻｲ",          // "Please wait a minute"
    "ﾁｮｯﾄ ﾏｯﾃﾈ",              // "Hold on a sec"
    "ｳｪｲﾄ ｱ ﾓｰﾒﾝﾄ",           // "Wait a moment"
    "ﾛｰﾄﾞﾁｭｳ",                // "Loading"
    "ﾅｳ ﾜｰｷﾝｸﾞ",              // "Now working"
    "ｲﾏ ﾂｸｯﾃﾏｽ",              // "Now creating"
    "ｺｼｮｳｼﾞｬﾅｲﾖ",             // "It's not broken"
    "ｺｰﾋｰ ﾌﾞﾚｲｸ",             // "Coffee Break"
    "Bﾒﾝｦｾｯﾄｼﾃｸﾀﾞｻｲ",         // "Please set B side"
    "ｼﾞｯﾄｶﾞﾏﾝﾉｺﾃﾞｱｯﾀ",        // "Be patient, now"
    "ｲﾏｼﾊﾞﾗｸｵﾏﾁｸﾀﾞｻｲ",        // "Please wait just a minute"
    "ｱﾜﾃﾅｲｱﾜﾃﾅｲ｡ﾋﾄﾔｽﾐﾋﾄﾔｽﾐ｡", // "Don't worry, don't worry. Take a break, take a break"
};

static char* sAgeLabels[] = {
    "・17(ﾜｶﾓﾉ)", // "17(young)"
    "・5(ﾜｶｽｷﾞ)", // "5(very young)"
};

// Select_LoadTitleScreen
void func_80800B90(SelectContext* this) {
    this->state.running = 0;
    SET_NEXT_GAMESTATE(&this->state, Title_Init, TitleContext);
}

#ifdef NON_MATCHING
// entranceIndex assignment uses t9 instead of t2. long long totally has to be fake, but it improves it...
// Select_LoadGame
void func_80800BAC(SelectContext* this, s32 entranceIndex) {
    s16 temp_t7;

    osSyncPrintf(VT_FGCOL(VT_COLOR_BLUE));
    osSyncPrintf("\n\n\nＦＩＬＥ＿ＮＯ＝%x\n\n\n", gSaveContext.fileNum);
    osSyncPrintf(VT_RST);
    if (gSaveContext.fileNum == 0xFF) {
        func_800A82C8();
        temp_t7 = gSaveContext.magic;
        gSaveContext.magic = 0;
        gSaveContext.unk_13F4 = 0;
        gSaveContext.unk_13F6 = temp_t7 & 0xFFFF;
        gSaveContext.magicLevel = gSaveContext.magic;
    }
    gSaveContext.buttonStatus[4] = 0;
    gSaveContext.buttonStatus[3] = 0;
    gSaveContext.buttonStatus[2] = 0;
    gSaveContext.buttonStatus[1] = 0;
    gSaveContext.buttonStatus[0] = 0;
    gSaveContext.unk_13EC = 0;
    gSaveContext.unk_13EA = 0;
    gSaveContext.unk_13E8 = 0;
    gSaveContext.unk_13E7 = 0;
    Audio_SetBGM(0x100000FF);
    gSaveContext.entranceIndex = (long long)entranceIndex;
    gSaveContext.respawnFlag = 0;
    gSaveContext.respawn[0].entranceIndex = -1;
    gSaveContext.seqIndex = -1;
    gSaveContext.nightSeqIndex = -1;
    gSaveContext.unk_13C7 = 1;
    D_8011FB30 = 0;
    this->state.running = 0;
    SET_NEXT_GAMESTATE(&this->state, Gameplay_Init, GlobalContext)
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_select/func_80800BAC.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_select/func_80800CB4.s")
// stack, regalloc, instruction order
#ifdef NON_MATCHING
// Select_UpdateMenu
void func_80800CB4(SelectContext* this) {
    Input* pad1;
    s32 pad;
    SelectSlot* selectedMap;

    pad1 = &this->state.input[0];

    if (this->unk_21C == 0) {

        if (CHECK_PAD(pad1->press, A_BUTTON) || CHECK_PAD(pad1->press, START_BUTTON)) {
            selectedMap = &this->slots[this->currentSlot];
            if (selectedMap->functionPtr != NULL) {
                selectedMap->functionPtr(this, selectedMap->entranceIndex);
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
                this->unk_220 = (s32)SREG(30);
            }
        }

        if (CHECK_PAD(pad1->cur, U_JPAD) && this->unk_224 == 0) {
            Audio_PlaySoundGeneral(0x1800, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->unk_220 = (s32)SREG(30) * 3;
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

        if (CHECK_PAD(pad1->press, L_JPAD) || CHECK_PAD(pad1->cur, L_JPAD)) {
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
        this->unk_20C = this->unk_1E0[this->unk_1DC];
        this->currentSlot = this->unk_20C;
    }

    this->unk_21C += this->unk_220;

    if (this->unk_21C < -7) {
        this->unk_220 = 0;
        this->unk_21C = 0;

        this->currentSlot = (++this->currentSlot + this->slotCount) % this->slotCount;
        if (((this->unk_20C + this->slotCount + 0x13) % this->slotCount) == this->currentSlot) {
            this->unk_20C = (++this->unk_20C + this->slotCount) % this->slotCount;
        }
    }

    if (this->unk_21C >= 8) {
        this->unk_220 = 0;
        this->unk_21C = 0;

        if (this->unk_20C == this->currentSlot) {
            this->unk_20C = ((this->unk_20C - 2) + this->slotCount) % this->slotCount;
        }

        this->currentSlot = ((--this->currentSlot) + this->slotCount) % this->slotCount;

        if (((this->unk_20C + this->slotCount) % this->slotCount) == this->currentSlot) {
            this->unk_20C = (--this->unk_20C + this->slotCount) % this->slotCount;
        }
    }

    this->currentSlot = (this->currentSlot + this->slotCount) % this->slotCount;
    this->unk_20C = (this->unk_20C + this->slotCount) % this->slotCount;

    dREG(80) = this->currentSlot;
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
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_select/func_80800CB4.s")
#endif

void func_80801614(SelectContext* this, GfxPrint* printer) {
    s32 slot;
    s32 i;
    char* locationName;

    GfxPrint_SetColor(printer, 255, 155, 150, 255);
    GfxPrint_SetPos(printer, 12, 2);
    GfxPrint_Printf(printer, "ZELDA MAP SELECT");
    GfxPrint_SetColor(printer, 255, 255, 255, 255);

    for (i = 0; i < 20; i++) {
        GfxPrint_SetPos(printer, 9, i + 4);

        slot = ((this->unk_20C + i) + this->slotCount) % this->slotCount;
        if (slot == this->currentSlot) {
            GfxPrint_SetColor(printer, 255, 20, 20, 255);
        } else {
            GfxPrint_SetColor(printer, 200, 200, 55, 255);
        }

        locationName = this->slots[slot].locationName;
        if (locationName == NULL) {
            locationName = "**Null**";
        }

        GfxPrint_Printf(printer, "%s", locationName);
    };

    GfxPrint_SetColor(printer, 155, 55, 150, 255);
    GfxPrint_SetPos(printer, 20, 26);
    GfxPrint_Printf(printer, "OPT=%d", this->opt);
}

// Select_PrintLoadingMessage
void func_808017F0(SelectContext* this, GfxPrint* printer) {
    s32 randomMsg;

    GfxPrint_SetPos(printer, 0xA, 0xF);
    GfxPrint_SetColor(printer, 0xFF, 0xFF, 0xFF, 0xFF);
    randomMsg = Math_Rand_ZeroOne() * 12;
    GfxPrint_Printf(printer, "%s", sLoadingMessages[randomMsg]);
}

// Select_PrintAgeOptions
void func_8080187C(SelectContext* this, GfxPrint* printer, s32 age) {

    GfxPrint_SetPos(printer, 4, 26);
    GfxPrint_SetColor(printer, 255, 255, 55, 255);
    GfxPrint_Printf(printer, "Age:%s", sAgeLabels[age]);
}

// Select_PrintCutsceneOptions
void func_808018F0(SelectContext* this, GfxPrint* printer, u16 csIndex) {
    char* label;

    GfxPrint_SetPos(printer, 4, 25);
    GfxPrint_SetColor(printer, 255, 255, 55, 255);

    switch (csIndex) {
        case 0:
            label = "・ ﾖﾙ ・ｺﾞﾛﾝ";
            gSaveContext.dayTime = 0;
            break;
        case 0x8000:
            // clang-format off
            gSaveContext.dayTime = 0x8000; label = "・ｵﾋﾙ ・ｼﾞｬﾗ";
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
    GfxPrint_Printf(printer, "Stage:・%s", label);
}

// Select_DrawMenu
void func_80801AAC(SelectContext* this) {
    GraphicsContext* gfxCtx;
    GfxPrint* printer;
    Gfx* dispRefs[5];

    gfxCtx = this->state.gfxCtx;
    Graph_OpenDisps(&dispRefs, gfxCtx, "../z_select.c", 930);
    gSPSegment(gfxCtx->polyOpa.p++, 0x00, 0x00000000);
    func_80095248(gfxCtx, 0, 0, 0);
    INIT_FULLSCREEN_VIEWPORT(&this->view)
    func_800AAA50(&this->view, 0xF);
    func_80094140(gfxCtx);
    printer = alloca(0x30);
    GfxPrint_Init(printer);
    GfxPrint_Open(printer, gfxCtx->polyOpa.p);
    func_80801614(this, printer);
    {
        s32 arg;

        arg = gSaveContext.linkAge;
        func_8080187C(this, printer, arg);

        arg = gSaveContext.cutsceneIndex & 0xFFFF;
        func_808018F0(this, printer, arg);
    }
    gfxCtx->polyOpa.p = GfxPrint_Close(printer);
    GfxPrint_Destroy(printer);

    Graph_CloseDisps(&dispRefs, gfxCtx, "../z_select.c", 966);
}

// Select_DrawLoadingScreen
void func_80801BF0(SelectContext* this) {
    GraphicsContext* gfxCtx;
    GfxPrint* printer;
    Gfx* dispRefs[5];

    gfxCtx = this->state.gfxCtx;
    Graph_OpenDisps(&dispRefs, gfxCtx, "../z_select.c", 977);

    gSPSegment(gfxCtx->polyOpa.p++, 0x00, 0x00000000);
    func_80095248(gfxCtx, 0, 0, 0);
    INIT_FULLSCREEN_VIEWPORT(&this->view)
    func_800AAA50(&this->view, 0xF);
    func_80094140(gfxCtx);
    printer = alloca(0x30);
    GfxPrint_Init(printer);
    GfxPrint_Open(printer, gfxCtx->polyOpa.p);
    func_808017F0(this, printer);
    gfxCtx->polyOpa.p = GfxPrint_Close(printer);
    GfxPrint_Destroy(printer);

    Graph_CloseDisps(&dispRefs, gfxCtx, "../z_select.c", 1006);
}

// Select_Draw
void func_80801D04(SelectContext* this) {
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[5];

    gfxCtx = this->state.gfxCtx;
    Graph_OpenDisps(&dispRefs, gfxCtx, "../z_select.c", 1013);
    gSPSegment(gfxCtx->polyOpa.p++, 0x00, 0x00000000);
    func_80095248(gfxCtx, 0, 0, 0);
    INIT_FULLSCREEN_VIEWPORT(&this->view)
    func_800AAA50(&this->view, 0xF);

    if (this->state.running == 0) {
        func_80801BF0(this);
    } else {
        func_80801AAC(this);
    }

    Graph_CloseDisps(&dispRefs, gfxCtx, "../z_select.c", 1037);
}

// Select_Main
void func_80801DE4(SelectContext* this) {
    func_80800CB4(this);
    func_80801D04(this);
}

// Select_Destroy
void func_80801E0C(SelectContext* this) {
    osSyncPrintf("%c", 7);
    // "view_cleanup will hang, so it won't be called"
    osSyncPrintf("*** view_cleanupはハングアップするので、呼ばない ***\n");
}

// Select_Init
void func_80801E44(SelectContext* this) {
    u32 size;
    s32 pad[2];

    this->state.main = func_80801DE4;
    this->state.destroy = func_80801E0C;
    this->slots = slotData;
    this->unk_20C = 0;
    this->currentSlot = 0;
    this->unk_1E0[0] = 0;
    this->unk_1E0[1] = 0x13;
    this->unk_1E0[2] = 0x25;
    this->unk_1E0[3] = 0x33;
    this->unk_1E0[4] = 0x3B;
    this->unk_1E0[5] = 0x49;
    this->unk_1E0[6] = 0x5B;
    this->unk_1DC = 0;
    this->opt = 0;
    this->slotCount = 126;
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

    if ((dREG(80) >= 0) && (dREG(80) < this->slotCount)) {
        this->currentSlot = dREG(80);
        this->unk_20C = dREG(81);
        this->unk_1DC = dREG(82);
    }
    SREG(30) = 1;

    this->staticSegment = GameState_Alloc(this, size, "../z_select.c", 1114);
    DmaMgr_SendRequest1(this->staticSegment, _z_select_staticSegmentRomStart, size, "../z_select.c", 1115);
    gSaveContext.cutsceneIndex = 0x8000;
    gSaveContext.linkAge = 1;
}
