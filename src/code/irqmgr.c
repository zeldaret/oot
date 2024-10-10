/**
 * @file irqmgr.c
 *
 * This file implements a manager for forwarding three key system interrupt events to
 * registered clients.
 * Together with sched.c, these systems implement the libultra video and task scheduling
 * model from the libultra "sched" module, with improved functionality in the handling of
 * Pre-NMI related events.
 *
 * The interrupts the IRQ manager deals with are:
 *  - Vertical Retrace
 *      This event is sent to the IRQ manager by the OS VI manager which only supports
 *      the forwarding of VI events to a single message queue. The IRQ manager will
 *      forward these events to every registered client. Vertical retrace events are
 *      received when the Video Interface has reached the start of the vertical blanking
 *      interval, happening at approximately 60Hz on NTSC and 50Hz on PAL. Many threads
 *      sit idle until a vertical retrace event wakes them up, at which point they will
 *      perform their task and then return to idle to await the next retrace.
 *
 *  - Pre-NMI
 *      This event is sent to the IRQ manager by the OS Interrupt Handler when the reset
 *      button on the N64 control deck is pressed. This event is forwarded to clients to
 *      inform them that a reset will occur in at least 0.5s / 500ms so they may begin any
 *      shutdown procedures.
 *
 *  - NMI
 *      This event is sent at 450ms into the Pre-NMI phase, informing clients that the
 *      mandatory 0.5s of Pre-NMI is almost over and a reset may be imminent. This event
 *      is not to be confused with the hardware NMI interrupt signalled when the CPU is
 *      to fully reset, as by the time that interrupt is received there is no time left
 *      to do anything.
 *
 * @see sched.c
 */
#include "global.h"
#include "terminal.h"
#include "versions.h"

vu32 gIrqMgrResetStatus = IRQ_RESET_STATUS_IDLE;
volatile OSTime sIrqMgrResetTime = 0;
volatile OSTime gIrqMgrRetraceTime = 0;
u32 sIrqMgrRetraceCount = 0;

// Internal messages
#define IRQ_RETRACE_MSG 666
#define IRQ_PRENMI_MSG 669
#if OOT_VERSION < PAL_1_0
#define IRQ_PRENMI500_MSG 670
#else
#define IRQ_PRENMI450_MSG 671
#define IRQ_PRENMI480_MSG 672
#define IRQ_PRENMI500_MSG 673
#endif

/**
 * Registers a client and an associated message queue with the IRQ manager. When an
 * interrupt event is received by the IRQ manager, these clients will be notified of
 * the event.
 *
 * @param irqMgr the IrqMgr instance to register with.
 * @param client client to register.
 * @param msgQueue message queue to send notifications of interrupts to, associated with the client.
 */
void IrqMgr_AddClient(IrqMgr* irqMgr, IrqMgrClient* client, OSMesgQueue* msgQueue) {
    OSIntMask prevInt;

    LOG_UTILS_CHECK_NULL_POINTER("this", irqMgr, "../irqmgr.c", 96);
    LOG_UTILS_CHECK_NULL_POINTER("c", client, "../irqmgr.c", 97);
    LOG_UTILS_CHECK_NULL_POINTER("msgQ", msgQueue, "../irqmgr.c", 98);

    prevInt = osSetIntMask(OS_IM_NONE);

    client->queue = msgQueue;
    client->prev = irqMgr->clients;
    irqMgr->clients = client;

    osSetIntMask(prevInt);

    if (irqMgr->resetStatus >= IRQ_RESET_STATUS_PRENMI) {
        osSendMesg(client->queue, (OSMesg)&irqMgr->prenmiMsg, OS_MESG_NOBLOCK);
    }

    if (irqMgr->resetStatus >= IRQ_RESET_STATUS_NMI) {
        osSendMesg(client->queue, (OSMesg)&irqMgr->nmiMsg, OS_MESG_NOBLOCK);
    }
}

