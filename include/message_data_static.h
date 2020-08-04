#ifndef _MESSAGE_DATA_STATIC_H_
#define _MESSAGE_DATA_STATIC_H_

#include <ultra64.h>

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

#define DECLARE_MESSAGE_REFS(textId) \
    extern const char _message_##textId##_nes[]; \
    extern const char _message_##textId##_ger[]; \
    extern const char _message_##textId##_fra[];

#define DECLARE_MESSAGE_REF_FFFC() extern const char _message_0xFFFC_nes[];

#define DECLARE_MESSAGE_REF_STAFF(textId) \
    extern const char _message_##textId##_staff[];

#define MESSAGE_ENTRY(textId, type, yPos) DECLARE_MESSAGE_REF_STAFF(textId)
#define MESSAGE_ENTRY_END() 

#include "text/staff_entries.h"

#undef MESSAGE_ENTRY_END()
#undef MESSAGE_ENTRY

#define MESSAGE_ENTRY(textId, type, yPos) DECLARE_MESSAGE_REFS(textId)
#define MESSAGE_DECLARATIONS

#include "text/message_entries.h"

#undef MESSAGE_DECLARATIONS
#undef MESSAGE_ENTRY

/**********************************************\
 * 
 *   Message Table Declarations
 * 
\**********************************************/ 

#define MESSAGE_SEGMENT(textId, lang) _message_##textId##_##lang

#define DECLARE_MESSAGE_ENTRY(textId, type, yPos, lang) \
    { textId, type, yPos, MESSAGE_SEGMENT(textId, lang) }

#define MESSAGE_ENTRY_END() { 0xFFFF, 0x0, 0x0, NULL }

#endif
