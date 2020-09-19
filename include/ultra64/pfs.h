#ifndef _ULTRA64_PFS_H_
#define _ULTRA64_PFS_H_

#include <ultra64.h>

/* File System size */
#define	OS_PFS_VERSION		0x0200
#define	OS_PFS_VERSION_HI	(OS_PFS_VERSION >> 8)
#define	OS_PFS_VERSION_LO	(OS_PFS_VERSION & 255)

#define PFS_INODE_SIZE_PER_PAGE	128
#define PFS_FILE_NAME_LEN       16
#define PFS_FILE_EXT_LEN        4
#define BLOCKSIZE		        32
#define PFS_ONE_PAGE            8	
#define PFS_MAX_BANKS		    62

/* File System flag */

#define PFS_READ                0
#define PFS_WRITE               1
#define PFS_CREATE              2

/* File System status */
#define PFS_INITIALIZED		    0x1
#define PFS_CORRUPTED		    0x2	
#define PFS_ID_BROKEN		    0x4
#define PFS_MOTOR_INITIALIZED	0x8
#define	PFS_GBPAK_INITIALIZED	0x10

/* Definition for page usage */
#define PFS_EOF					1
#define PFS_PAGE_NOT_EXIST		2
#define PFS_PAGE_NOT_USED		3

/* File System error number */

#define PFS_ERR_NOPACK		    1	/* no memory card is plugged or */
#define PFS_ERR_NEW_PACK        2	/* ram pack has been changed to a  different one */
#define PFS_ERR_INCONSISTENT    3	/* need to run Pfschecker*/
#define PFS_ERR_CONTRFAIL	    CONT_OVERRUN_ERROR              
#define PFS_ERR_INVALID         5	/* invalid parameter or file not exist*/
#define PFS_ERR_BAD_DATA        6       /* the data read from pack are bad*/
#define PFS_DATA_FULL           7	/* no free pages on ram pack*/
#define PFS_DIR_FULL            8	/* no free directories on ram pack*/
#define PFS_ERR_EXIST		    9	/* file exists*/
#define PFS_ERR_ID_FATAL	    10	/* dead ram pack */
#define PFS_ERR_DEVICE		    11	/* wrong device type*/
#define PFS_ERR_NO_GBCART	    12 	/* no gb cartridge (64GB-PAK) */
#define PFS_ERR_NEW_GBCART	    13 	/* gb cartridge may be changed */

/* Definition for bank */
#define	PFS_ID_BANK_256K	0
#define	PFS_ID_BANK_1M		4
#define	PFS_BANKS_256K		1

#define PFS_WRITTEN				2
#define DEF_DIR_PAGES			2

#define PFS_ID_0AREA            1
#define PFS_ID_1AREA            3
#define PFS_ID_2AREA            4
#define PFS_ID_3AREA            6
#define PFS_LABEL_AREA          7
#define PFS_ID_PAGE             PFS_ONE_PAGE * 0

#define	PFS_BANK_LAPPED_BY	8	/* => u8 */
#define	PFS_SECTOR_PER_BANK	32
#define	PFS_INODE_DIST_MAP	(PFS_BANK_LAPPED_BY * PFS_SECTOR_PER_BANK)
#define	PFS_SECTOR_SIZE		(PFS_INODE_SIZE_PER_PAGE/PFS_SECTOR_PER_BANK)

typedef struct {
	int		status;
	OSMesgQueue* queue;
	int		channel;
	u8		id[32];
	u8		label[32];
	int		version;
	int		dir_size;
	int		inode_table;		/* block location */
	int		minode_table;		/* mirrioring inode_table */
	int		dir_table;		    /* block location */
	int		inodeStartPage;	/* page # */
	u8		banks;
	u8		activebank;
} OSPfs;

typedef struct {
	u32	    file_size;	/* bytes */
  	u32 	game_code;
  	u16 	company_code;
  	char  	ext_name[4];
  	char 	game_name[16];
} OSPfsState;

typedef union {
	struct {
		u8	bank;
		u8	page;
	} inode_t;
	u16	ipage;
} __OSInodeUnit;

typedef struct {
	__OSInodeUnit	inodePage[128];
} __OSInode;

typedef struct {
	u32 			game_code;
	u16     		company_code;
	__OSInodeUnit   start_page;
	u8      		status;
	s8				reserved;
	u16     		data_sum;
	u8	    		ext_name[PFS_FILE_EXT_LEN];
	u8	    		game_name[PFS_FILE_NAME_LEN];
} __OSDir;

typedef struct {
	u32	repaired;
	u32	random;
	u64	serialMid;
	u64	serialLow;
	u16	deviceid;
	u8	banks;
	u8	version;
	u16	checksum;
	u16	invertedChecksum;
} __OSPackId;

typedef	struct {
  __OSInode	inode;
  u8		bank;
  u8		map[PFS_INODE_DIST_MAP];
} __OSInodeCache;

#endif
