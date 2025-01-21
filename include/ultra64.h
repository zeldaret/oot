#ifndef ULTRA64_H
#define ULTRA64_H

#include "libc/assert.h"
#include "libc/math.h"
#include "libc/stdarg.h"
#include "libc/stdbool.h"
#include "libc/stddef.h"
#include "libc/stdint.h"
#include "libc/stdlib.h"
#include "libc/string.h"

#include "ultra64/ultratypes.h"
#include "unk.h"

#include "ultra64/libc.h"
#include "ultra64/xstdio.h"
#include "ultra64/exception.h"
#include "ultra64/rcp.h"
#include "ultra64/thread.h"
#include "ultra64/convert.h"
#include "ultra64/time.h"
#include "ultra64/message.h"
#include "ultra64/sptask.h"
#include "ultra64/gu.h"
#include "ultra64/vi.h"
#include "ultra64/pi.h"
#include "ultra64/controller.h"
#include "ultra64/mbi.h"
#include "ultra64/pfs.h"
#include "ultra64/motor.h"
#include "ultra64/R4300.h"
#include "ultra64/ucode.h"
#include "ultra64/version.h"

union uObjBg;

void __osPiCreateAccessQueue(void);
void __osPiGetAccess(void);
void __osPiRelAccess(void);
s32 osSendMesg(OSMesgQueue* mq, OSMesg msg, s32 flag);
void osStopThread(OSThread* thread);
void osViExtendVStart(u32 value);
s32 osRecvMesg(OSMesgQueue* mq, OSMesg* msg, s32 flag);

#if LIBULTRA_VERSION < LIBULTRA_VERSION_K
void osInitialize(void);
#else
#define osInitialize()               \
    {                                \
        __osInitialize_common();     \
        __osInitialize_autodetect(); \
    }
#endif

void __osInitialize_common(void);
void __osInitialize_autodetect(void);
void __osEnqueueAndYield(OSThread**);
void __osEnqueueThread(OSThread**, OSThread*);
OSThread* __osPopThread(OSThread**);
void __osDispatchThread(void);
void __osCleanupThread(void);
void __osDequeueThread(OSThread** queue, OSThread* thread);
void osDestroyThread(OSThread* thread);
void osCreateThread(OSThread* thread, OSId id, void (*entry)(void*), void* arg, void* sp, OSPri pri);
void __osSetSR(u32);
u32 __osGetSR(void);
void osWritebackDCache(void* vaddr, s32 nbytes);
void* osViGetNextFramebuffer(void);
void osCreatePiManager(OSPri pri, OSMesgQueue* cmdQueue, OSMesg* cmdBuf, s32 cmdMsgCnt);
void __osDevMgrMain(void* arg);
s32 __osPiRawStartDma(s32 dir, u32 cartAddr, void* dramAddr, size_t size);
void osViBlack(u8 active);
s32 __osSiRawReadIo(void* devAddr, u32* dst);
OSId osGetThreadId(OSThread* thread);
void osViSetMode(OSViMode* mode);
u32 __osProbeTLB(void*);
u32 osGetMemSize(void);
void osSetEventMesg(OSEvent e, OSMesgQueue* mq, OSMesg msg);
void osUnmapTLBAll(void);
s32 osEPiStartDma(OSPiHandle* handle, OSIoMesg* mb, s32 direction);
void osInvalICache(void* vaddr, s32 nbytes);
void osCreateMesgQueue(OSMesgQueue* mq, OSMesg* msg, s32 count);
void osInvalDCache(void* vaddr, s32 nbytes);
s32 __osSiDeviceBusy(void);
s32 osJamMesg(OSMesgQueue* mq, OSMesg msg, s32 flag);
void osSetThreadPri(OSThread* thread, OSPri pri);
OSPri osGetThreadPri(OSThread* thread);
s32 __osEPiRawReadIo(OSPiHandle* handle, u32 devAddr, u32* data);
void osViSwapBuffer(void* frameBufPtr);
s32 __osEPiRawStartDma(OSPiHandle* handle, s32 direction, u32 cartAddr, void* dramAddr, size_t size);
OSTime osGetTime(void);
void osSetTime(OSTime time);
void __osTimerServicesInit(void);
void __osTimerInterrupt(void);
void __osSetTimerIntr(OSTime time);
OSTime __osInsertTimer(OSTimer* timer);
u32 osGetCount(void);
void __osSetCompare(u32);
s32 __osDisableInt(void);
void __osRestoreInt(s32);
void __osViInit(void);
void __osViSwapContext(void);
OSMesgQueue* osPiGetCmdQueue(void);
s32 osEPiReadIo(OSPiHandle* handle, u32 devAddr, u32* data);
void osViSetSpecialFeatures(u32 func);
OSPiHandle* osCartRomInit(void);
void __osSetFpcCsr(u32);
u32 __osGetFpcCsr(void);
s32 osEPiWriteIo(OSPiHandle* handle, u32 devAddr, u32 data);
void osMapTLBRdb(void);
void osYieldThread(void);
u32 __osGetCause(void);
s32 __osEPiRawWriteIo(OSPiHandle* handle, u32 devAddr, u32 data);
s32 __osSiRawWriteIo(void* devAddr, u32 val);
void osCreateViManager(OSPri pri);
OSViContext* __osViGetCurrentContext(void);
void osStartThread(OSThread* thread);
void osViSetYScale(f32 scale);
void osViSetXScale(f32 value);
void __osSetWatchLo(u32);

