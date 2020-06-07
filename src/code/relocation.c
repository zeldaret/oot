#include <global.h>

#ifdef NON_MATCHING
void Overlay_DoRelocation(void* allocatedVRamAddress, OverlayRelocationSection* overlayInfo, void* vRamAddress) {
    // mostly regalloc, more specific issues described below.
    u32 sections[4];
    u32 unrelocatedAddress;
    u32 dbg;
    u32 relocatedValue;
    u32 relocOffset;
    u32 relocatedAddress;
    u32 i;
    u32* relocDataP;
    u32* luiRefs[32];
    u32 luiVals[32];
    u32 relocData;
    u32 reloc;
    u32 vaddr;
    u32* luiInstRef;
    u32 addrToLoad;
    u32 luiInst;
    u32* regValP;
    u32 isLoNeg;

    relocOffset = 0;
    relocatedValue = 0;
    unrelocatedAddress = 0;
    relocatedAddress = 0;

    if (gOverlayLogSeverity >= 3) {
        osSyncPrintf("DoRelocation(%08x, %08x, %08x)\n", allocatedVRamAddress, overlayInfo, vRamAddress);
        osSyncPrintf("text=%08x, data=%08x, rodata=%08x, bss=%08x\n", overlayInfo->textSize, overlayInfo->dataSize,
                     overlayInfo->rodataSize, overlayInfo->bssSize);
    }

    sections[0] = 0;
    sections[1] = (u32)allocatedVRamAddress;
    sections[2] = sections[1] + overlayInfo->textSize;
    sections[3] = sections[2] + overlayInfo->dataSize;

    for (i = 0; i < overlayInfo->nRelocations; i++) {
        reloc = overlayInfo->relocations[i];
        relocDataP = (u32*)(sections[reloc >> 0x1E] + (reloc & 0xFFFFFF));
        relocData = *relocDataP;
        switch (reloc & 0x3F000000) {
            case 0x2000000:
                /* R_MIPS_32
                 * handles 32-bit address relocation.  Used in things such as
                 * jump tables.
                 */
                if ((*relocDataP & 0xF000000) == 0) {
                    relocOffset = *relocDataP - (u32)vRamAddress;
                    relocatedAddress = relocOffset + (u32)allocatedVRamAddress;
                    relocatedValue = relocatedAddress;
                    unrelocatedAddress = relocData;
                    *relocDataP = relocatedAddress;
                }
                break;
            case 0x4000000:
                /* R_MIPS_26
                 * handles 26-bit address relocation, used for jumps and jals
                 */
                unrelocatedAddress = ((*relocDataP & 0x3FFFFFF) << 2) | 0x80000000;
                relocOffset = unrelocatedAddress - (u32)vRamAddress;
                relocatedValue =
                    (*relocDataP & 0xFC000000) | ((((u32)allocatedVRamAddress + relocOffset) & 0xFFFFFFF) >> 2);
                relocatedAddress = ((relocatedValue & 0x3FFFFFF) << 4) | 0x80000000;
                *relocDataP = relocatedValue;
                break;
            case 0x5000000:
                /* R_MIPS_HI16
                 * Handles relocation for a lui instruciton, we just store the reference to
                 * the instruction, and will update it in the R_MIPS_LO16 section.
                 */
                luiRefs[(*relocDataP >> 0x10) & 0x1F] = relocDataP;
                luiVals[(*relocDataP >> 0x10) & 0x1F] = *relocDataP;
                break;
            case 0x6000000:
                /* R_MIPS_LO16
                 * here we will update the LUI instruction to reflect the relocated address.
                 * The full address is calculated from the LUI and lo parts, and then updated.
                 * if the lo part is negative, we make sure to add 1 to the lui.
                 */
                regValP = &luiVals[((*relocDataP >> 0x15) & 0x1F)];
                vaddr = (*regValP << 0x10) + (s16)*relocDataP;
                luiInstRef = luiRefs[((*relocDataP >> 0x15) & 0x1F)];
                if ((vaddr & 0xF000000) == 0) {
                    relocOffset = vaddr - (u32)vRamAddress;
                    addrToLoad = relocOffset + (u32)allocatedVRamAddress;
                    isLoNeg = ((addrToLoad & 0x8000) ? 1 : 0);
                    luiInst = *luiInstRef;
                    *luiInstRef = (luiInst & 0xFFFF0000) | (((addrToLoad >> 0x10) & 0xFFFF) + isLoNeg);
                    unrelocatedAddress = (luiInst << 0x10) + (((s16)relocData) & (0xFFFFFFFFFFFFFFFFu));
                    relocatedValue = (*relocDataP & 0xFFFF0000) | (addrToLoad & 0xFFFF);

                    // The conversion of relocatedAddress to s16 is wrapped around the OR operation of
                    // relocated value
                    relocatedAddress = (*luiInstRef << 0x10) + (s16)relocatedValue;
                    *relocDataP = relocatedValue;
                }
                break;
        }

        if (1) {
            dbg = 0x10;
            switch (reloc & 0x3F000000) {
                case 0x2000000:
                    dbg = 0x16;
                case 0x4000000:
                    dbg += 0xA;
                case 0x6000000:
                    if (gOverlayLogSeverity >= 3) {
                        osSyncPrintf("%02d %08x %08x %08x ", dbg, relocDataP, relocatedValue, relocatedAddress);
                        osSyncPrintf(" %08x %08x %08x %08x\n",
                                     ((u32)relocDataP + (u32)vRamAddress) - (u32)allocatedVRamAddress, relocData,
                                     unrelocatedAddress, relocOffset);
                    }
                    break;
                default:
                    continue;
            }
        }
        // The loop seems to be incremented, then checked, but the conditional is a likely vs non, so it could
        // potentially resolve itself.
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/relocation/Overlay_DoRelocation.s")
#endif
