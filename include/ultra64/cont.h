#ifndef ULTRA64_CONT_H
#define ULTRA64_CONT_H

#include "message.h"

/* Buttons */
#define BTN_CRIGHT      0x0001
#define BTN_CLEFT       0x0002
#define BTN_CDOWN       0x0004
#define BTN_CUP         0x0008
#define BTN_R           0x0010
#define BTN_L           0x0020
#define BTN_DRIGHT      0x0100
#define BTN_DLEFT       0x0200
#define BTN_DDOWN       0x0400
#define BTN_DUP         0x0800
#define BTN_START       0x1000
#define BTN_Z           0x2000
#define BTN_B           0x4000
#define BTN_A           0x8000

typedef struct {
    /* 0x00 */ u16 type;
    /* 0x02 */ u8 status;
    /* 0x03 */ u8 errno;
} OSContStatus; // size = 0x04

typedef struct {
    /* 0x00 */ u16 button;
    /* 0x02 */ s8 stick_x;
    /* 0x03 */ s8 stick_y;
    /* 0x04 */ u8 errno;
} OSContPad; // size = 0x06

typedef struct {
    /* 0x00 */ void* address;
    /* 0x04 */ u8 databuffer[32];
    /* 0x24 */ u8 addressCrc;
    /* 0x25 */ u8 dataCrc;
    /* 0x26 */ u8 errno;
} OSContRamIo; // size = 0x28

s32 osContInit(OSMesgQueue*, u8*, OSContStatus*);
s32 osContStartQuery(OSMesgQueue*);
s32 osContStartReadData(OSMesgQueue*);
#ifndef _HW_VERSION_1
s32 osContSetCh(u8);
#endif
void osContGetQuery(OSContStatus*);
void osContGetReadData(OSContPad*);

#endif
