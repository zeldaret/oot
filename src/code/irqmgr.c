/**
 * @file irqmgr.c
 *
 * This file implements a manager for forwarding three key system interrupt events to
 * registered clients. These interrupts are:
 *
 *  - VI Retrace
 *      This event is sent to the IRQ manager by the OS VI manager which only, supports
 *      the forwarding of VI events to a single message queue. The IRQ, manager will
 *      forward these events to every registered client. VI retrace, events are received
 *      when the Video Interface has reached the start of the vertical blanking interval,
 *      happening, at approximately 60Hz on NTSC and 50Hz on PAL. Many threads sit idle
 *      until a, VI Retrace event wakes them up, at which point they will perform their
 *      task, and then return to idle to await the next retrace.
 *
 *  - Pre-NMI
 *      This event is sent to the IRQ manager by the OS Interrupt Handler when the reset
 *      button on the N64 control deck is pressed. This event is forwarded to clients to
 *      inform them that a reset will occur in 0.5s / 500ms and to begin any shutdown
 *      procedures.
 *
 *  - NMI
 *      This event is sent at 450ms into the Pre-NMI phase, informing clients that a
 *      reset is imminent.
 */
#include "global.h"
#include "vt.h"

vu32 gIrqMgrResetStatus = IRQ_RESET_IDLE;
volatile OSTime sIrqMgrResetTime = 0;
volatile OSTime gIrqMgrRetraceTime = 0;
u32 sIrqMgrRetraceCount = 0;

// Internal messages
#define RETRACE_MSG 666
#define PRE_NMI_MSG 669
#define PRENMI450_MSG 671
#define PRENMI480_MSG 672
#define PRENMI500_MSG 673

/**
 * Registers a client and an associated message queue with the irq manager. When an
 * interrupt event is received by the irq manager, these clients will be notified of
 * the event.
 *
 * @param this the IrqMgr instance to register with.
 * @param client client to register.
 * @param msgQ message queue to send notifications of interrupts to, associated with the client.
 */
void IrqMgr_AddClient(IrqMgr* this, IrqMgrClient* client, OSMesgQueue* msgQ) {
    OSIntMask prevInt;

    LogUtils_CheckNullPointer("this", this, "../irqmgr.c", 96);
    LogUtils_CheckNullPointer("c", client, "../irqmgr.c", 97);
    LogUtils_CheckNullPointer("msgQ", msgQ, "../irqmgr.c", 98);

    prevInt = osSetIntMask(OS_IM_NONE);

    client->queue = msgQ;
    client->prev = this->clients;
    this->clients = client;

    osSetIntMask(prevInt);

    if (this->resetStatus > IRQ_RESET_IDLE) {
        osSendMesg(client->queue, (OSMesg) & this->prenmiMsg, OS_MESG_NOBLOCK);
    }

    if (this->resetStatus >= IRQ_RESET_NMI) {
        osSendMesg(client->queue, (OSMesg) & this->nmiMsg, OS_MESG_NOBLOCK);
    }
}

void IrqMgr_RemoveClient(IrqMgr* this, IrqMgrClient* client) {
    IrqMgrClient* iterClient = this->clients;
    IrqMgrClient* lastClient = NULL;
    OSIntMask prevInt;

    LogUtils_CheckNullPointer("this", this, "../irqmgr.c", 129);
    LogUtils_CheckNullPointer("c", client, "../irqmgr.c", 130);

    // Disable interrupts to prevent a thread context switch while the linked list is modified
    prevInt = osSetIntMask(OS_IM_NONE);

    // Remove the client
    while (iterClient != NULL) {
        if (iterClient == client) {
            if (lastClient != NULL) {
                lastClient->prev = client->prev;
            } else {
                this->clients = client->prev;
            }
            break;
        }
        lastClient = iterClient;
        iterClient = iterClient->prev;
    }

    osSetIntMask(prevInt);
}

/**
 * Send `msg` to every registered client if the message queue is not full. The message is
 * appended to the back of the queue.
 */
