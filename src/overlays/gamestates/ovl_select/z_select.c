#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_select/func_80800B90.s")
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_select/func_80800BAC.s")
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_select/func_80800CB4.s")
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_select/func_80801614.s")
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_select/func_808017F0.s")
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_select/func_8080187C.s")
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_select/func_808018F0.s")
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_select/func_80801AAC.s")
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_select/func_80801BF0.s")
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_select/func_80801D04.s")
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_select/func_80801DE4.s")
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_select/func_80801E0C.s")
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_select/func_80801E44.s")

#include <ultra64.h>
#include <global.h>
#include <vt.h>
#include <alloca.h>

#if 0
void func_80800B90(SelectContext*, s32);
void func_80800BAC(SelectContext*, s32);

static SelectSlot slotData[] = {
	{ " 1:SPOT00", &func_80800BAC, 0x000000CD },
	{ " 2:SPOT01", &func_80800BAC, 0x000000DB },
	{ " 3:SPOT02", &func_80800BAC, 0x000000E4 },
	{ " 4:SPOT03", &func_80800BAC, 0x000000EA },
	{ " 5:SPOT04", &func_80800BAC, 0x000000EE },
	{ " 6:SPOT05", &func_80800BAC, 0x000000FC },
	{ " 7:SPOT06", &func_80800BAC, 0x00000102 },
	{ " 8:SPOT07", &func_80800BAC, 0x00000108 },
	{ " 9:SPOT08", &func_80800BAC, 0x0000010E },
	{ "10:SPOT09", &func_80800BAC, 0x00000117 },
	{ "11:SPOT10", &func_80800BAC, 0x0000011E },
	{ "12:SPOT11", &func_80800BAC, 0x00000123 },
	{ "13:SPOT12", &func_80800BAC, 0x00000129 },
	{ "14:SPOT13", &func_80800BAC, 0x00000130 },
	{ "15:SPOT15", &func_80800BAC, 0x00000138 },
	{ "16:SPOT16", &func_80800BAC, 0x0000013D },
	{ "17:SPOT17", &func_80800BAC, 0x00000147 },
	{ "18:SPOT18", &func_80800BAC, 0x0000014D },
	{ "19:SPOT20", &func_80800BAC, 0x00000157 },
	{ "20:・ﾄｷﾉﾏ", &func_80800BAC, 0x00000053 },
	{ "21:・ｹﾝｼﾞｬﾉﾏ", &func_80800BAC, 0x0000006B },
	{ "22:・ｼｬﾃｷｼﾞｮｳ", &func_80800BAC, 0x0000003B },
	{ "23:・ﾊｲﾗﾙ・ﾆﾜ・ｹﾞｰﾑ", &func_80800BAC, 0x0000007A },
	{ "24:・ﾊｶｼﾀﾄﾋﾞｺﾐｱﾅ", &func_80800BAC, 0x0000031C },
	{ "25:・ﾊｶｼﾀﾄﾋﾞｺﾐｱﾅ 2", &func_80800BAC, 0x0000004B },
	{ "26:・ｵｳｹ ﾉ ﾊｶｱﾅ", &func_80800BAC, 0x0000002D },
	{ "27:・ﾀﾞｲﾖｳｾｲﾉｲｽﾞﾐ", &func_80800BAC, 0x00000315 },
	{ "28:・ﾄﾋﾞｺﾐ ﾖｳｾｲ ｱﾅ", &func_80800BAC, 0x0000036D },
	{ "29:・ﾏﾎｳｾｷ ﾖｳｾｲﾉｲｽﾞﾐ", &func_80800BAC, 0x00000371 },
	{ "30:・ｶﾞﾉﾝ・ｻｲｼｭｳｾﾝ", &func_80800BAC, 0x0000043F },
	{ "31:・ﾊｲﾗﾙ・ﾅｶﾆﾜ", &func_80800BAC, 0x00000400 },
	{ "32:・ﾂﾘﾎﾞﾘ", &func_80800BAC, 0x0000045F },
	{ "33:・ﾎﾞﾑﾁｭｳﾎﾞｰﾘﾝｸﾞ", &func_80800BAC, 0x00000507 },
	{ "34:・ﾛﾝﾛﾝ・ﾎﾞｸｼﾞｮｳ ｿｳｺ 1", &func_80800BAC, 0x0000004F },
	{ "35:・ﾛﾝﾛﾝ・ﾎﾞｸｼﾞｮｳ ｿｳｺ 2", &func_80800BAC, 0x000005D0 },
	{ "36:・ﾐﾊﾘ ｺﾞﾔ", &func_80800BAC, 0x0000007E },
	{ "37:・ﾏﾎｳ ﾉ ｸｽﾘﾔ", &func_80800BAC, 0x00000072 },
	{ "38:・ﾀｶﾗﾊﾞｺﾔ", &func_80800BAC, 0x00000063 },
	{ "39:・ｷﾝ ・ｽﾀﾙﾁｭﾗ ﾊｳｽ", &func_80800BAC, 0x00000550 },
	{ "40:・ｼﾞｮｳｶﾏﾁ ｲﾘｸﾞﾁ", &func_80800BAC, 0x00000033 },
	{ "41:・ｼﾞｮｳｶﾏﾁ", &func_80800BAC, 0x000000B1 },
	{ "42:・ｳﾗﾛｼﾞ", &func_80800BAC, 0x000000AD },
	{ "43:・ﾄｷﾉｼﾝﾃﾞﾝ ﾏｴ", &func_80800BAC, 0x00000171 },
	{ "44:・ﾘﾝｸﾉｲｴ", &func_80800BAC, 0x000000BB },
	{ "45:・ｶｶﾘｺ・ﾑﾗﾉﾅｶﾞﾔ", &func_80800BAC, 0x000002FD },
	{ "46:・ｳﾗﾛｼﾞﾉ ｲｴ", &func_80800BAC, 0x0000043B },
	{ "47:・ｺｷﾘﾉﾑﾗ ﾓﾉｼﾘｷｮｳﾀﾞｲﾉｲｴ", &func_80800BAC, 0x000000C9 },
	{ "48:・ｺｷﾘﾉﾑﾗ ﾌﾀｺﾞﾉｲｴ", &func_80800BAC, 0x0000009C },
	{ "49:・ｺｷﾘﾉﾑﾗ ・ﾐﾄﾞ・ﾉｲｴ", &func_80800BAC, 0x00000433 },
	{ "50:・ｺｷﾘﾉﾑﾗ ・ｻﾘｱ・ﾉｲｴ", &func_80800BAC, 0x00000437 },
	{ "51:・ｳﾏｺﾞﾔ", &func_80800BAC, 0x000002F9 },
	{ "52:・ﾊｶﾓﾘﾉｲｴ", &func_80800BAC, 0x0000030D },
	{ "53:・ｳﾗﾛｼﾞ ｲﾇｵﾊﾞｻﾝﾉｲｴ", &func_80800BAC, 0x00000398 },
	{ "54:・ｶｶﾘｺﾑﾗ ・ｲﾝﾊﾟ・ﾉｲｴ", &func_80800BAC, 0x0000039C },
	{ "55:・ﾊｲﾘｱ・ ｹﾝｷｭｳｼﾞｮ", &func_80800BAC, 0x00000043 },
	{ "56:・ﾃﾝﾄ", &func_80800BAC, 0x000003A0 },
	{ "57:・ﾀﾃﾉﾐｾ", &func_80800BAC, 0x000000B7 },
	{ "58:・ｺｷﾘｿﾞｸﾉﾐｾ", &func_80800BAC, 0x000000C1 },
	{ "59:・ｺﾞﾛﾝ・ﾉﾐｾ", &func_80800BAC, 0x0000037C },
	{ "60:・ｿﾞｰﾗ・ﾉﾐｾ", &func_80800BAC, 0x00000380 },
	{ "61:・ｶｶﾘｺ・ﾑﾗ  ｸｽﾘﾔ", &func_80800BAC, 0x00000384 },
	{ "62:・ｼﾞｮｳｶﾏﾁ ｸｽﾘﾔ", &func_80800BAC, 0x00000388 },
	{ "63:・ｳﾗﾛｼﾞ ﾖﾙﾉﾐｾ", &func_80800BAC, 0x00000390 },
	{ "64:・ｵﾒﾝﾔ", &func_80800BAC, 0x00000530 },
	{ "65:・ｹﾞﾙﾄﾞ・ﾉｼｭｳﾚﾝｼﾞｮｳ", &func_80800BAC, 0x00000008 },
	{ "66:・ﾖｳｾｲﾉｷﾉ ・ﾀﾞﾝｼﾞｮﾝ", &func_80800BAC, 0x00000000 },
	{ "67:・ﾖｳｾｲﾉｷﾉ ・ﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", &func_80800BAC, 0x0000040F },
	{ "68:・ﾄﾞﾄﾞﾝｺﾞ ﾀﾞﾝｼﾞｮﾝ", &func_80800BAC, 0x00000004 },
	{ "69:・ﾄﾞﾄﾞﾝｺﾞ ﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", &func_80800BAC, 0x0000040B },
	{ "70:・ｷｮﾀﾞｲｷﾞｮ ・ﾀﾞﾝｼﾞｮﾝ", &func_80800BAC, 0x00000028 },
	{ "71:・ｷｮﾀﾞｲｷﾞｮ ・ﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", &func_80800BAC, 0x00000301 },
	{ "72:・ﾓﾘﾉｼﾝﾃﾞﾝ", &func_80800BAC, 0x00000169 },
	{ "73:・ﾓﾘﾉｼﾝﾃﾞﾝ ・ﾎﾞｽ", &func_80800BAC, 0x0000000C },
	{ "74:・ｲﾄﾞｼﾀ ・ﾀﾞﾝｼﾞｮﾝ", &func_80800BAC, 0x00000098 },
	{ "75:・ﾊｶｼﾀ ・ﾀﾞﾝｼﾞｮﾝ", &func_80800BAC, 0x00000037 },
	{ "76:・ﾊｶｼﾀ ・ﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", &func_80800BAC, 0x00000413 },
	{ "77:・ﾋﾉｼﾝﾃﾞﾝ", &func_80800BAC, 0x00000165 },
	{ "78:・ﾋﾉｼﾝﾃﾞﾝ ・ﾎﾞｽ", &func_80800BAC, 0x00000305 },
	{ "79:・ﾐｽﾞﾉｼﾝﾃﾞﾝ", &func_80800BAC, 0x00000010 },
	{ "80:・ﾐｽﾞﾉｼﾝﾃﾞﾝ ・ﾎﾞｽ", &func_80800BAC, 0x00000417 },
	{ "81:・ｼﾞｬｼﾝｿﾞｳ ・ﾀﾞﾝｼﾞｮﾝ", &func_80800BAC, 0x00000082 },
	{ "82:・ｼﾞｬｼﾝｿﾞｳ ・ﾀﾞﾝｼﾞｮﾝ ｱｲｱﾝﾅｯｸ", &func_80800BAC, 0x0000008D },
	{ "83:・ｼﾞｬｼﾝｿﾞｳ ・ﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", &func_80800BAC, 0x000005EC },
	{ "84:・ｶﾞﾉﾝ・ﾉﾄｳ", &func_80800BAC, 0x0000041B },
	{ "85:・ｶﾞﾉﾝ・ﾉﾄｳ・ﾎﾞｽ", &func_80800BAC, 0x0000041F },
	{ "86:・ｺｵﾘﾉﾄﾞｳｸﾂ", &func_80800BAC, 0x00000088 },
	{ "87:・ﾊｶｼﾀ・ﾘﾚｰ", &func_80800BAC, 0x0000044F },
	{ "88:・ｶﾞﾉﾝ・ﾁｶ ・ﾀﾞﾝｼﾞｮﾝ", &func_80800BAC, 0x00000467 },
	{ "89:・ｶﾞﾉﾝ・ｻｲｼｭｳｾﾝ ・ﾃﾞﾓ & ﾊﾞﾄﾙ", &func_80800BAC, 0x00000517 },
	{ "90:・ｶﾞﾉﾝ・ﾉﾄｳ ｿﾉｺﾞ 1", &func_80800BAC, 0x00000179 },
	{ "91:・ｶﾞﾉﾝ・ﾉﾄｳ ｿﾉｺﾞ 2", &func_80800BAC, 0x000001B5 },
	{ "92:・ｶﾞﾉﾝ・ﾉﾄｳ ｿﾉｺﾞ 3", &func_80800BAC, 0x000003DC },
	{ "93:・ｶﾞﾉﾝ・ﾉﾄｳ ｿﾉｺﾞ 4", &func_80800BAC, 0x000003E4 },
	{ "94:・ｶﾞﾉﾝ・ﾁｶ ｿﾉｺﾞ", &func_80800BAC, 0x0000056C },
	{ "95:・ｹﾞﾙﾄﾞ・ﾂｳﾛ 1-2", &func_80800BAC, 0x00000486 },
	{ "96:・ｹﾞﾙﾄﾞ・ﾂｳﾛ 3-4 9-10", &func_80800BAC, 0x0000048E },
	{ "97:・ｹﾞﾙﾄﾞ・ﾂｳﾛ 5-6", &func_80800BAC, 0x00000496 },
	{ "98:・ｹﾞﾙﾄﾞ・ﾂｳﾛ 7-8", &func_80800BAC, 0x0000049E },
	{ "99:・ｹﾞﾙﾄﾞ・ﾂｳﾛ 11-12", &func_80800BAC, 0x000004AE },
	{ "100:・ｹﾞﾙﾄﾞ・ﾂｳﾛ 13", &func_80800BAC, 0x00000570 },
	{ "101:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 0", &func_80800BAC, 0x0000003F },
	{ "102:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 1", &func_80800BAC, 0x00000598 },
	{ "103:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 2", &func_80800BAC, 0x0000059C },
	{ "104:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 3", &func_80800BAC, 0x000005A0 },
	{ "105:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 4", &func_80800BAC, 0x000005A4 },
	{ "106:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 5", &func_80800BAC, 0x000005A8 },
	{ "107:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 6", &func_80800BAC, 0x000005AC },
	{ "108:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 7", &func_80800BAC, 0x000005B0 },
	{ "109:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 8", &func_80800BAC, 0x000005B4 },
	{ "110:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 9", &func_80800BAC, 0x000005B8 },
	{ "111:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 10", &func_80800BAC, 0x000005BC },
	{ "112:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 11", &func_80800BAC, 0x000005C0 },
	{ "113:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 12", &func_80800BAC, 0x000005C4 },
	{ "114:・ｶｸｼﾄﾋﾞｺﾐｱﾅ 13", &func_80800BAC, 0x000005FC },
	{ "115:・ﾊｲﾗﾙ ﾃﾞﾓ", &func_80800BAC, 0x000000A0 },
	{ "116:・ﾍﾞｯｼﾂ (ﾀｶﾗﾊﾞｺ・ﾜｰﾌﾟ)", &func_80800BAC, 0x00000520 },
	{ "117:・ｻｻ・ﾃｽﾄ", &func_80800BAC, 0x00000018 },
	{ "118:・ﾃｽﾄﾏｯﾌﾟ", &func_80800BAC, 0x00000094 },
	{ "119:・ﾃｽﾄﾙｰﾑ", &func_80800BAC, 0x00000024 },
	{ "120:・ﾁｭｳ・ｽﾀﾛﾌｫｽ・ﾍﾞﾔ", &func_80800BAC, 0x0000001C },
	{ "121:・ﾎﾞｽｽﾀﾛﾌｫｽ・ﾍﾞﾔ", &func_80800BAC, 0x00000020 },
	{ "122:Sutaru", &func_80800BAC, 0x00000047 },
	{ "123:jikkenjyou", &func_80800BAC, 0x000002EA },
	{ "124:depth・ﾃｽﾄ", &func_80800BAC, 0x000000B6 },
	{ "125:・ﾊｲﾗﾙ・ﾆﾜ・ｹﾞｰﾑ2", &func_80800BAC, 0x00000076 },
	{ "title", &func_80800B90, 0x00000000 },
};
#endif

