#define MESSAGE_DATA_STATIC

#include "message_data_fmt.h"

#define DEFINE_MESSAGE(textId, type, yPos, staffMessage) \
    const char _message_##textId##_staff[sizeof(staffMessage)] = { staffMessage END };

#include "assets/text/message_data_staff.enc.h"
