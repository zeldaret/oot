#include "global.h"
#include "z64elf_message.h"

ElfMessage gOverworldNaviMsgs[] = {
/* 0000   0 */ ELF_MESSAGE_FLAG(CHECK, 0x0140, false, 0x05), /* eventChkInf[0] & 0x20 */
/* 0004   1 */ ELF_MESSAGE_FLAG(CHECK, 0x0141, false, 0x09), /* eventChkInf[0] & 0x200 */
/* 0008   2 */ ELF_MESSAGE_FLAG(CHECK, 0x0142, false, 0x12), /* eventChkInf[1] & 0x4 */
/* 000C   3 */ ELF_MESSAGE_FLAG(CHECK, 0x0143, false, 0x14), /* eventChkInf[1] & 0x10 */
/* 0010   4 */ ELF_MESSAGE_FLAG(CHECK, 0x0144, false, 0x40), /* eventChkInf[4] & 0x1 */
/* 0014   5 */ ELF_MESSAGE_SONG(CHECK, 0x0145, false, ITEM_SONG_SARIA),
/* 0018   6 */ ELF_MESSAGE_STRENGTH_UPG(CHECK, 0x0146, true, 0), // TODO goron bracelet
/* 001C   7 */ ELF_MESSAGE_FLAG(CHECK, 0x0147, false, 0x25), /* eventChkInf[2] & 0x20 */
/* 0020   8 */ ELF_MESSAGE_MAGIC(CHECK, 0x0148, false),
/* 0024   9 */ ELF_MESSAGE_FLAG(CHECK, 0x0149, false, 0x33), /* eventChkInf[3] & 0x8 */
/* 0028  10 */ ELF_MESSAGE_FLAG(CHECK, 0x014A, false, 0x37), /* eventChkInf[3] & 0x80 */
/* 002C  11 */ ELF_MESSAGE_FLAG(CHECK, 0x014B, false, 0x80), /* eventChkInf[8] & 0x1 */
/* 0030  12 */ ELF_MESSAGE_FLAG(CHECK, 0x014C, false, 0x43), /* eventChkInf[4] & 0x8 */
/* 0034  13 */ ELF_MESSAGE_FLAG(CHECK, 0x014D, false, 0x45), /* eventChkInf[4] & 0x20 */
/* 0038  14 */ ELF_MESSAGE_ITEM(CHECK, 0x014E, true, ITEM_HOOKSHOT, ITEM_NONE),
/* 003C  15 */ ELF_MESSAGE_MEDALLION(CHECK, 0x0150, false, ITEM_MEDALLION_FOREST),
/* 0040  16 */ ELF_MESSAGE_MEDALLION(CHECK, 0x0151, false, ITEM_MEDALLION_FIRE),
/* 0044  17 */ ELF_MESSAGE_BOOTS(CHECK, 0x0152, false, ITEM_BOOTS_IRON),
/* 0048  18 */ ELF_MESSAGE_MEDALLION(CHECK, 0x0153, false, ITEM_MEDALLION_WATER),
/* 004C  19 */ ELF_MESSAGE_FLAG(CHECK, 0x0154, false, 0xAA), /* eventChkInf[10] & 0x400 */
/* 0050  20 */ ELF_MESSAGE_ITEM(CHECK, 0x0155, true, ITEM_LENS, ITEM_NONE),
/* 0054  21 */ ELF_MESSAGE_MEDALLION(CHECK, 0x0157, false, ITEM_MEDALLION_SHADOW),
/* 0058  22 */ ELF_MESSAGE_SONG(CHECK, 0x0158, false, ITEM_SONG_REQUIEM),
/* 005C  23 */ ELF_MESSAGE_STRENGTH_UPG(CHECK, 0x0156, true, 1), // TODO silver gauntlets
/* 0060  24 */ ELF_MESSAGE_MEDALLION(CHECK, 0x015A, false, ITEM_MEDALLION_SPIRIT),
/* 0064  25 */ ELF_MESSAGE_ITEM(CHECK, 0x015B, true, ITEM_ARROW_LIGHT, ITEM_NONE),
/* 0068  26 */ ELF_MESSAGE_FLAG(CHECK, 0x015C, false, 0xC3), /* eventChkInf[12] & 0x8 */
/* 006C  27 */ ELF_MESSAGE_END(0x015F),
};
