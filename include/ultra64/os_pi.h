#ifndef _ULTRA64_OS_PI_H_
#define _ULTRA64_OS_PI_H_

/* Ultra64 Parallel Interface */

/* Types */

typedef struct
{
    /* 0x00 */ u32 errStatus;
    /* 0x04 */ void *dramAddr;
    /* 0x08 */ void *C2Addr;
    /* 0x0C */ u32 sectorSize;
    /* 0x10 */ u32 C1ErrNum;
    /* 0x14 */ u32 C1ErrSector[4];
} __OSBlockInfo; /* length: 0x24 */

typedef struct
{
    /* 0x00 */ u32 cmdType;
    /* 0x04 */ u16 transferMode;
    /* 0x06 */ u16 blockNum;
    /* 0x08 */ s32 sectorNum;
    /* 0x0C */ u32 devAddr;
    /* 0x10 */ u32 bmCtlShadow;
    /* 0x14 */ u32 seqCtlShadow;
    /* 0x18 */ __OSBlockInfo block[2];
} __OSTranxInfo; /* length: 0x60 */

typedef struct OSPiHandle_s
{
    /* 0x00 */ struct OSPiHandle_s *next;
    /* 0x04 */ u8 type;
    /* 0x05 */ u8 latency;
    /* 0x06 */ u8 pageSize;
    /* 0x07 */ u8 relDuration;
    /* 0x08 */ u8 pulse;
    /* 0x09 */ u8 domain;
    /* 0x0A padding */
    /* 0x0B padding */
    /* 0x0C */ u32 baseAddress;
    /* 0x10 */ u32 speed;
    /* 0x14 */ __OSTranxInfo transferInfo;
} OSPiHandle; /* length: 0x74 */

typedef struct
{
    u8 type;
    u32 address;
} OSPiInfo;

typedef struct
{
    /* 0x00 */ u16 type;
    /* 0x02 */ u8 pri;
    /* 0x03 */ u8 status;
    /* 0x04 */ OSMesgQueue *retQueue;
} OSIoMesgHdr; /* length: 0x8 */

typedef struct
{
    /*0x00*/ OSIoMesgHdr hdr;
    /*0x08*/ void *dramAddr;
    /*0x0C*/ u32 devAddr;
    /*0x10*/ size_t size;
    /*0x14*/ OSPiHandle* piHandle; //from the official definition
} OSIoMesg; /* length: 0x18 */

/* Definitions */

#define OS_READ 0  // device -> RDRAM
#define OS_WRITE 1 // device <- RDRAM

#define OS_MESG_PRI_NORMAL 0
#define OS_MESG_PRI_HIGH 1

/* Functions */

s32 osPiStartDma(OSIoMesg *mb, s32 priority, s32 direction,
                 u32 devAddr, void *vAddr, size_t nbytes, OSMesgQueue *mq);
void osCreatePiManager(OSPri pri, OSMesgQueue *cmdQ, OSMesg *cmdBuf,
                       s32 cmdMsgCnt);
OSMesgQueue *osPiGetCmdQueue(void);
s32 osPiWriteIo(u32 devAddr, u32 data);
s32 osPiReadIo(u32 devAddr, u32 *data);

#endif
