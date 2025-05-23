#include "global.h"
#include "message_data_static.h"
#include "terminal.h"
#include "versions.h"
#include "assets/textures/parameter_static/parameter_static.h"
#if PLATFORM_N64
#include "n64dd.h"
#endif

#pragma increment_block_number "gc-eu:0 gc-eu-mq:0 gc-jp:128 gc-jp-ce:128 gc-jp-mq:128 gc-us:128 gc-us-mq:128" \
                               "ntsc-1.0:80 ntsc-1.1:80 ntsc-1.2:80 pal-1.0:128 pal-1.1:128"

#if !PLATFORM_GC
#define OCARINA_BUTTON_A_PRIM_1_R 80
#define OCARINA_BUTTON_A_PRIM_1_G 150
#define OCARINA_BUTTON_A_PRIM_1_B 255
#else
#define OCARINA_BUTTON_A_PRIM_1_R 80
#define OCARINA_BUTTON_A_PRIM_1_G 255
#define OCARINA_BUTTON_A_PRIM_1_B 150
#endif

#if !PLATFORM_GC
#define OCARINA_BUTTON_A_PRIM_2_R 100
#define OCARINA_BUTTON_A_PRIM_2_G 200
#define OCARINA_BUTTON_A_PRIM_2_B 255
#else
#define OCARINA_BUTTON_A_PRIM_2_R 100
#define OCARINA_BUTTON_A_PRIM_2_G 255
#define OCARINA_BUTTON_A_PRIM_2_B 200
#endif

#if !PLATFORM_GC
#define OCARINA_BUTTON_A_ENV_1_R 10
#define OCARINA_BUTTON_A_ENV_1_G 10
#define OCARINA_BUTTON_A_ENV_1_B 10
#else
#define OCARINA_BUTTON_A_ENV_1_R 10
#define OCARINA_BUTTON_A_ENV_1_G 10
#define OCARINA_BUTTON_A_ENV_1_B 10
#endif

#if !PLATFORM_GC
#define OCARINA_BUTTON_A_ENV_2_R 50
#define OCARINA_BUTTON_A_ENV_2_G 50
#define OCARINA_BUTTON_A_ENV_2_B 255
#else
#define OCARINA_BUTTON_A_ENV_2_R 50
#define OCARINA_BUTTON_A_ENV_2_G 255
#define OCARINA_BUTTON_A_ENV_2_B 50
#endif

#if !PLATFORM_GC
#define OCARINA_ICON_PRIM_1_R 0
#define OCARINA_ICON_PRIM_1_G 80
#define OCARINA_ICON_PRIM_1_B 200
#else
#define OCARINA_ICON_PRIM_1_R 0
#define OCARINA_ICON_PRIM_1_G 200
#define OCARINA_ICON_PRIM_1_B 80
#endif

#if !PLATFORM_GC
#define OCARINA_ICON_PRIM_2_R 50
#define OCARINA_ICON_PRIM_2_G 130
#define OCARINA_ICON_PRIM_2_B 255
#else
#define OCARINA_ICON_PRIM_2_R 50
#define OCARINA_ICON_PRIM_2_G 255
#define OCARINA_ICON_PRIM_2_B 130
#endif

#if !PLATFORM_GC
#define OCARINA_ICON_ENV_1_R 0
#define OCARINA_ICON_ENV_1_G 0
#define OCARINA_ICON_ENV_1_B 0
#else
#define OCARINA_ICON_ENV_1_R 0
#define OCARINA_ICON_ENV_1_G 0
#define OCARINA_ICON_ENV_1_B 0
#endif

#if !PLATFORM_GC
#define OCARINA_ICON_ENV_2_R 0
#define OCARINA_ICON_ENV_2_G 130
#define OCARINA_ICON_ENV_2_B 255
#else
#define OCARINA_ICON_ENV_2_R 0
#define OCARINA_ICON_ENV_2_G 255
#define OCARINA_ICON_ENV_2_B 130
#endif

s32 sCharTexSize;
s32 sCharTexScale;

s16 sTextFade = false; // original name: key_off_flag ?

u8 D_8014B2F4 = 0;

s16 sOcarinaButtonIndexBufPos = 0;

s16 sOcarinaButtonIndexBufLen = 0;

u8 sTextboxSkipped = false;

u16 sNextTextId = 0;

s16 sTextIsCredits = false;

#if PLATFORM_GC && OOT_PAL
UNK_TYPE D_8014B30C = 0;
#endif

s16 sLastPlayedSong = 0xFF;

s16 sHasSunsSong = false;

s16 sMessageHasSetSfx = false;

u16 sOcarinaSongBitFlags = 0; // ocarina bit flags

#if OOT_NTSC

MessageTableEntry sJpnMessageEntryTable[] = {
#define DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) /* Not Present */
#define DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    { textId, (_SHIFTL(type, 4, 4) | _SHIFTL(yPos, 0, 4)), _message_##textId##_jpn },
#define DEFINE_MESSAGE(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage)
#define DEFINE_MESSAGE_FFFC(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    /* Present */ DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage)
#include "assets/text/message_data.h"
#undef DEFINE_MESSAGE
#undef DEFINE_MESSAGE_NES
#undef DEFINE_MESSAGE_JPN
#undef DEFINE_MESSAGE_FFFC
    { 0xFFFF, 0, NULL },
};

MessageTableEntry sNesMessageEntryTable[] = {
#define DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    { textId, (_SHIFTL(type, 4, 4) | _SHIFTL(yPos, 0, 4)), _message_##textId##_nes },
#define DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) /* Not Present */
#define DEFINE_MESSAGE(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage)
#define DEFINE_MESSAGE_FFFC(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) /* Not Present */
#include "assets/text/message_data.h"
#undef DEFINE_MESSAGE
#undef DEFINE_MESSAGE_NES
#undef DEFINE_MESSAGE_JPN
#undef DEFINE_MESSAGE_FFFC
    { 0xFFFF, 0, NULL },
};

#else

MessageTableEntry sNesMessageEntryTable[] = {
#define DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    { textId, (_SHIFTL(type, 4, 4) | _SHIFTL(yPos, 0, 4)), _message_##textId##_nes },
#define DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) /* Not Present */
#define DEFINE_MESSAGE(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage)
#define DEFINE_MESSAGE_FFFC(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    /* Present */ DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage)
#include "assets/text/message_data.h"
#undef DEFINE_MESSAGE
#undef DEFINE_MESSAGE_NES
#undef DEFINE_MESSAGE_JPN
#undef DEFINE_MESSAGE_FFFC
    { 0xFFFF, 0, NULL },
};

const char* sGerMessageEntryTable[] = {
#define DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) _message_##textId##_ger,
#define DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) /* Not Present */
#define DEFINE_MESSAGE(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage)
#define DEFINE_MESSAGE_FFFC(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) /* Not Present */
#include "assets/text/message_data.h"
#undef DEFINE_MESSAGE
#undef DEFINE_MESSAGE_NES
#undef DEFINE_MESSAGE_JPN
#undef DEFINE_MESSAGE_FFFC
    NULL,
};

const char* sFraMessageEntryTable[] = {
#define DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) _message_##textId##_fra,
#define DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) /* Not Present */
#define DEFINE_MESSAGE(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage)
#define DEFINE_MESSAGE_FFFC(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) /* Not Present */
#include "assets/text/message_data.h"
#undef DEFINE_MESSAGE
#undef DEFINE_MESSAGE_NES
#undef DEFINE_MESSAGE_JPN
#undef DEFINE_MESSAGE_FFFC
    NULL,
};

#endif

MessageTableEntry sStaffMessageEntryTable[] = {
#define DEFINE_MESSAGE(textId, type, yPos, staffMessage) \
    { textId, (_SHIFTL(type, 4, 8) | _SHIFTL(yPos, 0, 8)), _message_##textId##_staff },
#include "assets/text/message_data_staff.h"
#undef DEFINE_MESSAGE
    { 0xFFFF, 0, NULL },
};

#if OOT_NTSC
MessageTableEntry* sJpnMessageEntryTablePtr = sJpnMessageEntryTable;
MessageTableEntry* sNesMessageEntryTablePtr = sNesMessageEntryTable;
#else
MessageTableEntry* sNesMessageEntryTablePtr = sNesMessageEntryTable;
const char** sGerMessageEntryTablePtr = sGerMessageEntryTable;
const char** sFraMessageEntryTablePtr = sFraMessageEntryTable;
#endif

MessageTableEntry* sStaffMessageEntryTablePtr = sStaffMessageEntryTable;

s16 sTextboxBackgroundForePrimColors[][3] = {
    { 255, 255, 255 }, { 50, 20, 0 },     { 255, 60, 0 },    { 255, 255, 255 },
    { 255, 255, 255 }, { 255, 255, 255 }, { 255, 255, 255 }, { 255, 255, 255 },
};

s16 sTextboxBackgroundBackPrimColors[][3] = {
    { 0, 0, 0 },
    { 220, 150, 0 },
    { 0, 0, 0 },
    { 0, 0, 0 },
};

s16 sTextboxBackgroundYOffsets[] = {
    1,
    2,
};

// original name: onpu_buff
u8 sOcarinaButtonIndexBuf[12] = { 0 };

s16 sOcarinaButtonAlphaValues[9] = { 0 };

// Maps the ocarina song order to the quest item order
s16 gOcarinaSongItemMap[] = {
    OCARINA_SONG_MINUET,   OCARINA_SONG_BOLERO,  OCARINA_SONG_SERENADE, OCARINA_SONG_REQUIEM,
    OCARINA_SONG_NOCTURNE, OCARINA_SONG_PRELUDE, OCARINA_SONG_LULLABY,  OCARINA_SONG_EPONAS,
    OCARINA_SONG_SARIAS,   OCARINA_SONG_SUNS,    OCARINA_SONG_TIME,     OCARINA_SONG_STORMS,
};

s16 sOcarinaButtonAPrimR;
s16 sOcarinaButtonAPrimB;
s16 sOcarinaButtonAPrimG;
s16 sOcarinaButtonAEnvR;
s16 sOcarinaButtonAEnvB;
s16 sOcarinaButtonAEnvG;
s16 sOcarinaButtonCPrimR;
s16 sOcarinaButtonCPrimB;
s16 sOcarinaButtonCPrimG;
s16 sOcarinaButtonCEnvR;
s16 sOcarinaButtonCEnvB;
s16 sOcarinaButtonCEnvG;

void Message_ResetOcarinaNoteState(void) {
    R_OCARINA_BUTTONS_YPOS(0) = 189;
    R_OCARINA_BUTTONS_YPOS(1) = 184;
    R_OCARINA_BUTTONS_YPOS(2) = 179;
    R_OCARINA_BUTTONS_YPOS(3) = 174;
    R_OCARINA_BUTTONS_YPOS(4) = 169;
    sOcarinaButtonIndexBuf[0] = OCARINA_BTN_INVALID;
    sOcarinaButtonAlphaValues[0] = sOcarinaButtonAlphaValues[1] = sOcarinaButtonAlphaValues[2] =
        sOcarinaButtonAlphaValues[3] = sOcarinaButtonAlphaValues[4] = sOcarinaButtonAlphaValues[5] =
            sOcarinaButtonAlphaValues[6] = sOcarinaButtonAlphaValues[7] = sOcarinaButtonAlphaValues[8] = 0;
    sOcarinaButtonAPrimR = OCARINA_BUTTON_A_PRIM_1_R;
    sOcarinaButtonAPrimG = OCARINA_BUTTON_A_PRIM_1_G;
    sOcarinaButtonAPrimB = OCARINA_BUTTON_A_PRIM_1_B;
    sOcarinaButtonAEnvR = 10;
    sOcarinaButtonAEnvG = 10;
    sOcarinaButtonAEnvB = 10;
    sOcarinaButtonCPrimR = 255;
    sOcarinaButtonCPrimG = 255;
    sOcarinaButtonCPrimB = 50;
    sOcarinaButtonCEnvR = 10;
    sOcarinaButtonCEnvG = 10;
    sOcarinaButtonCEnvB = 10;
}

void Message_UpdateOcarinaMemoryGame(PlayState* play) {
    MessageContext* msgCtx = &play->msgCtx;

    play->msgCtx.msgMode++;

    if (play->msgCtx.msgMode == MSGMODE_MEMORY_GAME_PLAYER_PLAYING) {
        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
        msgCtx->ocarinaStaff = AudioOcarina_GetPlayingStaff();
        msgCtx->ocarinaStaff->pos = sOcarinaButtonIndexBufPos = 0;
        AudioOcarina_Start((1 << OCARINA_SONG_MEMORY_GAME) + 0x8000);
        msgCtx->textDrawPos = msgCtx->decodedTextLen;
    } else if (msgCtx->msgMode == MSGMODE_MEMORY_GAME_RIGHT_SKULLKID_PLAYING) {
        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_FLUTE);
        msgCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
        msgCtx->ocarinaStaff->pos = sOcarinaButtonIndexBufPos = 0;
        AudioOcarina_SetPlaybackSong(OCARINA_SONG_MEMORY_GAME + 1, 1);
        msgCtx->stateTimer = 2;
    }
    Message_ResetOcarinaNoteState();
}

