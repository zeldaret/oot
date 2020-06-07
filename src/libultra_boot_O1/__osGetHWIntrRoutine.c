#include <global.h>

void __osGetHWIntrRoutine(s32 idx, OSMesgQueue** outQueue, OSMesg* outMsg) {
    *outQueue = __osHwIntTable[idx].queue;
    *outMsg = __osHwIntTable[idx].msg;
}
