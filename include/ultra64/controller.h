#ifndef _ULTRA64_CONTROLLER_H_
#define _ULTRA64_CONTROLLER_H_

#include <ultra64.h>
#include <global.h>

#include <PR/os_cont.h>
#include <PR/os_message.h>

typedef struct
{
    u8 slot_type; //0xFF for valid command, 0x00 for don't read this controller, 0xFE for end of commands
    u8 bytes_send; //normally 1 (command)
    u8 status_hi_bytes_rec_lo; //Status errors as defined in os_cont.h; bytes normally 4
    u8 command; //0: get status, 1: read buttons, 2: read mempak, 3: write mempak, 4: read eeprom, 5: write eeprom, FF: reset controller
} PIF_header_t;

typedef struct
{
    PIF_header_t hdr;
    union{
        struct{
            u16 button;
            s8 rawStickX;
            s8 rawStickY;
        };
        struct{
            u8 ctl_type_lo;
            u8 ctl_type_hi;
            u8 ctl_status;
            u8 dummy;
        };
    };
} PIF_IO_slot_t;

typedef union
{
    u8 bytes[0x27];
    struct{
        PIF_header_t hdr;
        u8 data[0x23]; //Yes, really 0x23 bytes of data
    };
} PIF_mempak_wr_t;

typedef union
{
    u8 bytes[0x40];
    struct{
        u32 words[0xF];
        u32 status_control;
    };
    PIF_IO_slot_t slots[8];
} pif_data_buffer_t;

typedef union {
    struct {
    /* 0x0000 */ u32 unk0; //0x8 is some flag that needs to be set
    /* 0x0004 */ OSMesgQueue *ctrlrqueue;
    /* 0x0008 */ u32 ctrlridx; //0 to 3
    };
    u8 bytes[0x68];
} unk_controller_t; // size = 0x68

extern pif_data_buffer_t osPifBuffers[4];

#define SIAccessQueueSize 2
extern OSMesg osSiMesgBuff[SIAccessQueueSize];
extern OSMesgQueue gOsSiMessageQueue;
extern u32 gOsSiAccessQueueCreated; // = 0

extern pif_data_buffer_t _osPifInternalBuff;
extern u8 _osCont_lastPollType;
extern u8 _osCont_numControllers; //always 4
extern u32 gOsContInitialized; // = 0
extern OSMesgQueue _osContMesgQueue;
extern OSMesg _osContMesgBuff[4];

extern s32 osSetVibration(unk_controller_t *arg0, u32 vibrate);
extern void osSetUpMempakWrite(s32 ctrlridx, pif_data_buffer_t* buf);
extern s32 osProbeVibrationPack(OSMesgQueue* ctrlrqueue, unk_controller_t *unk_controller, u32 ctrlridx);
extern void __osSiCreateAccessQueue();
extern void __osSiGetAccess();
extern void __osSiRelAccess();
extern s32 osContInit(OSMesgQueue *mq, u8 *ctl_present_bitfield, OSContStatus *status);
extern void __osContGetInitData(u8 *ctl_present_bitfield, OSContStatus *status);
extern void __osPackRequestData(u8 command);

extern s32 osContStartReadData(OSMesgQueue *mq);
extern void osContGetReadData(OSContPad *pad);
extern void __osPackReadData();

extern s32 __osSiRawStartDma(s32 dir, void *addr);

#endif //_ULTRA64_CONTROLLER_H_