u8 Message_ShouldAdvance(PlayState* play) {
    Input* input = &play->state.input[0];

    if (CHECK_BTN_ALL(input->press.button, BTN_A) || CHECK_BTN_ALL(input->press.button, BTN_B) ||
        CHECK_BTN_ALL(input->press.button, BTN_CUP)) {
        Audio_PlaySfxGeneral(NA_SE_SY_MESSAGE_PASS, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    }
    return CHECK_BTN_ALL(input->press.button, BTN_A) || CHECK_BTN_ALL(input->press.button, BTN_B) ||
           CHECK_BTN_ALL(input->press.button, BTN_CUP);
}

u8 Message_ShouldAdvanceSilent(PlayState* play) {
    Input* input = &play->state.input[0];

    return CHECK_BTN_ALL(input->press.button, BTN_A) || CHECK_BTN_ALL(input->press.button, BTN_B) ||
           CHECK_BTN_ALL(input->press.button, BTN_CUP);
}

/**
 * Closes any currently displayed textbox immediately, without waiting for
 * input from the player.
 */
void Message_CloseTextbox(PlayState* play) {
    MessageContext* msgCtx = &play->msgCtx;

    if (msgCtx->msgLength != 0) {
        msgCtx->stateTimer = 2;
        msgCtx->msgMode = MSGMODE_TEXT_CLOSING;
        msgCtx->textboxEndType = TEXTBOX_ENDTYPE_DEFAULT;
        Audio_PlaySfxGeneral(NA_SE_NONE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultReverb);
    }
}

void Message_HandleChoiceSelection(PlayState* play, u8 numChoices) {
    static s16 sAnalogStickHeld = false;
    MessageContext* msgCtx = &play->msgCtx;
    Input* input = &play->state.input[0];

    if (input->rel.stick_y >= 30 && !sAnalogStickHeld) {
        sAnalogStickHeld = true;
        msgCtx->choiceIndex--;
        if (msgCtx->choiceIndex > 128) {
            msgCtx->choiceIndex = 0;
        } else {
            Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        }
    } else if (input->rel.stick_y <= -30 && !sAnalogStickHeld) {
        sAnalogStickHeld = true;
        msgCtx->choiceIndex++;
        if (msgCtx->choiceIndex > numChoices) {
            msgCtx->choiceIndex = numChoices;
        } else {
            Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        }
    } else if (ABS(input->rel.stick_y) < 30) {
        sAnalogStickHeld = false;
    }
    msgCtx->textPosX = R_TEXT_CHOICE_XPOS;
    msgCtx->textPosY =
        (numChoices == 1) ? R_TEXT_CHOICE_YPOS(msgCtx->choiceIndex + 1) : R_TEXT_CHOICE_YPOS(msgCtx->choiceIndex);
}

void Message_DrawTextChar(PlayState* play, void* textureImage, Gfx** p) {
    MessageContext* msgCtx = &play->msgCtx;
    Gfx* gfx = *p;
    s16 x = msgCtx->textPosX;
    s16 y = msgCtx->textPosY;
    s32 pad;

    gDPPipeSync(gfx++);

    sCharTexSize = (R_TEXT_CHAR_SCALE / 100.0f) * 16.0f;
    sCharTexScale = 1024.0f / (R_TEXT_CHAR_SCALE / 100.0f);

    gDPLoadTextureBlock_4b(gfx++, textureImage, G_IM_FMT_I, FONT_CHAR_TEX_WIDTH, FONT_CHAR_TEX_HEIGHT, 0,
                           G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                           G_TX_NOLOD);

    // Draw drop shadow
    if (msgCtx->textBoxType != TEXTBOX_TYPE_NONE_NO_SHADOW) {
        gDPSetPrimColor(gfx++, 0, 0, 0, 0, 0, msgCtx->textColorAlpha);
        gSPTextureRectangle(gfx++, (x + R_TEXT_DROP_SHADOW_OFFSET) << 2, (y + R_TEXT_DROP_SHADOW_OFFSET) << 2,
                            (x + R_TEXT_DROP_SHADOW_OFFSET + sCharTexSize) << 2,
                            (y + R_TEXT_DROP_SHADOW_OFFSET + sCharTexSize) << 2, G_TX_RENDERTILE, 0, 0, sCharTexScale,
                            sCharTexScale);
    }

    gDPPipeSync(gfx++);
    gDPSetPrimColor(gfx++, 0, 0, msgCtx->textColorR, msgCtx->textColorG, msgCtx->textColorB, msgCtx->textColorAlpha);
    gSPTextureRectangle(gfx++, x << 2, y << 2, (x + sCharTexSize) << 2, (y + sCharTexSize) << 2, G_TX_RENDERTILE, 0, 0,
                        sCharTexScale, sCharTexScale);
    *p = gfx;
}

// resizes textboxes when opening them
void Message_GrowTextbox(MessageContext* msgCtx) {
    static f32 sWidthCoefficients[] = {
        1.2f, 1.5f, 1.8f, 2.0f, 2.1f, 2.2f, 2.1f, 2.0f,
    };
    static f32 sHeightCoefficients[] = {
        0.6f, 0.75f, 0.9f, 1.0f, 1.05f, 1.1f, 1.05f, 1.0f,
    };
    f32 width =
        R_TEXTBOX_WIDTH_TARGET * (sWidthCoefficients[msgCtx->stateTimer] + sWidthCoefficients[msgCtx->stateTimer]);
    f32 height = R_TEXTBOX_HEIGHT_TARGET * sHeightCoefficients[msgCtx->stateTimer];
    f32 texWidth =
        R_TEXTBOX_TEXWIDTH_TARGET / (sWidthCoefficients[msgCtx->stateTimer] + sWidthCoefficients[msgCtx->stateTimer]);
    f32 texHeight = R_TEXTBOX_TEXHEIGHT_TARGET / sHeightCoefficients[msgCtx->stateTimer];

    // Adjust y pos
    R_TEXTBOX_Y = R_TEXTBOX_Y_TARGET +
                  (R_TEXTBOX_Y_TARGET - (s16)(R_TEXTBOX_Y_TARGET * sHeightCoefficients[msgCtx->stateTimer] + 0.5f)) / 2;

    msgCtx->textboxColorAlphaCurrent += msgCtx->textboxColorAlphaTarget / 8;
    msgCtx->stateTimer++;
    if (msgCtx->stateTimer == 8) {
        // Reached the end
        R_TEXTBOX_X = R_TEXTBOX_X_TARGET;
        R_TEXTBOX_Y = R_TEXTBOX_Y_TARGET;
        msgCtx->msgMode = MSGMODE_TEXT_STARTING;
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

#if OOT_NTSC

void Message_FindMessageJPN(PlayState* play, u16 textId) {
    const char* foundSeg;
    const char* nextSeg;
    const char* seg;
    Font* font = &play->msgCtx.font;
    MessageTableEntry* messageTableEntry = sJpnMessageEntryTablePtr;

    seg = messageTableEntry->segment;

    while (messageTableEntry->textId != 0xFFFF) {
        if (messageTableEntry->textId == textId) {
            foundSeg = messageTableEntry->segment;
            font->charTexBuf[0] = messageTableEntry->typePos;
            messageTableEntry++;
            nextSeg = messageTableEntry->segment;
            font->msgOffset = foundSeg - seg;
            font->msgLength = nextSeg - foundSeg;
            return;
        }
        messageTableEntry++;
    }

    messageTableEntry = sJpnMessageEntryTablePtr;

    foundSeg = messageTableEntry->segment;
    font->charTexBuf[0] = messageTableEntry->typePos;
    messageTableEntry++;
    nextSeg = messageTableEntry->segment;

    font->msgOffset = foundSeg - seg;
    font->msgLength = nextSeg - foundSeg;
}

void Message_FindMessageNES(PlayState* play, u16 textId) {
    const char* foundSeg;
    const char* nextSeg;
    const char* seg;
    Font* font = &play->msgCtx.font;
    MessageTableEntry* messageTableEntry = sNesMessageEntryTablePtr;

    seg = messageTableEntry->segment;
    while (messageTableEntry->textId != 0xFFFF) {
        if (messageTableEntry->textId == textId) {
            foundSeg = messageTableEntry->segment;
            font->charTexBuf[0] = messageTableEntry->typePos;
            messageTableEntry++;
            nextSeg = messageTableEntry->segment;
            font->msgOffset = foundSeg - seg;
            font->msgLength = nextSeg - foundSeg;
            return;
        }
        messageTableEntry++;
    }

    messageTableEntry = sNesMessageEntryTablePtr;

    foundSeg = messageTableEntry->segment;
    font->charTexBuf[0] = messageTableEntry->typePos;
    messageTableEntry++;
    nextSeg = messageTableEntry->segment;
    font->msgOffset = foundSeg - seg;
    font->msgLength = nextSeg - foundSeg;
}

#else

void Message_FindMessagePAL(PlayState* play, u16 textId) {
    const char* foundSeg;
    const char* nextSeg;
    Font* font = &play->msgCtx.font;
    MessageTableEntry* messageTableEntry = sNesMessageEntryTablePtr;
    const char** languageSegmentTable;
    const char* seg;

    if (gSaveContext.language == LANGUAGE_ENG) {
        seg = messageTableEntry->segment;

        while (messageTableEntry->textId != 0xFFFF) {
            if (messageTableEntry->textId == textId) {
                foundSeg = messageTableEntry->segment;
                font->charTexBuf[0] = messageTableEntry->typePos;
                messageTableEntry++;
                nextSeg = messageTableEntry->segment;
                font->msgOffset = foundSeg - seg;
                font->msgLength = nextSeg - foundSeg;
                PRINTF(T(" メッセージが,見つかった！！！ = %x  (data=%x) (data0=%x) (data1=%x) (data2=%x) (data3=%x)\n",
                         "Message found!!! = %x  (data=%x) (data0=%x) (data1=%x) (data2=%x) (data3=%x)\n"),
                       textId, font->msgOffset, font->msgLength, foundSeg, seg, nextSeg);
                return;
            }
            messageTableEntry++;
        }
    } else {
        languageSegmentTable =
            (gSaveContext.language == LANGUAGE_GER) ? sGerMessageEntryTablePtr : sFraMessageEntryTablePtr;
        seg = messageTableEntry->segment;

        while (messageTableEntry->textId != 0xFFFF) {
            if (messageTableEntry->textId == textId) {
                foundSeg = *languageSegmentTable;
                font->charTexBuf[0] = messageTableEntry->typePos;
                languageSegmentTable++;
                nextSeg = *languageSegmentTable;
                font->msgOffset = foundSeg - seg;
                font->msgLength = nextSeg - foundSeg;
                PRINTF(T(" メッセージが,見つかった！！！ = %x  (data=%x) (data0=%x) (data1=%x) (data2=%x) (data3=%x)\n",
                         "Message found!!! = %x  (data=%x) (data0=%x) (data1=%x) (data2=%x) (data3=%x)\n"),
                       textId, font->msgOffset, font->msgLength, foundSeg, seg, nextSeg);
                return;
            }
            messageTableEntry++;
            languageSegmentTable++;
        }
    }
    PRINTF(T(" メッセージが,見つからなかった！！！ = %x\n", "Message not found!!! = %x\n"), textId);
    messageTableEntry = sNesMessageEntryTablePtr;

    if (gSaveContext.language == LANGUAGE_ENG) {
        foundSeg = messageTableEntry->segment;
        font->charTexBuf[0] = messageTableEntry->typePos;
        messageTableEntry++;
        nextSeg = messageTableEntry->segment;
    } else {
        languageSegmentTable =
            (gSaveContext.language == LANGUAGE_GER) ? sGerMessageEntryTablePtr : sFraMessageEntryTablePtr;
        foundSeg = *languageSegmentTable;
        font->charTexBuf[0] = messageTableEntry->typePos;
        languageSegmentTable++;
        nextSeg = *languageSegmentTable;
    }
    font->msgOffset = foundSeg - seg;
    font->msgLength = nextSeg - foundSeg;
}

#endif

void Message_FindCreditsMessage(PlayState* play, u16 textId) {
    const char* foundSeg;
    const char* nextSeg;
    const char* seg;
    Font* font = &play->msgCtx.font;
    MessageTableEntry* messageTableEntry = sStaffMessageEntryTablePtr;

    seg = messageTableEntry->segment;
    while (messageTableEntry->textId != 0xFFFF) {
        if (messageTableEntry->textId == textId) {
            foundSeg = messageTableEntry->segment;
            font->charTexBuf[0] = messageTableEntry->typePos;
            messageTableEntry++;
            nextSeg = messageTableEntry->segment;
            font->msgOffset = foundSeg - seg;
            font->msgLength = nextSeg - foundSeg;
            PRINTF(T(" メッセージが,見つかった！！！ = %x  (data=%x) (data0=%x) (data1=%x) (data2=%x) (data3=%x)\n",
                     "Message found!!! = %x  (data=%x) (data0=%x) (data1=%x) (data2=%x) (data3=%x)\n"),
                   textId, font->msgOffset, font->msgLength, foundSeg, seg, nextSeg);
            return;
        }
        messageTableEntry++;
    }
}

void Message_SetTextColor(MessageContext* msgCtx, u16 colorParameter) {
    switch (colorParameter) {
        case TEXT_COLOR_RED:
            if (msgCtx->textBoxType == TEXTBOX_TYPE_WOODEN) {
                msgCtx->textColorR = 255;
                msgCtx->textColorG = 120;
                msgCtx->textColorB = 0;
            } else {
                msgCtx->textColorR = 255;
                msgCtx->textColorG = 60;
                msgCtx->textColorB = 60;
            }
            break;
        case TEXT_COLOR_ADJUSTABLE:
            if (msgCtx->textBoxType == TEXTBOX_TYPE_WOODEN) {
                msgCtx->textColorR = R_TEXT_ADJUST_COLOR_1_R;
                msgCtx->textColorG = R_TEXT_ADJUST_COLOR_1_G;
                msgCtx->textColorB = R_TEXT_ADJUST_COLOR_1_B;
            } else {
                msgCtx->textColorR = R_TEXT_ADJUST_COLOR_2_R;
                msgCtx->textColorG = R_TEXT_ADJUST_COLOR_2_G;
                msgCtx->textColorB = R_TEXT_ADJUST_COLOR_2_B;
            }
            break;
        case TEXT_COLOR_BLUE:
            if (msgCtx->textBoxType == TEXTBOX_TYPE_WOODEN) {
                msgCtx->textColorR = 80;
                msgCtx->textColorG = 110;
                msgCtx->textColorB = 255;
            } else {
                msgCtx->textColorR = 80;
                msgCtx->textColorG = 90;
                msgCtx->textColorB = 255;
            }
            break;
        case TEXT_COLOR_LIGHTBLUE:
            if (msgCtx->textBoxType == TEXTBOX_TYPE_WOODEN) {
                msgCtx->textColorR = 90;
                msgCtx->textColorG = 180;
                msgCtx->textColorB = 255;
            } else if (msgCtx->textBoxType == TEXTBOX_TYPE_NONE_NO_SHADOW) {
                msgCtx->textColorR = 80;
                msgCtx->textColorG = 150;
                msgCtx->textColorB = 180;
            } else {
                msgCtx->textColorR = 100;
                msgCtx->textColorG = 180;
                msgCtx->textColorB = 255;
            }
            break;
        case TEXT_COLOR_PURPLE:
            if (msgCtx->textBoxType == TEXTBOX_TYPE_WOODEN) {
                msgCtx->textColorR = 210;
                msgCtx->textColorG = 100;
                msgCtx->textColorB = 255;
            } else {
                msgCtx->textColorR = 255;
                msgCtx->textColorG = 150;
                msgCtx->textColorB = 180;
            }
            break;
        case TEXT_COLOR_YELLOW:
            if (msgCtx->textBoxType == TEXTBOX_TYPE_WOODEN) {
                msgCtx->textColorR = 255;
                msgCtx->textColorG = 255;
                msgCtx->textColorB = 30;
            } else {
                msgCtx->textColorR = 225;
                msgCtx->textColorG = 255;
                msgCtx->textColorB = 50;
            }
            break;
        case TEXT_COLOR_BLACK:
            msgCtx->textColorR = msgCtx->textColorG = msgCtx->textColorB = 0;
            break;
        case TEXT_COLOR_DEFAULT:
        default:
            if (msgCtx->textBoxType == TEXTBOX_TYPE_NONE_NO_SHADOW) {
                msgCtx->textColorR = msgCtx->textColorG = msgCtx->textColorB = 0;
            } else {
                msgCtx->textColorR = msgCtx->textColorG = msgCtx->textColorB = 255;
            }
            break;
    }
}

void Message_DrawTextboxIcon(PlayState* play, Gfx** p, s16 x, s16 y) {
    static s16 sIconPrimColors[][3] = {
        { OCARINA_ICON_PRIM_1_R, OCARINA_ICON_PRIM_1_G, OCARINA_ICON_PRIM_1_B },
        { OCARINA_ICON_PRIM_2_R, OCARINA_ICON_PRIM_2_G, OCARINA_ICON_PRIM_2_B },
    };
    static s16 sIconEnvColors[][3] = {
        { OCARINA_ICON_ENV_1_R, OCARINA_ICON_ENV_1_G, OCARINA_ICON_ENV_1_B },
        { OCARINA_ICON_ENV_2_R, OCARINA_ICON_ENV_2_G, OCARINA_ICON_ENV_2_B },
    };
    static s16 sIconPrimR = OCARINA_ICON_PRIM_1_R;
    static s16 sIconPrimG = OCARINA_ICON_PRIM_1_G;
    static s16 sIconPrimB = OCARINA_ICON_PRIM_1_B;
    static s16 sIconFlashTimer = 12;
    static s16 sIconFlashColorIdx = 0;
    static s16 sIconEnvR = 0;
    static s16 sIconEnvG = 0;
    static s16 sIconEnvB = 0;
    MessageContext* msgCtx = &play->msgCtx;
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

    primR = (ABS(sIconPrimR - sIconPrimColors[sIconFlashColorIdx][0])) / sIconFlashTimer;
    primG = (ABS(sIconPrimG - sIconPrimColors[sIconFlashColorIdx][1])) / sIconFlashTimer;
    primB = (ABS(sIconPrimB - sIconPrimColors[sIconFlashColorIdx][2])) / sIconFlashTimer;

    if (sIconPrimR >= sIconPrimColors[sIconFlashColorIdx][0]) {
        sIconPrimR -= primR;
    } else {
        sIconPrimR += primR;
    }

    if (sIconPrimG >= sIconPrimColors[sIconFlashColorIdx][1]) {
        sIconPrimG -= primG;
    } else {
        sIconPrimG += primG;
    }

    if (sIconPrimB >= sIconPrimColors[sIconFlashColorIdx][2]) {
        sIconPrimB -= primB;
    } else {
        sIconPrimB += primB;
    }

    envR = (ABS(sIconEnvR - sIconEnvColors[sIconFlashColorIdx][0])) / sIconFlashTimer;
    envG = (ABS(sIconEnvG - sIconEnvColors[sIconFlashColorIdx][1])) / sIconFlashTimer;
    envB = (ABS(sIconEnvB - sIconEnvColors[sIconFlashColorIdx][2])) / sIconFlashTimer;

    if (sIconEnvR >= sIconEnvColors[sIconFlashColorIdx][0]) {
        sIconEnvR -= envR;
    } else {
        sIconEnvR += envR;
    }

    if (sIconEnvG >= sIconEnvColors[sIconFlashColorIdx][1]) {
        sIconEnvG -= envG;
    } else {
        sIconEnvG += envG;
    }

    if (sIconEnvB >= sIconEnvColors[sIconFlashColorIdx][2]) {
        sIconEnvB -= envB;
    } else {
        sIconEnvB += envB;
    }

    sIconFlashTimer--;

    if (sIconFlashTimer == 0) {
        sIconPrimR = sIconPrimColors[sIconFlashColorIdx][0];
        sIconPrimG = sIconPrimColors[sIconFlashColorIdx][1];
        sIconPrimB = sIconPrimColors[sIconFlashColorIdx][2];
        sIconEnvR = sIconEnvColors[sIconFlashColorIdx][0];
        sIconEnvG = sIconEnvColors[sIconFlashColorIdx][1];
        sIconEnvB = sIconEnvColors[sIconFlashColorIdx][2];
        sIconFlashTimer = 12;
        sIconFlashColorIdx ^= 1;
    }

    gDPPipeSync(gfx++);

    gDPSetCombineLERP(gfx++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

    gDPSetPrimColor(gfx++, 0, 0, sIconPrimR, sIconPrimG, sIconPrimB, 255);
    gDPSetEnvColor(gfx++, sIconEnvR, sIconEnvG, sIconEnvB, 255);

    gDPLoadTextureBlock_4b(gfx++, iconTexture, G_IM_FMT_I, FONT_CHAR_TEX_WIDTH, FONT_CHAR_TEX_HEIGHT, 0,
                           G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                           G_TX_NOLOD);

    sCharTexSize = 16.0f * ((f32)R_TEXT_CHAR_SCALE / 100.0f);
    sCharTexScale = 1024.0f / ((f32)R_TEXT_CHAR_SCALE / 100.0f);

    gSPTextureRectangle(gfx++, x << 2, y << 2, (x + sCharTexSize) << 2, (y + sCharTexSize) << 2, G_TX_RENDERTILE, 0, 0,
                        sCharTexScale, sCharTexScale);

    msgCtx->stateTimer++;

    *p = gfx;
}

#define MESSAGE_SPACE_WIDTH 6
f32 sFontWidths[144] = {
    8.0f,  // ' '
    8.0f,  // '!'
    6.0f,  // '"'
    9.0f,  // '#'
    9.0f,  // '$'
    14.0f, // '%'
    12.0f, // '&'
    3.0f,  // '''
    7.0f,  // '('
    7.0f,  // ')'
    7.0f,  // '*'
    9.0f,  // '+'
    4.0f,  // ','
    6.0f,  // '-'
    4.0f,  // '.'
    9.0f,  // '/'
    10.0f, // '0'
    5.0f,  // '1'
    9.0f,  // '2'
    9.0f,  // '3'
    10.0f, // '4'
    9.0f,  // '5'
    9.0f,  // '6'
    9.0f,  // '7'
    9.0f,  // '8'
    9.0f,  // '9'
    6.0f,  // ':'
    6.0f,  // ';'
    9.0f,  // '<'
    11.0f, // '='
    9.0f,  // '>'
    11.0f, // '?'
    13.0f, // '@'
    12.0f, // 'A'
    9.0f,  // 'B'
    11.0f, // 'C'
    11.0f, // 'D'
    8.0f,  // 'E'
    8.0f,  // 'F'
    12.0f, // 'G'
    10.0f, // 'H'
    4.0f,  // 'I'
    8.0f,  // 'J'
    10.0f, // 'K'
    8.0f,  // 'L'
    13.0f, // 'M'
    11.0f, // 'N'
    13.0f, // 'O'
    9.0f,  // 'P'
    13.0f, // 'Q'
    10.0f, // 'R'
    10.0f, // 'S'
    9.0f,  // 'T'
    10.0f, // 'U'
    11.0f, // 'V'
    15.0f, // 'W'
    11.0f, // 'X'
    10.0f, // 'Y'
    10.0f, // 'Z'
    7.0f,  // '['
    10.0f, // '\'
    7.0f,  // ']'
    10.0f, // '^'
    9.0f,  // '_'
    5.0f,  // '`'
    8.0f,  // 'a'
    9.0f,  // 'b'
    8.0f,  // 'c'
    9.0f,  // 'd'
    9.0f,  // 'e'
    6.0f,  // 'f'
    9.0f,  // 'g'
    8.0f,  // 'h'
    4.0f,  // 'i'
    6.0f,  // 'j'
    8.0f,  // 'k'
    4.0f,  // 'l'
    12.0f, // 'm'
    9.0f,  // 'n'
    9.0f,  // 'o'
    9.0f,  // 'p'
    9.0f,  // 'q'
    7.0f,  // 'r'
    8.0f,  // 's'
    7.0f,  // 't'
    8.0f,  // 'u'
    9.0f,  // 'v'
    12.0f, // 'w'
    8.0f,  // 'x'
    9.0f,  // 'y'
    8.0f,  // 'z'
    7.0f,  // '{'
    5.0f,  // '|'
    7.0f,  // '}'
    10.0f, // '~'
    10.0f, // ' '
    12.0f, // 'À'
#if OOT_NTSC
    12.0f, // 'î'
#else
    6.0f, // 'î'
#endif
    12.0f, // 'Â'
    12.0f, // 'Ä'
    11.0f, // 'Ç'
    8.0f,  // 'È'
    8.0f,  // 'É'
    8.0f,  // 'Ê'
    6.0f,  // 'Ë'
    6.0f,  // 'Ï'
    13.0f, // 'Ô'
    13.0f, // 'Ö'
    10.0f, // 'Ù'
    10.0f, // 'Û'
    10.0f, // 'Ü'
    9.0f,  // 'ß'
    8.0f,  // 'à'
    8.0f,  // 'á'
    8.0f,  // 'â'
    8.0f,  // 'ä'
    8.0f,  // 'ç'
    9.0f,  // 'è'
    9.0f,  // 'é'
    9.0f,  // 'ê'
    9.0f,  // 'ë'
    6.0f,  // 'ï'
    9.0f,  // 'ô'
    9.0f,  // 'ö'
    9.0f,  // 'ù'
    9.0f,  // 'û'
    9.0f,  // 'ü'
    14.0f, // '[A]'
    14.0f, // '[B]'
    14.0f, // '[C]'
    14.0f, // '[L]'
    14.0f, // '[R]'
    14.0f, // '[Z]'
    14.0f, // '[C-Up]'
    14.0f, // '[C-Down]'
    14.0f, // '[C-Left]'
    14.0f, // '[C-Right]'
    14.0f, // '▼'
    14.0f, // '[Control-Pad]'
    14.0f, // '[D-Pad]'
    14.0f, // ?
    14.0f, // ?
    14.0f, // ?
    14.0f, // ?
};

u16 Message_DrawItemIcon(PlayState* play, u16 itemId, Gfx** p, u16 i) {
    s32 pad;
    Gfx* gfx = *p;
    MessageContext* msgCtx = &play->msgCtx;

    // clang-format off
    if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) { \
        Audio_PlaySfxGeneral(NA_SE_NONE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultReverb);
    }
    // clang-format on

    gDPPipeSync(gfx++);
    gDPSetCombineMode(gfx++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(gfx++, 0, 0, 255, 255, 255, msgCtx->textColorAlpha);

    if (itemId >= ITEM_MEDALLION_FOREST) {
        gDPLoadTextureBlock(gfx++, msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE, G_IM_FMT_RGBA, G_IM_SIZ_32b,
                            QUEST_ICON_WIDTH, QUEST_ICON_HEIGHT, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    } else {
        gDPLoadTextureBlock(gfx++, msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE, G_IM_FMT_RGBA, G_IM_SIZ_32b,
                            ITEM_ICON_WIDTH, ITEM_ICON_HEIGHT, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    }
    gSPTextureRectangle(gfx++, (msgCtx->textPosX + R_TEXTBOX_ICON_XPOS) << 2, R_TEXTBOX_ICON_YPOS << 2,
                        (msgCtx->textPosX + R_TEXTBOX_ICON_XPOS + R_TEXTBOX_ICON_DIMENSION) << 2,
                        (R_TEXTBOX_ICON_YPOS + R_TEXTBOX_ICON_DIMENSION) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);
    gDPPipeSync(gfx++);
    gDPSetCombineLERP(gfx++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0);

    msgCtx->textPosX += 32;

    i++;
    *p = gfx;

    return i;
}

void Message_HandleOcarina(PlayState* play) {
    MessageContext* msgCtx = &play->msgCtx;

    if (play->msgCtx.msgMode == MSGMODE_TEXT_DISPLAYING) {
        play->msgCtx.ocarinaMode = OCARINA_MODE_01;

        if (msgCtx->ocarinaAction == OCARINA_ACTION_SCARECROW_LONG_RECORDING) {
            msgCtx->msgMode = MSGMODE_SCARECROW_LONG_RECORDING_START;
            PRINTF(T("録音開始 録音開始 録音開始 録音開始  -> ",
                     "Recording Start  Recording Start  Recording Start  Recording Start -> "));
        } else if (msgCtx->ocarinaAction == OCARINA_ACTION_SCARECROW_LONG_PLAYBACK) {
            PRINTF(T("録音再生 録音再生 録音再生 録音再生  -> ",
                     "Recording Playback  Recording Playback  Recording Playback  Recording Playback -> "));
            AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
            AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
            msgCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
            sOcarinaButtonIndexBufPos = sOcarinaButtonIndexBufLen = 0;
            msgCtx->ocarinaStaff->pos = sOcarinaButtonIndexBufPos;
            Message_ResetOcarinaNoteState();
            msgCtx->stateTimer = 3;
            msgCtx->msgMode = MSGMODE_SCARECROW_LONG_PLAYBACK;
            AudioOcarina_SetPlaybackSong(OCARINA_SONG_SCARECROW_LONG + 1, 1);
        } else if (msgCtx->ocarinaAction == OCARINA_ACTION_SCARECROW_SPAWN_RECORDING) {
            msgCtx->msgMode = MSGMODE_SCARECROW_SPAWN_RECORDING_START;
            PRINTF(T("８音録音開始 ８音録音開始 ８音録音開始  -> ",
                     "8 Note Recording Start  8 Note Recording Start  8 Note Recording Start -> "));
        } else if (msgCtx->ocarinaAction == OCARINA_ACTION_SCARECROW_SPAWN_PLAYBACK) {
            PRINTF(T("８音再生 ８音再生 ８音再生  -> ", "8 Note Playback  8 Note Playback  8 Note Playback -> "));
            AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
            AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
            msgCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
            sOcarinaButtonIndexBufPos = sOcarinaButtonIndexBufLen = 0;
            msgCtx->ocarinaStaff->pos = sOcarinaButtonIndexBufPos;
            Message_ResetOcarinaNoteState();
            msgCtx->stateTimer = 3;
            msgCtx->msgMode = MSGMODE_SCARECROW_SPAWN_PLAYBACK;
            AudioOcarina_SetPlaybackSong(OCARINA_SONG_SCARECROW_SPAWN + 1, 1);
        } else if (msgCtx->ocarinaAction == OCARINA_ACTION_MEMORY_GAME) {
            msgCtx->msgMode = MSGMODE_MEMORY_GAME_START;
            PRINTF(T("輪唱開始 輪唱開始 輪唱開始 輪唱開始  -> ",
                     "Musical Round Start  Musical Round Start  Musical Round Start  Musical Round Start -> "));
        } else if (msgCtx->ocarinaAction == OCARINA_ACTION_FROGS) {
            msgCtx->msgMode = MSGMODE_FROGS_START;
            PRINTF(T("カエルの合唱 カエルの合唱  -> ", "Frog Chorus  Frog Chorus -> "));
        } else {
            PRINTF(T("オカリナ（%d） ", "Ocarina (%d)"), msgCtx->ocarinaAction);
            if (msgCtx->ocarinaAction == OCARINA_ACTION_UNK_0 || msgCtx->ocarinaAction == OCARINA_ACTION_FREE_PLAY ||
                msgCtx->ocarinaAction >= OCARINA_ACTION_CHECK_SARIA) {
                msgCtx->msgMode = MSGMODE_OCARINA_STARTING;
                PRINTF("000000000000  -> ");
            } else if (msgCtx->ocarinaAction >= OCARINA_ACTION_TEACH_MINUET &&
                       msgCtx->ocarinaAction <= OCARINA_ACTION_TEACH_STORMS) {
                msgCtx->msgMode = MSGMODE_SONG_DEMONSTRATION_STARTING;
                PRINTF("111111111111  -> ");
            } else {
                msgCtx->msgMode = MSGMODE_SONG_PLAYBACK_STARTING;
                PRINTF("222222222222  -> ");
            }
        }
        PRINTF("msg_mode=%d\n", msgCtx->msgMode);
    }
}

#if OOT_NTSC
/**
 * Draws the text contents of a jpn textbox, up to the current point that has
 * been scrolled to so far.
 */
void Message_DrawTextWide(PlayState* play, Gfx** gfxP) {
    MessageContext* msgCtx = &play->msgCtx;
    Font* font = &play->msgCtx.font;
    u16 character;
    u16 j;
    u16 i;
    u16 charTexIdx;
    Gfx* gfx = *gfxP;

    play->msgCtx.textPosX = R_TEXT_INIT_XPOS;
    play->msgCtx.textPosY = R_TEXT_INIT_YPOS;

    if (msgCtx->textBoxType == TEXTBOX_TYPE_NONE_NO_SHADOW) {
        msgCtx->textColorR = msgCtx->textColorG = msgCtx->textColorB = 0;
    } else {
        msgCtx->textColorR = msgCtx->textColorG = msgCtx->textColorB = 255;
    }

    msgCtx->unk_E3D0 = 0;
    charTexIdx = 0;

    for (i = 0; i < msgCtx->textDrawPos; i++) {
        character = msgCtx->msgBufDecodedWide[i];

        switch (character) {
            case MESSAGE_WIDE_NEWLINE:
                msgCtx->textPosY += R_TEXT_LINE_SPACING;
                msgCtx->textPosX = R_TEXT_INIT_XPOS;
                if (msgCtx->choiceNum == 1) {
                    msgCtx->textPosX += 32;
                }
                if (msgCtx->choiceNum == 2) {
                    msgCtx->textPosX += 32;
                }
                break;
            case MESSAGE_WIDE_COLOR:
                Message_SetTextColor(msgCtx, msgCtx->msgBufDecodedWide[++i]);
                break;
            case MESSAGE_WIDE_CHAR_SPACE:
                msgCtx->textPosX += MESSAGE_SPACE_WIDTH;
                break;
            case MESSAGE_WIDE_BOX_BREAK:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    if (!sTextboxSkipped) {
                        Audio_PlaySfxGeneral(NA_SE_NONE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        msgCtx->msgMode = MSGMODE_TEXT_AWAIT_NEXT;
                        Font_LoadMessageBoxIcon(&play->msgCtx.font, TEXTBOX_ICON_TRIANGLE);
                    } else {
                        msgCtx->msgMode = MSGMODE_TEXT_NEXT_MSG;
                        msgCtx->textUnskippable = false;
                        msgCtx->msgBufPos++;
                    }
                }
                *gfxP = gfx;
                return;
            case MESSAGE_WIDE_SHIFT:
                msgCtx->textPosX += msgCtx->msgBufDecodedWide[++i];
                break;
            case MESSAGE_WIDE_TEXTID:
                msgCtx->textboxEndType = TEXTBOX_ENDTYPE_HAS_NEXT;
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    Audio_PlaySfxGeneral(NA_SE_NONE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    msgCtx->msgMode = MSGMODE_TEXT_DONE;
                    Font_LoadMessageBoxIcon(&play->msgCtx.font, TEXTBOX_ICON_TRIANGLE);
                }
                *gfxP = gfx;
                return;
            case MESSAGE_WIDE_QUICKTEXT_ENABLE:
                if (i + 1 == msgCtx->textDrawPos && (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING ||
                                                     (msgCtx->msgMode >= MSGMODE_OCARINA_STARTING &&
                                                      msgCtx->msgMode < MSGMODE_SCARECROW_LONG_RECORDING_START))) {
                    j = i;
                    while (true) {
                        character = msgCtx->msgBufDecodedWide[j];
                        if ((character != MESSAGE_WIDE_QUICKTEXT_DISABLE) && (character != MESSAGE_WIDE_PERSISTENT) &&
                            (character != MESSAGE_WIDE_EVENT) && (character != MESSAGE_WIDE_BOX_BREAK_DELAYED) &&
                            (character != MESSAGE_WIDE_AWAIT_BUTTON_PRESS) && (character != MESSAGE_WIDE_BOX_BREAK) &&
                            (character != MESSAGE_WIDE_END)) {
                            j++;
                        } else {
                            break;
                        }
                    }
                    i = j - 1;
                    msgCtx->textDrawPos = i + 1;
                }
                FALLTHROUGH;
            case MESSAGE_WIDE_QUICKTEXT_DISABLE:
                break;
            case MESSAGE_WIDE_AWAIT_BUTTON_PRESS:
                if (i + 1 == msgCtx->textDrawPos) {
                    if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                        msgCtx->msgMode = MSGMODE_TEXT_AWAIT_INPUT;
                        Font_LoadMessageBoxIcon(&play->msgCtx.font, TEXTBOX_ICON_TRIANGLE);
                    }
                    *gfxP = gfx;
                    return;
                }
                break;
            case MESSAGE_WIDE_BOX_BREAK_DELAYED:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->stateTimer = msgCtx->msgBufDecodedWide[++i];
                    msgCtx->msgMode = MSGMODE_TEXT_DELAYED_BREAK;
                }
                *gfxP = gfx;
                return;
            case MESSAGE_WIDE_FADE2:
                break;
            case MESSAGE_WIDE_SFX:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING && !sMessageHasSetSfx) {
                    sMessageHasSetSfx = true;
                    Audio_PlaySfxGeneral(msgCtx->msgBufDecodedWide[i + 1], &gSfxDefaultPos, 4,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                }
                i++;
                break;
            case MESSAGE_WIDE_ITEM_ICON:
                i = Message_DrawItemIcon(play, msgCtx->msgBufDecodedWide[i + 1], &gfx, i);
                break;
            case MESSAGE_WIDE_BACKGROUND:
                // clang-format off
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) { \
                    Audio_PlaySfxGeneral(NA_SE_NONE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                }
                // clang-format on
                gDPPipeSync(gfx++);
                gDPSetCombineMode(gfx++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
                gDPSetPrimColor(gfx++, 0, 0, sTextboxBackgroundBackPrimColors[msgCtx->textboxBackgroundBackColorIdx][0],
                                sTextboxBackgroundBackPrimColors[msgCtx->textboxBackgroundBackColorIdx][1],
                                sTextboxBackgroundBackPrimColors[msgCtx->textboxBackgroundBackColorIdx][2],
                                msgCtx->textColorAlpha);

                gDPLoadTextureBlock_4b(gfx++, msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE, G_IM_FMT_I, 96, 48, 0,
                                       G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                       G_TX_NOLOD, G_TX_NOLOD);
                gSPTextureRectangle(
                    gfx++, (msgCtx->textPosX + 1) << 2,
                    (R_TEXTBOX_BG_YPOS + sTextboxBackgroundYOffsets[msgCtx->textboxBackgroundYOffsetIdx]) << 2,
                    (msgCtx->textPosX + 96 + 1) << 2,
                    (R_TEXTBOX_BG_YPOS + sTextboxBackgroundYOffsets[msgCtx->textboxBackgroundYOffsetIdx] + 48) << 2,
                    G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

                gDPLoadTextureBlock_4b(gfx++, msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE + 0x900, G_IM_FMT_I, 96,
                                       48, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                                       G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                gSPTextureRectangle(
                    gfx++, (msgCtx->textPosX + 96 + 1) << 2,
                    (R_TEXTBOX_BG_YPOS + sTextboxBackgroundYOffsets[msgCtx->textboxBackgroundYOffsetIdx]) << 2,
                    (msgCtx->textPosX + 96 + 1 + 96 + 1) << 2,
                    (R_TEXTBOX_BG_YPOS + sTextboxBackgroundYOffsets[msgCtx->textboxBackgroundYOffsetIdx] + 48) << 2,
                    G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

                gDPPipeSync(gfx++);
                gDPSetPrimColor(gfx++, 0, 0, sTextboxBackgroundForePrimColors[msgCtx->textboxBackgroundForeColorIdx][0],
                                sTextboxBackgroundForePrimColors[msgCtx->textboxBackgroundForeColorIdx][1],
                                sTextboxBackgroundForePrimColors[msgCtx->textboxBackgroundForeColorIdx][2],
                                msgCtx->textColorAlpha);

                gDPLoadTextureBlock_4b(gfx++, (msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE), G_IM_FMT_I, 96, 48, 0,
                                       G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                       G_TX_NOLOD, G_TX_NOLOD);
                gSPTextureRectangle(gfx++, msgCtx->textPosX << 2, R_TEXTBOX_BG_YPOS << 2, (msgCtx->textPosX + 96) << 2,
                                    (R_TEXTBOX_BG_YPOS + 48) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

                gDPLoadTextureBlock_4b(gfx++, (msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE + 0x900), G_IM_FMT_I,
                                       96, 48, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                                       G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                gSPTextureRectangle(gfx++, (msgCtx->textPosX + 96) << 2, R_TEXTBOX_BG_YPOS << 2,
                                    (msgCtx->textPosX + 192) << 2, (R_TEXTBOX_BG_YPOS + 48) << 2, G_TX_RENDERTILE, 0, 0,
                                    1 << 10, 1 << 10);

                gDPPipeSync(gfx++);
                gDPSetCombineLERP(gfx++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0,
                                  PRIMITIVE, 0);

                msgCtx->textPosX += 32;
                break;
            case MESSAGE_WIDE_TEXT_SPEED:
                msgCtx->textDelay = msgCtx->msgBufDecodedWide[++i];
                break;
            case MESSAGE_WIDE_UNSKIPPABLE:
                msgCtx->textUnskippable = true;
                break;
            case MESSAGE_WIDE_TWO_CHOICE:
                msgCtx->textboxEndType = TEXTBOX_ENDTYPE_2_CHOICE;
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->choiceTextId = msgCtx->textId;
                    msgCtx->stateTimer = 4;
                    msgCtx->choiceIndex = 0;
                    Font_LoadMessageBoxIcon(font, TEXTBOX_ICON_ARROW);
                }
                break;
            case MESSAGE_WIDE_THREE_CHOICE:
                msgCtx->textboxEndType = TEXTBOX_ENDTYPE_3_CHOICE;
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->choiceTextId = msgCtx->textId;
                    msgCtx->stateTimer = 4;
                    msgCtx->choiceIndex = 0;
                    Font_LoadMessageBoxIcon(font, TEXTBOX_ICON_ARROW);
                }
                break;
            case MESSAGE_WIDE_END:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->msgMode = MSGMODE_TEXT_DONE;
                    if (msgCtx->textboxEndType == TEXTBOX_ENDTYPE_DEFAULT) {
                        Audio_PlaySfxGeneral(NA_SE_SY_MESSAGE_END, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        Font_LoadMessageBoxIcon(font, TEXTBOX_ICON_SQUARE);
                        if (play->csCtx.state == CS_STATE_IDLE) {
                            Interface_SetDoAction(play, DO_ACTION_RETURN);
                        }
                    }
                }
                *gfxP = gfx;
                return;
            case MESSAGE_WIDE_OCARINA:
                if (i + 1 == msgCtx->textDrawPos) {
                    Message_HandleOcarina(play);
                    *gfxP = gfx;
                    return;
                }
                break;
            case MESSAGE_WIDE_FADE:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->msgMode = MSGMODE_TEXT_DONE;
                    msgCtx->textboxEndType = TEXTBOX_ENDTYPE_FADING;
                    msgCtx->stateTimer = msgCtx->msgBufDecodedWide[++i];
                    Font_LoadMessageBoxIcon(font, TEXTBOX_ICON_SQUARE);
                    if (play->csCtx.state == CS_STATE_IDLE) {
                        Interface_SetDoAction(play, DO_ACTION_RETURN);
                    }
                }
                *gfxP = gfx;
                return;
            case MESSAGE_WIDE_PERSISTENT:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    Audio_PlaySfxGeneral(NA_SE_NONE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    msgCtx->msgMode = MSGMODE_TEXT_DONE;
                    msgCtx->textboxEndType = TEXTBOX_ENDTYPE_PERSISTENT;
                }
                *gfxP = gfx;
                return;
            case MESSAGE_WIDE_EVENT:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->msgMode = MSGMODE_TEXT_DONE;
                    msgCtx->textboxEndType = TEXTBOX_ENDTYPE_EVENT;
                    Font_LoadMessageBoxIcon(&play->msgCtx.font, TEXTBOX_ICON_TRIANGLE);
                    Audio_PlaySfxGeneral(NA_SE_SY_MESSAGE_END, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                }
                *gfxP = gfx;
                return;
            default:
                switch (character) {
                    case MESSAGE_WIDE_CHAR_PARENTHESES_LEFT:
                    case MESSAGE_WIDE_CHAR_KAGIKAKKO_LEFT:
                        msgCtx->textPosX -= 6;
                        break;
                    case MESSAGE_WIDE_CHAR_NAKATEN:
                        msgCtx->textPosX -= 3;
                        break;
                    case MESSAGE_WIDE_CHAR_QUESTION_MARK:
                    case MESSAGE_WIDE_CHAR_EXCLAMATION_MARK:
                    case MESSAGE_WIDE_CHAR_CIRCUMFLEX_ACCENT:
                    case MESSAGE_WIDE_CHAR_ONE:
                        msgCtx->textPosX -= 2;
                        break;
                }
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING && i + 1 == msgCtx->textDrawPos &&
                    msgCtx->textDelayTimer == msgCtx->textDelay) {
                    Audio_PlaySfxGeneral(NA_SE_NONE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                }
                Message_DrawTextChar(play, &font->charTexBuf[charTexIdx], &gfx);
                charTexIdx += FONT_CHAR_TEX_SIZE;

                switch (character) {
                    case MESSAGE_WIDE_CHAR_PERIOD:
                        msgCtx->textPosX += 3;
                        break;
                    case MESSAGE_WIDE_CHAR_PARENTHESES_RIGHT:
                    case MESSAGE_WIDE_CHAR_KAGIKAKKO_RIGHT:
                        msgCtx->textPosX += 5;
                        break;
                    case MESSAGE_WIDE_CHAR_TOUTEN:
                    case MESSAGE_WIDE_CHAR_KUTEN:
                    case MESSAGE_WIDE_CHAR_DOUBLE_QUOTATION_MARK_RIGHT:
                        msgCtx->textPosX += 7;
                        break;
                    case MESSAGE_WIDE_CHAR_CIRCUMFLEX_ACCENT:
                    case MESSAGE_WIDE_CHAR_NUMBER_SIGN:
                    case MESSAGE_WIDE_CHAR_ASTERISK:
                        msgCtx->textPosX += 9;
                        break;
                    case MESSAGE_WIDE_CHAR_NAKATEN:
                        msgCtx->textPosX += 10;
                        break;
                    default:
                        msgCtx->textPosX += (s32)(16.0f * (R_TEXT_CHAR_SCALE / 100.0f));
                        break;
                }
                break;
        }
    }

    if (msgCtx->textDelayTimer == 0) {
        msgCtx->textDrawPos = i + 1;
        msgCtx->textDelayTimer = msgCtx->textDelay;
    } else {
        msgCtx->textDelayTimer--;
    }
    *gfxP = gfx;
}
#endif

/**
 * Draws the text contents of an eng/ger/fra textbox, up to the current point that has
 * been scrolled to so far.
 */
void Message_DrawText(PlayState* play, Gfx** gfxP) {
    MessageContext* msgCtx = &play->msgCtx;
    s16 pad;
    u8 character;
    u16 j;
    u16 i;
    u16 sfxHi;
    u16 charTexIdx;
    Font* font = &play->msgCtx.font;
    Gfx* gfx = *gfxP;

    play->msgCtx.textPosX = R_TEXT_INIT_XPOS;
    if (!sTextIsCredits) {
        msgCtx->textPosY = R_TEXT_INIT_YPOS;
    } else {
        msgCtx->textPosY = YREG(1);
    }

    if (msgCtx->textBoxType == TEXTBOX_TYPE_NONE_NO_SHADOW) {
        msgCtx->textColorR = msgCtx->textColorG = msgCtx->textColorB = 0;
    } else {
        msgCtx->textColorR = msgCtx->textColorG = msgCtx->textColorB = 255;
    }

    msgCtx->unk_E3D0 = 0;
    charTexIdx = 0;

    for (i = 0; i < msgCtx->textDrawPos; i++) {
        character = msgCtx->msgBufDecoded[i];

        switch (character) {
            case MESSAGE_NEWLINE:
                msgCtx->textPosX = R_TEXT_INIT_XPOS;
                if (msgCtx->choiceNum == 1 || msgCtx->choiceNum == 3) {
                    msgCtx->textPosX += 32;
                }
                if (msgCtx->choiceNum == 2 && msgCtx->textPosY != R_TEXT_INIT_YPOS) {
                    msgCtx->textPosX += 32;
                }
                msgCtx->textPosY += R_TEXT_LINE_SPACING;
                break;
            case MESSAGE_COLOR:
                Message_SetTextColor(msgCtx, msgCtx->msgBufDecoded[++i] & 0xF);
                break;
            case MESSAGE_CHAR_SPACE:
                msgCtx->textPosX += MESSAGE_SPACE_WIDTH;
                break;
            case MESSAGE_BOX_BREAK:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    if (!sTextboxSkipped) {
                        Audio_PlaySfxGeneral(NA_SE_NONE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        msgCtx->msgMode = MSGMODE_TEXT_AWAIT_NEXT;
                        Font_LoadMessageBoxIcon(font, TEXTBOX_ICON_TRIANGLE);
                    } else {
                        msgCtx->msgMode = MSGMODE_TEXT_NEXT_MSG;
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
                msgCtx->textboxEndType = TEXTBOX_ENDTYPE_HAS_NEXT;
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    Audio_PlaySfxGeneral(NA_SE_NONE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    msgCtx->msgMode = MSGMODE_TEXT_DONE;
                    Font_LoadMessageBoxIcon(font, TEXTBOX_ICON_TRIANGLE);
                }
                *gfxP = gfx;
                return;
            case MESSAGE_QUICKTEXT_ENABLE:
                if (i + 1 == msgCtx->textDrawPos && (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING ||
                                                     (msgCtx->msgMode >= MSGMODE_OCARINA_STARTING &&
                                                      msgCtx->msgMode < MSGMODE_SCARECROW_LONG_RECORDING_START))) {
                    j = i;
                    while (true) {
                        character = msgCtx->msgBufDecoded[j];
                        if (character == MESSAGE_SHIFT) {
                            j += 2;
                        } else if ((character != MESSAGE_QUICKTEXT_DISABLE) && (character != MESSAGE_PERSISTENT) &&
                                   (character != MESSAGE_EVENT) && (character != MESSAGE_BOX_BREAK_DELAYED) &&
                                   (character != MESSAGE_AWAIT_BUTTON_PRESS) && (character != MESSAGE_BOX_BREAK) &&
                                   (character != MESSAGE_END)) {
                            j++;
                        } else {
                            break;
                        }
                    }
                    i = j - 1;
                    msgCtx->textDrawPos = i + 1;
                }
                FALLTHROUGH;
            case MESSAGE_QUICKTEXT_DISABLE:
                break;
            case MESSAGE_AWAIT_BUTTON_PRESS:
                if (i + 1 == msgCtx->textDrawPos) {
                    if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                        msgCtx->msgMode = MSGMODE_TEXT_AWAIT_INPUT;
                        Font_LoadMessageBoxIcon(font, TEXTBOX_ICON_TRIANGLE);
                    }
                    *gfxP = gfx;
                    return;
                }
                break;
            case MESSAGE_BOX_BREAK_DELAYED:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->stateTimer = msgCtx->msgBufDecoded[++i];
                    msgCtx->msgMode = MSGMODE_TEXT_DELAYED_BREAK;
                }
                *gfxP = gfx;
                return;
            case MESSAGE_FADE2:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->msgMode = MSGMODE_TEXT_DONE;
                    msgCtx->textboxEndType = TEXTBOX_ENDTYPE_FADING;
                    PRINTF(T("タイマー (%x) (%x)", "Timer (%x) (%x)"), msgCtx->msgBufDecoded[i + 1],
                           msgCtx->msgBufDecoded[i + 2]);
                    msgCtx->stateTimer = msgCtx->msgBufDecoded[++i] << 8;
                    msgCtx->stateTimer |= msgCtx->msgBufDecoded[++i];
                    PRINTF(T("合計wct=%x(%d)\n", " Total wct=%x(%d)\n"), msgCtx->stateTimer, msgCtx->stateTimer);
                }
                *gfxP = gfx;
                return;
            case MESSAGE_SFX:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING && !sMessageHasSetSfx) {
                    sMessageHasSetSfx = true;
                    PRINTF(T("サウンド（ＳＥ）\n", "Sound (SE)\n"));
                    sfxHi = msgCtx->msgBufDecoded[i + 1];
                    sfxHi <<= 8;
                    Audio_PlaySfxGeneral(sfxHi | msgCtx->msgBufDecoded[i + 2], &gSfxDefaultPos, 4,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                }
                i += 2;
                break;
            case MESSAGE_ITEM_ICON:
                i = Message_DrawItemIcon(play, msgCtx->msgBufDecoded[i + 1], &gfx, i);
                break;
            case MESSAGE_BACKGROUND:
                // clang-format off
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) { \
                    Audio_PlaySfxGeneral(NA_SE_NONE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                }
                // clang-format on
                gDPPipeSync(gfx++);
                gDPSetCombineMode(gfx++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
                gDPSetPrimColor(gfx++, 0, 0, sTextboxBackgroundBackPrimColors[msgCtx->textboxBackgroundBackColorIdx][0],
                                sTextboxBackgroundBackPrimColors[msgCtx->textboxBackgroundBackColorIdx][1],
                                sTextboxBackgroundBackPrimColors[msgCtx->textboxBackgroundBackColorIdx][2],
                                msgCtx->textColorAlpha);

                gDPLoadTextureBlock_4b(gfx++, msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE, G_IM_FMT_I, 96, 48, 0,
                                       G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                       G_TX_NOLOD, G_TX_NOLOD);
                gSPTextureRectangle(
                    gfx++, (msgCtx->textPosX + 1) << 2,
                    (R_TEXTBOX_BG_YPOS + sTextboxBackgroundYOffsets[msgCtx->textboxBackgroundYOffsetIdx]) << 2,
                    (msgCtx->textPosX + 96 + 1) << 2,
                    (R_TEXTBOX_BG_YPOS + sTextboxBackgroundYOffsets[msgCtx->textboxBackgroundYOffsetIdx] + 48) << 2,
                    G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

                gDPLoadTextureBlock_4b(gfx++, msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE + 0x900, G_IM_FMT_I, 96,
                                       48, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                                       G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                gSPTextureRectangle(
                    gfx++, (msgCtx->textPosX + 96 + 1) << 2,
                    (R_TEXTBOX_BG_YPOS + sTextboxBackgroundYOffsets[msgCtx->textboxBackgroundYOffsetIdx]) << 2,
                    (msgCtx->textPosX + 96 + 1 + 96 + 1) << 2,
                    (R_TEXTBOX_BG_YPOS + sTextboxBackgroundYOffsets[msgCtx->textboxBackgroundYOffsetIdx] + 48) << 2,
                    G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

                gDPPipeSync(gfx++);
                gDPSetPrimColor(gfx++, 0, 0, sTextboxBackgroundForePrimColors[msgCtx->textboxBackgroundForeColorIdx][0],
                                sTextboxBackgroundForePrimColors[msgCtx->textboxBackgroundForeColorIdx][1],
                                sTextboxBackgroundForePrimColors[msgCtx->textboxBackgroundForeColorIdx][2],
                                msgCtx->textColorAlpha);

                gDPLoadTextureBlock_4b(gfx++, (msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE), G_IM_FMT_I, 96, 48, 0,
                                       G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                       G_TX_NOLOD, G_TX_NOLOD);
                gSPTextureRectangle(gfx++, msgCtx->textPosX << 2, R_TEXTBOX_BG_YPOS << 2, (msgCtx->textPosX + 96) << 2,
                                    (R_TEXTBOX_BG_YPOS + 48) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

                gDPLoadTextureBlock_4b(gfx++, (msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE + 0x900), G_IM_FMT_I,
                                       96, 48, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                                       G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                gSPTextureRectangle(gfx++, (msgCtx->textPosX + 96) << 2, R_TEXTBOX_BG_YPOS << 2,
                                    (msgCtx->textPosX + 192) << 2, (R_TEXTBOX_BG_YPOS + 48) << 2, G_TX_RENDERTILE, 0, 0,
                                    1 << 10, 1 << 10);

                gDPPipeSync(gfx++);
                gDPSetCombineLERP(gfx++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0,
                                  PRIMITIVE, 0);

                msgCtx->textPosX += 32;
                break;
            case MESSAGE_TEXT_SPEED:
                msgCtx->textDelay = msgCtx->msgBufDecoded[++i];
                break;
            case MESSAGE_UNSKIPPABLE:
                msgCtx->textUnskippable = true;
                break;
            case MESSAGE_TWO_CHOICE:
                msgCtx->textboxEndType = TEXTBOX_ENDTYPE_2_CHOICE;
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->choiceTextId = msgCtx->textId;
                    msgCtx->stateTimer = 4;
                    msgCtx->choiceIndex = 0;
                    Font_LoadMessageBoxIcon(font, TEXTBOX_ICON_ARROW);
                }
                break;
            case MESSAGE_THREE_CHOICE:
                msgCtx->textboxEndType = TEXTBOX_ENDTYPE_3_CHOICE;
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->choiceTextId = msgCtx->textId;
                    msgCtx->stateTimer = 4;
                    msgCtx->choiceIndex = 0;
                    Font_LoadMessageBoxIcon(font, TEXTBOX_ICON_ARROW);
                }
                break;
            case MESSAGE_END:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->msgMode = MSGMODE_TEXT_DONE;
                    if (msgCtx->textboxEndType == TEXTBOX_ENDTYPE_DEFAULT) {
                        Audio_PlaySfxGeneral(NA_SE_SY_MESSAGE_END, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        Font_LoadMessageBoxIcon(font, TEXTBOX_ICON_SQUARE);
                        if (play->csCtx.state == 0) {
                            Interface_SetDoAction(play, DO_ACTION_RETURN);
                        }
                    }
                }
                *gfxP = gfx;
                return;
            case MESSAGE_OCARINA:
                if (i + 1 == msgCtx->textDrawPos) {
                    Message_HandleOcarina(play);
                    *gfxP = gfx;
                    return;
                }
                break;
            case MESSAGE_FADE:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->msgMode = MSGMODE_TEXT_DONE;
                    msgCtx->textboxEndType = TEXTBOX_ENDTYPE_FADING;
                    msgCtx->stateTimer = msgCtx->msgBufDecoded[++i];
                    Font_LoadMessageBoxIcon(font, TEXTBOX_ICON_SQUARE);
                    if (play->csCtx.state == 0) {
                        Interface_SetDoAction(play, DO_ACTION_RETURN);
                    }
                }
                *gfxP = gfx;
                return;
            case MESSAGE_PERSISTENT:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    Audio_PlaySfxGeneral(NA_SE_NONE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    msgCtx->msgMode = MSGMODE_TEXT_DONE;
                    msgCtx->textboxEndType = TEXTBOX_ENDTYPE_PERSISTENT;
                }
                *gfxP = gfx;
                return;
            case MESSAGE_EVENT:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING) {
                    msgCtx->msgMode = MSGMODE_TEXT_DONE;
                    msgCtx->textboxEndType = TEXTBOX_ENDTYPE_EVENT;
                    Font_LoadMessageBoxIcon(font, TEXTBOX_ICON_TRIANGLE);
                    Audio_PlaySfxGeneral(NA_SE_SY_MESSAGE_END, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                }
                *gfxP = gfx;
                return;
            default:
                if (msgCtx->msgMode == MSGMODE_TEXT_DISPLAYING && i + 1 == msgCtx->textDrawPos &&
                    msgCtx->textDelayTimer == msgCtx->textDelay) {
                    Audio_PlaySfxGeneral(NA_SE_NONE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                }
                Message_DrawTextChar(play, &font->charTexBuf[charTexIdx], &gfx);
                charTexIdx += FONT_CHAR_TEX_SIZE;

                msgCtx->textPosX += (s32)(sFontWidths[character - ' '] * (R_TEXT_CHAR_SCALE / 100.0f));
                break;
        }
    }
    if (msgCtx->textDelayTimer == 0) {
        msgCtx->textDrawPos = i + 1;
        msgCtx->textDelayTimer = msgCtx->textDelay;
    } else {
        msgCtx->textDelayTimer--;
    }
    *gfxP = gfx;
}

void Message_LoadItemIcon(PlayState* play, u16 itemId, s16 y) {
    static s16 sIconItem32XOffsets[] = LANGUAGE_ARRAY(54, 74, 74, 74);
    static s16 sIconItem24XOffsets[] = LANGUAGE_ARRAY(50, 72, 72, 72);
    MessageContext* msgCtx = &play->msgCtx;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;

    if (itemId == ITEM_DUNGEON_MAP) {
        interfaceCtx->mapPalette[30] = 0xFF;
        interfaceCtx->mapPalette[31] = 0xFF;
    }
    if (itemId < ITEM_MEDALLION_FOREST) {
        R_TEXTBOX_ICON_XPOS = R_TEXT_INIT_XPOS - sIconItem32XOffsets[gSaveContext.language];
        R_TEXTBOX_ICON_YPOS = y + ((44 - ITEM_ICON_HEIGHT) / 2);
        R_TEXTBOX_ICON_DIMENSION = ITEM_ICON_WIDTH; // assumes the image is square
        DMA_REQUEST_SYNC(msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE, GET_ITEM_ICON_VROM(itemId), ITEM_ICON_SIZE,
                         "../z_message_PAL.c", 1473);
        PRINTF(T("アイテム32-0\n", "Item 32-0\n"));
    } else {
        R_TEXTBOX_ICON_XPOS = R_TEXT_INIT_XPOS - sIconItem24XOffsets[gSaveContext.language];
        R_TEXTBOX_ICON_YPOS = y + ((44 - QUEST_ICON_HEIGHT) / 2);
        R_TEXTBOX_ICON_DIMENSION = QUEST_ICON_WIDTH; // assumes the image is square
        DMA_REQUEST_SYNC(msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE, GET_QUEST_ICON_VROM(itemId), QUEST_ICON_SIZE,
                         "../z_message_PAL.c", 1482);
        PRINTF(T("アイテム24＝%d (%d) {%d}\n", "Item 24=%d (%d) {%d}\n"), itemId, itemId - ITEM_KOKIRI_EMERALD, 84);
    }
    msgCtx->msgBufPos++;
    msgCtx->choiceNum = 1;
}

void Message_Decode(PlayState* play) {
    MessageContext* msgCtx = &play->msgCtx;
    Font* font = &play->msgCtx.font;
    s32 charTexIdx = 0;
    s16 i;
#if !(PLATFORM_GC && OOT_PAL)
    s16 j;
#endif
    s16 decodedBufPos = 0;
    s16 numLines = 0;
    s16 digits[4];
    f32 timeInSeconds;
    s16 playerNameLen;
    s16 loadChar;
    u16 value;
    u8 curChar;
#if !(PLATFORM_GC && OOT_PAL)
    u16 curCharWide;
    u8* fontBuf;
#endif

    play->msgCtx.textDelayTimer = 0;
    play->msgCtx.textUnskippable = play->msgCtx.textDelay = play->msgCtx.textDelayTimer = 0;
    sTextFade = false;

#if OOT_NTSC
    if (gSaveContext.language == LANGUAGE_JPN && !sTextIsCredits) {
        // Japanese text (NTSC only)
        while (true) {
            curCharWide = msgCtx->msgBufDecodedWide[decodedBufPos] = font->msgBufWide[msgCtx->msgBufPos];

            if (curCharWide == MESSAGE_WIDE_BOX_BREAK || curCharWide == MESSAGE_WIDE_TEXTID ||
                curCharWide == MESSAGE_WIDE_BOX_BREAK_DELAYED || curCharWide == MESSAGE_WIDE_EVENT ||
                curCharWide == MESSAGE_WIDE_END) {
                // Textbox decoding ends with any of the above text control characters
                msgCtx->msgMode = MSGMODE_TEXT_DISPLAYING;
                msgCtx->textDrawPos = 1;
                R_TEXT_INIT_YPOS = R_TEXTBOX_Y + 6;
                if (msgCtx->textBoxType != TEXTBOX_TYPE_NONE_BOTTOM) {
                    if (numLines == 0) {
                        R_TEXT_INIT_YPOS = (u16)(R_TEXTBOX_Y + 22);
                    } else if (numLines == 1) {
                        R_TEXT_INIT_YPOS = (u16)(R_TEXTBOX_Y + 14);
                    }
                }
                if (curCharWide == MESSAGE_WIDE_TEXTID) {
                    sNextTextId = msgCtx->msgBufDecodedWide[++decodedBufPos] = font->msgBufWide[msgCtx->msgBufPos + 1];
                }
                if (curCharWide == MESSAGE_WIDE_BOX_BREAK_DELAYED) {
                    msgCtx->msgBufDecodedWide[++decodedBufPos] = font->msgBufWide[msgCtx->msgBufPos + 1];
                    msgCtx->msgBufPos += 2;
                }
                msgCtx->decodedTextLen = decodedBufPos;
                if (sTextboxSkipped) {
                    msgCtx->textDrawPos = msgCtx->decodedTextLen;
                }
                break;
            }
            if (curCharWide == MESSAGE_WIDE_NAME) {
                // Substitute the player name control character for the file's player name.
                for (playerNameLen = ARRAY_COUNT(gSaveContext.save.info.playerData.playerName); playerNameLen > 0;
                     playerNameLen--) {
                    if (gSaveContext.save.info.playerData.playerName[playerNameLen - 1] != FILENAME_SPACE) {
                        break;
                    }
                }
                for (i = 0; i < playerNameLen; i++) {
                    curCharWide = gSaveContext.save.info.playerData.playerName[i];
                    fontBuf = &font->fontBuf[(curCharWide * 32) << 2]; // fake
                    msgCtx->msgBufDecodedWide[decodedBufPos + i] = MESSAGE_WIDE_NAME;

                    for (j = 0; j < FONT_CHAR_TEX_SIZE; j += 4) {
                        font->charTexBuf[charTexIdx + j + 0] = fontBuf[j + 0];
                        font->charTexBuf[charTexIdx + j + 1] = fontBuf[j + 1];
                        font->charTexBuf[charTexIdx + j + 2] = fontBuf[j + 2];
                        font->charTexBuf[charTexIdx + j + 3] = fontBuf[j + 3];
                    }
                    charTexIdx += FONT_CHAR_TEX_SIZE;
                }
                decodedBufPos += playerNameLen - 1;
            } else if (curCharWide == MESSAGE_WIDE_MARATHON_TIME || curCharWide == MESSAGE_WIDE_RACE_TIME) {
                // Convert the values of the appropriate timer to digits and add the
                //  digits to the decoded buffer in place of the control character.
                digits[0] = digits[1] = digits[2] = 0;
                if (curCharWide == MESSAGE_WIDE_RACE_TIME) {
                    digits[3] = gSaveContext.timerSeconds;
                } else {
                    digits[3] = gSaveContext.subTimerSeconds;
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
                    Font_LoadCharWide(font, digits[i] + MESSAGE_WIDE_CHAR_ZERO, charTexIdx);
                    charTexIdx += FONT_CHAR_TEX_SIZE;
                    msgCtx->msgBufDecodedWide[decodedBufPos] = digits[i] + MESSAGE_WIDE_CHAR_ZERO;
                    decodedBufPos++;
                    if (i == 1) {
                        Font_LoadCharWide(font, MESSAGE_WIDE_CHAR_MINUTES, charTexIdx);
                        charTexIdx += FONT_CHAR_TEX_SIZE;
                        msgCtx->msgBufDecodedWide[decodedBufPos] = MESSAGE_WIDE_CHAR_MINUTES;
                        decodedBufPos++;
                    } else if (i == 3) {
                        Font_LoadCharWide(font, MESSAGE_WIDE_CHAR_SECONDS, charTexIdx);
                        charTexIdx += FONT_CHAR_TEX_SIZE;
                        msgCtx->msgBufDecodedWide[decodedBufPos] = MESSAGE_WIDE_CHAR_SECONDS;
                    }
                }
            } else if (curCharWide == MESSAGE_WIDE_POINTS) {
                // Convert the values of the current minigame score to digits and
                //  add the digits to the decoded buffer in place of the control character.
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
                        Font_LoadCharWide(font, digits[i] + MESSAGE_WIDE_CHAR_ZERO, charTexIdx);
                        charTexIdx += FONT_CHAR_TEX_SIZE;
                        msgCtx->msgBufDecodedWide[decodedBufPos] = digits[i] + MESSAGE_WIDE_CHAR_ZERO;
                        decodedBufPos++;
                    }
                }
                decodedBufPos--;
            } else if (curCharWide == MESSAGE_WIDE_TOKENS) {
                // Convert the current number of collected gold skulltula tokens to digits and
                //  add the digits to the decoded buffer in place of the control character.
                digits[0] = digits[1] = 0;
                digits[2] = gSaveContext.save.info.inventory.gsTokens;

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
                        Font_LoadCharWide(font, digits[i] + MESSAGE_WIDE_CHAR_ZERO, charTexIdx);
                        charTexIdx += FONT_CHAR_TEX_SIZE;
                        msgCtx->msgBufDecodedWide[decodedBufPos] = digits[i] + MESSAGE_WIDE_CHAR_ZERO;
                        decodedBufPos++;
                    }
                }
                decodedBufPos--;
            } else if (curCharWide == MESSAGE_WIDE_FISH_INFO) {
                digits[0] = 0;
                digits[1] = gSaveContext.minigameScore;

                while (digits[1] >= 10) {
                    digits[0]++;
                    digits[1] -= 10;
                }

                for (i = 0; i < 2; i++) {
                    if (i == 1 || digits[i] != 0) {
                        Font_LoadCharWide(font, digits[i] + MESSAGE_WIDE_CHAR_ZERO, charTexIdx);
                        charTexIdx += FONT_CHAR_TEX_SIZE;
                        msgCtx->msgBufDecodedWide[decodedBufPos] = digits[i] + MESSAGE_WIDE_CHAR_ZERO;
                        decodedBufPos++;
                    }
                }
                decodedBufPos--;
            } else if (curCharWide == MESSAGE_WIDE_HIGHSCORE) {
                value = HIGH_SCORE(font->msgBufWide[++msgCtx->msgBufPos] & 0xFF);
                if ((font->msgBufWide[msgCtx->msgBufPos] & 0xFF) == HS_FISHING) {
                    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
                        value &= 0x7F;
                    } else {
                        value = ((HIGH_SCORE(font->msgBufWide[msgCtx->msgBufPos]) & 0xFF000000) >> 0x18) & 0x7F;
                    }
                }
                switch (font->msgBufWide[msgCtx->msgBufPos] & 0xFF) {
                    case HS_HBA:
                    case HS_POE_POINTS:
                    case HS_FISHING:
                        digits[0] = digits[1] = digits[2] = 0;
                        digits[3] = value;

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
                                Font_LoadCharWide(font, digits[i] + MESSAGE_WIDE_CHAR_ZERO, charTexIdx);
                                charTexIdx += FONT_CHAR_TEX_SIZE;
                                msgCtx->msgBufDecodedWide[decodedBufPos] = digits[i] + MESSAGE_WIDE_CHAR_ZERO;
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
                        digits[3] = value;

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
                            Font_LoadCharWide(font, digits[i] + MESSAGE_WIDE_CHAR_ZERO, charTexIdx);
                            charTexIdx += FONT_CHAR_TEX_SIZE;
                            msgCtx->msgBufDecodedWide[decodedBufPos] = digits[i] + MESSAGE_WIDE_CHAR_ZERO;
                            decodedBufPos++;
                            if (i == 1) {
                                Font_LoadCharWide(font, MESSAGE_WIDE_CHAR_MINUTES, charTexIdx);
                                charTexIdx += FONT_CHAR_TEX_SIZE;
                                msgCtx->msgBufDecodedWide[decodedBufPos] = MESSAGE_WIDE_CHAR_MINUTES;
                                decodedBufPos++;
                            } else if (i == 3) {
                                Font_LoadCharWide(font, MESSAGE_WIDE_CHAR_SECONDS, charTexIdx);
                                charTexIdx += FONT_CHAR_TEX_SIZE;
                                msgCtx->msgBufDecodedWide[decodedBufPos] = MESSAGE_WIDE_CHAR_SECONDS;
                            }
                        }
                        break;
                }
            } else if (curCharWide == MESSAGE_WIDE_TIME) {
                digits[0] = 0;
                timeInSeconds = gSaveContext.save.dayTime * (24.0f * 60.0f / 0x10000);

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
                    Font_LoadCharWide(font, digits[i] + MESSAGE_WIDE_CHAR_ZERO, charTexIdx);
                    charTexIdx += FONT_CHAR_TEX_SIZE;
                    msgCtx->msgBufDecodedWide[decodedBufPos] = digits[i] + MESSAGE_WIDE_CHAR_ZERO;
                    decodedBufPos++;
                    if (i == 1) {
                        Font_LoadCharWide(font, MESSAGE_WIDE_CHAR_HOURS, charTexIdx);
                        charTexIdx += FONT_CHAR_TEX_SIZE;
                        msgCtx->msgBufDecodedWide[decodedBufPos] = MESSAGE_WIDE_CHAR_HOURS;
                        decodedBufPos++;
                    } else if (i == 3) {
                        Font_LoadCharWide(font, MESSAGE_WIDE_CHAR_MINUTES, charTexIdx);
                        charTexIdx += FONT_CHAR_TEX_SIZE;
                        msgCtx->msgBufDecodedWide[decodedBufPos] = MESSAGE_WIDE_CHAR_MINUTES;
                    }
                }
            } else if (curCharWide == MESSAGE_WIDE_ITEM_ICON) {
                msgCtx->msgBufDecodedWide[++decodedBufPos] = font->msgBufWide[msgCtx->msgBufPos + 1];
                Message_LoadItemIcon(play, font->msgBufWide[msgCtx->msgBufPos + 1], R_TEXTBOX_Y + 10);
            } else if (curCharWide == MESSAGE_WIDE_BACKGROUND) {
                msgCtx->textboxBackgroundIdx = font->msgBufWide[msgCtx->msgBufPos + 1] * 2;
                msgCtx->textboxBackgroundForeColorIdx = (font->msgBufWide[msgCtx->msgBufPos + 2] & 0xF000) >> 12;
                msgCtx->textboxBackgroundBackColorIdx = (font->msgBufWide[msgCtx->msgBufPos + 2] & 0xF00) >> 8;
                msgCtx->textboxBackgroundYOffsetIdx = (font->msgBufWide[msgCtx->msgBufPos + 2] & 0xF0) >> 4;
                msgCtx->textboxBackgroundUnkArg = font->msgBufWide[msgCtx->msgBufPos + 2] & 0xF;
                DMA_REQUEST_SYNC(msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE,
                                 (uintptr_t)_message_texture_staticSegmentRomStart +
                                     msgCtx->textboxBackgroundIdx * MESSAGE_TEXTURE_STATIC_TEX_SIZE,
                                 MESSAGE_TEXTURE_STATIC_TEX_SIZE, "../z_message_PAL.c", UNK_LINE);
                DMA_REQUEST_SYNC(msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE + MESSAGE_TEXTURE_STATIC_TEX_SIZE,
                                 (uintptr_t)_message_texture_staticSegmentRomStart +
                                     (msgCtx->textboxBackgroundIdx + 1) * MESSAGE_TEXTURE_STATIC_TEX_SIZE,
                                 MESSAGE_TEXTURE_STATIC_TEX_SIZE, "../z_message_PAL.c", UNK_LINE);
                numLines = 2;
                msgCtx->msgBufPos += 2;
                R_TEXTBOX_BG_YPOS = R_TEXTBOX_Y + 8;
            } else if (curCharWide == MESSAGE_WIDE_COLOR) {
                msgCtx->msgBufDecodedWide[++decodedBufPos] = font->msgBufWide[++msgCtx->msgBufPos] & 0xF;
            } else if (curCharWide == MESSAGE_WIDE_NEWLINE) {
                numLines++;
            } else if (curCharWide != MESSAGE_WIDE_QUICKTEXT_ENABLE && curCharWide != MESSAGE_WIDE_QUICKTEXT_DISABLE &&
                       curCharWide != MESSAGE_WIDE_AWAIT_BUTTON_PRESS && curCharWide != MESSAGE_WIDE_OCARINA &&
                       curCharWide != MESSAGE_WIDE_PERSISTENT && curCharWide != MESSAGE_WIDE_UNSKIPPABLE) {
                if (curCharWide == MESSAGE_WIDE_FADE) {
                    sTextFade = true;
                    msgCtx->msgBufDecodedWide[++decodedBufPos] = font->msgBufWide[++msgCtx->msgBufPos] & 0xFF;
                } else if (curCharWide == MESSAGE_WIDE_SHIFT || curCharWide == MESSAGE_WIDE_TEXT_SPEED) {
                    msgCtx->msgBufDecodedWide[++decodedBufPos] = font->msgBufWide[++msgCtx->msgBufPos] & 0xFF;
                } else if (curCharWide == MESSAGE_WIDE_SFX) {
                    msgCtx->msgBufDecodedWide[++decodedBufPos] = font->msgBufWide[++msgCtx->msgBufPos];
                } else if (curCharWide == MESSAGE_WIDE_TWO_CHOICE) {
                    msgCtx->choiceNum = 2;
                } else if (curCharWide == MESSAGE_WIDE_THREE_CHOICE) {
                    msgCtx->choiceNum = 3;
                    R_TEXT_INIT_XPOS += 32;
                } else if (curCharWide != MESSAGE_WIDE_CHAR_SPACE) {
                    Font_LoadCharWide(font, curCharWide, charTexIdx);
                    charTexIdx += FONT_CHAR_TEX_SIZE;
                }
            }
            decodedBufPos++;
            msgCtx->msgBufPos++;
        }
    } else
#endif
    {
        // English text for NTSC, eng/ger/fra text for PAL
        while (true) {
            curChar = msgCtx->msgBufDecoded[decodedBufPos] = font->msgBuf[msgCtx->msgBufPos];

            if (curChar == MESSAGE_BOX_BREAK || curChar == MESSAGE_TEXTID || curChar == MESSAGE_BOX_BREAK_DELAYED ||
                curChar == MESSAGE_EVENT || curChar == MESSAGE_END) {
                // Textbox decoding ends with any of the above text control characters
                msgCtx->msgMode = MSGMODE_TEXT_DISPLAYING;
                msgCtx->textDrawPos = 1;
                R_TEXT_INIT_YPOS = R_TEXTBOX_Y + 8;
                PRINTF("ＪＪ＝%d\n", numLines);
                if (msgCtx->textBoxType != TEXTBOX_TYPE_NONE_BOTTOM) {
                    if (numLines == 0) {
                        R_TEXT_INIT_YPOS = (u16)(R_TEXTBOX_Y + 26);
                    } else if (numLines == 1) {
                        R_TEXT_INIT_YPOS = (u16)(R_TEXTBOX_Y + 20);
                    } else if (numLines == 2) {
                        R_TEXT_INIT_YPOS = (u16)(R_TEXTBOX_Y + 16);
                    }
                }
                if (curChar == MESSAGE_TEXTID) {
                    PRINTF("NZ_NEXTMSG=%x, %x, %x\n", font->msgBuf[msgCtx->msgBufPos],
                           font->msgBuf[msgCtx->msgBufPos + 1], font->msgBuf[msgCtx->msgBufPos + 2]);
                    value = msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[msgCtx->msgBufPos + 1];
                    msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[msgCtx->msgBufPos + 2];
                    value <<= 8;
                    sNextTextId = msgCtx->msgBufDecoded[decodedBufPos] | value;
                }
                if (curChar == MESSAGE_BOX_BREAK_DELAYED) {
                    msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[msgCtx->msgBufPos + 1];
                    msgCtx->msgBufPos += 2;
                }
                msgCtx->decodedTextLen = decodedBufPos;
                if (sTextboxSkipped) {
                    msgCtx->textDrawPos = msgCtx->decodedTextLen;
                }
                break;
            } else if (curChar == MESSAGE_NAME) {
                // Substitute the player name control character for the file's player name.
                for (playerNameLen = ARRAY_COUNT(gSaveContext.save.info.playerData.playerName); playerNameLen > 0;
                     playerNameLen--) {
                    if (gSaveContext.save.info.playerData.playerName[playerNameLen - 1] != FILENAME_SPACE) {
                        break;
                    }
                }
                PRINTF(T("\n名前 ＝ ", "\nName = "));
                for (i = 0; i < playerNameLen; i++) {
                    curChar = gSaveContext.save.info.playerData.playerName[i];
                    if (curChar == FILENAME_SPACE) {
                        curChar = ' ';
                    } else if (curChar == FILENAME_PERIOD) {
                        curChar = '.';
                    } else if (curChar == FILENAME_DASH) {
                        curChar = '-';
                    } else if (curChar <= FILENAME_DIGIT('9')) {
                        curChar -= FILENAME_DIGIT('0');
                        curChar += '0';
                    } else if (curChar <= FILENAME_UPPERCASE('Z')) {
                        curChar -= FILENAME_UPPERCASE('A');
                        curChar += 'A';
                    } else if (curChar <= FILENAME_LOWERCASE('z')) {
                        curChar -= FILENAME_LOWERCASE('a');
                        curChar += 'a';
                    }
                    if (curChar != ' ') {
                        Font_LoadChar(font, curChar - ' ', charTexIdx);
                        charTexIdx += FONT_CHAR_TEX_SIZE;
                    }
                    PRINTF("%x ", curChar);
                    msgCtx->msgBufDecoded[decodedBufPos] = curChar;
                    decodedBufPos++;
                }
                decodedBufPos--;
            } else if (curChar == MESSAGE_MARATHON_TIME || curChar == MESSAGE_RACE_TIME) {
                // Convert the values of the appropriate timer to digits and add the
                //  digits to the decoded buffer in place of the control character.
                PRINTF(T("\nＥＶＥＮＴタイマー ＝ ", "\nEVENT timer = "));
                digits[0] = digits[1] = digits[2] = 0;
                if (curChar == MESSAGE_RACE_TIME) {
                    digits[3] = gSaveContext.timerSeconds;
                } else {
                    digits[3] = gSaveContext.subTimerSeconds;
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
                    Font_LoadChar(font, digits[i] + '0' - ' ', charTexIdx);
                    charTexIdx += FONT_CHAR_TEX_SIZE;
                    msgCtx->msgBufDecoded[decodedBufPos] = digits[i] + '0';
                    decodedBufPos++;
                    if (i == 1) {
                        Font_LoadChar(font, '"' - ' ', charTexIdx);
                        charTexIdx += FONT_CHAR_TEX_SIZE;
                        msgCtx->msgBufDecoded[decodedBufPos] = '"';
                        decodedBufPos++;
                    } else if (i == 3) {
                        Font_LoadChar(font, '"' - ' ', charTexIdx);
                        charTexIdx += FONT_CHAR_TEX_SIZE;
                        msgCtx->msgBufDecoded[decodedBufPos] = '"';
                    }
                }
            } else if (curChar == MESSAGE_POINTS) {
                // Convert the values of the current minigame score to digits and
                //  add the digits to the decoded buffer in place of the control character.
                PRINTF(T("\n流鏑馬スコア ＝ %d\n", "\nYabusame score = %d\n"), gSaveContext.minigameScore);
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
                        Font_LoadChar(font, digits[i] + '0' - ' ', charTexIdx);
                        msgCtx->msgBufDecoded[decodedBufPos] = digits[i] + '0';
                        charTexIdx += FONT_CHAR_TEX_SIZE;
                        decodedBufPos++;
                    }
                }
                decodedBufPos--;
            } else if (curChar == MESSAGE_TOKENS) {
                // Convert the current number of collected gold skulltula tokens to digits and
                //  add the digits to the decoded buffer in place of the control character.
                PRINTF(T("\n金スタ合計数 ＝ %d", "\nTotal number of gold stars = %d"),
                       gSaveContext.save.info.inventory.gsTokens);
                digits[0] = digits[1] = 0;
                digits[2] = gSaveContext.save.info.inventory.gsTokens;

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
                        Font_LoadChar(font, digits[i] + '0' - ' ', charTexIdx);
                        charTexIdx += FONT_CHAR_TEX_SIZE;
                        msgCtx->msgBufDecoded[decodedBufPos] = digits[i] + '0';
                        PRINTF("%x(%x) ", digits[i] + '0' - ' ', digits[i]);
                        decodedBufPos++;
                    }
                }
                decodedBufPos--;
            } else if (curChar == MESSAGE_FISH_INFO) {
                PRINTF(T("\n釣り堀魚サイズ ＝ ", "\nFishing hole fish size = "));
                digits[0] = 0;
                digits[1] = gSaveContext.minigameScore;

                while (digits[1] >= 10) {
                    digits[0]++;
                    digits[1] -= 10;
                }

                for (i = 0; i < 2; i++) {
                    if (i == 1 || digits[i] != 0) {
                        Font_LoadChar(font, digits[i] + '0' - ' ', charTexIdx);
                        charTexIdx += FONT_CHAR_TEX_SIZE;
                        msgCtx->msgBufDecoded[decodedBufPos] = digits[i] + '0';
                        PRINTF("%x(%x) ", digits[i] + '0' - ' ', digits[i]);
                        decodedBufPos++;
                    }
                }
                decodedBufPos--;
            } else if (curChar == MESSAGE_HIGHSCORE) {
                value = HIGH_SCORE((u8)font->msgBuf[++msgCtx->msgBufPos]);
                PRINTF(T("ランキング＝%d\n", "Highscore=%d\n"), font->msgBuf[msgCtx->msgBufPos]);
                if ((font->msgBuf[msgCtx->msgBufPos] & 0xFF) == HS_FISHING) {
                    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
                        value &= 0x7F;
                    } else {
                        //! @bug Should use msgBuf instead of msgBufWide (copy-paste error from Japanese text
                        //! handling?), and the mask is applied to the high score index instead of the high score value
                        //! so this always shows HIGH_SCORE(0). Only the PRINTF is wrong, the following line is correct.
                        PRINTF("HI_SCORE( kanfont->mbuff.nes_mes_buf[message->rdp] & 0xff000000 ) = %x\n",
                               HIGH_SCORE(font->msgBufWide[msgCtx->msgBufPos] & 0xFF000000));
                        value = ((HIGH_SCORE((u8)font->msgBuf[msgCtx->msgBufPos]) & 0xFF000000) >> 0x18) & 0x7F;
                    }
                    value = SQ((f32)value) * 0.0036f + 0.5f;
                    PRINTF("score=%d\n", value);
                }
                switch (font->msgBuf[msgCtx->msgBufPos] & 0xFF) {
                    case HS_HBA:
                    case HS_POE_POINTS:
                    case HS_FISHING:
                        digits[0] = digits[1] = digits[2] = 0;
                        digits[3] = value;

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
                                Font_LoadChar(font, digits[i] + '0' - ' ', charTexIdx);
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
                        digits[3] = value;

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
                            Font_LoadChar(font, digits[i] + '0' - ' ', charTexIdx);
                            charTexIdx += FONT_CHAR_TEX_SIZE;
                            msgCtx->msgBufDecoded[decodedBufPos] = digits[i] + '0';
                            decodedBufPos++;
                            if (i == 1) {
                                Font_LoadChar(font, '"' - ' ', charTexIdx);
                                charTexIdx += FONT_CHAR_TEX_SIZE;
                                msgCtx->msgBufDecoded[decodedBufPos] = '"';
                                decodedBufPos++;
                            } else if (i == 3) {
                                Font_LoadChar(font, '"' - ' ', charTexIdx);
                                charTexIdx += FONT_CHAR_TEX_SIZE;
                                msgCtx->msgBufDecoded[decodedBufPos] = '"';
                            }
                        }
                        break;
                }
            } else if (curChar == MESSAGE_TIME) {
                PRINTF(T("\nゼルダ時間 ＝ ", "\nZelda time = "));
                digits[0] = 0;
                timeInSeconds = gSaveContext.save.dayTime * (24.0f * 60.0f / 0x10000);

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
                    Font_LoadChar(font, digits[i] + '0' - ' ', charTexIdx);
                    charTexIdx += FONT_CHAR_TEX_SIZE;
                    msgCtx->msgBufDecoded[decodedBufPos] = digits[i] + '0';
                    decodedBufPos++;
                    if (i == 1) {
                        Font_LoadChar(font, ':' - ' ', charTexIdx);
                        charTexIdx += FONT_CHAR_TEX_SIZE;
                        msgCtx->msgBufDecoded[decodedBufPos] = ':';
                        decodedBufPos++;
                    }
                }
                decodedBufPos--;
            } else if (curChar == MESSAGE_ITEM_ICON) {
                msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[msgCtx->msgBufPos + 1];
                PRINTF("ITEM_NO=(%d) (%d)\n", msgCtx->msgBufDecoded[decodedBufPos],
                       font->msgBuf[msgCtx->msgBufPos + 1]);
                Message_LoadItemIcon(play, font->msgBuf[msgCtx->msgBufPos + 1], R_TEXTBOX_Y + 10);
            } else if (curChar == MESSAGE_BACKGROUND) {
                msgCtx->textboxBackgroundIdx = font->msgBuf[msgCtx->msgBufPos + 1] * 2;
#if OOT_VERSION < PAL_1_0
                //! @bug Wrong shift amounts cause textboxBackgroundForeColorIdx and textboxBackgroundBackColorIdx
                //! to always be 0. Fortunately MESSAGE_BACKGROUND is only present in unused messages.
                msgCtx->textboxBackgroundForeColorIdx = (font->msgBuf[msgCtx->msgBufPos + 2] & 0xF0) >> 12;
                msgCtx->textboxBackgroundBackColorIdx = (font->msgBuf[msgCtx->msgBufPos + 2] & 0xF) >> 8;
#else
                msgCtx->textboxBackgroundForeColorIdx = (font->msgBuf[msgCtx->msgBufPos + 2] & 0xF0) >> 4;
                msgCtx->textboxBackgroundBackColorIdx = font->msgBuf[msgCtx->msgBufPos + 2] & 0xF;
#endif
                msgCtx->textboxBackgroundYOffsetIdx = (font->msgBuf[msgCtx->msgBufPos + 3] & 0xF0) >> 4;
                msgCtx->textboxBackgroundUnkArg = font->msgBuf[msgCtx->msgBufPos + 3] & 0xF;
                DMA_REQUEST_SYNC(msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE,
                                 (uintptr_t)_message_texture_staticSegmentRomStart +
                                     msgCtx->textboxBackgroundIdx * MESSAGE_TEXTURE_STATIC_TEX_SIZE,
                                 MESSAGE_TEXTURE_STATIC_TEX_SIZE, "../z_message_PAL.c", 1830);
                DMA_REQUEST_SYNC(msgCtx->textboxSegment + MESSAGE_STATIC_TEX_SIZE + MESSAGE_TEXTURE_STATIC_TEX_SIZE,
                                 (uintptr_t)_message_texture_staticSegmentRomStart +
                                     (msgCtx->textboxBackgroundIdx + 1) * MESSAGE_TEXTURE_STATIC_TEX_SIZE,
                                 MESSAGE_TEXTURE_STATIC_TEX_SIZE, "../z_message_PAL.c", 1834);
                msgCtx->msgBufPos += 3;
                R_TEXTBOX_BG_YPOS = R_TEXTBOX_Y + 8;
                numLines = 2;
#if OOT_PAL
                R_TEXT_INIT_XPOS = 50;
#endif
            } else if (curChar == MESSAGE_COLOR) {
                msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[++msgCtx->msgBufPos];
            } else if (curChar == MESSAGE_NEWLINE) {
                numLines++;
            } else if (curChar != MESSAGE_QUICKTEXT_ENABLE && curChar != MESSAGE_QUICKTEXT_DISABLE &&
                       curChar != MESSAGE_AWAIT_BUTTON_PRESS && curChar != MESSAGE_OCARINA &&
                       curChar != MESSAGE_PERSISTENT && curChar != MESSAGE_UNSKIPPABLE) {
                if (curChar == MESSAGE_FADE) {
                    sTextFade = true;
                    PRINTF("NZ_TIMER_END (key_off_flag=%d)\n", sTextFade);
                    msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[++msgCtx->msgBufPos];
                } else if (curChar == MESSAGE_FADE2) {
                    sTextFade = true;
                    PRINTF("NZ_BGM (key_off_flag=%d)\n", sTextFade);
                    msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[++msgCtx->msgBufPos];
                    msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[++msgCtx->msgBufPos];
                } else if (curChar == MESSAGE_SHIFT || curChar == MESSAGE_TEXT_SPEED) {
                    msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[++msgCtx->msgBufPos] & 0xFF;
                } else if (curChar == MESSAGE_SFX) {
                    msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[++msgCtx->msgBufPos];
                    msgCtx->msgBufDecoded[++decodedBufPos] = font->msgBuf[++msgCtx->msgBufPos];
                } else if (curChar == MESSAGE_TWO_CHOICE) {
                    msgCtx->choiceNum = 2;
                } else if (curChar == MESSAGE_THREE_CHOICE) {
                    msgCtx->choiceNum = 3;
                } else if (curChar != MESSAGE_CHAR_SPACE) {
                    Font_LoadChar(font, curChar - ' ', charTexIdx);
                    charTexIdx += FONT_CHAR_TEX_SIZE;
                }
            }
            decodedBufPos++;
            msgCtx->msgBufPos++;
        }
    }
}

