#include <global.h>
#include <vt.h>

volatile u32 gIrqMgrResetStatus = 0;
volatile OSTime sIrqMgrResetTime = 0;
volatile OSTime gIrqMgrRetraceTime = 0;
u32 sIrqMgrRetraceCount = 0;

#define RETRACE_MSG 666
#define PRE_NMI_MSG 669
#define PRENMI450_MSG 671
#define PRENMI480_MSG 672
#define PRENMI500_MSG 673

#define STATUS_IDLE 0
#define STATUS_PRENMI 1
#define STATUS_NMI 2

void IrqMgr_AddClient(IrqMgr* this, IrqMgrClient* c, OSMesgQueue* msgQ) {
    u32 prevMask;

    LogUtils_CheckNullPointer("this", this, "../irqmgr.c", 96);
    LogUtils_CheckNullPointer("c", c, "../irqmgr.c", 97);
    LogUtils_CheckNullPointer("msgQ", msgQ, "../irqmgr.c", 98);

    prevMask = osSetIntMask(1);

    c->queue = msgQ;
    c->prev = this->clients;
    this->clients = c;

    osSetIntMask(prevMask);

    if (this->resetStatus > STATUS_IDLE) {
        osSendMesg(c->queue, (OSMesg) & this->prenmiMsg, OS_MESG_NOBLOCK);
    }

    if (this->resetStatus >= STATUS_NMI) {
        osSendMesg(c->queue, (OSMesg) & this->nmiMsg, OS_MESG_NOBLOCK);
    }
}

void IrqMgr_RemoveClient(IrqMgr* this, IrqMgrClient* c) {
    IrqMgrClient* iter;
    IrqMgrClient* lastIter;
    u32 prevMask;

    iter = this->clients;
    lastIter = NULL;

    LogUtils_CheckNullPointer("this", this, "../irqmgr.c", 129);
    LogUtils_CheckNullPointer("c", c, "../irqmgr.c", 130);

    prevMask = osSetIntMask(1);

    while (iter) {
        if (iter == c) {
            if (lastIter) {
                lastIter->prev = c->prev;
            } else {
                this->clients = c->prev;
            }
            break;
        }
        lastIter = iter;
        iter = iter->prev;
    }

    osSetIntMask(prevMask);
}

void IrqMgr_SendMesgForClient(IrqMgr* this, OSMesg msg) {
    IrqMgrClient* iter;

    iter = this->clients;
    while (iter) {
        if (iter->queue->validCount >= iter->queue->msgCount) {
            // irqmgr_SendMesgForClient: Message queue is overflowing mq=%08x cnt=%d
            osSyncPrintf(
                VT_COL(RED, WHITE) "irqmgr_SendMesgForClient:メッセージキューがあふれています mq=%08x cnt=%d\n" VT_RST,
                iter->queue, iter->queue->validCount);
        } else {
            osSendMesg(iter->queue, msg, OS_MESG_NOBLOCK);
        }

        iter = iter->prev;
    }
}

void IrqMgr_JamMesgForClient(IrqMgr* this, OSMesg msg) {
    IrqMgrClient* iter;

    iter = this->clients;
    while (iter) {
        if (iter->queue->validCount >= iter->queue->msgCount) {
            // irqmgr_JamMesgForClient: Message queue is overflowing mq=%08x cnt=%d
            osSyncPrintf(
                VT_COL(RED, WHITE) "irqmgr_JamMesgForClient:メッセージキューがあふれています mq=%08x cnt=%d\n" VT_RST,
                iter->queue, iter->queue->validCount);
        } else {
            // mistake? the function's name suggests it would use osJamMesg
            osSendMesg(iter->queue, msg, OS_MESG_NOBLOCK);
        }

        iter = iter->prev;
    }
}

void IrqMgr_HandlePreNMI(IrqMgr* this) {
    u64 temp = STATUS_PRENMI; // required to match
    gIrqMgrResetStatus = temp;
    this->resetStatus = STATUS_PRENMI;

    sIrqMgrResetTime = this->resetTime = osGetTime();
    osSetTimer(&this->timer, OS_USEC_TO_CYCLES(450000), 0ull, &this->queue, (OSMesg)PRENMI450_MSG);
    IrqMgr_JamMesgForClient(this, (OSMesg) & this->prenmiMsg);
}

void IrqMgr_CheckStack() {
    osSyncPrintf("irqmgr.c: PRENMIから0.5秒経過\n"); // 0.5 seconds after PRENMI
    if (StackCheck_Check(NULL) == 0) {
        osSyncPrintf("スタックは大丈夫みたいです\n"); // The stack looks ok
    } else {
        osSyncPrintf("%c", 7);
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf("スタックがオーバーフローしたか危険な状態です\n"); // Stack overflow or dangerous
        osSyncPrintf(
            "早々にスタックサイズを増やすか、スタックを消費しないようにしてください\n"); // Increase stack size early or
                                                                                         // don't consume stack
        osSyncPrintf(VT_RST);
    }
}

