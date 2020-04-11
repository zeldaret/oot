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
    while(bit != 0){
        ret <<= 1;
        if (addr & bit) {
            if(ret & 0x20){
                ret ^= 0x14;
            }else{
                ++ret;
            }
        }else{
            if(ret & 0x20) ret ^= 0x15;
        }
        bit >>= 1;
    }
    for(i=0; i<5; ++i){
        s32 temp2 = ret << 1;
        if((temp2 & 0x20) != 0) temp2 = temp2 ^ 0x15;
        ret = temp2;
    }
    return ret & 0x1f;
}

#else
#pragma GLOBAL_ASM("asm/non_matchings/code/osMempakAddrCRC/osMempakAddrCRC.s")
#endif


#ifdef NON_MATCHING

s32 func_80106240(u8 *data)
{
    s32 temp_t3;
    s32 temp_t6;
    u32 bit;
    s32 ret;
    u32 byte;
    
    ret = 0;
    byte = 0x20U;
    while(byte != 0){
        bit = 0x80U;
        while(bit != 0){
            temp_t6 = ret * 2;
            if ((*data & bit) != 0) {
                if ((temp_t6 & 0x100) != 0) {
                    ret = temp_t6 ^ 0x84;
                }else{
                    ret = temp_t6 + 1;
                }
            }else{
                ret = temp_t6;
                if ((temp_t6 & 0x100) != 0){
                    ret = temp_t6 ^ 0x85;
                }
            }
            bit = bit / 2;
        }
        --byte;
        ++data;
    }
    do{
        temp_t3 = ret * 2;
        ret = temp_t3;
        if ((temp_t3 & 0x100) != 0){
            ret = temp_t3 ^ 0x85;
        }
        ++byte;
    }while(byte < 8U);
    return ret & 0xff;
}


#else
#pragma GLOBAL_ASM("asm/non_matchings/code/osMempakAddrCRC/func_80106240.s")
#endif