void Message_OpenText(PlayState* play, u16 textId) {
    static s16 messageStaticIndices[] = { 0, 1, 3, 2 };
    MessageContext* msgCtx = &play->msgCtx;
    Font* font = &msgCtx->font;
    s16 textBoxType;

    // clang-format off
    if (msgCtx->msgMode == MSGMODE_NONE) { gSaveContext.prevHudVisibilityMode = gSaveContext.hudVisibilityMode; }
    // clang-format on

    if (R_SCENE_CAM_TYPE == SCENE_CAM_TYPE_FIXED_SHOP_VIEWPOINT) {
        Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE);
    }

    sMessageHasSetSfx = D_8014B2F4 = sTextboxSkipped = sTextIsCredits = 0;

    if (textId >= 0x0500 && textId < 0x0600) { // text ids 0500 to 0600 are reserved for credits
        sTextIsCredits = true;
        R_TEXT_CHAR_SCALE = 85;
        R_TEXT_LINE_SPACING = 6;
        R_TEXT_INIT_XPOS = 20;
        YREG(1) = 48;
#if OOT_NTSC
    } else if (gSaveContext.language == LANGUAGE_JPN) {
        R_TEXT_CHAR_SCALE = 88;
        R_TEXT_LINE_SPACING = 18;
        R_TEXT_INIT_XPOS = 50;
#endif
    } else {
        R_TEXT_CHAR_SCALE = 75;
        R_TEXT_LINE_SPACING = 12;
        R_TEXT_INIT_XPOS = 65;
    }
    if (textId == 0xC2 || textId == 0xFA) {
        // Increments text id based on piece of heart count, assumes the piece of heart text is all
        // in order and that you don't have more than the intended amount of heart pieces.
        textId += (gSaveContext.save.info.inventory.questItems & 0xF0000000 & 0xF0000000) >> QUEST_HEART_PIECE_COUNT;
    } else if (msgCtx->textId == 0xC && CHECK_OWNED_EQUIP(EQUIP_TYPE_SWORD, EQUIP_INV_SWORD_BIGGORON)) {
        textId = 0xB; // Traded Giant's Knife for Biggoron Sword
    } else if (msgCtx->textId == 0xB4 && GET_EVENTCHKINF(EVENTCHKINF_96)) {
        textId = 0xB5; // Destroyed Gold Skulltula
    }
    // Ocarina Staff + Dialog
    if (textId == 0x4077 || // Pierre?
        textId == 0x407A || // Pierre?
        textId == 0x2061 || // Learning Epona's Song
        textId == 0x5035 || // Guru-Guru in Windmill
        textId == 0x40AC) { // Ocarina Frog Minigame
        Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING);
    }
    msgCtx->textId = textId;

    if (textId == 0x2030) { // Talking to Ingo as adult in Lon Lon Ranch for the first time before freeing Epona
        PRINTF_COLOR_YELLOW();
        PRINTF("？？？？？？？？？？？？？？？？  z_message.c  ？？？？？？？？？？？？？？？？？？\n");
        PRINTF_RST();
        gSaveContext.eventInf[0] = gSaveContext.eventInf[1] = gSaveContext.eventInf[2] = gSaveContext.eventInf[3] = 0;
    }

    if (sTextIsCredits) {
        Message_FindCreditsMessage(play, textId);
        msgCtx->msgLength = font->msgLength;
#if PLATFORM_N64
        if ((B_80121220 != NULL) && (B_80121220->unk_60 != NULL) && B_80121220->unk_60(&play->msgCtx.font)) {

        } else {
            DMA_REQUEST_SYNC(font->msgBuf, (uintptr_t)_staff_message_data_staticSegmentRomStart + font->msgOffset,
                             font->msgLength, "../z_message_PAL.c", UNK_LINE);
        }
#else
        DMA_REQUEST_SYNC(font->msgBuf, (uintptr_t)_staff_message_data_staticSegmentRomStart + font->msgOffset,
                         font->msgLength, "../z_message_PAL.c", 1954);
#endif
    } else {
#if OOT_NTSC
        if (gSaveContext.language == LANGUAGE_JPN) {
            Message_FindMessageJPN(play, textId);
            msgCtx->msgLength = font->msgLength;
#if PLATFORM_N64
            if ((B_80121220 != NULL) && (B_80121220->unk_64 != NULL) && B_80121220->unk_64(&play->msgCtx.font)) {

            } else {
                DMA_REQUEST_SYNC(font->msgBuf, (uintptr_t)_jpn_message_data_staticSegmentRomStart + font->msgOffset,
                                 font->msgLength, "../z_message_PAL.c", UNK_LINE);
            }
#else
            DMA_REQUEST_SYNC(font->msgBuf, (uintptr_t)_jpn_message_data_staticSegmentRomStart + font->msgOffset,
                             font->msgLength, "../z_message_PAL.c", UNK_LINE);
#endif
        } else {
            Message_FindMessageNES(play, textId);
            msgCtx->msgLength = font->msgLength;
#if PLATFORM_N64
            if ((B_80121220 != NULL) && (B_80121220->unk_68 != NULL) && B_80121220->unk_68(&play->msgCtx.font)) {

            } else {
                DMA_REQUEST_SYNC(font->msgBuf, (uintptr_t)_nes_message_data_staticSegmentRomStart + font->msgOffset,
                                 font->msgLength, "../z_message_PAL.c", UNK_LINE);
            }
#else
            DMA_REQUEST_SYNC(font->msgBuf, (uintptr_t)_nes_message_data_staticSegmentRomStart + font->msgOffset,
                             font->msgLength, "../z_message_PAL.c", UNK_LINE);
#endif
        }
#else
        if (gSaveContext.language == LANGUAGE_ENG) {
            Message_FindMessagePAL(play, textId);
            msgCtx->msgLength = font->msgLength;
#if PLATFORM_N64
            if ((B_80121220 != NULL) && (B_80121220->unk_64 != NULL) && B_80121220->unk_64(&play->msgCtx.font)) {

            } else {
                DMA_REQUEST_SYNC(font->msgBuf, (uintptr_t)_nes_message_data_staticSegmentRomStart + font->msgOffset,
                                 font->msgLength, "../z_message_PAL.c", UNK_LINE);
            }
#else
            DMA_REQUEST_SYNC(font->msgBuf, (uintptr_t)_nes_message_data_staticSegmentRomStart + font->msgOffset,
                             font->msgLength, "../z_message_PAL.c", 1966);
#endif
        } else if (gSaveContext.language == LANGUAGE_GER) {
            Message_FindMessagePAL(play, textId);
            msgCtx->msgLength = font->msgLength;
#if PLATFORM_N64
            //! @bug checks unk_64 != NULL instead of unk_68 != NULL
            if ((B_80121220 != NULL) && (B_80121220->unk_64 != NULL) && B_80121220->unk_68(&play->msgCtx.font)) {

            } else {
                DMA_REQUEST_SYNC(font->msgBuf, (uintptr_t)_ger_message_data_staticSegmentRomStart + font->msgOffset,
                                 font->msgLength, "../z_message_PAL.c", UNK_LINE);
            }
#else
            DMA_REQUEST_SYNC(font->msgBuf, (uintptr_t)_ger_message_data_staticSegmentRomStart + font->msgOffset,
                             font->msgLength, "../z_message_PAL.c", 1978);
#endif
        } else {
            Message_FindMessagePAL(play, textId);
            msgCtx->msgLength = font->msgLength;
#if PLATFORM_N64
            //! @bug checks unk_64 != NULL instead of unk_6C_PAL != NULL
            if ((B_80121220 != NULL) && (B_80121220->unk_64 != NULL) && B_80121220->unk_6C_PAL(&play->msgCtx.font)) {

            } else {
                DMA_REQUEST_SYNC(font->msgBuf, (uintptr_t)_fra_message_data_staticSegmentRomStart + font->msgOffset,
                                 font->msgLength, "../z_message_PAL.c", UNK_LINE);
            }
#else
            DMA_REQUEST_SYNC(font->msgBuf, (uintptr_t)_fra_message_data_staticSegmentRomStart + font->msgOffset,
                             font->msgLength, "../z_message_PAL.c", 1990);
#endif
        }
#endif
    }
    msgCtx->textBoxProperties = font->charTexBuf[0];
    msgCtx->textBoxType = msgCtx->textBoxProperties >> 4;
    msgCtx->textBoxPos = msgCtx->textBoxProperties & 0xF;
    textBoxType = msgCtx->textBoxType;
    PRINTF(T("吹き出し種類＝%d\n", "Text Box Type = %d\n"), msgCtx->textBoxType);
    if (textBoxType < TEXTBOX_TYPE_NONE_BOTTOM) {
        DMA_REQUEST_SYNC(msgCtx->textboxSegment,
                         (uintptr_t)_message_staticSegmentRomStart +
                             (messageStaticIndices[textBoxType] * MESSAGE_STATIC_TEX_SIZE),
                         MESSAGE_STATIC_TEX_SIZE, "../z_message_PAL.c", 2006);
        if (textBoxType == TEXTBOX_TYPE_BLACK) {
            msgCtx->textboxColorRed = 0;
            msgCtx->textboxColorGreen = 0;
            msgCtx->textboxColorBlue = 0;
        } else if (textBoxType == TEXTBOX_TYPE_WOODEN) {
            msgCtx->textboxColorRed = 70;
            msgCtx->textboxColorGreen = 50;
            msgCtx->textboxColorBlue = 30;
        } else if (textBoxType == TEXTBOX_TYPE_BLUE) {
            msgCtx->textboxColorRed = 0;
            msgCtx->textboxColorGreen = 10;
            msgCtx->textboxColorBlue = 50;
        } else {
            msgCtx->textboxColorRed = 255;
            msgCtx->textboxColorGreen = 0;
            msgCtx->textboxColorBlue = 0;
        }
        if (textBoxType == TEXTBOX_TYPE_WOODEN) {
            msgCtx->textboxColorAlphaTarget = 230;
        } else if (textBoxType == TEXTBOX_TYPE_OCARINA) {
            msgCtx->textboxColorAlphaTarget = 180;
        } else {
            msgCtx->textboxColorAlphaTarget = 170;
        }
        msgCtx->textboxColorAlphaCurrent = 0;
    }
    msgCtx->choiceNum = msgCtx->textUnskippable = msgCtx->textboxEndType = 0;
    msgCtx->msgBufPos = msgCtx->unk_E3D0 = msgCtx->textDrawPos = 0;
}

