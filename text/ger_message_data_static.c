#include "message_data_fmt.h"

#define DECLARE_MESSAGE(textId, type, yPos, nesMessage, gerMessage, fraMessage) \
    const char _message_##textId##_ger[sizeof(gerMessage)] = { gerMessage END };
#define DECLARE_MESSAGE_END()

#include "declare_messages.inc.h"
