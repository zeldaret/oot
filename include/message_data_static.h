#ifndef MESSAGE_DATA_STATIC_H
#define MESSAGE_DATA_STATIC_H

#include "ultra64.h"
#include "message_data_fmt.h"
#include "versions.h"

typedef enum TextBoxType {
    /*  0 */ TEXTBOX_TYPE_BLACK,
    /*  1 */ TEXTBOX_TYPE_WOODEN,
    /*  2 */ TEXTBOX_TYPE_BLUE,
    /*  3 */ TEXTBOX_TYPE_OCARINA,
    /*  4 */ TEXTBOX_TYPE_NONE_BOTTOM,
    /*  5 */ TEXTBOX_TYPE_NONE_NO_SHADOW,
    /* 11 */ TEXTBOX_TYPE_CREDITS = 11
} TextBoxType;

typedef enum TextBoxBackground {
    /* 0 */ TEXTBOX_BG_CROSS
} TextBoxBackground;

typedef enum TextBoxPosition {
    /* 0 */ TEXTBOX_POS_VARIABLE,
    /* 1 */ TEXTBOX_POS_TOP,
    /* 2 */ TEXTBOX_POS_MIDDLE,
    /* 3 */ TEXTBOX_POS_BOTTOM
} TextBoxPosition;

typedef struct MessageTableEntry {
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
#else
#define DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    extern const char _message_##textId##_nes[]; \
    extern const char _message_##textId##_ger[]; \
    extern const char _message_##textId##_fra[];

#define DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    /* Empty */

#define DEFINE_MESSAGE_FFFC(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage)
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
