#include <ultra64.h>
#include <global.h>

#include <ultra64/controller.h>

pif_data_buffer_t osPifBuffers[4];

// func_800CF990 in 1.0
s32 osSetVibration(unk_controller_t* arg0, u32 vibrate) {
    s32 i;
    s32 ret;
    u8* buf;

    buf = (u8*)&osPifBuffers[arg0->ctrlridx];
    if (!(arg0->unk0 & 8)) {
        return 5;
    }
    __osSiGetAccess();
    osPifBuffers[arg0->ctrlridx].status_control = 1;
    buf += arg0->ctrlridx;
    for (i = 0; i < 0x20; i++) {
        ((PIF_mempak_wr_t*)buf)->data[i + 2] = vibrate;
    }

    _osCont_lastPollType = (u8)0xfe; // last controller poll type?
    __osSiRawStartDma(OS_WRITE, &osPifBuffers[arg0->ctrlridx]);
    osRecvMesg(arg0->ctrlrqueue, NULL, OS_MESG_BLOCK);
    __osSiRawStartDma(OS_READ, &osPifBuffers[arg0->ctrlridx]);
    osRecvMesg(arg0->ctrlrqueue, NULL, OS_MESG_BLOCK);
    ret = ((PIF_mempak_wr_t*)buf)->hdr.status_hi_bytes_rec_lo & 0xc0;
    if (!ret) {
        if (!vibrate) {
            if (((PIF_mempak_wr_t*)buf)->data[0x22] != 0) {
                ret = 4;
            }
        } else {
            if (((PIF_mempak_wr_t*)buf)->data[0x22] != 0xeb) {
                ret = 4;
            }
        }
    }
    __osSiRelAccess();
    return ret;
}

void osSetUpMempakWrite(s32 ctrlridx, pif_data_buffer_t* buf) {
    u8* buf_ptr = (u8*)buf;
    PIF_mempak_wr_t mempakwr;
    s32 i;
    mempakwr.hdr.slot_type = 0xFF;
    mempakwr.hdr.bytes_send = 0x23;
    mempakwr.hdr.status_hi_bytes_rec_lo = 1;
    mempakwr.hdr.command = 3; // write mempak
    mempakwr.data[0] = 0xC0;
    mempakwr.data[1] = (u8)(func_80106170(0x600) | 0xC000); // yes, this is correct
    if (ctrlridx != 0) {
        for (i = 0; i < ctrlridx; ++i) {
            *buf_ptr++ = 0;
        }
    }
    *(PIF_mempak_wr_t*)buf_ptr = mempakwr;
    buf_ptr += 0x27;
    *buf_ptr = 0xFE;
}

typedef struct {
    u8 unk[0x20];
} unk_sp24_t;

s32 osProbeVibrationPack(OSMesgQueue* ctrlrqueue, unk_controller_t* unk_controller, u32 ctrlridx) {
    s32 ret;
    unk_sp24_t sp24;

    unk_controller->ctrlrqueue = ctrlrqueue;
    unk_controller->ctrlridx = ctrlridx;
    unk_controller->bytes[0x65] = (u8)0xff;
    unk_controller->unk0 = 0;

    ret = func_80104C80(unk_controller, 0xfe);
    if (ret == 2) {
        ret = func_80104C80(unk_controller, 0x80);
    }
    if (ret != 0) {
        return ret;
    }
    ret = func_80105F40(ctrlrqueue, ctrlridx, 0x400, &sp24);
    ret = ret;
    if (ret == 2) {
        ret = 4; //"Controller pack communication error"
    }
    if (ret != 0) {
        return ret;
    }
    if (sp24.unk[0x1F] == 0xfe) {
        return 0xb; // possibly controller pack? (Some other valid return value other than vibration pack)
    }
    ret = func_80104C80(unk_controller, 0x80);
    if (ret == 2) {
        ret = 4; //"Controller pack communication error"
    }
    if (ret != 0) {
        return ret;
    }
    ret = func_80105F40(ctrlrqueue, ctrlridx, 0x400, &sp24);
    if (ret == 2) {
        ret = 4; //"Controller pack communication error"
    }
    if (ret != 0) {
        return ret;
    }
    if (sp24.unk[0x1F] != 0x80) {
        return 0xb; // possibly controller pack? (Some other valid return value other than vibration pack)
    }
    if ((unk_controller->unk0 & 8) == 0) {
        osSetUpMempakWrite(ctrlridx, &osPifBuffers[ctrlridx]);
    }
    unk_controller->unk0 = 8;
    return 0; //"Recognized vibration pack"
}
