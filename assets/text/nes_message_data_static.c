#define MESSAGE_DATA_STATIC

#include "message_data_fmt.h"

#define DEFINE_MESSAGE(textId, type, yPos, nesMessage, gerMessage, fraMessage) \
    const char _message_##textId##_nes[sizeof(nesMessage)] = { nesMessage END };

#include "assets/text/message_data.enc.h"

DEFINE_MESSAGE(0xFFFC, 0, 0,
               "0123456789" NEWLINE     //
               "ABCDEFGHIJKLMN" NEWLINE //
               "OPQRSTUVWXYZ" NEWLINE   //
               "abcdefghijklmn" NEWLINE //
               "opqrstuvwxyz" NEWLINE   //
               " -." NEWLINE,           //
               "", "")

DEFINE_MESSAGE(0xFFFD, 0, 0, "", "", "")
