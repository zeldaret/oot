#ifndef MESSAGE_DATA_STATIC_H
#define MESSAGE_DATA_STATIC_H

#include "ultra64.h"
#include "message_data_fmt.h"

typedef enum {
    /*  0 */ TEXTBOX_TYPE_BLACK,
    /*  1 */ TEXTBOX_TYPE_WOODEN,
    /*  2 */ TEXTBOX_TYPE_BLUE,
    /*  3 */ TEXTBOX_TYPE_OCARINA,
    /*  4 */ TEXTBOX_TYPE_NONE_BOTTOM,
    /*  5 */ TEXTBOX_TYPE_NONE_NO_SHADOW,
    /* 11 */ TEXTBOX_TYPE_CREDITS = 11
} TextBoxType;

typedef enum {
    /* 0 */ TEXTBOX_BG_CROSS
} TextBoxBackground;

typedef enum {
    /* 0 */ TEXTBOX_POS_VARIABLE,
    /* 1 */ TEXTBOX_POS_TOP,
    /* 2 */ TEXTBOX_POS_MIDDLE,
    /* 3 */ TEXTBOX_POS_BOTTOM
} TextBoxPosition;

typedef struct {
    u16 textId;
    u8 typePos;
    const char* segment;
} MessageTableEntry;

/*
 *  Message Symbol Declarations
 */

/* Non-Credits Messages */

#if OOT_NTSC
#define DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    extern const char _message_##textId##_nes[];

#define DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    extern const char _message_##textId##_jpn[];

#define DEFINE_MESSAGE_FFFC(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage)

#define FONT_MESSAGE_OFFSET (_message_0xFFFC_jpn - (const char*)_jpn_message_data_staticSegmentStart)
#define FONT_MESSAGE_LENGTH (_message_0xFFFD_jpn - _message_0xFFFC_jpn)
#else
#define DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    extern const char _message_##textId##_nes[]; \
    extern const char _message_##textId##_ger[]; \
    extern const char _message_##textId##_fra[];

#define DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    /* Empty */

#define DEFINE_MESSAGE_FFFC(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage)

#define FONT_MESSAGE_OFFSET (_message_0xFFFC_nes - (const char*)_nes_message_data_staticSegmentStart)
#define FONT_MESSAGE_LENGTH (_message_0xFFFD_nes - _message_0xFFFC_nes)
#endif

#define DEFINE_MESSAGE(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage)

#include "assets/text/message_data.h"

#undef DEFINE_MESSAGE
#undef DEFINE_MESSAGE_NES
#undef DEFINE_MESSAGE_JPN
#undef DEFINE_MESSAGE_FFFC

/* Credits Messages */

#define DEFINE_MESSAGE(textId, type, yPos, staffMessage) \
    extern const char _message_##textId##_staff[];

#include "assets/text/message_data_staff.h"

#undef DEFINE_MESSAGE

#endif
