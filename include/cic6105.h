#ifndef CIC6105_H
#define CIC6105_H

#include "ultra64.h"

extern u32 gCICBootMagic0;

#define CIC_BOOT_MAGIC0_IS_CORRECT() (gCICBootMagic0 == 0xAD090010)

void CIC6105_EnableAudio(void);
void CIC6105_AddFaultClient(void);
void CIC6105_RemoveFaultClient(void);
void CIC6105_RunBootTask(void);
void CIC6105_SaveBootMagicValues(void);

#endif
