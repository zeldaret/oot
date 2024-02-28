#define MESSAGE_DATA_STATIC

#include "message_data_fmt.h"

#define DEFINE_MESSAGE(textId, type, yPos, nesMessage, gerMessage, fraMessage) \
    const char _message_##textId##_ger[sizeof(gerMessage)] = { gerMessage END };

#define DEFINE_MESSAGE_NES(textId, type, yPos, nesMessage)

#include "assets/text/message_data.enc.h"
