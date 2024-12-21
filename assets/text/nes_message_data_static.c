#define MESSAGE_DATA_STATIC

#include "message_data_fmt.h"
#include "versions.h"

#if PLATFORM_IQUE

#define DEFINE_MESSAGE(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage, chnMessage) \
    const char _message_##textId##_chn[] = chnMessage;

#define DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage, chnMessage) \
    /* Not Present */
#define DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage, chnMessage) \
    /* Not Present */
#define DEFINE_MESSAGE_CHN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage, chnMessage) \
    /* Present */ const char _message_##textId##_chn[] = chnMessage;

#else

#define DEFINE_MESSAGE(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage, chnMessage) \
    const char _message_##textId##_nes[] = nesMessage;

#define DEFINE_MESSAGE_NES(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage, chnMessage) \
    /* Present */ const char _message_##textId##_nes[] = nesMessage;
#define DEFINE_MESSAGE_JPN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage, chnMessage) \
    /* Not Present */
#define DEFINE_MESSAGE_CHN(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage, chnMessage) \
    /* Not Present */

#endif

#if OOT_NTSC
// On NTSC versions, the font message is with JPN
#define DEFINE_MESSAGE_FFFC(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage, chnMessage) \
    /* Not Present */
#else
// On PAL versions, the font message is with NES
#define DEFINE_MESSAGE_FFFC(textId, type, yPos, jpnMessage, nesMessage, gerMessage, fraMessage, chnMessage) \
    /* Present */ const char _message_##textId##_nes[] = nesMessage;
#endif

#if PLATFORM_IQUE
#include "assets/text/message_data.enc.chn.h"
#else
#include "assets/text/message_data.enc.nes.h"
#endif
