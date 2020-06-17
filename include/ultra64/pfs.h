#ifndef _ULTRA64_PFS_H_
#define _ULTRA64_PFS_H_

#include <ultra64.h>

typedef struct {
    /* 0x00 */ s32 status;
    /* 0x04 */ OSMesgQueue* queue;
    /* 0x08 */ s32 channel;
    /* 0x0C */ u8 id[32];
    /* 0x2C */ u8 label[32];
    /* 0x4C */ s32 version;
    /* 0x50 */ s32 dir_size;
    /* 0x54 */ s32 inode_table;         /* block location */
    /* 0x58 */ s32 minode_table;        /* mirrioring inode_table */
    /* 0x5C */ s32 dir_table;           /* block location */
    /* 0x60 */ s32 inode_start_page;    /* page # */
    /* 0x64 */ u8 banks;
    /* 0x65 */ u8 activebank;
} OSPfs; // size = 0x68


typedef struct {
    /* 0x00 */ u32 file_size;   /* bytes */
    /* 0x04 */ u32 game_code;
    /* 0x08 */ u16 company_code;
    /* 0x0C */ char ext_name[4];
    /* 0x10 */ char game_name[16];
} OSPfsState; // size = 0x20

/* File System size */
#define OS_PFS_VERSION      0x0200
#define OS_PFS_VERSION_HI   (OS_PFS_VERSION >> 8)
#define OS_PFS_VERSION_LO   (OS_PFS_VERSION & 255)

#define PFS_FILE_NAME_LEN       16
#define PFS_FILE_EXT_LEN        4
#define BLOCKSIZE               32
#define PFS_ONE_PAGE            8
#define PFS_MAX_BANKS           62

/* File System flag */

#define PFS_READ                0
#define PFS_WRITE               1
#define PFS_CREATE              2

/* File System status */
#define PFS_INITIALIZED         0x1
#define PFS_CORRUPTED           0x2
#define PFS_ID_BROKEN           0x4
#define PFS_MOTOR_INITIALIZED   0x8
#define PFS_GBPAK_INITIALIZED   0x10

/* File System error number */

#define PFS_ERR_NOPACK          1   /* no memory card is plugged or */
#define PFS_ERR_NEW_PACK        2   /* ram pack has been changed to a  different one */
#define PFS_ERR_INCONSISTENT    3   /* need to run Pfschecker*/
#define PFS_ERR_CONTRFAIL       CONT_OVERRUN_ERROR              
#define PFS_ERR_INVALID         5   /* invalid parameter or file not exist*/
#define PFS_ERR_BAD_DATA        6   /* the data read from pack are bad*/
#define PFS_DATA_FULL           7   /* no free pages on ram pack*/
#define PFS_DIR_FULL            8   /* no free directories on ram pack*/
#define PFS_ERR_EXIST           9   /* file exists*/
#define PFS_ERR_ID_FATAL        10  /* dead ram pack */
#define PFS_ERR_DEVICE          11  /* wrong device type*/
#define PFS_ERR_NO_GBCART       12  /* no gb cartridge (64GB-PAK) */
#define PFS_ERR_NEW_GBCART      13  /* gb cartridge may be changed */

#endif
