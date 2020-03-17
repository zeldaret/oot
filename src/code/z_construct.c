#include <ultra64.h> 
#include <global.h>

void func_80110990(GlobalContext* globalCtx)
{
    func_80080F44(globalCtx);
}

#ifdef NON_MATCHING
// regalloc, stack usage and minor ordering differences
void func_801109B0(GlobalContext* globalCtx)
{
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    s32 parameterStart;
    s32 parameterSize;
    s32 do_actionStart;
    s32 do_actionOffset;
    s32 temp;

    gSaveContext.unk_1422 = 0;
    gSaveContext.unk_13EA = 0;
    gSaveContext.unk_13E8 = 0;

    func_800AA278(&interfaceCtx->view, globalCtx->state.gfxCtx);

    interfaceCtx->unk_1EC = interfaceCtx->unk_1EE = 0;
    interfaceCtx->unk_1FA = interfaceCtx->unk_261 = interfaceCtx->unk_1FC = 0;
    interfaceCtx->unk_1F0 = 0;
    interfaceCtx->unk_22E = 0;
    interfaceCtx->unk_230 = 16;
    interfaceCtx->unk_1F4 = 0.0f;
    interfaceCtx->unk_228 = XREG(95);
    interfaceCtx->minimapAlpha = 0;
    interfaceCtx->unk_260 = 0;
    interfaceCtx->unk_244 = interfaceCtx->aAlpha = interfaceCtx->bAlpha =
    interfaceCtx->cLeftAlpha = interfaceCtx->cDownAlpha = interfaceCtx->cRightAlpha =
    interfaceCtx->healthAlpha = interfaceCtx->startAlpha = interfaceCtx->magicAlpha = 0;

    parameterStart = _parameter_staticSegmentRomStart;
    parameterSize = _parameter_staticSegmentRomEnd - parameterStart;

    // Translates to: "Permanent PARAMETER Segment = %x"
    osSyncPrintf("常駐ＰＡＲＡＭＥＴＥＲセグメント=%x\n", parameterSize);

    interfaceCtx->parameterSegment = Game_Alloc(&globalCtx->state, parameterSize, "../z_construct.c", 159);

    osSyncPrintf("parameter->parameterSegment=%x", interfaceCtx->parameterSegment);

    if (interfaceCtx->parameterSegment == NULL)
        __assert("parameter->parameterSegment != NULL", "../z_construct.c", 161);
    
    DmaMgr_SendRequest1(interfaceCtx->parameterSegment, parameterStart, parameterSize, "../z_construct.c", 162);

    interfaceCtx->do_actionSegment = Game_Alloc(&globalCtx->state, 0x480, "../z_construct.c", 166);

    // Translates to: "DO Action Texture Initialization"
    osSyncPrintf("ＤＯアクション テクスチャ初期=%x\n", 0x480);
    osSyncPrintf("parameter->do_actionSegment=%x", interfaceCtx->do_actionSegment);

    if (interfaceCtx->do_actionSegment == NULL)
        __assert("parameter->do_actionSegment != NULL", "../z_construct.c", 169);

    do_actionStart = _do_action_staticSegmentRomStart;

    if (gSaveContext.language == 0)
        do_actionOffset = 0;
    else if (gSaveContext.language == 1)
        do_actionOffset = 0x2B80;
    else
        do_actionOffset = 0x5700;

    DmaMgr_SendRequest1(interfaceCtx->do_actionSegment, do_actionStart + do_actionOffset, 0x300, "../z_construct.c", 174);

    if (gSaveContext.language == 0)
        do_actionOffset = 0x480;
    else if (gSaveContext.language == 1)
        do_actionOffset = 0x3000;
    else
        do_actionOffset = 0x5B80;

    DmaMgr_SendRequest1((void*)((u32)interfaceCtx->do_actionSegment + 0x300), do_actionStart + do_actionOffset, 0x180, "../z_construct.c", 178);

    interfaceCtx->icon_itemSegment = Game_Alloc(&globalCtx->state, 0x4000, "../z_construct.c", 190);

    // Translates to: "Icon Item Texture Initialization = %x"
    osSyncPrintf("アイコンアイテム テクスチャ初期=%x\n", 0x4000);
    osSyncPrintf("parameter->icon_itemSegment=%x\n", interfaceCtx->icon_itemSegment);

    if (interfaceCtx->icon_itemSegment == NULL)
        __assert("parameter->icon_itemSegment != NULL", "../z_construct.c", 193);

    osSyncPrintf("Register_Item[%x, %x, %x, %x]\n",
                 gSaveContext.equips.button_items[0], gSaveContext.equips.button_items[1],
                 gSaveContext.equips.button_items[2], gSaveContext.equips.button_items[3]);

    if (gSaveContext.equips.button_items[0] < 0xF0)
        DmaMgr_SendRequest1(interfaceCtx->icon_itemSegment,
                            _icon_item_staticSegmentRomStart + gSaveContext.equips.button_items[0] * 0x80,
                            0x1000, "../z_construct.c", 198);
    else if (gSaveContext.equips.button_items[0] != 0xFF)
        DmaMgr_SendRequest1(interfaceCtx->icon_itemSegment,
                            _icon_item_staticSegmentRomStart + gSaveContext.equips.button_items[0] * 0x80,
                            0x1000, "../z_construct.c", 203);

    if (gSaveContext.equips.button_items[1] < 0xF0)
        DmaMgr_SendRequest1((void*)((u32)interfaceCtx->icon_itemSegment + 0x1000),
                            _icon_item_staticSegmentRomStart + gSaveContext.equips.button_items[1] * 0x80,
                            0x1000, "../z_construct.c", 209);

    if (gSaveContext.equips.button_items[2] < 0xF0)
        DmaMgr_SendRequest1((void*)((u32)interfaceCtx->icon_itemSegment + 0x2000),
                            _icon_item_staticSegmentRomStart + gSaveContext.equips.button_items[2] * 0x80,
                            0x1000, "../z_construct.c", 214);

    if (gSaveContext.equips.button_items[3] < 0xF0)
        DmaMgr_SendRequest1((void*)((u32)interfaceCtx->icon_itemSegment + 0x3000),
                            _icon_item_staticSegmentRomStart + gSaveContext.equips.button_items[3] * 0x80,
                            0x1000, "../z_construct.c", 219);

    osSyncPrintf("ＥＶＥＮＴ＝%d\n", gSaveContext.timer_1_state);

    if ((gSaveContext.timer_1_state == 4) || (gSaveContext.timer_1_state == 8) ||
        (gSaveContext.timer_2_state == 4) || (gSaveContext.timer_2_state == 10))
    {
        osSyncPrintf("restart_flag=%d\n", gSaveContext.respawn_flag);

        if ((gSaveContext.respawn_flag == -1) || (gSaveContext.respawn_flag == 1))
        {
            if (gSaveContext.timer_1_state == 4)
            {
                gSaveContext.timer_1_state = 1;
                gSaveContext.timer_x[0] = 140;
                gSaveContext.timer_y[0] = 80;
            }
        }

        if ((gSaveContext.timer_1_state == 4) || (gSaveContext.timer_1_state == 8))
            temp = 0;
        else
            temp = 1;

        gSaveContext.timer_x[temp] = 26;

        if (gSaveContext.health_capacity > 0xA0)
            gSaveContext.timer_y[temp] = 54;
        else
            gSaveContext.timer_y[temp] = 46;
    }

    if ((gSaveContext.timer_1_state >= 11) && (gSaveContext.timer_1_state < 16))
    {
        gSaveContext.timer_1_state = 0;
        // Translates to: "Timer Stop!!!!!!!!!!!!!!!!!!!!!!"
        osSyncPrintf("タイマー停止！！！！！！！！！！！！！！！！！！！！！  = %d\n", gSaveContext.timer_1_state);
    }

    // Translates to: "Parameter Area = %x"
    osSyncPrintf("ＰＡＲＡＭＥＴＥＲ領域＝%x\n", parameterSize + 0x5300);

    Health_InitData(globalCtx);
    func_80080F68(globalCtx);

    interfaceCtx->unk_242 = 0;
    interfaceCtx->unk_23C = 0;

    R_ITEM_BTN_X(0) = 160;
    R_B_BTN_COLOR(0) = 0xFF;
    R_B_BTN_COLOR(1) = 0x1E;
    R_B_BTN_COLOR(2) = 0x1E;
    R_ITEM_ICON_X(0) = 160;
    R_ITEM_AMMO_X(0) = 162;
    R_A_BTN_X = 186;
    R_A_ICON_X = 186;
    R_A_BTN_COLOR(0) = 0x00;
    R_A_BTN_COLOR(1) = 0xC8;
    R_A_BTN_COLOR(2) = 0x32;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_construct/func_801109B0.s")
#endif

void func_80110F68(GlobalContext* globalCtx)
{
    MessageContext* msgCtx = &globalCtx->msgCtx;
    s32 pad;

    func_8011040C();

    globalCtx->msgCtx.unk_E3EE = 0;

    msgCtx->msgMode = 0;
    msgCtx->unk_E300 = 0;
    msgCtx->unk_E2F8 = msgCtx->unk_E3E4 = msgCtx->choiceIndex = msgCtx->unk_E3F0 = msgCtx->unk_E3D6 = 0;
    msgCtx->unk_E3E2 = 0xFF;

    func_800AA278(&msgCtx->view, globalCtx->state.gfxCtx);

    msgCtx->textboxSegment = Game_Alloc(&globalCtx->state, 0x2200, "../z_construct.c", 349);

    osSyncPrintf("message->fukidashiSegment=%x\n", msgCtx->textboxSegment);

    // Translates to: "Textbox game_alloc=%x"
    osSyncPrintf("吹き出しgame_alloc=%x\n", 0x2200);

    if (msgCtx->textboxSegment == NULL)
        __assert("message->fukidashiSegment != NULL", "../z_construct.c", 352);

    func_8006EF10(&globalCtx->msgCtx.unk_128);

    YREG(31) = 0;
}

void func_80111070(void)
{
    YREG(8) = 0xA;
    YREG(14) = 0;
    YREG(15) = 0;
    YREG(16) = 0;
    YREG(17) = 0;
    YREG(22) = 0x32;
    YREG(23) = 0;
    YREG(24) = -0x3C;
    YREG(25) = 0xD;
    YREG(26) = 0xF;
    YREG(27) = 0x29;
    YREG(28) = 0xF;
    YREG(32) = 0x109;
    YREG(33) = 0x37;
    YREG(34) = 0;
    YREG(35) = 0x14;
    YREG(36) = 0;
    YREG(37) = 0;
    YREG(38) = 0;
    YREG(40) = 2;
    YREG(41) = 1;
    YREG(42) = 2;
    YREG(43) = 1;
    YREG(44) = 0;
    YREG(45) = 0xEC;
    YREG(46) = 0x24;
    YREG(47) = 0;
    YREG(48) = -0x2D;
    YREG(49) = -0x30;
    YREG(50) = 0x10;
    YREG(51) = 0x16;
    YREG(52) = -0x37;
    YREG(53) = -0x35;
    YREG(54) = 0x2B;
    YREG(55) = 0x2F;
    YREG(56) = -0x21;
    YREG(57) = -0x2A;
    YREG(58) = -0x21;
    YREG(59) = -0x25;
    YREG(60) = 0xE;
    YREG(61) = -2;
    YREG(62) = -2;
    YREG(63) = -0x12;
    YREG(64) = -0x12;
    YREG(67) = 0;
    YREG(68) = 0;
    YREG(69) = 0;
    YREG(70) = 0;
    YREG(71) = -6;
    YREG(72) = 0xA;
    YREG(73) = -8;
    YREG(74) = 8;
    YREG(75) = 0x18;
    YREG(76) = 0x20;
    YREG(77) = 0;
    YREG(78) = 0;
    YREG(79) = 0x30;
    YREG(80) = 0x1C2;
    YREG(81) = 0;
    YREG(82) = -0xF;
    YREG(83) = 0x1F4;
    YREG(84) = 0x258;
    YREG(85) = 0;
    YREG(86) = -0x15;
    YREG(87) = 0x1FE;
    R_C_UP_ICON_X = 0xF7;
    R_C_UP_ICON_Y = 0x14;
    YREG(92) = 8;
    YREG(93) = 6;
    YREG(94) = 3;
    YREG(95) = 1;
    R_MAGIC_FILL_COLOR(0) = 0;
    R_MAGIC_FILL_COLOR(1) = 0xC8;
    R_MAGIC_FILL_COLOR(2) = 0;
    ZREG(9) = 0x8C;
    ZREG(10) = 0xC8;
    ZREG(11) = 0;
    ZREG(12) = 0xC8;
    ZREG(13) = 0;
    ZREG(14) = 0x6E;
    ZREG(15) = 0x38;
    ZREG(16) = 1;
    ZREG(17) = -0x32;
    ZREG(18) = -0xC8;
    ZREG(19) = 0;
    ZREG(20) = 0;
    ZREG(21) = 0x32;
    ZREG(22) = -0x32;
    ZREG(23) = 0x14;
    ZREG(24) = 0x14;
    ZREG(25) = 4;
    ZREG(26) = 0x14;
    ZREG(27) = 0xA;
    ZREG(28) = 0x14;
    ZREG(29) = 4;
    ZREG(30) = 0x14;
    ZREG(31) = 0xA;
    ZREG(32) = 0;
    ZREG(33) = 0;
    ZREG(34) = 0;
    ZREG(36) = 0;
    ZREG(37) = 0;
    ZREG(38) = 0;
    R_C_BTN_COLOR(0) = 0xFF;
    R_C_BTN_COLOR(1) = 0xA0;
    R_C_BTN_COLOR(2) = 0;
    ZREG(46) = 1;
    ZREG(47) = 1;
    R_START_LABEL_DD(0) = 0x64;
    R_START_LABEL_DD(1) = 0x59;
    R_START_LABEL_DD(2) = 0x5C;
    R_START_LABEL_Y(0) = 0x14;
    R_START_LABEL_Y(1) = 0x14;
    R_START_LABEL_Y(2) = 0x14;
    R_START_LABEL_X(0) = 0x78;
    R_START_LABEL_X(1) = 0x77;
    R_START_LABEL_X(2) = 0x77;
    ZREG(61) = 1;
    R_C_UP_BTN_X = 0xFE;
    R_C_UP_BTN_Y = 0x10;
    ZREG(64) = 0x14;
    ZREG(65) = 0x15;
    ZREG(66) = 0x7A;
    R_ITEM_BTN_X(1) = 0xE3;
    R_ITEM_BTN_X(2) = 0xF9;
    R_ITEM_BTN_X(3) = 0x10F;
    R_ITEM_BTN_Y(0) = 0x11;
    R_ITEM_BTN_Y(1) = 0x12;
    R_ITEM_BTN_Y(2) = 0x22;
    R_ITEM_BTN_Y(3) = 0x12;
    R_ITEM_BTN_DD(0) = 0x23F;
    R_ITEM_BTN_DD(1) = 0x26C;
    R_ITEM_BTN_DD(2) = 0x26C;
    R_ITEM_BTN_DD(3) = 0x26C;
    R_ITEM_ICON_X(1) = 0xE3;
    R_ITEM_ICON_X(2) = 0xF9;
    R_ITEM_ICON_X(3) = 0x10F;
    R_ITEM_ICON_Y(0) = 0x11;
    R_ITEM_ICON_Y(1) = 0x12;
    R_ITEM_ICON_Y(2) = 0x22;
    R_ITEM_ICON_Y(3) = 0x12;
    R_ITEM_ICON_DD(0) = 0x226;
    R_ITEM_ICON_DD(1) = 0x2A8;
    R_ITEM_ICON_DD(2) = 0x2A8;
    R_ITEM_ICON_DD(3) = 0x2A8;
    ZREG(94) = 1;
    ZREG(95) = 0;
    XREG(0) = 0x1A;
    XREG(1) = 0x16;
    XREG(2) = -0xB;
    XREG(3) = -4;
    XREG(4) = 3;
    XREG(5) = 0;
    XREG(6) = 2;
    XREG(7) = 0x1E;
    XREG(8) = 0xA;
    XREG(9) = 0;
    XREG(10) = -0x254E;
    XREG(11) = 0x26DE;
    XREG(12) = 0x44;
    XREG(13) = 0x24;
    XREG(14) = 4;
    XREG(15) = 1;
    R_A_BTN_Y = 9;
    XREG(18) = -0x17C;
    R_A_ICON_Y = 9;
    XREG(21) = 0x30;
    XREG(25) = 0;
    XREG(26) = 0;
    XREG(27) = 0;
    XREG(28) = 0x10;
    XREG(29) = 0x32;
    XREG(30) = 0xF;
    XREG(31) = 8;
    XREG(32) = 4;
    XREG(33) = 2;
    XREG(34) = 0x64;
    XREG(35) = 7;
    XREG(36) = 0x14;
    XREG(37) = 0xA;
    XREG(38) = 2;
    XREG(39) = 0x8C;
    XREG(40) = 0x14;
    XREG(41) = 0x12C;
    XREG(42) = 0x64;
    XREG(43) = 0x46;
    XREG(44) = 0x32;
    XREG(45) = 0x24;
    XREG(46) = 0x10;
    XREG(47) = 8;
    R_MAGIC_BAR_SMALL_Y = 0x22;
    R_MAGIC_BAR_X = 0x12;
    R_MAGIC_BAR_LARGE_Y = 0x2A;
    R_MAGIC_FILL_X = 0x1A;
    XREG(52) = 0;
    XREG(53) = 1;
    XREG(54) = 0x41;
    XREG(55) = 0x3C;
    XREG(56) = 0x10;
    XREG(57) = 0x50;
    XREG(58) = 0x50;
    XREG(59) = 0xC;
    XREG(60) = 1;
    XREG(61) = 3;
    XREG(62) = 0;
    XREG(63) = 0x64;
    XREG(64) = 0x9E;
    XREG(65) = 0x66;
    XREG(66) = 0x30;
    XREG(67) = 0x36;
    XREG(68) = 0x46;
    XREG(69) = 0x56;
    XREG(70) = -0x12C;
    XREG(71) = 0;
    XREG(72) = 0x36;
    XREG(73) = 0x30;
    XREG(74) = 0x80;
    XREG(75) = 0x40;
    XREG(76) = 0x800;
    XREG(77) = 0x200;
    XREG(78) = 0x60;
    XREG(79) = 0x62;
    XREG(80) = 0;
    XREG(81) = 0x32;
    XREG(82) = 0x19;
    XREG(83) = 0x64;
    XREG(84) = 0x64;
    XREG(85) = 0;
    XREG(86) = 0;
    XREG(87) = 0;
    XREG(88) = -0x32;
    XREG(89) = -0x64;
    XREG(90) = -0x1F4;
    XREG(91) = 0;
    XREG(92) = 0x64;
    XREG(93) = 0x64;
    XREG(94) = 0xA0;
    XREG(95) = 0xC8;
    WREG(2) = -0x17C0;
    WREG(3) = 0x248B;
    WREG(4) = 8;
    WREG(5) = 3;
    WREG(6) = 8;
    WREG(7) = 0;
    WREG(8) = 0x64;
    WREG(9) = 0x6D;
    WREG(10) = 0x97;
    WREG(11) = 0x94;
    WREG(12) = 0x17;
    WREG(13) = 0x16;
    WREG(14) = -0x17C;
    WREG(15) = -0x15E;
    WREG(16) = -0xAF;
    WREG(17) = 0x9B;
    WREG(18) = 0xA;
    WREG(19) = 0xA;
    WREG(20) = -0x32;
    WREG(21) = -0x36;
    WREG(22) = -0x20;
    WREG(23) = -0x26;
    WREG(24) = -0x24;
    WREG(25) = 0x28;
    WREG(26) = -0x28;
    WREG(27) = 0;
    WREG(28) = 0;
    WREG(29) = 0xEE;
    WREG(30) = 0xA4;
    WREG(31) = 0;
    WREG(32) = 0x7A;
    WREG(33) = 0x3C;
    WREG(35) = 0;
    WREG(36) = 0;
    WREG(37) = 0x64;
    WREG(38) = 0x63;
    WREG(39) = 0x6D;
    R_B_LABEL_X(0) = 0x97;
    R_B_LABEL_X(1) = 0x95;
    R_B_LABEL_X(2) = 0x94;
    R_B_LABEL_Y(0) = 0x17;
    R_B_LABEL_Y(1) = 0x16;
    R_B_LABEL_Y(2) = 0x16;
    WREG(46) = -0x17C;
    WREG(47) = -0x168;
    WREG(48) = -0x15E;
    WREG(49) = -0x30;
    WREG(50) = 0x10;
    WREG(51) = -0x3E;
    WREG(52) = 0x16;
    WREG(53) = -0x54;
    WREG(54) = 0x14;
    WREG(55) = -0x35;
    WREG(56) = 0x28;
    WREG(57) = -0x40;
    WREG(58) = 0x2F;
    WREG(59) = -0x54;
    WREG(60) = 0x2C;
    WREG(61) = -0x2A;
    WREG(62) = 0x20;
    WREG(63) = -0x2D;
    WREG(64) = -0x25;
    WREG(65) = 0x1E;
    WREG(66) = -0x32;
    WREG(68) = 0xCC;
    WREG(69) = 0x8C;
    WREG(87) = 0x50;
    WREG(88) = 0x46;
    WREG(89) = 0x28;
    WREG(90) = 0x140;
    WREG(91) = 0x28;
    WREG(92) = 3;
    WREG(93) = 6;
    WREG(94) = 3;
    WREG(95) = 6;

    if (gSaveContext.game_mode == 0)
    {
        VREG(0) = 0x34;
        VREG(1) = 0x24;
        VREG(2) = 0xD6;
        VREG(3) = 0x4C;
        VREG(4) = 0x130;
        VREG(5) = 0x1AE;
        VREG(6) = 1;
        VREG(7) = 0x4E;
        VREG(8) = 0xA6;
        VREG(9) = 0x28;
        VREG(14) = 0x20;
        VREG(15) = 0x20;
        VREG(16) = 0x6E;
        VREG(17) = -0x2E4;
        VREG(18) = 0;
        VREG(19) = 0xFF;
        VREG(20) = 0xFF;
    }

    VREG(21) = 0;
    VREG(22) = 0;
    VREG(23) = 0;
    VREG(24) = 0;
    VREG(25) = 0;
    VREG(26) = 0;
    VREG(27) = 0;
    VREG(28) = 0x62;
    VREG(29) = 0x12;
    VREG(30) = 0;
    VREG(31) = 0;
    VREG(32) = 0;
    VREG(33) = 0x46;
    VREG(34) = 0xFF;
    VREG(35) = 0x50;
    VREG(36) = 0x46;
    VREG(37) = 0xFF;
    VREG(38) = 0x50;
    VREG(40) = 9;
    VREG(42) = 0xFA;
    VREG(43) = 0x1B8;
    VREG(44) = 0xA;
    VREG(45) = 0xBE;
    VREG(46) = 0xB8;
    VREG(47) = 0xB0;
    VREG(48) = 0xAC;
    VREG(49) = 0xAA;
    VREG(50) = 0x1E;
    VREG(51) = 0;
    VREG(52) = -0x10;
    VREG(53) = 0xE6;
    VREG(54) = 0xE6;
    VREG(55) = 0x78;
    VREG(56) = -0x2D0;
    VREG(57) = 0xFF;
    VREG(58) = 0xFF;
    VREG(59) = 0xFF;
    VREG(60) = 0x14;
    VREG(61) = 0x64;
    VREG(62) = 0;
    VREG(63) = 0xA;
    R_ITEM_AMMO_X(1) = 0xE4;
    R_ITEM_AMMO_X(2) = 0xFA;
    R_ITEM_AMMO_X(3) = 0x110;
    R_ITEM_AMMO_Y(0) = 0x23;
    R_ITEM_AMMO_Y(1) = 0x23;
    R_ITEM_AMMO_Y(2) = 0x33;
    R_ITEM_AMMO_Y(3) = 0x23;
    VREG(72) = 0;
    VREG(73) = 0;
    VREG(74) = 0;
    VREG(75) = 0;
    R_ITEM_ICON_WIDTH(0) = 0x1E;
    R_ITEM_ICON_WIDTH(1) = 0x18;
    R_ITEM_ICON_WIDTH(2) = 0x18;
    R_ITEM_ICON_WIDTH(3) = 0x18;
    R_ITEM_BTN_WIDTH(0) = 0x1D;
    R_ITEM_BTN_WIDTH(1) = 0x1B;
    R_ITEM_BTN_WIDTH(2) = 0x1B;
    R_ITEM_BTN_WIDTH(3) = 0x1B;
    VREG(84) = 0;
    VREG(85) = 0x32;
    VREG(86) = 0;
    VREG(87) = 0x40;
    VREG(88) = 0x42;
    VREG(89) = 0;
    VREG(90) = 0x7E;
    VREG(91) = 0x7C;
    VREG(92) = -0x3F;
}

void func_80112098(GlobalContext* globalCtx)
{
    func_80111070();
}
