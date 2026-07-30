#include "ultra64.h"
#include "ultra64/leo_internal.h"

extern vu16 LEOrw_flags;

STATIC s32 mseq_tbl[0x10];

STATIC const u32 rd_mseq_code[0x10] = {
    0x10000, 0x20200, 0x80030100, 0x82040000, 0xA8050000, 0xA0060600, 0x31760000, 0x20300,
    0,       0,       0,          0,          0,          0,          0,          0x04060000,
};
STATIC const u32 wt_mseq_code[0x10] = {
    0x40020000, 0x20000, 0x40130B00, 0x42140100, 0x68050000, 0x50060600, 0x401702FF, 0x01870000,
    0x40020000, 0,       0,          0,          0,          0,          0,          0x040F0000,
};

void leoSet_mseq(u16 rwmode) {
    u32* tbl;
    u32 sct_byte_x;
    u32 sct_byte_u;
    u8 i;

    LEOasic_seq_ctl_shadow &= 0xBFFFFFFF;
    osEPiWriteIo(LEOPiInfo, 0x05000518, LEOasic_seq_ctl_shadow);
    if (rwmode == 1) {
        tbl = wt_mseq_code;
    } else {
        tbl = rd_mseq_code;
    }
    for (i = 0; i < 0x10; i++, tbl++) {
        mseq_tbl[i] = *tbl;
    }
    sct_byte_x = sct_byte_u = LEOtgt_param.sec_bytes - 1;
    sct_byte_u += 7;
    sct_byte_x <<= 8;
    mseq_tbl[4] |= sct_byte_x;
    osWritebackDCache(mseq_tbl, 0x40);
    LEOPiDmaParam.dramAddr = mseq_tbl;
    LEOPiDmaParam.devAddr = 0x05000580;
    LEOPiDmaParam.size = 0x40;
    LEOPiInfo->transferInfo.cmdType = 2;
    osEPiStartDma(LEOPiInfo, &LEOPiDmaParam, 1);
    osRecvMesg(&LEOdma_que, NULL, OS_MESG_BLOCK);
    osEPiWriteIo(LEOPiInfo, 0x05000530, (sct_byte_u | 0x5900) << 16);
    if (LEOrw_flags & 0x800) {
        sct_byte_x += 0x100;
    }
    osEPiWriteIo(LEOPiInfo, 0x05000528, sct_byte_x << 8);
    LEOasic_seq_ctl_shadow |= 0x40000000;
    osEPiWriteIo(LEOPiInfo, 0x05000518, LEOasic_seq_ctl_shadow);
}
