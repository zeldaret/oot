#ifndef LEO_INTERNAL_H
#define LEO_INTERNAL_H

#include "ultra64.h"
#include "stack.h"

extern OSPiHandle* LEOPiInfo;
void leointerrupt(void*);
void leomain(void*);
void leoClr_queue(void);
u8 leoChk_asic_ready(u32);
void leoDrive_reset(void);
extern s32 __leoActive;
typedef struct tgt_param_form {
    /* 0x0 */ u16 lba;
    /* 0x2 */ u16 cylinder;
    /* 0x4 */ u16 blk_bytes;
    /* 0x6 */ u8 sec_bytes;
    /* 0x7 */ u8 head;
    /* 0x8 */ u8 zone;
    /* 0x9 */ u8 rdwr_blocks;
    /* 0xA */ u8 start_block;
} tgt_param_form;
s32 __leoSetReset(void);
s32 __osLeoInterrupt(void);
OSPiHandle* osLeoDiskInit(void);
extern LEOVersion __leoVersion;
extern STACK(leoDiskStack, 0x1000);
extern const u16 LEOBYTE_TBL2[];
extern const u16 LEOVZONE_TBL[][0x10];
extern const u8 LEOVZONE_PZONEHD_TBL[][0x10];
u16 leoLba_to_vzone(u32 lba);
u16 leoLba_to_phys(u32 lba);
u8 leoSeek_i(u16 rwmode);
extern OSMesgQueue LEOc2ctrl_que;
u32 leoChkUnit_atten(void);
u8 leoChk_cur_drvmode(void);
void leoClrUA_RESET(void);
void leoInitUnit_atten(void);
u8 leoRead_system_area(void);
u32 leoRetUnit_atten(void);
u8 leoSend_asic_cmd_w(u32 asic_cmd, u32 asic_data);
extern OSIoMesg LEOPiDmaParam;
extern s32 currentCommand;
typedef union leo_sys_form {
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
void leoRead_common(unsigned int offset);
u32 leoChk_err_retry(u32 sense);
typedef struct block_param_form {
    /* 0x0 */ u8* pntr;
    /* 0x4 */ u8* c2buff_e;
    /* 0x8 */ u8 err_pos[4];
    /* 0xC */ u8 err_num;
    /* 0xD */ u8 bytes;
    /* 0xE */ u16 blkbytes;
} block_param_form; // size = 0x10
extern u8 LEOC2_Syndrome[2][0xE8 * 4];
extern block_param_form LEOc2_param;
void leoSet_mseq(u16 rwmode);
u8 leoDetect_index_w(void);
extern const u16 LEOZONE_SCYL_TBL[];
extern const u16 LEOZONE_OUTERCYL_TBL[];
extern const u8 LEOBYTE_TBL1[];
int leoC2_Correction(void);
u8 leoSend_asic_cmd_w_nochkDiskChange(u32 asic_cmd, u32 asic_data);
u8 leoChk_done_status(u32 asic_cmd);
u8 leoWait_mecha_cmd_done(u32 asic_cmd);
u8 leoRecal_w(void);
u8 leoSeek_w(void);
void leoClrUA_MEDIUM_CHANGED(void);
void leoSetUA_MEDIUM_CHANGED(void);
u8 leoAnalize_asic_status(void);
void leoMode_sel(void);
extern u8 LEO_TempBuffer[0xE8];
void leoTest_unit_rdy(void);
void leoSeek(void);
void leoRd_capacity(void);
extern const u16 LEORAM_START_LBA[];
extern const u32 LEORAM_BYTE[];

void leoClr_reset(void);
void leoInquiry(void);
void leoRead(void);
void leoReadDiskId(void);
void leoReadTimer(void);
void leoRezero(void);
void leoSetTimer(void);
void leoStart_stop(void);
void leoTranslate(void);
void leoWrite(void);

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
extern OSMesg LEOevent_que_buf;
extern OSMesg LEOcontrol_que_buf;
extern OSMesg LEOdma_que_buf[2];
extern OSMesg LEOblock_que_buf;
extern u8* LEOwrite_pointer;
extern LEOCmd* LEOcur_command;
extern s32 LEOasic_bm_ctl_shadow;
extern s32 LEOasic_seq_ctl_shadow;
extern u8 LEOdrive_flag;
extern vu8 LEOclr_que_flag;
// extern u16 LEOrw_flags;
extern tgt_param_form LEOtgt_param;
extern u8 LEOdisk_type;
extern u32 LEO_country_code;

#endif