void IrqMgr_SendMesgToClients(IrqMgr* this, OSMesg msg) {
    IrqMgrClient* client;

    for (client = this->clients; client != NULL; client = client->prev) {
        if (MQ_IS_FULL(client->queue)) {
            // "irqmgr_SendMesgForClient: Message queue is overflowing mq=%08x cnt=%d"
            osSyncPrintf(
                VT_COL(RED, WHITE) "irqmgr_SendMesgForClient:メッセージキューがあふれています mq=%08x cnt=%d\n" VT_RST,
                client->queue, MQ_GET_COUNT(client->queue));
        } else {
            osSendMesg(client->queue, msg, OS_MESG_NOBLOCK);
        }
    }
}

/**
 * Send `msg` to every registered client if the message queue is not full. This appears to be for
 * high-priority messages that should be jammed to the front of the queue, however a bug prevents
 * this from working in this way and the message is appended to the back of the queue as in
 * `IrqMgr_SendMesgToClients`.
 *
 * @see IrqMgr_SendMesgToClients
 */
void IrqMgr_JamMesgToClients(IrqMgr* this, OSMesg msg) {
    IrqMgrClient* client;

    for (client = this->clients; client != NULL; client = client->prev) {
        if (MQ_IS_FULL(client->queue)) {
            // "irqmgr_JamMesgForClient: Message queue is overflowing mq=%08x cnt=%d"
            osSyncPrintf(
                VT_COL(RED, WHITE) "irqmgr_JamMesgForClient:メッセージキューがあふれています mq=%08x cnt=%d\n" VT_RST,
                client->queue, MQ_GET_COUNT(client->queue));
        } else {
            //! @bug The function's name suggests this would use osJamMesg rather than osSendMesg, using the
            //! latter makes this function no different than IrqMgr_SendMesgToClients.
            osSendMesg(client->queue, msg, OS_MESG_NOBLOCK);
        }
    }
}

/**
 * Runs when the Pre-NMI OS Event is received. This indicates that the console will reset in 0.5s / 500ms.
 * Updates the reset status and time before forwarding the Pre-NMI message to registered clients so they
 * may begin shutting down in advance of the reset.
 */
void IrqMgr_HandlePreNMI(IrqMgr* this) {
    u64 preNmi = IRQ_RESET_PRENMI; // required to match

    gIrqMgrResetStatus = preNmi;
    this->resetStatus = IRQ_RESET_PRENMI;
    sIrqMgrResetTime = this->resetTime = osGetTime();

    // Schedule a PRENMI450 message to be handled in 450ms
    osSetTimer(&this->timer, OS_MSEC_TO_CYCLES(450), 0, &this->queue, (OSMesg)PRENMI450_MSG);
    IrqMgr_JamMesgToClients(this, (OSMesg) & this->prenmiMsg);
}

void IrqMgr_CheckStacks(void) {
    // "0.5 seconds after PRENMI"
    osSyncPrintf("irqmgr.c: PRENMIから0.5秒経過\n");

    if (StackCheck_Check(NULL) == STACK_STATUS_OK) {
        // "The stack looks ok"
        osSyncPrintf("スタックは大丈夫みたいです\n");
    } else {
        osSyncPrintf("%c", BEL);
        osSyncPrintf(VT_FGCOL(RED));
        // "Stack overflow or dangerous"
        osSyncPrintf("スタックがオーバーフローしたか危険な状態です\n");
        // "Increase stack size early or don't consume stack"
        osSyncPrintf("早々にスタックサイズを増やすか、スタックを消費しないようにしてください\n");
        osSyncPrintf(VT_RST);
    }
}

void IrqMgr_HandlePRENMI450(IrqMgr* this) {
    u64 nmi = IRQ_RESET_NMI; // required to match

    gIrqMgrResetStatus = nmi;
    this->resetStatus = IRQ_RESET_NMI;

    // Schedule a PRENMI480 message to be handled in 30ms
    osSetTimer(&this->timer, OS_MSEC_TO_CYCLES(30), 0, &this->queue, (OSMesg)PRENMI480_MSG);
    // Send the NMI event to clients
    IrqMgr_SendMesgToClients(this, (OSMesg) & this->nmiMsg);
}

void IrqMgr_HandlePRENMI480(IrqMgr* this) {
    u32 result;

    // Schedule a PRENMI500 message to be handled in 20ms
    osSetTimer(&this->timer, OS_MSEC_TO_CYCLES(20), 0, &this->queue, (OSMesg)PRENMI500_MSG);

    result = osAfterPreNMI();
    if (result != 0) {
        // "osAfterPreNMI returned %d !?"
        osSyncPrintf("osAfterPreNMIが %d を返しました！？\n", result);
        // osAfterPreNMI failed, try again in 1ms
        osSetTimer(&this->timer, OS_MSEC_TO_CYCLES(1), 0, &this->queue, (OSMesg)PRENMI480_MSG);
    }
}