void IrqMgr_RemoveClient(IrqMgr* irqMgr, IrqMgrClient* client) {
    IrqMgrClient* iterClient = irqMgr->clients;
    IrqMgrClient* lastClient = NULL;
    OSIntMask prevInt;

    LOG_UTILS_CHECK_NULL_POINTER("this", irqMgr, "../irqmgr.c", 129);
    LOG_UTILS_CHECK_NULL_POINTER("c", client, "../irqmgr.c", 130);

    // Disable interrupts to prevent a thread context switch while the linked list is modified
    prevInt = osSetIntMask(OS_IM_NONE);

    // Remove the client
    while (iterClient != NULL) {
        if (iterClient == client) {
            if (lastClient != NULL) {
                lastClient->prev = client->prev;
            } else {
                irqMgr->clients = client->prev;
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
void IrqMgr_SendMesgToClients(IrqMgr* irqMgr, OSMesg msg) {
    IrqMgrClient* client;

    for (client = irqMgr->clients; client != NULL; client = client->prev) {
        if (MQ_IS_FULL(client->queue)) {
            PRINTF(VT_COL(RED, WHITE) T("irqmgr_SendMesgForClient:メッセージキューがあふれています mq=%08x cnt=%d\n",
                                        "irqmgr_SendMesgForClient: Message queue is overflowing mq=%08x cnt=%d\n")
                       VT_RST,
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
void IrqMgr_JamMesgToClients(IrqMgr* irqMgr, OSMesg msg) {
    IrqMgrClient* client;

    for (client = irqMgr->clients; client != NULL; client = client->prev) {
        if (MQ_IS_FULL(client->queue)) {
            PRINTF(VT_COL(RED, WHITE) T("irqmgr_JamMesgForClient:メッセージキューがあふれています mq=%08x cnt=%d\n",
                                        "irqmgr_JamMesgForClient: Message queue is overflowing mq=%08x cnt=%d") VT_RST,
                   client->queue, MQ_GET_COUNT(client->queue));
        } else {
            //! @bug The function's name suggests this would use osJamMesg rather than osSendMesg, using the
            //! latter makes this function no different than IrqMgr_SendMesgToClients.
            osSendMesg(client->queue, msg, OS_MESG_NOBLOCK);
        }
    }
}

/**
 * Runs when the Pre-NMI OS Event is received. This indicates that the console will reset in at least
 * 0.5s / 500ms. Updates the reset status and time before forwarding the Pre-NMI message to registered
 * clients so they may begin shutting down in advance of the reset.
 */
void IrqMgr_HandlePreNMI(IrqMgr* irqMgr) {
    u64 preNmi = IRQ_RESET_STATUS_PRENMI; // required to match

    gIrqMgrResetStatus = preNmi;
    irqMgr->resetStatus = IRQ_RESET_STATUS_PRENMI;
    sIrqMgrResetTime = irqMgr->resetTime = osGetTime();

#if OOT_VERSION < PAL_1_0
    // Schedule a PRENMI500 message to be handled in 500ms
    osSetTimer(&irqMgr->timer, OS_USEC_TO_CYCLES(500000), 0, &irqMgr->queue, (OSMesg)IRQ_PRENMI500_MSG);
#else
    // Schedule a PRENMI450 message to be handled in 450ms
    osSetTimer(&irqMgr->timer, OS_USEC_TO_CYCLES(450000), 0, &irqMgr->queue, (OSMesg)IRQ_PRENMI450_MSG);
#endif
    IrqMgr_JamMesgToClients(irqMgr, (OSMesg)&irqMgr->prenmiMsg);
}

void IrqMgr_CheckStacks(void) {
    PRINTF(T("irqmgr.c: PRENMIから0.5秒経過\n", "irqmgr.c: 0.5 seconds after PRENMI\n"));

    if (StackCheck_Check(NULL) == STACK_STATUS_OK) {
        PRINTF(T("スタックは大丈夫みたいです\n", "The stack looks ok\n"));
    } else {
        PRINTF("%c", BEL);
        PRINTF(VT_FGCOL(RED));
        PRINTF(T("スタックがオーバーフローしたか危険な状態です\n", "Stack overflow or dangerous\n"));
        PRINTF(T("早々にスタックサイズを増やすか、スタックを消費しないようにしてください\n",
                 "Increase stack size early or don't consume stack\n"));
        PRINTF(VT_RST);
    }
}

#if OOT_VERSION < PAL_1_0

void IrqMgr_HandlePreNMI500(IrqMgr* irqMgr) {
    u64 nmi = IRQ_RESET_STATUS_NMI; // required to match
    u32 result;

    gIrqMgrResetStatus = nmi;
    irqMgr->resetStatus = IRQ_RESET_STATUS_NMI;

    IrqMgr_SendMesgToClients(irqMgr, (OSMesg)&irqMgr->nmiMsg);

    result = osAfterPreNMI();
    if (result != 0) {
        // Schedule another PRENMI500 message to be handled in 1ms
        osSetTimer(&irqMgr->timer, OS_USEC_TO_CYCLES(1000), 0, &irqMgr->queue, (OSMesg)IRQ_PRENMI500_MSG);
    }
    IrqMgr_CheckStacks();
}

#else

void IrqMgr_HandlePreNMI450(IrqMgr* irqMgr) {
    u64 nmi = IRQ_RESET_STATUS_NMI; // required to match

    gIrqMgrResetStatus = nmi;
    irqMgr->resetStatus = IRQ_RESET_STATUS_NMI;

    // Schedule a PRENMI480 message to be handled in 30ms
    osSetTimer(&irqMgr->timer, OS_USEC_TO_CYCLES(30000), 0, &irqMgr->queue, (OSMesg)IRQ_PRENMI480_MSG);
    // Send the NMI event to clients
    IrqMgr_SendMesgToClients(irqMgr, (OSMesg)&irqMgr->nmiMsg);
}

void IrqMgr_HandlePreNMI480(IrqMgr* irqMgr) {
    u32 result;

    // Schedule a PRENMI500 message to be handled in 20ms
    osSetTimer(&irqMgr->timer, OS_USEC_TO_CYCLES(20000), 0, &irqMgr->queue, (OSMesg)IRQ_PRENMI500_MSG);

    result = osAfterPreNMI();
    if (result != 0) {
        PRINTF(T("osAfterPreNMIが %d を返しました！？\n", "osAfterPreNMI returned %d !?\n"), result);
        // osAfterPreNMI failed, try again in 1ms
        //! @bug setting the same timer for a second time without letting the first one complete breaks
        //! the timer linked list
        osSetTimer(&irqMgr->timer, OS_USEC_TO_CYCLES(1000), 0, &irqMgr->queue, (OSMesg)IRQ_PRENMI480_MSG);
    }
}

void IrqMgr_HandlePreNMI500(IrqMgr* irqMgr) {
    IrqMgr_CheckStacks();
}

#endif

/**
 * Runs on each vertical retrace
 *
 * Measures the time elapsed between the first and second vertical retrace and
 * dispatches vertical retrace messages to each registered Irq Client
 */
void IrqMgr_HandleRetrace(IrqMgr* irqMgr) {
    if (gIrqMgrRetraceTime == 0) {
        if (irqMgr->retraceTime == 0) {
            irqMgr->retraceTime = osGetTime();
        } else {
            gIrqMgrRetraceTime = osGetTime() - irqMgr->retraceTime;
        }
    }
    sIrqMgrRetraceCount++;
    IrqMgr_SendMesgToClients(irqMgr, (OSMesg)&irqMgr->retraceMsg);
}

void IrqMgr_ThreadEntry(void* arg) {
    u32 msg = 0;
    IrqMgr* irqMgr = (IrqMgr*)arg;
    u8 exit;

    PRINTF(T("ＩＲＱマネージャスレッド実行開始\n", "Start IRQ manager thread execution\n"));
    exit = false;

    while (!exit) {
        osRecvMesg(&irqMgr->queue, (OSMesg*)&msg, OS_MESG_BLOCK);
        switch (msg) {
#if OOT_VERSION < PAL_1_0
            default:
                break;
#endif

            case IRQ_RETRACE_MSG:
                IrqMgr_HandleRetrace(irqMgr);
                break;

            case IRQ_PRENMI_MSG:
                PRINTF("PRE_NMI_MSG\n");
                PRINTF(T("スケジューラ：PRE_NMIメッセージを受信\n", "Scheduler: Receives PRE_NMI message\n"));
                IrqMgr_HandlePreNMI(irqMgr);
                break;

#if OOT_VERSION >= PAL_1_0
            case IRQ_PRENMI450_MSG:
                PRINTF("PRENMI450_MSG\n");
                PRINTF(T("スケジューラ：PRENMI450メッセージを受信\n", "Scheduler: Receives PRENMI450 message\n"));
                IrqMgr_HandlePreNMI450(irqMgr);
                break;

            case IRQ_PRENMI480_MSG:
                PRINTF("PRENMI480_MSG\n");
                PRINTF(T("スケジューラ：PRENMI480メッセージを受信\n", "Scheduler: Receives PRENMI480 message\n"));
                IrqMgr_HandlePreNMI480(irqMgr);
                break;
#endif

            case IRQ_PRENMI500_MSG:
                PRINTF("PRENMI500_MSG\n");
                PRINTF(T("スケジューラ：PRENMI500メッセージを受信\n", "Scheduler: Receives PRENMI500 message\n"));
                IrqMgr_HandlePreNMI500(irqMgr);
                exit = true;
                break;

#if OOT_VERSION >= PAL_1_0
            default:
                PRINTF(T("irqmgr.c:予期しないメッセージを受け取りました(%08x)\n",
                         "irqmgr.c: Unexpected message received (%08x)\n"),
                       msg);
                break;
#endif
        }
    }

    PRINTF(T("ＩＲＱマネージャスレッド実行終了\n", "End of IRQ manager thread execution\n"));
}

void IrqMgr_Init(IrqMgr* irqMgr, void* stack, OSPri pri, u8 retraceCount) {
    LOG_UTILS_CHECK_NULL_POINTER("this", irqMgr, "../irqmgr.c", 346);
    LOG_UTILS_CHECK_NULL_POINTER("stack", stack, "../irqmgr.c", 347);

    irqMgr->clients = NULL;
    // Messages to send to each client message queue on each interrupt event
    irqMgr->retraceMsg.type = OS_SC_RETRACE_MSG;
    irqMgr->prenmiMsg.type = OS_SC_PRE_NMI_MSG;
    irqMgr->nmiMsg.type = OS_SC_NMI_MSG;
    irqMgr->resetStatus = IRQ_RESET_STATUS_IDLE;
    irqMgr->resetTime = 0;

    osCreateMesgQueue(&irqMgr->queue, irqMgr->msgBuf, ARRAY_COUNT(irqMgr->msgBuf));
    osSetEventMesg(OS_EVENT_PRENMI, &irqMgr->queue, (OSMesg)IRQ_PRENMI_MSG);
    osViSetEvent(&irqMgr->queue, (OSMesg)IRQ_RETRACE_MSG, retraceCount);
    osCreateThread(&irqMgr->thread, THREAD_ID_IRQMGR, IrqMgr_ThreadEntry, irqMgr, stack, pri);
    osStartThread(&irqMgr->thread);
}
