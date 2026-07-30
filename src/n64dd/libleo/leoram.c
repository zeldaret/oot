#include "ultra64.h"
#include "ultra64/leo_internal.h"

// should be in another file leosysdata.c but alignment prevents that
leo_sys_form LEO_sys_data;

OSThread LEOcommandThread;
OSThread LEOinterruptThread;
STACK(LEOcommandThreadStack, 0x400);
STACK(LEOinterruptThreadStack, 0x400);
OSMesgQueue LEOcommand_que;
OSMesgQueue LEOevent_que;
OSMesgQueue LEOcontrol_que;
OSMesgQueue LEOdma_que;
OSMesgQueue LEOblock_que;
OSMesg LEOevent_que_buf;
OSMesg LEOcontrol_que_buf;
OSMesg LEOdma_que_buf[2];
OSMesg LEOblock_que_buf;
u8* LEOwrite_pointer;
LEOCmd* LEOcur_command;
s32 LEOasic_bm_ctl_shadow;
s32 LEOasic_seq_ctl_shadow;
u8 LEOdrive_flag;
vu8 LEOclr_que_flag;
u16 LEOrw_flags;
u8 LEOdisk_type;
tgt_param_form LEOtgt_param;
u32 LEO_country_code;