// arg difference even though it apparently takes two (see func_80800CB4)
#if 0
void func_80800B90(SelectContext* selectCtx, s32 entranceIndex) {
    selectCtx->state.running = 0;
    SET_NEXT_GAMESTATE(&selectCtx->state, Title_Init, TitleContext);
}
#endif

// regalloc
#if 0
void func_80800BAC(SelectContext* selectCtx, s32 entranceIndex) {
    s8 temp_t7;

    osSyncPrintf(VT_FGCOL(VT_COLOR_BLUE));
    osSyncPrintf("\n\n\nＦＩＬＥ＿ＮＯ＝%x\n\n\n", gSaveContext.fileNum);
    osSyncPrintf(VT_RST);
    if (gSaveContext.fileNum == (u8)-1) {
        func_800A82C8();
        temp_t7 = gSaveContext.magic;
        gSaveContext.magic = 0;
        gSaveContext.unk_13F4 = 0;
        gSaveContext.unk_13F6 = temp_t7;
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
    gSaveContext.respawnFlag = 0;
    gSaveContext.respawn[0].entranceIndex = -1; //unk1378 = (u16)-1;
    gSaveContext.seqIndex = -1;
    gSaveContext.nightSeqIndex = -1;
    gSaveContext.unk_13C7 = 1;
    gSaveContext.entranceIndex = entranceIndex;
    D_8011FB30 = 0;
    selectCtx->state.running = 0;
    SET_NEXT_GAMESTATE(&selectCtx->state, Gameplay_Init, GlobalContext)
    return;
}
#endif

// stack, regalloc, instruction order
#if 0
void func_80800CB4(SelectContext* selectCtx) {
    s32 phi_v0_2;
    Input* temp_t1;
	PadState* temp_t2;
	u16 button;
    SelectSlot* temp_v1;
    

    temp_t1 = &selectCtx->state.input[0];
    temp_t2 = &temp_t1->press;
    button = temp_t2->in.button;
    if (selectCtx->unk_21C == 0) {
        if (~(temp_t1->press.in.button | 0xFFFF7FFF) == 0 || (~(temp_t1->press.in.button | -0x1001) == 0)) {
            temp_v1 = &selectCtx->slots[selectCtx->currentSlot];
            if (temp_v1->functionPtr != 0) {
                temp_v1->functionPtr(selectCtx, temp_v1->entranceIndex);
            }
        }
	    if (~(temp_t1->press.in.button | -0x4001) == 0) {
	    	if (gSaveContext.linkAge != 0) {
	    		phi_v0_2 = 5;
	    	} else {
	    		phi_v0_2 = 0x11;
	    	}
	    	if (phi_v0_2 == 0x11) {
                gSaveContext.linkAge = 1;
            } else {
                gSaveContext.linkAge = 0;
            }
	    }
	    if (~(temp_t1->press.in.button | -0x2001) == 0) {
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
	    } else if (~(temp_t1->press.in.button | -0x11) == 0) {
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
	    if (~(temp_t1->press.in.button | -9) == 0) {
	        selectCtx->unk_208--;
	    }

	    if (~(temp_t1->press.in.button | -5) == 0) {
	        selectCtx->unk_208++;
	    }
	    if (~(temp_t1->press.in.button | -0x801) == 0) {
	        if (selectCtx->unk_22C == 1) {
	            selectCtx->unk_224 = 0;
	        }
	        if (selectCtx->unk_224 == 0) {
	            selectCtx->unk_224 = 0x14;
	            selectCtx->unk_22C = 1;
	            Audio_PlaySoundGeneral(0x1800, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
	            selectCtx->unk_220 = (s32)gGameInfo->data[0x7e];
            }
        }

        if ((~(temp_t1->cur.in.button | -0x801) == 0) && selectCtx->unk_224 == 0) {
            Audio_PlaySoundGeneral(0x1800, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            selectCtx->unk_220 = (s32)gGameInfo->data[0x7e] * 3;
        }

        if (~(temp_t1->press.in.button | -0x401) == 0) {
        	if (selectCtx->unk_230 == 1) {
        		selectCtx->unk_228 = 0;
        	}
            if (selectCtx->unk_228 == 0) {
                selectCtx->unk_228 = 0x14;
                selectCtx->unk_230 = 1;
                Audio_PlaySoundGeneral(0x1800, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                selectCtx->unk_220 = -gGameInfo->data[0x7e];
            }
        }
        if (~(temp_t1->cur.in.button | -0x401) == 0) {
            if (selectCtx->unk_228 == 0) {
                Audio_PlaySoundGeneral(0x1800, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                selectCtx->unk_220 = -gGameInfo->data[0x7e] * 3;
            }
        }

        if ((~(temp_t1->press.in.button | -0x201) == 0) || (~(temp_t1->cur.in.button | -0x201) == 0)) {
	        Audio_PlaySoundGeneral(0x1800, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
	        selectCtx->unk_220 = gGameInfo->data[0x7e];
        }
        if ((~(temp_t1->press.in.button | -0x101) == 0) || (~(temp_t1->cur.in.button | -0x101) == 0)) {
            Audio_PlaySoundGeneral(0x1800, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            selectCtx->unk_220 = -gGameInfo->data[0x7e];
        }
    }
    if (~(temp_t1->press.in.button | -0x21) == 0) {
        selectCtx->unk_1DC     = (++selectCtx->unk_1DC + 7) % 7;
        selectCtx->unk_20C 	   = selectCtx->unk_1E0[selectCtx->unk_1DC];
        selectCtx->currentSlot = selectCtx->unk_20C;
    }

    selectCtx->unk_21C += selectCtx->unk_220;
    if (selectCtx->unk_21C < -7) {
        selectCtx->unk_220 = 0;
        selectCtx->unk_21C = 0;
        selectCtx->currentSlot = (++selectCtx->currentSlot + selectCtx->slotCount) % selectCtx->slotCount;
        if (((selectCtx->unk_20C + selectCtx->slotCount + 0x13) % selectCtx->slotCount) == selectCtx->currentSlot) {
            selectCtx->unk_20C = (++selectCtx->unk_20C + selectCtx->slotCount) % selectCtx->slotCount;
        }
    }

    if (selectCtx->unk_21C >= 8) {
        selectCtx->unk_220 = 0;
        selectCtx->unk_21C = 0;
        if (selectCtx->unk_20C == selectCtx->currentSlot) {
            selectCtx->unk_20C = ((selectCtx->unk_20C - 2) + selectCtx->slotCount) % selectCtx->slotCount;
        }
        selectCtx->currentSlot = ((--selectCtx->currentSlot) + selectCtx->slotCount) % selectCtx->slotCount;
        if (((selectCtx->unk_20C + selectCtx->slotCount) % selectCtx->slotCount) == selectCtx->currentSlot) {
            selectCtx->unk_20C = (--selectCtx->unk_20C + selectCtx->slotCount) % selectCtx->slotCount;
        }
	}

    selectCtx->currentSlot = (selectCtx->currentSlot + selectCtx->slotCount) % selectCtx->slotCount;
    selectCtx->unk_20C = (selectCtx->unk_20C + selectCtx->slotCount) % selectCtx->slotCount;
    gGameInfo->data[0xA10] = (s16)selectCtx->currentSlot;
    gGameInfo->data[0xA11] = (s16)selectCtx->unk_20C;
    gGameInfo->data[0xA12] = (s16)selectCtx->unk_1DC;
    if (selectCtx->unk_224 != 0) {
        selectCtx->unk_224--;
    }
    if (selectCtx->unk_224 == 0) {
        selectCtx->unk_22C = 0;
    }

    if (selectCtx->unk_228 != 0) {
        selectCtx->unk_228--;
    }
    if (selectCtx->unk_228 == 0) {
        selectCtx->unk_230 = 0;
    }
}
#endif

// small regalloc
#if 0
void func_80801614(SelectContext* selectCtx, GfxPrint* printer) {
    s32 temp_hi;
    s32 i;
    SelectSlot* temp_t6;
    char* phi_a2;

    GfxPrint_SetColor(printer, 255, 155, 150, 255);
    GfxPrint_SetPos(printer, 12, 2);
    GfxPrint_Printf(printer, "ZELDA MAP SELECT");
    GfxPrint_SetColor(printer, 255, 255, 255, 255);

    for (i = 0; i < 20; i++) {
	    GfxPrint_SetPos(printer, 9, i + 4);
	    temp_hi = ((selectCtx->unk_20C + i) + selectCtx->slotCount) % selectCtx->slotCount;
	    if (temp_hi == selectCtx->currentSlot) {
	        GfxPrint_SetColor(printer, 255, 20, 20, 255);
	    } else {
	        GfxPrint_SetColor(printer, 200, 200, 55, 255);
	    }
	    temp_t6 = &selectCtx->slots[temp_hi];
	    phi_a2 = temp_t6->locationName;
	    if ((u32)temp_t6->locationName == 0) {
	        phi_a2 = "**Null**";
	    }
	    GfxPrint_Printf(printer, "%s", phi_a2);
	};

    GfxPrint_SetColor(printer, 155, 55, 150, 255);
    GfxPrint_SetPos(printer, 20, 26);
    GfxPrint_Printf(printer, "OPT=%d", selectCtx->unk_208);
}
#endif

// almost done
#if 0
void func_808017F0(SelectContext* selectCtx, GfxPrint* printer) {
	static const char* what[12] = {
		"ｼﾊﾞﾗｸｵﾏﾁｸﾀﾞｻｲ", "ﾁｮｯﾄ ﾏｯﾃﾈ", "ｳｪｲﾄ ｱ ﾓｰﾒﾝﾄ", "ﾛｰﾄﾞﾁｭｳ",
		"ﾅｳ ﾜｰｷﾝｸﾞ", "ｲﾏ ﾂｸｯﾃﾏｽ", "ｺｼｮｳｼﾞｬﾅｲﾖ", "ｺｰﾋｰ ﾌﾞﾚｲｸ",
		"Bﾒﾝｦｾｯﾄｼﾃｸﾀﾞｻｲ", "ｼﾞｯﾄｶﾞﾏﾝﾉｺﾃﾞｱｯﾀ", "ｲﾏｼﾊﾞﾗｸｵﾏﾁｸﾀﾞｻｲ",
		"ｱﾜﾃﾅｲｱﾜﾃﾅｲ｡ﾋﾄﾔｽﾐﾋﾄﾔｽﾐ｡"
	};
    GfxPrint_SetPos(printer, 0xA, 0xF);
    GfxPrint_SetColor(printer, 0xFF, 0xFF, 0xFF, 0xFF);
    GfxPrint_Printf(printer, "%s", what[(s32)(Math_Rand_ZeroOne() * 12.0f)]);
}
#endif

// almost done
#if 0
void func_8080187C(SelectContext* selectCtx, GfxPrint* printer, s32 arg2) {
	static const char* ages[2] = {
		"・17(ﾜｶﾓﾉ)", "・5(ﾜｶｽｷﾞ)"
	};
    GfxPrint_SetPos(printer, 4, 26);
    GfxPrint_SetColor(printer, 255, 255, 55, 255);
    GfxPrint_Printf(printer, "Age:%s", ages[arg2]);
}
#endif

// few instru out of order
#if 0
void func_808018F0(SelectContext* selectCtx, GfxPrint* printer, u16 arg2) {
    char* sp24;

    GfxPrint_SetPos(printer, 4, 25);
    GfxPrint_SetColor(printer, 255, 255, 55, 255);

	switch(arg2) {
		case 0:
    		sp24 = "・ ﾖﾙ ・ｺﾞﾛﾝ";
            gSaveContext.dayTime = 0;
        	break;
		case 0x8000:
			gSaveContext.dayTime = 0x8000;
        	sp24 = "・ｵﾋﾙ ・ｼﾞｬﾗ";
        	//gSaveContext.dayTime = 0x8000;
            break;
        case 0xFFF0:
        	gSaveContext.dayTime = 0x8000;
        	sp24 = "ﾃﾞﾓ00";
        	//gSaveContext.dayTime = 0x8000;
            break;
        case 0xFFF1:
            sp24 = "ﾃﾞﾓ01";
            break;
        case 0xFFF2:
            sp24 = "ﾃﾞﾓ02";
            break;
        case 0xFFF3:
            sp24 = "ﾃﾞﾓ03";
            break;
        case 0xFFF4:
            sp24 = "ﾃﾞﾓ04";
            break;
        case 0xFFF5:
            sp24 = "ﾃﾞﾓ05";
            break;
        case 0xFFF6:
            sp24 = "ﾃﾞﾓ06";
            break;
        case 0xFFF7:
            sp24 = "ﾃﾞﾓ07";
            break;
        case 0xFFF8:
            sp24 = "ﾃﾞﾓ08";
            break;
        case 0xFFF9:
            sp24 = "ﾃﾞﾓ09";
            break;
        case 0xFFFA:
            sp24 = "ﾃﾞﾓ0A";
            break;
    };

    gSaveContext.environmentTime = gSaveContext.dayTime;
    GfxPrint_Printf(printer, "Stage:・%s", sp24);
}
#endif

// regalloc, one instru out of order
#if 0
void func_80801AAC(SelectContext* selectCtx) {
    Gfx* dispRefs[5];
    GraphicsContext* temp_v1;
    Gfx* tmp2;
    Viewport viewport;
    GfxPrint* printer;
    
    temp_v1 = selectCtx->state.gfxCtx;
    Graph_OpenDisps(&dispRefs, temp_v1, "../z_select.c", 0x3A2);

    tmp2 = temp_v1->polyOpa.p++;
    tmp2->words.w1 = 0;
    tmp2->words.w0 = 0xDB060000;
    
    func_80095248(temp_v1, 0, 0, 0);
       
    VIEWPORT_INIT(viewport, 0xf0, 0x140, 0, 0);
    View_SetViewport(&selectCtx->view, &viewport);

    func_800AAA50(&selectCtx->view, 0xF);
    func_80094140(temp_v1);

    printer = alloca(0x30);

    GfxPrint_Ctor(printer);
    GfxPrint_Open(printer, temp_v1->polyOpa.p);
    func_80801614(selectCtx, printer);

    func_8080187C(selectCtx, printer, gSaveContext.linkAge);
    func_808018F0(selectCtx, printer, gSaveContext.cutsceneIndex & 0xFFFF);
    temp_v1->polyOpa.p = GfxPrint_Close(printer);
    GfxPrint_Dtor(printer);
    Graph_CloseDisps(&dispRefs, temp_v1, "../z_select.c", 0x3C6);
}
#endif

// one instru out of order
#if 0
void func_80801BF0(SelectContext* selectCtx) {
    Gfx* dispRefs[5];
    GraphicsContext* temp_v1;
    Gfx* tmp2;
    GfxPrint* printer;
    Viewport viewport;

    temp_v1 = selectCtx->state.gfxCtx;
    Graph_OpenDisps(&dispRefs, temp_v1, "../z_select.c", 0x3D1);
    tmp2 = temp_v1->polyOpa.p++;
    tmp2->words.w1 = 0;
    tmp2->words.w0 = 0xDB060000;
    func_80095248(temp_v1, 0, 0, 0);

    VIEWPORT_INIT(viewport, 0xf0, 0x140, 0, 0);
    View_SetViewport(&selectCtx->view, &viewport);

    func_800AAA50(&selectCtx->view, 0xF);
    func_80094140(temp_v1);

    printer = alloca(0x30);

    GfxPrint_Ctor(printer);
    GfxPrint_Open(printer, temp_v1->polyOpa.p);
    func_808017F0(selectCtx, printer);
    temp_v1->polyOpa.p = GfxPrint_Close(printer);
    GfxPrint_Dtor(printer);
    Graph_CloseDisps(&dispRefs, temp_v1, "../z_select.c", 0x3EE);
}
#endif

// stack
#if 0
void func_80801D04(SelectContext* selectCtx) {
    
    Gfx* dispRefs[4];
    Gfx* tmp2;
    GraphicsContext* temp_v1;
    Viewport viewport;
    
    temp_v1 = selectCtx->state.gfxCtx;
    Graph_OpenDisps(&dispRefs, temp_v1, "../z_select.c", 0x3F5);
    tmp2 = temp_v1->polyOpa.p++;
    tmp2->words.w1 = 0;
    tmp2->words.w0 = 0xDB060000;
    func_80095248(temp_v1, 0, 0, 0);

    VIEWPORT_INIT(viewport, 0xf0, 0x140, 0, 0);
    View_SetViewport(&selectCtx->view, &viewport);

    func_800AAA50(&selectCtx->view, 0xF);
    if (selectCtx->state.running == 0) {
        func_80801BF0(selectCtx);
    } else {
        func_80801AAC(selectCtx);
    }
    Graph_CloseDisps(&dispRefs, temp_v1, "../z_select.c", 0x40D);
}
#endif

// almost done
#if 0
void func_80801DE4(SelectContext* selectCtx) {
    func_80800CB4(selectCtx);
    func_80801D04(selectCtx);
}
#endif

// almost done
#if 0
void func_80801E0C(SelectContext* selectCtx) {
    osSyncPrintf("%c", 7);
    // view_cleanup will hang, so it won't be called
    osSyncPrintf("*** view_cleanupはハングアップするので、呼ばない ***\n");
}
#endif

// almost done
#if 0
void func_80801E44(SelectContext* selectCtx) {
    u32 sp30;
    u32 temp_a1;
    void* temp_ret;

    selectCtx->state.main = &func_80801DE4;
    selectCtx->state.destroy = &func_80801E0C;
    selectCtx->slots = slotData;
    selectCtx->unk_20C = 0;
    selectCtx->currentSlot = 0;
    selectCtx->unk_1E0[0] = 0;
    selectCtx->unk_1E0[1] = 0x13;
    selectCtx->unk_1E0[2] = 0x25;
    selectCtx->unk_1E0[3] = 0x33;
    selectCtx->unk_1E0[4] = 0x3B;
    selectCtx->unk_1E0[5] = 0x49;
    selectCtx->unk_1E0[6] = 0x5B;
    selectCtx->unk_1DC = 0;
    selectCtx->unk_208 = 0;
    selectCtx->slotCount = 126;
    View_Init(&selectCtx->view, selectCtx->state.gfxCtx);
    selectCtx->view.flags = 0xA;
    selectCtx->unk_21C = 0;
    selectCtx->unk_220 = 0;
    selectCtx->unk_224 = 0;
    selectCtx->unk_228 = 0;
    selectCtx->unk_22C = 0;
    selectCtx->unk_230 = 0;
    selectCtx->unk_234 = 0;

    temp_a1 = (u32)&_z_select_staticSegmentRomEnd - (u32)&_z_select_staticSegmentRomStart;

    if (gGameInfo->data[0xA10] >= 0) {
        if (gGameInfo->data[0xA10] < selectCtx->slotCount) {
            selectCtx->currentSlot = gGameInfo->data[0xA10];
            selectCtx->unk_20C = gGameInfo->data[0xA11];
            selectCtx->unk_1DC = gGameInfo->data[0xA12];
        }
    }
    gGameInfo->data[0x7E] = 1;
    sp30 = (u32)&_z_select_staticSegmentRomStart;
    
    temp_ret = GameState_AllocEnd(selectCtx, temp_a1, "../z_select.c", 0x45A);
    selectCtx->unk_238 = temp_ret;
    DmaMgr_SendRequest1(temp_ret, sp30, temp_a1, "../z_select.c", 0x45B);
    gSaveContext.cutsceneIndex = 0x8000;
    gSaveContext.linkAge = 1;
}
#endif