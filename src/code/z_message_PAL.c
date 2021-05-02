#include "global.h"
#include "message_data_static.h"
#include "vt.h"
#include "textures/parameter_static/parameter_static.h"

s16 D_8014B2F0 = 0;

u8 D_8014B2F4 = 0;

s16 D_8014B2F8 = 0;

s16 D_8014B2FC = 0;

u8 D_8014B300 = 0;

u16 D_8014B304 = 0; // next textid

s16 D_8014B308 = 0; // credits text mode

UNK_TYPE D_8014B30C = 0;

s16 D_8014B310 = 0xFF; // last played song?

s16 D_8014B314 = 0; // has sun's song

s16 D_8014B318 = 0;

u16 D_8014B31C = 0;

MessageTableEntry D_8014B320[] = {
    #define DECLARE_MESSAGE(textId, type, yPos, nesMessage, gerMessage, fraMessage) \
        { textId, (_SHIFTL(type, 4, 8) | _SHIFTL(yPos, 0, 8)), _message_##textId##_nes },
    #define DECLARE_MESSAGE_FFFC
    #include "text/declare_messages.h"
    #undef DECLARE_MESSAGE_FFFC
    #undef DECLARE_MESSAGE
    { 0xFFFF, 0, NULL },
};

const char* D_8014F548[] = {
    #define DECLARE_MESSAGE(textId, type, yPos, nesMessage, gerMessage, fraMessage) \
        _message_##textId##_ger,
    #include "text/declare_messages.h"
    #undef DECLARE_MESSAGE
    NULL,
};

const char* D_80151658[] = {
    #define DECLARE_MESSAGE(textId, type, yPos, nesMessage, gerMessage, fraMessage) \
        _message_##textId##_fra,
    #include "text/declare_messages.h"
    #undef DECLARE_MESSAGE
    NULL,
};

MessageTableEntry D_80153768[] = {
    #define DECLARE_MESSAGE(textId, type, yPos, staffMessage) \
        { textId, (_SHIFTL(type, 4, 8) | _SHIFTL(yPos, 0, 8)), _message_##textId##_staff },
    #include "text/declare_messages_staff.h"
    #undef DECLARE_MESSAGE
    { 0xFFFF, 0, NULL },
};

MessageTableEntry* D_801538F0 = &D_8014B320[0];
const char** D_801538F4 = &D_8014F548[0];
const char** D_801538F8 = &D_80151658[0];
MessageTableEntry* D_801538FC = &D_80153768[0];

Color_RBG16 D_80153900[] = {
    { 0x00FF, 0x00FF, 0x00FF }, 
    { 0x0032, 0x0014, 0x0000 }, 
    { 0x00FF, 0x003C, 0x0000 }, 
    { 0x00FF, 0x00FF, 0x00FF }, 
    { 0x00FF, 0x00FF, 0x00FF }, 
    { 0x00FF, 0x00FF, 0x00FF }, 
    { 0x00FF, 0x00FF, 0x00FF }, 
    { 0x00FF, 0x00FF, 0x00FF },
};

Color_RBG16 D_80153930[] = {
    { 0x0000, 0x0000, 0x0000 }, 
    { 0x00DC, 0x0096, 0x0000 }, 
    { 0x0000, 0x0000, 0x0000 }, 
    { 0x0000, 0x0000, 0x0000 },
};

s16 D_80153948[] = {
    0x0001, 0x0002,
};

u8 D_8015394C[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

s16 D_80153958[] = {
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
};

s16 D_8015396C[] = {
    0x0000, 0x0001, 0x0002, 0x0003, 0x0004, 0x0005, 0x0008, 0x0007, 0x0006, 0x0009, 0x000A, 0x000B,
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
    D_8015394C[0] = 0xFF;
    D_80153958[8] = 0;
    D_80153958[7] = D_80153958[8];
    D_80153958[6] = D_80153958[8];
    D_80153958[5] = D_80153958[8];
    D_80153958[4] = D_80153958[8];
    D_80153958[3] = D_80153958[8];
    D_80153958[2] = D_80153958[8];
    D_80153958[1] = D_80153958[8];
    D_80153958[0] = D_80153958[8];
    D_801759A8 = 0x50;
    D_801759AC = 0xFF;
    D_801759AA = 0x96;
    D_801759AE = 0xA;
    D_801759B2 = 0xA;
    D_801759B0 = 0xA;
    D_801759B4 = 0xFF;
    D_801759B8 = 0xFF;
    D_801759B6 = 0x32;
    D_801759BA = 0xA;
    D_801759BE = 0xA;
    D_801759BC = 0xA;
}

void func_80106AA8(GlobalContext* globalCtx) {
    MessageContext* msgCtx = &globalCtx->msgCtx;

    globalCtx->msgCtx.msgMode++;

    if (globalCtx->msgCtx.msgMode == MSGMODE_UNK_2E) {
        func_800ED858(1);
        msgCtx->unk_E2B8 = func_800EE3D4(); // Na_StopOcarinaMode
        msgCtx->unk_E2B8->pos = D_8014B2F8 = 0;
        func_800ECC04(0xA000); // Na_StartOcarinaSinglePlayCheck2
        msgCtx->unk_E3D2 = msgCtx->unk_E3D4;
    } else if (msgCtx->msgMode == MSGMODE_UNK_2C) {
        func_800ED858(6);
        msgCtx->unk_E2B8 = Audio_OcaGetDisplayStaff();
        msgCtx->unk_E2B8->pos = D_8014B2F8 = 0;
        func_800ED93C(0xE, 1);
        msgCtx->unk_E3E7 = 2;
    }
    func_801069B0();
}

u8 Message_ShouldAdvance(GlobalContext* globalCtx) {
    Input* curInput = &globalCtx->state.input[0];

    if (CHECK_BTN_ALL(curInput->press.button, BTN_A) || 
        CHECK_BTN_ALL(curInput->press.button, BTN_B) || 
        CHECK_BTN_ALL(curInput->press.button, BTN_CUP)) {
        Audio_PlaySoundGeneral(NA_SE_SY_MESSAGE_PASS, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
    return CHECK_BTN_ALL(curInput->press.button, BTN_A) || 
           CHECK_BTN_ALL(curInput->press.button, BTN_B) || 
           CHECK_BTN_ALL(curInput->press.button, BTN_CUP);
}

u8 Message_ShouldAdvanceSilent(GlobalContext* globalCtx) {
    Input* curInput = &globalCtx->state.input[0];

    return CHECK_BTN_ALL(curInput->press.button, BTN_A) || 
           CHECK_BTN_ALL(curInput->press.button, BTN_B) || 
           CHECK_BTN_ALL(curInput->press.button, BTN_CUP);
}

void func_80106CCC(GlobalContext* globalCtx) {
    MessageContext* msgCtx = &globalCtx->msgCtx;

    if (msgCtx->unk_E300 != 0) {
        msgCtx->unk_E3E7 = 2;
        msgCtx->msgMode = MSGMODE_UNK_36;
        msgCtx->unk_E3E4 = 0;
        Audio_PlaySoundGeneral(0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

void Message_HandleChoice(GlobalContext* globalCtx, u8 numChoices) {
    static s16 held = false;

    MessageContext* msgCtx = &globalCtx->msgCtx;
    Input* curInput = &globalCtx->state.input[0];

    if (curInput->rel.stick_y > 29 && !held) {
        held = true;
        msgCtx->choiceIndex--;
        if (msgCtx->choiceIndex > 128) {
            msgCtx->choiceIndex = 0;
        } else {
            Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    } else if (curInput->rel.stick_y < -29 && !held) {
        held = true;
        msgCtx->choiceIndex++;
        if (msgCtx->choiceIndex > numChoices) {
            msgCtx->choiceIndex = numChoices;
        } else {
            Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    } else if (ABS(curInput->rel.stick_y) < 30) {
        held = false;
    }
    msgCtx->textPosX = XREG(66);
    msgCtx->textPosY = (numChoices == 1) ? gGameInfo->data[msgCtx->choiceIndex + 0x584] : gGameInfo->data[msgCtx->choiceIndex + 0x583];
}

void Message_DrawTextChar(GlobalContext* globalCtx, void* textureImage, Gfx** p) {
    MessageContext* msgCtx = &globalCtx->msgCtx;
    Gfx* gfx = *p;
    s16 x = msgCtx->textPosX;
    s16 y = msgCtx->textPosY;

    gDPPipeSync(gfx++);

    sCharTexSize = (XREG(57) / 100.0f) * 16.0f;
    sCharTextureCoords = 1024.0f / (XREG(57) / 100.0f);

    gDPLoadTextureBlock_4b(gfx++, textureImage, 
                G_IM_FMT_I, 16, 16, 0, 
                G_TX_NOMIRROR | G_TX_CLAMP, 
                G_TX_NOMIRROR | G_TX_CLAMP, 
                G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    // Draw drop shadow
    if (msgCtx->textBoxType != BOX_NONE_NO_SHADOW) {
        gDPSetPrimColor(gfx++, 0, 0, 0, 0, 0, msgCtx->textColorAlpha);
        gSPTextureRectangle(gfx++, 
                    (x + XREG(60)) << 2, 
                    (y + XREG(60)) << 2, 
                    (x + XREG(60) + sCharTexSize) << 2, 
                    (y + XREG(60) + sCharTexSize) << 2, G_TX_RENDERTILE, 0, 0, sCharTextureCoords, sCharTextureCoords);
    }

    gDPPipeSync(gfx++);
    gDPSetPrimColor(gfx++, 0, 0, msgCtx->textColorRed, msgCtx->textColorGreen, msgCtx->textColorBlue, msgCtx->textColorAlpha);
    gSPTextureRectangle(gfx++, 
                (x) << 2, 
                (y) << 2, 
                (x + sCharTexSize) << 2, 
                (y + sCharTexSize) << 2, G_TX_RENDERTILE, 0, 0, sCharTextureCoords, sCharTextureCoords);
    *p = gfx;
}

// resizes textboxes when opening them
void func_80107244(MessageContext *msgCtx) {
    static f32 widthCoefficients[] = {
        1.2f, 1.5f, 1.8f, 2.0f, 2.1f, 2.2f, 2.1f, 2.0f,
    };
    static f32 heightCoefficients[] = {
        0.6f, 0.75f, 0.9f, 1.0f, 1.05f, 1.1f, 1.05f, 1.0f,
    };

    f32 temp_f0 = XREG(74) * (widthCoefficients[msgCtx->unk_E3E7] + widthCoefficients[msgCtx->unk_E3E7]);
    f32 temp_f14 = XREG(75) * heightCoefficients[msgCtx->unk_E3E7];
    f32 temp_f18 = XREG(76) / (widthCoefficients[msgCtx->unk_E3E7] + widthCoefficients[msgCtx->unk_E3E7]);
    f32 temp_f4 = XREG(77) / heightCoefficients[msgCtx->unk_E3E7];

    // Adjust y pos
    VREG(1) = XREG(73) + (XREG(73) - (s16)(XREG(73) * heightCoefficients[msgCtx->unk_E3E7] + 0.5f)) / 2;
    
    msgCtx->textboxColorAlphaCurrent += msgCtx->textboxColorAlphaTarget / 8;
    msgCtx->unk_E3E7++;
    if (msgCtx->unk_E3E7 == 8) {
        // Reached the end
        VREG(0) = XREG(72);
        VREG(1) = XREG(73);
        msgCtx->msgMode = MSGMODE_UNK_03;
        msgCtx->textboxColorAlphaCurrent = msgCtx->textboxColorAlphaTarget;
    }
    // Adjust width and height
    YREG(22) = (s16)(temp_f0 + 0.5f) / 2;
    YREG(23) = (s16)(temp_f14 + 0.5f);
    // Adjust texture coordinates
    YREG(16) = temp_f18 + 0.5f;
    YREG(17) = temp_f4 + 0.5f;
    // Adjust x pos
    VREG(0) = (XREG(72) + XREG(74)) - (YREG(22) / 2);
}

void Message_FindMessage(GlobalContext* globalCtx, u16 textId) {
    const char* foundSeg;
    const char* nextSeg;
    MessageTableEntry* messageTableEntry = D_801538F0;
    const char** languageSegmentTable;
    Font* font;
    const char* seg;

    if (gSaveContext.language == LANGUAGE_ENG) {
        seg = messageTableEntry->segment;

        while (messageTableEntry->textId != 0xFFFF) {
            font = &globalCtx->msgCtx.font;

            if (messageTableEntry->textId == textId) {
                foundSeg = messageTableEntry->segment;
                font->xy = messageTableEntry->typePos;
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
    } else {
        languageSegmentTable = (gSaveContext.language == LANGUAGE_GER) ? D_801538F4 : D_801538F8;
        seg = messageTableEntry->segment;

        while (messageTableEntry->textId != 0xFFFF) {
            font = &globalCtx->msgCtx.font;

            if (messageTableEntry->textId == textId) {
                foundSeg = *languageSegmentTable;
                font->xy = messageTableEntry->typePos;
                languageSegmentTable++;
                nextSeg = *languageSegmentTable;
                font->msgOffset = foundSeg - seg;
                font->msgLength = nextSeg - foundSeg;
                // Message found!!!
                osSyncPrintf(" メッセージが,見つかった！！！ = %x  (data=%x) (data0=%x) (data1=%x) (data2=%x) (data3=%x)\n",
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
    messageTableEntry = D_801538F0;

    if (gSaveContext.language == LANGUAGE_ENG) {
        foundSeg = messageTableEntry->segment;
        font->xy = messageTableEntry->typePos;
        messageTableEntry++;
        nextSeg = messageTableEntry->segment;
    } else {
        languageSegmentTable = (gSaveContext.language == LANGUAGE_GER) ? D_801538F4 : D_801538F8;
        foundSeg = *languageSegmentTable;
        font->xy = messageTableEntry->typePos;
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
    MessageTableEntry* messageTableEntry = D_801538FC;
    Font* font;

    seg = messageTableEntry->segment;
    while (messageTableEntry->textId != 0xFFFF) {
        font = &globalCtx->msgCtx.font;

        if (messageTableEntry->textId == textId) {
            foundSeg = messageTableEntry->segment;
            font->xy = messageTableEntry->typePos;
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
        case 1:
            if (msgCtx->textBoxType == BOX_WOODEN) { // orange
                msgCtx->textColorRed = 255;
                msgCtx->textColorGreen = 120;
                msgCtx->textColorBlue = 0;
            } else { // red
                msgCtx->textColorRed = 255;
                msgCtx->textColorGreen = 60;
                msgCtx->textColorBlue = 60;
            }
            break;
        case 2: // green
            if (msgCtx->textBoxType == BOX_WOODEN) {
                msgCtx->textColorRed = VREG(33);
                msgCtx->textColorGreen = VREG(34);
                msgCtx->textColorBlue = VREG(35);
            } else {
                msgCtx->textColorRed = VREG(36);
                msgCtx->textColorGreen = VREG(37);
                msgCtx->textColorBlue = VREG(38);
            }
            break;
        case 3:
            if (msgCtx->textBoxType == BOX_WOODEN) {
                msgCtx->textColorRed = 80;
                msgCtx->textColorGreen = 110;
                msgCtx->textColorBlue = 255;
            } else {
                msgCtx->textColorRed = 80;
                msgCtx->textColorGreen = 90;
                msgCtx->textColorBlue = 255;
            }
            break;
        case 4:
            if (msgCtx->textBoxType == BOX_WOODEN) {
                msgCtx->textColorRed = 90;
                msgCtx->textColorGreen = 180;
                msgCtx->textColorBlue = 255;
            } else if (msgCtx->textBoxType == BOX_NONE_NO_SHADOW) {
                msgCtx->textColorRed = 80;
                msgCtx->textColorGreen = 150;
                msgCtx->textColorBlue = 180;
            } else {
                msgCtx->textColorRed = 100;
                msgCtx->textColorGreen = 180;
                msgCtx->textColorBlue = 255;
            }
            break;
        case 5:
            if (msgCtx->textBoxType == BOX_WOODEN) {
                msgCtx->textColorRed = 210;
                msgCtx->textColorGreen = 100;
                msgCtx->textColorBlue = 255;
            } else {
                msgCtx->textColorRed = 255;
                msgCtx->textColorGreen = 150;
                msgCtx->textColorBlue = 180;
            }
            break;
        case 6:
            if (msgCtx->textBoxType == BOX_WOODEN) {
                msgCtx->textColorRed = 255;
                msgCtx->textColorGreen = 255;
                msgCtx->textColorBlue = 30;
            } else {
                msgCtx->textColorRed = 225;
                msgCtx->textColorGreen = 255;
                msgCtx->textColorBlue = 50;
            }
            break;
        case 7:
            msgCtx->textColorRed = msgCtx->textColorGreen = msgCtx->textColorBlue = 0;
            break;
        case 0: // black if type 5, else white
        default:
            if (msgCtx->textBoxType == BOX_NONE_NO_SHADOW) {
                msgCtx->textColorRed = msgCtx->textColorGreen = msgCtx->textColorBlue = 0;
            } else {
                msgCtx->textColorRed =  msgCtx->textColorGreen = msgCtx->textColorBlue = 255;
            }
            break;
    }
}

void Message_DrawTextboxEndIcon(GlobalContext* globalCtx, Gfx** p, s16 x, s16 y) {
    static Color_RBG16 D_801539C8[] = {
        { 0, 200, 80 },
        { 50, 255, 130 },
    };
    static Color_RBG16 D_801539D4[] = {
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

    if (D_8014B308) {
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

    gDPLoadTextureBlock_4b(gfx++, iconTexture, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    sCharTexSize = 16.0f * ((f32)XREG(57) / 100.0f);
    sCharTextureCoords = 1024.0f / ((f32)XREG(57) / 100.0f);

    gSPTextureRectangle(gfx++, x << 2, y << 2, (x + sCharTexSize) << 2, (y + sCharTexSize) << 2,
                        G_TX_RENDERTILE, 0, 0, sCharTextureCoords, sCharTextureCoords);

    msgCtx->unk_E3E7++;

    *p = gfx;
}

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

u16 func_801080B4(GlobalContext* globalCtx, u16 arg1, Gfx** p, u16 i) {
    s32 pad;
    Gfx* gfx = *p;
    MessageContext* msgCtx = &globalCtx->msgCtx;

    // clang-format off
    // same line required to match
    if (msgCtx->msgMode == MSGMODE_UNK_06) { Audio_PlaySoundGeneral(0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8); }
    // clang-format on

    gDPPipeSync(gfx++);
    gDPSetCombineMode(gfx++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(gfx++, 0, 0, 255, 255, 255, msgCtx->textColorAlpha);

    if (arg1 >= 102) {
        gDPLoadTextureBlock(gfx++, (u32)msgCtx->textboxSegment + 0x1000, 
                    G_IM_FMT_RGBA, G_IM_SIZ_32b, 24, 24, 0, 
                    G_TX_NOMIRROR | G_TX_WRAP, 
                    G_TX_NOMIRROR | G_TX_WRAP, 
                    G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    } else {
        gDPLoadTextureBlock(gfx++, (u32)msgCtx->textboxSegment + 0x1000, 
                    G_IM_FMT_RGBA, G_IM_SIZ_32b, 32, 32, 0, 
                    G_TX_NOMIRROR | G_TX_WRAP, 
                    G_TX_NOMIRROR | G_TX_WRAP, 
                    G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    }
    gSPTextureRectangle(gfx++, 
                    (msgCtx->textPosX + YREG(71)) << 2, 
                    YREG(72) << 2, 
                    (msgCtx->textPosX + YREG(71) + YREG(75)) << 2, 
                    (YREG(72) + YREG(75)) << 2, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
    gDPPipeSync(gfx++);
    gDPSetCombineLERP(gfx++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0);

    msgCtx->textPosX += 0x20;

    i++;
    *p = gfx;

    return i;
}

void func_801083F8(GlobalContext* globalCtx) {
    MessageContext* msgCtx = &globalCtx->msgCtx;

    if (globalCtx->msgCtx.msgMode == MSGMODE_UNK_06) {
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
            msgCtx->unk_E2B8 = Audio_OcaGetDisplayStaff();
            D_8014B2F8 = D_8014B2FC = 0;
            msgCtx->unk_E2B8->pos = D_8014B2F8;
            func_801069B0();
            msgCtx->unk_E3E7 = 3;
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
            msgCtx->unk_E2B8 = Audio_OcaGetDisplayStaff();
            D_8014B2F8 = D_8014B2FC = 0;
            msgCtx->unk_E2B8->pos = D_8014B2F8;
            func_801069B0();
            msgCtx->unk_E3E7 = 3;
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

void func_801086B0(GlobalContext *globalCtx, Gfx **gfxP) {
    MessageContext *msgCtx = &globalCtx->msgCtx;
    u16 lookAheadCharacter;
    u8 character;
    u16 j;
    u16 i;
    u16 new_var;
    u16 sp128;
    Font* font = &globalCtx->msgCtx.font;
    Gfx *gfx = *gfxP;

    globalCtx->msgCtx.textPosX = XREG(54);

    if (D_8014B308 == 0) {
        msgCtx->textPosY = XREG(55);
    } else {
        msgCtx->textPosY = YREG(1);
    }

    if (msgCtx->textBoxType == BOX_NONE_NO_SHADOW) {
        msgCtx->textColorRed = msgCtx->textColorGreen = msgCtx->textColorBlue = 0;
    } else {
        msgCtx->textColorRed = msgCtx->textColorGreen = msgCtx->textColorBlue = 255;
    }

    msgCtx->unk_E3D0 = 0;
    sp128 = 0;

    for (i = 0; i < msgCtx->unk_E3D2; i++) {
        character = msgCtx->unk_E306[i];

        switch(character) {
            case MESSAGE_NEWLINE:
                msgCtx->textPosX = XREG(54);
                if (msgCtx->unk_E3E6 == 1 || msgCtx->unk_E3E6 == 3) {
                    msgCtx->textPosX += 0x20;
                }
                if (msgCtx->unk_E3E6 == 2 && msgCtx->textPosY != XREG(55)) {
                    msgCtx->textPosX += 0x20;
                }
                msgCtx->textPosY += XREG(56);
                break;
            case MESSAGE_COLOR:
                Message_SetTextColor(msgCtx, msgCtx->unk_E306[++i] & 0xF);
                break;
            case ' ':
                msgCtx->textPosX += 6;
                break;
            case MESSAGE_BOX_BREAK:
                if (msgCtx->msgMode == MSGMODE_UNK_06) {
                    if (D_8014B300 == 0) {
                        Audio_PlaySoundGeneral(0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                        msgCtx->msgMode = MSGMODE_UNK_34;
                        Font_LoadMessageBoxEndIcon(font, MESSAGE_ICON_TRIANGLE);
                    } else {
                        msgCtx->msgMode = MSGMODE_UNK_04;
                        msgCtx->unk_E3D6 = 0;
                        msgCtx->unk_E3CE++;
                    }
                }
                *gfxP = gfx;
                return;
            case MESSAGE_SHIFT:
                msgCtx->textPosX += msgCtx->unk_E306[++i];
                break;
            case MESSAGE_TEXTID:
                msgCtx->unk_E3E4 = 0x30;
                if (msgCtx->msgMode == MSGMODE_UNK_06) {
                    Audio_PlaySoundGeneral(0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    msgCtx->msgMode = MSGMODE_UNK_35;
                    Font_LoadMessageBoxEndIcon(font, MESSAGE_ICON_TRIANGLE);
                }
                *gfxP = gfx;
                return;
            case MESSAGE_QUICKTEXT_ENABLE:
                if (i + 1 == msgCtx->unk_E3D2 && 
                    (msgCtx->msgMode == MSGMODE_UNK_06 || (msgCtx->msgMode >= MSGMODE_UNK_09 && msgCtx->msgMode < MSGMODE_UNK_21))) {
                    j = i;
                    while (true) {
                        lookAheadCharacter = msgCtx->unk_E306[j];
                        if (lookAheadCharacter == MESSAGE_SHIFT) {
                            j += 2;
                        } else if ((lookAheadCharacter != MESSAGE_QUICKTEXT_DISABLE) && 
                            (lookAheadCharacter != MESSAGE_PERSISTENT) && 
                            (lookAheadCharacter != MESSAGE_EVENT) && 
                            (lookAheadCharacter != MESSAGE_BOX_BREAK_DELAYED) && 
                            (lookAheadCharacter != MESSAGE_AWAIT_BUTTON_PRESS) && 
                            (lookAheadCharacter != MESSAGE_BOX_BREAK) && 
                            (lookAheadCharacter != MESSAGE_END)) {
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
                    if (msgCtx->msgMode == MSGMODE_UNK_06) {
                        msgCtx->msgMode = MSGMODE_UNK_07;
                        Font_LoadMessageBoxEndIcon(font, MESSAGE_ICON_TRIANGLE);
                    }
                    *gfxP = gfx;
                    return;
                }
                break;
            case MESSAGE_BOX_BREAK_DELAYED:
                if (msgCtx->msgMode == MSGMODE_UNK_06) {
                    msgCtx->unk_E3E7 = msgCtx->unk_E306[++i];
                    msgCtx->msgMode = MSGMODE_UNK_08;
                }
                *gfxP = gfx;
                return;
            case MESSAGE_FADE2:
                if (msgCtx->msgMode == MSGMODE_UNK_06) {
                    msgCtx->msgMode = MSGMODE_UNK_35;
                    msgCtx->unk_E3E4 = 0x60;
                    osSyncPrintf("タイマー (%x) (%x)", msgCtx->unk_E306[i + 1], msgCtx->unk_E306[i + 2]); // timer
                    msgCtx->unk_E3E7 = msgCtx->unk_E306[++i] << 8;
                    msgCtx->unk_E3E7 |= msgCtx->unk_E306[++i];
                    osSyncPrintf("合計wct=%x(%d)\n", msgCtx->unk_E3E7, msgCtx->unk_E3E7); // total wct
                }
                *gfxP = gfx;
                return;
            case 18:
                if (msgCtx->msgMode == MSGMODE_UNK_06 && D_8014B318 == 0) {
                    D_8014B318 = 1;
                    osSyncPrintf("サウンド（ＳＥ）\n"); // sfx
                    new_var = msgCtx->unk_E306[i + 1] << 8;
                    Audio_PlaySoundGeneral((new_var) | msgCtx->unk_E306[i + 2], 
                                    &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                }
                i += 2;
                break;
            case 19:
                i = func_801080B4(globalCtx, msgCtx->unk_E306[i + 1], &gfx, i);
                break;
            case 21:
                // clang-format off
                if (msgCtx->msgMode == MSGMODE_UNK_06) { Audio_PlaySoundGeneral(0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8); }
                // clang-format on
                gDPPipeSync(gfx++);
                gDPSetCombineMode(gfx++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
                gDPSetPrimColor(gfx++, 0, 0, D_80153930[msgCtx->unk_E3F9].r, D_80153930[msgCtx->unk_E3F9].g, D_80153930[msgCtx->unk_E3F9].b, msgCtx->textColorAlpha);

                gDPLoadTextureBlock_4b(gfx++, ((u32)msgCtx->textboxSegment + 0x1000), 
                            G_IM_FMT_I, 96, 48, 0, 
                            G_TX_NOMIRROR | G_TX_WRAP, 
                            G_TX_NOMIRROR | G_TX_WRAP, 
                            G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                gSPTextureRectangle(gfx++, 
                                (msgCtx->textPosX + 1) << 2,    (XREG(61) + D_80153948[msgCtx->unk_E3FA]) << 2, 
                                (msgCtx->textPosX + 0x61) << 2, (XREG(61) + D_80153948[msgCtx->unk_E3FA] + 0x30) << 2, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);

                gDPLoadTextureBlock_4b(gfx++, ((u32)msgCtx->textboxSegment + 0x1900), 
                            G_IM_FMT_I, 96, 48, 0, 
                            G_TX_NOMIRROR | G_TX_WRAP, 
                            G_TX_NOMIRROR | G_TX_WRAP, 
                            G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                gSPTextureRectangle(gfx++, 
                                (msgCtx->textPosX + 0x61) << 2, (XREG(61) + D_80153948[msgCtx->unk_E3FA]) << 2, 
                                (msgCtx->textPosX + 0xC2) << 2, (XREG(61) + D_80153948[msgCtx->unk_E3FA] + 0x30) << 2, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);

                gDPPipeSync(gfx++);
                gDPSetPrimColor(gfx++, 0, 0, D_80153900[msgCtx->unk_E3F8].r, D_80153900[msgCtx->unk_E3F8].g, D_80153900[msgCtx->unk_E3F8].b, msgCtx->textColorAlpha);

                gDPLoadTextureBlock_4b(gfx++, ((u32)msgCtx->textboxSegment + 0x1000), 
                            G_IM_FMT_I, 96, 48, 0, 
                            G_TX_NOMIRROR | G_TX_WRAP, 
                            G_TX_NOMIRROR | G_TX_WRAP, 
                            G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                gSPTextureRectangle(gfx++, 
                                msgCtx->textPosX << 2, XREG(61) << 2, 
                                (msgCtx->textPosX + 0x60) << 2, (XREG(61) + 0x30) << 2, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);

                gDPLoadTextureBlock_4b(gfx++, ((u32)msgCtx->textboxSegment + 0x1900), 
                            G_IM_FMT_I, 96, 48, 0, 
                            G_TX_NOMIRROR | G_TX_WRAP, 
                            G_TX_NOMIRROR | G_TX_WRAP, 
                            G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                gSPTextureRectangle(gfx++, 
                                (msgCtx->textPosX + 0x60) << 2, XREG(61) << 2, 
                                (msgCtx->textPosX + 0xC0) << 2, (XREG(61) + 0x30) << 2, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);

                gDPPipeSync(gfx++);
                gDPSetCombineLERP(gfx++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0);

                msgCtx->textPosX += 0x20;
                break;
            case 20:
                msgCtx->unk_E3EA = msgCtx->unk_E306[++i];
                break;
            case 26:
                msgCtx->unk_E3D6 = 1;
                break;
            case MESSAGE_TWO_CHOICE:
                msgCtx->unk_E3E4 = 0x10;
                if (msgCtx->msgMode == MSGMODE_UNK_06) {
                    msgCtx->unk_E2FA = msgCtx->textId;
                    msgCtx->unk_E3E7 = 4;
                    msgCtx->choiceIndex = 0;
                    Font_LoadMessageBoxEndIcon(font, MESSAGE_ICON_ARROW);
                }
                break;
            case MESSAGE_THREE_CHOICE:
                msgCtx->unk_E3E4 = 0x20;
                if (msgCtx->msgMode == MSGMODE_UNK_06) {
                    msgCtx->unk_E2FA = msgCtx->textId;
                    msgCtx->unk_E3E7 = 4;
                    msgCtx->choiceIndex = 0;
                    Font_LoadMessageBoxEndIcon(font, MESSAGE_ICON_ARROW);
                }
                break;
            case 2:
                if (msgCtx->msgMode == MSGMODE_UNK_06) {
                    msgCtx->msgMode = MSGMODE_UNK_35;
                    if (msgCtx->unk_E3E4 == 0) {
                        Audio_PlaySoundGeneral(NA_SE_SY_MESSAGE_END, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                        Font_LoadMessageBoxEndIcon(font, MESSAGE_ICON_SQUARE);
                        if (globalCtx->csCtx.state == 0) {
                            Interface_SetDoAction(globalCtx, 3);
                        }
                    }
                }
                *gfxP = gfx;
                return;
            case 16:
                if (i + 1 == msgCtx->unk_E3D2) {
                    func_801083F8(globalCtx);
                    *gfxP = gfx;
                    return;
                }
                break;
            case 14:
                if (msgCtx->msgMode == MSGMODE_UNK_06) {
                    msgCtx->msgMode = MSGMODE_UNK_35;
                    msgCtx->unk_E3E4 = 0x60;
                    msgCtx->unk_E3E7 = msgCtx->unk_E306[++i];
                    Font_LoadMessageBoxEndIcon(font, MESSAGE_ICON_SQUARE);
                    if (globalCtx->csCtx.state == 0) {
                        Interface_SetDoAction(globalCtx, 3);
                    }
                }
                *gfxP = gfx;
                return;
            case MESSAGE_PERSISTENT:
                if (msgCtx->msgMode == MSGMODE_UNK_06) {
                    Audio_PlaySoundGeneral(0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    msgCtx->msgMode = MSGMODE_UNK_35;
                    msgCtx->unk_E3E4 = 0x40;
                }
                *gfxP = gfx;
                return;
            case MESSAGE_EVENT:
                if (msgCtx->msgMode == MSGMODE_UNK_06) {
                    msgCtx->msgMode = MSGMODE_UNK_35;
                    msgCtx->unk_E3E4 = 0x50;
                    Font_LoadMessageBoxEndIcon(font, MESSAGE_ICON_TRIANGLE);
                    Audio_PlaySoundGeneral(NA_SE_SY_MESSAGE_END, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                }
                *gfxP = gfx;
                return;
            default:
                if (msgCtx->msgMode == MSGMODE_UNK_06 && i + 1 == msgCtx->unk_E3D2 && msgCtx->unk_E3E8 == msgCtx->unk_E3EA) {
                    Audio_PlaySoundGeneral(0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                }
                Message_DrawTextChar(globalCtx, &font->unk_8[sp128], &gfx);
                sp128 += FONT_CHAR_TEX_SIZE;

                msgCtx->textPosX += (s32)(sFontWidths[character - '\x20'] * (XREG(57) / 100.0f));
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

void Message_LoadItemIcon(GlobalContext* globalCtx, u16 itemId, s16 arg2) {
    MessageContext* msgCtx = &globalCtx->msgCtx;
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;

    if (itemId == ITEM_DUNGEON_MAP) {
        interfaceCtx->unk_140[30] = 0xFF;
        interfaceCtx->unk_140[31] = 0xFF;
    }
    if (itemId < ITEM_MEDALLION_FOREST) {
        YREG(71) = XREG(54) - D_80153C40[gSaveContext.language];
        YREG(72) = arg2 + 6;
        YREG(75) = 32;
        DmaMgr_SendRequest1((u32)msgCtx->textboxSegment + 0x1000, 
                            (u32)_icon_item_staticSegmentRomStart + (itemId * 0x1000), 
                            0x1000, "../z_message_PAL.c", 1473);
        // Item 32-0
        osSyncPrintf("アイテム32-0\n");
    } else {
        YREG(71) = XREG(54) - D_80153C48[gSaveContext.language];
        YREG(72) = arg2 + 10;
        YREG(75) = 24;
        DmaMgr_SendRequest1((u32)msgCtx->textboxSegment + 0x1000, 
                            (u32)_icon_item_24_staticSegmentRomStart + 0xFFFC6A00 + (itemId * 0x900), 
                            0x900, "../z_message_PAL.c", 1482);
        // Item 24＝%d (%d) {%d}
        osSyncPrintf("アイテム24＝%d (%d) {%d}\n", itemId, itemId - ITEM_KOKIRI_EMERALD, 0x54);
    }
    msgCtx->unk_E3CE++;
    msgCtx->unk_E3E6 = 1;
}

// Message_Decode
#ifdef NON_MATCHING
// Saved registers swapped, regalloc at the end, stack
void func_80109B3C(GlobalContext *globalCtx) {
    u8 temp_s2;
    u8 phi_s1;
    u8 temp_var;
    s32 phi_s1_2;
    s16 new_var;
    u16 phi_s0_3;
    s16 phi_s3;
    s16 sp86 = 0;
    f32 temp_f0_2;
    s16 sp7C[4]; // digits
    MessageContext *msgCtx = &globalCtx->msgCtx;
    Font *font = &globalCtx->msgCtx.font;
    s32 phi_s5 = 0;
    s16 phi_s4;
    s16 phi_s6 = 0;

    globalCtx->msgCtx.unk_E3E8 = 0;
    globalCtx->msgCtx.unk_E3D6 = globalCtx->msgCtx.unk_E3EA = globalCtx->msgCtx.unk_E3E8 = 0;
    D_8014B2F0 = 0;

    while (true) {
        temp_s2 = msgCtx->unk_E306[phi_s6] = font->msgBuf[msgCtx->unk_E3CE];
        if (1) {}
        phi_s1 = temp_s2;

        if (temp_s2 == 4 || temp_s2 == 7 || temp_s2 == 0xC || temp_s2 == 0xB || temp_s2 == 0x2) {
            msgCtx->msgMode = MSGMODE_UNK_06;
            msgCtx->unk_E3D2 = 1;
            XREG(55) = VREG(1) + 8;
            osSyncPrintf("ＪＪ＝%d\n", sp86);
            if (msgCtx->textBoxType != 4) {
                if (sp86 == 0) {
                    XREG(55) = (u16)(VREG(1) + 0x1A);
                } else if (sp86 == 1) {
                    XREG(55) = (u16)(VREG(1) + 0x14);
                } else if (sp86 == 2) {
                    XREG(55) = (u16)(VREG(1) + 0x10);
                }
            }
            if (phi_s1 == 7) {
                osSyncPrintf("NZ_NEXTMSG=%x, %x, %x\n", font->msgBuf[msgCtx->unk_E3CE], font->msgBuf[msgCtx->unk_E3CE + 1], font->msgBuf[msgCtx->unk_E3CE + 2]);
                temp_s2 = font->msgBuf[msgCtx->unk_E3CE + 1];
                msgCtx->unk_E306[++phi_s6] = temp_s2;
                msgCtx->unk_E306[++phi_s6] = font->msgBuf[msgCtx->unk_E3CE + 2];
                phi_s0_3 = temp_s2 << 8;
                if (1) {}
                D_8014B304 = msgCtx->unk_E306[phi_s6] | phi_s0_3;
            }
            if (temp_s2) {}
            if (phi_s1 == 0xC) {
                msgCtx->unk_E306[++phi_s6] = font->msgBuf[msgCtx->unk_E3CE + 1];
                msgCtx->unk_E3CE += 2;
            }
            msgCtx->unk_E3D4 = phi_s6;
            if (D_8014B300 != 0) {
                msgCtx->unk_E3D2 = msgCtx->unk_E3D4;
            }
            break;
        } else if (temp_s2 == 0xF) {
            for (phi_s4 = 8; phi_s4 > 0; phi_s4--) {
                if (gSaveContext.playerName[phi_s4 - 1] != 0x3E) {
                    break;
                }
            }
            osSyncPrintf("\n名前 ＝ ");
            for (phi_s3 = 0; phi_s3 < phi_s4; phi_s3++) {
                phi_s1 = gSaveContext.playerName[phi_s3];
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
                if (phi_s1 != 0x20) {
                    Font_LoadChar(font, phi_s1 - 0x20, phi_s5);
                    phi_s5 += 0x80;
                }
                osSyncPrintf("%x ", phi_s1);
                msgCtx->unk_E306[phi_s6] = phi_s1;
                phi_s6++;
            }
            phi_s6--;
        } else if (temp_s2 == 0x16 || temp_s2 == 0x17) {
            osSyncPrintf("\nＥＶＥＮＴタイマー ＝ ");
            sp7C[0] = sp7C[1] = sp7C[2] = 0;
            if (temp_s2 == 0x17) {
                sp7C[3] = gSaveContext.timer1Value;
            } else {
                sp7C[3] = gSaveContext.timer2Value;
            }

            while (sp7C[3] >= 60) {
                sp7C[1]++;
                if (sp7C[1] >= 10) {
                    sp7C[0]++;
                    sp7C[1] -= 10;
                }
                sp7C[3] -= 60;
            }
            while (sp7C[3] >= 10) {
                sp7C[2]++;
                sp7C[3] -= 10;
            }

            for (phi_s3 = 0; phi_s3 < 4; phi_s3++) {
                Font_LoadChar(font, sp7C[phi_s3] + 0x10, phi_s5);
                phi_s5 += 0x80;
                msgCtx->unk_E306[phi_s6] = sp7C[phi_s3] + 0x30;
                phi_s6++;
                if (phi_s3 == 1) {
                    Font_LoadChar(font, 2, phi_s5);
                    phi_s5 += 0x80;
                    msgCtx->unk_E306[phi_s6] = 0x22;
                    phi_s6++;
                } else if (phi_s3 == 3) {
                    Font_LoadChar(font, 2, phi_s5);
                    phi_s5 += 0x80;
                    msgCtx->unk_E306[phi_s6] = 0x22;
                }
            }
        } else if (temp_s2 == 0x18) {
            osSyncPrintf("\n流鏑馬スコア ＝ %d\n", gSaveContext.minigameScore);
            sp7C[0] = sp7C[1] = sp7C[2] = 0;
            sp7C[3] = gSaveContext.minigameScore;

            while (sp7C[3] >= 1000) {
                sp7C[0]++;
                sp7C[3] -= 1000;
            }
            while (sp7C[3] >= 100) {
                sp7C[1]++;
                sp7C[3] -= 100;
            }
            while (sp7C[3] >= 10) {
                sp7C[2]++;
                sp7C[3] -= 10;
            }

            phi_s1_2 = 0;
            for (phi_s3 = 0; phi_s3 < 4; phi_s3++) {
                if (phi_s3 == 3 || sp7C[phi_s3] != 0) {
                    phi_s1_2 = 1;
                }
                if (phi_s1_2 != 0) {
                    Font_LoadChar(font, sp7C[phi_s3] + 0x10, phi_s5);
                    msgCtx->unk_E306[phi_s6] = sp7C[phi_s3] + 0x30;
                    phi_s5 += 0x80;
                    phi_s6++;
                }
            }
            phi_s6--;
        } else if (temp_s2 == 0x19) {
            osSyncPrintf("\n金スタ合計数 ＝ %d", gSaveContext.inventory.gsTokens);
            sp7C[0] = sp7C[1] = 0;
            sp7C[2] = gSaveContext.inventory.gsTokens;

            while (sp7C[2] >= 100) {
                sp7C[0]++;
                sp7C[2] -= 100;
            }
            while (sp7C[2] >= 10) {
                sp7C[1]++;
                sp7C[2] -= 10;
            }

            phi_s1_2 = 0;
            for (phi_s3 = 0; phi_s3 < 3; phi_s3++) {
                if (phi_s3 == 2 || sp7C[phi_s3] != 0) {
                    phi_s1_2 = 1;
                }
                if (phi_s1_2 != 0) {
                    Font_LoadChar(font, sp7C[phi_s3] + 0x10, phi_s5);
                    msgCtx->unk_E306[phi_s6] = sp7C[phi_s3] + 0x30;
                    phi_s5 += 0x80;
                    osSyncPrintf("%x(%x) ", sp7C[phi_s3] + 0x10, sp7C[phi_s3]);
                    phi_s6++;
                }
            }
            phi_s6--;
        } else if (temp_s2 == 0x1D) {
            osSyncPrintf("\n釣り堀魚サイズ ＝ ");
            sp7C[0] = 0;
            sp7C[1] = gSaveContext.minigameScore;

            while (sp7C[1] >= 10) {
                sp7C[0]++;
                sp7C[1] -= 10;
            }

            for (phi_s3 = 0; phi_s3 < 2; phi_s3++) {
                if (phi_s3 == 1 || sp7C[phi_s3] != 0) {
                    Font_LoadChar(font, sp7C[phi_s3] + 0x10, phi_s5);
                    msgCtx->unk_E306[phi_s6] = sp7C[phi_s3] + 0x30;
                    phi_s5 += 0x80;
                    osSyncPrintf("%x(%x) ", sp7C[phi_s3] + 0x10, sp7C[phi_s3]);
                    phi_s6++;
                }
            }
            phi_s6--;
        } else if (temp_s2 == 0x1E) {
            phi_s0_3 = HIGH_SCORE(font->msgBuf[++msgCtx->unk_E3CE]);
            osSyncPrintf("ランキング＝%d\n", font->msgBuf[msgCtx->unk_E3CE]);
            if ((font->msgBuf[msgCtx->unk_E3CE] & 0xFF) == 2) {
                if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
                    phi_s0_3 &= 0x7F;
                } else {
                    osSyncPrintf("HI_SCORE( kanfont->mbuff.nes_mes_buf[message->rdp] & 0xff000000 ) = %x\n", 
                                HIGH_SCORE(((u16*)font->msgBuf)[msgCtx->unk_E3CE] & 0xFF000000));
                    phi_s0_3 = ((HIGH_SCORE(font->msgBuf[msgCtx->unk_E3CE]) & 0xFF000000) >> 0x18) & 0x7F;
                }
                phi_s0_3 = SQ((f32)phi_s0_3) * 0.0036f + 0.5f;
                osSyncPrintf("score=%d\n", phi_s0_3);
            }
            switch (font->msgBuf[msgCtx->unk_E3CE] & 0xFF) {
                case HS_HBA:
                case HS_POE_POINTS:
                case HS_FISHING:
                    sp7C[0] = sp7C[1] = sp7C[2] = 0;
                    sp7C[3] = phi_s0_3;

                    while (sp7C[3] >= 1000) {
                        sp7C[0]++;
                        sp7C[3] -= 1000;
                    }
                    while (sp7C[3] >= 100) {
                        sp7C[1]++;
                        sp7C[3] -= 100;
                    }
                    while (sp7C[3] >= 10) {
                        sp7C[2]++;
                        sp7C[3] -= 10;
                    }
                    if (temp_s2) {}

                    phi_s1_2 = 0;
                    for (phi_s3 = 0; phi_s3 < 4; phi_s3++) {
                        if (phi_s3 == 3 || sp7C[phi_s3] != 0) {
                            phi_s1_2 = 1;
                        }
                        if (phi_s1_2 != 0) {
                            Font_LoadChar(font, sp7C[phi_s3] + 0x10, phi_s5);
                            msgCtx->unk_E306[phi_s6] = sp7C[phi_s3] + 0x30;
                            phi_s5 += 0x80;
                            phi_s6++;
                        }
                    }
                    phi_s6--;
                    break;
                case HS_UNK_05:
                    break;
                case HS_HORSE_RACE:
                case HS_MARATHON:
                case HS_DAMPE_RACE:
                    sp7C[0] = sp7C[1] = sp7C[2] = 0;
                    sp7C[3] = phi_s0_3;
                    
                    while (sp7C[3] >= 60) {
                        sp7C[1]++;
                        if (sp7C[1] >= 10) {
                            sp7C[0]++;
                            sp7C[1] -= 10;
                        }
                        sp7C[3] -= 60;
                    }
                    while (sp7C[3] >= 10) {
                        sp7C[2]++;
                        sp7C[3] -= 10;
                    }

                    for (phi_s3 = 0; phi_s3 < 4; phi_s3++) {
                        Font_LoadChar(font, sp7C[phi_s3] + 0x10, phi_s5);
                        phi_s5 += 0x80;
                        msgCtx->unk_E306[phi_s6] = sp7C[phi_s3] + 0x30;
                        phi_s6++;
                        if (phi_s3 == 1) {
                            Font_LoadChar(font, 2, phi_s5);
                            phi_s5 += 0x80;
                            msgCtx->unk_E306[phi_s6] = 0x22;
                            phi_s6++;
                        } else if (phi_s3 == 3) {
                            Font_LoadChar(font, 2, phi_s5);
                            phi_s5 += 0x80;
                            msgCtx->unk_E306[phi_s6] = 0x22;
                        }
                    }
                    break;
            }
        } else if (temp_s2 == 0x1F) {
            osSyncPrintf("\nゼルダ時間 ＝ ");
            sp7C[0] = 0;
            temp_f0_2 = gSaveContext.dayTime * 0.021972656f;

            sp7C[1] = temp_f0_2 / 60.0f;
            while (sp7C[1] >= 10) {
                sp7C[0]++;
                sp7C[1] -= 10;
            }
            sp7C[2] = 0;
            sp7C[3] = (s16)temp_f0_2 % 60;
            while (sp7C[3] >= 10) {
                sp7C[2]++;
                sp7C[3] -= 10;
            }

            for (phi_s3 = 0; phi_s3 < 4; phi_s3++) {
                Font_LoadChar(font, sp7C[phi_s3] + 0x10, phi_s5);
                phi_s5 += 0x80;
                msgCtx->unk_E306[phi_s6] = sp7C[phi_s3] + 0x30;
                phi_s6++;
                if (phi_s3 == 1) {
                    Font_LoadChar(font, 0x1A, phi_s5);
                    phi_s5 += 0x80;
                    msgCtx->unk_E306[phi_s6] = 0x3A;
                    phi_s6++;
                }
            }
            phi_s6--;
        } else if (temp_s2 == 0x13) {
            msgCtx->unk_E306[++phi_s6] = font->msgBuf[msgCtx->unk_E3CE + 1];
            osSyncPrintf("ITEM_NO=(%d) (%d)\n", msgCtx->unk_E306[phi_s6], font->msgBuf[msgCtx->unk_E3CE + 1]);
            Message_LoadItemIcon(globalCtx, font->msgBuf[msgCtx->unk_E3CE + 1], VREG(1) + 0xA);
        } else if (temp_s2 == 0x15) {
            msgCtx->unk_E3F6 = font->msgBuf[msgCtx->unk_E3CE + 1] * 2;
            msgCtx->unk_E3F8 = (font->msgBuf[msgCtx->unk_E3CE + 2] & 0xF0) >> 4;
            msgCtx->unk_E3F9 = font->msgBuf[msgCtx->unk_E3CE + 2] & 0xF;
            msgCtx->unk_E3FA = (font->msgBuf[msgCtx->unk_E3CE + 3] & 0xF0) >> 4;
            msgCtx->unk_E3FB = font->msgBuf[msgCtx->unk_E3CE + 3] & 0xF;
            DmaMgr_SendRequest1((u32)msgCtx->textboxSegment + 0x1000, 
                                (u32)_message_texture_staticSegmentRomStart + (msgCtx->unk_E3F6 * 0x900), 0x900, "../z_message_PAL.c", 1830);
            DmaMgr_SendRequest1((u32)msgCtx->textboxSegment + 0x1900, 
                                (u32)_message_texture_staticSegmentRomStart + (msgCtx->unk_E3F6 * 0x900) + 0x900, 0x900, "../z_message_PAL.c", 1834);
            msgCtx->unk_E3CE += 3;
            XREG(61) = VREG(1) + 8;
            sp86 = 2;
            XREG(54) = 0x32;
        } else if (temp_s2 == 5) {
            msgCtx->unk_E306[++phi_s6] = font->msgBuf[++msgCtx->unk_E3CE];
        } else if (temp_s2 == 1) {
            sp86++;
        } else if (temp_s2 != 8 && temp_s2 != 9 && temp_s2 != 0xD && temp_s2 != 0x10 && temp_s2 != 0xA && temp_s2 != 0x1A) {
            if (temp_s2 == 0xE) {
                D_8014B2F0 = 1;
                osSyncPrintf("NZ_TIMER_END (key_off_flag=%d)\n", D_8014B2F0);
                msgCtx->unk_E306[++phi_s6] = font->msgBuf[++msgCtx->unk_E3CE];
            } else if (temp_s2 == 0x11) {
                D_8014B2F0 = 1;
                osSyncPrintf("NZ_BGM (key_off_flag=%d)\n", D_8014B2F0);
                msgCtx->unk_E306[++phi_s6] = font->msgBuf[++msgCtx->unk_E3CE];
                msgCtx->unk_E306[++phi_s6] = font->msgBuf[++msgCtx->unk_E3CE];
            } else if (temp_s2 == 6 || temp_s2 == 0x14) {
                msgCtx->unk_E306[++phi_s6] = font->msgBuf[++msgCtx->unk_E3CE];
            } else if (temp_s2 == 0x12) {
                msgCtx->unk_E306[++phi_s6] = font->msgBuf[++msgCtx->unk_E3CE];
                msgCtx->unk_E306[++phi_s6] = font->msgBuf[++msgCtx->unk_E3CE];
            } else if (temp_s2 == 0x1B) {
                msgCtx->unk_E3E6 = 2;
            }else  if (temp_s2 == 0x1C) {
                msgCtx->unk_E3E6 = 3;
            } else if (temp_s2 != 0x20) {
                Font_LoadChar(font, temp_s2 - 0x20, phi_s5);
                phi_s5 += 0x80;
            }
        }
        phi_s6++;
        msgCtx->unk_E3CE++;
    }
}
#else
void func_80109B3C(GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80109B3C.s")
#endif

void func_8010B0C0(GlobalContext* globalCtx, u16 textId) {
    static s16 messageStaticIndices[] = {
        0, 1, 3, 2,
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

    D_8014B318 = D_8014B2F4 = D_8014B300 = D_8014B308 = 0;

    if (textId >= 0x0500 && textId < 0x0600) { // text ids 0500 to 0600 are reserved for credits
        D_8014B308 = 1;
        XREG(57) = 0x55;
        XREG(56) = 6;
        XREG(54) = 0x14;
        YREG(1) = 0x30;
    } else {
        XREG(57) = 0x4B;
        XREG(56) = 0xC;
        XREG(54) = 0x41;
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
        gSaveContext.eventInf[0] = gSaveContext.eventInf[1] =  gSaveContext.eventInf[2] = gSaveContext.eventInf[3] = 0;
    }

    if (D_8014B308) {
        Message_FindCreditsMessage(globalCtx, textId);
        msgCtx->unk_E300 = font->msgLength;
        DmaMgr_SendRequest1((u32)font->msgBuf, 
                        (u32)(_staff_message_data_staticSegmentRomStart + font->msgOffset), 
                        font->msgLength, "../z_message_PAL.c", 1954);
    } else {
        if (gSaveContext.language == LANGUAGE_ENG) {
            Message_FindMessage(globalCtx, textId);
            msgCtx->unk_E300 = font->msgLength;
            DmaMgr_SendRequest1((u32)font->msgBuf, 
                            (u32)(_nes_message_data_staticSegmentRomStart + font->msgOffset), 
                            font->msgLength, "../z_message_PAL.c", 1966);
        } else if (gSaveContext.language == LANGUAGE_GER) {
            Message_FindMessage(globalCtx, textId);
            msgCtx->unk_E300 = font->msgLength;
            DmaMgr_SendRequest1((u32)font->msgBuf, 
                            (u32)(_ger_message_data_staticSegmentRomStart + font->msgOffset), 
                            font->msgLength, "../z_message_PAL.c", 1978);
        } else {
            Message_FindMessage(globalCtx, textId);
            msgCtx->unk_E300 = font->msgLength;
            DmaMgr_SendRequest1((u32)font->msgBuf, 
                            (u32)(_fra_message_data_staticSegmentRomStart + font->msgOffset), 
                            font->msgLength, "../z_message_PAL.c", 1990);
        }
    }
    msgCtx->unk_E2FC = font->xy;
    msgCtx->textBoxType = msgCtx->unk_E2FC >> 4;
    msgCtx->textBoxPos = msgCtx->unk_E2FC & 0xF;
    textBoxType = msgCtx->textBoxType;
    // Text Box Type＝%d
    osSyncPrintf("吹き出し種類＝%d\n",  msgCtx->textBoxType);
    if (textBoxType < 4) {
        DmaMgr_SendRequest1(msgCtx->textboxSegment, 
                        (u32)(_message_staticSegmentRomStart + (messageStaticIndices[textBoxType] * 0x1000)), 
                        0x1000, "../z_message_PAL.c", 2006);
        if (textBoxType == BOX_BLACK) {
            msgCtx->textboxColorRed = 0;
            msgCtx->textboxColorGreen = 0;
            msgCtx->textboxColorBlue = 0;
        } else if (textBoxType == BOX_WOODEN) {
            msgCtx->textboxColorRed = 0x46;
            msgCtx->textboxColorGreen = 0x32;
            msgCtx->textboxColorBlue = 0x1E;
        } else if (textBoxType == BOX_BLUE) {
            msgCtx->textboxColorRed = 0;
            msgCtx->textboxColorGreen = 0xA;
            msgCtx->textboxColorBlue = 0x32;
        } else {
            msgCtx->textboxColorRed = 0xFF;
            msgCtx->textboxColorGreen = 0;
            msgCtx->textboxColorBlue = 0;
        }
        if (textBoxType == BOX_WOODEN) {
            msgCtx->textboxColorAlphaTarget = 0xE6;
        } else if (textBoxType == BOX_OCARINA) {
            msgCtx->textboxColorAlphaTarget = 0xB4;
        } else {
            msgCtx->textboxColorAlphaTarget = 0xAA;
        }
        msgCtx->textboxColorAlphaCurrent = 0;
    }
    msgCtx->unk_E3E6 = msgCtx->unk_E3D6 = msgCtx->unk_E3E4 = 0;
    msgCtx->unk_E3CE = msgCtx->unk_E3D0 = msgCtx->unk_E3D2 = 0;
}

// Message_Begin
void func_8010B680(GlobalContext* globalCtx, u16 textId, Actor* actor) {
    MessageContext* msgCtx = &globalCtx->msgCtx;

    osSyncPrintf(VT_FGCOL(BLUE));
    // Message＝%x(%d)
    osSyncPrintf("めっせーじ＝%x(%d)\n", textId, actor);
    osSyncPrintf(VT_RST);

    msgCtx->unk_E3F0 = 0xFFFF;
    func_8010B0C0(globalCtx, textId);
    msgCtx->talkActor = actor;
    msgCtx->msgMode = MSGMODE_UNK_01;
    msgCtx->unk_E3E7 = 0;
    msgCtx->unk_E3E8 = 0;
    globalCtx->msgCtx.unk_E3EE = 0;
}

// Message_Continue
void func_8010B720(GlobalContext* globalCtx, u16 textId) {
    MessageContext* msgCtx = &globalCtx->msgCtx;

    osSyncPrintf(VT_FGCOL(GREEN));
    // Message＝%x message->msg_data
    osSyncPrintf("めっせーじ＝%x  message->msg_data\n", textId, msgCtx->unk_E300);
    osSyncPrintf(VT_RST);

    msgCtx->unk_E300 = 0;
    func_8010B0C0(globalCtx, textId);
    msgCtx->msgMode = MSGMODE_UNK_00;
    msgCtx->textboxColorAlphaCurrent = msgCtx->textboxColorAlphaTarget;
    msgCtx->msgMode = MSGMODE_UNK_05;
    msgCtx->unk_E3E7 = 3;
    msgCtx->unk_E3E4 = msgCtx->unk_E3CE = msgCtx->unk_E3D0 = msgCtx->unk_E3D2 = msgCtx->unk_E3E8 = 0;
    msgCtx->textColorAlpha = 0xFF;

    if (YREG(31) == 0 && globalCtx->interfaceCtx.unk_1FA == 0) {
        Interface_SetDoAction(globalCtx, 0x10);
    }
    msgCtx->textboxColorAlphaCurrent = msgCtx->textboxColorAlphaTarget;
}

void func_8010B820(GlobalContext* globalCtx, u16 ocarinaActionId) {
    static u16 ocarinaBitFlags[] = {
        (1 << 0), (1 << 1), (1 << 2), (1 << 3), (1 << 4), (1 << 5), (1 << 8), (1 << 7),
    };

    MessageContext* msgCtx = &globalCtx->msgCtx;
    s32 phi_s0_2;
    s16 j;
    s16 i;
    s16 sp4A;
    s32 phi_s0_3;

    osSyncPrintf(VT_FGCOL(GREEN));

    for (i = D_8014B31C = 0; i < (QUEST_KOKIRI_EMERALD - QUEST_SONG_MINUET); i++) {
        if (CHECK_QUEST_ITEM(QUEST_SONG_MINUET + i)) {
            osSyncPrintf("ocarina_check_bit[%d]=%x\n", i, ocarinaBitFlags[i]);
            D_8014B31C |= ocarinaBitFlags[i];
        }
    }
    if (gSaveContext.scarecrowSpawnSongSet) {
        D_8014B31C |= 0x1000;
    }
    osSyncPrintf("ocarina_bit = %x\n", D_8014B31C);
    osSyncPrintf(VT_RST);

    D_8014B314 = CHECK_QUEST_ITEM(QUEST_SONG_SUN);
    msgCtx->unk_E2B8 = func_800EE3C8();
    msgCtx->unk_E2B8->pos = D_8014B2F8 = 0;
    D_8014B2FC = 0;
    func_801069B0();
    msgCtx->unk_E410 = 0xFF;
    D_8014B310 = msgCtx->unk_E3F2 = msgCtx->unk_E410;

    // ☆☆☆☆☆ Ocarina Number＝%d(%d) ☆☆☆☆☆
    osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ オカリナ番号＝%d(%d) ☆☆☆☆☆\n" VT_RST, ocarinaActionId, 2);
    sp4A = 0;
    if (ocarinaActionId >= 0x893) {
        func_8010B0C0(globalCtx, ocarinaActionId);
        phi_s0_2 = ocarinaActionId + 0x86E;
    } else if (ocarinaActionId == 0x2E) {
        msgCtx->unk_E3F0 = ocarinaActionId;
        func_8010B0C0(globalCtx, 0x86D);
        phi_s0_2 = ocarinaActionId + 0x86E;
    } else if (ocarinaActionId == 1 || ocarinaActionId >= 0x22) {
        osSyncPrintf("ocarina_set 000000000000000000  = %d\n", ocarinaActionId);
        msgCtx->unk_E3F0 = ocarinaActionId;
        if (ocarinaActionId >= 0x22 && ocarinaActionId < 0x28) {
            Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
        if (ocarinaActionId == 0x2D) {
            func_8010B0C0(globalCtx, 0x86F);
            phi_s0_2 = ocarinaActionId + 0x86E;
        } else {
            func_8010B0C0(globalCtx, 0x86E);
            phi_s0_2 = ocarinaActionId + 0x86E;
        }
    } else {
        msgCtx->unk_E3F0 = ocarinaActionId;
        sp4A = 1;
        if (ocarinaActionId >= 0xF) {
            osSyncPrintf("222222222\n");
            func_8010B0C0(globalCtx, 0x86D);
            phi_s0_2 = ocarinaActionId + 0x86E;
        } else {
            osSyncPrintf("333333333\n");
            phi_s0_2 = ocarinaActionId + 0x86E;
            func_8010B0C0(globalCtx, phi_s0_2);
        }
    }
    msgCtx->talkActor = NULL;
    // Ocarina Mode
    osSyncPrintf("オカリナモード = %d  (%x)\n", msgCtx->unk_E3F0, phi_s0_2);
    msgCtx->unk_E3E8 = 0;
    globalCtx->msgCtx.unk_E3EE = 0;
    VREG(0) = 0x22;
    VREG(1) = 0x8E;
    YREG(16) = 0x200;
    YREG(17) = 0x200;
    YREG(22) = 0x100;
    YREG(23) = 0x40;
    msgCtx->unk_E3E7 = 0;
    if (YREG(12) != 0) {
        msgCtx->msgMode = MSGMODE_UNK_04;
    } else {
        msgCtx->unk_E3E7 =2;
        msgCtx->msgMode = MSGMODE_UNK_05;
    }
    msgCtx->textboxColorAlphaCurrent = msgCtx->textboxColorAlphaTarget;
    if (sp4A == 0) {
        Interface_LoadActionLabelB(globalCtx, 0x12);
        sp4A = gSaveContext.unk_13EA;
        Interface_ChangeAlpha(0xA);
        gSaveContext.unk_13EA = sp4A;
    }
    // Music Performance Start
    osSyncPrintf("演奏開始\n");
    if (ocarinaActionId == 1 || ocarinaActionId == 0x30) {
        msgCtx->msgMode = MSGMODE_UNK_09;
        msgCtx->textBoxType = 0x63;
    } else if (ocarinaActionId == 0x2F) {
        msgCtx->msgMode = MSGMODE_UNK_31;
        msgCtx->textBoxType = BOX_BLUE;
    } else if (ocarinaActionId == 0x2E) {
        Interface_ChangeAlpha(1);
        func_80109B3C(globalCtx);
        msgCtx->msgMode = MSGMODE_UNK_29;
    } else if (ocarinaActionId == 0x2B) {
        // ?????Recording Playback / Recording Playback / Recording Playback / Recording Playback ->
        osSyncPrintf("?????録音再生 録音再生 録音再生 録音再生  -> ");
        func_800ED858(1);
        func_800ED858(1);
        msgCtx->unk_E2B8 = Audio_OcaGetDisplayStaff();
        D_8014B2F8 = D_8014B2FC = 0;
        msgCtx->unk_E2B8->pos = D_8014B2F8;
        func_801069B0();
        msgCtx->unk_E3E7 = 3;
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
    func_8010B820(globalCtx, ocarinaActionId);
}

void func_8010BD88(GlobalContext* globalCtx, u16 ocarinaActionId) {
    globalCtx->msgCtx.unk_E40E = 1;
    func_8010B820(globalCtx, ocarinaActionId);
}

// Talk states?
u8 func_8010BDBC(MessageContext* msgCtx) {
    u8 state;

    if (msgCtx->unk_E300 == 0) {
        state = 0;
    } else if (msgCtx->msgMode == MSGMODE_UNK_35) {
        if (msgCtx->unk_E3E4 == 0x30) {
            state = 1;
        } else if (msgCtx->unk_E3E4 == 0x10 || msgCtx->unk_E3E4 == 0x20) { // choice text
            state = 4;
        } else if (msgCtx->unk_E3E4 == 0x50 || msgCtx->unk_E3E4 == 0x40) { // event or persistent
            state = 5;
        } else if (msgCtx->unk_E3E4 == 0x60) {
            state = 3;
        } else {
            state = 6;
        }
    } else if (msgCtx->msgMode == MSGMODE_UNK_34) {
        state = 10;
    } else if (msgCtx->msgMode == MSGMODE_UNK_1A) {
        state = 7;
    } else if (msgCtx->unk_E3EE == 3) { // ocarina related
        state = 8;
    } else if (msgCtx->msgMode == MSGMODE_UNK_1F) {
        state = 9;
    } else if (msgCtx->msgMode == MSGMODE_UNK_36 && msgCtx->unk_E3E7 == 1) {
        state = 2;
    } else {
        state = 3;
    }
    return state;
}

void Message_DrawTextBox(GlobalContext* globalCtx, Gfx** p) {
    MessageContext* msgCtx = &globalCtx->msgCtx;
    Gfx* gfx = *p;

    gDPPipeSync(gfx++);
    gDPSetPrimColor(gfx++, 0, 0, msgCtx->textboxColorRed, msgCtx->textboxColorGreen, msgCtx->textboxColorBlue, msgCtx->textboxColorAlphaCurrent);

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

    gSPTextureRectangle(gfx++, VREG(0) << 2, VREG(1) << 2, (VREG(0) + YREG(22)) << 2, (VREG(1) + YREG(23)) << 2,
                        G_TX_RENDERTILE, 0, 0, YREG(16) << 1, YREG(17) << 1);

    if (1) {}

    // Draw Treble Clef
    if (msgCtx->textBoxType == BOX_OCARINA) {
        gDPPipeSync(gfx++);
        gDPSetCombineLERP(gfx++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(gfx++, 0, 0, 255, 100, 0, 255);
        gDPLoadTextureBlock_4b(gfx++, gHUDTrebleClefTex, G_IM_FMT_I, 16, 32, 0, G_TX_MIRROR, G_TX_MIRROR, G_TX_NOMASK,
                               G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSPTextureRectangle(gfx++, VREG(7) << 2, VREG(8) << 2, (VREG(7) + 16) << 2, (VREG(8) + 32) << 2,
                            G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);
    }

    *p = gfx;
}

void Message_SetView(View* view) {
    SET_FULLSCREEN_VIEWPORT(view);
    func_800AB2C4(view);
}

// Message_DrawMain ?
#ifdef NON_EQUIVALENT
// Many small issues throughout, regalloc, stack
void func_8010C39C(GlobalContext *globalCtx, Gfx **p) {
    // oceff actor ids
    static s16 D_80153C68[] = {
        0x0040, 0x0200, 0x0400, 0x0800, 0x1000, 0x0000, 0x0199, 0x0198,
    };
    // oceff actor params
    static s16 D_80153C78[] = {
        0x018A, 0x017E, 0x018A, 0x018B, 0x01CB, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0001, 0x0000, 0x0000, 0x0000
    };
    // texture segment addrs
    static u64* D_80153C94[] = {
        0x02002940, 0x02002A40, 0x02002B40, 0x02002C40, 0x02002D40,
    };
    static Color_RBG16 D_80153CA8[] = {
        { 0x0050, 0x00FF, 0x0096 },
        { 0x0064, 0x00FF, 0x00C8 },
    };
    static Color_RBG16 D_80153CB4[] = {
        { 0x000A, 0x000A, 0x000A },
        { 0x0032, 0x00FF, 0x0032 },
    };
    static Color_RBG16 D_80153CC0[] = {
        { 0x00FF, 0x00FF, 0x0032 },
        { 0x00FF, 0x00FF, 0x00B4 },
    };
    static Color_RBG16 D_80153CCC[] = {
        { 0x000A, 0x000A, 0x000A },
        { 0x006E, 0x006E, 0x0032 },
    };
    static s16 D_80153CD8 = 0x000C;
    static s16 D_80153CDC = 0x0001;
    static s16 D_80153CE0[] = {
        0x0034, 0x0033, 0x0035, 0x0036, 0x0037, 0x0025, 0x0044, 0x0045, 0x0046, 0x0047, 0x0048, 0x0049,
    };

    Player *player = PLAYER;
    Gfx *gfx = *p;
    MessageContext *msgCtx;
    s16 g1;
    s16 r1;
    u8 temp_a0_9;
    u16 phi_a2;
    u16 phi_a3;
    s16 b1;
    s16 r2;
    s16 g2;
    s16 r3;
    s16 g3;
    s16 r4;
    s16 g4;
    u16 phi_a3_3;
    u16 phi_v0_10;
    u16 phi_a3_4;
    u16 phi_a3_5;
    u16 phi_v0_11;
    u16 phi_a3_6;
    u16 phi_a3_7;
    s32 phi_a3_8;
    u16 phi_a3_9;
    s16 b2;
    s16 b3;
    s16 b4;
    u8 pos;
    s16 temp_abc;

    gSPSegment(gfx++, 0x02, globalCtx->interfaceCtx.parameterSegment);
    msgCtx = &globalCtx->msgCtx; // s1
    gSPSegment(gfx++, 0x07, msgCtx->textboxSegment);

    if (msgCtx->unk_E300 == 0) {
        goto end;
    }

    if (msgCtx->unk_E3F0 != 0x2F && msgCtx->msgMode != MSGMODE_UNK_17 && 
        msgCtx->msgMode >= MSGMODE_UNK_02 && msgCtx->msgMode < MSGMODE_UNK_36 && msgCtx->textBoxType < 4) {
        Message_SetView(&msgCtx->view);
        func_8009457C(&gfx);
        Message_DrawTextBox(globalCtx, &gfx);
    }

    func_8009457C(&gfx);

    gDPSetAlphaCompare(gfx++, G_AC_NONE);
    gDPSetCombineLERP(gfx++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0);

    switch (msgCtx->msgMode) {
        case 1:
        case 2:
        case 3:
        case 4:
            break;
        case 5:
            if (msgCtx->unk_E3E7 == 1) {
                for (phi_a3 = 0, phi_a2 = 0; phi_a3 < 0x30; phi_a3++, phi_a2 += 0x80) {
                    func_8006EE50(&globalCtx->msgCtx.font, 0x8140, phi_a2);
                }
                func_801086B0(globalCtx, &gfx);
            }
            break;
        case 6:
        case 8:
            func_801086B0(globalCtx, &gfx);
            break;
        case 7:
        case 52:
            func_801086B0(globalCtx, &gfx);
            Message_DrawTextboxEndIcon(globalCtx, &gfx, XREG(64), XREG(65));
            break;
        case 9:
        case 10:
        case 11:
            func_800ED858(1);
            msgCtx->unk_E2B8 = func_800EE3D4();
            msgCtx->unk_E2B8->pos = D_8014B2F8 = 0;
            globalCtx->msgCtx.unk_E3EE = 1;
            func_801069B0();
            D_80153CDC = 1;
            D_80153CD8 = 3;
            if (msgCtx->msgMode == MSGMODE_UNK_09) {
                if ((msgCtx->unk_E3F0 == 0) || (msgCtx->unk_E3F0 == 1) || (msgCtx->unk_E3F0 == 0x2C) || (msgCtx->unk_E3F0 == 0x30) || (msgCtx->unk_E3F0 >= 0x22)) {
                    if ((msgCtx->unk_E3F0 == 1) || (msgCtx->unk_E3F0 == 0x30)) {
                        func_800ECC04(D_8014B31C + 0xC000);
                    } else {
                        // On Stage Performance
                        osSyncPrintf("台上演奏\n");
                        func_800ECC04(D_8014B31C);
                    }
                } else {
                    osSyncPrintf("Na_StartOcarinaSinglePlayCheck2( message->ocarina_no );\n");
                    func_800ECC04((1 << msgCtx->unk_E3F0) + 0x8000);
                }
                msgCtx->msgMode = MSGMODE_UNK_0C;
            } else if (msgCtx->msgMode == MSGMODE_UNK_0A) {
                msgCtx->unk_E3E7 = 0x14;
                msgCtx->msgMode = MSGMODE_UNK_18;
            } else {
                func_800ECC04((1 << (msgCtx->unk_E3F0 + 0x11)) + 0x8000);
                // Performance Check
                osSyncPrintf("演奏チェック=%d\n", msgCtx->unk_E3F0 - 0xF);
                msgCtx->msgMode = MSGMODE_UNK_1B;
            }
            if ((msgCtx->unk_E3F0 != 1) && (msgCtx->unk_E3F0 != 0x30)) {
                func_801086B0(globalCtx, &gfx);
            }
            break;
        case 12:
            msgCtx->unk_E2B8 = func_800EE3D4();
            if (msgCtx->unk_E2B8->pos != 0) { // missing move around here
                osSyncPrintf("locate=%d  onpu_pt=%d\n", msgCtx->unk_E2B8->pos, D_8014B2F8);
                if (msgCtx->unk_E2B8->pos == 1 && D_8014B2F8 == 8) {
                    D_8014B2F8 = 0;
                }
                if ((D_8014B2F8 + 1) == msgCtx->unk_E2B8->pos) {
                    // single reordering somewhere in here
                    msgCtx->unk_E410 = D_8015394C[msgCtx->unk_E2B8->pos - 1] = msgCtx->unk_E2B8->noteIdx;
                    D_8015394C[msgCtx->unk_E2B8->pos] = 0xFF;
                    D_8014B2F8++;
                    msgCtx->unk_E3EC = msgCtx->unk_E2B8->state;
                }
            }
            if (msgCtx->unk_E2B8->state < 0xD) {
                if ((msgCtx->unk_E2B8->state == 0xC) || (((&gBitFlags[6])[D_8015396C[msgCtx->unk_E2B8->state]] & gSaveContext.inventory.questItems) != 0)) {
                    D_8014B310 = msgCtx->unk_E3F2 = msgCtx->unk_E3EC = msgCtx->unk_E2B8->state;
                    msgCtx->msgMode = MSGMODE_UNK_0D;
                    msgCtx->unk_E3E7 = 0x14;
                    if (msgCtx->unk_E3F0 == 0x30) {
                        if ((msgCtx->unk_E2B8->state < 6) || (msgCtx->unk_E2B8->state == 0xC)) {
                            func_800ED858(0);
                            Audio_PlaySoundGeneral(NA_SE_SY_OCARINA_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                            msgCtx->msgMode = MSGMODE_UNK_09;
                        } else {
                            // Ocarina_Flog Correct Example Performance
                            osSyncPrintf("Ocarina_Flog 正解模範演奏=%x\n", msgCtx->unk_E3EC);
                            func_8010B720(globalCtx, 0x86F);
                            msgCtx->msgMode = MSGMODE_UNK_11;
                            msgCtx->textBoxType = BOX_OCARINA;
                            msgCtx->unk_E3E7 = 0xA;
                            Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                            Interface_ChangeAlpha(1);
                        }
                    } else if (msgCtx->unk_E3F0 == 0x28) {
                        if (msgCtx->unk_E2B8->state < 0xC) {
                            func_800ED858(0);
                            Audio_PlaySoundGeneral(NA_SE_SY_OCARINA_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                            msgCtx->unk_E3E7 = 0xA;
                            msgCtx->msgMode = MSGMODE_UNK_0E;
                        } else {
                            // Ocarina_Flog Correct Example Performance
                            osSyncPrintf("Ocarina_Flog 正解模範演奏=%x\n", msgCtx->unk_E3EC);
                            func_8010B720(globalCtx, 0x86F);
                            msgCtx->msgMode = MSGMODE_UNK_11;
                            msgCtx->textBoxType = BOX_OCARINA;
                            msgCtx->unk_E3E7 = 0xA;
                            Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                            Interface_ChangeAlpha(1);
                        }
                    } else if (msgCtx->unk_E3F0 == 1) {
                        // Ocarina_Free Correct Example Performance
                        osSyncPrintf("Ocarina_Free 正解模範演奏=%x\n", msgCtx->unk_E3EC);
                        func_8010B720(globalCtx, 0x86F);
                        msgCtx->msgMode = MSGMODE_UNK_11;
                        msgCtx->textBoxType = BOX_OCARINA;
                        msgCtx->unk_E3E7 = 0xA;
                        Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    } else {
                        Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    }
                    Interface_ChangeAlpha(1);
                } else {
                    func_800ED858(0);
                    Audio_PlaySoundGeneral(NA_SE_SY_OCARINA_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    msgCtx->msgMode = MSGMODE_UNK_09;
                }
            } else if (msgCtx->unk_E2B8->state == 0xFF) {
                func_800ED858(0);
                Audio_PlaySoundGeneral(NA_SE_SY_OCARINA_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                msgCtx->unk_E3E7 = 0xA;
                msgCtx->msgMode = MSGMODE_UNK_0E;
            } else if (CHECK_BTN_ALL(globalCtx->state.input[0].press.button, BTN_B)) {
                func_800ED858(0);
                globalCtx->msgCtx.unk_E3EE = 4;
                func_80106CCC(globalCtx);
            }
            if ((msgCtx->unk_E3F0 != 1) && (msgCtx->unk_E3F0 != 0x30)) {
                func_801086B0(globalCtx, &gfx);
            }
            break;
        case 13:
        case 28:
        case 39:
            r1 = ABS(D_801759A8 - D_80153CA8[D_80153CDC].r) / D_80153CD8;
            g1 = ABS(D_801759AC - D_80153CA8[D_80153CDC].g) / D_80153CD8;
            b1 = ABS(D_801759AA - D_80153CA8[D_80153CDC].b) / D_80153CD8;

            if (D_801759A8 >= D_80153CA8[D_80153CDC].r) {
                D_801759A8 -= r1;
            } else {
                D_801759A8 += r1;
            }
            if (D_801759AC >= D_80153CA8[D_80153CDC].g) {
                D_801759AC -= g1;
            } else {
                D_801759AC += g1;
            }
            if (D_801759AA >= D_80153CA8[D_80153CDC].b) {
                D_801759AA -= b1;
            } else {
                D_801759AA += b1;
            }

            r2 = ABS(D_801759AE - D_80153CB4[D_80153CDC].r) / D_80153CD8;
            g2 = ABS(D_801759B2 - D_80153CB4[D_80153CDC].g) / D_80153CD8;
            b2 = ABS(D_801759B0 - D_80153CB4[D_80153CDC].b) / D_80153CD8;

            if (D_801759BA >= D_80153CB4[D_80153CDC].r) {
                D_801759AE -= r2;
            } else {
                D_801759AE += r2;
            }
            if (D_801759BE >= D_80153CB4[D_80153CDC].g) {
                D_801759B2 -= g2;
            } else {
                D_801759B2 += g2;
            }
            if (D_801759BC >= D_80153CB4[D_80153CDC].b) {
                D_801759B0 -= b2;
            } else {
                D_801759B0 += b2;
            }

            r3 = ABS(D_801759B4 - D_80153CC0[D_80153CDC].r) / D_80153CD8;
            g3 = ABS(D_801759B8 - D_80153CC0[D_80153CDC].g) / D_80153CD8;
            b3 = ABS(D_801759B6 - D_80153CC0[D_80153CDC].b) / D_80153CD8;

            if (D_801759B4 >= D_80153CC0[D_80153CDC].r) {
                D_801759B4 -= r3;
            } else {
                D_801759B4 += r3;
            }
            if (D_801759B8 >= D_80153CC0[D_80153CDC].g) {
                D_801759B8 -= g3;
            } else {
                D_801759B8 += g3;
            }
            if (D_801759B6 >= D_80153CC0[D_80153CDC].b) {
                D_801759B6 -= b3;
            } else {
                D_801759B6 += b3;
            }

            r4 = ABS(D_801759BA - D_80153CCC[D_80153CDC].r) / D_80153CD8;
            g4 = ABS(D_801759BE - D_80153CCC[D_80153CDC].g) / D_80153CD8;
            b4 = ABS(D_801759BC - D_80153CCC[D_80153CDC].b) / D_80153CD8;

            if (D_801759BA >= D_80153CCC[D_80153CDC].r) {
                D_801759BA -= r4;
            } else {
                D_801759BA += r4;
            }
            if (D_801759BE >= D_80153CCC[D_80153CDC].g) {
                D_801759BE -= g4;
            } else {
                D_801759BE += g4;
            }
            if (D_801759BC >= D_80153CCC[D_80153CDC].b) {
                D_801759BC -= b4;
            } else {
                D_801759BC += b4;
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
                D_80153CDC ^= 1;
                D_80153CD8 = 3;
            }

            msgCtx->unk_E3E7--;
            if (msgCtx->unk_E3E7 == 0) {
                func_800ED858(0);
                if (msgCtx->msgMode == MSGMODE_UNK_0D) {
                    // Correct Example Performance
                    osSyncPrintf("正解模範演奏=%x\n", msgCtx->unk_E3EC);
                    func_8010B720(globalCtx, 0x86F);
                    msgCtx->msgMode = MSGMODE_UNK_11;
                    msgCtx->textBoxType = BOX_OCARINA;
                    msgCtx->unk_E3E7 = 1;
                } else if (msgCtx->msgMode == MSGMODE_UNK_1C) {
                    if (msgCtx->unk_E3EC >= 6) {
                        func_8010B720(globalCtx, 0x86F);
                        msgCtx->msgMode = MSGMODE_UNK_11;
                        msgCtx->textBoxType = BOX_OCARINA;
                        msgCtx->unk_E3E7 = 1;
                    } else {
                        func_80106CCC(globalCtx);
                        globalCtx->msgCtx.unk_E3EE = 4;
                    }
                } else {
                    func_80106CCC(globalCtx);
                    globalCtx->msgCtx.unk_E3EE = 3;
                }
            }
            func_801086B0(globalCtx, &gfx);
            break;
        case 14:
        case 29:
            func_801086B0(globalCtx, &gfx);
        case 15:
            msgCtx->unk_E3E7--;
            if (msgCtx->unk_E3E7 == 0) {
                VREG(51) = 1;
                if (msgCtx->msgMode == MSGMODE_UNK_1D) {
                    // kokokokokoko
                    osSyncPrintf("ここここここ\n");
                    func_8010B720(globalCtx, 0x88B);
                    func_80109B3C(globalCtx);
                    msgCtx->msgMode = MSGMODE_UNK_1E;
                } else {
                    msgCtx->msgMode = MSGMODE_UNK_10;
                }
                // Cancel
                osSyncPrintf("キャンセル\n");
            }
            break;
        case 16:
        case 30:
            // loop has some weirdness going on
            for (phi_a3_3 = 0; phi_a3_3 < 5; phi_a3_3++) {
                (&VREG(45))[(s32)phi_a3_3] += VREG(51);
            }
            VREG(51) += VREG(51);
            if (VREG(51) >= 0x226) {
                D_8015394C[0] = 0xFF;
                D_80153958[8] = D_80153958[7] = D_80153958[6] = 
                    D_80153958[5] = D_80153958[4] = D_80153958[3] = 
                    D_80153958[2] = D_80153958[1] = D_80153958[0] = 0;
                if (msgCtx->msgMode == MSGMODE_UNK_1E) {
                    msgCtx->msgMode = MSGMODE_UNK_1F;
                } else {
                    msgCtx->msgMode = MSGMODE_UNK_09;
                }
            }
            break;
        case 17:
            msgCtx->unk_E3E7--;
            if (msgCtx->unk_E3E7 == 0) {
                func_800ED858(0);
                osSyncPrintf(VT_FGCOL(GREEN));
                osSyncPrintf("Na_StopOcarinaMode();\n");
                osSyncPrintf("Na_StopOcarinaMode();\n");
                osSyncPrintf("Na_StopOcarinaMode();\n");
                osSyncPrintf(VT_RST);
                func_80109B3C(globalCtx);
                msgCtx->msgMode = MSGMODE_UNK_12;
                msgCtx->unk_E2B8 = func_800EE3D4();
                D_8014B2F8 = 0;
                msgCtx->unk_E2B8->pos = D_8014B2F8;
                func_801069B0();
                if (msgCtx->unk_E3EC >= 6 && msgCtx->unk_E3EC < 0xD) {
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx, D_80153C68[msgCtx->unk_E3EC], 
                                player->actor.world.pos.x, player->actor.world.pos.y, player->actor.world.pos.z, 
                                0, 0, 0, D_80153C78[msgCtx->unk_E3EC]);
                }
            }
            break;
        case 18:
            func_801086B0(globalCtx, &gfx);
            func_800ED858(1);
            func_800ED858(1);
            func_800ED93C(msgCtx->unk_E3EC + 1, 1);
            if (0xC != msgCtx->unk_E3EC) {
                func_800F5C64(D_80153CE0[msgCtx->unk_E3EC]);
                func_800F7260(0x20);
            }
            globalCtx->msgCtx.unk_E3EE = 1;
            if (msgCtx->unk_E3F0 == 1) {
                msgCtx->unk_E3F0 = 0x29;
            }
            if (msgCtx->unk_E3F0 == 0x30) {
                msgCtx->unk_E3F0 = 0x31;
            }
            D_8014B2F8 = 0;
            msgCtx->msgMode = MSGMODE_UNK_13;
            break;
        case 24:
            msgCtx->unk_E3E7--;
            if (msgCtx->unk_E3E7 == 0) {
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
                D_8014B2F8 = 0;
                msgCtx->msgMode = MSGMODE_UNK_19;
            }
            func_801086B0(globalCtx, &gfx);
            break;
        case 20:
            func_8010B720(globalCtx, msgCtx->unk_E3EC + 0x893);
            func_80109B3C(globalCtx);
            msgCtx->msgMode = MSGMODE_UNK_15;
            msgCtx->unk_E3E7 = 0x14;
            func_801086B0(globalCtx, &gfx);
            break;
        case 21:
            msgCtx->unk_E3E7--;
            if (msgCtx->unk_E3E7 == 0) {
                msgCtx->msgMode = MSGMODE_UNK_16;
            }
            func_801086B0(globalCtx, &gfx);
            break;
        case 22:
            func_800ED858(0);
            func_801069B0();
            msgCtx->msgMode = MSGMODE_UNK_17;
            msgCtx->unk_E3E7 = 2;
            func_801086B0(globalCtx, &gfx);
            break;
        case 23:
            msgCtx->unk_E3E7--;
            if (msgCtx->unk_E3E7 == 0) {
                if (msgCtx->unk_E3EC < 6 && ((msgCtx->unk_E3F0 < 0xF) || (msgCtx->unk_E3F0 >= 0x15))) {
                    // weird loading differences around here
                    if ((msgCtx->unk_E40C != 0) || (globalCtx->interfaceCtx.restrictions.warpSongs == 3)) {
                        func_8010B680(globalCtx, 0x88C, NULL);
                        globalCtx->msgCtx.unk_E3EE = 4;
                    } else if ((gSaveContext.eventInf[0] & 0xF) != 1) {
                        func_8010B680(globalCtx, msgCtx->unk_E3EC + 0x88D, NULL);
                        globalCtx->msgCtx.unk_E3EE = 1;
                    } else {
                        func_80106CCC(globalCtx);
                    }
                } else {
                    func_80106CCC(globalCtx);
                    if (msgCtx->unk_E3EC == 7) {
                        DREG(53) = 1;
                    }
                    osSyncPrintf(VT_FGCOL(YELLOW));
                    osSyncPrintf("☆☆☆ocarina=%d   message->ocarina_no=%d  ", msgCtx->unk_E3EC, msgCtx->unk_E3F0);
                    if (msgCtx->unk_E3F0 == 0x29) {
                        globalCtx->msgCtx.unk_E3EE = 1;
                        if (msgCtx->unk_E3EC == 0xC) {
                            globalCtx->msgCtx.unk_E3EE = 0xB;
                        }
                    } else if (msgCtx->unk_E3F0 >= 0x1C) {
                        osSyncPrintf(VT_FGCOL(YELLOW));
                        osSyncPrintf("Ocarina_PC_Wind=%d(%d) ☆☆☆   ", 0x1C, msgCtx->unk_E3F0 - 0x1C);
                        if (msgCtx->unk_E3F0 == (msgCtx->unk_E3EC + 0x1C)) {
                            globalCtx->msgCtx.unk_E3EE = 3;
                        } else {
                            globalCtx->msgCtx.unk_E3EE = msgCtx->unk_E3EC - 1;
                        }
                    } else {
                        osSyncPrintf(VT_FGCOL(GREEN));
                        osSyncPrintf("Ocarina_C_Wind=%d(%d) ☆☆☆   ", 0xF, msgCtx->unk_E3F0 - 0xF);
                        if (msgCtx->unk_E3F0 == (msgCtx->unk_E3EC + 0xF)) {
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
        case 19:
        case 25:
            msgCtx->unk_E2B8 = Audio_OcaGetDisplayStaff();
            if (msgCtx->unk_E2B8->state == 0) {
                if (msgCtx->msgMode == MSGMODE_UNK_13) {
                    msgCtx->msgMode = MSGMODE_UNK_14;
                } else {
                    msgCtx->msgMode = MSGMODE_UNK_1A;
                }
                osSyncPrintf("onpu_buff[%d]=%x\n", msgCtx->unk_E2B8->pos, D_8015394C[msgCtx->unk_E2B8->pos]);
            } else {
                if ((D_8014B2F8 != 0) && (msgCtx->unk_E2B8->pos == 1)) {
                    D_8014B2F8 = 0;
                }
                if ((msgCtx->unk_E2B8->pos != 0) && (msgCtx->unk_E2B8->pos == (D_8014B2F8 + 1))) {
                    msgCtx->unk_E410 = D_8015394C[msgCtx->unk_E2B8->pos - 1] = msgCtx->unk_E2B8->noteIdx;
                    D_8015394C[msgCtx->unk_E2B8->pos] = 0xFF;
                    D_8014B2F8++;
                }
            }
        case 26:
            func_801086B0(globalCtx, &gfx);
            break;
        case 27:
            msgCtx->unk_E2B8 = func_800EE3D4();
            if (msgCtx->unk_E2B8->pos != 0 && msgCtx->unk_E2B8->pos == (D_8014B2F8 + 1)) {
                D_8015394C[msgCtx->unk_E2B8->pos - 1] = msgCtx->unk_E2B8->noteIdx;
                D_8015394C[msgCtx->unk_E2B8->pos] = 0xFF;
                    // doesn't increment like it should but uses old value from D_8014B2F8 + 1 above
                D_8014B2F8++;
            }
            if (msgCtx->unk_E2B8->state < 0xD) {
                osSyncPrintf("M_OCARINA20 : ocarina_no=%x    status=%x\n", msgCtx->unk_E3F0, msgCtx->unk_E2B8->state);
                msgCtx->unk_E3EC = msgCtx->unk_E2B8->state;
                msgCtx->msgMode = MSGMODE_UNK_1C;
                Item_Give(globalCtx, D_8015396C[msgCtx->unk_E2B8->state] + 0x5A);
                osSyncPrintf(VT_FGCOL(YELLOW));
                // z_message.c Song Acquired
                osSyncPrintf("z_message.c 取得メロディ＝%d\n", msgCtx->unk_E2B8->state + 0x5A);
                osSyncPrintf(VT_RST);
                msgCtx->unk_E3E7 = 0x14;
                Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            } else if (msgCtx->unk_E2B8->state == 0xFF) {
                Audio_PlaySoundGeneral(NA_SE_SY_OCARINA_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                msgCtx->unk_E3E7 = 0xA;
                msgCtx->msgMode = MSGMODE_UNK_1D;
            }
            func_801086B0(globalCtx, &gfx);
            break;
        case 31:
            func_801086B0(globalCtx, &gfx);
            if (Message_ShouldAdvance(globalCtx) != 0) {
                func_8010BD58(globalCtx, msgCtx->unk_E3F0);
            }
            break;
        case 33:
            // Scarecrow Recording Initialization
            osSyncPrintf("案山子録音 初期化\n");
            func_800EE170(1);
            func_800ED858(1);
            msgCtx->unk_E2B8 = func_800EE3C8();
            D_8014B2F8 = 0;
            msgCtx->unk_E2B8->pos = D_8014B2F8;
            D_8014B2FC = 0;
            func_801069B0();
            msgCtx->msgMode = MSGMODE_UNK_22;
            func_801086B0(globalCtx, &gfx);
            break;
        case 34:
            msgCtx->unk_E2B8 = func_800EE3C8();
            osSyncPrintf("\nonpu_pt=%d, locate=%d", D_8014B2F8, msgCtx->unk_E2B8->pos);
            if ((msgCtx->unk_E2B8->pos != 0) && (msgCtx->unk_E2B8->pos == (D_8014B2F8 + 1))) {
                if (D_8014B2FC >= 8) {
                    for (phi_v0_10 = D_8014B2FC - 8, phi_a3_4 = 0; phi_v0_10 > 0, phi_a3_4 < 8; phi_v0_10++, phi_a3_4++) {
                        D_8015394C[phi_v0_10] = D_8015394C[phi_v0_10 + 1];
                    }
                    D_8014B2FC--;
                }
                osSyncPrintf("    入力ボタン【%d】=%d", D_8014B2FC, msgCtx->unk_E2B8->noteIdx);
                msgCtx->unk_E410 = D_8015394C[D_8014B2FC] = msgCtx->unk_E2B8->noteIdx;
                D_8014B2FC++;
                D_8015394C[D_8014B2FC] = 0xFF;
                D_8014B2F8++;
                if (msgCtx->unk_E2B8->pos == 8) {
                    D_8014B2F8 = 0;
                }
            }
            if ((msgCtx->unk_E2B8->state == 0) || CHECK_BTN_ALL(globalCtx->state.input[0].press.button, BTN_B)) {
                if (D_8014B2FC != 0) {
                    osSyncPrintf("録音終了！！！！！！！！！  message->info->status=%d \n", msgCtx->unk_E2B8->state);
                    gSaveContext.scarecrowCustomSongSet = 1;
                }
                Audio_PlaySoundGeneral(NA_SE_SY_OCARINA_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                osSyncPrintf("aaaaaaaaaaaaaa\n");
                func_800EE170(0);
                msgCtx->unk_E3E7 = 0xA;
                globalCtx->msgCtx.unk_E3EE = 4;
                func_80106CCC(globalCtx);
                osSyncPrintf("録音終了！！！！！！！！！録音終了\n");
                osSyncPrintf(VT_FGCOL(YELLOW));
                osSyncPrintf("\n====================================================================\n");
                MemCopy(gSaveContext.scarecrowCustomSong, gScarecrowCustomSongPtr, sizeof(gSaveContext.scarecrowCustomSong));
                for (phi_a3_5 = 0; phi_a3_5 < (s32)sizeof(gSaveContext.scarecrowCustomSong); phi_a3_5++) {
                    osSyncPrintf("%d, ", gSaveContext.scarecrowCustomSong[phi_a3_5]);
                }
                osSyncPrintf(VT_RST);
                osSyncPrintf("\n====================================================================\n");
            }
            func_801086B0(globalCtx, &gfx);
            break;
        case 35:
        case 40:
            msgCtx->unk_E2B8 = Audio_OcaGetDisplayStaff();
            if (msgCtx->unk_E2B8->pos != 0 && msgCtx->unk_E2B8->pos == (D_8014B2F8 + 1)) {
                if (D_8014B2FC >= 8) {
                    for (phi_v0_11 = D_8014B2FC - 8, phi_a3_6 = 0; phi_a3_6 < 8; phi_v0_11++, phi_a3_6++) {
                        D_8015394C[phi_v0_11] = D_8015394C[phi_v0_11 + 1];
                    }
                    D_8014B2FC--;
                }
                D_8015394C[D_8014B2FC] = msgCtx->unk_E2B8->noteIdx;
                D_8014B2FC++;
                D_8015394C[D_8014B2FC] = 0xFF;
                // takes the increment from up above instead of new increment
                D_8014B2F8++;
                if (msgCtx->unk_E2B8->pos == 8) {
                    D_8014B2FC = D_8014B2F8 = 0;
                }
            }
            osSyncPrintf("status=%d (%d)\n", msgCtx->unk_E2B8->state, 0);
            if (msgCtx->unk_E3E7 == 0) {
                if (msgCtx->unk_E2B8->state == 0) {
                    osSyncPrintf("bbbbbbbbbbb\n");
                    func_800ED858(0);
                    globalCtx->msgCtx.unk_E3EE = 0xF;
                    func_80106CCC(globalCtx);
                }
            } else {
                msgCtx->unk_E3E7--;
            }
            break;
        case 36:
            func_800EE170(2);
            func_800ED858(1);
            msgCtx->msgMode = MSGMODE_UNK_25;
            func_801086B0(globalCtx, &gfx);
            break;
        case 37:
            msgCtx->unk_E2B8 = func_800EE3C8();
            if (msgCtx->unk_E2B8->pos != 0) {
                if (msgCtx->unk_E2B8->pos == (D_8014B2F8 + 1)) {
                    msgCtx->unk_E410 = D_8015394C[D_8014B2F8] = msgCtx->unk_E2B8->noteIdx;
                    D_8014B2F8++;
                    D_8015394C[D_8014B2F8] = 0xFF;
                }
            }
            if (msgCtx->unk_E2B8->state == 0) {
                osSyncPrintf("８音録音ＯＫ！\n");
                msgCtx->unk_E3E7 = 0x14;
                gSaveContext.scarecrowSpawnSongSet = 1;
                msgCtx->msgMode = MSGMODE_UNK_27;
                Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                osSyncPrintf(VT_FGCOL(YELLOW));
                osSyncPrintf("\n====================================================================\n");
                MemCopy(gSaveContext.scarecrowSpawnSong, gScarecrowSpawnSongPtr, sizeof(gSaveContext.scarecrowSpawnSong));
                for (phi_a3_7 = 0; phi_a3_7 < (s32)sizeof(gSaveContext.scarecrowSpawnSong); phi_a3_7++) {
                    osSyncPrintf("%d, ", gSaveContext.scarecrowSpawnSong[phi_a3_7]);
                }
                osSyncPrintf(VT_RST);
                osSyncPrintf("\n====================================================================\n");
            } else if ((msgCtx->unk_E2B8->state == 0xFF) || CHECK_BTN_ALL(globalCtx->state.input[0].press.button, BTN_B)) {
                osSyncPrintf("すでに存在する曲吹いた！！！ \n");
                func_800EE170(0);
                Audio_PlaySoundGeneral(NA_SE_SY_OCARINA_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                func_80106CCC(globalCtx);
                msgCtx->msgMode = MSGMODE_UNK_26;
            }
            func_801086B0(globalCtx, &gfx);
            break;
        case 38:
            osSyncPrintf("cccccccccccc\n");
            func_800ED858(0);
            func_8010B680(globalCtx, 0x40AD, NULL); // Bonooru doesn't remember your song
            globalCtx->msgCtx.unk_E3EE = 4;
            break;
        case 41:
            func_800ED858(1);
            func_800ED858(6);
            func_800EE57C(gSaveContext.ocarinaGameReward);
            msgCtx->unk_E2B8 = Audio_OcaGetDisplayStaff();
            D_8014B2F8 = 0;
            msgCtx->unk_E2B8->pos = D_8014B2F8;
            func_801069B0();
            func_800ED93C(0xE, 1);
            msgCtx->msgMode = MSGMODE_UNK_2A;
            msgCtx->unk_E3E7 = 2;
            break;
        case 42:
        case 44:
            Audio_PlaySoundGeneral(NA_SE_SY_METRONOME_LV - SFX_FLAG, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            msgCtx->unk_E2B8 = Audio_OcaGetDisplayStaff();
            if (msgCtx->unk_E2B8->pos != 0) {
                if (msgCtx->unk_E2B8->pos == (D_8014B2F8 + 1)) {
                    D_8015394C[msgCtx->unk_E2B8->pos - 1] = msgCtx->unk_E2B8->noteIdx;
                    D_8015394C[msgCtx->unk_E2B8->pos] = 0xFF;
                    // takes from above instead of new increment
                    D_8014B2F8++;
                }
            }
            if (msgCtx->unk_E3E7 == 0) {
                if (msgCtx->unk_E2B8->state == 0) {
                    if (msgCtx->msgMode == MSGMODE_UNK_2A) {
                        Audio_PlaySoundGeneral(NA_SE_SY_METRONOME, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    } else {
                        Audio_PlaySoundGeneral(NA_SE_SY_METRONOME_2, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    }
                    msgCtx->msgMode++;
                }
            } else {
                msgCtx->unk_E3E7--;
            }
            break;
        case 43:
        case 45:
            msgCtx->unk_E2B8 = Audio_OcaGetDisplayStaff();
            if (msgCtx->unk_E2B8->pos != 0 && msgCtx->unk_E2B8->pos == (D_8014B2F8 + 1)) {
                D_8015394C[msgCtx->unk_E2B8->pos - 1] = msgCtx->unk_E2B8->noteIdx;
                D_8015394C[msgCtx->unk_E2B8->pos] = 0xFF;
                D_8014B2F8++;
            }
            break;
        case 46:
            Audio_PlaySoundGeneral(NA_SE_SY_METRONOME_LV - SFX_FLAG, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            msgCtx->unk_E2B8 = func_800EE3D4();
            if (msgCtx->unk_E2B8->pos != 0 && msgCtx->unk_E2B8->pos == (D_8014B2F8 + 1)) {
                D_8015394C[msgCtx->unk_E2B8->pos - 1] = msgCtx->unk_E2B8->noteIdx;
                D_8015394C[msgCtx->unk_E2B8->pos] = 0xFF;
                D_8014B2F8++;
            }
            if (msgCtx->unk_E2B8->state == 0xFF) {
                osSyncPrintf("輪唱失敗！！！！！！！！！\n");
                func_800ED858(0);
                Audio_PlaySoundGeneral(NA_SE_SY_OCARINA_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                msgCtx->unk_E3E7 = 0xA;
                globalCtx->msgCtx.unk_E3EE = 3;
            } else if (msgCtx->unk_E2B8->state == 0xD) {
                osSyncPrintf("輪唱成功！！！！！！！！！\n");
                Audio_PlaySoundGeneral(NA_SE_SY_GET_ITEM, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                msgCtx->msgMode = MSGMODE_UNK_2F;
                msgCtx->unk_E3E7 = 0x1E;
            }
            func_801086B0(globalCtx, &gfx);
            break;
        case 47:
            msgCtx->unk_E2B8 = func_800EE3D4();
            if (msgCtx->unk_E2B8->pos != 0) {
                if (msgCtx->unk_E2B8->pos == (D_8014B2F8 + 1)) {
                    D_8015394C[msgCtx->unk_E2B8->pos - 1] = msgCtx->unk_E2B8->noteIdx;
                    D_8015394C[msgCtx->unk_E2B8->pos] = 0xFF;
                    D_8014B2F8++;
                }
            }
            msgCtx->unk_E3E7--;
            if (msgCtx->unk_E3E7 == 0) {
                if (func_800EE5EC() != 1) {
                    Audio_PlaySoundGeneral(NA_SE_SY_METRONOME, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    msgCtx->unk_E2B8 = func_800EE3D4();
                    D_8014B2F8 = 0;
                    msgCtx->unk_E2B8->pos = D_8014B2F8;
                    func_801069B0();
                    msgCtx->msgMode = MSGMODE_UNK_30;
                } else {
                    globalCtx->msgCtx.unk_E3EE = 0xF;
                }
            }
            func_801086B0(globalCtx, &gfx);
            break;
        case 48:
            if (!func_800F8FF4(NA_SE_SY_METRONOME)) {
                msgCtx->unk_E2B8 = Audio_OcaGetDisplayStaff();
                D_8014B2F8 = 0;
                msgCtx->unk_E2B8->pos = D_8014B2F8;
                func_801069B0();
                func_800ED93C(0xE, 1);
            }
            break;
        case 49:
            func_800ED858(1);
            msgCtx->unk_E2B8 = func_800EE3D4();
            D_8014B2F8 = 0;
            msgCtx->unk_E2B8->pos = D_8014B2F8;
            globalCtx->msgCtx.unk_E3EE = 1;
            func_801069B0();
            func_800ECC04(D_8014B31C + 0xC000);
            msgCtx->msgMode = MSGMODE_UNK_32;
            break;
        case 50:
            msgCtx->unk_E2B8 = func_800EE3D4();
            if (msgCtx->unk_E2B8->pos != 0 && msgCtx->unk_E2B8->pos == D_8014B2F8 + 1) {
                msgCtx->unk_E410 = msgCtx->unk_E2B8->noteIdx;
                msgCtx->unk_E2B8->pos = D_8014B2F8 = 0;
                func_801069B0();
                msgCtx->msgMode = MSGMODE_UNK_33;
            }
        case 51:
            break;
        case 53:
            func_801086B0(globalCtx, &gfx);
            switch (msgCtx->unk_E3E4) {
                case 0x10: // 2 choice
                    Message_HandleChoice(globalCtx, 1);
                    Message_DrawTextboxEndIcon(globalCtx, &gfx, msgCtx->textPosX, msgCtx->textPosY);
                    break;
                case 0x20: // 3 choice
                    Message_HandleChoice(globalCtx, 2);
                    Message_DrawTextboxEndIcon(globalCtx, &gfx, msgCtx->textPosX, msgCtx->textPosY);
                    break;
                case 0x40:
                    if (msgCtx->textId >= 0x6D && msgCtx->textId < 0x73) {
                        msgCtx->unk_E3E7++;
                        if (msgCtx->unk_E3E7 >= 0x1F) {
                            msgCtx->unk_E3E7 = 2;
                            msgCtx->msgMode = MSGMODE_UNK_36;
                        }
                    }
                    break;
                case 0x50:
                case 0x60:
                    Message_DrawTextboxEndIcon(globalCtx, &gfx, XREG(64), XREG(65));
                    break;
            }
            break;
        case 54:
            break;
        case 55:
            break;
        case 32:
            msgCtx->msgMode = MSGMODE_UNK_06;
            break;
    }

    if (msgCtx->msgMode >= MSGMODE_UNK_0C && msgCtx->msgMode < MSGMODE_UNK_34 && msgCtx->unk_E3F0 != 1 && msgCtx->unk_E3F0 != 0x30) {
        func_8009457C(&gfx);

        gDPSetCombineLERP(gfx++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 
                                    PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

        if (msgCtx->msgMode == MSGMODE_UNK_1B) {
            temp_abc = msgCtx->unk_E3F0 - 0xF;
            for (phi_a3_8 = 0; phi_a3_8 < D_80131C00[temp_abc].len; phi_a3_8++) {
                temp_a0_9 = D_80131C00[temp_abc].notesIdx[phi_a3_8];

                gDPPipeSync(gfx++);
                gDPSetPrimColor(gfx++, 0, 0, 150, 150, 150, 150);
                gDPSetEnvColor(gfx++, 10, 10, 10, 0);

                gDPLoadTextureBlock(gfx++, D_80153C94[temp_a0_9], 
                        G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                gSPTextureRectangle(gfx++, 
                    VREG(28) << 2, 
                    (&VREG(35))[temp_a0_9] << 2, 
                    (VREG(28) + 0x10) << 2, 
                    ((&VREG(35))[temp_a0_9] + 0x10) << 2, 
                    G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
                VREG(28) += VREG(29);
            }
        }

        if (msgCtx->msgMode != MSGMODE_UNK_21 && msgCtx->msgMode != MSGMODE_UNK_29 && D_8015394C[phi_a3_9] != 0xFF) {
            for (phi_a3_9 = 0; phi_a3_9 < 8; phi_a3_9++, VREG(28) += VREG(29)) {
                if (D_80153958[phi_a3_9] != 0xFF) {
                    D_80153958[phi_a3_9] += VREG(50);
                    if (D_80153958[phi_a3_9] >= 0xFF) {
                        D_80153958[phi_a3_9] = 0xFF;
                    }
                }

                gDPPipeSync(gfx++);
                if (D_8015394C[phi_a3_9] == 0) {
                    gDPSetPrimColor(gfx++, 0, 0, D_801759A8, D_801759AC, D_801759AA, D_80153958[phi_a3_9]);
                    gDPSetEnvColor(gfx++, D_801759AE, D_801759B2, D_801759B0, 0);
                } else {
                    gDPSetPrimColor(gfx++, 0, 0, D_801759B4, D_801759B8, D_801759B6, D_80153958[phi_a3_9]);
                    gDPSetEnvColor(gfx++, D_801759BA, D_801759BE, D_801759BC, 0);
                }

                gDPLoadTextureBlock(gfx++, D_80153C94[D_8015394C[phi_a3_9]], 
                        G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                gSPTextureRectangle(gfx++, 
                    VREG(28) << 2, 
                    (&VREG(35))[D_8015394C[phi_a3_9]] << 2, 
                    (VREG(28) + 0x10) << 2, 
                    ((&VREG(35))[D_8015394C[phi_a3_9]] + 0x10) << 2, 
                    G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
            }
        }
    }

end:
    *p = gfx;
}
#else
void func_8010C39C(GlobalContext* globalCtx, Gfx** p);
s16 D_80153C68[] = {
    0x0040, 0x0200, 0x0400, 0x0800, 0x1000, 0x0000, 0x0199, 0x0198,
};
s16 D_80153C78[] = {
    0x018A, 0x017E, 0x018A, 0x018B, 0x01CB, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0001, 0x0000, 0x0000, 0x0000
};
// texture segment addrs
u64* D_80153C94[] = {
    0x02002940, 0x02002A40, 0x02002B40, 0x02002C40, 0x02002D40,
};
Vec3s D_80153CA8[] = {
    { 0x0050, 0x00FF, 0x0096 },
    { 0x0064, 0x00FF, 0x00C8 },
};
Vec3s D_80153CB4[] = {
    { 0x000A, 0x000A, 0x000A },
    { 0x0032, 0x00FF, 0x0032 },
};
Vec3s D_80153CC0[] = {
    { 0x00FF, 0x00FF, 0x0032 },
    { 0x00FF, 0x00FF, 0x00B4 },
};
Vec3s D_80153CCC[] = {
    { 0x000A, 0x000A, 0x000A },
    { 0x006E, 0x006E, 0x0032 },
};
s16 D_80153CD8 = 0x000C;
s16 D_80153CDC = 0x0001;
s16 D_80153CE0[] = {
    0x0034, 0x0033, 0x0035, 0x0036, 0x0037, 0x0025, 0x0044, 0x0045, 0x0046, 0x0047, 0x0048, 0x0049,
};
#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010C39C.s")
#endif

// Message_DrawSetup ?
void func_8010F2CC(s16* arg0, GraphicsContext* gfxCtx) {
    static s16 D_80153CF8 = 0;
    static s16 D_80153CFC = 0;

    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_message_PAL.c", 3485);

    if (D_80153CF8 != *arg0) {
        D_80153CF8 = *arg0;
        D_80153CFC = 0x1E;
    }
    if (D_80153CFC != 0) {
        D_80153CFC -= 1;
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCycleType(POLY_OPA_DISP++, G_CYC_FILL);
        gDPSetRenderMode(POLY_OPA_DISP++, G_RM_NOOP, G_RM_NOOP2);
        gDPSetFillColor(POLY_OPA_DISP++, RGBA8(0, 1, 0, 1));
        gDPFillRectangle(POLY_OPA_DISP++, 0, 110, 319, 150);
        gDPPipeSync(POLY_OPA_DISP++);
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCycleType(POLY_OPA_DISP++, G_CYC_FILL);
        gDPSetRenderMode(POLY_OPA_DISP++, G_RM_NOOP, G_RM_NOOP2);
        gDPSetFillColor(POLY_OPA_DISP++, RGBA8(255, 255, 255, 255));
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
    s16 sp4E;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_message_PAL.c", 3554);

    sp4E = gSaveContext.scarecrowCustomSongSet;
    func_8010F2CC(&sp4E, globalCtx->state.gfxCtx);
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
        0x0022, 0x0022, 0x0022, 0x0022, 0x0022, 0x0022,
    };
    static s16 D_80153D0C[] = {
        0x008E, 0x008E, 0x008E, 0x008E, 0x00AE, 0x008E,
    };
    static s16 D_80153D18[] = {
        0x0026, 0x0026, 0x0026, 0x0026, 0x00AE, 0x0026,
    };
    static s16 D_80153D24[] = {
        0x005A, 0x005A, 0x005A, 0x005A, 0x00AE, 0x005A,
    };
    static s16 D_80153D30[] = {
        0x003B, 0x003B, 0x003B, 0x003B, 0x0022, 0x003B,

        // likely separate, unreferenced data
        0x0400, 0x0400, 0x0200, 0x0000, 0x1038, 0x0008, 0x200A, 0x088B,
        0x0007, 0x0009, 0x000A, 0x107E, 0x2008, 0x2007, 0x0015, 0x0016,
        0x0017, 0x0003, 0x0000, 0x270B, 0x00C8, 0x012C, 0x012D, 0xFFDA,
        0x0014, 0x0016, 0x0014, 0x0016,
    };
    static u8 D_80153D74 = 0;
    static u16 D_80153D78 = 0;

    MessageContext* msgCtx = &globalCtx->msgCtx;
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    Player* player = PLAYER;
    Input* curInput = &globalCtx->state.input[0];
    s16 phi_v1_2;
    s16 focusScreenPosX;
    s16 averageY;
    s16 playerFocusScreenPosY;
    s16 actorFocusScreenPosY;

    if (BREG(0) != 0) {
        if (CHECK_BTN_ALL(curInput->press.button, BTN_DDOWN) && CHECK_BTN_ALL(curInput->cur.button, BTN_L)) {
            osSyncPrintf("msgno=%d\n", D_80153D78);
            func_8010B680(globalCtx, R_MESSAGE_DEBUGGER_TEXTID, NULL);
            D_80153D78 = (D_80153D78 + 1) % 10;
        }
        if (R_MESSAGE_DEBUGGER_SELECT != 0) {
            while (R_MESSAGE_DEBUGGER_TEXTID != 0x8000) {
                MessageTableEntry* entry = &D_801538F0[0];

                while (entry->textId != 0xFFFD) {
                    if (entry->textId == R_MESSAGE_DEBUGGER_TEXTID) {
                        // The message was found! !! !!
                        osSyncPrintf(" メッセージが,見つかった！！！ = %x\n", R_MESSAGE_DEBUGGER_TEXTID);
                        func_8010B680(globalCtx, R_MESSAGE_DEBUGGER_TEXTID, NULL);
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

    if (msgCtx->unk_E300 == 0) {
        return;
    }

    switch (msgCtx->msgMode) {
        case MSGMODE_UNK_01:
            D_8014B2F4++;

            phi_v1_2 = 0;
            if (YREG(15) == 0x40) {
                if (D_8014B2F4 >= 4) {
                    phi_v1_2 = 1;
                }
            } else if (YREG(15) != 0 || globalCtx->sceneNum == SCENE_HAIRAL_NIWA) {
                phi_v1_2 = 1;
            } else if (D_8014B2F4 >= 4 || msgCtx->talkActor == NULL) {
                phi_v1_2 = 1;
            }

            if (phi_v1_2 != 0) {
                if (msgCtx->talkActor != NULL) {
                    func_8002F374(globalCtx, &PLAYER->actor, &focusScreenPosX, &playerFocusScreenPosY);
                    func_8002F374(globalCtx, msgCtx->talkActor, &focusScreenPosX, &actorFocusScreenPosY);

                    if (playerFocusScreenPosY >= actorFocusScreenPosY) {
                        averageY = ((playerFocusScreenPosY - actorFocusScreenPosY) / 2) + actorFocusScreenPosY;
                    } else {
                        averageY = ((actorFocusScreenPosY - playerFocusScreenPosY) / 2) + playerFocusScreenPosY;
                    }
                    osSyncPrintf("dxpos=%d   dypos=%d  dypos1  dypos2=%d\n", focusScreenPosX, averageY, playerFocusScreenPosY, actorFocusScreenPosY);
                } else {
                    VREG(0) = XREG(72);
                    VREG(1) = XREG(73);
                }

                phi_v1_2 = msgCtx->textBoxType;

                if (!msgCtx->textBoxPos) { // variable position
                    if (YREG(15) || globalCtx->sceneNum == SCENE_HAIRAL_NIWA) {
                        if (averageY < XREG(92)) {
                            XREG(73) = D_80153D0C[phi_v1_2];
                        } else {
                            XREG(73) = D_80153D18[phi_v1_2];
                        }
                    } else if (globalCtx->sceneNum == SCENE_MARKET_DAY ||
                                globalCtx->sceneNum == SCENE_MARKET_NIGHT ||
                                globalCtx->sceneNum == SCENE_MARKET_RUINS) {
                        if (averageY < XREG(93)) {
                            XREG(73) = D_80153D0C[phi_v1_2];
                        } else {
                            XREG(73) = D_80153D18[phi_v1_2];
                        }
                    } else {
                        if (averageY < XREG(94)) {
                            XREG(73) = D_80153D0C[phi_v1_2];
                        } else {
                            XREG(73) = D_80153D18[phi_v1_2];
                        }
                    }
                } else {
                    if (msgCtx->textBoxPos == POS_TOP) {
                        XREG(73) = D_80153D18[phi_v1_2];
                    } else if (msgCtx->textBoxPos == POS_BOTTOM) {
                        XREG(73) = D_80153D24[phi_v1_2];
                    } else {
                        XREG(73) = D_80153D0C[phi_v1_2];
                    }
                }

                XREG(72) = textboxXPositions[phi_v1_2];
                XREG(65) = D_80153D30[phi_v1_2] + XREG(73);
                XREG(67) = XREG(73) + 0x14;
                XREG(68) = XREG(73) + 0x20;
                XREG(69) = XREG(73) + 0x2C;
                osSyncPrintf("message->msg_disp_type=%x\n", msgCtx->unk_E2FC & 0xF0);
                if (msgCtx->textBoxType == BOX_NONE_BOTTOM || msgCtx->textBoxType == BOX_NONE_NO_SHADOW) {
                    msgCtx->msgMode = MSGMODE_UNK_03;
                    VREG(0) = XREG(72);
                    VREG(1) = XREG(73);
                    YREG(22) = 0x100;
                    YREG(23) = 0x40;
                    YREG(16) = 0x200;
                    YREG(17) = 0x200;
                } else {
                    func_80107244(msgCtx);
                    func_800F691C(0);
                    msgCtx->unk_E3E7 = 0;
                    msgCtx->msgMode = MSGMODE_UNK_02;
                }
            }
            break;
        case MSGMODE_UNK_02:
            func_80107244(msgCtx);
            break;
        case MSGMODE_UNK_03:
            msgCtx->msgMode = MSGMODE_UNK_04;
            if (YREG(31) == 0) {
                Interface_SetDoAction(globalCtx, 0x10);
            }
            break;
        case MSGMODE_UNK_04:
            func_80109B3C(globalCtx);
            if (D_8014B2F0 != 0) {
                Interface_ChangeAlpha(1);
            }
            if (D_80153D74 != 0) {
                msgCtx->unk_E3D2 = msgCtx->unk_E3D4;
                D_80153D74 = 0;
            }
            break;
        case MSGMODE_UNK_05:
            msgCtx->unk_E3E7--;
            if (msgCtx->unk_E3E7 == 0) {
                func_80109B3C(globalCtx);
            }
            break;
        case MSGMODE_UNK_06:
            if (msgCtx->textBoxType != 4 && YREG(31) == 0 &&
                CHECK_BTN_ALL(globalCtx->state.input[0].press.button, BTN_B) && msgCtx->unk_E3D6 == 0) {
                D_8014B300 = 1;
                msgCtx->unk_E3D2 = msgCtx->unk_E3D4;
            }
            break;
        case MSGMODE_UNK_07:
            if (YREG(31) == 0 && Message_ShouldAdvance(globalCtx)) {
                msgCtx->msgMode = MSGMODE_UNK_06;
                msgCtx->unk_E3D2++;
            }
            break;
        case MSGMODE_UNK_08:
            msgCtx->unk_E3E7--;
            if (msgCtx->unk_E3E7 == 0) {
                msgCtx->msgMode = MSGMODE_UNK_04;
            }
            break;
        case MSGMODE_UNK_34:
            if (Message_ShouldAdvance(globalCtx)) {
                msgCtx->msgMode = MSGMODE_UNK_04;
                msgCtx->unk_E3D6 = 0;
                msgCtx->unk_E3CE++;
            }
            break;
        case MSGMODE_UNK_35:
            if (msgCtx->unk_E3E4 == 0x60) {
                msgCtx->unk_E3E7--;
                if (msgCtx->unk_E3E7 == 0) {
                    func_80106CCC(globalCtx);
                }
            } else if (msgCtx->unk_E3E4 != 0x40 && msgCtx->unk_E3E4 != 0x50 && YREG(31) == 0) {
                if (msgCtx->unk_E3E4 == 0x10 && globalCtx->msgCtx.unk_E3EE == 1) {
                    if (Message_ShouldAdvance(globalCtx)) {
                        osSyncPrintf("OCARINA_MODE=%d -> ", globalCtx->msgCtx.unk_E3EE);
                        globalCtx->msgCtx.unk_E3EE = (msgCtx->choiceIndex == 0) ? 2 : 4;
                        osSyncPrintf("InRaceSeq=%d(%d) OCARINA_MODE=%d  -->  ", gSaveContext.eventInf[0] & 0xF,
                                        1, globalCtx->msgCtx.unk_E3EE);
                        func_80106CCC(globalCtx);
                        osSyncPrintf("OCARINA_MODE=%d\n", globalCtx->msgCtx.unk_E3EE);
                    }
                } else if (Message_ShouldAdvanceSilent(globalCtx)) {
                    osSyncPrintf("select=%d\n", msgCtx->unk_E3E4);
                    if (msgCtx->unk_E3E4 == 0x30) {
                        Audio_PlaySoundGeneral(NA_SE_SY_MESSAGE_PASS, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                                &D_801333E8);
                        func_8010B720(globalCtx, D_8014B304);
                    } else {
                        Audio_PlaySoundGeneral(NA_SE_SY_DECIDE, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                                &D_801333E8);
                        func_80106CCC(globalCtx);
                    }
                }
            }
            break;
        case MSGMODE_UNK_36:
            msgCtx->unk_E3E7--;
            if (msgCtx->unk_E3E7 != 0) {
                break;
            }
            if ((msgCtx->textId >= 0xC2 && msgCtx->textId < 0xC7) ||
                (msgCtx->textId >= 0xFA && msgCtx->textId < 0xFE)) {
                gSaveContext.healthAccumulator = 0x140;
            }
            if ((msgCtx->textId == 0x301F) || (msgCtx->textId == 0xA) || (msgCtx->textId == 0xC) ||
                (msgCtx->textId == 0xCF) || (msgCtx->textId == 0x21C) || (msgCtx->textId == 9) ||
                (msgCtx->textId == 0x4078) || (msgCtx->textId == 0x2015) || (msgCtx->textId == 0x3040)) {
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
                        if (gSaveContext.unk_13EE == 0 || gSaveContext.unk_13EE == 1 ||
                            gSaveContext.unk_13EE == 2) {
                            gSaveContext.unk_13EE = 0x32;
                        }
                        gSaveContext.unk_13EA = 0;
                        Interface_ChangeAlpha(gSaveContext.unk_13EE);
                    }
                }
            }
            osSyncPrintf(VT_RST);
            msgCtx->unk_E300 = 0;
            msgCtx->msgMode = MSGMODE_UNK_00;
            interfaceCtx->unk_1FA = interfaceCtx->unk_1FC = 0;
            msgCtx->unk_E3E7 = 0;
            msgCtx->textId = msgCtx->unk_E3E7;

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
                if (D_8014B310 == 6) {
                    //! @bug The last played song is not unset often, and if something interrupts the message system
                    //       before it reaches this point after playing Saria's song, the song will be "stored".
                    //       Later, if the ocarina has not been played and another textbox is closed, this handling
                    //       for Saria's song will take place.
                    player->naviTextId = -0xE0;
                    player->naviActor->flags |= 0x10000;
                }
                if (msgCtx->unk_E3F0 == 0x29 && (globalCtx->msgCtx.unk_E3EE == 1 || globalCtx->msgCtx.unk_E3EE == 0xB)) {
                    globalCtx->msgCtx.unk_E3EE = 4;
                    if (msgCtx->unk_E3F2 == 9) {
                        globalCtx->msgCtx.unk_E3EE = 1;
                    }
                }
            }
            D_8014B310 = 0xFF;
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
    D_801538F0 = D_8014B320;
    D_801538F4 = D_8014F548;
    D_801538F8 = D_80151658;
    D_801538FC = D_80153768;
}

// This appears to be file padding
UNK_TYPE D_80153D7C = 0x00000000;

// This should be part of z_game_over.c
s16 D_80153D80 = 0x0000;
