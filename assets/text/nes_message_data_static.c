#define MESSAGE_DATA_STATIC

#include "message_data_fmt.h"

#define DECLARE_MESSAGE(textId, type, yPos, nesMessage, gerMessage, fraMessage) \
    const char _message_##textId##_nes[sizeof(nesMessage)] = { nesMessage END };

#define DECLARE_MESSAGE_FFFC

#include "assets/text/declare_messages.enc.h"

#undef DECLARE_MESSAGE_FFFC
