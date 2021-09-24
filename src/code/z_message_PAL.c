#include "global.h"
#include "message_data_static.h"
#include "vt.h"
#include "textures/parameter_static/parameter_static.h"

s16 D_8014B2F0 = 0; // original name: key_off_flag ?

u8 D_8014B2F4 = 0;

s16 sOcarinaNoteBufPos = 0;

s16 sOcarinaNoteBufLen = 0;

u8 sTextboxSkipped = false;

/// The next text id for messages containing a MESSAGE_TEXTID control code
u16 sNextTextId = 0;

s16 sTextIsCredits = false;

UNK_TYPE D_8014B30C = 0;

s16 sLastPlayedSong = 0xFF; // last played song?

s16 sHasSunsSong = false;

s16 sMessageHasSetSfx = false;

u16 sOcarinaSongBitFlags = 0; // ocarina bit flags

MessageTableEntry sNesMessageEntryTable[] = {
#define DECLARE_MESSAGE(textId, type, yPos, nesMessage, gerMessage, fraMessage) \
    { textId, (_SHIFTL(type, 4, 8) | _SHIFTL(yPos, 0, 8)), _message_##textId##_nes },
#define DECLARE_MESSAGE_FFFC
#include "text/declare_messages.h"
#undef DECLARE_MESSAGE_FFFC
#undef DECLARE_MESSAGE
    { 0xFFFF, 0, NULL },
};

const char* sGerMessageEntryTable[] = {
#define DECLARE_MESSAGE(textId, type, yPos, nesMessage, gerMessage, fraMessage) _message_##textId##_ger,
#include "text/declare_messages.h"
#undef DECLARE_MESSAGE
    NULL,
};

const char* sFraMessageEntryTable[] = {
#define DECLARE_MESSAGE(textId, type, yPos, nesMessage, gerMessage, fraMessage) _message_##textId##_fra,
#include "text/declare_messages.h"
#undef DECLARE_MESSAGE
    NULL,
};

MessageTableEntry sStaffMessageEntryTable[] = {
#define DECLARE_MESSAGE(textId, type, yPos, staffMessage) \
    { textId, (_SHIFTL(type, 4, 8) | _SHIFTL(yPos, 0, 8)), _message_##textId##_staff },
#include "text/declare_messages_staff.h"
#undef DECLARE_MESSAGE
    { 0xFFFF, 0, NULL },
};

MessageTableEntry* sNesMessageEntryTablePtr = sNesMessageEntryTable;
const char** sGerMessageEntryTablePtr = sGerMessageEntryTable;
const char** sFraMessageEntryTablePtr = sFraMessageEntryTable;
MessageTableEntry* sStaffMessageEntryTablePtr = sStaffMessageEntryTable;

Color_RGB_s16 D_80153900[] = {
    { 255, 255, 255 }, { 50, 20, 0 },     { 255, 60, 0 },    { 255, 255, 255 },
    { 255, 255, 255 }, { 255, 255, 255 }, { 255, 255, 255 }, { 255, 255, 255 },
};

Color_RGB_s16 D_80153930[] = {
    { 0, 0, 0 },
    { 220, 150, 0 },
    { 0, 0, 0 },
    { 0, 0, 0 },
};

s16 D_80153948[] = {
    1,
    2,
};

// original name: onpu_buff
u8 sOcarinaNoteBuf[12] = { 0 }; // ocarina notes buffer

s16 D_80153958[10] = { 0 };

s16 D_8015396C[] = {
    0, 1, 2, 3, 4, 5, 8, 7, 6, 9, 10, 11,
};

// bss
s32 sCharTexSize;
s32 sCharTextureCoords;
s16 D_801759A8;
s16 D_801759AA;
s16 D_801759AC;
s16 D_801759AE;
s16 D_801759B0;
s16 D_801759B2;
s16 D_801759B4;
s16 D_801759B6;
s16 D_801759B8;
s16 D_801759BA;
s16 D_801759BC;
s16 D_801759BE;

void func_801069B0(void) {
    VREG(45) = 0xBD;
    VREG(46) = 0xB8;
    VREG(47) = 0xB3;
    VREG(48) = 0xAE;
    VREG(49) = 0xA9;
    sOcarinaNoteBuf[0] = 0xFF;
    D_80153958[8] = 0;
    D_80153958[7] = D_80153958[8];
    D_80153958[6] = D_80153958[8];
    D_80153958[5] = D_80153958[8];
    D_80153958[4] = D_80153958[8];
    D_80153958[3] = D_80153958[8];
    D_80153958[2] = D_80153958[8];
    D_80153958[1] = D_80153958[8];
    D_80153958[0] = D_80153958[8];
    D_801759A8 = 80;
    D_801759AC = 255;
    D_801759AA = 150;
    D_801759AE = 10;
    D_801759B2 = 10;
    D_801759B0 = 10;
    D_801759B4 = 255;
    D_801759B8 = 255;
    D_801759B6 = 50;
    D_801759BA = 10;
    D_801759BE = 10;
    D_801759BC = 10;
}

void func_80106AA8(GlobalContext* globalCtx) {
    MessageContext* msgCtx = &globalCtx->msgCtx;

    globalCtx->msgCtx.msgMode++;

    if (globalCtx->msgCtx.msgMode == MSGMODE_UNK_2E) {
        func_800ED858(1);
        msgCtx->ocarinaStaff = func_800EE3D4(); // Na_StopOcarinaMode
        msgCtx->ocarinaStaff->pos = sOcarinaNoteBufPos = 0;
        func_800ECC04((1 << 0xD) + 0x8000); // Na_StartOcarinaSinglePlayCheck2(0xD)
        msgCtx->unk_E3D2 = msgCtx->unk_E3D4;
    } else if (msgCtx->msgMode == MSGMODE_UNK_2C) {
        func_800ED858(6);
        msgCtx->ocarinaStaff = Audio_OcaGetDisplayStaff();
        msgCtx->ocarinaStaff->pos = sOcarinaNoteBufPos = 0;
        func_800ED93C(0xE, 1);
        msgCtx->stateTimer = 2;
    }
    func_801069B0();
}

u8 Message_ShouldAdvance(GlobalContext* globalCtx) {
    Input* curInput = &globalCtx->state.input[0];

    if (CHECK_BTN_ALL(curInput->press.button, BTN_A) || CHECK_BTN_ALL(curInput->press.button, BTN_B) ||
        CHECK_BTN_ALL(curInput->press.button, BTN_CUP)) {
        Audio_PlaySoundGeneral(NA_SE_SY_MESSAGE_PASS, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
    return CHECK_BTN_ALL(curInput->press.button, BTN_A) || CHECK_BTN_ALL(curInput->press.button, BTN_B) ||
           CHECK_BTN_ALL(curInput->press.button, BTN_CUP);
}

u8 Message_ShouldAdvanceSilent(GlobalContext* globalCtx) {
    Input* curInput = &globalCtx->state.input[0];

    return CHECK_BTN_ALL(curInput->press.button, BTN_A) || CHECK_BTN_ALL(curInput->press.button, BTN_B) ||
           CHECK_BTN_ALL(curInput->press.button, BTN_CUP);
}

/**
 * Closes any currently displayed textbox immediately, without waiting for
 * input from the player.
 */
void Message_CloseTextbox(GlobalContext* globalCtx) {
    MessageContext* msgCtx = &globalCtx->msgCtx;

    if (msgCtx->msgLength != 0) {
        msgCtx->stateTimer = 2;
        msgCtx->msgMode = MSGMODE_TEXT_CLOSING;
        msgCtx->unk_E3E4 = 0;
        Audio_PlaySoundGeneral(0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

void Message_HandleChoiceSelection(GlobalContext* globalCtx, u8 numChoices) {
    static s16 stickHeld = false;

    MessageContext* msgCtx = &globalCtx->msgCtx;
    Input* curInput = &globalCtx->state.input[0];

    if (curInput->rel.stick_y > 29 && !stickHeld) {
        stickHeld = true;
        msgCtx->choiceIndex--;
        if (msgCtx->choiceIndex > 128) {
            msgCtx->choiceIndex = 0;
        } else {
            Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    } else if (curInput->rel.stick_y < -29 && !stickHeld) {
        stickHeld = true;
        msgCtx->choiceIndex++;
        if (msgCtx->choiceIndex > numChoices) {
            msgCtx->choiceIndex = numChoices;
        } else {
            Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    } else if (ABS(curInput->rel.stick_y) < 30) {
        stickHeld = false;
    }
    msgCtx->textPosX = R_TEXT_CHOICE_XPOS;
    msgCtx->textPosY =
        (numChoices == 1) ? R_TEXT_CHOICE_YPOS(msgCtx->choiceIndex + 1) : R_TEXT_CHOICE_YPOS(msgCtx->choiceIndex);
}

void Message_DrawTextChar(GlobalContext* globalCtx, void* textureImage, Gfx** p) {
    MessageContext* msgCtx = &globalCtx->msgCtx;
    Gfx* gfx = *p;
    s16 x = msgCtx->textPosX;
    s16 y = msgCtx->textPosY;

    gDPPipeSync(gfx++);

    sCharTexSize = (R_TEXT_CHAR_SCALE / 100.0f) * 16.0f;
    sCharTextureCoords = 1024.0f / (R_TEXT_CHAR_SCALE / 100.0f);

    gDPLoadTextureBlock_4b(gfx++, textureImage, G_IM_FMT_I, FONT_CHAR_TEX_WIDTH, FONT_CHAR_TEX_HEIGHT, 0,
                           G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                           G_TX_NOLOD);

    // Draw drop shadow
    if (msgCtx->textBoxType != BOX_NONE_NO_SHADOW) {
        gDPSetPrimColor(gfx++, 0, 0, 0, 0, 0, msgCtx->textColor.a);
        gSPTextureRectangle(gfx++, (x + R_TEXT_DROP_SHADOW_OFFSET) << 2, (y + R_TEXT_DROP_SHADOW_OFFSET) << 2,
                            (x + R_TEXT_DROP_SHADOW_OFFSET + sCharTexSize) << 2,
                            (y + R_TEXT_DROP_SHADOW_OFFSET + sCharTexSize) << 2, G_TX_RENDERTILE, 0, 0,
                            sCharTextureCoords, sCharTextureCoords);
    }

    gDPPipeSync(gfx++);
    gDPSetPrimColor(gfx++, 0, 0, msgCtx->textColor.r, msgCtx->textColor.g, msgCtx->textColor.b, msgCtx->textColor.a);
    gSPTextureRectangle(gfx++, x << 2, y << 2, (x + sCharTexSize) << 2, (y + sCharTexSize) << 2, G_TX_RENDERTILE, 0, 0,
                        sCharTextureCoords, sCharTextureCoords);
    *p = gfx;
}

// resizes textboxes when opening them
void Message_GrowTextbox(MessageContext* msgCtx) {
    static f32 widthCoefficients[] = {
        1.2f, 1.5f, 1.8f, 2.0f, 2.1f, 2.2f, 2.1f, 2.0f,
    };
    static f32 heightCoefficients[] = {
        0.6f, 0.75f, 0.9f, 1.0f, 1.05f, 1.1f, 1.05f, 1.0f,
    };

    f32 width =
        R_TEXTBOX_WIDTH_TARGET * (widthCoefficients[msgCtx->stateTimer] + widthCoefficients[msgCtx->stateTimer]);
    f32 height = R_TEXTBOX_HEIGHT_TARGET * heightCoefficients[msgCtx->stateTimer];
    f32 texWidth =
        R_TEXTBOX_TEXWIDTH_TARGET / (widthCoefficients[msgCtx->stateTimer] + widthCoefficients[msgCtx->stateTimer]);
    f32 texHeight = R_TEXTBOX_TEXHEIGHT_TARGET / heightCoefficients[msgCtx->stateTimer];

    // Adjust y pos
    R_TEXTBOX_Y = R_TEXTBOX_Y_TARGET +
                  (R_TEXTBOX_Y_TARGET - (s16)(R_TEXTBOX_Y_TARGET * heightCoefficients[msgCtx->stateTimer] + 0.5f)) / 2;

    msgCtx->textboxColorAlphaCurrent += msgCtx->textboxColorAlphaTarget / 8;
    msgCtx->stateTimer++;
    if (msgCtx->stateTimer == 8) {
        // Reached the end
        R_TEXTBOX_X = R_TEXTBOX_X_TARGET;
        R_TEXTBOX_Y = R_TEXTBOX_Y_TARGET;
        msgCtx->msgMode = MSGMODE_UNK_03;
        msgCtx->textboxColorAlphaCurrent = msgCtx->textboxColorAlphaTarget;
    }
    // Adjust width and height
    R_TEXTBOX_WIDTH = (s16)(width + 0.5f) / 2;
    R_TEXTBOX_HEIGHT = (s16)(height + 0.5f);
    // Adjust texture coordinates
    R_TEXTBOX_TEXWIDTH = texWidth + 0.5f;
    R_TEXTBOX_TEXHEIGHT = texHeight + 0.5f;
    // Adjust x pos
    R_TEXTBOX_X = (R_TEXTBOX_X_TARGET + R_TEXTBOX_WIDTH_TARGET) - (R_TEXTBOX_WIDTH / 2);
}

void Message_FindMessage(GlobalContext* globalCtx, u16 textId) {
    const char* foundSeg;
    const char* nextSeg;
    MessageTableEntry* messageTableEntry = sNesMessageEntryTablePtr;
    const char** languageSegmentTable;
    Font* font;
    const char* seg;

    if (gSaveContext.language == LANGUAGE_ENG) {
        seg = messageTableEntry->segment;

        while (messageTableEntry->textId != 0xFFFF) {
            font = &globalCtx->msgCtx.font;

            if (messageTableEntry->textId == textId) {
                foundSeg = messageTableEntry->segment;
                font->msgProperties = messageTableEntry->typePos;
                messageTableEntry++;
                nextSeg = messageTableEntry->segment;
                font->msgOffset = foundSeg - seg;
                font->msgLength = nextSeg - foundSeg;
                // Message found!!!
                osSyncPrintf(
                    " メッセージが,見つかった！！！ = %x  (data=%x) (data0=%x) (data1=%x) (data2=%x) (data3=%x)\n",
                    textId, font->msgOffset, font->msgLength, foundSeg, seg, nextSeg);
                return;
            }
            messageTableEntry++;
        }
    } else {
        languageSegmentTable = (gSaveContext.language == LANGUAGE_GER) ? sGerMessageEntryTablePtr : sFraMessageEntryTablePtr;
        seg = messageTableEntry->segment;

        while (messageTableEntry->textId != 0xFFFF) {
            font = &globalCtx->msgCtx.font;

            if (messageTableEntry->textId == textId) {
                foundSeg = *languageSegmentTable;
                font->msgProperties = messageTableEntry->typePos;
                languageSegmentTable++;
                nextSeg = *languageSegmentTable;
                font->msgOffset = foundSeg - seg;
                font->msgLength = nextSeg - foundSeg;
                // Message found!!!
                osSyncPrintf(
                    " メッセージが,見つかった！！！ = %x  (data=%x) (data0=%x) (data1=%x) (data2=%x) (data3=%x)\n",
                    textId, font->msgOffset, font->msgLength, foundSeg, seg, nextSeg);
                return;
            }
            messageTableEntry++;
            languageSegmentTable++;
        }
    }
    // Message not found!!!
    osSyncPrintf(" メッセージが,見つからなかった！！！ = %x\n", textId);
    font = &globalCtx->msgCtx.font;
    messageTableEntry = sNesMessageEntryTablePtr;

    if (gSaveContext.language == LANGUAGE_ENG) {
        foundSeg = messageTableEntry->segment;
        font->msgProperties = messageTableEntry->typePos;
        messageTableEntry++;
        nextSeg = messageTableEntry->segment;
    } else {
        languageSegmentTable = (gSaveContext.language == LANGUAGE_GER) ? sGerMessageEntryTablePtr : sFraMessageEntryTablePtr;
        foundSeg = *languageSegmentTable;
        font->msgProperties = messageTableEntry->typePos;
        languageSegmentTable++;
        nextSeg = *languageSegmentTable;
    }
    font->msgOffset = foundSeg - seg;
    font->msgLength = nextSeg - foundSeg;
}

void Message_FindCreditsMessage(GlobalContext* globalCtx, u16 textId) {
    const char* foundSeg;
    const char* nextSeg;
    const char* seg;
    MessageTableEntry* messageTableEntry = sStaffMessageEntryTablePtr;
    Font* font;

    seg = messageTableEntry->segment;
    while (messageTableEntry->textId != 0xFFFF) {
        font = &globalCtx->msgCtx.font;

        if (messageTableEntry->textId == textId) {
            foundSeg = messageTableEntry->segment;
            font->msgProperties = messageTableEntry->typePos;
            messageTableEntry++;
            nextSeg = messageTableEntry->segment;
            font->msgOffset = foundSeg - seg;
            font->msgLength = nextSeg - foundSeg;
            // Message found!!!
            osSyncPrintf(" メッセージが,見つかった！！！ = %x  (data=%x) (data0=%x) (data1=%x) (data2=%x) (data3=%x)\n",
                         textId, font->msgOffset, font->msgLength, foundSeg, seg, nextSeg);
            return;
        }
        messageTableEntry++;
    }
}

void Message_SetTextColor(MessageContext* msgCtx, u16 colorParameter) {
    switch (colorParameter) {
        case (MSGCOL_RED | MSGCOL_TYPE1_ORANGE):
            if (msgCtx->textBoxType == BOX_WOODEN) { // orange
                msgCtx->textColor.r = 255;
                msgCtx->textColor.g = 120;
                msgCtx->textColor.b = 0;
            } else { // red
                msgCtx->textColor.r = 255;
                msgCtx->textColor.g = 60;
                msgCtx->textColor.b = 60;
            }
            break;
        case (MSGCOL_GREEN | MSGCOL_TYPE1_GREEN): // adjustable
            if (msgCtx->textBoxType == BOX_WOODEN) {
                msgCtx->textColor.r = R_TEXT_ADJUST_COLOR_1_R;
                msgCtx->textColor.g = R_TEXT_ADJUST_COLOR_1_G;
                msgCtx->textColor.b = R_TEXT_ADJUST_COLOR_1_B;
            } else {
                msgCtx->textColor.r = R_TEXT_ADJUST_COLOR_2_R;
                msgCtx->textColor.g = R_TEXT_ADJUST_COLOR_2_G;
                msgCtx->textColor.b = R_TEXT_ADJUST_COLOR_2_B;
            }
            break;
        case (MSGCOL_BLUE | MSGCOL_TYPE1_BLUE):
            if (msgCtx->textBoxType == BOX_WOODEN) {
                msgCtx->textColor.r = 80;
                msgCtx->textColor.g = 110;
                msgCtx->textColor.b = 255;
            } else {
                msgCtx->textColor.r = 80;
                msgCtx->textColor.g = 90;
                msgCtx->textColor.b = 255;
            }
            break;
        case (MSGCOL_LIGHTBLUE | MSGCOL_TYPE1_LIGHTBLUE | MSGCOL_TYPE5_BLUE):
            if (msgCtx->textBoxType == BOX_WOODEN) {
                msgCtx->textColor.r = 90;
                msgCtx->textColor.g = 180;
                msgCtx->textColor.b = 255;
            } else if (msgCtx->textBoxType == BOX_NONE_NO_SHADOW) {
                msgCtx->textColor.r = 80;
                msgCtx->textColor.g = 150;
                msgCtx->textColor.b = 180;
            } else {
                msgCtx->textColor.r = 100;
                msgCtx->textColor.g = 180;
                msgCtx->textColor.b = 255;
            }
            break;
        case (MSGCOL_PINK | MSGCOL_TYPE1_PURPLE):
            if (msgCtx->textBoxType == BOX_WOODEN) {
                msgCtx->textColor.r = 210;
                msgCtx->textColor.g = 100;
                msgCtx->textColor.b = 255;
            } else {
                msgCtx->textColor.r = 255;
                msgCtx->textColor.g = 150;
                msgCtx->textColor.b = 180;
            }
            break;
        case (MSGCOL_YELLOW | MSGCOL_TYPE1_YELLOW):
            if (msgCtx->textBoxType == BOX_WOODEN) {
                msgCtx->textColor.r = 255;
                msgCtx->textColor.g = 255;
                msgCtx->textColor.b = 30;
            } else {
                msgCtx->textColor.r = 225;
                msgCtx->textColor.g = 255;
                msgCtx->textColor.b = 50;
            }
            break;
        case MSGCOL_BLACK:
            msgCtx->textColor.r = msgCtx->textColor.g = msgCtx->textColor.b = 0;
            break;
        case (MSGCOL_WHITE | MSGCOL_TYPE5_BLACK):
        default:
            if (msgCtx->textBoxType == BOX_NONE_NO_SHADOW) { // black
                msgCtx->textColor.r = msgCtx->textColor.g = msgCtx->textColor.b = 0;
            } else { // white
                msgCtx->textColor.r = msgCtx->textColor.g = msgCtx->textColor.b = 255;
            }
            break;
    }
}

void Message_DrawTextboxEndIcon(GlobalContext* globalCtx, Gfx** p, s16 x, s16 y) {
    static Color_RGB_s16 D_801539C8[] = {
        { 0, 200, 80 },
        { 50, 255, 130 },
    };
    static Color_RGB_s16 D_801539D4[] = {
        { 0, 0, 0 },
        { 0, 255, 130 },
    };
    static s16 D_801539E0 = 0;
    static s16 D_801539E4 = 200;
    static s16 D_801539E8 = 80;
    static s16 D_801539EC = 12;
    static s16 D_801539F0 = 0;
    static s16 D_801539F4 = 0;
    static s16 D_801539F8 = 0;
    static s16 D_801539FC = 0;

    MessageContext* msgCtx = &globalCtx->msgCtx;
    Font* font = &msgCtx->font;
    Gfx* gfx = *p;
    s16 primR;
    s16 primG;
    s16 primB;
    s16 envR;
    s16 envG;
    s16 envB;
    u8* iconTexture = font->iconBuf;

    if (sTextIsCredits) {
        return;
    }

    primR = (ABS(D_801539E0 - D_801539C8[D_801539F0].r)) / D_801539EC;
    primG = (ABS(D_801539E4 - D_801539C8[D_801539F0].g)) / D_801539EC;
    primB = (ABS(D_801539E8 - D_801539C8[D_801539F0].b)) / D_801539EC;

    if (D_801539E0 >= D_801539C8[D_801539F0].r) {
        D_801539E0 -= primR;
    } else {
        D_801539E0 += primR;
    }

    if (D_801539E4 >= D_801539C8[D_801539F0].g) {
        D_801539E4 -= primG;
    } else {
        D_801539E4 += primG;
    }

    if (D_801539E8 >= D_801539C8[D_801539F0].b) {
        D_801539E8 -= primB;
    } else {
        D_801539E8 += primB;
    }

    envR = (ABS(D_801539F4 - D_801539D4[D_801539F0].r)) / D_801539EC;
    envG = (ABS(D_801539F8 - D_801539D4[D_801539F0].g)) / D_801539EC;
    envB = (ABS(D_801539FC - D_801539D4[D_801539F0].b)) / D_801539EC;

    if (D_801539F4 >= D_801539D4[D_801539F0].r) {
        D_801539F4 -= envR;
    } else {
        D_801539F4 += envR;
    }

    if (D_801539F8 >= D_801539D4[D_801539F0].g) {
        D_801539F8 -= envG;
    } else {
        D_801539F8 += envG;
    }

    if (D_801539FC >= D_801539D4[D_801539F0].b) {
        D_801539FC -= envB;
    } else {
        D_801539FC += envB;
    }

    D_801539EC--;

    if (D_801539EC == 0) {
        D_801539E0 = D_801539C8[D_801539F0].r;
        D_801539E4 = D_801539C8[D_801539F0].g;
        D_801539E8 = D_801539C8[D_801539F0].b;
        D_801539F4 = D_801539D4[D_801539F0].r;
        D_801539F8 = D_801539D4[D_801539F0].g;
        D_801539FC = D_801539D4[D_801539F0].b;
        D_801539EC = 12;
        D_801539F0 ^= 1;
    }

    gDPPipeSync(gfx++);

    gDPSetCombineLERP(gfx++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

    gDPSetPrimColor(gfx++, 0, 0, D_801539E0, D_801539E4, D_801539E8, 255);
    gDPSetEnvColor(gfx++, D_801539F4, D_801539F8, D_801539FC, 255);

    gDPLoadTextureBlock_4b(gfx++, iconTexture, G_IM_FMT_I, FONT_CHAR_TEX_WIDTH, FONT_CHAR_TEX_HEIGHT, 0,
                           G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                           G_TX_NOLOD);

    sCharTexSize = 16.0f * ((f32)R_TEXT_CHAR_SCALE / 100.0f);
    sCharTextureCoords = 1024.0f / ((f32)R_TEXT_CHAR_SCALE / 100.0f);

    gSPTextureRectangle(gfx++, x << 2, y << 2, (x + sCharTexSize) << 2, (y + sCharTexSize) << 2, G_TX_RENDERTILE, 0, 0,
                        sCharTextureCoords, sCharTextureCoords);

    msgCtx->stateTimer++;

    *p = gfx;
}

#define MESSAGE_SPACE_WIDTH 6
// font widths
f32 sFontWidths[144] = {
    /*                */ 8.0f,
    /* !              */ 8.0f,
    /* "              */ 6.0f,
    /* #              */ 9.0f,
    /* $              */ 9.0f,
    /* %              */ 14.0f,
    /* &              */ 12.0f,
    /* '              */ 3.0f,
    /* (              */ 7.0f,
    /* )              */ 7.0f,
    /* *              */ 7.0f,
    /* +              */ 9.0f,
    /* ,              */ 4.0f,
    /* -              */ 6.0f,
    /* .              */ 4.0f,
    /* /              */ 9.0f,
    /* 0              */ 10.0f,
    /* 1              */ 5.0f,
    /* 2              */ 9.0f,
    /* 3              */ 9.0f,
    /* 4              */ 10.0f,
    /* 5              */ 9.0f,
    /* 6              */ 9.0f,
    /* 7              */ 9.0f,
    /* 8              */ 9.0f,
    /* 9              */ 9.0f,
    /* :              */ 6.0f,
    /* ;              */ 6.0f,
    /* <              */ 9.0f,
    /* =              */ 11.0f,
    /* >              */ 9.0f,
    /* ?              */ 11.0f,
    /* @              */ 13.0f,
    /* A              */ 12.0f,
    /* B              */ 9.0f,
    /* C              */ 11.0f,
    /* D              */ 11.0f,
    /* E              */ 8.0f,
    /* F              */ 8.0f,
    /* G              */ 12.0f,
    /* H              */ 10.0f,
    /* I              */ 4.0f,
    /* J              */ 8.0f,
    /* K              */ 10.0f,
    /* L              */ 8.0f,
    /* M              */ 13.0f,
    /* N              */ 11.0f,
    /* O              */ 13.0f,
    /* P              */ 9.0f,
    /* Q              */ 13.0f,
    /* R              */ 10.0f,
    /* S              */ 10.0f,
    /* T              */ 9.0f,
    /* U              */ 10.0f,
    /* V              */ 11.0f,
    /* W              */ 15.0f,
    /* X              */ 11.0f,
    /* Y              */ 10.0f,
    /* Z              */ 10.0f,
    /* [              */ 7.0f,
    /* ¥              */ 10.0f,
    /* ]              */ 7.0f,
    /* ^              */ 10.0f,
    /* _              */ 9.0f,
    /* `              */ 5.0f,
    /* a              */ 8.0f,
    /* b              */ 9.0f,
    /* c              */ 8.0f,
    /* d              */ 9.0f,
    /* e              */ 9.0f,
    /* f              */ 6.0f,
    /* g              */ 9.0f,
    /* h              */ 8.0f,
    /* i              */ 4.0f,
    /* j              */ 6.0f,
    /* k              */ 8.0f,
    /* l              */ 4.0f,
    /* m              */ 12.0f,
    /* n              */ 9.0f,
    /* o              */ 9.0f,
    /* p              */ 9.0f,
    /* q              */ 9.0f,
    /* r              */ 7.0f,
    /* s              */ 8.0f,
    /* t              */ 7.0f,
    /* u              */ 8.0f,
    /* v              */ 9.0f,
    /* w              */ 12.0f,
    /* x              */ 8.0f,
    /* y              */ 9.0f,
    /* z              */ 8.0f,
    /* {              */ 7.0f,
    /* |              */ 5.0f,
    /* }              */ 7.0f,
    /* ~              */ 10.0f,
    /* ‾              */ 10.0f,
    /* À              */ 12.0f,
    /* î              */ 6.0f,
    /* Â              */ 12.0f,
    /* Ä              */ 12.0f,
    /* Ç              */ 11.0f,
    /* È              */ 8.0f,
    /* É              */ 8.0f,
    /* Ê              */ 8.0f,
    /* Ë              */ 6.0f,
    /* Ï              */ 6.0f,
    /* Ô              */ 13.0f,
    /* Ö              */ 13.0f,
    /* Ù              */ 10.0f,
    /* Û              */ 10.0f,
    /* Ü              */ 10.0f,
    /* ß              */ 9.0f,
    /* à              */ 8.0f,
    /* á              */ 8.0f,
    /* â              */ 8.0f,
    /* ä              */ 8.0f,
    /* ç              */ 8.0f,
    /* è              */ 9.0f,
    /* é              */ 9.0f,
    /* ê              */ 9.0f,
    /* ë              */ 9.0f,
    /* ï              */ 6.0f,
    /* ô              */ 9.0f,
    /* ö              */ 9.0f,
    /* ù              */ 9.0f,
    /* û              */ 9.0f,
    /* ü              */ 9.0f,
    /* [A]            */ 14.0f,
    /* [B]            */ 14.0f,
    /* [C]            */ 14.0f,
    /* [L]            */ 14.0f,
    /* [R]            */ 14.0f,
    /* [Z]            */ 14.0f,
    /* [C-Up]         */ 14.0f,
    /* [C-Down]       */ 14.0f,
    /* [C-Left]       */ 14.0f,
    /* [C-Right]      */ 14.0f,
    /* ▼              */ 14.0f,
    /* [Analog-Stick] */ 14.0f,
    /* [D-Pad]        */ 14.0f,
    /* ?              */ 14.0f,
    /* ?              */ 14.0f,
    /* ?              */ 14.0f,
    /* ?              */ 14.0f,
};

s16 D_80153C40[] = { 74, 74, 74, 0 };

s16 D_80153C48[] = { 72, 72, 72, 0 };

u16 Message_DrawItemIcon(GlobalContext* globalCtx, u16 itemId, Gfx** p, u16 i) {
    s32 pad;
    Gfx* gfx = *p;
    MessageContext* msgCtx = &globalCtx->msgCtx;

    // clang-format off
    // same line required to match
    if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) { Audio_PlaySoundGeneral(0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8); }
    // clang-format on

    gDPPipeSync(gfx++);
    gDPSetCombineMode(gfx++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(gfx++, 0, 0, 255, 255, 255, msgCtx->textColor.a);

    if (itemId >= 102) {
        gDPLoadTextureBlock(gfx++, (u32)msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE, G_IM_FMT_RGBA, G_IM_SIZ_32b,
                            24, 24, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                            G_TX_NOLOD, G_TX_NOLOD);
    } else {
        gDPLoadTextureBlock(gfx++, (u32)msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE, G_IM_FMT_RGBA, G_IM_SIZ_32b,
                            32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                            G_TX_NOLOD, G_TX_NOLOD);
    }
    gSPTextureRectangle(gfx++, (msgCtx->textPosX + R_TEXTBOX_ICON_XPOS) << 2, R_TEXTBOX_ICON_YPOS << 2,
                        (msgCtx->textPosX + R_TEXTBOX_ICON_XPOS + R_TEXTBOX_ICON_SIZE) << 2,
                        (R_TEXTBOX_ICON_YPOS + R_TEXTBOX_ICON_SIZE) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);
    gDPPipeSync(gfx++);
    gDPSetCombineLERP(gfx++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0);

    msgCtx->textPosX += 32;

    i++;
    *p = gfx;

    return i;
}

void Message_HandleOcarina(GlobalContext* globalCtx) {
    MessageContext* msgCtx = &globalCtx->msgCtx;

    if (globalCtx->msgCtx.msgMode == MSGMODE_TEXT_DISPLAYING) {
        globalCtx->msgCtx.unk_E3EE = 1;

        if (msgCtx->unk_E3F0 == 0x2A) {
            msgCtx->msgMode = MSGMODE_UNK_21;
            // Recording Start / Recording Start / Recording Start / Recording Start ->
            osSyncPrintf("録音開始 録音開始 録音開始 録音開始  -> ");
        } else if (msgCtx->unk_E3F0 == MSGMODE_UNK_2B) {
            // Recording Playback / Recording Playback / Recording Playback / Recording Playback ->
            osSyncPrintf("録音再生 録音再生 録音再生 録音再生  -> ");
            func_800ED858(1);
            func_800ED858(1);
            msgCtx->ocarinaStaff = Audio_OcaGetDisplayStaff();
            sOcarinaNoteBufPos = sOcarinaNoteBufLen = 0;
            msgCtx->ocarinaStaff->pos = sOcarinaNoteBufPos;
            func_801069B0();
            msgCtx->stateTimer = 3;
            msgCtx->msgMode = MSGMODE_UNK_23;
            func_800ED93C(0xF, 1);
        } else if (msgCtx->unk_E3F0 == 0x2C) {
            msgCtx->msgMode = MSGMODE_UNK_24;
            // 8 Note Recording Start / 8 Note Recording Start / 8 Note Recording Start ->
            osSyncPrintf("８音録音開始 ８音録音開始 ８音録音開始  -> ");
        } else if (msgCtx->unk_E3F0 == 0x2D) {
            // 8 Note Playback / 8 Note Playback / 8 Note Playback ->
            osSyncPrintf("８音再生 ８音再生 ８音再生  -> ");
            func_800ED858(1);
            func_800ED858(1);
            msgCtx->ocarinaStaff = Audio_OcaGetDisplayStaff();
            sOcarinaNoteBufPos = sOcarinaNoteBufLen = 0;
            msgCtx->ocarinaStaff->pos = sOcarinaNoteBufPos;
            func_801069B0();
            msgCtx->stateTimer = 3;
            msgCtx->msgMode = MSGMODE_UNK_28;
            func_800ED93C(0xD, 1);
        } else if (msgCtx->unk_E3F0 == 0x2E) {
            msgCtx->msgMode = MSGMODE_UNK_29;
            // Musical Round Start / Musical Round Start / Musical Round Start / Musical Round Start ->
            osSyncPrintf("輪唱開始 輪唱開始 輪唱開始 輪唱開始  -> ");
        } else if (msgCtx->unk_E3F0 == 0x2F) {
            msgCtx->msgMode = MSGMODE_UNK_31;
            // Frog Chorus / Frog Chorus ->
            osSyncPrintf("カエルの合唱 カエルの合唱  -> ");
        } else {
            // Ocarina（%d）
            osSyncPrintf("オカリナ（%d） ", msgCtx->unk_E3F0);
            if (msgCtx->unk_E3F0 == 0 || msgCtx->unk_E3F0 == 1 || msgCtx->unk_E3F0 >= 0x22) {
                msgCtx->msgMode = MSGMODE_UNK_09;
                osSyncPrintf("000000000000  -> ");
            } else if (msgCtx->unk_E3F0 >= 2 && msgCtx->unk_E3F0 < 0xE) {
                msgCtx->msgMode = MSGMODE_UNK_0A;
                osSyncPrintf("111111111111  -> ");
            } else {
                msgCtx->msgMode = MSGMODE_UNK_0B;
                osSyncPrintf("222222222222  -> ");
            }
        }
        osSyncPrintf("msg_mode=%d\n", msgCtx->msgMode);
    }
}

/**
 * Draws the entire text contents of a textbox.
 */
void Message_DrawText(GlobalContext* globalCtx, Gfx** gfxP) {
    MessageContext* msgCtx = &globalCtx->msgCtx;
    u16 lookAheadCharacter;
    u8 character;
    u16 j;
    u16 i;
    u16 sfxHi;
    u16 charTexIdx;
    Font* font = &globalCtx->msgCtx.font;
    Gfx* gfx = *gfxP;

    globalCtx->msgCtx.textPosX = R_TEXT_INIT_XPOS;

    if (sTextIsCredits == false) {
        msgCtx->textPosY = R_TEXT_INIT_YPOS;
    } else {
        msgCtx->textPosY = YREG(1);
    }

    if (msgCtx->textBoxType == BOX_NONE_NO_SHADOW) {
        msgCtx->textColor.r = msgCtx->textColor.g = msgCtx->textColor.b = 0;
    } else {
        msgCtx->textColor.r = msgCtx->textColor.g = msgCtx->textColor.b = 255;
    }

    msgCtx->unk_E3D0 = 0;
    charTexIdx = 0;

    for (i = 0; i < msgCtx->unk_E3D2; i++) {
        character = msgCtx->msgBufDecoded[i];

        switch (character) {
            case MESSAGE_NEWLINE:
                msgCtx->textPosX = R_TEXT_INIT_XPOS;
                if (msgCtx->unk_E3E6 == 1 || msgCtx->unk_E3E6 == 3) {
                    msgCtx->textPosX += 32;
                }
                if (msgCtx->unk_E3E6 == 2 && msgCtx->textPosY != R_TEXT_INIT_YPOS) {
                    msgCtx->textPosX += 32;
                }
                msgCtx->textPosY += R_TEXT_LINE_SPACING;
                break;
            case MESSAGE_COLOR:
                Message_SetTextColor(msgCtx, msgCtx->msgBufDecoded[++i] & 0xF);
                break;
            case ' ':
                msgCtx->textPosX += MESSAGE_SPACE_WIDTH;
                break;
            case MESSAGE_BOX_BREAK:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    if (!sTextboxSkipped) {
                        Audio_PlaySoundGeneral(0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                        msgCtx->msgMode = MSGMODE_UNK_34;
                        Font_LoadMessageBoxIcon(font, MESSAGE_ICON_TRIANGLE);
                    } else {
                        msgCtx->msgMode = MSGMODE_UNK_04;
                        msgCtx->textUnskippable = false;
                        msgCtx->msgBufPos++;
                    }
                }
                *gfxP = gfx;
                return;
            case MESSAGE_SHIFT:
                msgCtx->textPosX += msgCtx->msgBufDecoded[++i];
                break;
            case MESSAGE_TEXTID:
                msgCtx->unk_E3E4 = 0x30;
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    Audio_PlaySoundGeneral(0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    msgCtx->msgMode = MSGMODE_TEXT_DONE;
                    Font_LoadMessageBoxIcon(font, MESSAGE_ICON_TRIANGLE);
                }
                *gfxP = gfx;
                return;
            case MESSAGE_QUICKTEXT_ENABLE:
                if (i + 1 == msgCtx->unk_E3D2 &&
                    (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING ||
                     (msgCtx->msgMode >= MSGMODE_UNK_09 && msgCtx->msgMode < MSGMODE_UNK_21))) {
                    j = i;
                    while (true) {
                        lookAheadCharacter = msgCtx->msgBufDecoded[j];
                        if (lookAheadCharacter == MESSAGE_SHIFT) {
                            j += 2;
                        } else if ((lookAheadCharacter != MESSAGE_QUICKTEXT_DISABLE) &&
                                   (lookAheadCharacter != MESSAGE_PERSISTENT) &&
                                   (lookAheadCharacter != MESSAGE_EVENT) &&
                                   (lookAheadCharacter != MESSAGE_BOX_BREAK_DELAYED) &&
                                   (lookAheadCharacter != MESSAGE_AWAIT_BUTTON_PRESS) &&
                                   (lookAheadCharacter != MESSAGE_BOX_BREAK) && (lookAheadCharacter != MESSAGE_END)) {
                            j++;
                        } else {
                            break;
                        }
                    }
                    i = j - 1;
                    msgCtx->unk_E3D2 = i + 1;

                    if (character) {}
                }
            case MESSAGE_QUICKTEXT_DISABLE:
                break;
            case MESSAGE_AWAIT_BUTTON_PRESS:
                if (i + 1 == msgCtx->unk_E3D2) {
                    if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                        msgCtx->msgMode = MSGMODE_UNK_07;
                        Font_LoadMessageBoxIcon(font, MESSAGE_ICON_TRIANGLE);
                    }
                    *gfxP = gfx;
                    return;
                }
                break;
            case MESSAGE_BOX_BREAK_DELAYED:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->stateTimer = msgCtx->msgBufDecoded[++i];
                    msgCtx->msgMode = MSGMODE_UNK_08;
                }
                *gfxP = gfx;
                return;
            case MESSAGE_FADE2:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->msgMode = MSGMODE_TEXT_DONE;
                    msgCtx->unk_E3E4 = 0x60;
                    osSyncPrintf("タイマー (%x) (%x)", msgCtx->msgBufDecoded[i + 1],
                                 msgCtx->msgBufDecoded[i + 2]); // timer
                    msgCtx->stateTimer = msgCtx->msgBufDecoded[++i] << 8;
                    msgCtx->stateTimer |= msgCtx->msgBufDecoded[++i];
                    osSyncPrintf("合計wct=%x(%d)\n", msgCtx->stateTimer, msgCtx->stateTimer); // total wct
                }
                *gfxP = gfx;
                return;
            case MESSAGE_SFX:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING && !sMessageHasSetSfx) {
                    sMessageHasSetSfx = true;
                    osSyncPrintf("サウンド（ＳＥ）\n"); // sfx
                    sfxHi = msgCtx->msgBufDecoded[i + 1] << 8;
                    Audio_PlaySoundGeneral(sfxHi | msgCtx->msgBufDecoded[i + 2], &D_801333D4, 4, &D_801333E0,
                                           &D_801333E0, &D_801333E8);
                }
                i += 2;
                break;
            case MESSAGE_ITEM_ICON:
                i = Message_DrawItemIcon(globalCtx, msgCtx->msgBufDecoded[i + 1], &gfx, i);
                break;
            case MESSAGE_BACKGROUND:
                // clang-format off
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) { Audio_PlaySoundGeneral(0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8); }
                // clang-format on
                gDPPipeSync(gfx++);
                gDPSetCombineMode(gfx++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
                gDPSetPrimColor(gfx++, 0, 0, D_80153930[msgCtx->unk_E3F9].r, D_80153930[msgCtx->unk_E3F9].g,
                                D_80153930[msgCtx->unk_E3F9].b, msgCtx->textColor.a);

                gDPLoadTextureBlock_4b(gfx++, ((u32)msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE), G_IM_FMT_I, 96,
                                       48, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                                       G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                gSPTextureRectangle(
                    gfx++, (msgCtx->textPosX + 1) << 2, (R_TEXTBOX_BG_YPOS + D_80153948[msgCtx->unk_E3FA]) << 2,
                    (msgCtx->textPosX + 1 + 0x60) << 2, (R_TEXTBOX_BG_YPOS + D_80153948[msgCtx->unk_E3FA] + 0x30) << 2,
                    G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);

                gDPLoadTextureBlock_4b(gfx++, ((u32)msgCtx->textboxSegment + 0x1900), G_IM_FMT_I, 96, 48, 0,
                                       G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                       G_TX_NOLOD, G_TX_NOLOD);
                gSPTextureRectangle(gfx++, (msgCtx->textPosX + 1 + 0x60) << 2,
                                    (R_TEXTBOX_BG_YPOS + D_80153948[msgCtx->unk_E3FA]) << 2,
                                    (msgCtx->textPosX + 1 + 0x60 + 1 + 0x60) << 2,
                                    (R_TEXTBOX_BG_YPOS + D_80153948[msgCtx->unk_E3FA] + 0x30) << 2, G_TX_RENDERTILE, 0,
                                    0, 0x0400, 0x0400);

                gDPPipeSync(gfx++);
                gDPSetPrimColor(gfx++, 0, 0, D_80153900[msgCtx->unk_E3F8].r, D_80153900[msgCtx->unk_E3F8].g,
                                D_80153900[msgCtx->unk_E3F8].b, msgCtx->textColor.a);

                gDPLoadTextureBlock_4b(gfx++, ((u32)msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE), G_IM_FMT_I, 96,
                                       48, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                                       G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                gSPTextureRectangle(gfx++, msgCtx->textPosX << 2, R_TEXTBOX_BG_YPOS << 2,
                                    (msgCtx->textPosX + 0x60) << 2, (R_TEXTBOX_BG_YPOS + 0x30) << 2, G_TX_RENDERTILE, 0,
                                    0, 0x0400, 0x0400);

                gDPLoadTextureBlock_4b(gfx++, ((u32)msgCtx->textboxSegment + 0x1900), G_IM_FMT_I, 96, 48, 0,
                                       G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                       G_TX_NOLOD, G_TX_NOLOD);
                gSPTextureRectangle(gfx++, (msgCtx->textPosX + 0x60) << 2, R_TEXTBOX_BG_YPOS << 2,
                                    (msgCtx->textPosX + 0xC0) << 2, (R_TEXTBOX_BG_YPOS + 0x30) << 2, G_TX_RENDERTILE, 0,
                                    0, 0x0400, 0x0400);

                gDPPipeSync(gfx++);
                gDPSetCombineLERP(gfx++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0,
                                  PRIMITIVE, 0);

                msgCtx->textPosX += 32;
                break;
            case MESSAGE_TEXT_SPEED:
                msgCtx->unk_E3EA = msgCtx->msgBufDecoded[++i];
                break;
            case MESSAGE_UNSKIPPABLE:
                msgCtx->textUnskippable = true;
                break;
            case MESSAGE_TWO_CHOICE:
                msgCtx->unk_E3E4 = 0x10;
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->unk_E2FA = msgCtx->textId;
                    msgCtx->stateTimer = 4;
                    msgCtx->choiceIndex = 0;
                    Font_LoadMessageBoxIcon(font, MESSAGE_ICON_ARROW);
                }
                break;
            case MESSAGE_THREE_CHOICE:
                msgCtx->unk_E3E4 = 0x20;
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->unk_E2FA = msgCtx->textId;
                    msgCtx->stateTimer = 4;
                    msgCtx->choiceIndex = 0;
                    Font_LoadMessageBoxIcon(font, MESSAGE_ICON_ARROW);
                }
                break;
            case MESSAGE_END:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->msgMode = MSGMODE_TEXT_DONE;
                    if (msgCtx->unk_E3E4 == 0) {
                        Audio_PlaySoundGeneral(NA_SE_SY_MESSAGE_END, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                               &D_801333E8);
                        Font_LoadMessageBoxIcon(font, MESSAGE_ICON_SQUARE);
                        if (globalCtx->csCtx.state == 0) {
                            Interface_SetDoAction(globalCtx, DO_ACTION_RETURN);
                        }
                    }
                }
                *gfxP = gfx;
                return;
            case MESSAGE_OCARINA:
                if (i + 1 == msgCtx->unk_E3D2) {
                    Message_HandleOcarina(globalCtx);
                    *gfxP = gfx;
                    return;
                }
                break;
            case MESSAGE_FADE:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->msgMode = MSGMODE_TEXT_DONE;
                    msgCtx->unk_E3E4 = 0x60;
                    msgCtx->stateTimer = msgCtx->msgBufDecoded[++i];
                    Font_LoadMessageBoxIcon(font, MESSAGE_ICON_SQUARE);
                    if (globalCtx->csCtx.state == 0) {
                        Interface_SetDoAction(globalCtx, DO_ACTION_RETURN);
                    }
                }
                *gfxP = gfx;
                return;
            case MESSAGE_PERSISTENT:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    Audio_PlaySoundGeneral(0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    msgCtx->msgMode = MSGMODE_TEXT_DONE;
                    msgCtx->unk_E3E4 = 0x40;
                }
                *gfxP = gfx;
                return;
            case MESSAGE_EVENT:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->msgMode = MSGMODE_TEXT_DONE;
                    msgCtx->unk_E3E4 = 0x50;
                    Font_LoadMessageBoxIcon(font, MESSAGE_ICON_TRIANGLE);
                    Audio_PlaySoundGeneral(NA_SE_SY_MESSAGE_END, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                }
                *gfxP = gfx;
                return;
            default:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING && i + 1 == msgCtx->unk_E3D2 &&
                    msgCtx->unk_E3E8 == msgCtx->unk_E3EA) {
                    Audio_PlaySoundGeneral(0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                }
                Message_DrawTextChar(globalCtx, &font->charTexBuf[charTexIdx], &gfx);
                charTexIdx += FONT_CHAR_TEX_SIZE;

                msgCtx->textPosX += (s32)(sFontWidths[character - ' '] * (R_TEXT_CHAR_SCALE / 100.0f));
                break;
        }
    }
    if (msgCtx->unk_E3E8 == 0) {
        msgCtx->unk_E3D2 = i + 1;
        msgCtx->unk_E3E8 = msgCtx->unk_E3EA;
    } else {
        msgCtx->unk_E3E8--;
    }
    *gfxP = gfx;
}

void Message_LoadItemIcon(GlobalContext* globalCtx, u16 itemId, s16 y) {
    MessageContext* msgCtx = &globalCtx->msgCtx;
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;

    if (itemId == ITEM_DUNGEON_MAP) {
        interfaceCtx->mapPalette[30] = 0xFF;
        interfaceCtx->mapPalette[31] = 0xFF;
    }
    if (itemId < ITEM_MEDALLION_FOREST) {
        R_TEXTBOX_ICON_XPOS = R_TEXT_INIT_XPOS - D_80153C40[gSaveContext.language];
        R_TEXTBOX_ICON_YPOS = y + 6;
        R_TEXTBOX_ICON_SIZE = 32;
        DmaMgr_SendRequest1((u32)msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE,
                            (u32)_icon_item_staticSegmentRomStart + (itemId * 0x1000), 0x1000, "../z_message_PAL.c",
                            1473);
        // Item 32-0
        osSyncPrintf("アイテム32-0\n");
    } else {
        R_TEXTBOX_ICON_XPOS = R_TEXT_INIT_XPOS - D_80153C48[gSaveContext.language];
        R_TEXTBOX_ICON_YPOS = y + 10;
        R_TEXTBOX_ICON_SIZE = 24;
        DmaMgr_SendRequest1((u32)msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE,
                            (u32)_icon_item_24_staticSegmentRomStart + (itemId - ITEM_MEDALLION_FOREST) * 0x900, 0x900,
                            "../z_message_PAL.c", 1482);
        // Item 24＝%d (%d) {%d}
        osSyncPrintf("アイテム24＝%d (%d) {%d}\n", itemId, itemId - ITEM_KOKIRI_EMERALD, 84);
    }
    msgCtx->msgBufPos++;
    msgCtx->unk_E3E6 = 1;
}

void Message_Decode(GlobalContext* globalCtx) {
    u8 temp_s2;
    u8 phi_s1;
    u16 phi_s0_3;
    s32 loadChar;
    s32 charTexIdx = 0;
    s16 playerNameLen;
    s16 decodedBufPos = 0;
    s16 numLines = 0;
    s16 i;
    s16 digits[4];
    f32 timeInSeconds;
    MessageContext* msgCtx = &globalCtx->msgCtx;
    Font* font = &globalCtx->msgCtx.font;

    globalCtx->msgCtx.unk_E3E8 = 0;
    globalCtx->msgCtx.textUnskippable = globalCtx->msgCtx.unk_E3EA = globalCtx->msgCtx.unk_E3E8 = 0;
    D_8014B2F0 = 0;

    while (true) {
        phi_s1 = temp_s2 = msgCtx->msgBufDecoded[decodedBufPos] = font->msgBuf[msgCtx->msgBufPos];

        if (temp_s2 == MESSAGE_BOX_BREAK || temp_s2 == MESSAGE_TEXTID || temp_s2 == MESSAGE_BOX_BREAK_DELAYED ||
            temp_s2 == MESSAGE_EVENT || temp_s2 == MESSAGE_END) {
            /*
             *  Textbox decoding ends with any of the above text control codes
             */
            msgCtx->msgMode = MSGMODE_TEXT_DISPLAYING;
            msgCtx->unk_E3D2 = 1;
            R_TEXT_INIT_YPOS = R_TEXTBOX_Y + 8;
            osSyncPrintf("ＪＪ＝%d\n", numLines);
            if (msgCtx->textBoxType != BOX_NONE_BOTTOM) {
                if (numLines == 0) {
                    R_TEXT_INIT_YPOS = (u16)(R_TEXTBOX_Y + 0x1A);
                } else if (numLines == 1) {
                    R_TEXT_INIT_YPOS = (u16)(R_TEXTBOX_Y + 0x14);
                } else if (numLines == 2) {
                    R_TEXT_INIT_YPOS = (u16)(R_TEXTBOX_Y + 0x10);
                }
            }
            if (phi_s1 == 7) {
                osSyncPrintf("NZ_NEXTMSG=%x, %x, %x\n", font->msgBuf[msgCtx->msgBufPos],
                             font->msgBuf[msgCtx->msgBufPos + 1], font->msgBuf[msgCtx->msgBufPos + 2]);
                temp_s2 = msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[msgCtx->msgBufPos + 1];
                msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[msgCtx->msgBufPos + 2];
                phi_s0_3 = temp_s2 << 8;
                sNextTextId = msgCtx->msgBufDecoded[decodedBufPos] | phi_s0_3;
            }
            if (phi_s1 == 0xC) {
                msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[msgCtx->msgBufPos + 1];
                msgCtx->msgBufPos += 2;
            }
            msgCtx->unk_E3D4 = decodedBufPos;
            if (sTextboxSkipped) {
                msgCtx->unk_E3D2 = msgCtx->unk_E3D4;
            }
            break;
        } else if (temp_s2 == MESSAGE_NAME) {
            /*
             *  Substitute the player name control code for the file's player name.
             */
            for (playerNameLen = ARRAY_COUNT(gSaveContext.playerName); playerNameLen > 0; playerNameLen--) {
                if (gSaveContext.playerName[playerNameLen - 1] != 0x3E) {
                    break;
                }
            }
            osSyncPrintf("\n名前 ＝ ");
            for (i = 0; i < playerNameLen; i++) {
                phi_s1 = gSaveContext.playerName[i];
                if (phi_s1 == 0x3E) {
                    phi_s1 = 0x20;
                } else if (phi_s1 == 0x40) {
                    phi_s1 = 0x2E;
                } else if (phi_s1 == 0x3F) {
                    phi_s1 = 0x2D;
                } else if (phi_s1 < 0xA) {
                    phi_s1 += 0;
                    phi_s1 += 0x30;
                } else if (phi_s1 < 0x24) {
                    phi_s1 += 0;
                    phi_s1 += 0x37;
                } else if (phi_s1 < 0x3E) {
                    phi_s1 += 0;
                    phi_s1 += 0x3D;
                }
                if (phi_s1 != ' ') {
                    Font_LoadChar(font, phi_s1 - ' ', charTexIdx);
                    charTexIdx += FONT_CHAR_TEX_SIZE;
                }
                osSyncPrintf("%x ", phi_s1);
                msgCtx->msgBufDecoded[decodedBufPos] = phi_s1;
                decodedBufPos++;
            }
            decodedBufPos--;
        } else if (temp_s2 == MESSAGE_MARATHON_TIME || temp_s2 == MESSAGE_RACE_TIME) {
            /*
             *  Convert the values of the appropriate timer to digits and add the
             *   digits to the decoded buffer in place of the control code.
             */
            osSyncPrintf("\nＥＶＥＮＴタイマー ＝ ");
            digits[0] = digits[1] = digits[2] = 0;
            if (temp_s2 == MESSAGE_RACE_TIME) {
                digits[3] = gSaveContext.timer1Value;
            } else {
                digits[3] = gSaveContext.timer2Value;
            }

            while (digits[3] >= 60) {
                digits[1]++;
                if (digits[1] >= 10) {
                    digits[0]++;
                    digits[1] -= 10;
                }
                digits[3] -= 60;
            }
            while (digits[3] >= 10) {
                digits[2]++;
                digits[3] -= 10;
            }

            for (i = 0; i < 4; i++) {
                Font_LoadChar(font, digits[i] + 0x10, charTexIdx);
                charTexIdx += FONT_CHAR_TEX_SIZE;
                msgCtx->msgBufDecoded[decodedBufPos] = digits[i] + '0';
                decodedBufPos++;
                if (i == 1) {
                    Font_LoadChar(font, 2, charTexIdx);
                    charTexIdx += FONT_CHAR_TEX_SIZE;
                    msgCtx->msgBufDecoded[decodedBufPos] = '"';
                    decodedBufPos++;
                } else if (i == 3) {
                    Font_LoadChar(font, 2, charTexIdx);
                    charTexIdx += FONT_CHAR_TEX_SIZE;
                    msgCtx->msgBufDecoded[decodedBufPos] = '"';
                }
            }
        } else if (temp_s2 == MESSAGE_POINTS) {
            osSyncPrintf("\n流鏑馬スコア ＝ %d\n", gSaveContext.minigameScore);
            digits[0] = digits[1] = digits[2] = 0;
            digits[3] = gSaveContext.minigameScore;

            while (digits[3] >= 1000) {
                digits[0]++;
                digits[3] -= 1000;
            }
            while (digits[3] >= 100) {
                digits[1]++;
                digits[3] -= 100;
            }
            while (digits[3] >= 10) {
                digits[2]++;
                digits[3] -= 10;
            }

            loadChar = false;
            for (i = 0; i < 4; i++) {
                if (i == 3 || digits[i] != 0) {
                    loadChar = true;
                }
                if (loadChar) {
                    Font_LoadChar(font, digits[i] + 0x10, charTexIdx);
                    msgCtx->msgBufDecoded[decodedBufPos] = digits[i] + '0';
                    charTexIdx += FONT_CHAR_TEX_SIZE;
                    decodedBufPos++;
                }
            }
            decodedBufPos--;
        } else if (temp_s2 == MESSAGE_TOKENS) {
            osSyncPrintf("\n金スタ合計数 ＝ %d", gSaveContext.inventory.gsTokens);
            digits[0] = digits[1] = 0;
            digits[2] = gSaveContext.inventory.gsTokens;

            while (digits[2] >= 100) {
                digits[0]++;
                digits[2] -= 100;
            }
            while (digits[2] >= 10) {
                digits[1]++;
                digits[2] -= 10;
            }

            loadChar = false;
            for (i = 0; i < 3; i++) {
                if (i == 2 || digits[i] != 0) {
                    loadChar = true;
                }
                if (loadChar) {
                    Font_LoadChar(font, digits[i] + 0x10, charTexIdx);
                    msgCtx->msgBufDecoded[decodedBufPos] = digits[i] + '0';
                    charTexIdx += FONT_CHAR_TEX_SIZE;
                    osSyncPrintf("%x(%x) ", digits[i] + 0x10, digits[i]);
                    decodedBufPos++;
                }
            }
            decodedBufPos--;
        } else if (temp_s2 == MESSAGE_FISH_INFO) {
            osSyncPrintf("\n釣り堀魚サイズ ＝ ");
            digits[0] = 0;
            digits[1] = gSaveContext.minigameScore;

            while (digits[1] >= 10) {
                digits[0]++;
                digits[1] -= 10;
            }

            for (i = 0; i < 2; i++) {
                if (i == 1 || digits[i] != 0) {
                    Font_LoadChar(font, digits[i] + 0x10, charTexIdx);
                    msgCtx->msgBufDecoded[decodedBufPos] = digits[i] + '0';
                    charTexIdx += FONT_CHAR_TEX_SIZE;
                    osSyncPrintf("%x(%x) ", digits[i] + 0x10, digits[i]);
                    decodedBufPos++;
                }
            }
            decodedBufPos--;
        } else if (temp_s2 == MESSAGE_HIGHSCORE) {
            phi_s0_3 = HIGH_SCORE((u8)font->msgBuf[++msgCtx->msgBufPos]);
            osSyncPrintf("ランキング＝%d\n", font->msgBuf[msgCtx->msgBufPos]);
            if ((font->msgBuf[msgCtx->msgBufPos] & 0xFF) == 2) {
                if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
                    phi_s0_3 &= 0x7F;
                } else {
                    osSyncPrintf("HI_SCORE( kanfont->mbuff.nes_mes_buf[message->rdp] & 0xff000000 ) = %x\n",
                                 HIGH_SCORE(font->msgBufWide[msgCtx->msgBufPos] & 0xFF000000));
                    phi_s0_3 = ((HIGH_SCORE((u8)font->msgBuf[msgCtx->msgBufPos]) & 0xFF000000) >> 0x18) & 0x7F;
                }
                phi_s0_3 = SQ((f32)phi_s0_3) * 0.0036f + 0.5f;
                osSyncPrintf("score=%d\n", phi_s0_3);
            }
            switch (font->msgBuf[msgCtx->msgBufPos] & 0xFF) {
                case HS_HBA:
                case HS_POE_POINTS:
                case HS_FISHING:
                    digits[0] = digits[1] = digits[2] = 0;
                    digits[3] = phi_s0_3;

                    while (digits[3] >= 1000) {
                        digits[0]++;
                        digits[3] -= 1000;
                    }
                    while (digits[3] >= 100) {
                        digits[1]++;
                        digits[3] -= 100;
                    }
                    while (digits[3] >= 10) {
                        digits[2]++;
                        digits[3] -= 10;
                    }
                    if (temp_s2) {}

                    loadChar = false;
                    for (i = 0; i < 4; i++) {
                        if (i == 3 || digits[i] != 0) {
                            loadChar = true;
                        }
                        if (loadChar) {
                            Font_LoadChar(font, digits[i] + 0x10, charTexIdx);
                            msgCtx->msgBufDecoded[decodedBufPos] = digits[i] + '0';
                            charTexIdx += FONT_CHAR_TEX_SIZE;
                            decodedBufPos++;
                        }
                    }
                    decodedBufPos--;
                    break;
                case HS_UNK_05:
                    break;
                case HS_HORSE_RACE:
                case HS_MARATHON:
                case HS_DAMPE_RACE:
                    digits[0] = digits[1] = digits[2] = 0;
                    digits[3] = phi_s0_3;

                    while (digits[3] >= 60) {
                        digits[1]++;
                        if (digits[1] >= 10) {
                            digits[0]++;
                            digits[1] -= 10;
                        }
                        digits[3] -= 60;
                    }
                    while (digits[3] >= 10) {
                        digits[2]++;
                        digits[3] -= 10;
                    }

                    for (i = 0; i < 4; i++) {
                        Font_LoadChar(font, digits[i] + 0x10, charTexIdx);
                        charTexIdx += FONT_CHAR_TEX_SIZE;
                        msgCtx->msgBufDecoded[decodedBufPos] = digits[i] + '0';
                        decodedBufPos++;
                        if (i == 1) {
                            Font_LoadChar(font, 2, charTexIdx);
                            charTexIdx += FONT_CHAR_TEX_SIZE;
                            msgCtx->msgBufDecoded[decodedBufPos] = '"';
                            decodedBufPos++;
                        } else if (i == 3) {
                            Font_LoadChar(font, 2, charTexIdx);
                            charTexIdx += FONT_CHAR_TEX_SIZE;
                            msgCtx->msgBufDecoded[decodedBufPos] = '"';
                        }
                    }
                    break;
            }
        } else if (temp_s2 == MESSAGE_TIME) {
            osSyncPrintf("\nゼルダ時間 ＝ ");
            digits[0] = 0;
            timeInSeconds = gSaveContext.dayTime * (24.0f * 60.0f / 0x10000);

            digits[1] = timeInSeconds / 60.0f;
            while (digits[1] >= 10) {
                digits[0]++;
                digits[1] -= 10;
            }
            digits[2] = 0;
            digits[3] = (s16)timeInSeconds % 60;
            while (digits[3] >= 10) {
                digits[2]++;
                digits[3] -= 10;
            }

            for (i = 0; i < 4; i++) {
                Font_LoadChar(font, digits[i] + 0x10, charTexIdx);
                charTexIdx += FONT_CHAR_TEX_SIZE;
                msgCtx->msgBufDecoded[decodedBufPos] = digits[i] + '0';
                decodedBufPos++;
                if (i == 1) {
                    Font_LoadChar(font, 0x1A, charTexIdx);
                    charTexIdx += FONT_CHAR_TEX_SIZE;
                    msgCtx->msgBufDecoded[decodedBufPos] = ':';
                    decodedBufPos++;
                }
            }
            decodedBufPos--;
        } else if (temp_s2 == MESSAGE_ITEM_ICON) {
            msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[msgCtx->msgBufPos + 1];
            osSyncPrintf("ITEM_NO=(%d) (%d)\n", msgCtx->msgBufDecoded[decodedBufPos],
                         font->msgBuf[msgCtx->msgBufPos + 1]);
            Message_LoadItemIcon(globalCtx, font->msgBuf[msgCtx->msgBufPos + 1], R_TEXTBOX_Y + 10);
        } else if (temp_s2 == MESSAGE_BACKGROUND) {
            msgCtx->unk_E3F6 = font->msgBuf[msgCtx->msgBufPos + 1] * 2;
            msgCtx->unk_E3F8 = (font->msgBuf[msgCtx->msgBufPos + 2] & 0xF0) >> 4;
            msgCtx->unk_E3F9 = font->msgBuf[msgCtx->msgBufPos + 2] & 0xF;
            msgCtx->unk_E3FA = (font->msgBuf[msgCtx->msgBufPos + 3] & 0xF0) >> 4;
            msgCtx->unk_E3FB = font->msgBuf[msgCtx->msgBufPos + 3] & 0xF;
            DmaMgr_SendRequest1((u32)msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE,
                                (u32)_message_texture_staticSegmentRomStart + (msgCtx->unk_E3F6 * 0x900), 0x900,
                                "../z_message_PAL.c", 1830);
            DmaMgr_SendRequest1((u32)msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE + 0x900,
                                (u32)_message_texture_staticSegmentRomStart + (msgCtx->unk_E3F6 * 0x900) + 0x900, 0x900,
                                "../z_message_PAL.c", 1834);
            msgCtx->msgBufPos += 3;
            R_TEXTBOX_BG_YPOS = R_TEXTBOX_Y + 8;
            numLines = 2;
            R_TEXT_INIT_XPOS = 50;
        } else if (temp_s2 == MESSAGE_COLOR) {
            msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[++msgCtx->msgBufPos];
        } else if (temp_s2 == MESSAGE_NEWLINE) {
            numLines++;
        } else if (temp_s2 != MESSAGE_QUICKTEXT_ENABLE && temp_s2 != MESSAGE_QUICKTEXT_DISABLE &&
                   temp_s2 != MESSAGE_AWAIT_BUTTON_PRESS && temp_s2 != MESSAGE_OCARINA &&
                   temp_s2 != MESSAGE_PERSISTENT && temp_s2 != MESSAGE_UNSKIPPABLE) {
            if (temp_s2 == MESSAGE_FADE) {
                D_8014B2F0 = 1;
                osSyncPrintf("NZ_TIMER_END (key_off_flag=%d)\n", D_8014B2F0);
                msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[++msgCtx->msgBufPos];
            } else if (temp_s2 == MESSAGE_FADE2) {
                D_8014B2F0 = 1;
                osSyncPrintf("NZ_BGM (key_off_flag=%d)\n", D_8014B2F0);
                msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[++msgCtx->msgBufPos];
                msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[++msgCtx->msgBufPos];
            } else if (temp_s2 == MESSAGE_SHIFT || temp_s2 == MESSAGE_TEXT_SPEED) {
                msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[++msgCtx->msgBufPos] & 0xFF;
            } else if (temp_s2 == MESSAGE_SFX) {
                msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[++msgCtx->msgBufPos];
                msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[++msgCtx->msgBufPos];
            } else if (temp_s2 == MESSAGE_TWO_CHOICE) {
                msgCtx->unk_E3E6 = 2;
            } else if (temp_s2 == MESSAGE_THREE_CHOICE) {
                msgCtx->unk_E3E6 = 3;
            } else if (temp_s2 != ' ') {
                Font_LoadChar(font, temp_s2 - ' ', charTexIdx);
                charTexIdx += FONT_CHAR_TEX_SIZE;
            }
        }
        decodedBufPos++;
        msgCtx->msgBufPos++;
    }
}

void Message_OpenText(GlobalContext* globalCtx, u16 textId) {
    static s16 messageStaticIndices[] = {
        0,
        1,
        3,
        2,
    };

    MessageContext* msgCtx = &globalCtx->msgCtx;
    Font* font = &msgCtx->font;
    s16 textBoxType;

    if (msgCtx->msgMode == MSGMODE_UNK_00) {
        gSaveContext.unk_13EE = gSaveContext.unk_13EA;
    }
    if (YREG(15) == 0x10) {
        Interface_ChangeAlpha(5);
    }

    sMessageHasSetSfx = D_8014B2F4 = sTextboxSkipped = sTextIsCredits = 0;

    if (textId >= 0x0500 && textId < 0x0600) { // text ids 0500 to 0600 are reserved for credits
        sTextIsCredits = true;
        R_TEXT_CHAR_SCALE = 85;
        R_TEXT_LINE_SPACING = 6;
        R_TEXT_INIT_XPOS = 20;
        YREG(1) = 0x30;
    } else {
        R_TEXT_CHAR_SCALE = 75;
        R_TEXT_LINE_SPACING = 12;
        R_TEXT_INIT_XPOS = 65;
    }
    if (textId == 0xC2 || textId == 0xFA) { // C2 = One piece of heart , FA = WINNER One piece of heart
        // Increments text id based on piece of heart count, assumes the piece of heart text is all
        // in order and that you don't have more than the intended amount of heart pieces.
        textId += (gSaveContext.inventory.questItems & 0xF0000000 & 0xF0000000) >> 0x1C;
    } else if (msgCtx->textId == 0xC && CHECK_OWNED_EQUIP(EQUIP_SWORD, 2)) {
        textId = 0xB; // Traded Giant's Knife for Biggoron Sword
    } else if (msgCtx->textId == 0xB4 && (gSaveContext.eventChkInf[9] & 0x40)) {
        textId = 0xB5; // Destroyed Gold Skulltula
    }
    // Ocarina Staff + Dialog
    if (textId == 0x4077 || // Pierre?
        textId == 0x407A || // Pierre?
        textId == 0x2061 || // Learning Epona's Song
        textId == 0x5035 || // Guru-Guru in Windmill
        textId == 0x40AC) { // Ocarina Frog Minigame
        Interface_ChangeAlpha(1);
    }
    msgCtx->textId = textId;

    if (textId == 0x2030) { // Talking to Ingo as adult in Lon Lon Ranch for the first time before freeing Epona
        osSyncPrintf(VT_FGCOL(YELLOW));
        osSyncPrintf("？？？？？？？？？？？？？？？？  z_message.c  ？？？？？？？？？？？？？？？？？？\n");
        osSyncPrintf(VT_RST);
        gSaveContext.eventInf[0] = gSaveContext.eventInf[1] = gSaveContext.eventInf[2] = gSaveContext.eventInf[3] = 0;
    }

    if (sTextIsCredits) {
        Message_FindCreditsMessage(globalCtx, textId);
        msgCtx->msgLength = font->msgLength;
        DmaMgr_SendRequest1((u32)font->msgBuf, (u32)(_staff_message_data_staticSegmentRomStart + font->msgOffset),
                            font->msgLength, "../z_message_PAL.c", 1954);
    } else {
        if (gSaveContext.language == LANGUAGE_ENG) {
            Message_FindMessage(globalCtx, textId);
            msgCtx->msgLength = font->msgLength;
            DmaMgr_SendRequest1((u32)font->msgBuf, (u32)(_nes_message_data_staticSegmentRomStart + font->msgOffset),
                                font->msgLength, "../z_message_PAL.c", 1966);
        } else if (gSaveContext.language == LANGUAGE_GER) {
            Message_FindMessage(globalCtx, textId);
            msgCtx->msgLength = font->msgLength;
            DmaMgr_SendRequest1((u32)font->msgBuf, (u32)(_ger_message_data_staticSegmentRomStart + font->msgOffset),
                                font->msgLength, "../z_message_PAL.c", 1978);
        } else {
            Message_FindMessage(globalCtx, textId);
            msgCtx->msgLength = font->msgLength;
            DmaMgr_SendRequest1((u32)font->msgBuf, (u32)(_fra_message_data_staticSegmentRomStart + font->msgOffset),
                                font->msgLength, "../z_message_PAL.c", 1990);
        }
    }
    msgCtx->textBoxProperties = font->msgProperties;
    msgCtx->textBoxType = msgCtx->textBoxProperties >> 4;
    msgCtx->textBoxPos = msgCtx->textBoxProperties & 0xF;
    textBoxType = msgCtx->textBoxType;
    // Text Box Type＝%d
    osSyncPrintf("吹き出し種類＝%d\n", msgCtx->textBoxType);
    if (textBoxType < BOX_NONE_BOTTOM) {
        DmaMgr_SendRequest1(
            msgCtx->textboxSegment,
            (u32)(_message_staticSegmentRomStart + (messageStaticIndices[textBoxType] * MESSAGE_STATIC_TEX_SIZE)),
            MESSAGE_STATIC_TEX_SIZE, "../z_message_PAL.c", 2006);
        if (textBoxType == BOX_BLACK) {
            msgCtx->textboxColorRed = 0;
            msgCtx->textboxColorGreen = 0;
            msgCtx->textboxColorBlue = 0;
        } else if (textBoxType == BOX_WOODEN) {
            msgCtx->textboxColorRed = 70;
            msgCtx->textboxColorGreen = 50;
            msgCtx->textboxColorBlue = 30;
        } else if (textBoxType == BOX_BLUE) {
            msgCtx->textboxColorRed = 0;
            msgCtx->textboxColorGreen = 10;
            msgCtx->textboxColorBlue = 50;
        } else {
            msgCtx->textboxColorRed = 255;
            msgCtx->textboxColorGreen = 0;
            msgCtx->textboxColorBlue = 0;
        }
        if (textBoxType == BOX_WOODEN) {
            msgCtx->textboxColorAlphaTarget = 230;
        } else if (textBoxType == BOX_OCARINA) {
            msgCtx->textboxColorAlphaTarget = 180;
        } else {
            msgCtx->textboxColorAlphaTarget = 170;
        }
        msgCtx->textboxColorAlphaCurrent = 0;
    }
    msgCtx->unk_E3E6 = msgCtx->textUnskippable = msgCtx->unk_E3E4 = 0;
    msgCtx->msgBufPos = msgCtx->unk_E3D0 = msgCtx->unk_E3D2 = 0;
}

void Message_StartTextbox(GlobalContext* globalCtx, u16 textId, Actor* actor) {
    MessageContext* msgCtx = &globalCtx->msgCtx;

    osSyncPrintf(VT_FGCOL(BLUE));
    // Message＝%x(%d)
    osSyncPrintf("めっせーじ＝%x(%d)\n", textId, actor);
    osSyncPrintf(VT_RST);

    msgCtx->unk_E3F0 = 0xFFFF;
    Message_OpenText(globalCtx, textId);
    msgCtx->talkActor = actor;
    msgCtx->msgMode = MSGMODE_UNK_01;
    msgCtx->stateTimer = 0;
    msgCtx->unk_E3E8 = 0;
    globalCtx->msgCtx.unk_E3EE = 0;
}

void Message_ContinueTextbox(GlobalContext* globalCtx, u16 textId) {
    MessageContext* msgCtx = &globalCtx->msgCtx;

    osSyncPrintf(VT_FGCOL(GREEN));
    // Message＝%x message->msg_data
    osSyncPrintf("めっせーじ＝%x  message->msg_data\n", textId, msgCtx->msgLength);
    osSyncPrintf(VT_RST);

    msgCtx->msgLength = 0;
    Message_OpenText(globalCtx, textId);
    msgCtx->msgMode = MSGMODE_UNK_00;
    msgCtx->textboxColorAlphaCurrent = msgCtx->textboxColorAlphaTarget;
    msgCtx->msgMode = MSGMODE_UNK_05;
    msgCtx->stateTimer = 3;
    msgCtx->unk_E3E4 = msgCtx->msgBufPos = msgCtx->unk_E3D0 = msgCtx->unk_E3D2 = msgCtx->unk_E3E8 = 0;
    msgCtx->textColor.a = 0xFF;

    if (YREG(31) == 0 && globalCtx->interfaceCtx.unk_1FA == 0) {
        Interface_SetDoAction(globalCtx, DO_ACTION_NEXT);
    }
    msgCtx->textboxColorAlphaCurrent = msgCtx->textboxColorAlphaTarget;
}

void Message_StartOcarina(GlobalContext* globalCtx, u16 ocarinaActionId) {
    static u16 ocarinaBitFlags[] = {
        (1 << 0), (1 << 1), (1 << 2), (1 << 3), (1 << 4), (1 << 5), (1 << 8), (1 << 7),
    };

    MessageContext* msgCtx = &globalCtx->msgCtx;
    s32 textId;
    s16 j;
    s16 i;
    s16 sp4A;
    s32 phi_s0_3;

    osSyncPrintf(VT_FGCOL(GREEN));

    for (i = sOcarinaSongBitFlags = 0; i < (QUEST_KOKIRI_EMERALD - QUEST_SONG_MINUET); i++) {
        if (CHECK_QUEST_ITEM(QUEST_SONG_MINUET + i)) {
            osSyncPrintf("ocarina_check_bit[%d]=%x\n", i, ocarinaBitFlags[i]);
            sOcarinaSongBitFlags |= ocarinaBitFlags[i];
        }
    }
    if (gSaveContext.scarecrowSpawnSongSet) {
        sOcarinaSongBitFlags |= 0x1000;
    }
    osSyncPrintf("ocarina_bit = %x\n", sOcarinaSongBitFlags);
    osSyncPrintf(VT_RST);

    sHasSunsSong = CHECK_QUEST_ITEM(QUEST_SONG_SUN);
    msgCtx->ocarinaStaff = func_800EE3C8();
    msgCtx->ocarinaStaff->pos = sOcarinaNoteBufPos = 0;
    sOcarinaNoteBufLen = 0;
    func_801069B0();
    msgCtx->unk_E410 = 0xFF;
    sLastPlayedSong = msgCtx->unk_E3F2 = msgCtx->unk_E410;

    // ☆☆☆☆☆ Ocarina Number＝%d(%d) ☆☆☆☆☆
    osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ オカリナ番号＝%d(%d) ☆☆☆☆☆\n" VT_RST, ocarinaActionId, 2);
    sp4A = 0;
    if (ocarinaActionId >= 0x893) {
        Message_OpenText(globalCtx, ocarinaActionId); // You played the [song name]
        textId = ocarinaActionId + 0x86E;
    } else if (ocarinaActionId == 0x2E) {
        msgCtx->unk_E3F0 = ocarinaActionId;
        Message_OpenText(globalCtx, 0x86D); // Play using [A] and [C].
        textId = ocarinaActionId + 0x86E;
    } else if (ocarinaActionId == OCARINA_ACTION_FREE_PLAY || ocarinaActionId >= 0x22) {
        osSyncPrintf("ocarina_set 000000000000000000  = %d\n", ocarinaActionId);
        msgCtx->unk_E3F0 = ocarinaActionId;
        if (ocarinaActionId >= 0x22 && ocarinaActionId < 0x28) {
            Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
        if (ocarinaActionId == 0x2D) {
            Message_OpenText(globalCtx, 0x86F); // Ocarina
            textId = ocarinaActionId + 0x86E;
        } else {
            Message_OpenText(globalCtx, 0x86E); // Play using [A] and [C]; [B] to Stop.
            textId = ocarinaActionId + 0x86E;
        }
    } else {
        msgCtx->unk_E3F0 = ocarinaActionId;
        sp4A = 1;
        if (ocarinaActionId >= OCARINA_ACTION_PLAYBACK_MINUET) {
            osSyncPrintf("222222222\n");
            Message_OpenText(globalCtx, 0x86D); // Play using [A] and [C].
            textId = ocarinaActionId + 0x86E;
        } else {
            osSyncPrintf("333333333\n");
            textId = ocarinaActionId + 0x86E;
            Message_OpenText(globalCtx, textId); // Play using [A] and [C]; [B] to Stop.
        }
    }
    msgCtx->talkActor = NULL;
    // Ocarina Mode
    osSyncPrintf("オカリナモード = %d  (%x)\n", msgCtx->unk_E3F0, textId);
    msgCtx->unk_E3E8 = 0;
    globalCtx->msgCtx.unk_E3EE = 0;
    R_TEXTBOX_X = 34;
    R_TEXTBOX_Y = 142;
    R_TEXTBOX_TEXWIDTH = 512;
    R_TEXTBOX_TEXHEIGHT = 512;
    R_TEXTBOX_WIDTH = 256;
    R_TEXTBOX_HEIGHT = 64;
    msgCtx->stateTimer = 0;
    if (YREG(12) != 0) {
        msgCtx->msgMode = MSGMODE_UNK_04;
    } else {
        msgCtx->stateTimer = 2;
        msgCtx->msgMode = MSGMODE_UNK_05;
    }
    msgCtx->textboxColorAlphaCurrent = msgCtx->textboxColorAlphaTarget;
    if (sp4A == 0) {
        Interface_LoadActionLabelB(globalCtx, DO_ACTION_STOP);
        sp4A = gSaveContext.unk_13EA;
        Interface_ChangeAlpha(0xA);
        gSaveContext.unk_13EA = sp4A;
    }
    // Music Performance Start
    osSyncPrintf("演奏開始\n");
    if (ocarinaActionId == OCARINA_ACTION_FREE_PLAY || ocarinaActionId == 0x30) {
        msgCtx->msgMode = MSGMODE_UNK_09;
        msgCtx->textBoxType = 0x63;
    } else if (ocarinaActionId == 0x2F) {
        msgCtx->msgMode = MSGMODE_UNK_31;
        msgCtx->textBoxType = BOX_BLUE;
    } else if (ocarinaActionId == 0x2E) {
        Interface_ChangeAlpha(1);
        Message_Decode(globalCtx);
        msgCtx->msgMode = MSGMODE_UNK_29;
    } else if (ocarinaActionId == 0x2B) {
        // ?????Recording Playback / Recording Playback / Recording Playback / Recording Playback ->
        osSyncPrintf("?????録音再生 録音再生 録音再生 録音再生  -> ");
        func_800ED858(1);
        func_800ED858(1);
        msgCtx->ocarinaStaff = Audio_OcaGetDisplayStaff();
        sOcarinaNoteBufPos = sOcarinaNoteBufLen = 0;
        msgCtx->ocarinaStaff->pos = sOcarinaNoteBufPos;
        func_801069B0();
        msgCtx->stateTimer = 3;
        msgCtx->msgMode = MSGMODE_UNK_23;
        func_800ED93C(0xF, 1);
        gSaveContext.unk_13EA = 0;
        Interface_ChangeAlpha(1);
    }
    for (phi_s0_3 = 0, j = 0; j < 48; j++, phi_s0_3 += 0x80) {
        func_8006EE50(&globalCtx->msgCtx.font, 0x8140, phi_s0_3);
    }
}

void func_8010BD58(GlobalContext* globalCtx, u16 ocarinaActionId) {
    globalCtx->msgCtx.unk_E40E = 0;
    Message_StartOcarina(globalCtx, ocarinaActionId);
}

void func_8010BD88(GlobalContext* globalCtx, u16 ocarinaActionId) {
    globalCtx->msgCtx.unk_E40E = 1;
    Message_StartOcarina(globalCtx, ocarinaActionId);
}

u8 Message_GetState(MessageContext* msgCtx) {
    u8 state;

    if (msgCtx->msgLength == 0) {
        state = TEXT_STATE_NONE;
    } else if (msgCtx->msgMode == MSGMODE_TEXT_DONE) {
        if (msgCtx->unk_E3E4 == 0x30) {
            state = TEXT_STATE_1;
        } else if (msgCtx->unk_E3E4 == 0x10 || msgCtx->unk_E3E4 == 0x20) { // choice text
            state = TEXT_STATE_CHOICE;
        } else if (msgCtx->unk_E3E4 == 0x50 || msgCtx->unk_E3E4 == 0x40) { // event or persistent
            state = TEXT_STATE_EVENT;
        } else if (msgCtx->unk_E3E4 == 0x60) {
            state = TEXT_STATE_3;
        } else {
            state = TEXT_STATE_DONE;
        }
    } else if (msgCtx->msgMode == MSGMODE_UNK_34) {
        state = TEXT_STATE_10;
    } else if (msgCtx->msgMode == MSGMODE_UNK_1A) {
        state = TEXT_STATE_7;
    } else if (msgCtx->unk_E3EE == 3) { // ocarina related
        state = TEXT_STATE_8;
    } else if (msgCtx->msgMode == MSGMODE_UNK_1F) {
        state = TEXT_STATE_9;
    } else if (msgCtx->msgMode == MSGMODE_TEXT_CLOSING && msgCtx->stateTimer == 1) {
        state = TEXT_STATE_2;
    } else {
        state = TEXT_STATE_3;
    }
    return state;
}

void Message_DrawTextBox(GlobalContext* globalCtx, Gfx** p) {
    MessageContext* msgCtx = &globalCtx->msgCtx;
    Gfx* gfx = *p;

    gDPPipeSync(gfx++);
    gDPSetPrimColor(gfx++, 0, 0, msgCtx->textboxColorRed, msgCtx->textboxColorGreen, msgCtx->textboxColorBlue,
                    msgCtx->textboxColorAlphaCurrent);

    if (!(msgCtx->textBoxType) || (msgCtx->textBoxType == BOX_BLUE)) {
        gDPLoadTextureBlock_4b(gfx++, msgCtx->textboxSegment, G_IM_FMT_I, 128, 64, 0, G_TX_MIRROR, G_TX_NOMIRROR, 7, 0,
                               G_TX_NOLOD, G_TX_NOLOD);
    } else {
        if (msgCtx->textBoxType == BOX_OCARINA) {
            gDPSetEnvColor(gfx++, 0, 0, 0, 255);
        } else {
            gDPSetEnvColor(gfx++, 50, 20, 0, 255);
        }

        gDPLoadTextureBlock_4b(gfx++, msgCtx->textboxSegment, G_IM_FMT_IA, 128, 64, 0, G_TX_MIRROR, G_TX_MIRROR, 7, 0,
                               G_TX_NOLOD, G_TX_NOLOD);
    }

    gSPTextureRectangle(gfx++, R_TEXTBOX_X << 2, R_TEXTBOX_Y << 2, (R_TEXTBOX_X + R_TEXTBOX_WIDTH) << 2,
                        (R_TEXTBOX_Y + R_TEXTBOX_HEIGHT) << 2, G_TX_RENDERTILE, 0, 0, R_TEXTBOX_TEXWIDTH << 1,
                        R_TEXTBOX_TEXHEIGHT << 1);

    // Draw Treble Clef
    if (msgCtx->textBoxType == BOX_OCARINA) {
        gDPPipeSync(gfx++);
        gDPSetCombineLERP(gfx++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE,
                          0);
        gDPSetPrimColor(gfx++, 0, 0, 255, 100, 0, 255);
        gDPLoadTextureBlock_4b(gfx++, gOcarinaTrebleClefTex, G_IM_FMT_I, 16, 32, 0, G_TX_MIRROR, G_TX_MIRROR,
                               G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSPTextureRectangle(gfx++, R_TEXTBOX_CLEF_XPOS << 2, R_TEXTBOX_CLEF_YPOS << 2, (R_TEXTBOX_CLEF_XPOS + 16) << 2,
                            (R_TEXTBOX_CLEF_YPOS + 32) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);
    }

    *p = gfx;
}

void Message_SetView(View* view) {
    SET_FULLSCREEN_VIEWPORT(view);
    func_800AB2C4(view);
}

s16 D_80153C68[] = {
    0x0040, 0x0200, 0x0400, 0x0800, 0x1000, 0x0000,
};

// Message_DrawMain ?
#ifdef NON_MATCHING
// regalloc differences in a/v/low t registers
void func_8010C39C(GlobalContext* globalCtx, Gfx** p) {
    // oceff actor ids
    static s16 sOcarinaEffectActorIds[] = {
        ACTOR_OCEFF_WIPE3, ACTOR_OCEFF_WIPE2, ACTOR_OCEFF_WIPE,  ACTOR_OCEFF_SPOT,
        ACTOR_OCEFF_WIPE,  ACTOR_OCEFF_STORM, ACTOR_OCEFF_WIPE4,
    };
    // oceff actor params
    static s16 sOcarinaEffectActorParams[] = { 0x0000, 0x0000, 0x0000, 0x0000, 0x0001, 0x0000, 0x0000 };
    // Ocarina notes textures in parameter_static, A C-Down C-Right C-Left C-Up
    static u64* sOcarinaNoteTextures[] = {
        0x02002940, 0x02002A40, 0x02002B40, 0x02002C40, 0x02002D40,
    };
    static Color_RGB_s16 D_80153CA8[] = {
        { 0x0050, 0x00FF, 0x0096 },
        { 0x0064, 0x00FF, 0x00C8 },
    };
    static Color_RGB_s16 D_80153CB4[] = {
        { 0x000A, 0x000A, 0x000A },
        { 0x0032, 0x00FF, 0x0032 },
    };
    static Color_RGB_s16 D_80153CC0[] = {
        { 0x00FF, 0x00FF, 0x0032 },
        { 0x00FF, 0x00FF, 0x00B4 },
    };
    static Color_RGB_s16 D_80153CCC[] = {
        { 0x000A, 0x000A, 0x000A },
        { 0x006E, 0x006E, 0x0032 },
    };
    static s16 D_80153CD8 = 0x000C;
    static s16 D_80153CDC = 0x0001;
    static s16 D_80153CE0[] = {
        0x0034, 0x0033, 0x0035, 0x0036, 0x0037, 0x0025, 0x0044, 0x0045, 0x0046, 0x0047, 0x0048, 0x0049,
    };
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    MessageContext* msgCtx = &globalCtx->msgCtx;
    u16 phi_v0;
    Player* player = GET_PLAYER(globalCtx);
    s16 temp;
    u16 phi_a1;
    Gfx* gfx = *p;
    s16 r;
    s16 g;
    s16 b;
    u16 phi_a3;
    u8 temp2;
    u16 pad;
    u16 phi_a2;

    gSPSegment(gfx++, 0x02, globalCtx->interfaceCtx.parameterSegment);
    gSPSegment(gfx++, 0x07, msgCtx->textboxSegment);

    if (msgCtx->msgLength == 0) {
        goto end;
    }

    if (msgCtx->unk_E3F0 != 0x2F && msgCtx->msgMode != MSGMODE_UNK_17 && msgCtx->msgMode >= MSGMODE_UNK_02 &&
        msgCtx->msgMode < MSGMODE_TEXT_CLOSING && msgCtx->textBoxType < BOX_NONE_BOTTOM) {
        Message_SetView(&msgCtx->view);
        func_8009457C(&gfx);
        Message_DrawTextBox(globalCtx, &gfx);
    }

    func_8009457C(&gfx);

    gDPSetAlphaCompare(gfx++, G_AC_NONE);
    gDPSetCombineLERP(gfx++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0);

    switch (msgCtx->msgMode) {
        case MSGMODE_UNK_01:
        case MSGMODE_UNK_02:
        case MSGMODE_UNK_03:
        case MSGMODE_UNK_04:
            break;
        case MSGMODE_UNK_05:
            if (msgCtx->stateTimer == 1) {
                for (phi_a2 = 0, phi_a3 = 0; phi_a3 < 48; phi_a3++, phi_a2 += 0x80) {
                    func_8006EE50(&globalCtx->msgCtx.font, 0x8140, phi_a2);
                }
                Message_DrawText(globalCtx, &gfx);
            }
            break;
        case MSGMODE_TEXT_DISPLAYING:
        case MSGMODE_UNK_08:
            Message_DrawText(globalCtx, &gfx);
            break;
        case MSGMODE_UNK_07:
        case MSGMODE_UNK_34:
            Message_DrawText(globalCtx, &gfx);
            Message_DrawTextboxEndIcon(globalCtx, &gfx, R_TEXTBOX_END_XPOS, R_TEXTBOX_END_YPOS);
            break;
        case MSGMODE_UNK_09:
        case MSGMODE_UNK_0A:
        case MSGMODE_UNK_0B:
            func_800ED858(1);
            msgCtx->ocarinaStaff = func_800EE3D4();
            msgCtx->ocarinaStaff->pos = sOcarinaNoteBufPos = 0;
            globalCtx->msgCtx.unk_E3EE = 1;
            func_801069B0();
            D_80153CD8 = 3;
            D_80153CDC = 1;
            if (msgCtx->msgMode == MSGMODE_UNK_09) {
                if (msgCtx->unk_E3F0 == 0 || msgCtx->unk_E3F0 == 1 || msgCtx->unk_E3F0 == 0x2C ||
                    msgCtx->unk_E3F0 == 0x30 || msgCtx->unk_E3F0 >= 0x22) {
                    if (msgCtx->unk_E3F0 == 1 || msgCtx->unk_E3F0 == 0x30) {
                        func_800ECC04(sOcarinaSongBitFlags + 0xC000);
                    } else {
                        // On Stage Performance
                        osSyncPrintf("台上演奏\n");
                        func_800ECC04(sOcarinaSongBitFlags);
                    }
                } else {
                    osSyncPrintf("Na_StartOcarinaSinglePlayCheck2( message->ocarina_no );\n");
                    func_800ECC04((1 << msgCtx->unk_E3F0) + 0x8000);
                }
                msgCtx->msgMode = MSGMODE_UNK_0C;
            } else if (msgCtx->msgMode == MSGMODE_UNK_0A) {
                msgCtx->stateTimer = 0x14;
                msgCtx->msgMode = MSGMODE_UNK_18;
            } else {
                func_800ECC04((1 << (msgCtx->unk_E3F0 + 0x11)) + 0x8000);
                // Performance Check
                osSyncPrintf("演奏チェック=%d\n", msgCtx->unk_E3F0 - 0xF);
                msgCtx->msgMode = MSGMODE_UNK_1B;
            }
            if (msgCtx->unk_E3F0 != 1 && msgCtx->unk_E3F0 != 0x30) {
                Message_DrawText(globalCtx, &gfx);
            }
            break;
        case MSGMODE_UNK_0C:
            msgCtx->ocarinaStaff = func_800EE3D4();
            if (msgCtx->ocarinaStaff->pos) { // lack of != 0 gives better codegen
                osSyncPrintf("locate=%d  onpu_pt=%d\n", msgCtx->ocarinaStaff->pos, sOcarinaNoteBufPos);
                if (msgCtx->ocarinaStaff->pos == 1 && sOcarinaNoteBufPos == 8) {
                    sOcarinaNoteBufPos = 0;
                }
                if (sOcarinaNoteBufPos + 1 == msgCtx->ocarinaStaff->pos) {
                    msgCtx->unk_E410 = sOcarinaNoteBuf[msgCtx->ocarinaStaff->pos - 1] = msgCtx->ocarinaStaff->noteIdx;
                    sOcarinaNoteBuf[msgCtx->ocarinaStaff->pos] = 0xFF;
                    sOcarinaNoteBufPos++;
                }
            }
            msgCtx->unk_E3EC = msgCtx->ocarinaStaff->state;
            if (msgCtx->ocarinaStaff->state < OCARINA_SONG_MEMORY_GAME) {
                if (msgCtx->ocarinaStaff->state == OCARINA_SONG_SCARECROW ||
                    CHECK_QUEST_ITEM(QUEST_SONG_MINUET + D_8015396C[msgCtx->ocarinaStaff->state])) {
                    sLastPlayedSong = msgCtx->unk_E3F2 = msgCtx->unk_E3EC = msgCtx->ocarinaStaff->state;
                    msgCtx->msgMode = MSGMODE_UNK_0D;
                    msgCtx->stateTimer = 20;
                    if (msgCtx->unk_E3F0 == 0x30) {
                        if (msgCtx->ocarinaStaff->state < OCARINA_SONG_SARIAS ||
                            msgCtx->ocarinaStaff->state == OCARINA_SONG_SCARECROW) {
                            func_800ED858(0);
                            Audio_PlaySoundGeneral(NA_SE_SY_OCARINA_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                                   &D_801333E8);
                            msgCtx->msgMode = MSGMODE_UNK_09;
                        } else {
                            // Ocarina_Flog Correct Example Performance
                            osSyncPrintf("Ocarina_Flog 正解模範演奏=%x\n", msgCtx->unk_E3EC);
                            Message_ContinueTextbox(globalCtx, 0x86F); // Ocarina
                            msgCtx->msgMode = MSGMODE_UNK_11;
                            msgCtx->textBoxType = BOX_OCARINA;
                            msgCtx->stateTimer = 10;
                            Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                                   &D_801333E8);
                            Interface_ChangeAlpha(1);
                        }
                    } else if (msgCtx->unk_E3F0 == 0x28) {
                        if (msgCtx->ocarinaStaff->state < OCARINA_SONG_SCARECROW) {
                            func_800ED858(0);
                            Audio_PlaySoundGeneral(NA_SE_SY_OCARINA_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                                   &D_801333E8);
                            msgCtx->stateTimer = 10;
                            msgCtx->msgMode = MSGMODE_UNK_0E;
                        } else {
                            // Ocarina_Flog Correct Example Performance
                            osSyncPrintf("Ocarina_Flog 正解模範演奏=%x\n", msgCtx->unk_E3EC);
                            Message_ContinueTextbox(globalCtx, 0x86F); // Ocarina
                            msgCtx->msgMode = MSGMODE_UNK_11;
                            msgCtx->textBoxType = BOX_OCARINA;
                            msgCtx->stateTimer = 10;
                            Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                                   &D_801333E8);
                            Interface_ChangeAlpha(1);
                        }
                    } else if (msgCtx->unk_E3F0 == 1) {
                        // Ocarina_Free Correct Example Performance
                        osSyncPrintf("Ocarina_Free 正解模範演奏=%x\n", msgCtx->unk_E3EC);
                        Message_ContinueTextbox(globalCtx, 0x86F); // Ocarina
                        msgCtx->msgMode = MSGMODE_UNK_11;
                        msgCtx->textBoxType = BOX_OCARINA;
                        msgCtx->stateTimer = 10;
                        Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                               &D_801333E8);
                    } else {
                        Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                               &D_801333E8);
                    }
                    Interface_ChangeAlpha(1);
                } else {
                    func_800ED858(0);
                    Audio_PlaySoundGeneral(NA_SE_SY_OCARINA_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                           &D_801333E8);
                    msgCtx->msgMode = MSGMODE_UNK_09;
                }
            } else if (msgCtx->ocarinaStaff->state == 0xFF) {
                func_800ED858(0);
                Audio_PlaySoundGeneral(NA_SE_SY_OCARINA_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                msgCtx->stateTimer = 10;
                msgCtx->msgMode = MSGMODE_UNK_0E;
            } else if (CHECK_BTN_ALL(globalCtx->state.input[0].press.button, BTN_B)) {
                func_800ED858(0);
                globalCtx->msgCtx.unk_E3EE = 4;
                Message_CloseTextbox(globalCtx);
            }
            if (msgCtx->unk_E3F0 != 1 && msgCtx->unk_E3F0 != 0x30) {
                Message_DrawText(globalCtx, &gfx);
            }
            break;
        case MSGMODE_UNK_0D:
        case MSGMODE_UNK_1C:
        case MSGMODE_UNK_27:
            r = ABS(D_801759A8 - D_80153CA8[D_80153CDC].r) / D_80153CD8;
            g = ABS(D_801759AC - D_80153CA8[D_80153CDC].g) / D_80153CD8;
            b = ABS(D_801759AA - D_80153CA8[D_80153CDC].b) / D_80153CD8;

            if (D_801759A8 >= D_80153CA8[D_80153CDC].r) {
                D_801759A8 -= r;
            } else {
                D_801759A8 += r;
            }
            if (D_801759AC >= D_80153CA8[D_80153CDC].g) {
                D_801759AC -= g;
            } else {
                D_801759AC += g;
            }
            if (D_801759AA >= D_80153CA8[D_80153CDC].b) {
                D_801759AA -= b;
            } else {
                D_801759AA += b;
            }

            r = ABS(D_801759AE - D_80153CB4[D_80153CDC].r) / D_80153CD8;
            g = ABS(D_801759B2 - D_80153CB4[D_80153CDC].g) / D_80153CD8;
            b = ABS(D_801759B0 - D_80153CB4[D_80153CDC].b) / D_80153CD8;

            if (D_801759BA >= D_80153CB4[D_80153CDC].r) {
                D_801759AE -= r;
            } else {
                D_801759AE += r;
            }
            if (D_801759BE >= D_80153CB4[D_80153CDC].g) {
                D_801759B2 -= g;
            } else {
                D_801759B2 += g;
            }
            if (D_801759BC >= D_80153CB4[D_80153CDC].b) {
                D_801759B0 -= b;
            } else {
                D_801759B0 += b;
            }

            r = ABS(D_801759B4 - D_80153CC0[D_80153CDC].r) / D_80153CD8;
            g = ABS(D_801759B8 - D_80153CC0[D_80153CDC].g) / D_80153CD8;
            b = ABS(D_801759B6 - D_80153CC0[D_80153CDC].b) / D_80153CD8;

            if (D_801759B4 >= D_80153CC0[D_80153CDC].r) {
                D_801759B4 -= r;
            } else {
                D_801759B4 += r;
            }
            if (D_801759B8 >= D_80153CC0[D_80153CDC].g) {
                D_801759B8 -= g;
            } else {
                D_801759B8 += g;
            }
            if (D_801759B6 >= D_80153CC0[D_80153CDC].b) {
                D_801759B6 -= b;
            } else {
                D_801759B6 += b;
            }

            r = ABS(D_801759BA - D_80153CCC[D_80153CDC].r) / D_80153CD8;
            g = ABS(D_801759BE - D_80153CCC[D_80153CDC].g) / D_80153CD8;
            b = ABS(D_801759BC - D_80153CCC[D_80153CDC].b) / D_80153CD8;

            if (D_801759BA >= D_80153CCC[D_80153CDC].r) {
                D_801759BA -= r;
            } else {
                D_801759BA += r;
            }
            if (D_801759BE >= D_80153CCC[D_80153CDC].g) {
                D_801759BE -= g;
            } else {
                D_801759BE += g;
            }
            if (D_801759BC >= D_80153CCC[D_80153CDC].b) {
                D_801759BC -= b;
            } else {
                D_801759BC += b;
            }

            D_80153CD8--;
            if (D_80153CD8 == 0) {
                D_801759A8 = D_80153CA8[D_80153CDC].r;
                D_801759AC = D_80153CA8[D_80153CDC].g;
                D_801759AA = D_80153CA8[D_80153CDC].b;
                D_801759AE = D_80153CB4[D_80153CDC].r;
                D_801759B2 = D_80153CB4[D_80153CDC].g;
                D_801759B0 = D_80153CB4[D_80153CDC].b;
                D_801759B4 = D_80153CC0[D_80153CDC].r;
                D_801759B8 = D_80153CC0[D_80153CDC].g;
                D_801759B6 = D_80153CC0[D_80153CDC].b;
                D_801759BA = D_80153CCC[D_80153CDC].r;
                D_801759BE = D_80153CCC[D_80153CDC].g;
                D_801759BC = D_80153CCC[D_80153CDC].b;
                D_80153CD8 = 3;
                D_80153CDC ^= 1;
            }

            msgCtx->stateTimer--;
            if (msgCtx->stateTimer == 0) {
                func_800ED858(0);
                if (msgCtx->msgMode == MSGMODE_UNK_0D) {
                    // Correct Example Performance
                    osSyncPrintf("正解模範演奏=%x\n", msgCtx->unk_E3EC);
                    Message_ContinueTextbox(globalCtx, 0x86F); // Ocarina
                    msgCtx->msgMode = MSGMODE_UNK_11;
                    msgCtx->textBoxType = BOX_OCARINA;
                    msgCtx->stateTimer = 1;
                } else if (msgCtx->msgMode == MSGMODE_UNK_1C) {
                    if (msgCtx->unk_E3EC >= OCARINA_SONG_SARIAS) {
                        Message_ContinueTextbox(globalCtx, 0x86F); // Ocarina
                        msgCtx->msgMode = MSGMODE_UNK_11;
                        msgCtx->textBoxType = BOX_OCARINA;
                        msgCtx->stateTimer = 1;
                    } else {
                        Message_CloseTextbox(globalCtx);
                        globalCtx->msgCtx.unk_E3EE = 4;
                    }
                } else {
                    Message_CloseTextbox(globalCtx);
                    globalCtx->msgCtx.unk_E3EE = 3;
                }
            }
            Message_DrawText(globalCtx, &gfx);
            break;
        case MSGMODE_UNK_0E:
        case MSGMODE_UNK_1D:
            Message_DrawText(globalCtx, &gfx);
        case MSGMODE_UNK_0F:
            msgCtx->stateTimer--;
            if (msgCtx->stateTimer == 0) {
                VREG(51) = 1;
                if (msgCtx->msgMode == MSGMODE_UNK_1D) {
                    // kokokokokoko
                    osSyncPrintf("ここここここ\n");
                    Message_ContinueTextbox(globalCtx, 0x88B);
                    Message_Decode(globalCtx);
                    msgCtx->msgMode = MSGMODE_UNK_1E;
                } else {
                    msgCtx->msgMode = MSGMODE_UNK_10;
                }
                // Cancel
                osSyncPrintf("キャンセル\n");
            }
            break;
        case MSGMODE_UNK_10:
        case MSGMODE_UNK_1E:
            for (phi_a3 = 0; phi_a3 < 5; phi_a3++) {
                VREG(45 + phi_a3) += VREG(51);
            }
            VREG(51) += VREG(51);
            if (VREG(51) >= 0x226) {
                sOcarinaNoteBuf[0] = 0xFF;
                D_80153958[0] = D_80153958[1] = D_80153958[2] = D_80153958[3] = D_80153958[4] = D_80153958[5] =
                    D_80153958[6] = D_80153958[7] = D_80153958[8] = 0;
                if (msgCtx->msgMode == MSGMODE_UNK_1E) {
                    msgCtx->msgMode = MSGMODE_UNK_1F;
                } else {
                    msgCtx->msgMode = MSGMODE_UNK_09;
                }
            }
            break;
        case MSGMODE_UNK_11:
            msgCtx->stateTimer--;
            if (msgCtx->stateTimer == 0) {
                func_800ED858(0);
                osSyncPrintf(VT_FGCOL(GREEN));
                osSyncPrintf("Na_StopOcarinaMode();\n");
                osSyncPrintf("Na_StopOcarinaMode();\n");
                osSyncPrintf("Na_StopOcarinaMode();\n");
                osSyncPrintf(VT_RST);
                Message_Decode(globalCtx);
                msgCtx->msgMode = MSGMODE_UNK_12;
                msgCtx->ocarinaStaff = func_800EE3D4();
                msgCtx->ocarinaStaff->pos = sOcarinaNoteBufPos = 0;
                func_801069B0();
                if (msgCtx->unk_E3EC >= OCARINA_SONG_SARIAS && msgCtx->unk_E3EC < OCARINA_SONG_MEMORY_GAME) {
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx,
                                sOcarinaEffectActorIds[msgCtx->unk_E3EC - OCARINA_SONG_SARIAS],
                                player->actor.world.pos.x, player->actor.world.pos.y, player->actor.world.pos.z, 0, 0,
                                0, sOcarinaEffectActorParams[msgCtx->unk_E3EC - OCARINA_SONG_SARIAS]);
                }
            }
            break;
        case MSGMODE_UNK_12:
            Message_DrawText(globalCtx, &gfx);
            func_800ED858(1);
            func_800ED858(1);
            func_800ED93C(msgCtx->unk_E3EC + 1, 1);
            if (msgCtx->unk_E3EC != OCARINA_SONG_SCARECROW) {
                func_800F5C64(D_80153CE0[msgCtx->unk_E3EC]);
                Audio_SetSoundBanksMute(0x20);
            }
            globalCtx->msgCtx.unk_E3EE = 1;
            if (msgCtx->unk_E3F0 == 1) {
                msgCtx->unk_E3F0 = 0x29;
            }
            if (msgCtx->unk_E3F0 == 0x30) {
                msgCtx->unk_E3F0 = 0x31;
            }
            sOcarinaNoteBufPos = 0;
            msgCtx->msgMode = MSGMODE_UNK_13;
            break;
        case MSGMODE_UNK_18:
            msgCtx->stateTimer--;
            if (msgCtx->stateTimer == 0) {
                // ocarina_no=%d Song Chosen=%d
                osSyncPrintf("ocarina_no=%d  選曲=%d\n", msgCtx->unk_E3F0, 0x16);
                if (msgCtx->unk_E3F0 < 8) {
                    func_800ED858(4);
                } else if (msgCtx->unk_E3F0 == 9) {
                    func_800ED858(2);
                } else if (msgCtx->unk_E3F0 == 0xA) {
                    func_800ED858(3);
                } else if (msgCtx->unk_E3F0 == 0xD) {
                    func_800ED858(5);
                } else {
                    func_800ED858(1);
                }
                // Example Performance
                osSyncPrintf("模範演奏=%x\n", msgCtx->unk_E3F0 - 2);
                func_800ED93C(msgCtx->unk_E3F0 - 1, 2);
                sOcarinaNoteBufPos = 0;
                msgCtx->msgMode = MSGMODE_UNK_19;
            }
            Message_DrawText(globalCtx, &gfx);
            break;
        case MSGMODE_UNK_14:
            Message_ContinueTextbox(globalCtx, msgCtx->unk_E3EC + 0x893); // You played [song name]
            Message_Decode(globalCtx);
            msgCtx->msgMode = MSGMODE_UNK_15;
            msgCtx->stateTimer = 20;
            Message_DrawText(globalCtx, &gfx);
            break;
        case MSGMODE_UNK_15:
            msgCtx->stateTimer--;
            if (msgCtx->stateTimer == 0) {
                msgCtx->msgMode = MSGMODE_UNK_16;
            }
            Message_DrawText(globalCtx, &gfx);
            break;
        case MSGMODE_UNK_16:
            func_800ED858(0);
            func_801069B0();
            msgCtx->msgMode = MSGMODE_UNK_17;
            msgCtx->stateTimer = 2;
            Message_DrawText(globalCtx, &gfx);
            break;
        case MSGMODE_UNK_17:
            msgCtx->stateTimer--;
            if (msgCtx->stateTimer == 0) {
                if (msgCtx->unk_E3EC < OCARINA_SONG_SARIAS && (msgCtx->unk_E3F0 < 0xF || msgCtx->unk_E3F0 >= 0x15)) {
                    if (msgCtx->disableWarpSongs || interfaceCtx->restrictions.warpSongs == 3) {
                        Message_StartTextbox(globalCtx, 0x88C, NULL);
                        globalCtx->msgCtx.unk_E3EE = 4;
                    } else if ((gSaveContext.eventInf[0] & 0xF) != 1) {
                        Message_StartTextbox(globalCtx, msgCtx->unk_E3EC + 0x88D, NULL);
                        globalCtx->msgCtx.unk_E3EE = 1;
                    } else {
                        Message_CloseTextbox(globalCtx);
                    }
                } else {
                    Message_CloseTextbox(globalCtx);
                    if (msgCtx->unk_E3EC == OCARINA_SONG_EPONAS) {
                        DREG(53) = 1;
                    }
                    osSyncPrintf(VT_FGCOL(YELLOW));
                    osSyncPrintf("☆☆☆ocarina=%d   message->ocarina_no=%d  ", msgCtx->unk_E3EC, msgCtx->unk_E3F0);
                    if (msgCtx->unk_E3F0 == 0x29) {
                        globalCtx->msgCtx.unk_E3EE = 1;
                        if (msgCtx->unk_E3EC == OCARINA_SONG_SCARECROW) {
                            globalCtx->msgCtx.unk_E3EE = 0xB;
                        }
                    } else if (msgCtx->unk_E3F0 >= 0x1C) {
                        osSyncPrintf(VT_FGCOL(YELLOW));
                        osSyncPrintf("Ocarina_PC_Wind=%d(%d) ☆☆☆   ", 0x1C, msgCtx->unk_E3F0 - 0x1C);
                        if (msgCtx->unk_E3EC + 0x1C == msgCtx->unk_E3F0) {
                            globalCtx->msgCtx.unk_E3EE = 3;
                        } else {
                            globalCtx->msgCtx.unk_E3EE = msgCtx->unk_E3EC - 1;
                        }
                    } else {
                        osSyncPrintf(VT_FGCOL(GREEN));
                        osSyncPrintf("Ocarina_C_Wind=%d(%d) ☆☆☆   ", 0xF, msgCtx->unk_E3F0 - 0xF);
                        if (msgCtx->unk_E3EC + 0xF == msgCtx->unk_E3F0) {
                            globalCtx->msgCtx.unk_E3EE = 3;
                        } else {
                            globalCtx->msgCtx.unk_E3EE = 4;
                        }
                    }
                    osSyncPrintf(VT_RST);
                    osSyncPrintf("→  OCARINA_MODE=%d\n", globalCtx->msgCtx.unk_E3EE);
                }
            }
            break;
        case MSGMODE_UNK_13:
        case MSGMODE_UNK_19:
            msgCtx->ocarinaStaff = Audio_OcaGetDisplayStaff();
            if (msgCtx->ocarinaStaff->state == 0) {
                if (msgCtx->msgMode == MSGMODE_UNK_13) {
                    msgCtx->msgMode = MSGMODE_UNK_14;
                } else {
                    msgCtx->msgMode = MSGMODE_UNK_1A;
                }
                osSyncPrintf("onpu_buff[%d]=%x\n", msgCtx->ocarinaStaff->pos,
                             sOcarinaNoteBuf[msgCtx->ocarinaStaff->pos]);
            } else {
                if (sOcarinaNoteBufPos != 0 && msgCtx->ocarinaStaff->pos == 1) {
                    sOcarinaNoteBufPos = 0;
                }
                if (msgCtx->ocarinaStaff->pos != 0 && sOcarinaNoteBufPos + 1 == msgCtx->ocarinaStaff->pos) {
                    msgCtx->unk_E410 = sOcarinaNoteBuf[msgCtx->ocarinaStaff->pos - 1] = msgCtx->ocarinaStaff->noteIdx;
                    sOcarinaNoteBuf[msgCtx->ocarinaStaff->pos] = 0xFF;
                    sOcarinaNoteBufPos++;
                }
            }
        case MSGMODE_UNK_1A:
            Message_DrawText(globalCtx, &gfx);
            break;
        case MSGMODE_UNK_1B:
            msgCtx->ocarinaStaff = func_800EE3D4();
            if (msgCtx->ocarinaStaff->pos != 0 && (u32)sOcarinaNoteBufPos + 1 == msgCtx->ocarinaStaff->pos) {
                sOcarinaNoteBuf[msgCtx->ocarinaStaff->pos - 1] = msgCtx->ocarinaStaff->noteIdx;
                sOcarinaNoteBuf[msgCtx->ocarinaStaff->pos] = 0xFF;
                sOcarinaNoteBufPos++;
            }
            if (msgCtx->ocarinaStaff->state < 0xD) {
                osSyncPrintf("M_OCARINA20 : ocarina_no=%x    status=%x\n", msgCtx->unk_E3F0,
                             msgCtx->ocarinaStaff->state);
                msgCtx->unk_E3EC = msgCtx->ocarinaStaff->state;
                msgCtx->msgMode = MSGMODE_UNK_1C;
                Item_Give(globalCtx, ITEM_SONG_MINUET + D_8015396C[msgCtx->ocarinaStaff->state]);
                osSyncPrintf(VT_FGCOL(YELLOW));
                // z_message.c Song Acquired
                osSyncPrintf("z_message.c 取得メロディ＝%d\n", ITEM_SONG_MINUET + msgCtx->ocarinaStaff->state);
                osSyncPrintf(VT_RST);
                msgCtx->stateTimer = 20;
                Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            } else if (msgCtx->ocarinaStaff->state == 0xFF) {
                Audio_PlaySoundGeneral(NA_SE_SY_OCARINA_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                msgCtx->stateTimer = 10;
                msgCtx->msgMode = MSGMODE_UNK_1D;
            }
            Message_DrawText(globalCtx, &gfx);
            break;
        case MSGMODE_UNK_1F:
            Message_DrawText(globalCtx, &gfx);
            if (Message_ShouldAdvance(globalCtx)) {
                func_8010BD58(globalCtx, msgCtx->unk_E3F0);
            }
            break;
        case MSGMODE_UNK_21:
            // Scarecrow Recording Initialization
            osSyncPrintf("案山子録音 初期化\n");
            func_800EE170(1);
            func_800ED858(1);
            msgCtx->ocarinaStaff = func_800EE3C8();
            msgCtx->ocarinaStaff->pos = sOcarinaNoteBufPos = 0;
            sOcarinaNoteBufLen = 0;
            func_801069B0();
            msgCtx->msgMode = MSGMODE_UNK_22;
            Message_DrawText(globalCtx, &gfx);
            break;
        case MSGMODE_UNK_22:
            msgCtx->ocarinaStaff = func_800EE3C8();
            osSyncPrintf("\nonpu_pt=%d, locate=%d", sOcarinaNoteBufPos, msgCtx->ocarinaStaff->pos);
            if (msgCtx->ocarinaStaff->pos != 0 && sOcarinaNoteBufPos + 1 == msgCtx->ocarinaStaff->pos) {
                if (sOcarinaNoteBufLen >= 8) {
                    for (phi_v0 = sOcarinaNoteBufLen - 8, phi_a3 = 0; phi_a3 < 8; phi_a3++, phi_v0++) {
                        sOcarinaNoteBuf[phi_v0] = sOcarinaNoteBuf[phi_v0 + 1];
                    }
                    sOcarinaNoteBufLen--;
                }
                // Button Entered【%d】=%d
                osSyncPrintf("    入力ボタン【%d】=%d", sOcarinaNoteBufLen, msgCtx->ocarinaStaff->noteIdx);
                msgCtx->unk_E410 = sOcarinaNoteBuf[sOcarinaNoteBufLen] = msgCtx->ocarinaStaff->noteIdx;
                sOcarinaNoteBufLen++;
                sOcarinaNoteBuf[sOcarinaNoteBufLen] = 0xFF;
                sOcarinaNoteBufPos++;
                if (msgCtx->ocarinaStaff->pos == 8) {
                    sOcarinaNoteBufPos = 0;
                }
            }
            if (msgCtx->ocarinaStaff->state == 0 || CHECK_BTN_ALL(globalCtx->state.input[0].press.button, BTN_B)) {
                if (sOcarinaNoteBufLen != 0) {
                    // Recording complete！！！！！！！！！ message->info->status=%d
                    osSyncPrintf("録音終了！！！！！！！！！  message->info->status=%d \n",
                                 msgCtx->ocarinaStaff->state);
                    gSaveContext.scarecrowCustomSongSet = true;
                }
                Audio_PlaySoundGeneral(NA_SE_SY_OCARINA_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                osSyncPrintf("aaaaaaaaaaaaaa\n");
                func_800EE170(0);
                msgCtx->stateTimer = 10;
                globalCtx->msgCtx.unk_E3EE = 4;
                Message_CloseTextbox(globalCtx);
                // Recording complete！！！！！！！！！Recording Complete
                osSyncPrintf("録音終了！！！！！！！！！録音終了\n");
                osSyncPrintf(VT_FGCOL(YELLOW));
                osSyncPrintf("\n====================================================================\n");
                MemCopy(gSaveContext.scarecrowCustomSong, gScarecrowCustomSongPtr,
                        sizeof(gSaveContext.scarecrowCustomSong));
                for (phi_a3 = 0; phi_a3 < (s32)sizeof(gSaveContext.scarecrowCustomSong); phi_a3++) {
                    osSyncPrintf("%d, ", gSaveContext.scarecrowCustomSong[phi_a3]);
                }
                osSyncPrintf(VT_RST);
                osSyncPrintf("\n====================================================================\n");
            }
            Message_DrawText(globalCtx, &gfx);
            break;
        case MSGMODE_UNK_23:
        case MSGMODE_UNK_28:
            msgCtx->ocarinaStaff = Audio_OcaGetDisplayStaff();
            if (msgCtx->ocarinaStaff->pos != 0 && (u32)sOcarinaNoteBufPos + 1 == msgCtx->ocarinaStaff->pos) {
                if (sOcarinaNoteBufLen >= 8) {
                    for (phi_v0 = sOcarinaNoteBufLen - 8, phi_a3 = 0; phi_a3 < 8; phi_a3++, phi_v0++) {
                        sOcarinaNoteBuf[phi_v0] = sOcarinaNoteBuf[phi_v0 + 1];
                    }
                    sOcarinaNoteBufLen--;
                }
                sOcarinaNoteBuf[sOcarinaNoteBufLen] = msgCtx->ocarinaStaff->noteIdx;
                sOcarinaNoteBufLen++;
                sOcarinaNoteBuf[sOcarinaNoteBufLen] = 0xFF;
                sOcarinaNoteBufPos++;
                if (msgCtx->ocarinaStaff->pos == 8) {
                    sOcarinaNoteBufLen = sOcarinaNoteBufPos = 0;
                }
            }
            osSyncPrintf("status=%d (%d)\n", msgCtx->ocarinaStaff->state, 0);
            if (msgCtx->stateTimer == 0) {
                if (msgCtx->ocarinaStaff->state == 0) {
                    osSyncPrintf("bbbbbbbbbbb\n");
                    func_800ED858(0);
                    globalCtx->msgCtx.unk_E3EE = 0xF;
                    Message_CloseTextbox(globalCtx);
                }
            } else {
                msgCtx->stateTimer--;
            }
            break;
        case MSGMODE_UNK_24:
            func_800EE170(2);
            func_800ED858(1);
            msgCtx->msgMode = MSGMODE_UNK_25;
            Message_DrawText(globalCtx, &gfx);
            break;
        case MSGMODE_UNK_25:
            msgCtx->ocarinaStaff = func_800EE3C8();
            if (msgCtx->ocarinaStaff->pos != 0 && sOcarinaNoteBufPos + 1 == msgCtx->ocarinaStaff->pos) {
                msgCtx->unk_E410 = sOcarinaNoteBuf[sOcarinaNoteBufPos] = msgCtx->ocarinaStaff->noteIdx;
                sOcarinaNoteBufPos++;
                sOcarinaNoteBuf[sOcarinaNoteBufPos] = 0xFF;
            }
            if (msgCtx->ocarinaStaff->state == 0) {
                // 8 Note Recording ＯＫ！
                osSyncPrintf("８音録音ＯＫ！\n");
                msgCtx->stateTimer = 20;
                gSaveContext.scarecrowSpawnSongSet = true;
                msgCtx->msgMode = MSGMODE_UNK_27;
                Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                osSyncPrintf(VT_FGCOL(YELLOW));
                osSyncPrintf("\n====================================================================\n");
                MemCopy(gSaveContext.scarecrowSpawnSong, gScarecrowSpawnSongPtr,
                        sizeof(gSaveContext.scarecrowSpawnSong));
                for (phi_a3 = 0; phi_a3 < (s32)sizeof(gSaveContext.scarecrowSpawnSong); phi_a3++) {
                    osSyncPrintf("%d, ", gSaveContext.scarecrowSpawnSong[phi_a3]);
                }
                osSyncPrintf(VT_RST);
                osSyncPrintf("\n====================================================================\n");
            } else if (msgCtx->ocarinaStaff->state == 0xFF ||
                       CHECK_BTN_ALL(globalCtx->state.input[0].press.button, BTN_B)) {
                // Played an existing song！！！
                osSyncPrintf("すでに存在する曲吹いた！！！ \n");
                func_800EE170(0);
                Audio_PlaySoundGeneral(NA_SE_SY_OCARINA_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                Message_CloseTextbox(globalCtx);
                msgCtx->msgMode = MSGMODE_UNK_26;
            }
            Message_DrawText(globalCtx, &gfx);
            break;
        case MSGMODE_UNK_26:
            osSyncPrintf("cccccccccccc\n");
            func_800ED858(0);
            Message_StartTextbox(globalCtx, 0x40AD, NULL); // Bonooru doesn't remember your song
            globalCtx->msgCtx.unk_E3EE = 4;
            break;
        case MSGMODE_UNK_29:
            func_800ED858(1);
            func_800ED858(6);
            func_800EE57C(gSaveContext.ocarinaGameReward);
            msgCtx->ocarinaStaff = Audio_OcaGetDisplayStaff();
            msgCtx->ocarinaStaff->pos = sOcarinaNoteBufPos = 0;
            func_801069B0();
            func_800ED93C(0xE, 1);
            msgCtx->msgMode = MSGMODE_UNK_2A;
            msgCtx->stateTimer = 2;
            break;
        case MSGMODE_UNK_2A:
        case MSGMODE_UNK_2C:
            Audio_PlaySoundGeneral(NA_SE_SY_METRONOME_LV - SFX_FLAG, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
            msgCtx->ocarinaStaff = Audio_OcaGetDisplayStaff();
            if (msgCtx->ocarinaStaff->pos != 0 && (u32)sOcarinaNoteBufPos + 1 == msgCtx->ocarinaStaff->pos) {
                sOcarinaNoteBuf[msgCtx->ocarinaStaff->pos - 1] = msgCtx->ocarinaStaff->noteIdx;
                sOcarinaNoteBuf[msgCtx->ocarinaStaff->pos] = 0xFF;
                sOcarinaNoteBufPos++;
            }
            if (msgCtx->stateTimer == 0) {
                if (msgCtx->ocarinaStaff->state == 0) {
                    if (msgCtx->msgMode == MSGMODE_UNK_2A) {
                        Audio_PlaySoundGeneral(NA_SE_SY_METRONOME, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                               &D_801333E8);
                    } else {
                        Audio_PlaySoundGeneral(NA_SE_SY_METRONOME_2, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                               &D_801333E8);
                    }
                    msgCtx->msgMode++;
                }
            } else {
                msgCtx->stateTimer--;
            }
            break;
        case MSGMODE_UNK_2B:
        case MSGMODE_UNK_2D:
            msgCtx->ocarinaStaff = Audio_OcaGetDisplayStaff();
            if (msgCtx->ocarinaStaff->pos != 0 && (u32)sOcarinaNoteBufPos + 1 == msgCtx->ocarinaStaff->pos) {
                sOcarinaNoteBuf[msgCtx->ocarinaStaff->pos - 1] = msgCtx->ocarinaStaff->noteIdx;
                sOcarinaNoteBuf[msgCtx->ocarinaStaff->pos] = 0xFF;
                sOcarinaNoteBufPos++;
            }
            break;
        case MSGMODE_UNK_2E:
            Audio_PlaySoundGeneral(NA_SE_SY_METRONOME_LV - SFX_FLAG, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
            msgCtx->ocarinaStaff = func_800EE3D4();
            if (msgCtx->ocarinaStaff->pos != 0 && (u32)sOcarinaNoteBufPos + 1 == msgCtx->ocarinaStaff->pos) {
                sOcarinaNoteBuf[msgCtx->ocarinaStaff->pos - 1] = msgCtx->ocarinaStaff->noteIdx;
                sOcarinaNoteBuf[msgCtx->ocarinaStaff->pos] = 0xFF;
                sOcarinaNoteBufPos++;
            }
            if (msgCtx->ocarinaStaff->state == 0xFF) {
                // Musical round failed！！！！！！！！！
                osSyncPrintf("輪唱失敗！！！！！！！！！\n");
                func_800ED858(0);
                Audio_PlaySoundGeneral(NA_SE_SY_OCARINA_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                msgCtx->stateTimer = 10;
                globalCtx->msgCtx.unk_E3EE = 3;
            } else if (msgCtx->ocarinaStaff->state == 0xD) {
                // Musical round succeeded！！！！！！！！！
                osSyncPrintf("輪唱成功！！！！！！！！！\n");
                Audio_PlaySoundGeneral(NA_SE_SY_GET_ITEM, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                msgCtx->msgMode = MSGMODE_UNK_2F;
                msgCtx->stateTimer = 30;
            }
            Message_DrawText(globalCtx, &gfx);
            break;
        case MSGMODE_UNK_2F:
            msgCtx->ocarinaStaff = func_800EE3D4();
            if (msgCtx->ocarinaStaff->pos != 0 && (u32)sOcarinaNoteBufPos + 1 == msgCtx->ocarinaStaff->pos) {
                sOcarinaNoteBuf[msgCtx->ocarinaStaff->pos - 1] = msgCtx->ocarinaStaff->noteIdx;
                sOcarinaNoteBuf[msgCtx->ocarinaStaff->pos] = 0xFF;
                sOcarinaNoteBufPos++;
            }
            msgCtx->stateTimer--;
            if (msgCtx->stateTimer == 0) {
                if (func_800EE5EC() != 1) {
                    Audio_PlaySoundGeneral(NA_SE_SY_METRONOME, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    msgCtx->ocarinaStaff = func_800EE3D4();
                    msgCtx->ocarinaStaff->pos = sOcarinaNoteBufPos = 0;
                    func_801069B0();
                    msgCtx->msgMode = MSGMODE_UNK_30;
                } else {
                    globalCtx->msgCtx.unk_E3EE = 0xF;
                }
            }
            Message_DrawText(globalCtx, &gfx);
            break;
        case MSGMODE_UNK_30:
            if (!Audio_IsSfxPlaying(NA_SE_SY_METRONOME)) {
                msgCtx->ocarinaStaff = Audio_OcaGetDisplayStaff();
                msgCtx->ocarinaStaff->pos = sOcarinaNoteBufPos = 0;
                func_801069B0();
                func_800ED93C(0xE, 1);
            }
            break;
        case MSGMODE_UNK_31:
            func_800ED858(1);
            msgCtx->ocarinaStaff = func_800EE3D4();
            msgCtx->ocarinaStaff->pos = sOcarinaNoteBufPos = 0;
            globalCtx->msgCtx.unk_E3EE = 1;
            func_801069B0();
            func_800ECC04(sOcarinaSongBitFlags + 0xC000);
            msgCtx->msgMode = MSGMODE_UNK_32;
            break;
        case MSGMODE_UNK_32:
            msgCtx->ocarinaStaff = func_800EE3D4();
            if (msgCtx->ocarinaStaff->pos != 0 && sOcarinaNoteBufPos + 1 == msgCtx->ocarinaStaff->pos) {
                msgCtx->unk_E410 = msgCtx->ocarinaStaff->noteIdx;
                msgCtx->ocarinaStaff->pos = sOcarinaNoteBufPos = 0;
                func_801069B0();
                msgCtx->msgMode = MSGMODE_UNK_33;
            }
        case MSGMODE_UNK_33:
            break;
        case MSGMODE_TEXT_DONE:
            Message_DrawText(globalCtx, &gfx);

            switch (msgCtx->unk_E3E4) {
                case 0x10: // 2 choice
                    Message_HandleChoiceSelection(globalCtx, 1);
                    Message_DrawTextboxEndIcon(globalCtx, &gfx, msgCtx->textPosX, msgCtx->textPosY);
                    break;
                case 0x20: // 3 choice
                    Message_HandleChoiceSelection(globalCtx, 2);
                    Message_DrawTextboxEndIcon(globalCtx, &gfx, msgCtx->textPosX, msgCtx->textPosY);
                    break;
                case 0x40:
                    if (msgCtx->textId >= 0x6D && msgCtx->textId < 0x73) {
                        msgCtx->stateTimer++;
                        if (msgCtx->stateTimer >= 31) {
                            msgCtx->stateTimer = 2;
                            msgCtx->msgMode = MSGMODE_TEXT_CLOSING;
                        }
                    }
                    break;
                case 0x50:
                default:
                    Message_DrawTextboxEndIcon(globalCtx, &gfx, R_TEXTBOX_END_XPOS, R_TEXTBOX_END_YPOS);
                case 0x60:
                    break;
            }
            break;
        case MSGMODE_TEXT_CLOSING:
        case MSGMODE_UNK_37:
            break;
        case MSGMODE_UNK_20:
        default:
            msgCtx->msgMode = MSGMODE_TEXT_DISPLAYING;
            break;
    }

    if (msgCtx->msgMode >= MSGMODE_UNK_0C && msgCtx->msgMode < MSGMODE_UNK_34 && msgCtx->unk_E3F0 != 1 &&
        msgCtx->unk_E3F0 != 0x30) {
        func_8009457C(&gfx);

        gDPSetCombineLERP(gfx++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                          ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

        if (msgCtx->msgMode == MSGMODE_UNK_1B) {
            temp = msgCtx->unk_E3F0 - 0xF;
            temp2 = gOcarinaSongNotes[temp].len;
            for (phi_a3 = 0, phi_a1 = VREG(28); phi_a3 < temp2; phi_a3++, phi_a1 += VREG(29)) {
                gDPPipeSync(gfx++);
                gDPSetPrimColor(gfx++, 0, 0, 150, 150, 150, 150);
                gDPSetEnvColor(gfx++, 10, 10, 10, 0);

                gDPLoadTextureBlock(gfx++, sOcarinaNoteTextures[gOcarinaSongNotes[temp].notesIdx[phi_a3]], G_IM_FMT_IA,
                                    G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                                    G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                gSPTextureRectangle(gfx++, phi_a1 << 2, VREG(45 + gOcarinaSongNotes[temp].notesIdx[phi_a3]) << 2,
                                    (phi_a1 + 0x10) << 2,
                                    (VREG(45 + gOcarinaSongNotes[temp].notesIdx[phi_a3]) + 0x10) << 2, G_TX_RENDERTILE,
                                    0, 0, 0x0400, 0x0400);
            }
        }

        if (msgCtx->msgMode != MSGMODE_UNK_21 && msgCtx->msgMode != MSGMODE_UNK_29) {
            for (phi_a3 = 0, phi_a1 = VREG(28); phi_a3 < 8; phi_a3++, phi_a1 += VREG(29)) {
                if (sOcarinaNoteBuf[phi_a3] == 0xFF) {
                    break;
                }

                if (1) {}
                if (D_80153958[phi_a3] != 0xFF) {
                    D_80153958[phi_a3] += VREG(50);
                    if (D_80153958[phi_a3] >= 0xFF) {
                        D_80153958[phi_a3] = 0xFF;
                    }
                }

                gDPPipeSync(gfx++);
                if (sOcarinaNoteBuf[phi_a3] == 0) {
                    gDPSetPrimColor(gfx++, 0, 0, D_801759A8, D_801759AC, D_801759AA, D_80153958[phi_a3]);
                    gDPSetEnvColor(gfx++, D_801759AE, D_801759B2, D_801759B0, 0);
                } else {
                    gDPSetPrimColor(gfx++, 0, 0, D_801759B4, D_801759B8, D_801759B6, D_80153958[phi_a3]);
                    gDPSetEnvColor(gfx++, D_801759BA, D_801759BE, D_801759BC, 0);
                }

                gDPLoadTextureBlock(gfx++, sOcarinaNoteTextures[sOcarinaNoteBuf[phi_a3]], G_IM_FMT_IA, G_IM_SIZ_8b, 16,
                                    16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                                    G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                gSPTextureRectangle(gfx++, phi_a1 << 2, VREG(45 + sOcarinaNoteBuf[phi_a3]) << 2, (phi_a1 + 0x10) << 2,
                                    (VREG(45 + sOcarinaNoteBuf[phi_a3]) + 0x10) << 2, G_TX_RENDERTILE, 0, 0, 0x0400,
                                    0x0400);
            }
        }
    }

end:
    *p = gfx;
}
#else
void func_8010C39C(GlobalContext* globalCtx, Gfx** p);
// oceff actor ids
static s16 sOcarinaEffectActorIds[] = {
    ACTOR_OCEFF_WIPE3, ACTOR_OCEFF_WIPE2, ACTOR_OCEFF_WIPE,  ACTOR_OCEFF_SPOT,
    ACTOR_OCEFF_WIPE,  ACTOR_OCEFF_STORM, ACTOR_OCEFF_WIPE4,
};
// oceff actor params
static s16 sOcarinaEffectActorParams[] = { 0x0000, 0x0000, 0x0000, 0x0000, 0x0001, 0x0000, 0x0000 };
// Ocarina notes textures in parameter_static, A C-Down C-Right C-Left C-Up
static u64* sOcarinaNoteTextures[] = {
    0x02002940, 0x02002A40, 0x02002B40, 0x02002C40, 0x02002D40,
};
static Color_RGB_s16 D_80153CA8[] = {
    { 80, 255, 150 },
    { 100, 255, 200 },
};
static Color_RGB_s16 D_80153CB4[] = {
    { 10, 10, 10 },
    { 50, 255, 50 },
};
static Color_RGB_s16 D_80153CC0[] = {
    { 255, 255, 50 },
    { 255, 255, 180 },
};
static Color_RGB_s16 D_80153CCC[] = {
    { 10, 10, 10 },
    { 110, 110, 50 },
};
static s16 D_80153CD8 = 12;
static s16 D_80153CDC = 1;
static s16 D_80153CE0[] = {
    0x0034, 0x0033, 0x0035, 0x0036, 0x0037, 0x0025, 0x0044, 0x0045, 0x0046, 0x0047, 0x0048, 0x0049,
};
#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010C39C.s")
#endif

void Message_DrawSetup(s16* scarecrowCustomSongSet, GraphicsContext* gfxCtx) {
    static s16 sScarecrowCustomSongSet = 0;
    static s16 sFillTimer = 0;

    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_message_PAL.c", 3485);

    if (sScarecrowCustomSongSet != *scarecrowCustomSongSet) {
        sScarecrowCustomSongSet = *scarecrowCustomSongSet;
        sFillTimer = 30;
    }
    if (sFillTimer != 0) {
        sFillTimer--;
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCycleType(POLY_OPA_DISP++, G_CYC_FILL);
        gDPSetRenderMode(POLY_OPA_DISP++, G_RM_NOOP, G_RM_NOOP2);
        gDPSetFillColor(POLY_OPA_DISP++, GPACK_RGBA5551(0, 0, 0, 1) << 0x10 | GPACK_RGBA5551(0, 0, 0, 1));
        gDPFillRectangle(POLY_OPA_DISP++, 0, 110, 319, 150);
        gDPPipeSync(POLY_OPA_DISP++);
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCycleType(POLY_OPA_DISP++, G_CYC_FILL);
        gDPSetRenderMode(POLY_OPA_DISP++, G_RM_NOOP, G_RM_NOOP2);
        gDPSetFillColor(POLY_OPA_DISP++, GPACK_RGBA5551(255, 255, 255, 1) << 0x10 | GPACK_RGBA5551(255, 255, 255, 1));
        gDPFillRectangle(POLY_OPA_DISP++, 40, 120, 60, 140);
        gDPPipeSync(POLY_OPA_DISP++);
    }
    CLOSE_DISPS(gfxCtx, "../z_message_PAL.c", 3513);
}

void Message_DrawDebug(GlobalContext* globalCtx, Gfx** p) {
    s32 pad;
    GfxPrint printer;
    s32 pad1;

    GfxPrint_Init(&printer);
    GfxPrint_Open(&printer, *p);
    GfxPrint_SetPos(&printer, 6, 26);
    GfxPrint_SetColor(&printer, 255, 60, 0, 255);
    GfxPrint_Printf(&printer, "%s", "MESSAGE");
    GfxPrint_SetPos(&printer, 14, 26);
    GfxPrint_Printf(&printer, "%s", "=");
    GfxPrint_SetPos(&printer, 16, 26);
    GfxPrint_Printf(&printer, "%x", globalCtx->msgCtx.textId);
    *p = GfxPrint_Close(&printer);
    GfxPrint_Destroy(&printer);
}

void Message_Draw(GlobalContext* globalCtx) {
    Gfx* plusOne;
    Gfx* polyOpaP;
    s16 scarecrowCustomSongSet;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_message_PAL.c", 3554);

    scarecrowCustomSongSet = gSaveContext.scarecrowCustomSongSet;
    Message_DrawSetup(&scarecrowCustomSongSet, globalCtx->state.gfxCtx);
    if (BREG(0) != 0 && globalCtx->msgCtx.textId != 0) {
        plusOne = Graph_GfxPlusOne(polyOpaP = POLY_OPA_DISP);
        gSPDisplayList(OVERLAY_DISP++, plusOne);
        Message_DrawDebug(globalCtx, &plusOne);
        gSPEndDisplayList(plusOne++);
        Graph_BranchDlist(polyOpaP, plusOne);
        POLY_OPA_DISP = plusOne;
    }
    if (1) {}
    plusOne = Graph_GfxPlusOne(polyOpaP = POLY_OPA_DISP);
    gSPDisplayList(OVERLAY_DISP++, plusOne);
    func_8010C39C(globalCtx, &plusOne);
    gSPEndDisplayList(plusOne++);
    Graph_BranchDlist(polyOpaP, plusOne);
    POLY_OPA_DISP = plusOne;
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_message_PAL.c", 3582);
}

void Message_Update(GlobalContext* globalCtx) {
    static s16 textboxXPositions[] = {
        34, 34, 34, 34, 34, 34,
    };
    static s16 textboxMidYPositions[] = {
        142, 142, 142, 142, 174, 142,
    };
    static s16 textboxUpperYPositions[] = {
        38, 38, 38, 38, 174, 38,
    };
    static s16 textboxLowerYPositions[] = {
        90, 90, 90, 90, 174, 90,
    };
    static s16 D_80153D30[] = {
        59, 59, 59, 59, 34, 59,
    };
    static s16 D_80153D3C[] = {
        // additional unreferenced data
        0x0400, 0x0400, 0x0200, 0x0000, 0x1038, 0x0008, 0x200A, 0x088B, 0x0007, 0x0009, 0x000A, 0x107E, 0x2008, 0x2007,
        0x0015, 0x0016, 0x0017, 0x0003, 0x0000, 0x270B, 0x00C8, 0x012C, 0x012D, 0xFFDA, 0x0014, 0x0016, 0x0014, 0x0016,
    };
    static u8 D_80153D74 = 0;
    static u16 D_80153D78 = 0;

    MessageContext* msgCtx = &globalCtx->msgCtx;
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    Player* player = GET_PLAYER(globalCtx);
    Input* curInput = &globalCtx->state.input[0];
    s16 var;
    s16 focusScreenPosX;
    s16 averageY;
    s16 playerFocusScreenPosY;
    s16 actorFocusScreenPosY;

    if (BREG(0) != 0) {
        if (CHECK_BTN_ALL(curInput->press.button, BTN_DDOWN) && CHECK_BTN_ALL(curInput->cur.button, BTN_L)) {
            osSyncPrintf("msgno=%d\n", D_80153D78);
            Message_StartTextbox(globalCtx, R_MESSAGE_DEBUGGER_TEXTID, NULL);
            D_80153D78 = (D_80153D78 + 1) % 10;
        }
        if (R_MESSAGE_DEBUGGER_SELECT != 0) {
            while (R_MESSAGE_DEBUGGER_TEXTID != 0x8000) {
                MessageTableEntry* entry = &sNesMessageEntryTablePtr[0];

                while (entry->textId != 0xFFFD) {
                    if (entry->textId == R_MESSAGE_DEBUGGER_TEXTID) {
                        // The message was found! !! !!
                        osSyncPrintf(" メッセージが,見つかった！！！ = %x\n", R_MESSAGE_DEBUGGER_TEXTID);
                        Message_StartTextbox(globalCtx, R_MESSAGE_DEBUGGER_TEXTID, NULL);
                        R_MESSAGE_DEBUGGER_TEXTID++;
                        R_MESSAGE_DEBUGGER_SELECT = 0;
                        return;
                    }
                    entry++;
                }
                R_MESSAGE_DEBUGGER_TEXTID++;
            }
        }
    }

    if (msgCtx->msgLength == 0) {
        return;
    }

    switch (msgCtx->msgMode) {
        case MSGMODE_UNK_01:
            D_8014B2F4++;

            var = false;
            if (YREG(15) == 0x40) {
                if (D_8014B2F4 >= 4) {
                    var = true;
                }
            } else if (YREG(15) != 0 || globalCtx->sceneNum == SCENE_HAIRAL_NIWA) {
                var = true;
            } else if (D_8014B2F4 >= 4 || msgCtx->talkActor == NULL) {
                var = true;
            }

            if (var) {
                if (msgCtx->talkActor != NULL) {
                    Actor_GetScreenPos(globalCtx, &GET_PLAYER(globalCtx)->actor, &focusScreenPosX,
                                       &playerFocusScreenPosY);
                    Actor_GetScreenPos(globalCtx, msgCtx->talkActor, &focusScreenPosX, &actorFocusScreenPosY);

                    if (playerFocusScreenPosY >= actorFocusScreenPosY) {
                        averageY = ((playerFocusScreenPosY - actorFocusScreenPosY) / 2) + actorFocusScreenPosY;
                    } else {
                        averageY = ((actorFocusScreenPosY - playerFocusScreenPosY) / 2) + playerFocusScreenPosY;
                    }
                    osSyncPrintf("dxpos=%d   dypos=%d  dypos1  dypos2=%d\n", focusScreenPosX, averageY,
                                 playerFocusScreenPosY, actorFocusScreenPosY);
                } else {
                    R_TEXTBOX_X = R_TEXTBOX_X_TARGET;
                    R_TEXTBOX_Y = R_TEXTBOX_Y_TARGET;
                }

                var = msgCtx->textBoxType;

                if (!msgCtx->textBoxPos) { // variable position
                    if (YREG(15) || globalCtx->sceneNum == SCENE_HAIRAL_NIWA) {
                        if (averageY < XREG(92)) {
                            R_TEXTBOX_Y_TARGET = textboxMidYPositions[var];
                        } else {
                            R_TEXTBOX_Y_TARGET = textboxUpperYPositions[var];
                        }
                    } else if (globalCtx->sceneNum == SCENE_MARKET_DAY || globalCtx->sceneNum == SCENE_MARKET_NIGHT ||
                               globalCtx->sceneNum == SCENE_MARKET_RUINS) {
                        if (averageY < XREG(93)) {
                            R_TEXTBOX_Y_TARGET = textboxMidYPositions[var];
                        } else {
                            R_TEXTBOX_Y_TARGET = textboxUpperYPositions[var];
                        }
                    } else {
                        if (averageY < XREG(94)) {
                            R_TEXTBOX_Y_TARGET = textboxMidYPositions[var];
                        } else {
                            R_TEXTBOX_Y_TARGET = textboxUpperYPositions[var];
                        }
                    }
                } else {
                    if (msgCtx->textBoxPos == POS_TOP) {
                        R_TEXTBOX_Y_TARGET = textboxUpperYPositions[var];
                    } else if (msgCtx->textBoxPos == POS_BOTTOM) {
                        R_TEXTBOX_Y_TARGET = textboxLowerYPositions[var];
                    } else {
                        R_TEXTBOX_Y_TARGET = textboxMidYPositions[var];
                    }
                }

                R_TEXTBOX_X_TARGET = textboxXPositions[var];
                R_TEXTBOX_END_YPOS = D_80153D30[var] + R_TEXTBOX_Y_TARGET;
                R_TEXT_CHOICE_YPOS(0) = R_TEXTBOX_Y_TARGET + 20;
                R_TEXT_CHOICE_YPOS(1) = R_TEXTBOX_Y_TARGET + 32;
                R_TEXT_CHOICE_YPOS(2) = R_TEXTBOX_Y_TARGET + 44;
                osSyncPrintf("message->msg_disp_type=%x\n", msgCtx->textBoxProperties & 0xF0);
                if (msgCtx->textBoxType == BOX_NONE_BOTTOM || msgCtx->textBoxType == BOX_NONE_NO_SHADOW) {
                    msgCtx->msgMode = MSGMODE_UNK_03;
                    R_TEXTBOX_X = R_TEXTBOX_X_TARGET;
                    R_TEXTBOX_Y = R_TEXTBOX_Y_TARGET;
                    R_TEXTBOX_WIDTH = 256;
                    R_TEXTBOX_HEIGHT = 64;
                    R_TEXTBOX_TEXWIDTH = 512;
                    R_TEXTBOX_TEXHEIGHT = 512;
                } else {
                    Message_GrowTextbox(msgCtx);
                    Audio_PlaySoundIfNotInCutscene(0);
                    msgCtx->stateTimer = 0;
                    msgCtx->msgMode = MSGMODE_UNK_02;
                }
            }
            break;
        case MSGMODE_UNK_02:
            Message_GrowTextbox(msgCtx);
            break;
        case MSGMODE_UNK_03:
            msgCtx->msgMode = MSGMODE_UNK_04;
            if (YREG(31) == 0) {
                Interface_SetDoAction(globalCtx, DO_ACTION_NEXT);
            }
            break;
        case MSGMODE_UNK_04:
            Message_Decode(globalCtx);
            if (D_8014B2F0 != 0) {
                Interface_ChangeAlpha(1);
            }
            if (D_80153D74 != 0) {
                // Dead code: D_80153D74 is never non-zero
                msgCtx->unk_E3D2 = msgCtx->unk_E3D4;
                D_80153D74 = 0;
            }
            break;
        case MSGMODE_UNK_05:
            msgCtx->stateTimer--;
            if (msgCtx->stateTimer == 0) {
                Message_Decode(globalCtx);
            }
            break;
        case MSGMODE_TEXT_DISPLAYING:
            if (msgCtx->textBoxType != 4 && YREG(31) == 0 &&
                CHECK_BTN_ALL(globalCtx->state.input[0].press.button, BTN_B) && !msgCtx->textUnskippable) {
                sTextboxSkipped = true;
                msgCtx->unk_E3D2 = msgCtx->unk_E3D4;
            }
            break;
        case MSGMODE_UNK_07:
            if (YREG(31) == 0 && Message_ShouldAdvance(globalCtx)) {
                msgCtx->msgMode = MSGMODE_TEXT_DISPLAYING;
                msgCtx->unk_E3D2++;
            }
            break;
        case MSGMODE_UNK_08:
            msgCtx->stateTimer--;
            if (msgCtx->stateTimer == 0) {
                msgCtx->msgMode = MSGMODE_UNK_04;
            }
            break;
        case MSGMODE_UNK_34:
            if (Message_ShouldAdvance(globalCtx)) {
                msgCtx->msgMode = MSGMODE_UNK_04;
                msgCtx->textUnskippable = false;
                msgCtx->msgBufPos++;
            }
            break;
        case MSGMODE_TEXT_DONE:
            if (msgCtx->unk_E3E4 == 0x60) {
                msgCtx->stateTimer--;
                if (msgCtx->stateTimer == 0) {
                    Message_CloseTextbox(globalCtx);
                }
            } else if (msgCtx->unk_E3E4 != 0x40 && msgCtx->unk_E3E4 != 0x50 && YREG(31) == 0) {
                if (msgCtx->unk_E3E4 == 0x10 && globalCtx->msgCtx.unk_E3EE == 1) {
                    if (Message_ShouldAdvance(globalCtx)) {
                        osSyncPrintf("OCARINA_MODE=%d -> ", globalCtx->msgCtx.unk_E3EE);
                        globalCtx->msgCtx.unk_E3EE = (msgCtx->choiceIndex == 0) ? 2 : 4;
                        osSyncPrintf("InRaceSeq=%d(%d) OCARINA_MODE=%d  -->  ", gSaveContext.eventInf[0] & 0xF, 1,
                                     globalCtx->msgCtx.unk_E3EE);
                        Message_CloseTextbox(globalCtx);
                        osSyncPrintf("OCARINA_MODE=%d\n", globalCtx->msgCtx.unk_E3EE);
                    }
                } else if (Message_ShouldAdvanceSilent(globalCtx)) {
                    osSyncPrintf("select=%d\n", msgCtx->unk_E3E4);
                    if (msgCtx->unk_E3E4 == 0x30) {
                        Audio_PlaySoundGeneral(NA_SE_SY_MESSAGE_PASS, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                               &D_801333E8);
                        Message_ContinueTextbox(globalCtx, sNextTextId);
                    } else {
                        Audio_PlaySoundGeneral(NA_SE_SY_DECIDE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                        Message_CloseTextbox(globalCtx);
                    }
                }
            }
            break;
        case MSGMODE_TEXT_CLOSING:
            msgCtx->stateTimer--;
            if (msgCtx->stateTimer != 0) {
                break;
            }
            if ((msgCtx->textId >= 0xC2 && msgCtx->textId < 0xC7) ||
                (msgCtx->textId >= 0xFA && msgCtx->textId < 0xFE)) {
                gSaveContext.healthAccumulator = 0x140;
            }
            if (msgCtx->textId == 0x301F || msgCtx->textId == 0xA || msgCtx->textId == 0xC || msgCtx->textId == 0xCF ||
                msgCtx->textId == 0x21C || msgCtx->textId == 9 || msgCtx->textId == 0x4078 ||
                msgCtx->textId == 0x2015 || msgCtx->textId == 0x3040) {
                gSaveContext.unk_13EE = 0x32;
            }
            if (globalCtx->csCtx.state == 0) {
                osSyncPrintf(VT_FGCOL(GREEN));
                osSyncPrintf("day_time=%x  active_camera=%d  ", gSaveContext.cutsceneIndex, globalCtx->activeCamera);

                if (msgCtx->textId != 0x2061 && msgCtx->textId != 0x2025 && msgCtx->textId != 0x208C &&
                    ((msgCtx->textId < 0x88D || msgCtx->textId >= 0x893) || msgCtx->choiceIndex != 0) &&
                    (msgCtx->textId != 0x3055 && gSaveContext.cutsceneIndex < 0xFFF0)) {
                    osSyncPrintf("=== day_time=%x ", ((void)0, gSaveContext.cutsceneIndex));
                    if (globalCtx->activeCamera == 0) {
                        if (gSaveContext.unk_13EE == 0 || gSaveContext.unk_13EE == 1 || gSaveContext.unk_13EE == 2) {
                            gSaveContext.unk_13EE = 0x32;
                        }
                        gSaveContext.unk_13EA = 0;
                        Interface_ChangeAlpha(gSaveContext.unk_13EE);
                    }
                }
            }
            osSyncPrintf(VT_RST);
            msgCtx->msgLength = 0;
            msgCtx->msgMode = MSGMODE_UNK_00;
            interfaceCtx->unk_1FA = interfaceCtx->unk_1FC = 0;
            msgCtx->stateTimer = 0;
            msgCtx->textId = msgCtx->stateTimer;

            if (msgCtx->unk_E3E4 == 0x40) {
                msgCtx->unk_E3E4 = 0;
                globalCtx->msgCtx.unk_E3EE = 2;
            } else {
                msgCtx->unk_E3E4 = 0;
            }
            if ((s32)(gSaveContext.inventory.questItems & 0xF0000000) == 0x40000000) {
                gSaveContext.inventory.questItems ^= 0x40000000;
                gSaveContext.healthCapacity += 0x10;
                gSaveContext.health += 0x10;
            }
            if (msgCtx->unk_E3F0 != 0x31) {
                if (sLastPlayedSong == OCARINA_SONG_SARIAS) {
                    //! @bug The last played song is not unset often, and if something interrupts the message system
                    //       before it reaches this point after playing Saria's song, the song will be "stored".
                    //       Later, if the ocarina has not been played and another textbox is closed, this handling
                    //       for Saria's song will be carried out.
                    player->naviTextId = -0xE0;
                    player->naviActor->flags |= 0x10000;
                }
                if (msgCtx->unk_E3F0 == 0x29 &&
                    (globalCtx->msgCtx.unk_E3EE == 1 || globalCtx->msgCtx.unk_E3EE == 0xB)) {
                    globalCtx->msgCtx.unk_E3EE = 4;
                    if (msgCtx->unk_E3F2 == 9) {
                        globalCtx->msgCtx.unk_E3EE = 1;
                    }
                }
            }
            sLastPlayedSong = 0xFF;
            osSyncPrintf("OCARINA_MODE=%d   chk_ocarina_no=%d\n", globalCtx->msgCtx.unk_E3EE, msgCtx->unk_E3F2);
            break;
        case MSGMODE_UNK_37:
            break;
        default:
            msgCtx->unk_E410 = 0xFF;
            break;
    }
}

void Message_SetTables(void) {
    sNesMessageEntryTablePtr = sNesMessageEntryTable;
    sGerMessageEntryTablePtr = sGerMessageEntryTable;
    sFraMessageEntryTablePtr = sFraMessageEntryTable;
    sStaffMessageEntryTablePtr = sStaffMessageEntryTable;
}

// This appears to be file padding
UNK_TYPE D_80153D7C = 0x00000000;

// This should be part of z_game_over.c, but cannot be moved there as the entire
// late_rodata section of this file is in the way
s16 D_80153D80 = 0x0000;
