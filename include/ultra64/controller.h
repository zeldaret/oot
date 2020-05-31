#ifndef _ULTRA64_CONTROLLER_H_
#define _ULTRA64_CONTROLLER_H_

#include <ultra64.h>

#include <PR/os_cont.h>
#include <PR/os_message.h>
#include <PR/os_pfs.h>

#define BLOCKSIZE 32

#define CONT_CMD_REQUEST_STATUS 0
#define CONT_CMD_READ_BUTTON 1
#define CONT_CMD_READ_MEMPACK 2
#define CONT_CMD_WRITE_MEMPACK 3
#define CONT_CMD_READ_EEPROM 4
#define CONT_CMD_WRITE_EEPROM 5
#define CONT_CMD_RESET 0xFF

#define CONT_CMD_REQUEST_STATUS_TX 1
#define CONT_CMD_READ_BUTTON_TX 1
#define CONT_CMD_READ_MEMPACK_TX 3
#define CONT_CMD_WRITE_MEMPACK_TX 35
#define CONT_CMD_READ_EEPROM_TX 2
#define CONT_CMD_WRITE_EEPROM_TX 10
#define CONT_CMD_RESET_TX 1

#define CONT_CMD_REQUEST_STATUS_RX 3
#define CONT_CMD_READ_BUTTON_RX 4
#define CONT_CMD_READ_MEMPACK_RX 33
#define CONT_CMD_WRITE_MEMPACK_RX 1
#define CONT_CMD_READ_EEPROM_RX 8
#define CONT_CMD_WRITE_EEPROM_RX 1
#define CONT_CMD_RESET_RX 3

#define CONT_CMD_NOP 0xFF
#define CONT_CMD_END 0xFE // Indicates end of a command
#define CONT_CMD_EXE 1    // Set pif ram status byte to this to do a command

#define DIR_STATUS_EMPTY 0
#define DIR_STATUS_UNKNOWN 1
#define DIR_STATUS_OCCUPIED 2

#define PFS_FORCE 1
#define PFS_DELETE 1

#define PFS_LABEL_AREA 7

#define PFS_ERR_NOPACK 1


typedef struct
{
    /* 0x00 */ union{
        u16 button;
        struct{
            u16 a   : 1;
            u16 b   : 1;
            u16 z   : 1;
            u16 s   : 1;
            u16 du  : 1;
            u16 dd  : 1;
            u16 dl  : 1;
            u16 dr  : 1;
            u16 illegal_h : 1;
            u16 illegal_l : 1;
            u16 l   : 1;
            u16 r   : 1;
            u16 cu  : 1;
            u16 cd  : 1;
            u16 cl  : 1;
            u16 cr  : 1;
        };
    };
    /* 0x02 */ s8  x;
    /* 0x03 */ s8  y;
} PadInput; // size = 0x4

typedef struct {
	u32	ram[15];		/* RAM */
	u32	status;		
} OSPifRam;

// Original name: __OSContRequesFormat
typedef struct {
	u8	align;             
	u8	txsize;		
	u8	rxsize;			
	u8	poll;			
	u8  typeh;
	u8  typel;
	u8  status;
	u8	align1;                 
} __OSContRequestHeader; 

// Original name: __OSContRequesHeaderFormatShort
typedef struct {
        u8      txsize;             
        u8      rxsize;              
        u8      poll;     
        u8      typeh;
        u8      typel;
        u8      status;
} __OSContRequestHeaderAligned;

// Original Name: __OSContRamReadFormat
typedef struct {
	u8	unk_00;             
	u8	txsize;	
	u8	rxsize;		
	u8	poll;			
	u8	hi;
	u8	lo;
	u8  data[BLOCKSIZE];
	u8  datacrc;
} __OSContRamHeader; 

// Original name: __OSContReadFormat
typedef struct {
	u8	align;
	u8	txsize;	
	u8	rxsize;		
	u8	poll;	
	u16 button;
	s8  joyX;
	s8  joyY;
} __OSContReadHeader;

extern OSPifRam osPifBuffers[MAXCONTROLLERS];

#define SIAccessQueueSize 2
extern OSMesg osSiMesgBuff[SIAccessQueueSize];
extern OSMesgQueue gOsSiMessageQueue;
extern u32 gOsSiAccessQueueCreated; // = 0

extern OSPifRam __osPifInternalBuff;
extern u8 __osContLastPoll;
extern u8 __osMaxControllers; //always 4
extern u32 gOSContInitialized; // = 0
extern OSMesgQueue _osContMesgQueue;
extern OSMesg __osContMesgBuff[4];

extern s32 osSetRumble(OSPfs* pfs, u32 vibrate);
extern void osSetUpMempakWrite(s32 channel, OSPifRam* buf);
extern s32 osProbeRumblePak(OSMesgQueue* ctrlrqueue, OSPfs* pfs, u32 channel);
extern void __osSiCreateAccessQueue();
extern void __osSiGetAccess();
extern void __osSiRelAccess();
extern s32 osContInit(OSMesgQueue *mq, u8 *ctl_present_bitfield, OSContStatus *status);
extern void __osContGetInitData(u8 *ctl_present_bitfield, OSContStatus *status);
extern void __osPackRequestData(u8 command);
extern void __osPfsRequestData(u8 poll);
extern void __osPfsGetInitData(u8 *pattern, OSContStatus* contData);
extern s32 osContSetCh(u8 ch);

extern s32 osContStartReadData(OSMesgQueue *mq);
extern void osContGetReadData(OSContPad *pad);
extern void __osPackReadData();

extern s32 __osSiRawStartDma(s32 dir, void *addr);

#endif //_ULTRA64_CONTROLLER_H_