void Message_StartTextbox(PlayState* play, u16 textId, Actor* actor) {
    MessageContext* msgCtx = &play->msgCtx;

    PRINTF_COLOR_BLUE();
    PRINTF(T("めっせーじ＝%x(%d)\n", "Message=%x(%d)\n"), textId, actor);
    PRINTF_RST();

    msgCtx->ocarinaAction = 0xFFFF;
    Message_OpenText(play, textId);
    msgCtx->talkActor = actor;
    msgCtx->msgMode = MSGMODE_TEXT_START;
    msgCtx->stateTimer = 0;
    msgCtx->textDelayTimer = 0;
    play->msgCtx.ocarinaMode = OCARINA_MODE_00;
}

void Message_ContinueTextbox(PlayState* play, u16 textId) {
    s32 pad;
    MessageContext* msgCtx = &play->msgCtx;
#if PLATFORM_N64
    s32 pad2[3];
#endif

    PRINTF_COLOR_GREEN();
    PRINTF(T("めっせーじ＝%x  message->msg_data\n", "Message=%x  message->msg_data\n"), textId, msgCtx->msgLength);
    PRINTF_RST();

    msgCtx->msgLength = 0;
    Message_OpenText(play, textId);
    msgCtx->msgMode = MSGMODE_NONE;
    msgCtx->textboxColorAlphaCurrent = msgCtx->textboxColorAlphaTarget;
    msgCtx->msgMode = MSGMODE_TEXT_CONTINUING;
    msgCtx->stateTimer = 3;
    msgCtx->textboxEndType = msgCtx->msgBufPos = msgCtx->unk_E3D0 = msgCtx->textDrawPos = msgCtx->textDelayTimer = 0;
    msgCtx->textColorAlpha = 255;

    if (YREG(31) == 0 && play->interfaceCtx.unk_1FA == 0) {
        Interface_SetDoAction(play, DO_ACTION_NEXT);
    }
    msgCtx->textboxColorAlphaCurrent = msgCtx->textboxColorAlphaTarget;
}

