#include <ultra64.h>
#include <global.h>

#include <message_data_static.h>

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/const.rodata.s")

#define MESSAGE_ENTRY(textId, type, yPos) DECLARE_MESSAGE_ENTRY(textId, type, yPos, nes),
#define MESSAGE_TABLE_MAIN

static const MessageTableEntry D_8014B320[] = {
    #include "text/message_entries.h"
};

#undef MESSAGE_TABLE_MAIN
#undef MESSAGE_ENTRY
#define MESSAGE_ENTRY(textId, type, yPos) MESSAGE_SEGMENT(textId, ger),

static const char* D_8014F548[] = {
    #include "text/message_entries.h"
    NULL,
};

#undef MESSAGE_ENTRY
#define MESSAGE_ENTRY(textId, type, yPos) MESSAGE_SEGMENT(textId, fra),

static const char* D_80151658[] = {
    #include "text/message_entries.h"
    NULL,
};

#undef MESSAGE_ENTRY
#define MESSAGE_ENTRY(textId, type, yPos) DECLARE_MESSAGE_ENTRY(textId, type, yPos, staff),

static const MessageTableEntry D_80153768[] = {
    #include "text/staff_entries.h"
};

#undef MESSAGE_ENTRY

static const MessageTableEntry* D_801538F0 = D_8014B320;
static const char* D_801538F4 = D_8014F548;
static const char* D_801538F8 = D_80151658;
static const MessageTableEntry* D_801538FC = D_80153768;

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/const2.rodata.s")



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
