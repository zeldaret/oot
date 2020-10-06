#ifndef _MESSAGE_DATA_STATIC_H_
#define _MESSAGE_DATA_STATIC_H_

#include "global.h"
#include "message_data_fmt.h"

#define MSEG 07

#define STAFF_BANK 05

#define TEXT_ID(bank, id) (((bank & 0xFF) << 0x8) | (id & 0xFF)) // TODO use SHIFTL

typedef enum {
    BOX_BLACK,
    BOX_WOODEN,
    BOX_BLUE,
    BOX_OCARINA,
    BOX_NONE_BOTTOM,
    BOX_NONE_NO_SHADOW,
    BOX_CREDITS = 11
} MessageBoxType;

typedef enum {
    POS_VARIABLE,
    POS_TOP,
    POS_BOTTOM,
    POS_MIDDLE
} MessageBoxPosition;

typedef struct {
    u16 textId;
    union {
        struct {
            MessageBoxType type : 4;
            MessageBoxPosition yPos : 4;
        };
        u8 xy;
    };
    const char* segment;
} MessageTableEntry;

/**********************************************\
 * 
 *   Message Symbol Declarations
 * 
\**********************************************/ 

#define DECLARE_MESSAGE(textId, type, yPos, staffMessage) \
    extern const char _message_##textId##_staff[];

#define DECLARE_MESSAGE_END() \
    DECLARE_MESSAGE(0xFFFD, BOX_BLACK, POS_VARIABLE,)

#include "../text/declare_messages_staff.h"

#undef DECLARE_MESSAGE
#undef DECLARE_MESSAGE_END

#define DECLARE_MESSAGE(textId, type, yPos, nesMessage, gerMessage, fraMessage) \
    extern const char _message_##textId##_nes[]; \
    extern const char _message_##textId##_ger[]; \
    extern const char _message_##textId##_fra[];

#define DECLARE_MESSAGE_END() \
    DECLARE_MESSAGE(0xFFFD, BOX_BLACK, POS_VARIABLE,,,)

#include "../text/declare_messages.h"
extern const char _message_0xFFFC_nes[];

#undef DECLARE_MESSAGE
#undef DECLARE_MESSAGE_END

#endif