void IrqMgr_HandlePRENMI450(IrqMgr* this) {
    u64 temp = STATUS_NMI; // required to match
    gIrqMgrResetStatus = temp;
    this->resetStatus = STATUS_NMI;
    osSetTimer(&this->timer, OS_USEC_TO_CYCLES(30000), 0ull, &this->queue, (OSMesg)PRENMI480_MSG);
    IrqMgr_SendMesgForClient(this, (OSMesg) & this->nmiMsg);
}

void IrqMgr_HandlePRENMI480(IrqMgr* this) {
    u32 ret;
    osSetTimer(&this->timer, OS_USEC_TO_CYCLES(20000), 0ull, &this->queue, (OSMesg)PRENMI500_MSG);
    ret = osAfterPreNMI();
    if (ret) {
        osSyncPrintf("osAfterPreNMIが %d を返しました！？\n", ret); // osAfterPreNMI returned %d !?
        osSetTimer(&this->timer, OS_USEC_TO_CYCLES(1000), 0ull, &this->queue, (OSMesg)PRENMI480_MSG);
    }
}

void IrqMgr_HandlePRENMI500(IrqMgr* this) {
    IrqMgr_CheckStack();
}

void IrqMgr_HandleRetrace(IrqMgr* this) {
    if (gIrqMgrRetraceTime == 0ull) {
        if (this->retraceTime == 0) {
            this->retraceTime = osGetTime();
        } else {
            gIrqMgrRetraceTime = osGetTime() - this->retraceTime;
        }
    }
    sIrqMgrRetraceCount++;
    IrqMgr_SendMesgForClient(this, (OSMesg) & this->retraceMsg);
}

void IrqMgr_ThreadEntry(void* arg0) {
    OSMesg msg;
    IrqMgr* this;
    u8 exit;

    this = (IrqMgr*)arg0;
    msg = 0;
    osSyncPrintf("ＩＲＱマネージャスレッド実行開始\n"); // Start IRQ manager thread execution
    exit = false;

    while (!exit) {
        osRecvMesg(&this->queue, &msg, OS_MESG_BLOCK);
        switch ((u32)msg) {
            case RETRACE_MSG:
                IrqMgr_HandleRetrace(this);
                break;
            case PRE_NMI_MSG:
                osSyncPrintf("PRE_NMI_MSG\n");
                osSyncPrintf("スケジューラ：PRE_NMIメッセージを受信\n"); // Scheduler: Receives PRE_NMI message
                IrqMgr_HandlePreNMI(this);
                break;
            case PRENMI450_MSG:
                osSyncPrintf("PRENMI450_MSG\n");
                osSyncPrintf("スケジューラ：PRENMI450メッセージを受信\n"); // Scheduler: Receives PRENMI450 message
                IrqMgr_HandlePRENMI450(this);
                break;
            case PRENMI480_MSG:
                osSyncPrintf("PRENMI480_MSG\n");
                osSyncPrintf("スケジューラ：PRENMI480メッセージを受信\n"); // Scheduler: Receives PRENMI480 message
                IrqMgr_HandlePRENMI480(this);
                break;
            case PRENMI500_MSG:
                osSyncPrintf("PRENMI500_MSG\n");
                osSyncPrintf("スケジューラ：PRENMI500メッセージを受信\n"); // Scheduler: Receives PRENMI500 message
                exit = true;
                IrqMgr_HandlePRENMI500(this);
                break;
            default:
                osSyncPrintf("irqmgr.c:予期しないメッセージを受け取りました(%08x)\n",
                             msg); // Unexpected message received
                break;
        }
    }

    osSyncPrintf("ＩＲＱマネージャスレッド実行終了\n"); // End of IRQ manager thread execution
}

void IrqMgr_Create(IrqMgr* this, void* stack, OSPri pri, u8 retraceCount) {
    LogUtils_CheckNullPointer("this", this, "../irqmgr.c", 346);
    LogUtils_CheckNullPointer("stack", stack, "../irqmgr.c", 347);
    this->clients = NULL;
    this->retraceMsg.type = OS_SC_RETRACE_MSG;
    this->prenmiMsg.type = OS_SC_PRE_NMI_MSG;
    this->nmiMsg.type = OS_SC_NMI_MSG;
    this->resetStatus = STATUS_IDLE;
    this->resetTime = 0;
    osCreateMesgQueue(&this->queue, this->msgBuf, ARRAY_COUNT(this->msgBuf));
    osSetEventMesg(OS_EVENT_PRENMI, &this->queue, (OSMesg)PRE_NMI_MSG);
    osViSetEvent(&this->queue, (OSMesg)RETRACE_MSG, retraceCount);
    osCreateThread(&this->thread, 0x13, IrqMgr_ThreadEntry, this, stack, pri);
    osStartThread(&this->thread);
}
