#include "ultra64/asm.h"

.text

#ifdef __sgi
#define IPL_SYMBOL(name, address, size) \
    ABS(name, address)
#else
#define IPL_SYMBOL(name, address, sz) \
    ABS(name, address)               ;\
    .type name, @object              ;\
    .size name, sz
#endif


IPL_SYMBOL(leoBootID,      0x800001A0, 4)
IPL_SYMBOL(osTvType,       0x80000300, 4)
IPL_SYMBOL(osRomType,      0x80000304, 4)
IPL_SYMBOL(osRomBase,      0x80000308, 4)
IPL_SYMBOL(osResetType,    0x8000030C, 4)
IPL_SYMBOL(osCicId,        0x80000310, 4)
IPL_SYMBOL(osVersion,      0x80000314, 4)
IPL_SYMBOL(osMemSize,      0x80000318, 4)
IPL_SYMBOL(osAppNMIBuffer, 0x8000031C, 0x40)

#ifdef BBPLAYER

ABS(__osBbEepromAddress,   0x8000035C, 4)
ABS(__osBbEepromSize,      0x80000360, 4)
ABS(__osBbFlashAddress,    0x80000364, 4)
ABS(__osBbFlashSize,       0x80000368, 4)
ABS(__osBbSramAddress,     0x8000036C, 4)
ABS(__osBbSramSize,        0x80000370, 4)
ABS(__osBbPakAddress,      0x80000374, 0x10)
ABS(__osBbPakSize,         0x80000384, 4)
ABS(__osBbIsBb,            0x80000388, 4)
ABS(__osBbHackFlags,       0x8000038C, 4)
ABS(__osBbStashMagic,      0x80000390, 4)
ABS(__osBbPakBindings,     0x80000394, 0x10)
ABS(__osBbStateName,       0x800003A4, 0x10)
ABS(__osBbStateDirty,      0x800003B4, 4)
ABS(__osBbAuxDataLimit,    0x800003B8, 4)

.space 0x30

#endif

.space 0x60
