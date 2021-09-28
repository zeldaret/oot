#ifndef _MESSAGE_DATA_STATIC_H_
#define _MESSAGE_DATA_STATIC_H_

#include "global.h"
#include "message_data_fmt.h"

#define TEXT_ID(bank, id) (_SHIFTL(bank, 8, 8) | _SHIFTL(id, 0, 8))

typedef enum {
    /*  0 */ BOX_BLACK,
    /*  1 */ BOX_WOODEN,
    /*  2 */ BOX_BLUE,
    /*  3 */ BOX_OCARINA,
    /*  4 */ BOX_NONE_BOTTOM,
    /*  5 */ BOX_NONE_NO_SHADOW,

    /* 11 */ BOX_CREDITS = 11
} MessageBoxType;

typedef enum {
    /* 0 */ BOX_BG_CROSS
} MessageBoxBackground;

typedef enum {
    POS_VARIABLE,
    POS_TOP,
    POS_BOTTOM,
    POS_MIDDLE
} MessageBoxPosition;

typedef struct {
    u16 textId;
    u8 typePos;
    const char* segment;
} MessageTableEntry;

/* 
 *  Message Symbol Declarations
 */

#define DECLARE_MESSAGE(textId, type, yPos, staffMessage) \
    extern const char _message_##textId##_staff[];

#include "text/declare_messages_staff.h"

#undef DECLARE_MESSAGE

#define DECLARE_MESSAGE(textId, type, yPos, nesMessage, gerMessage, fraMessage) \
    extern const char _message_##textId##_nes[]; \
    extern const char _message_##textId##_ger[]; \
    extern const char _message_##textId##_fra[];

#include "text/declare_messages.h"
extern const char _message_0xFFFC_nes[];

#undef DECLARE_MESSAGE

#endif
