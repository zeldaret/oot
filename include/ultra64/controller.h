#ifndef _ULTRA64_CONTROLLER_H_
#define _ULTRA64_CONTROLLER_H_

#include <ultra64.h>
#include <ultra64/pfs.h>
#include <PR/os_message.h>

#define SIAccessQueueSize 2
#define BLOCKSIZE 32
#define MAXCONTROLLERS  4
#define PFS_ONE_PAGE 8

#define PFS_PAGE_SIZE (BLOCKSIZE*PFS_ONE_PAGE)

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

#define	CONT_ERR_NO_CONTROLLER		PFS_ERR_NOPACK 		/* 1 */
#define	CONT_ERR_CONTRFAIL			CONT_OVERRUN_ERROR	/* 4 */
#define	CONT_ERR_INVALID			PFS_ERR_INVALID		/* 5 */
#define	CONT_ERR_DEVICE				PFS_ERR_DEVICE 		/* 11 */
#define	CONT_ERR_NOT_READY			12
#define	CONT_ERR_VOICE_MEMORY		13
#define	CONT_ERR_VOICE_WORD			14
#define	CONT_ERR_VOICE_NO_RESPONSE	15


#define DIR_STATUS_EMPTY 0
#define DIR_STATUS_UNKNOWN 1
#define DIR_STATUS_OCCUPIED 2

#define PFS_FORCE 1
#define PFS_DELETE 1

#define PFS_LABEL_AREA 7

#define PFS_ERR_NOPACK 1

/* controller errors */
#define CONT_NO_RESPONSE_ERROR          0x8
#define CONT_OVERRUN_ERROR              0x4

/* Controller type */

#define CONT_ABSOLUTE           0x0001
#define CONT_RELATIVE           0x0002
#define CONT_JOYPORT            0x0004
#define CONT_EEPROM				0x8000
#define CONT_EEP16K				0x4000
#define	CONT_TYPE_MASK			0x1F07
#define	CONT_TYPE_NORMAL		0x0005
#define	CONT_TYPE_MOUSE			0x0002
#define	CONT_TYPE_VOICE			0x0100

/* Controller status */

#define CONT_CARD_ON            0x01
#define CONT_CARD_PULL          0x02
#define CONT_ADDR_CRC_ER        0x04
#define CONT_EEPROM_BUSY		0x80

/* Buttons */

#define CONT_A      0x8000
#define CONT_B      0x4000
#define CONT_G	    0x2000
#define CONT_START  0x1000
#define CONT_UP     0x0800
#define CONT_DOWN   0x0400
#define CONT_LEFT   0x0200
#define CONT_RIGHT  0x0100
#define CONT_L      0x0020
#define CONT_R      0x0010
#define CONT_E      0x0008
#define CONT_D      0x0004
#define CONT_C      0x0002
#define CONT_F      0x0001

/* Nintendo's official button names */

#define A_BUTTON	CONT_A
#define B_BUTTON	CONT_B
#define L_TRIG		CONT_L
#define R_TRIG		CONT_R
#define Z_TRIG		CONT_G
#define START_BUTTON	CONT_START
#define U_JPAD		CONT_UP
#define L_JPAD		CONT_LEFT
#define R_JPAD		CONT_RIGHT
#define D_JPAD		CONT_DOWN
#define U_CBUTTONS	CONT_E
#define L_CBUTTONS	CONT_C
#define R_CBUTTONS	CONT_F
#define D_CBUTTONS	CONT_D

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

typedef struct {
	u16     type;                   /* Controller Type */
	u8      status;                 /* Controller status */
	u8	    errno;
} OSContStatus;

typedef struct {
	u16     button;
	s8      stick_x;		/* -80 <= stick_x <= 80 */
	s8      stick_y;		/* -80 <= stick_y <= 80 */
	u8	    errno;
} OSContPad;

typedef struct {
	void    *address;               /* Ram pad Address:  11 bits */
	u8      databuffer[32];         /* address of the data buffer */
    u8      addressCrc;             /* CRC code for address */
	u8      dataCrc;                /* CRC code for data */
	u8	    errno;
} OSContRamIo;

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


#endif //_ULTRA64_CONTROLLER_H_