void Message_StartOcarinaImpl(PlayState* play, u16 ocarinaActionId) {
    static u16 sOcarinaSongFlagsMap[] = {
        (1 << OCARINA_SONG_MINUET),
        (1 << OCARINA_SONG_BOLERO),
        (1 << OCARINA_SONG_SERENADE),
        (1 << OCARINA_SONG_REQUIEM),
        (1 << OCARINA_SONG_NOCTURNE),
        (1 << OCARINA_SONG_PRELUDE),
        (1 << OCARINA_SONG_LULLABY),
        (1 << OCARINA_SONG_EPONAS),
        (1 << OCARINA_SONG_SARIAS),
        (1 << OCARINA_SONG_SUNS),
        (1 << OCARINA_SONG_TIME),
        (1 << OCARINA_SONG_STORMS),
        (1 << OCARINA_SONG_SCARECROW_SPAWN),
    };
    MessageContext* msgCtx = &play->msgCtx;
    s32 textId;
    s16 j;
    s16 i;
    s16 noStopDoAction;
    s32 k;

    PRINTF_COLOR_GREEN();

    for (i = sOcarinaSongBitFlags = 0; i <= (QUEST_SONG_STORMS - QUEST_SONG_MINUET); i++) {
        if (CHECK_QUEST_ITEM(QUEST_SONG_MINUET + i)) {
            PRINTF("ocarina_check_bit[%d]=%x\n", i, sOcarinaSongFlagsMap[i]);
            sOcarinaSongBitFlags |= sOcarinaSongFlagsMap[i];
        }
    }
    if (gSaveContext.save.info.scarecrowSpawnSongSet) {
        sOcarinaSongBitFlags |= (1 << OCARINA_SONG_SCARECROW_SPAWN);
    }
    PRINTF("ocarina_bit = %x\n", sOcarinaSongBitFlags);
    PRINTF_RST();

    sHasSunsSong = CHECK_QUEST_ITEM(QUEST_SONG_SUN);
    msgCtx->ocarinaStaff = AudioOcarina_GetRecordingStaff();
    msgCtx->ocarinaStaff->pos = sOcarinaButtonIndexBufPos = 0;
    sOcarinaButtonIndexBufLen = 0;
    Message_ResetOcarinaNoteState();
    sLastPlayedSong = msgCtx->unk_E3F2 = msgCtx->lastOcarinaButtonIndex = 0xFF;

    PRINTF(VT_FGCOL(RED) T("☆☆☆☆☆ オカリナ番号＝%d(%d) ☆☆☆☆☆\n", "☆☆☆☆☆ Ocarina Number = %d(%d) ☆☆☆☆☆\n") VT_RST,
           ocarinaActionId, 2);
    noStopDoAction = false;
    if (ocarinaActionId >= 0x893) {
        Message_OpenText(play, ocarinaActionId); // You played the [song name]
        textId = ocarinaActionId + 0x86E;
    } else if (ocarinaActionId == OCARINA_ACTION_MEMORY_GAME) {
        msgCtx->ocarinaAction = ocarinaActionId;
        Message_OpenText(play, 0x86D); // Play using [A] and [C].
        textId = ocarinaActionId + 0x86E;
    } else if (ocarinaActionId == OCARINA_ACTION_FREE_PLAY || ocarinaActionId >= OCARINA_ACTION_CHECK_SARIA) {
        PRINTF("ocarina_set 000000000000000000  = %d\n", ocarinaActionId);
        msgCtx->ocarinaAction = ocarinaActionId;
        if (ocarinaActionId >= OCARINA_ACTION_CHECK_SARIA && ocarinaActionId <= OCARINA_ACTION_CHECK_STORMS) {
            Audio_PlaySfxGeneral(NA_SE_SY_TRE_BOX_APPEAR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        }
        if (ocarinaActionId == OCARINA_ACTION_SCARECROW_SPAWN_PLAYBACK) {
            Message_OpenText(play, 0x86F); // Ocarina
            textId = ocarinaActionId + 0x86E;
        } else {
            Message_OpenText(play, 0x86E); // Play using [A] and [C]; [B] to Stop.
            textId = ocarinaActionId + 0x86E;
        }
    } else {
        msgCtx->ocarinaAction = ocarinaActionId;
        noStopDoAction = true;
        if (ocarinaActionId >= OCARINA_ACTION_PLAYBACK_MINUET) {
            PRINTF("222222222\n");
            Message_OpenText(play, 0x86D); // Play using [A] and [C].
            textId = ocarinaActionId + 0x86E;
        } else {
            PRINTF("333333333\n");
            textId = ocarinaActionId + 0x86E;
            Message_OpenText(play, textId); // Play using [A] and [C]; [B] to Stop.
        }
    }
    msgCtx->talkActor = NULL;
    PRINTF(T("オカリナモード = %d  (%x)\n", "Ocarina Mode = %d  (%x)\n"), msgCtx->ocarinaAction, textId);
    msgCtx->textDelayTimer = 0;
    play->msgCtx.ocarinaMode = OCARINA_MODE_00;
    R_TEXTBOX_X = 34;
    R_TEXTBOX_Y = 142;
    R_TEXTBOX_TEXWIDTH = 512;
    R_TEXTBOX_TEXHEIGHT = 512;
    R_TEXTBOX_WIDTH = 256;
    R_TEXTBOX_HEIGHT = 64;
    msgCtx->stateTimer = 0;
    if (YREG(12) != 0) {
        msgCtx->msgMode = MSGMODE_TEXT_NEXT_MSG;
    } else {
        msgCtx->stateTimer = 2;
        msgCtx->msgMode = MSGMODE_TEXT_CONTINUING;
    }
    msgCtx->textboxColorAlphaCurrent = msgCtx->textboxColorAlphaTarget;
    if (!noStopDoAction) {
        Interface_LoadActionLabelB(play, DO_ACTION_STOP);
        noStopDoAction = gSaveContext.hudVisibilityMode;
        Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_B_ALT);
        gSaveContext.hudVisibilityMode = noStopDoAction;
    }
    PRINTF(T("演奏開始\n", "Music Performance Start\n"));
    if (ocarinaActionId == OCARINA_ACTION_FREE_PLAY || ocarinaActionId == OCARINA_ACTION_CHECK_NOWARP) {
        msgCtx->msgMode = MSGMODE_OCARINA_STARTING;
        msgCtx->textBoxType = 0x63;
    } else if (ocarinaActionId == OCARINA_ACTION_FROGS) {
        msgCtx->msgMode = MSGMODE_FROGS_START;
        msgCtx->textBoxType = TEXTBOX_TYPE_BLUE;
    } else if (ocarinaActionId == OCARINA_ACTION_MEMORY_GAME) {
        Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING);
        Message_Decode(play);
        msgCtx->msgMode = MSGMODE_MEMORY_GAME_START;
    } else if (ocarinaActionId == OCARINA_ACTION_SCARECROW_LONG_PLAYBACK) {
        PRINTF(T("?????録音再生 録音再生 録音再生 録音再生  -> ",
                 "????? Recording Playback  Recording Playback  Recording Playback  Recording Playback -> "));
        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
        msgCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
        sOcarinaButtonIndexBufPos = sOcarinaButtonIndexBufLen = 0;
        msgCtx->ocarinaStaff->pos = sOcarinaButtonIndexBufPos;
        Message_ResetOcarinaNoteState();
        msgCtx->stateTimer = 3;
        msgCtx->msgMode = MSGMODE_SCARECROW_LONG_PLAYBACK;
        AudioOcarina_SetPlaybackSong(OCARINA_SONG_SCARECROW_LONG + 1, 1);
        gSaveContext.hudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;
        Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING);
    }
    for (k = 0, j = 0; j < 48; j++, k += FONT_CHAR_TEX_SIZE) {
        Font_LoadCharWide(&play->msgCtx.font, MESSAGE_WIDE_CHAR_SPACE, k);
    }
}

void Message_StartOcarina(PlayState* play, u16 ocarinaActionId) {
    play->msgCtx.disableSunsSong = false;
    Message_StartOcarinaImpl(play, ocarinaActionId);
}

void Message_StartOcarinaSunsSongDisabled(PlayState* play, u16 ocarinaActionId) {
    play->msgCtx.disableSunsSong = true;
    Message_StartOcarinaImpl(play, ocarinaActionId);
}

u8 Message_GetState(MessageContext* msgCtx) {
    u8 state;

    if (msgCtx->msgLength == 0) {
        state = TEXT_STATE_NONE;
    } else if (msgCtx->msgMode == MSGMODE_TEXT_DONE) {
        if (msgCtx->textboxEndType == TEXTBOX_ENDTYPE_HAS_NEXT) {
            state = TEXT_STATE_DONE_HAS_NEXT;
        } else if (msgCtx->textboxEndType == TEXTBOX_ENDTYPE_2_CHOICE ||
                   msgCtx->textboxEndType == TEXTBOX_ENDTYPE_3_CHOICE) {
            state = TEXT_STATE_CHOICE;
        } else if (msgCtx->textboxEndType == TEXTBOX_ENDTYPE_EVENT ||
                   msgCtx->textboxEndType == TEXTBOX_ENDTYPE_PERSISTENT) {
            state = TEXT_STATE_EVENT;
        } else if (msgCtx->textboxEndType == TEXTBOX_ENDTYPE_FADING) {
            state = TEXT_STATE_DONE_FADING;
        } else {
            state = TEXT_STATE_DONE;
        }
    } else if (msgCtx->msgMode == MSGMODE_TEXT_AWAIT_NEXT) {
        state = TEXT_STATE_AWAITING_NEXT;
    } else if (msgCtx->msgMode == MSGMODE_SONG_DEMONSTRATION_DONE) {
        state = TEXT_STATE_SONG_DEMO_DONE;
    } else if (msgCtx->ocarinaMode == OCARINA_MODE_03) {
        state = TEXT_STATE_8;
    } else if (msgCtx->msgMode == MSGMODE_OCARINA_AWAIT_INPUT) {
        state = TEXT_STATE_9;
    } else if (msgCtx->msgMode == MSGMODE_TEXT_CLOSING && msgCtx->stateTimer == 1) {
        state = TEXT_STATE_CLOSING;
    } else {
        state = TEXT_STATE_DONE_FADING;
    }
    return state;
}

