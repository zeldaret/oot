#ifndef ULTRA64_LEODRIVE_H
#define ULTRA64_LEODRIVE_H

#include "leo.h"
#include "leoappli.h"
#include "message.h"
#include "pi.h"
#include "rcp.h"
#include "stack.h"
#include "thread.h"
#include "ultratypes.h"

#define ASIC_BASE   PI_DOM2_ADDR1

#define ASIC_C2_BUFF        (ASIC_BASE + 0x000) // C2 Sector Buffer
#define ASIC_SECTOR_BUFF    (ASIC_BASE + 0x400) // Data Sector Buffer
#define ASIC_DATA           (ASIC_BASE + 0x500) // Data
#define ASIC_MISC_REG       (ASIC_BASE + 0x504) // Misc Register
#define ASIC_CMD            (ASIC_BASE + 0x508) // Command (write)
#define ASIC_STATUS         (ASIC_BASE + 0x508) // Status (read)
#define ASIC_CUR_TK         (ASIC_BASE + 0x50C) // Current Track
#define ASIC_BM_CTL         (ASIC_BASE + 0x510) // Buffer Manager Control (write)
#define ASIC_BM_STATUS      (ASIC_BASE + 0x510) // Buffer Manager Status (read)
#define ASIC_ERR_SECTOR     (ASIC_BASE + 0x514) // Sector Error Status
#define ASIC_SEQ_CTL        (ASIC_BASE + 0x518) // Sequencer Control (write)
#define ASIC_SEQ_STATUS     (ASIC_BASE + 0x518) // Sequencer Status (read)
#define ASIC_CUR_SECTOR     (ASIC_BASE + 0x51C) // Current Sector
#define ASIC_HARD_RESET     (ASIC_BASE + 0x520) // Hard Reset
#define ASIC_C1_S0          (ASIC_BASE + 0x524) // C1
#define ASIC_HOST_SECBYTE   (ASIC_BASE + 0x528) // Sector Size (in bytes)
#define ASIC_C1_S2          (ASIC_BASE + 0x52C) // C1
#define ASIC_SEC_BYTE       (ASIC_BASE + 0x530) // Sectors per Block, Full Size
#define ASIC_C1_S4          (ASIC_BASE + 0x534) // C1
#define ASIC_C1_S6          (ASIC_BASE + 0x538) // C1
#define ASIC_CUR_ADDR       (ASIC_BASE + 0x53C) // Current Address
#define ASIC_ID_REG         (ASIC_BASE + 0x540) // ID
#define ASIC_TEST_REG       (ASIC_BASE + 0x544) // Test Read
#define ASIC_TEST_PIN_SEL   (ASIC_BASE + 0x548) // Test Write
#define MSEQ_RAM_ADDR       (ASIC_BASE + 0x580) // Microsequencer RAM

// ASIC_BM_CTL write bits
#define LEO_BM_START                0x80000000  // Start Buffer Manager
#define LEO_BM_MODE                 0x40000000  // Buffer Manager Mode
#define LEO_BM_IMASK                0x20000000  // BM Interrupt Mask
#define LEO_BM_RESET                0x10000000  // Buffer Manager Reset
#define LEO_BM_DISABLE_OR_CHECK     0x08000000  // Disable OR Check
#define LEO_BM_DISABLE_C1           0x04000000  // Disable C1 Correction
#define LEO_BM_XFER_BLOCK           0x02000000  // Block Transfer
#define LEO_BM_CLR_MECHANIC_INTR    0x01000000  // Mechanic Interrupt Reset

// ASIC_STATUS read bits
#define LEO_STATUS_MECHANIC_INTR    0x02000000  // Mechanic Interrupt Raised

typedef union {
    /* 0x0 */ u8 u8_data[4];
    /* 0x0 */ u16 u16_data[2];
    /* 0x0 */ u32 u32_data;
} data_trans_form; // size = 0x4

typedef struct {
    /* 0x00 */ u8* pntr;
    /* 0x04 */ u8* c2buff_e;
    /* 0x08 */ u8 err_pos[4];
    /* 0x0C */ u8 err_num;
    /* 0x0D */ u8 bytes;
    /* 0x0E */ u16 blkbytes;
} block_param_form; // size = 0x10

typedef struct {
    /* 0x0 */ u16 lba;
    /* 0x2 */ u16 cylinder;
    /* 0x4 */ u16 blk_bytes;
    /* 0x6 */ u8 sec_bytes;
    /* 0x7 */ u8 head;
    /* 0x8 */ u8 zone;
    /* 0x9 */ u8 rdwr_blocks;
    /* 0xA */ u8 start_block;
} tgt_param_form; // size = 0xC

