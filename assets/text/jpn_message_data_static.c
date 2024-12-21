#define MESSAGE_DATA_STATIC
#define MESSAGE_WCHAR
#include "message_data_fmt.h"

#define DEFINE_MESSAGE(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage, chnMessage) \
    const char _message_##textId##_jpn[] = jpnMessage;

#define DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage, chnMessage) \
    /* Not Present */
#define DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage, chnMessage) \
    /* Present */ const char _message_##textId##_jpn[] = jpnMessage;
#define DEFINE_MESSAGE_CHN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage, chnMessage) \
    /* Not Present */

// Font Message
#define DEFINE_MESSAGE_FFFC(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage, chnMessage) \
    /* Present */ const char _message_##textId##_jpn[] = jpnMessage;

#include "assets/text/message_data.enc.jpn.h"
