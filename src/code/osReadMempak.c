#include <ultra64.h>
#include <global.h>

#include <ultra64/controller.h> 

#if 1

extern pif_data_buffer_t pifMempakBuf;


s32 osReadMempak(OSMesgQueue* ctrlrqueue, s32 ctrlridx, s16 addr, PIF_mempak_data_t* data)
{
    s32 ret;
    u8 *bufptr;
    s32 i;
    s32 read_try_count = 2;
    
    __osSiGetAccess();
    do{
        if ((_osCont_lastPollType != 2) || (ctrlridx != D_80134D20)) {
            bufptr = &pifMempakBuf;
            _osCont_lastPollType = (u8)2U;
            D_80134D20 = ctrlridx;
            for(i = 0; i < ctrlridx; bufptr++, i++){
                *bufptr = 0;
            }
            pifMempakBuf.status_control = 1;
            ((PIF_header_t*)bufptr)->slot_type = (u8)0xff;
            ((PIF_header_t*)bufptr)->bytes_send = (u8)3;
            ((PIF_header_t*)bufptr)->status_hi_bytes_rec_lo = (u8)0x21;
            ((PIF_header_t*)bufptr)->command = (u8)2; //read mempak; send byte 0
            //Received bytes are 6-26 inclusive
            bufptr[0x26] = (u8)0xff; //last byte of receive
            bufptr[0x27] = (u8)0xfe; //End of commands
        }else{
            bufptr = (u8*)&pifMempakBuf + ctrlridx;
        }
        bufptr[4] = addr >> 3; //send byte 1
        bufptr[5] = (s8) (func_80106170(addr) | (addr << 5)); //send byte 2
        __osSiRawStartDma(1, &pifMempakBuf);
        osRecvMesg(ctrlrqueue, 0, 1);
        __osSiRawStartDma(0, &pifMempakBuf);
        osRecvMesg(ctrlrqueue, 0, 1);
        ret = (((PIF_header_t*)bufptr)->status_hi_bytes_rec_lo & 0xc0) >> 4;
        if(ret == 0){
            if(func_80106240(bufptr + 6) != bufptr[0x26]){
                ret = func_80101910(ctrlrqueue, ctrlridx);
                if(ret == 0){
                    ret = 4; //Retry
                }
            }else{
                bcopy(bufptr + 6, data, 0x20);
            }
        }else{
            ret = 1; //Error
        }
        if(ret != 4) break;
    }while(read_try_count-- >= 0);
    __osSiRelAccess();
    return ret;
}

#else
#pragma GLOBAL_ASM("asm/non_matchings/code/osReadMempak/osReadMempak.s")
#endif