void Message_DrawTextBox(PlayState* play, Gfx** p) {
    MessageContext* msgCtx = &play->msgCtx;
    Gfx* gfx = *p;

    gDPPipeSync(gfx++);
    gDPSetPrimColor(gfx++, 0, 0, msgCtx->textboxColorRed, msgCtx->textboxColorGreen, msgCtx->textboxColorBlue,
                    msgCtx->textboxColorAlphaCurrent);

    if (!(msgCtx->textBoxType) || msgCtx->textBoxType == TEXTBOX_TYPE_BLUE) {
        gDPLoadTextureBlock_4b(gfx++, msgCtx->textboxSegment, G_IM_FMT_I, 128, 64, 0, G_TX_MIRROR, G_TX_NOMIRROR, 7, 0,
                               G_TX_NOLOD, G_TX_NOLOD);
    } else {
        if (msgCtx->textBoxType == TEXTBOX_TYPE_OCARINA) {
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

    // Draw treble clef
    if (msgCtx->textBoxType == TEXTBOX_TYPE_OCARINA) {
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
    View_ApplyOrthoToOverlay(view);
}

#if OOT_NTSC
#define DRAW_TEXT(play, gfx, isCredits)                                                         \
    ((gSaveContext.language == LANGUAGE_JPN) && !(isCredits)) ? Message_DrawTextWide(play, gfx) \
                                                              : Message_DrawText(play, gfx)
#else
#define DRAW_TEXT(play, gfx, isCredits) Message_DrawText(play, gfx)
#endif

/**
 * Draws the textbox in full and updates ocarina state
 */
void Message_DrawMain(PlayState* play, Gfx** p) {
    static s16 sOcarinaEffectActorIds[] = {
        ACTOR_OCEFF_WIPE3, ACTOR_OCEFF_WIPE2, ACTOR_OCEFF_WIPE,  ACTOR_OCEFF_SPOT,
        ACTOR_OCEFF_WIPE,  ACTOR_OCEFF_STORM, ACTOR_OCEFF_WIPE4,
    };
    static s16 sOcarinaEffectActorParams[] = { 0x0000, 0x0000, 0x0000, 0x0000, 0x0001, 0x0000, 0x0000 };
    static void* sOcarinaNoteTextures[] = {
        gOcarinaBtnIconATex,      // OCARINA_BTN_A
        gOcarinaBtnIconCDownTex,  // OCARINA_BTN_C_DOWN
        gOcarinaBtnIconCRightTex, // OCARINA_BTN_C_RIGHT
        gOcarinaBtnIconCLeftTex,  // OCARINA_BTN_C_LEFT
        gOcarinaBtnIconCUpTex,    // OCARINA_BTN_C_UP
    };
    static s16 sOcarinaButtonAPrimColors[][3] = {
        { OCARINA_BUTTON_A_PRIM_1_R, OCARINA_BUTTON_A_PRIM_1_G, OCARINA_BUTTON_A_PRIM_1_B },
        { OCARINA_BUTTON_A_PRIM_2_R, OCARINA_BUTTON_A_PRIM_2_G, OCARINA_BUTTON_A_PRIM_2_B },
    };
    static s16 sOcarinaButtonAEnvColors[][3] = {
        { OCARINA_BUTTON_A_ENV_1_R, OCARINA_BUTTON_A_ENV_1_G, OCARINA_BUTTON_A_ENV_1_B },
        { OCARINA_BUTTON_A_ENV_2_R, OCARINA_BUTTON_A_ENV_2_G, OCARINA_BUTTON_A_ENV_2_B },
    };
    static s16 sOcarinaButtonCPrimColors[][3] = {
        { 255, 255, 50 },
        { 255, 255, 180 },
    };
    static s16 sOcarinaButtonCEnvColors[][3] = {
        { 10, 10, 10 },
        { 110, 110, 50 },
    };
    static s16 sOcarinaNoteFlashTimer = 12;
    static s16 sOcarinaNoteFlashColorIndex = 1;
    static s16 sOcarinaSongFanfares[] = {
        NA_BGM_OCA_MINUET,   NA_BGM_OCA_BOLERO, NA_BGM_OCA_SERENADE, NA_BGM_OCA_REQUIEM,
        NA_BGM_OCA_NOCTURNE, NA_BGM_OCA_LIGHT,  NA_BGM_OCA_SARIA,    NA_BGM_OCA_EPONA,
        NA_BGM_OCA_ZELDA,    NA_BGM_OCA_SUNS,   NA_BGM_OCA_TIME,     NA_BGM_OCA_STORM,
    };
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    MessageContext* msgCtx = &play->msgCtx;
    u16 buttonIndexPos;
    Player* player = GET_PLAYER(play);
    s32 pad;
    Gfx* gfx = *p;
    s16 r;
    s16 g;
    s16 b;
    u16 i;
    u16 notePosX;
    u16 pad1;
    u16 j;

    gSPSegment(gfx++, 0x02, play->interfaceCtx.parameterSegment);
    gSPSegment(gfx++, 0x07, msgCtx->textboxSegment);

    if (msgCtx->msgLength != 0) {
        if (msgCtx->ocarinaAction != OCARINA_ACTION_FROGS && msgCtx->msgMode != MSGMODE_SONG_PLAYED_ACT &&
            msgCtx->msgMode >= MSGMODE_TEXT_BOX_GROWING && msgCtx->msgMode < MSGMODE_TEXT_CLOSING &&
            msgCtx->textBoxType < TEXTBOX_TYPE_NONE_BOTTOM) {
            Message_SetView(&msgCtx->view);
            Gfx_SetupDL_39Ptr(&gfx);
            Message_DrawTextBox(play, &gfx);
        }

        Gfx_SetupDL_39Ptr(&gfx);

        gDPSetAlphaCompare(gfx++, G_AC_NONE);
        gDPSetCombineLERP(gfx++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE,
                          0);

        switch (msgCtx->msgMode) {
            case MSGMODE_TEXT_START:
            case MSGMODE_TEXT_BOX_GROWING:
            case MSGMODE_TEXT_STARTING:
            case MSGMODE_TEXT_NEXT_MSG:
                break;
            case MSGMODE_TEXT_CONTINUING:
                if (msgCtx->stateTimer == 1) {
                    for (j = 0, i = 0; i < 48; i++, j += FONT_CHAR_TEX_SIZE) {
                        Font_LoadCharWide(&play->msgCtx.font, MESSAGE_WIDE_CHAR_SPACE, j);
                    }
                    DRAW_TEXT(play, &gfx, sTextIsCredits);
                }
                break;
            case MSGMODE_TEXT_DISPLAYING:
            case MSGMODE_TEXT_DELAYED_BREAK:
                DRAW_TEXT(play, &gfx, sTextIsCredits);
                break;
            case MSGMODE_TEXT_AWAIT_INPUT:
            case MSGMODE_TEXT_AWAIT_NEXT:
                DRAW_TEXT(play, &gfx, sTextIsCredits);
                Message_DrawTextboxIcon(play, &gfx, R_TEXTBOX_END_XPOS, R_TEXTBOX_END_YPOS);
                break;
            case MSGMODE_OCARINA_STARTING:
            case MSGMODE_SONG_DEMONSTRATION_STARTING:
            case MSGMODE_SONG_PLAYBACK_STARTING:
                AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
                msgCtx->ocarinaStaff = AudioOcarina_GetPlayingStaff();
                msgCtx->ocarinaStaff->pos = sOcarinaButtonIndexBufPos = 0;
                play->msgCtx.ocarinaMode = OCARINA_MODE_01;
                Message_ResetOcarinaNoteState();
                sOcarinaNoteFlashTimer = 3;
                sOcarinaNoteFlashColorIndex = 1;
                if (msgCtx->msgMode == MSGMODE_OCARINA_STARTING) {
                    if (msgCtx->ocarinaAction == OCARINA_ACTION_UNK_0 ||
                        msgCtx->ocarinaAction == OCARINA_ACTION_FREE_PLAY ||
                        msgCtx->ocarinaAction == OCARINA_ACTION_SCARECROW_SPAWN_RECORDING ||
                        msgCtx->ocarinaAction == OCARINA_ACTION_CHECK_NOWARP ||
                        msgCtx->ocarinaAction >= OCARINA_ACTION_CHECK_SARIA) {
                        if (msgCtx->ocarinaAction == OCARINA_ACTION_FREE_PLAY ||
                            msgCtx->ocarinaAction == OCARINA_ACTION_CHECK_NOWARP) {
                            AudioOcarina_Start(sOcarinaSongBitFlags + 0xC000);
                        } else {
                            PRINTF(T("台上演奏\n", "On Stage Performance\n"));
                            AudioOcarina_Start(sOcarinaSongBitFlags);
                        }
                    } else {
                        PRINTF("Na_StartOcarinaSinglePlayCheck2( message->ocarina_no );\n");
                        AudioOcarina_Start((1 << msgCtx->ocarinaAction) + 0x8000);
                    }
                    msgCtx->msgMode = MSGMODE_OCARINA_PLAYING;
                } else if (msgCtx->msgMode == MSGMODE_SONG_DEMONSTRATION_STARTING) {
                    msgCtx->stateTimer = 20;
                    msgCtx->msgMode = MSGMODE_SONG_DEMONSTRATION_SELECT_INSTRUMENT;
                } else {
                    AudioOcarina_Start((1 << (msgCtx->ocarinaAction - OCARINA_ACTION_PLAYBACK_MINUET)) + 0x8000);
                    PRINTF(T("演奏チェック=%d\n", "Performance Check = %d\n"),
                           msgCtx->ocarinaAction - OCARINA_ACTION_PLAYBACK_MINUET);
                    msgCtx->msgMode = MSGMODE_SONG_PLAYBACK;
                }
                if (msgCtx->ocarinaAction != OCARINA_ACTION_FREE_PLAY &&
                    msgCtx->ocarinaAction != OCARINA_ACTION_CHECK_NOWARP) {
                    DRAW_TEXT(play, &gfx, sTextIsCredits);
                }
                break;
            case MSGMODE_OCARINA_PLAYING:
                msgCtx->ocarinaStaff = AudioOcarina_GetPlayingStaff();
                if (msgCtx->ocarinaStaff->pos) {
                    PRINTF("locate=%d  onpu_pt=%d\n", msgCtx->ocarinaStaff->pos, sOcarinaButtonIndexBufPos);
#if OOT_VERSION >= PAL_1_0
                    if (msgCtx->ocarinaStaff->pos == 1 && sOcarinaButtonIndexBufPos == 8) {
                        sOcarinaButtonIndexBufPos = 0;
                    }
#endif
                    if (sOcarinaButtonIndexBufPos == msgCtx->ocarinaStaff->pos - 1) {
                        msgCtx->lastOcarinaButtonIndex = sOcarinaButtonIndexBuf[msgCtx->ocarinaStaff->pos - 1] =
                            msgCtx->ocarinaStaff->buttonIndex;
                        sOcarinaButtonIndexBuf[msgCtx->ocarinaStaff->pos] = OCARINA_BTN_INVALID;
                        sOcarinaButtonIndexBufPos++;
                    }
                }
                msgCtx->lastPlayedSong = msgCtx->ocarinaStaff->state;
                if (msgCtx->ocarinaStaff->state < OCARINA_SONG_MEMORY_GAME) {
                    if (msgCtx->ocarinaStaff->state == OCARINA_SONG_SCARECROW_SPAWN ||
                        CHECK_QUEST_ITEM(QUEST_SONG_MINUET + gOcarinaSongItemMap[msgCtx->ocarinaStaff->state])) {
                        sLastPlayedSong = msgCtx->unk_E3F2 = msgCtx->lastPlayedSong = msgCtx->ocarinaStaff->state;
                        msgCtx->msgMode = MSGMODE_OCARINA_CORRECT_PLAYBACK;
                        msgCtx->stateTimer = 20;
                        if (msgCtx->ocarinaAction == OCARINA_ACTION_CHECK_NOWARP) {
                            if (msgCtx->ocarinaStaff->state < OCARINA_SONG_SARIAS ||
                                msgCtx->ocarinaStaff->state == OCARINA_SONG_SCARECROW_SPAWN) {
                                AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                                Audio_PlaySfxGeneral(NA_SE_SY_OCARINA_ERROR, &gSfxDefaultPos, 4,
                                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                                     &gSfxDefaultReverb);
                                msgCtx->msgMode = MSGMODE_OCARINA_STARTING;
                            } else {
                                PRINTF(T("Ocarina_Flog 正解模範演奏=%x\n",
                                         "Ocarina_Flog Correct Example Performance = %x\n"),
                                       msgCtx->lastPlayedSong);
                                Message_ContinueTextbox(play, 0x86F); // Ocarina
                                msgCtx->msgMode = MSGMODE_SONG_PLAYED;
                                msgCtx->textBoxType = TEXTBOX_TYPE_OCARINA;
                                msgCtx->stateTimer = 10;
                                Audio_PlaySfxGeneral(NA_SE_SY_TRE_BOX_APPEAR, &gSfxDefaultPos, 4,
                                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                                     &gSfxDefaultReverb);
                                Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING);
                            }
                        } else if (msgCtx->ocarinaAction == OCARINA_ACTION_CHECK_SCARECROW_SPAWN) {
                            if (msgCtx->ocarinaStaff->state < OCARINA_SONG_SCARECROW_SPAWN) {
                                AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                                Audio_PlaySfxGeneral(NA_SE_SY_OCARINA_ERROR, &gSfxDefaultPos, 4,
                                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                                     &gSfxDefaultReverb);
                                msgCtx->stateTimer = 10;
                                msgCtx->msgMode = MSGMODE_OCARINA_FAIL;
                            } else {
                                PRINTF(T("Ocarina_Flog 正解模範演奏=%x\n",
                                         "Ocarina_Flog Correct Example Performance = %x\n"),
                                       msgCtx->lastPlayedSong);
                                Message_ContinueTextbox(play, 0x86F); // Ocarina
                                msgCtx->msgMode = MSGMODE_SONG_PLAYED;
                                msgCtx->textBoxType = TEXTBOX_TYPE_OCARINA;
                                msgCtx->stateTimer = 10;
                                Audio_PlaySfxGeneral(NA_SE_SY_TRE_BOX_APPEAR, &gSfxDefaultPos, 4,
                                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                                     &gSfxDefaultReverb);
                                Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING);
                            }
                        } else if (msgCtx->ocarinaAction == OCARINA_ACTION_FREE_PLAY) {
                            PRINTF(
                                T("Ocarina_Free 正解模範演奏=%x\n", "Ocarina_Free Correct Example Performance = %x\n"),
                                msgCtx->lastPlayedSong);
                            Message_ContinueTextbox(play, 0x86F); // Ocarina
                            msgCtx->msgMode = MSGMODE_SONG_PLAYED;
                            msgCtx->textBoxType = TEXTBOX_TYPE_OCARINA;
                            msgCtx->stateTimer = 10;
                            Audio_PlaySfxGeneral(NA_SE_SY_TRE_BOX_APPEAR, &gSfxDefaultPos, 4,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultReverb);
                        } else {
                            Audio_PlaySfxGeneral(NA_SE_SY_TRE_BOX_APPEAR, &gSfxDefaultPos, 4,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultReverb);
                        }
                        Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING);
                    } else {
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                        Audio_PlaySfxGeneral(NA_SE_SY_OCARINA_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        msgCtx->msgMode = MSGMODE_OCARINA_STARTING;
                    }
                } else if (msgCtx->ocarinaStaff->state == 0xFF) {
                    AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                    Audio_PlaySfxGeneral(NA_SE_SY_OCARINA_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    msgCtx->stateTimer = 10;
                    msgCtx->msgMode = MSGMODE_OCARINA_FAIL;
                } else if (CHECK_BTN_ALL(play->state.input[0].press.button, BTN_B)) {
                    AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                    play->msgCtx.ocarinaMode = OCARINA_MODE_04;
                    Message_CloseTextbox(play);
                }
                if (msgCtx->ocarinaAction != OCARINA_ACTION_FREE_PLAY &&
                    msgCtx->ocarinaAction != OCARINA_ACTION_CHECK_NOWARP) {
                    DRAW_TEXT(play, &gfx, sTextIsCredits);
                }
                break;
            case MSGMODE_OCARINA_CORRECT_PLAYBACK:
            case MSGMODE_SONG_PLAYBACK_SUCCESS:
            case MSGMODE_SCARECROW_SPAWN_RECORDING_DONE:
                r = ABS(sOcarinaButtonAPrimR - sOcarinaButtonAPrimColors[sOcarinaNoteFlashColorIndex][0]) /
                    sOcarinaNoteFlashTimer;
                g = ABS(sOcarinaButtonAPrimG - sOcarinaButtonAPrimColors[sOcarinaNoteFlashColorIndex][1]) /
                    sOcarinaNoteFlashTimer;
                b = ABS(sOcarinaButtonAPrimB - sOcarinaButtonAPrimColors[sOcarinaNoteFlashColorIndex][2]) /
                    sOcarinaNoteFlashTimer;

                if (sOcarinaButtonAPrimR >= sOcarinaButtonAPrimColors[sOcarinaNoteFlashColorIndex][0]) {
                    sOcarinaButtonAPrimR -= r;
                } else {
                    sOcarinaButtonAPrimR += r;
                }
                if (sOcarinaButtonAPrimG >= sOcarinaButtonAPrimColors[sOcarinaNoteFlashColorIndex][1]) {
                    sOcarinaButtonAPrimG -= g;
                } else {
                    sOcarinaButtonAPrimG += g;
                }
                if (sOcarinaButtonAPrimB >= sOcarinaButtonAPrimColors[sOcarinaNoteFlashColorIndex][2]) {
                    sOcarinaButtonAPrimB -= b;
                } else {
                    sOcarinaButtonAPrimB += b;
                }

                r = ABS(sOcarinaButtonAEnvR - sOcarinaButtonAEnvColors[sOcarinaNoteFlashColorIndex][0]) /
                    sOcarinaNoteFlashTimer;
                g = ABS(sOcarinaButtonAEnvG - sOcarinaButtonAEnvColors[sOcarinaNoteFlashColorIndex][1]) /
                    sOcarinaNoteFlashTimer;
                b = ABS(sOcarinaButtonAEnvB - sOcarinaButtonAEnvColors[sOcarinaNoteFlashColorIndex][2]) /
                    sOcarinaNoteFlashTimer;

                if (sOcarinaButtonCEnvR >= sOcarinaButtonAEnvColors[sOcarinaNoteFlashColorIndex][0]) {
                    sOcarinaButtonAEnvR -= r;
                } else {
                    sOcarinaButtonAEnvR += r;
                }
                if (sOcarinaButtonCEnvG >= sOcarinaButtonAEnvColors[sOcarinaNoteFlashColorIndex][1]) {
                    sOcarinaButtonAEnvG -= g;
                } else {
                    sOcarinaButtonAEnvG += g;
                }
                if (sOcarinaButtonCEnvB >= sOcarinaButtonAEnvColors[sOcarinaNoteFlashColorIndex][2]) {
                    sOcarinaButtonAEnvB -= b;
                } else {
                    sOcarinaButtonAEnvB += b;
                }

                r = ABS(sOcarinaButtonCPrimR - sOcarinaButtonCPrimColors[sOcarinaNoteFlashColorIndex][0]) /
                    sOcarinaNoteFlashTimer;
                g = ABS(sOcarinaButtonCPrimG - sOcarinaButtonCPrimColors[sOcarinaNoteFlashColorIndex][1]) /
                    sOcarinaNoteFlashTimer;
                b = ABS(sOcarinaButtonCPrimB - sOcarinaButtonCPrimColors[sOcarinaNoteFlashColorIndex][2]) /
                    sOcarinaNoteFlashTimer;

                if (sOcarinaButtonCPrimR >= sOcarinaButtonCPrimColors[sOcarinaNoteFlashColorIndex][0]) {
                    sOcarinaButtonCPrimR -= r;
                } else {
                    sOcarinaButtonCPrimR += r;
                }
                if (sOcarinaButtonCPrimG >= sOcarinaButtonCPrimColors[sOcarinaNoteFlashColorIndex][1]) {
                    sOcarinaButtonCPrimG -= g;
                } else {
                    sOcarinaButtonCPrimG += g;
                }
                if (sOcarinaButtonCPrimB >= sOcarinaButtonCPrimColors[sOcarinaNoteFlashColorIndex][2]) {
                    sOcarinaButtonCPrimB -= b;
                } else {
                    sOcarinaButtonCPrimB += b;
                }

                r = ABS(sOcarinaButtonCEnvR - sOcarinaButtonCEnvColors[sOcarinaNoteFlashColorIndex][0]) /
                    sOcarinaNoteFlashTimer;
                g = ABS(sOcarinaButtonCEnvG - sOcarinaButtonCEnvColors[sOcarinaNoteFlashColorIndex][1]) /
                    sOcarinaNoteFlashTimer;
                b = ABS(sOcarinaButtonCEnvB - sOcarinaButtonCEnvColors[sOcarinaNoteFlashColorIndex][2]) /
                    sOcarinaNoteFlashTimer;

                if (sOcarinaButtonCEnvR >= sOcarinaButtonCEnvColors[sOcarinaNoteFlashColorIndex][0]) {
                    sOcarinaButtonCEnvR -= r;
                } else {
                    sOcarinaButtonCEnvR += r;
                }
                if (sOcarinaButtonCEnvG >= sOcarinaButtonCEnvColors[sOcarinaNoteFlashColorIndex][1]) {
                    sOcarinaButtonCEnvG -= g;
                } else {
                    sOcarinaButtonCEnvG += g;
                }
                if (sOcarinaButtonCEnvB >= sOcarinaButtonCEnvColors[sOcarinaNoteFlashColorIndex][2]) {
                    sOcarinaButtonCEnvB -= b;
                } else {
                    sOcarinaButtonCEnvB += b;
                }

                sOcarinaNoteFlashTimer--;
                if (sOcarinaNoteFlashTimer == 0) {
                    sOcarinaButtonAPrimR = sOcarinaButtonAPrimColors[sOcarinaNoteFlashColorIndex][0];
                    sOcarinaButtonAPrimG = sOcarinaButtonAPrimColors[sOcarinaNoteFlashColorIndex][1];
                    sOcarinaButtonAPrimB = sOcarinaButtonAPrimColors[sOcarinaNoteFlashColorIndex][2];
                    sOcarinaButtonAEnvR = sOcarinaButtonAEnvColors[sOcarinaNoteFlashColorIndex][0];
                    sOcarinaButtonAEnvG = sOcarinaButtonAEnvColors[sOcarinaNoteFlashColorIndex][1];
                    sOcarinaButtonAEnvB = sOcarinaButtonAEnvColors[sOcarinaNoteFlashColorIndex][2];
                    sOcarinaButtonCPrimR = sOcarinaButtonCPrimColors[sOcarinaNoteFlashColorIndex][0];
                    sOcarinaButtonCPrimG = sOcarinaButtonCPrimColors[sOcarinaNoteFlashColorIndex][1];
                    sOcarinaButtonCPrimB = sOcarinaButtonCPrimColors[sOcarinaNoteFlashColorIndex][2];
                    sOcarinaButtonCEnvR = sOcarinaButtonCEnvColors[sOcarinaNoteFlashColorIndex][0];
                    sOcarinaButtonCEnvG = sOcarinaButtonCEnvColors[sOcarinaNoteFlashColorIndex][1];
                    sOcarinaButtonCEnvB = sOcarinaButtonCEnvColors[sOcarinaNoteFlashColorIndex][2];
                    sOcarinaNoteFlashTimer = 3;
                    sOcarinaNoteFlashColorIndex ^= 1;
                }

                msgCtx->stateTimer--;
                if (msgCtx->stateTimer == 0) {
                    AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                    if (msgCtx->msgMode == MSGMODE_OCARINA_CORRECT_PLAYBACK) {
                        PRINTF(T("正解模範演奏=%x\n", "Correct Example Performance = %x\n"), msgCtx->lastPlayedSong);
                        Message_ContinueTextbox(play, 0x86F); // Ocarina
                        msgCtx->msgMode = MSGMODE_SONG_PLAYED;
                        msgCtx->textBoxType = TEXTBOX_TYPE_OCARINA;
                        msgCtx->stateTimer = 1;
                    } else if (msgCtx->msgMode == MSGMODE_SONG_PLAYBACK_SUCCESS) {
                        if (msgCtx->lastPlayedSong >= OCARINA_SONG_SARIAS) {
                            Message_ContinueTextbox(play, 0x86F); // Ocarina
                            msgCtx->msgMode = MSGMODE_SONG_PLAYED;
                            msgCtx->textBoxType = TEXTBOX_TYPE_OCARINA;
                            msgCtx->stateTimer = 1;
                        } else {
                            Message_CloseTextbox(play);
                            play->msgCtx.ocarinaMode = OCARINA_MODE_04;
                        }
                    } else {
                        Message_CloseTextbox(play);
                        play->msgCtx.ocarinaMode = OCARINA_MODE_03;
                    }
                }
                DRAW_TEXT(play, &gfx, false);
                break;
            case MSGMODE_OCARINA_FAIL:
            case MSGMODE_SONG_PLAYBACK_FAIL:
                DRAW_TEXT(play, &gfx, false);
                FALLTHROUGH;
            case MSGMODE_OCARINA_FAIL_NO_TEXT:
                msgCtx->stateTimer--;
                if (msgCtx->stateTimer == 0) {
                    R_OCARINA_BUTTONS_YPOS_OFFSET = 1;
                    if (msgCtx->msgMode == MSGMODE_SONG_PLAYBACK_FAIL) {
                        PRINTF(T("ここここここ\n", "Here here here\n"));
                        Message_ContinueTextbox(play, 0x88B); // red X background
                        Message_Decode(play);
                        msgCtx->msgMode = MSGMODE_SONG_PLAYBACK_NOTES_DROP;
                    } else {
                        msgCtx->msgMode = MSGMODE_OCARINA_NOTES_DROP;
                    }
                    PRINTF(T("キャンセル\n", "Cancel\n"));
                }
                break;
            case MSGMODE_OCARINA_NOTES_DROP:
            case MSGMODE_SONG_PLAYBACK_NOTES_DROP:
                for (i = 0; i < 5; i++) {
                    R_OCARINA_BUTTONS_YPOS(i) += R_OCARINA_BUTTONS_YPOS_OFFSET;
                }
                R_OCARINA_BUTTONS_YPOS_OFFSET += R_OCARINA_BUTTONS_YPOS_OFFSET;
                if (R_OCARINA_BUTTONS_YPOS_OFFSET >= 550) {
                    sOcarinaButtonIndexBuf[0] = OCARINA_BTN_INVALID;
                    sOcarinaButtonAlphaValues[0] = sOcarinaButtonAlphaValues[1] = sOcarinaButtonAlphaValues[2] =
                        sOcarinaButtonAlphaValues[3] = sOcarinaButtonAlphaValues[4] = sOcarinaButtonAlphaValues[5] =
                            sOcarinaButtonAlphaValues[6] = sOcarinaButtonAlphaValues[7] = sOcarinaButtonAlphaValues[8] =
                                0;
                    if (msgCtx->msgMode == MSGMODE_SONG_PLAYBACK_NOTES_DROP) {
                        msgCtx->msgMode = MSGMODE_OCARINA_AWAIT_INPUT;
                    } else {
                        msgCtx->msgMode = MSGMODE_OCARINA_STARTING;
                    }
                }
                break;
            case MSGMODE_SONG_PLAYED:
                msgCtx->stateTimer--;
                if (msgCtx->stateTimer == 0) {
                    AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                    PRINTF_COLOR_GREEN();
                    PRINTF("Na_StopOcarinaMode();\n");
                    PRINTF("Na_StopOcarinaMode();\n");
                    PRINTF("Na_StopOcarinaMode();\n");
                    PRINTF_RST();
                    Message_Decode(play);
                    msgCtx->msgMode = MSGMODE_SETUP_DISPLAY_SONG_PLAYED;
                    msgCtx->ocarinaStaff = AudioOcarina_GetPlayingStaff();
                    msgCtx->ocarinaStaff->pos = sOcarinaButtonIndexBufPos = 0;
                    Message_ResetOcarinaNoteState();
                    if (msgCtx->lastPlayedSong >= OCARINA_SONG_SARIAS &&
                        msgCtx->lastPlayedSong < OCARINA_SONG_MEMORY_GAME) {
                        Actor_Spawn(&play->actorCtx, play,
                                    sOcarinaEffectActorIds[msgCtx->lastPlayedSong - OCARINA_SONG_SARIAS],
                                    player->actor.world.pos.x, player->actor.world.pos.y, player->actor.world.pos.z, 0,
                                    0, 0, sOcarinaEffectActorParams[msgCtx->lastPlayedSong - OCARINA_SONG_SARIAS]);
                    }
                }
                break;
            case MSGMODE_SETUP_DISPLAY_SONG_PLAYED:
                DRAW_TEXT(play, &gfx, false);
                AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
                AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
                AudioOcarina_SetPlaybackSong(msgCtx->lastPlayedSong + 1, 1);
                if (msgCtx->lastPlayedSong != OCARINA_SONG_SCARECROW_SPAWN) {
                    Audio_PlayFanfare(sOcarinaSongFanfares[msgCtx->lastPlayedSong]);
                    Audio_SetSfxBanksMute(0x20);
                }
                play->msgCtx.ocarinaMode = OCARINA_MODE_01;
                if (msgCtx->ocarinaAction == OCARINA_ACTION_FREE_PLAY) {
                    msgCtx->ocarinaAction = OCARINA_ACTION_FREE_PLAY_DONE;
                }
                if (msgCtx->ocarinaAction == OCARINA_ACTION_CHECK_NOWARP) {
                    msgCtx->ocarinaAction = OCARINA_ACTION_CHECK_NOWARP_DONE;
                }
                sOcarinaButtonIndexBufPos = 0;
                msgCtx->msgMode = MSGMODE_DISPLAY_SONG_PLAYED;
                break;
            case MSGMODE_SONG_DEMONSTRATION_SELECT_INSTRUMENT:
                msgCtx->stateTimer--;
                if (msgCtx->stateTimer == 0) {
                    PRINTF(T("ocarina_no=%d  選曲=%d\n", "ocarina_no=%d  Song Chosen=%d\n"), msgCtx->ocarinaAction,
                           0x16);
                    if (msgCtx->ocarinaAction < OCARINA_ACTION_TEACH_SARIA) {
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_HARP);
                    } else if (msgCtx->ocarinaAction == OCARINA_ACTION_TEACH_EPONA) {
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_MALON);
                    } else if (msgCtx->ocarinaAction == OCARINA_ACTION_TEACH_LULLABY) {
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_WHISTLE);
                    } else if (msgCtx->ocarinaAction == OCARINA_ACTION_TEACH_STORMS) {
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_GRIND_ORGAN);
                    } else {
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
                    }
                    PRINTF(T("模範演奏=%x\n", "Example Performance = %x\n"),
                           msgCtx->ocarinaAction - OCARINA_ACTION_TEACH_MINUET);
                    AudioOcarina_SetPlaybackSong(msgCtx->ocarinaAction - OCARINA_ACTION_TEACH_MINUET + 1, 2);
                    sOcarinaButtonIndexBufPos = 0;
                    msgCtx->msgMode = MSGMODE_SONG_DEMONSTRATION;
                }
                DRAW_TEXT(play, &gfx, false);
                break;
            case MSGMODE_DISPLAY_SONG_PLAYED_TEXT_BEGIN:
                Message_ContinueTextbox(play, msgCtx->lastPlayedSong + 0x893); // You played [song name]
                Message_Decode(play);
                msgCtx->msgMode = MSGMODE_DISPLAY_SONG_PLAYED_TEXT;
                msgCtx->stateTimer = 20;
                DRAW_TEXT(play, &gfx, false);
                break;
            case MSGMODE_DISPLAY_SONG_PLAYED_TEXT:
                msgCtx->stateTimer--;
                if (msgCtx->stateTimer == 0) {
                    msgCtx->msgMode = MSGMODE_SONG_PLAYED_ACT_BEGIN;
                }
                DRAW_TEXT(play, &gfx, false);
                break;
            case MSGMODE_SONG_PLAYED_ACT_BEGIN:
                AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                Message_ResetOcarinaNoteState();
                msgCtx->msgMode = MSGMODE_SONG_PLAYED_ACT;
                msgCtx->stateTimer = 2;
                DRAW_TEXT(play, &gfx, false);
                break;
            case MSGMODE_SONG_PLAYED_ACT:
                msgCtx->stateTimer--;
                if (msgCtx->stateTimer == 0) {
                    if ((msgCtx->lastPlayedSong <= OCARINA_SONG_PRELUDE) &&
                        !(msgCtx->ocarinaAction >= OCARINA_ACTION_PLAYBACK_MINUET &&
                          msgCtx->ocarinaAction <= OCARINA_ACTION_PLAYBACK_PRELUDE)) {
                        if (msgCtx->disableWarpSongs || interfaceCtx->restrictions.warpSongs == 3) {
                            Message_StartTextbox(play, 0x88C, NULL); // "You can't warp here!"
                            play->msgCtx.ocarinaMode = OCARINA_MODE_04;
                        } else if (GET_EVENTINF_INGO_RACE_STATE() != INGO_RACE_STATE_HORSE_RENTAL_PERIOD) {
                            Message_StartTextbox(play, msgCtx->lastPlayedSong + 0x88D,
                                                 NULL); // "Warp to [place name]?"
                            play->msgCtx.ocarinaMode = OCARINA_MODE_01;
                        } else {
                            Message_CloseTextbox(play);
                        }
                    } else {
                        Message_CloseTextbox(play);
                        if (msgCtx->lastPlayedSong == OCARINA_SONG_EPONAS) {
                            R_EPONAS_SONG_PLAYED = true;
                        }
                        PRINTF_COLOR_YELLOW();
                        PRINTF("☆☆☆ocarina=%d   message->ocarina_no=%d  ", msgCtx->lastPlayedSong,
                               msgCtx->ocarinaAction);
                        if (msgCtx->ocarinaAction == OCARINA_ACTION_FREE_PLAY_DONE) {
                            play->msgCtx.ocarinaMode = OCARINA_MODE_01;
                            if (msgCtx->lastPlayedSong == OCARINA_SONG_SCARECROW_SPAWN) {
                                play->msgCtx.ocarinaMode = OCARINA_MODE_0B;
                            }
                        } else if (msgCtx->ocarinaAction >= OCARINA_ACTION_CHECK_MINUET) {
                            PRINTF_COLOR_YELLOW();
                            PRINTF("Ocarina_PC_Wind=%d(%d) ☆☆☆   ", OCARINA_ACTION_CHECK_MINUET,
                                   msgCtx->ocarinaAction - OCARINA_ACTION_CHECK_MINUET);
                            if (msgCtx->lastPlayedSong == (msgCtx->ocarinaAction - OCARINA_ACTION_CHECK_MINUET)) {
                                play->msgCtx.ocarinaMode = OCARINA_MODE_03;
                            } else {
                                play->msgCtx.ocarinaMode = msgCtx->lastPlayedSong - 1;
                            }
                        } else {
                            PRINTF_COLOR_GREEN();
                            PRINTF("Ocarina_C_Wind=%d(%d) ☆☆☆   ", OCARINA_ACTION_PLAYBACK_MINUET,
                                   msgCtx->ocarinaAction - OCARINA_ACTION_PLAYBACK_MINUET);
                            if (msgCtx->lastPlayedSong == (msgCtx->ocarinaAction - OCARINA_ACTION_PLAYBACK_MINUET)) {
                                play->msgCtx.ocarinaMode = OCARINA_MODE_03;
                            } else {
                                play->msgCtx.ocarinaMode = OCARINA_MODE_04;
                            }
                        }
                        PRINTF_RST();
                        PRINTF("→  OCARINA_MODE=%d\n", play->msgCtx.ocarinaMode);
                    }
                }
                break;
            case MSGMODE_DISPLAY_SONG_PLAYED:
            case MSGMODE_SONG_DEMONSTRATION:
                msgCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
                if (msgCtx->ocarinaStaff->state == 0) {
                    if (msgCtx->msgMode == MSGMODE_DISPLAY_SONG_PLAYED) {
                        msgCtx->msgMode = MSGMODE_DISPLAY_SONG_PLAYED_TEXT_BEGIN;
                    } else {
                        msgCtx->msgMode = MSGMODE_SONG_DEMONSTRATION_DONE;
                    }
                    PRINTF("onpu_buff[%d]=%x\n", msgCtx->ocarinaStaff->pos,
                           sOcarinaButtonIndexBuf[msgCtx->ocarinaStaff->pos]);
                } else {
                    if (sOcarinaButtonIndexBufPos != 0 && msgCtx->ocarinaStaff->pos == 1) {
                        sOcarinaButtonIndexBufPos = 0;
                    }
                    if (((u32)msgCtx->ocarinaStaff->pos != 0) &&
                        (sOcarinaButtonIndexBufPos == msgCtx->ocarinaStaff->pos - 1)) {
                        msgCtx->lastOcarinaButtonIndex = sOcarinaButtonIndexBuf[msgCtx->ocarinaStaff->pos - 1] =
                            msgCtx->ocarinaStaff->buttonIndex;
                        sOcarinaButtonIndexBuf[msgCtx->ocarinaStaff->pos] = OCARINA_BTN_INVALID;
                        sOcarinaButtonIndexBufPos++;
                    }
                }
                FALLTHROUGH;
            case MSGMODE_SONG_DEMONSTRATION_DONE:
                DRAW_TEXT(play, &gfx, false);
                break;
            case MSGMODE_SONG_PLAYBACK:
                msgCtx->ocarinaStaff = AudioOcarina_GetPlayingStaff();
                if (((u32)msgCtx->ocarinaStaff->pos != 0) &&
                    (sOcarinaButtonIndexBufPos == msgCtx->ocarinaStaff->pos - 1)) {
                    sOcarinaButtonIndexBuf[msgCtx->ocarinaStaff->pos - 1] = msgCtx->ocarinaStaff->buttonIndex;
                    sOcarinaButtonIndexBuf[msgCtx->ocarinaStaff->pos] = OCARINA_BTN_INVALID;
                    sOcarinaButtonIndexBufPos++;
                }
                if (msgCtx->ocarinaStaff->state < OCARINA_SONG_MEMORY_GAME) {
                    PRINTF("M_OCARINA20 : ocarina_no=%x    status=%x\n", msgCtx->ocarinaAction,
                           msgCtx->ocarinaStaff->state);
                    msgCtx->lastPlayedSong = msgCtx->ocarinaStaff->state;
                    msgCtx->msgMode = MSGMODE_SONG_PLAYBACK_SUCCESS;
                    Item_Give(play, ITEM_SONG_MINUET + gOcarinaSongItemMap[msgCtx->ocarinaStaff->state]);
                    PRINTF_COLOR_YELLOW();
                    PRINTF(T("z_message.c 取得メロディ＝%d\n", "z_message.c Song Acquired = %d\n"),
                           ITEM_SONG_MINUET + msgCtx->ocarinaStaff->state);
                    PRINTF_RST();
                    msgCtx->stateTimer = 20;
                    Audio_PlaySfxGeneral(NA_SE_SY_TRE_BOX_APPEAR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                } else if (msgCtx->ocarinaStaff->state == 0xFF) {
                    Audio_PlaySfxGeneral(NA_SE_SY_OCARINA_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    msgCtx->stateTimer = 10;
                    msgCtx->msgMode = MSGMODE_SONG_PLAYBACK_FAIL;
                }
                DRAW_TEXT(play, &gfx, false);
                break;
            case MSGMODE_OCARINA_AWAIT_INPUT:
                DRAW_TEXT(play, &gfx, false);
                if (Message_ShouldAdvance(play)) {
                    Message_StartOcarina(play, msgCtx->ocarinaAction);
                }
                break;
            case MSGMODE_SCARECROW_LONG_RECORDING_START:
                PRINTF(T("案山子録音 初期化\n", "Scarecrow Recording Initialization\n"));
                AudioOcarina_SetRecordingState(OCARINA_RECORD_SCARECROW_LONG);
                AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
                msgCtx->ocarinaStaff = AudioOcarina_GetRecordingStaff();
                msgCtx->ocarinaStaff->pos = sOcarinaButtonIndexBufPos = 0;
                sOcarinaButtonIndexBufLen = 0;
                Message_ResetOcarinaNoteState();
                msgCtx->msgMode = MSGMODE_SCARECROW_LONG_RECORDING_ONGOING;
                DRAW_TEXT(play, &gfx, false);
                break;
            case MSGMODE_SCARECROW_LONG_RECORDING_ONGOING:
                msgCtx->ocarinaStaff = AudioOcarina_GetRecordingStaff();
                PRINTF("\nonpu_pt=%d, locate=%d", sOcarinaButtonIndexBufPos, msgCtx->ocarinaStaff->pos);
                if (((u32)msgCtx->ocarinaStaff->pos != 0) &&
                    (sOcarinaButtonIndexBufPos == msgCtx->ocarinaStaff->pos - 1)) {
                    if (sOcarinaButtonIndexBufLen >= 8) {
                        for (buttonIndexPos = sOcarinaButtonIndexBufLen - 8, i = 0; i < 8; i++, buttonIndexPos++) {
                            sOcarinaButtonIndexBuf[buttonIndexPos] = sOcarinaButtonIndexBuf[buttonIndexPos + 1];
                        }
                        sOcarinaButtonIndexBufLen--;
                    }
                    PRINTF(T("    入力ボタン【%d】=%d", "    Button Entered[%d]=%d"), sOcarinaButtonIndexBufLen,
                           msgCtx->ocarinaStaff->buttonIndex);
                    msgCtx->lastOcarinaButtonIndex = sOcarinaButtonIndexBuf[sOcarinaButtonIndexBufLen] =
                        msgCtx->ocarinaStaff->buttonIndex;
                    sOcarinaButtonIndexBufLen++;
                    sOcarinaButtonIndexBuf[sOcarinaButtonIndexBufLen] = OCARINA_BTN_INVALID;
                    sOcarinaButtonIndexBufPos++;
                    if (msgCtx->ocarinaStaff->pos == 8) {
                        sOcarinaButtonIndexBufPos = 0;
                    }
                }
                if (msgCtx->ocarinaStaff->state == OCARINA_RECORD_OFF ||
                    CHECK_BTN_ALL(play->state.input[0].press.button, BTN_B)) {
                    if (sOcarinaButtonIndexBufLen != 0) {
                        PRINTF(T("録音終了！！！！！！！！！  message->info->status=%d \n",
                                 "Recording complete!!!!!!!!!  message->info->status=%d \n"),
                               msgCtx->ocarinaStaff->state);
                        gSaveContext.save.info.scarecrowLongSongSet = true;
                    }
                    Audio_PlaySfxGeneral(NA_SE_SY_OCARINA_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    PRINTF("aaaaaaaaaaaaaa\n");
                    AudioOcarina_SetRecordingState(OCARINA_RECORD_OFF);
                    msgCtx->stateTimer = 10;
                    play->msgCtx.ocarinaMode = OCARINA_MODE_04;
                    Message_CloseTextbox(play);
                    PRINTF(
                        T("録音終了！！！！！！！！！録音終了\n", "Recording complete!!!!!!!!! Recording Complete\n"));
                    PRINTF_COLOR_YELLOW();
                    PRINTF("\n====================================================================\n");
                    MemCpy(gSaveContext.save.info.scarecrowLongSong, gScarecrowLongSongPtr,
                           sizeof(gSaveContext.save.info.scarecrowLongSong));
                    for (i = 0; i < ARRAY_COUNT(gSaveContext.save.info.scarecrowLongSong); i++) {
                        PRINTF("%d, ", gSaveContext.save.info.scarecrowLongSong[i]);
                    }
                    PRINTF_RST();
                    PRINTF("\n====================================================================\n");
                }
                DRAW_TEXT(play, &gfx, false);
                break;
            case MSGMODE_SCARECROW_LONG_PLAYBACK:
            case MSGMODE_SCARECROW_SPAWN_PLAYBACK:
                msgCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
                if (((u32)msgCtx->ocarinaStaff->pos != 0) &&
                    (sOcarinaButtonIndexBufPos == msgCtx->ocarinaStaff->pos - 1)) {
                    if (sOcarinaButtonIndexBufLen >= 8) {
                        for (buttonIndexPos = sOcarinaButtonIndexBufLen - 8, i = 0; i < 8; i++, buttonIndexPos++) {
                            sOcarinaButtonIndexBuf[buttonIndexPos] = sOcarinaButtonIndexBuf[buttonIndexPos + 1];
                        }
                        sOcarinaButtonIndexBufLen--;
                    }
                    sOcarinaButtonIndexBuf[sOcarinaButtonIndexBufLen] = msgCtx->ocarinaStaff->buttonIndex;
                    sOcarinaButtonIndexBufLen++;
                    sOcarinaButtonIndexBuf[sOcarinaButtonIndexBufLen] = OCARINA_BTN_INVALID;
                    sOcarinaButtonIndexBufPos++;
                    if (msgCtx->ocarinaStaff->pos == 8) {
                        sOcarinaButtonIndexBufLen = sOcarinaButtonIndexBufPos = 0;
                    }
                }
                PRINTF("status=%d (%d)\n", msgCtx->ocarinaStaff->state, 0);
                if (msgCtx->stateTimer == 0) {
                    if (msgCtx->ocarinaStaff->state == 0) {
                        PRINTF("bbbbbbbbbbb\n");
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                        play->msgCtx.ocarinaMode = OCARINA_MODE_0F;
                        Message_CloseTextbox(play);
                    }
                } else {
                    msgCtx->stateTimer--;
                }
                break;
            case MSGMODE_SCARECROW_SPAWN_RECORDING_START:
                AudioOcarina_SetRecordingState(OCARINA_RECORD_SCARECROW_SPAWN);
                AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
                msgCtx->msgMode = MSGMODE_SCARECROW_SPAWN_RECORDING_ONGOING;
                DRAW_TEXT(play, &gfx, false);
                break;
            case MSGMODE_SCARECROW_SPAWN_RECORDING_ONGOING:
                msgCtx->ocarinaStaff = AudioOcarina_GetRecordingStaff();
                if (((u32)msgCtx->ocarinaStaff->pos != 0) &&
                    (sOcarinaButtonIndexBufPos == msgCtx->ocarinaStaff->pos - 1)) {
                    msgCtx->lastOcarinaButtonIndex = sOcarinaButtonIndexBuf[sOcarinaButtonIndexBufPos] =
                        msgCtx->ocarinaStaff->buttonIndex;
                    sOcarinaButtonIndexBufPos++;
                    sOcarinaButtonIndexBuf[sOcarinaButtonIndexBufPos] = OCARINA_BTN_INVALID;
                }
                if (msgCtx->ocarinaStaff->state == OCARINA_RECORD_OFF) {
                    PRINTF(T("８音録音ＯＫ！\n", "8 Note Recording OK!\n"));
                    msgCtx->stateTimer = 20;
                    gSaveContext.save.info.scarecrowSpawnSongSet = true;
                    msgCtx->msgMode = MSGMODE_SCARECROW_SPAWN_RECORDING_DONE;
                    Audio_PlaySfxGeneral(NA_SE_SY_TRE_BOX_APPEAR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    PRINTF_COLOR_YELLOW();
                    PRINTF("\n====================================================================\n");
                    MemCpy(gSaveContext.save.info.scarecrowSpawnSong, gScarecrowSpawnSongPtr,
                           sizeof(gSaveContext.save.info.scarecrowSpawnSong));
                    for (i = 0; i < ARRAY_COUNT(gSaveContext.save.info.scarecrowSpawnSong); i++) {
                        PRINTF("%d, ", gSaveContext.save.info.scarecrowSpawnSong[i]);
                    }
                    PRINTF_RST();
                    PRINTF("\n====================================================================\n");
                } else if (msgCtx->ocarinaStaff->state == OCARINA_RECORD_REJECTED ||
                           CHECK_BTN_ALL(play->state.input[0].press.button, BTN_B)) {
                    PRINTF(T("すでに存在する曲吹いた！！！ \n", "Played an existing song!!! \n"));
                    AudioOcarina_SetRecordingState(OCARINA_RECORD_OFF);
                    Audio_PlaySfxGeneral(NA_SE_SY_OCARINA_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    Message_CloseTextbox(play);
                    msgCtx->msgMode = MSGMODE_SCARECROW_SPAWN_RECORDING_FAILED;
                }
                DRAW_TEXT(play, &gfx, false);
                break;
            case MSGMODE_SCARECROW_SPAWN_RECORDING_FAILED:
                PRINTF("cccccccccccc\n");
                AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                Message_StartTextbox(play, 0x40AD, NULL); // Bonooru doesn't remember your song
                play->msgCtx.ocarinaMode = OCARINA_MODE_04;
                break;
            case MSGMODE_MEMORY_GAME_START:
                AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
                AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_FLUTE);
                AudioOcarina_MemoryGameInit(gSaveContext.save.info.playerData.ocarinaGameRoundNum);
                msgCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
                msgCtx->ocarinaStaff->pos = sOcarinaButtonIndexBufPos = 0;
                Message_ResetOcarinaNoteState();
                AudioOcarina_SetPlaybackSong(OCARINA_SONG_MEMORY_GAME + 1, 1);
                msgCtx->msgMode = MSGMODE_MEMORY_GAME_LEFT_SKULLKID_PLAYING;
                msgCtx->stateTimer = 2;
                break;
            case MSGMODE_MEMORY_GAME_LEFT_SKULLKID_PLAYING:
            case MSGMODE_MEMORY_GAME_RIGHT_SKULLKID_PLAYING:
                Audio_PlaySfxGeneral(NA_SE_SY_METRONOME_LV - SFX_FLAG, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                msgCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
                if (((u32)msgCtx->ocarinaStaff->pos != 0) &&
                    (sOcarinaButtonIndexBufPos == msgCtx->ocarinaStaff->pos - 1)) {
                    sOcarinaButtonIndexBuf[msgCtx->ocarinaStaff->pos - 1] = msgCtx->ocarinaStaff->buttonIndex;
                    sOcarinaButtonIndexBuf[msgCtx->ocarinaStaff->pos] = OCARINA_BTN_INVALID;
                    sOcarinaButtonIndexBufPos++;
                }
                if (msgCtx->stateTimer == 0) {
                    if (msgCtx->ocarinaStaff->state == 0) {
                        if (msgCtx->msgMode == MSGMODE_MEMORY_GAME_LEFT_SKULLKID_PLAYING) {
                            Audio_PlaySfxGeneral(NA_SE_SY_METRONOME, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        } else {
                            Audio_PlaySfxGeneral(NA_SE_SY_METRONOME_2, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        }
                        msgCtx->msgMode++;
                    }
                } else {
                    msgCtx->stateTimer--;
                }
                break;
            case MSGMODE_MEMORY_GAME_LEFT_SKULLKID_WAIT:
            case MSGMODE_MEMORY_GAME_RIGHT_SKULLKID_WAIT:
                msgCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
                if (((u32)msgCtx->ocarinaStaff->pos != 0) &&
                    (sOcarinaButtonIndexBufPos == msgCtx->ocarinaStaff->pos - 1)) {
                    sOcarinaButtonIndexBuf[msgCtx->ocarinaStaff->pos - 1] = msgCtx->ocarinaStaff->buttonIndex;
                    sOcarinaButtonIndexBuf[msgCtx->ocarinaStaff->pos] = OCARINA_BTN_INVALID;
                    sOcarinaButtonIndexBufPos++;
                }
                break;
            case MSGMODE_MEMORY_GAME_PLAYER_PLAYING:
                Audio_PlaySfxGeneral(NA_SE_SY_METRONOME_LV - SFX_FLAG, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                msgCtx->ocarinaStaff = AudioOcarina_GetPlayingStaff();
                if (((u32)msgCtx->ocarinaStaff->pos != 0) &&
                    (sOcarinaButtonIndexBufPos == msgCtx->ocarinaStaff->pos - 1)) {
                    sOcarinaButtonIndexBuf[msgCtx->ocarinaStaff->pos - 1] = msgCtx->ocarinaStaff->buttonIndex;
                    sOcarinaButtonIndexBuf[msgCtx->ocarinaStaff->pos] = OCARINA_BTN_INVALID;
                    sOcarinaButtonIndexBufPos++;
                }
                if (msgCtx->ocarinaStaff->state == 0xFF) {
                    PRINTF(T("輪唱失敗！！！！！！！！！\n", "Musical round failed!!!!!!!!!\n"));
                    AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                    Audio_PlaySfxGeneral(NA_SE_SY_OCARINA_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    msgCtx->stateTimer = 10;
                    play->msgCtx.ocarinaMode = OCARINA_MODE_03;
                } else if (msgCtx->ocarinaStaff->state == OCARINA_SONG_MEMORY_GAME) {
                    PRINTF(T("輪唱成功！！！！！！！！！\n", "Musical round succeeded!!!!!!!!!\n"));
                    Audio_PlaySfxGeneral(NA_SE_SY_GET_ITEM, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    msgCtx->msgMode = MSGMODE_MEMORY_GAME_ROUND_SUCCESS;
                    msgCtx->stateTimer = 30;
                }
                DRAW_TEXT(play, &gfx, false);
                break;
            case MSGMODE_MEMORY_GAME_ROUND_SUCCESS:
                msgCtx->ocarinaStaff = AudioOcarina_GetPlayingStaff();
                if (((u32)msgCtx->ocarinaStaff->pos != 0) &&
                    (sOcarinaButtonIndexBufPos == msgCtx->ocarinaStaff->pos - 1)) {
                    sOcarinaButtonIndexBuf[msgCtx->ocarinaStaff->pos - 1] = msgCtx->ocarinaStaff->buttonIndex;
                    sOcarinaButtonIndexBuf[msgCtx->ocarinaStaff->pos] = OCARINA_BTN_INVALID;
                    sOcarinaButtonIndexBufPos++;
                }
                msgCtx->stateTimer--;
                if (msgCtx->stateTimer == 0) {
                    if (AudioOcarina_MemoryGameNextNote() != 1) {
                        Audio_PlaySfxGeneral(NA_SE_SY_METRONOME, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        msgCtx->ocarinaStaff = AudioOcarina_GetPlayingStaff();
                        msgCtx->ocarinaStaff->pos = sOcarinaButtonIndexBufPos = 0;
                        Message_ResetOcarinaNoteState();
                        msgCtx->msgMode = MSGMODE_MEMORY_GAME_START_NEXT_ROUND;
                    } else {
                        play->msgCtx.ocarinaMode = OCARINA_MODE_0F;
                    }
                }
                DRAW_TEXT(play, &gfx, false);
                break;
            case MSGMODE_MEMORY_GAME_START_NEXT_ROUND:
                if (!Audio_IsSfxPlaying(NA_SE_SY_METRONOME)) {
                    msgCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
                    msgCtx->ocarinaStaff->pos = sOcarinaButtonIndexBufPos = 0;
                    Message_ResetOcarinaNoteState();
                    AudioOcarina_SetPlaybackSong(OCARINA_SONG_MEMORY_GAME + 1, 1);
                }
                break;
            case MSGMODE_FROGS_START:
                AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
                msgCtx->ocarinaStaff = AudioOcarina_GetPlayingStaff();
                msgCtx->ocarinaStaff->pos = sOcarinaButtonIndexBufPos = 0;
                play->msgCtx.ocarinaMode = OCARINA_MODE_01;
                Message_ResetOcarinaNoteState();
                AudioOcarina_Start(sOcarinaSongBitFlags + 0xC000);
                msgCtx->msgMode = MSGMODE_FROGS_PLAYING;
                break;
            case MSGMODE_FROGS_PLAYING:
                msgCtx->ocarinaStaff = AudioOcarina_GetPlayingStaff();
                if (((u32)msgCtx->ocarinaStaff->pos != 0) &&
                    (sOcarinaButtonIndexBufPos == msgCtx->ocarinaStaff->pos - 1)) {
                    msgCtx->lastOcarinaButtonIndex = msgCtx->ocarinaStaff->buttonIndex;
                    msgCtx->ocarinaStaff->pos = sOcarinaButtonIndexBufPos = 0;
                    Message_ResetOcarinaNoteState();
                    msgCtx->msgMode = MSGMODE_FROGS_WAITING;
                }
                FALLTHROUGH;
            case MSGMODE_FROGS_WAITING:
                break;
            case MSGMODE_TEXT_DONE:
                DRAW_TEXT(play, &gfx, sTextIsCredits);

                switch (msgCtx->textboxEndType) {
                    case TEXTBOX_ENDTYPE_2_CHOICE:
                        Message_HandleChoiceSelection(play, 1);
                        Message_DrawTextboxIcon(play, &gfx, msgCtx->textPosX, msgCtx->textPosY);
                        break;
                    case TEXTBOX_ENDTYPE_3_CHOICE:
                        Message_HandleChoiceSelection(play, 2);
                        Message_DrawTextboxIcon(play, &gfx, msgCtx->textPosX, msgCtx->textPosY);
                        break;
                    case TEXTBOX_ENDTYPE_PERSISTENT:
                        if (msgCtx->textId >= 0x6D && msgCtx->textId < 0x73) {
                            msgCtx->stateTimer++;
                            if (msgCtx->stateTimer >= 31) {
                                msgCtx->stateTimer = 2;
                                msgCtx->msgMode = MSGMODE_TEXT_CLOSING;
                            }
                        }
                        break;
                    case TEXTBOX_ENDTYPE_EVENT:
                    default:
                        Message_DrawTextboxIcon(play, &gfx, R_TEXTBOX_END_XPOS, R_TEXTBOX_END_YPOS);
                    case TEXTBOX_ENDTYPE_FADING:
                        break;
                }
                break;
            case MSGMODE_TEXT_CLOSING:
            case MSGMODE_PAUSED:
                break;
            case MSGMODE_UNK_20:
            default:
                msgCtx->msgMode = MSGMODE_TEXT_DISPLAYING;
                break;
        }

        if (msgCtx->msgMode >= MSGMODE_OCARINA_PLAYING && msgCtx->msgMode < MSGMODE_TEXT_AWAIT_NEXT &&
            msgCtx->ocarinaAction != OCARINA_ACTION_FREE_PLAY && msgCtx->ocarinaAction != OCARINA_ACTION_CHECK_NOWARP) {
            Gfx_SetupDL_39Ptr(&gfx);

            gDPSetCombineLERP(gfx++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                              ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

            if (msgCtx->msgMode == MSGMODE_SONG_PLAYBACK) {
                g = msgCtx->ocarinaAction - OCARINA_ACTION_PLAYBACK_MINUET;
                r = gOcarinaSongButtons[g].numButtons;
                for (notePosX = R_OCARINA_BUTTONS_XPOS, i = 0; i < r; i++, notePosX += R_OCARINA_BUTTONS_XPOS_OFFSET) {
                    gDPPipeSync(gfx++);
                    gDPSetPrimColor(gfx++, 0, 0, 150, 150, 150, 150);
                    gDPSetEnvColor(gfx++, 10, 10, 10, 0);

                    gDPLoadTextureBlock(gfx++, sOcarinaNoteTextures[gOcarinaSongButtons[g].buttonsIndex[i]],
                                        G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                    gSPTextureRectangle(gfx++, notePosX << 2,
                                        R_OCARINA_BUTTONS_YPOS(gOcarinaSongButtons[g].buttonsIndex[i]) << 2,
                                        (notePosX + 16) << 2,
                                        (R_OCARINA_BUTTONS_YPOS(gOcarinaSongButtons[g].buttonsIndex[i]) + 16) << 2,
                                        G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);
                }
            }

            if (msgCtx->msgMode != MSGMODE_SCARECROW_LONG_RECORDING_START &&
                msgCtx->msgMode != MSGMODE_MEMORY_GAME_START) {
                for (notePosX = R_OCARINA_BUTTONS_XPOS, i = 0; i < 8; i++, notePosX += R_OCARINA_BUTTONS_XPOS_OFFSET) {
                    if (sOcarinaButtonIndexBuf[i] == OCARINA_BTN_INVALID) {
                        break;
                    }

                    if (1) {}
                    if (sOcarinaButtonAlphaValues[i] != 255) {
                        sOcarinaButtonAlphaValues[i] += R_OCARINA_BUTTONS_APPEAR_ALPHA_STEP;
                        if (sOcarinaButtonAlphaValues[i] >= 255) {
                            sOcarinaButtonAlphaValues[i] = 255;
                        }
                    }

                    gDPPipeSync(gfx++);
                    if (sOcarinaButtonIndexBuf[i] == OCARINA_BTN_A) {
                        gDPSetPrimColor(gfx++, 0, 0, sOcarinaButtonAPrimR, sOcarinaButtonAPrimG, sOcarinaButtonAPrimB,
                                        sOcarinaButtonAlphaValues[i]);
                        gDPSetEnvColor(gfx++, sOcarinaButtonAEnvR, sOcarinaButtonAEnvG, sOcarinaButtonAEnvB, 0);
                    } else {
                        gDPSetPrimColor(gfx++, 0, 0, sOcarinaButtonCPrimR, sOcarinaButtonCPrimG, sOcarinaButtonCPrimB,
                                        sOcarinaButtonAlphaValues[i]);
                        gDPSetEnvColor(gfx++, sOcarinaButtonCEnvR, sOcarinaButtonCEnvG, sOcarinaButtonCEnvB, 0);
                    }

                    gDPLoadTextureBlock(gfx++, sOcarinaNoteTextures[sOcarinaButtonIndexBuf[i]], G_IM_FMT_IA,
                                        G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                                        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                    gSPTextureRectangle(gfx++, notePosX << 2, R_OCARINA_BUTTONS_YPOS(sOcarinaButtonIndexBuf[i]) << 2,
                                        (notePosX + 16) << 2,
                                        (R_OCARINA_BUTTONS_YPOS(sOcarinaButtonIndexBuf[i]) + 16) << 2, G_TX_RENDERTILE,
                                        0, 0, 1 << 10, 1 << 10);
                }
            }
        }
    }
    *p = gfx;
}

#if DEBUG_FEATURES
/**
 * If the s16 variable pointed to by `var` changes in value, a black bar and white box
 * are briefly drawn onto the screen. It can only watch one variable per build due to
 * the last value being saved in a static variable.
 */
void Message_DrawDebugVariableChanged(s16* var, GraphicsContext* gfxCtx) {
    static s16 sVarLastValue = 0;
    static s16 sFillTimer = 0;
    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_message_PAL.c", 3485);

    if (sVarLastValue != *var) {
        sVarLastValue = *var;
        sFillTimer = 30;
    }
    if (sFillTimer != 0) {
        sFillTimer--;
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCycleType(POLY_OPA_DISP++, G_CYC_FILL);
        gDPSetRenderMode(POLY_OPA_DISP++, G_RM_NOOP, G_RM_NOOP2);
        gDPSetFillColor(POLY_OPA_DISP++, GPACK_RGBA5551(0, 0, 0, 1) << 0x10 | GPACK_RGBA5551(0, 0, 0, 1));
        gDPFillRectangle(POLY_OPA_DISP++, 0, 110, SCREEN_WIDTH - 1, 150); // 40x319 black bar
        gDPPipeSync(POLY_OPA_DISP++);
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCycleType(POLY_OPA_DISP++, G_CYC_FILL);
        gDPSetRenderMode(POLY_OPA_DISP++, G_RM_NOOP, G_RM_NOOP2);
        gDPSetFillColor(POLY_OPA_DISP++, GPACK_RGBA5551(255, 255, 255, 1) << 0x10 | GPACK_RGBA5551(255, 255, 255, 1));
        gDPFillRectangle(POLY_OPA_DISP++, 40, 120, 60, 140); // 20x20 white box
        gDPPipeSync(POLY_OPA_DISP++);
    }
    CLOSE_DISPS(gfxCtx, "../z_message_PAL.c", 3513);
}

void Message_DrawDebugText(PlayState* play, Gfx** p) {
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
    GfxPrint_Printf(&printer, "%x", play->msgCtx.textId);
    *p = GfxPrint_Close(&printer);
    GfxPrint_Destroy(&printer);
}
#endif

void Message_Draw(PlayState* play) {
    Gfx* plusOne;
    Gfx* polyOpaP;
#if OOT_VERSION < GC_US
    s32 pad;
#endif
#if DEBUG_FEATURES
    s16 watchVar;
#endif

    OPEN_DISPS(play->state.gfxCtx, "../z_message_PAL.c", 3554);

#if DEBUG_FEATURES
    watchVar = gSaveContext.save.info.scarecrowLongSongSet;
    Message_DrawDebugVariableChanged(&watchVar, play->state.gfxCtx);
    if (BREG(0) != 0 && play->msgCtx.textId != 0) {
        plusOne = Gfx_Open(polyOpaP = POLY_OPA_DISP);
        gSPDisplayList(OVERLAY_DISP++, plusOne);
        Message_DrawDebugText(play, &plusOne);
        gSPEndDisplayList(plusOne++);
        Gfx_Close(polyOpaP, plusOne);
        POLY_OPA_DISP = plusOne;
    }
#endif

    plusOne = Gfx_Open(polyOpaP = POLY_OPA_DISP);
    gSPDisplayList(OVERLAY_DISP++, plusOne);
    Message_DrawMain(play, &plusOne);
    gSPEndDisplayList(plusOne++);
    Gfx_Close(polyOpaP, plusOne);
    POLY_OPA_DISP = plusOne;
    CLOSE_DISPS(play->state.gfxCtx, "../z_message_PAL.c", 3582);
}

void Message_Update(PlayState* play) {
    static s16 sTextboxXPositions[] = {
        34, 34, 34, 34, 34, 34,
    };
    static s16 sTextboxLowerYPositions[] = {
        142, 142, 142, 142, 174, 142,
    };
    static s16 sTextboxUpperYPositions[] = {
        38, 38, 38, 38, 174, 38,
    };
    static s16 sTextboxMidYPositions[] = {
        90, 90, 90, 90, 174, 90,
    };
    static s16 sTextboxEndIconYOffset[] = {
        59, 59, 59, 59, 34, 59,
    };
    static s16 D_80153D3C[] = {
        // additional unreferenced data
        0x0400, 0x0400, 0x0200, 0x0000, 0x1038, 0x0008, 0x200A, 0x088B, 0x0007, 0x0009, 0x000A, 0x107E, 0x2008, 0x2007,
        0x0015, 0x0016, 0x0017, 0x0003, 0x0000, 0x270B, 0x00C8, 0x012C, 0x012D, 0xFFDA, 0x0014, 0x0016, 0x0014, 0x0016,
    };
#if OOT_VERSION < GC_US
    static s32 sUnknown = 0;
#endif
    static u8 D_80153D74 = 0;
    MessageContext* msgCtx = &play->msgCtx;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    Player* player = GET_PLAYER(play);
    Input* input = &play->state.input[0];
    s16 var;
    s16 focusScreenPosX;
    s16 averageY;
    s16 playerFocusScreenPosY;
    s16 actorFocusScreenPosY;
#if OOT_VERSION < GC_US
    s32 pad1;
#endif
#if OOT_NTSC && OOT_VERSION < GC_US
    s32 pad2;
#endif

#if DEBUG_FEATURES
    if (BREG(0) != 0) {
        static u16 sMessageDebuggerTextboxCount = 0;

        if (CHECK_BTN_ALL(input->press.button, BTN_DDOWN) && CHECK_BTN_ALL(input->cur.button, BTN_L)) {
            PRINTF("msgno=%d\n", sMessageDebuggerTextboxCount);
            Message_StartTextbox(play, R_MESSAGE_DEBUGGER_TEXTID, NULL);
            sMessageDebuggerTextboxCount = (sMessageDebuggerTextboxCount + 1) % 10;
        }
        if (R_MESSAGE_DEBUGGER_SELECT != 0) {
            while (R_MESSAGE_DEBUGGER_TEXTID != 0x8000) {
                MessageTableEntry* entry = &sNesMessageEntryTablePtr[0];

                while (entry->textId != 0xFFFD) {
                    if (entry->textId == R_MESSAGE_DEBUGGER_TEXTID) {
                        PRINTF(T(" メッセージが,見つかった！！！ = %x\n", "The message was found!!! = %x\n"),
                               R_MESSAGE_DEBUGGER_TEXTID);
                        Message_StartTextbox(play, R_MESSAGE_DEBUGGER_TEXTID, NULL);
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
#endif

    if (msgCtx->msgLength != 0) {

        switch (msgCtx->msgMode) {
            case MSGMODE_TEXT_START:
                D_8014B2F4++;

                var = false;
                if (R_SCENE_CAM_TYPE == SCENE_CAM_TYPE_FIXED_MARKET) {
                    if (D_8014B2F4 >= 4) {
                        var = true;
                    }
                } else if (R_SCENE_CAM_TYPE != SCENE_CAM_TYPE_DEFAULT ||
                           play->sceneId == SCENE_CASTLE_COURTYARD_GUARDS_DAY) {
                    var = true;
                } else if (D_8014B2F4 >= 4 || msgCtx->talkActor == NULL) {
                    var = true;
                }

                if (var) {
                    if (msgCtx->talkActor != NULL) {
                        Actor_GetScreenPos(play, &GET_PLAYER(play)->actor, &focusScreenPosX, &playerFocusScreenPosY);
                        Actor_GetScreenPos(play, msgCtx->talkActor, &focusScreenPosX, &actorFocusScreenPosY);

                        if (playerFocusScreenPosY >= actorFocusScreenPosY) {
                            averageY = ((playerFocusScreenPosY - actorFocusScreenPosY) / 2) + actorFocusScreenPosY;
                        } else {
                            averageY = ((actorFocusScreenPosY - playerFocusScreenPosY) / 2) + playerFocusScreenPosY;
                        }
                        PRINTF("dxpos=%d   dypos=%d  dypos1  dypos2=%d\n", focusScreenPosX, averageY,
                               playerFocusScreenPosY, actorFocusScreenPosY);
                    } else {
                        R_TEXTBOX_X = R_TEXTBOX_X_TARGET;
                        R_TEXTBOX_Y = R_TEXTBOX_Y_TARGET;
                    }

                    var = msgCtx->textBoxType;

                    if (!msgCtx->textBoxPos) { // variable position
                        if (R_SCENE_CAM_TYPE != SCENE_CAM_TYPE_DEFAULT ||
                            play->sceneId == SCENE_CASTLE_COURTYARD_GUARDS_DAY) {
                            if (averageY < XREG(92)) {
                                R_TEXTBOX_Y_TARGET = sTextboxLowerYPositions[var];
                            } else {
                                R_TEXTBOX_Y_TARGET = sTextboxUpperYPositions[var];
                            }
                        } else if (play->sceneId == SCENE_MARKET_DAY || play->sceneId == SCENE_MARKET_NIGHT ||
                                   play->sceneId == SCENE_MARKET_RUINS) {
                            if (averageY < XREG(93)) {
                                R_TEXTBOX_Y_TARGET = sTextboxLowerYPositions[var];
                            } else {
                                R_TEXTBOX_Y_TARGET = sTextboxUpperYPositions[var];
                            }
                        } else {
                            if (averageY < XREG(94)) {
                                R_TEXTBOX_Y_TARGET = sTextboxLowerYPositions[var];
                            } else {
                                R_TEXTBOX_Y_TARGET = sTextboxUpperYPositions[var];
                            }
                        }
                    } else if (msgCtx->textBoxPos == TEXTBOX_POS_TOP) {
                        R_TEXTBOX_Y_TARGET = sTextboxUpperYPositions[var];
                    } else if (msgCtx->textBoxPos == TEXTBOX_POS_MIDDLE) {
                        R_TEXTBOX_Y_TARGET = sTextboxMidYPositions[var];
                    } else {
                        R_TEXTBOX_Y_TARGET = sTextboxLowerYPositions[var];
                    }

                    R_TEXTBOX_X_TARGET = sTextboxXPositions[var];
                    R_TEXTBOX_END_YPOS = sTextboxEndIconYOffset[var] + R_TEXTBOX_Y_TARGET;
#if OOT_NTSC
                    if (gSaveContext.language == LANGUAGE_JPN && !sTextIsCredits) {
                        R_TEXT_CHOICE_YPOS(0) = R_TEXTBOX_Y_TARGET + 7;
                        R_TEXT_CHOICE_YPOS(1) = R_TEXTBOX_Y_TARGET + 25;
                        R_TEXT_CHOICE_YPOS(2) = R_TEXTBOX_Y_TARGET + 43;

                    } else {
                        R_TEXT_CHOICE_YPOS(0) = R_TEXTBOX_Y_TARGET + 20;
                        R_TEXT_CHOICE_YPOS(1) = R_TEXTBOX_Y_TARGET + 32;
                        R_TEXT_CHOICE_YPOS(2) = R_TEXTBOX_Y_TARGET + 44;
                    }
#else
                    R_TEXT_CHOICE_YPOS(0) = R_TEXTBOX_Y_TARGET + 20;
                    R_TEXT_CHOICE_YPOS(1) = R_TEXTBOX_Y_TARGET + 32;
                    R_TEXT_CHOICE_YPOS(2) = R_TEXTBOX_Y_TARGET + 44;
#endif
                    PRINTF("message->msg_disp_type=%x\n", msgCtx->textBoxProperties & 0xF0);
                    if (msgCtx->textBoxType == TEXTBOX_TYPE_NONE_BOTTOM ||
                        msgCtx->textBoxType == TEXTBOX_TYPE_NONE_NO_SHADOW) {
                        msgCtx->msgMode = MSGMODE_TEXT_STARTING;
                        R_TEXTBOX_X = R_TEXTBOX_X_TARGET;
                        R_TEXTBOX_Y = R_TEXTBOX_Y_TARGET;
                        R_TEXTBOX_WIDTH = 256;
                        R_TEXTBOX_HEIGHT = 64;
                        R_TEXTBOX_TEXWIDTH = 512;
                        R_TEXTBOX_TEXHEIGHT = 512;
                    } else {
                        Message_GrowTextbox(msgCtx);
                        Audio_PlaySfxIfNotInCutscene(NA_SE_NONE);
                        msgCtx->stateTimer = 0;
                        msgCtx->msgMode = MSGMODE_TEXT_BOX_GROWING;
                    }
                }
                break;
            case MSGMODE_TEXT_BOX_GROWING:
                Message_GrowTextbox(msgCtx);
                break;
            case MSGMODE_TEXT_STARTING:
                msgCtx->msgMode = MSGMODE_TEXT_NEXT_MSG;
                if (YREG(31) == 0) {
                    Interface_SetDoAction(play, DO_ACTION_NEXT);
                }
                break;
            case MSGMODE_TEXT_NEXT_MSG:
                Message_Decode(play);
                if (sTextFade) {
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING);
                }
                if (D_80153D74 != 0) {
                    msgCtx->textDrawPos = msgCtx->decodedTextLen;
                    D_80153D74 = 0;
                }
                break;
            case MSGMODE_TEXT_CONTINUING:
                msgCtx->stateTimer--;
                if (msgCtx->stateTimer == 0) {
                    Message_Decode(play);
                }
                break;
            case MSGMODE_TEXT_DISPLAYING:
                if (msgCtx->textBoxType != TEXTBOX_TYPE_NONE_BOTTOM && YREG(31) == 0 &&
                    CHECK_BTN_ALL(play->state.input[0].press.button, BTN_B) && !msgCtx->textUnskippable) {
                    sTextboxSkipped = true;
                    msgCtx->textDrawPos = msgCtx->decodedTextLen;
                }
                break;
            case MSGMODE_TEXT_AWAIT_INPUT:
                if (YREG(31) == 0 && Message_ShouldAdvance(play)) {
                    msgCtx->msgMode = MSGMODE_TEXT_DISPLAYING;
                    msgCtx->textDrawPos++;
                }
                break;
            case MSGMODE_TEXT_DELAYED_BREAK:
                msgCtx->stateTimer--;
                if (msgCtx->stateTimer == 0) {
                    msgCtx->msgMode = MSGMODE_TEXT_NEXT_MSG;
                }
                break;
            case MSGMODE_TEXT_AWAIT_NEXT:
                if (Message_ShouldAdvance(play)) {
                    msgCtx->msgMode = MSGMODE_TEXT_NEXT_MSG;
                    msgCtx->textUnskippable = false;
                    msgCtx->msgBufPos++;
                }
                break;
            case MSGMODE_TEXT_DONE:
                if (msgCtx->textboxEndType == TEXTBOX_ENDTYPE_FADING) {
                    msgCtx->stateTimer--;
                    if (msgCtx->stateTimer == 0) {
                        Message_CloseTextbox(play);
                    }
                } else if (msgCtx->textboxEndType != TEXTBOX_ENDTYPE_PERSISTENT &&
                           msgCtx->textboxEndType != TEXTBOX_ENDTYPE_EVENT && YREG(31) == 0) {
                    if (msgCtx->textboxEndType == TEXTBOX_ENDTYPE_2_CHOICE &&
                        play->msgCtx.ocarinaMode == OCARINA_MODE_01) {
                        if (Message_ShouldAdvance(play)) {
                            PRINTF("OCARINA_MODE=%d -> ", play->msgCtx.ocarinaMode);
                            play->msgCtx.ocarinaMode = (msgCtx->choiceIndex == 0) ? OCARINA_MODE_02 : OCARINA_MODE_04;
                            PRINTF("InRaceSeq=%d(%d) OCARINA_MODE=%d  -->  ", GET_EVENTINF_INGO_RACE_STATE(), 1,
                                   play->msgCtx.ocarinaMode);
                            Message_CloseTextbox(play);
                            PRINTF("OCARINA_MODE=%d\n", play->msgCtx.ocarinaMode);
                        }
                    } else if (Message_ShouldAdvanceSilent(play)) {
                        PRINTF("select=%d\n", msgCtx->textboxEndType);
                        if (msgCtx->textboxEndType == TEXTBOX_ENDTYPE_HAS_NEXT) {
                            Audio_PlaySfxGeneral(NA_SE_SY_MESSAGE_PASS, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
#if OOT_NTSC
                            if (gSaveContext.language == LANGUAGE_JPN && !sTextIsCredits) {
                                Message_ContinueTextbox(play, msgCtx->msgBufDecodedWide[msgCtx->textDrawPos]);
                            } else {
                                Message_ContinueTextbox(play, sNextTextId);
                            }
#else
                            Message_ContinueTextbox(play, sNextTextId);
#endif
                        } else {
                            Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                            Message_CloseTextbox(play);
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
                    gSaveContext.healthAccumulator = 0x140; // Refill 20 hearts
                }
                if (msgCtx->textId == 0x301F || msgCtx->textId == 0xA || msgCtx->textId == 0xC ||
                    msgCtx->textId == 0xCF || msgCtx->textId == 0x21C || msgCtx->textId == 9 ||
                    msgCtx->textId == 0x4078 || msgCtx->textId == 0x2015 || msgCtx->textId == 0x3040) {
                    gSaveContext.prevHudVisibilityMode = HUD_VISIBILITY_ALL;
                }
                if (play->csCtx.state == 0) {
                    PRINTF_COLOR_GREEN();
                    PRINTF("day_time=%x  active_camera=%d  ", gSaveContext.save.cutsceneIndex, play->activeCamId);

                    if (msgCtx->textId != 0x2061 && msgCtx->textId != 0x2025 && msgCtx->textId != 0x208C &&
                        ((msgCtx->textId < 0x88D || msgCtx->textId >= 0x893) || msgCtx->choiceIndex != 0) &&
                        (msgCtx->textId != 0x3055 && gSaveContext.save.cutsceneIndex < 0xFFF0)) {
                        PRINTF("=== day_time=%x ", ((void)0, gSaveContext.save.cutsceneIndex));
                        if (play->activeCamId == CAM_ID_MAIN) {
                            if (gSaveContext.prevHudVisibilityMode == HUD_VISIBILITY_NO_CHANGE ||
                                gSaveContext.prevHudVisibilityMode == HUD_VISIBILITY_NOTHING ||
                                gSaveContext.prevHudVisibilityMode == HUD_VISIBILITY_NOTHING_ALT) {
                                gSaveContext.prevHudVisibilityMode = HUD_VISIBILITY_ALL;
                            }
                            gSaveContext.hudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;
                            Interface_ChangeHudVisibilityMode(gSaveContext.prevHudVisibilityMode);
                        }
                    }
                }
                PRINTF_RST();
                msgCtx->msgLength = 0;
                msgCtx->msgMode = MSGMODE_NONE;
                interfaceCtx->unk_1FA = interfaceCtx->unk_1FC = 0;
                msgCtx->textId = msgCtx->stateTimer = 0;

                if (msgCtx->textboxEndType == TEXTBOX_ENDTYPE_PERSISTENT) {
                    msgCtx->textboxEndType = TEXTBOX_ENDTYPE_DEFAULT;
                    play->msgCtx.ocarinaMode = OCARINA_MODE_02;
                } else {
                    msgCtx->textboxEndType = TEXTBOX_ENDTYPE_DEFAULT;
                }
                if ((s32)(gSaveContext.save.info.inventory.questItems & 0xF0000000) == (4 << QUEST_HEART_PIECE_COUNT)) {
                    gSaveContext.save.info.inventory.questItems ^= (4 << QUEST_HEART_PIECE_COUNT);
                    gSaveContext.save.info.playerData.healthCapacity += 0x10;
                    gSaveContext.save.info.playerData.health += 0x10;
                }
                if (msgCtx->ocarinaAction != OCARINA_ACTION_CHECK_NOWARP_DONE) {
                    if (sLastPlayedSong == OCARINA_SONG_SARIAS) {
                        //! @bug The last played song is not unset often, and if something interrupts the message system
                        //       before it reaches this point after playing Saria's song, the song will be "stored".
                        //       Later, if the ocarina has not been played and another textbox is closed, this handling
                        //       for Saria's song will be carried out.
                        player->naviTextId = -0xE0;
                        player->naviActor->flags |= ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
                    }
                    if (msgCtx->ocarinaAction == OCARINA_ACTION_FREE_PLAY_DONE &&
                        (play->msgCtx.ocarinaMode == OCARINA_MODE_01 || play->msgCtx.ocarinaMode == OCARINA_MODE_0B)) {
                        play->msgCtx.ocarinaMode = OCARINA_MODE_04;
                        if (msgCtx->unk_E3F2 == OCARINA_SONG_SUNS) {
                            play->msgCtx.ocarinaMode = OCARINA_MODE_01;
                        }
                    }
                }
                sLastPlayedSong = 0xFF;
                PRINTF("OCARINA_MODE=%d   chk_ocarina_no=%d\n", play->msgCtx.ocarinaMode, msgCtx->unk_E3F2);
                break;
            case MSGMODE_PAUSED:
                break;
            default:
                msgCtx->lastOcarinaButtonIndex = OCARINA_BTN_INVALID;
                break;
        }
    }
}

void Message_SetTables(void) {
#if OOT_NTSC
    sJpnMessageEntryTablePtr = sJpnMessageEntryTable;
    sNesMessageEntryTablePtr = sNesMessageEntryTable;
#else
    sNesMessageEntryTablePtr = sNesMessageEntryTable;
    sGerMessageEntryTablePtr = sGerMessageEntryTable;
    sFraMessageEntryTablePtr = sFraMessageEntryTable;
#endif

    sStaffMessageEntryTablePtr = sStaffMessageEntryTable;

#if PLATFORM_N64 && OOT_NTSC
    if ((B_80121220 != NULL) && (B_80121220->unk_58 != NULL)) {
        B_80121220->unk_58(&sJpnMessageEntryTablePtr, &sNesMessageEntryTablePtr, &sStaffMessageEntryTablePtr);
    }
#elif PLATFORM_N64 && OOT_PAL
    if ((B_80121220 != NULL) && (B_80121220->unk_58 != NULL)) {
        B_80121220->unk_58(&sNesMessageEntryTablePtr, &sGerMessageEntryTablePtr, &sFraMessageEntryTablePtr,
                           &sStaffMessageEntryTablePtr);
    }
#endif
}
