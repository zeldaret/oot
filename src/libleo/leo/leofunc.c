#include "ultra64/leo.h"
#include "ultra64/leoappli.h"
#include "ultra64/leodrive.h"
#include "array_count.h"
#include "ultra64.h"

static s32 __leoResetCalled = false;
static s32 __leoQueuesCreated = false;

static OSMesgQueue LEOpost_que;
static OSMesg LEOpost_que_buf[1];

void leoInitialize(OSPri compri, OSPri intpri, OSMesg* command_que_buf, u32 cmd_buff_size) {
    u32 savedMask;
    OSPri oldPri;
    OSPri myPri;
    OSPri pri;

    if (intpri < compri) {
        pri = compri;
    } else {
        pri = intpri;
    }

    oldPri = -1;

    myPri = osGetThreadPri(NULL);
    if (myPri < pri) {
        oldPri = myPri;
        osSetThreadPri(NULL, pri);
    }

    savedMask = __osDisableInt();

    __leoQueuesCreated = true;
    osCreateMesgQueue(&LEOcommand_que, command_que_buf, cmd_buff_size);
    osCreateMesgQueue(&LEOcontrol_que, LEOcontrol_que_buf, ARRAY_COUNT(LEOcontrol_que_buf));
    osCreateMesgQueue(&LEOevent_que, LEOevent_que_buf, ARRAY_COUNT(LEOevent_que_buf));
    osCreateMesgQueue(&LEOdma_que, LEOdma_que_buf, ARRAY_COUNT(LEOdma_que_buf));
    osCreateMesgQueue(&LEOblock_que, LEOblock_que_buf, ARRAY_COUNT(LEOblock_que_buf));
    osCreateMesgQueue(&LEOpost_que, LEOpost_que_buf, ARRAY_COUNT(LEOpost_que_buf));
    osCreateThread(&LEOcommandThread, 1, leomain, NULL, STACK_TOP(LEOcommandThreadStack), compri);
    osStartThread(&LEOcommandThread);
    osCreateThread(&LEOinterruptThread, 1, leointerrupt, NULL, STACK_TOP(LEOinterruptThreadStack), intpri);
    osStartThread(&LEOinterruptThread);
    osSetEventMesg(2, &LEOevent_que, (OSMesg)0x30000);
    osSendMesg(&LEOblock_que, NULL, OS_MESG_NOBLOCK);
    __osRestoreInt(savedMask);

    if (oldPri != -1) {
        osSetThreadPri(NULL, oldPri);
    }
}

void leoCommand(void* cmd_blk_addr) {
    if (__leoResetCalled != 0) {
        ((LEOCmd*)cmd_blk_addr)->header.status = LEO_STATUS_CHECK_CONDITION;
        ((LEOCmd*)cmd_blk_addr)->header.sense = LEO_SENSE_WAITING_NMI;
        if ((((LEOCmd*)cmd_blk_addr)->header.control & LEO_CONTROL_POST) != 0) {
            osSendMesg(((LEOCmd*)cmd_blk_addr)->header.post, (OSMesg)LEO_SENSE_WAITING_NMI, OS_MESG_BLOCK);
        }
        return;
    }
    osRecvMesg(&LEOblock_que, NULL, OS_MESG_BLOCK);
    ((LEOCmd*)cmd_blk_addr)->header.status = LEO_STATUS_BUSY;
    ((LEOCmd*)cmd_blk_addr)->header.sense = LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION;

    switch (((LEOCmd*)cmd_blk_addr)->header.command) {
        case 1:
            LEOclr_que_flag = 0xFF;
            leoClr_queue();
            LEOclr_que_flag = 0;
            ((LEOCmd*)cmd_blk_addr)->header.status = LEO_STATUS_GOOD;
            if (((LEOCmd*)cmd_blk_addr)->header.control & LEO_CONTROL_POST) {
                osSendMesg(((LEOCmd*)cmd_blk_addr)->header.post, (OSMesg)0, OS_MESG_BLOCK);
            }
            break;

        case 5:
        case 6:
            ((LEOCmd*)cmd_blk_addr)->data.readWrite.rwBytes = 0;
            goto cmd_queing;

        default:
            if ((u32)(((LEOCmd*)cmd_blk_addr)->header.command - 1) >= 0xE) {
                ((LEOCmd*)cmd_blk_addr)->header.sense = LEO_SENSE_INVALID_COMMAND_OPERATION_CODE;
                ((LEOCmd*)cmd_blk_addr)->header.status = LEO_STATUS_CHECK_CONDITION;
                break;
            }

        cmd_queing:
            if (osSendMesg(&LEOcommand_que, (OSMesg)cmd_blk_addr, OS_MESG_NOBLOCK) != 0) {
                ((LEOCmd*)cmd_blk_addr)->header.sense = LEO_SENSE_QUEUE_FULL;
                ((LEOCmd*)cmd_blk_addr)->header.status = LEO_STATUS_CHECK_CONDITION;
            }
    }
    osSendMesg(&LEOblock_que, (OSMesg)0, OS_MESG_BLOCK);
}

static const u8 zero[] = { 0 };

void LeoReset(void) {
    __leoResetCalled = true;
    if (__leoQueuesCreated) {
        LEOclr_que_flag = 0xFF;
        leoClr_queue();
        LEOclr_que_flag = 0;
        osRecvMesg(&LEOevent_que, NULL, OS_MESG_NOBLOCK);
        osSendMesg(&LEOevent_que, (OSMesg)0xA0000, OS_MESG_BLOCK);
        osSendMesg(&LEOcommand_que, (OSMesg)zero, OS_MESG_BLOCK);
    }
}

s32 __leoSetReset(void) {
    leoDrive_reset();
    return 0;
}

// SENSE or ERROR?
s32 LeoResetClear(void) {
    LEOCmdHeader resetclear;

    resetclear.command = 0xF;
    resetclear.control = LEO_CONTROL_POST;
    resetclear.status = 0;
    resetclear.post = &LEOpost_que;
    if (osSendMesg(&LEOcommand_que, &resetclear.command, OS_MESG_NOBLOCK) != 0) {
        return LEO_SENSE_QUEUE_FULL;
    }
    osRecvMesg(&LEOpost_que, NULL, OS_MESG_BLOCK);
    if (resetclear.status == LEO_STATUS_GOOD) {
        return LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION;
    }
    return resetclear.sense;
}
