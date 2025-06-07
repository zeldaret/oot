#define MESSAGE_DATA_STATIC

#include "message_data_fmt.h"
#include "versions.h"

#define DEFINE_MESSAGE(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    const char _message_##textId##_nes[] = nesMessage;

#define DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    /* Present */ const char _message_##textId##_nes[] = nesMessage;
#define DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    /* Not Present */

#if OOT_NTSC
// On NTSC versions, the font message is with JPN
#define DEFINE_MESSAGE_FFFC(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    /* Not Present */
#else
// On PAL versions, the font message is with NES
#define DEFINE_MESSAGE_FFFC(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage) \
    /* Present */ const char _message_##textId##_nes[] = nesMessage;
#endif

#include "assets/text/message_data.enc.nes.h"