s32 osPfsFreeBlocks(OSPfs* pfs, s32* leftoverBytes);
void guScale(Mtx* m, f32 x, f32 y, f32 z);
OSTask* _VirtualToPhysicalTask(OSTask* intp);
void osSpTaskLoad(OSTask* intp);
void osSpTaskStartGo(OSTask* tp);
void __osSiCreateAccessQueue(void);
void __osSiGetAccess(void);
void __osSiRelAccess(void);
s32 osContInit(OSMesgQueue* mq, u8* ctlBitfield, OSContStatus* status);
void __osContGetInitData(u8* ctlBitfield, OSContStatus* data);
void __osPackRequestData(u8 poll);
s32 osContStartReadData(OSMesgQueue* mq);
void osContGetReadData(OSContPad* contData);
void __osPackReadData(void);
void guPerspectiveF(f32 mf[4][4], u16* perspNorm, f32 fovy, f32 aspect, f32 near, f32 far, f32 scale);
void guPerspective(Mtx* m, u16* perspNorm, f32 fovy, f32 aspect, f32 near, f32 far, f32 scale);
s32 __osSpRawStartDma(s32 direction, void* devAddr, void* dramAddr, u32 size);
s32 __osSiRawStartDma(s32 dir, void* addr);
void osSpTaskYield(void);
s32 __osPfsGetNextPage(OSPfs* pfs, u8* bank, __OSInode* inode, __OSInodeUnit* page);
s32 osPfsReadWriteFile(OSPfs* pfs, s32 fileNo, u8 flag, s32 offset, s32 size, u8* data);
s32 __osPfsGetStatus(OSMesgQueue* queue, s32 channel);
void __osPfsRequestOneChannel(s32 channel, u8 cmd);
void __osPfsGetOneChannelData(s32 channel, OSContStatus* contData);
void guMtxIdentF(f32 mf[4][4]);
void guLookAtF(f32 mf[4][4], f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt, f32 xUp, f32 yUp, f32 zUp);
void guLookAt(Mtx*, f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt, f32 xUp, f32 yUp, f32 zUp);
s32 osPfsAllocateFile(OSPfs* pfs, u16 companyCode, u32 gameCode, u8* gameName, u8* extName, s32 fileSize, s32* fileNo);
s32 __osPfsDeclearPage(OSPfs* pfs, __OSInode* inode, s32 fileSizeInPages, s32* startPage, u8 bank, s32* decleared,
                       s32* finalPage);
