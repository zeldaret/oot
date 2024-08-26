#ifndef CIC6105_H
#define CIC6105_H

#include "ultra64.h"

extern s32 B_80008EE0;

void CIC6105_AddFaultClient(void);
void CIC6105_RemoveFaultClient(void);
void func_80001640(void);
void func_80001720(void);

#endif
