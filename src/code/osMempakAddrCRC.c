#include <ultra64.h>
#include <global.h>

#include <ultra64/controller.h> 

#ifdef NON_MATCHING
//In the real asm, the compiler keeps computing expressions in other registers
//and moving them back to the original register. For instance `bit >>= 1` is
//computed as `srl t3, v0, 0x1; move v0, t3` whereas with this code it's just
//`srl v1, v1, 0x1`. This in turn causes branch-likelys to be different and
//regalloc to be totally wrong. I've tried temporary variables and casts, which
//don't change anything; using types smaller than 32-bit seems to always add
//more instructions (e.g. sll, sra; andi 0xFFFF; etc.)

//Valid addr up to 0x7FF
//It's the address of a block of 0x20 bytes in the mempak
//So that means the whole mempak has a 16-bit address space
s32 osMempakAddrCRC(u16 addr)
{
    u32 ret = 0;
    u32 bit = 0x400U;
    s32 i;
    
    for(bit = 0x400u; bit; bit /= 2){
        s32 tempret = ret * 2;
        if (addr & bit) {
            if(ret & 0x20){
                ret = tempret ^ 0x14;
            }else{
                ret = tempret + 1;
            }
        }else{
            ret = tempret ^ 0x15;
            if(tempret & 0x20){
                ret = tempret;
            }
        }
    }
    for(i=0; i<5; ++i){
        s32 temp2 = ret << 1;
        ret = temp2;
        if((temp2 & 0x20) != 0){
            ret = temp2 ^ 0x15;
        }
    }
    return ret & 0x1f;
}

#else
#pragma GLOBAL_ASM("asm/non_matchings/code/osMempakAddrCRC/osMempakAddrCRC.s")
#endif


#ifdef NON_MATCHING
//Same problems here. Regalloc implies temp_t6 and temp_t3 were compiler
//temporaries, not hardcoded. But with just using ret, unable to get the
//correct moves.

s32 osMempakDataCRC(u8 *data)
{
    s32 ret;
    u32 bit;
    u32 byte;
    u8* data2 = data;
    
    ret = 0;
    for(byte = 0x20U; byte; --byte, ++data2){
        for(bit = 0x80U; bit; bit /= 2){
            s32 temp_t6 = ret * 2;
            if ((*data2 & bit) != 0) {
                if ((temp_t6 & 0x100) != 0) {
                    ret = temp_t6 ^ 0x84;
                }else{
                    ret = temp_t6 + 1;
                }
            }else{
                ret = temp_t6 ^ 0x85;
                if ((temp_t6 & 0x100) != 0){
                    ret = temp_t6;
                }
            }
        }
    }
    do{
        s32 temp_t3 = ret * 2;
        ret = temp_t3;
        if ((temp_t3 & 0x100) != 0){
            ret = temp_t3 ^ 0x85;
        }
        ++byte;
    }while(byte < 8U);
    return ret & 0xff;
}


#else
#pragma GLOBAL_ASM("asm/non_matchings/code/osMempakAddrCRC/osMempakDataCRC.s")
#endif