typedef union {
    /* 0x00 */ struct {
        /* 0x00 */ u32 country;
        /* 0x04 */ u8 fmt_type;
        /* 0x05 */ u8 disk_type;
        /* 0x06 */ u16 ipl_load_len;
        /* 0x08 */ u8 defect_num[20];
        /* 0x1C */ void* loadptr;
        /* 0x20 */ u8 defect_data[192];
        /* 0xE0 */ u16 rom_end_lba;
        /* 0xE2 */ u16 ram_start_lba;
        /* 0xE4 */ u16 ram_end_lba;
    } param;
    /* 0x00 */ u64 u64_data[29];
} leo_sys_form; // size = 0xE8

void leomain(void* arg);
void leointerrupt(void* arg);

OSPiHandle* osLeoDiskInit(void);
s32 __osLeoInterrupt(void);

void leoClr_queue(void);
void leoInquiry(void);
void leoTest_unit_rdy(void);
void leoRezero(void);
void leoRead(void);
void leoWrite(void);
void leoSeek(void);
void leoStart_stop(void);
void leoRd_capacity(void);
void leoTranslate();
void leoMode_sel(void);
void leoReadDiskId(void);
void leoReadTimer(void);
void leoSetTimer(void);
void leoClr_reset(void);

u16 leoLba_to_phys(u32 lba);
u16 leoLba_to_vzone(u32 lba);

u8 leoAnalize_asic_status(void);
u8 leoChk_asic_ready(u32 asic_cmd);
u8 leoChk_done_status(u32 asic_cmd);
u8 leoSend_asic_cmd_i(u32 asic_cmd, u32 asic_data);
u8 leoWait_mecha_cmd_done(u32 asic_cmd);
u8 leoSend_asic_cmd_w(u32 asic_cmd, u32 asic_data);
u8 leoSend_asic_cmd_w_nochkDiskChange(u32 asic_cmd, u32 asic_data);
u8 leoDetect_index_w(void);
u8 leoRecal_i(void);
u8 leoRecal_w(void);
u8 leoSeek_i(u16 rwmode);
u8 leoSeek_w(void);
u8 leoRecv_event_mesg(s32 control);
u32 leoChk_err_retry(u32 sense);
u8 leoChk_cur_drvmode(void);
void leoDrive_reset(void);
u32 leoChkUnit_atten(void);
u32 leoRetUnit_atten(void);
void leoClrUA_RESET(void);
void leoClrUA_MEDIUM_CHANGED(void);
void leoSetUA_MEDIUM_CHANGED(void);
void leoInitUnit_atten(void);

s32 __leoSetReset(void);

void leoRead_common(unsigned int offset);

int leoC2_Correction(void);

void leoSet_mseq(u16 rwmode);

extern leo_sys_form LEO_sys_data;
extern OSThread LEOcommandThread;
extern OSThread LEOinterruptThread;
extern STACK(LEOcommandThreadStack, 0x400);
extern STACK(LEOinterruptThreadStack, 0x400);
extern OSMesgQueue LEOcommand_que;
extern OSMesgQueue LEOevent_que;
extern OSMesgQueue LEOcontrol_que;
extern OSMesgQueue LEOdma_que;
extern OSMesgQueue LEOblock_que;
extern OSMesg LEOevent_que_buf[1];
extern OSMesg LEOcontrol_que_buf[1];
extern OSMesg LEOdma_que_buf[2];
extern OSMesg LEOblock_que_buf[1];
extern u8* LEOwrite_pointer;
extern LEOCmd* LEOcur_command;
extern u32 LEOasic_bm_ctl_shadow;
extern u32 LEOasic_seq_ctl_shadow;
extern u8 LEOdrive_flag;
extern vu8 LEOclr_que_flag;
// needs to not be volatile in some files
// extern vu16 LEOrw_flags;
extern u8 LEOdisk_type;
extern tgt_param_form LEOtgt_param;
extern u32 LEO_country_code;

extern const char LEOfirmware_rev[];
extern const u8 LEOBYTE_TBL1[];
extern const u16 LEOBYTE_TBL2[];
extern const u16 LEOVZONE_TBL[][0x10];
extern const u16 LEOZONE_SCYL_TBL[];
extern const u8 LEOVZONE_PZONEHD_TBL[][0x10];
extern const u16 LEOZONE_OUTERCYL_TBL[];
extern const u16 LEORAM_START_LBA[];
extern const s32 LEORAM_BYTE[];

extern s32 __leoActive;
extern LEOVersion __leoVersion;
extern STACK(leoDiskStack, 0x1000);

extern OSPiHandle* LEOPiInfo;

#endif