s32 osStopTimer(OSTimer* timer);
u16 __osSumcalc(u8* ptr, s32 length);
s32 __osIdCheckSum(u16* ptr, u16* checkSum, u16* idSum);
s32 __osRepairPackId(OSPfs* pfs, __OSPackId* badid, __OSPackId* newid);
s32 __osCheckPackId(OSPfs* pfs, __OSPackId* check);
s32 __osGetId(OSPfs* pfs);
s32 __osCheckId(OSPfs* pfs);
s32 __osPfsRWInode(OSPfs* pfs, __OSInode* inode, u8 flag, u8 bank);
void guMtxL2F(f32 mf[4][4], Mtx* m);
s32 osPfsFindFile(OSPfs* pfs, u16 companyCode, u32 gameCode, u8* gameName, u8* extName, s32* fileNo);
s32 osAfterPreNMI(void);
s32 osContStartQuery(OSMesgQueue* mq);
void osContGetQuery(OSContStatus* data);
void guLookAtHiliteF(f32 mf[4][4], LookAt* l, Hilite* h, f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt,
                     f32 xUp, f32 yUp, f32 zUp, f32 xl1, f32 yl1, f32 zl1, f32 xl2, f32 yl2, f32 zl2, s32 hiliteWidth,
                     s32 hiliteHeight);
void guLookAtHilite(Mtx* m, LookAt* l, Hilite* h, f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt, f32 xUp,
                    f32 yUp, f32 zUp, f32 xl1, f32 yl1, f32 zl1, f32 xl2, f32 yl2, f32 zl2, s32 hiliteWidth,
                    s32 hiliteHeight);
u32 __osSpDeviceBusy(void);
void guMtxIdent(Mtx*);
void guPositionF(f32 mf[4][4], f32 rot, f32 pitch, f32 yaw, f32 scale, f32 x, f32 y, f32 z);
void guPosition(Mtx*, f32, f32, f32, f32, f32, f32, f32);
OSYieldResult osSpTaskYielded(OSTask* task);
void guRotateF(f32 m[4][4], f32 a, f32 x, f32 y, f32 z);
void guRotate(Mtx*, f32 a, f32 x, f32 y, f32 z);
s32 osAiSetFrequency(u32 frequency);
OSThread* __osGetActiveQueue(void);
void guNormalize(f32* x, f32* y, f32* z);
u32 osDpGetStatus(void);
void osDpSetStatus(u32 status);
s32 osPfsDeleteFile(OSPfs* pfs, u16 companyCode, u32 gameCode, u8* gameName, u8* extName);
s32 __osPfsReleasePages(OSPfs* pfs, __OSInode* inode, u8 initialPage, u8 bank, __OSInodeUnit* finalPage);
void guOrthoF(f32[4][4], f32, f32, f32, f32, f32, f32, f32);
void guOrtho(Mtx*, f32, f32, f32, f32, f32, f32, f32);
void osViSetEvent(OSMesgQueue* mq, OSMesg msg, u32 retraceCount);
s32 osPfsIsPlug(OSMesgQueue* mq, u8* pattern);
void __osPfsRequestData(u8 cmd);
void __osPfsGetInitData(u8* pattern, OSContStatus* contData);
void guS2DInitBg(union uObjBg* bg);
s32 __osPfsSelectBank(OSPfs* pfs, u8 bank);
s32 osContSetCh(u8 ch);
s32 osPfsFileState(OSPfs* pfs, s32 fileNo, OSPfsState* state);
s32 osPfsInitPak(OSMesgQueue* queue, OSPfs* pfs, s32 channel);
s32 __osPfsCheckRamArea(OSPfs* pfs);
s32 osPfsChecker(OSPfs* pfs);
s32 func_80105788(OSPfs* pfs, __OSInodeCache* cache);
s32 func_80105A60(OSPfs* pfs, __OSInodeUnit fpage, __OSInodeCache* cache);
u32 osAiGetLength(void);
void guTranslate(Mtx* m, f32 x, f32 y, f32 z);
s32 __osContRamWrite(OSMesgQueue* mq, s32 channel, u16 address, u8* buffer, s32 force);
s32 __osContRamRead(OSMesgQueue* ctrlrqueue, s32 channel, u16 addr, u8* data);
u8 __osContAddressCrc(u16 addr);
u8 __osContDataCrc(u8* data);
s32 osSetTimer(OSTimer* timer, OSTime countdown, OSTime interval, OSMesgQueue* mq, OSMesg msg);
u32 __osSpGetStatus(void);
void __osSpSetStatus(u32 status);
void osWritebackDCacheAll(void);
OSThread* __osGetCurrFaultedThread(void);
void guMtxF2L(f32 mf[4][4], Mtx* m);
void* osViGetCurrentFramebuffer(void);
s32 __osSpSetPc(void* pc);

#endif
