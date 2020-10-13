#include "message_data_fmt.h"

#define DECLARE_MESSAGE(textId, type, yPos, staffMessage) \
    const char _message_##textId##_staff[sizeof(staffMessage)] = { staffMessage END };
#define DECLARE_MESSAGE_END()

#include "declare_messages_staff.enc.h"
