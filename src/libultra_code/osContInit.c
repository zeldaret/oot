#include <ultra64.h>
#include <global.h>

#include <ultra64/controller.h>

pif_data_buffer_t _osPifInternalBuff;
u8 _osCont_lastPollType;
u8 _osCont_numControllers; // always 4

// Not sure if the following is a struct together with the last two variables
u16 unk_80175812;
u32 unk_80175814;
u8 unk_80175818[0x20];

u32 gOsContInitialized = 0;
OSMesgQueue _osContMesgQueue;
OSMesg _osContMesgBuff[4];

#define HALF_SECOND OS_USEC_TO_CYCLES(500000)
s32 osContInit(OSMesgQueue* mq, u8* ctl_present_bitfield, OSContStatus* status) {
    OSMesg mesg;
    s32 ret = 0;
    OSTime currentTime;
    OSTimer timer;
    OSMesgQueue timerqueue;

    if (gOsContInitialized) {
        return 0;
    }
    gOsContInitialized = 1;
    currentTime = osGetTime();
    if (HALF_SECOND > currentTime) {
        osCreateMesgQueue(&timerqueue, &mesg, 1);
        osSetTimer(&timer, HALF_SECOND - currentTime, 0, &timerqueue, &mesg);
        osRecvMesg(&timerqueue, &mesg, OS_MESG_BLOCK);
    }
    _osCont_numControllers = 4;
    __osPackRequestData(0);
    ret = __osSiRawStartDma(OS_WRITE, &_osPifInternalBuff);
    osRecvMesg(mq, &mesg, OS_MESG_BLOCK);
    ret = __osSiRawStartDma(OS_READ, &_osPifInternalBuff);
    osRecvMesg(mq, &mesg, OS_MESG_BLOCK);
    __osContGetInitData(ctl_present_bitfield, status);
    _osCont_lastPollType = 0;
    __osSiCreateAccessQueue();
    osCreateMesgQueue(&_osContMesgQueue, _osContMesgBuff, 1);
    return ret;
}

void __osContGetInitData(u8* ctl_present_bitfield, OSContStatus* status) {
    PIF_IO_slot_t* slot_ptr;
    PIF_IO_slot_t slot;
    s32 i;
    u8 bitfield_temp;
    bitfield_temp = 0;
    slot_ptr = _osPifInternalBuff.slots;
    for (i = 0; i < _osCont_numControllers; i++, slot_ptr++, status++) {
        slot = *slot_ptr;
        status->errno = (slot.hdr.status_hi_bytes_rec_lo & 0xc0) >> 4;
        if (status->errno == 0) {
            status->type = slot.ctl_type_hi << 8 | slot.ctl_type_lo;
            status->status = slot.ctl_status;
            bitfield_temp |= 1 << i;
        }
    }
    *ctl_present_bitfield = bitfield_temp;
}

void __osPackRequestData(u8 command) {
    PIF_IO_slot_t* slot_ptr;
    PIF_IO_slot_t slot;
    s32 i;
    for (i = 0; i < 0xF; i++) {
        _osPifInternalBuff.words[i] = 0;
    }
    _osPifInternalBuff.status_control = 1;
    slot.hdr.slot_type = 0xFF;
    slot.hdr.bytes_send = 1;
    slot.hdr.status_hi_bytes_rec_lo = 3;
    slot.hdr.command = command;
    slot.ctl_type_lo = 0xFF;
    slot.ctl_type_hi = 0xFF;
    slot.ctl_status = 0xFF;
    slot.dummy = 0xFF;
    slot_ptr = _osPifInternalBuff.slots;
    for (i = 0; i < _osCont_numControllers; i++) {
        *slot_ptr++ = slot;
    }
    slot_ptr->hdr.slot_type = 254;
}
