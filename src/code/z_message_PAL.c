#include "global.h"
#include "message_data_static.h"

/* 
const MessageTableEntry D_8014B320[] = {
    #define DECLARE_MESSAGE(textId, type, yPos, nesMessage, gerMessage, fraMessage) \
        { textId, (_SHIFTL(type, 4, 8) | _SHIFTL(yPos, 0, 8)), _message_##textId##_nes },
    #define DECLARE_MESSAGE_FFFC
    #include "../text/declare_messages.h"
    #undef DECLARE_MESSAGE_FFFC
    #undef DECLARE_MESSAGE
    { 0xFFFF, 0, NULL },
};

const char* D_8014F548[] = {
    #define DECLARE_MESSAGE(textId, type, yPos, nesMessage, gerMessage, fraMessage) \
        _message_##textId##_ger,
    #include "../text/declare_messages.h"
    #undef DECLARE_MESSAGE
    NULL,
};

const char* D_80151658[] = {
    #define DECLARE_MESSAGE(textId, type, yPos, nesMessage, gerMessage, fraMessage) \
        _message_##textId##_fra,
    #include "../text/declare_messages.h"
    #undef DECLARE_MESSAGE
    NULL,
};

const MessageTableEntry D_80153768[] = {
    #define DECLARE_MESSAGE(textId, type, yPos, staffMessage) \
        { textId, (_SHIFTL(type, 4, 8) | _SHIFTL(yPos, 0, 8)), _message_##textId##_staff },
    #include "../text/declare_messages_staff.h"
    #undef DECLARE_MESSAGE
    { 0xFFFF, 0, NULL },
};

const MessageTableEntry* D_801538F0[] = { &D_8014B320[0] };
const char* D_801538F4[] = { &D_8014F548[0] };
const char* D_801538F8[] = { &D_80151658[0] };
const MessageTableEntry* D_801538FC[] = { &D_80153768[0] };
 */

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_801069B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80106AA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80106BC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80106C88.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80106CCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80106D40.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80106F1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80107244.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80107448.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80107628.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_801076CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80107980.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_801080B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_801083F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_801086B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80109968.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80109B3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010B0C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010B680.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010B720.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010B820.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010BD58.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010BD88.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010BDBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010BED8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010C358.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010C39C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010F2CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010F494.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010F58C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010F6F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8011040C.s")