void IrqMgr_HandlePRENMI500(IrqMgr* this) {
    IrqMgr_CheckStacks();
}

/**
 * Runs on each VI retrace, measures the time elapsed between the first and second VI retrace
 * and dispatches VI retrace messages to each registered Irq Client
 */
void IrqMgr_HandleRetrace(IrqMgr* this) {
    if (gIrqMgrRetraceTime == 0) {
        if (this->retraceTime == 0) {
            this->retraceTime = osGetTime();
        } else {
            gIrqMgrRetraceTime = osGetTime() - this->retraceTime;
        }
    }
    sIrqMgrRetraceCount++;
    IrqMgr_SendMesgToClients(this, (OSMesg) & this->retraceMsg);
}

void IrqMgr_ThreadEntry(void* arg) {
    u32 msg = 0;
    IrqMgr* this = (IrqMgr*)arg;
    u8 exit;

    // "Start IRQ manager thread execution"
    osSyncPrintf("ＩＲＱマネージャスレッド実行開始\n");
    exit = false;

    while (!exit) {
        osRecvMesg(&this->queue, (OSMesg*)&msg, OS_MESG_BLOCK);
        switch (msg) {
            case RETRACE_MSG:
                IrqMgr_HandleRetrace(this);
                break;
            case PRE_NMI_MSG:
                osSyncPrintf("PRE_NMI_MSG\n");
                // "Scheduler: Receives PRE_NMI message"
                osSyncPrintf("スケジューラ：PRE_NMIメッセージを受信\n");
                IrqMgr_HandlePreNMI(this);
                break;
            case PRENMI450_MSG:
                osSyncPrintf("PRENMI450_MSG\n");
                // "Scheduler: Receives PRENMI450 message"
                osSyncPrintf("スケジューラ：PRENMI450メッセージを受信\n");
                IrqMgr_HandlePRENMI450(this);
                break;
            case PRENMI480_MSG:
                osSyncPrintf("PRENMI480_MSG\n");
                // "Scheduler: Receives PRENMI480 message"
                osSyncPrintf("スケジューラ：PRENMI480メッセージを受信\n");
                IrqMgr_HandlePRENMI480(this);
                break;
            case PRENMI500_MSG:
                osSyncPrintf("PRENMI500_MSG\n");
                // "Scheduler: Receives PRENMI500 message"
                osSyncPrintf("スケジューラ：PRENMI500メッセージを受信\n");
                exit = true;
                IrqMgr_HandlePRENMI500(this);
                break;
            default:
                // "Unexpected message received"
                osSyncPrintf("irqmgr.c:予期しないメッセージを受け取りました(%08x)\n", msg);
                break;
        }
    }

    // "End of IRQ manager thread execution"
    osSyncPrintf("ＩＲＱマネージャスレッド実行終了\n");
}

void IrqMgr_Init(IrqMgr* this, void* stack, OSPri pri, u8 retraceCount) {
    LogUtils_CheckNullPointer("this", this, "../irqmgr.c", 346);
    LogUtils_CheckNullPointer("stack", stack, "../irqmgr.c", 347);

    this->clients = NULL;
    // Messages to send to each client message queue on each interrupt event
    this->retraceMsg.type = OS_SC_RETRACE_MSG;
    this->prenmiMsg.type = OS_SC_PRE_NMI_MSG;
    this->nmiMsg.type = OS_SC_NMI_MSG;
    this->resetStatus = IRQ_RESET_IDLE;
    this->resetTime = 0;

    osCreateMesgQueue(&this->queue, this->msgBuf, ARRAY_COUNT(this->msgBuf));
    osSetEventMesg(OS_EVENT_PRENMI, &this->queue, (OSMesg)PRE_NMI_MSG);
    osViSetEvent(&this->queue, (OSMesg)RETRACE_MSG, retraceCount);
    osCreateThread(&this->thread, 19, IrqMgr_ThreadEntry, this, stack, pri);
    osStartThread(&this->thread);
}
