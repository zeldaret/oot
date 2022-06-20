#include "global.h"

void Overlay_Relocate(void* allocatedVRamAddress, OverlayRelocationSection* overlayInfo, void* vRamStart) {
    u32 sections[4];
    u32 relocatedValue;
    u32 dbg;
    u32 relocOffset;
    u32 relocData;
    uintptr_t unrelocatedAddress;
    u32 i;
    u32* relocDataP;
    u32* luiRefs[32];
    u32 luiVals[32];
    uintptr_t relocatedAddress;
    u32 reloc;
    u32* luiInstRef;
    uintptr_t allocu32 = (uintptr_t)allocatedVRamAddress;
    u32* regValP;
    u32 isLoNeg;
    s32 pad;

    relocOffset = 0;
    relocatedValue = 0;
    unrelocatedAddress = 0;
    relocatedAddress = 0;

    if (gOverlayLogSeverity >= 3) {
        osSyncPrintf("DoRelocation(%08x, %08x, %08x)\n", allocatedVRamAddress, overlayInfo, vRamStart);
        osSyncPrintf("text=%08x, data=%08x, rodata=%08x, bss=%08x\n", overlayInfo->textSize, overlayInfo->dataSize,
                     overlayInfo->rodataSize, overlayInfo->bssSize);
    }

    sections[0] = 0;
    sections[1] = allocu32;
    sections[2] = allocu32 + overlayInfo->textSize;
    sections[3] = sections[2] + overlayInfo->dataSize;

    for (i = 0; i < overlayInfo->nRelocations; i++) {
        reloc = overlayInfo->relocations[i];
        relocDataP = (u32*)(sections[RELOC_SECTION(reloc)] + RELOC_OFFSET(reloc));
        relocData = *relocDataP;

        switch (RELOC_TYPE_MASK(reloc)) {
            case R_MIPS_32 << RELOC_TYPE_SHIFT:
                // Handles 32-bit address relocation, used for things such as jump tables and pointers in data.
                // Just relocate the full address.

                // Check address is valid for relocation
                if ((*relocDataP & 0x0F000000) == 0) {
                    relocOffset = *relocDataP - (uintptr_t)vRamStart;
                    relocatedValue = relocOffset + allocu32;
                    relocatedAddress = relocatedValue;
                    unrelocatedAddress = relocData;
                    *relocDataP = relocatedAddress;
                }
                break;

            case R_MIPS_26 << RELOC_TYPE_SHIFT:
                // Handles 26-bit address relocation, used for jumps and jals.
                // Extract the address from the target field of the J-type MIPS instruction.
                // Relocate the address and update the instruction.

                unrelocatedAddress = PHYS_TO_K0((*relocDataP & 0x03FFFFFF) << 2);
                relocOffset = unrelocatedAddress - (uintptr_t)vRamStart;
                relocatedValue = (*relocDataP & 0xFC000000) | (((allocu32 + relocOffset) & 0x0FFFFFFF) >> 2);
                relocatedAddress = PHYS_TO_K0((relocatedValue & 0x03FFFFFF) << 2);
                *relocDataP = relocatedValue;
                break;

            case R_MIPS_HI16 << RELOC_TYPE_SHIFT:
                // Handles relocation for a hi/lo pair, part 1.
                // Store the reference to the LUI instruction (hi) using the `rt` register of the instruction.
                // This will be updated later in the `R_MIPS_LO16` section.

                luiRefs[(*relocDataP >> 0x10) & 0x1F] = relocDataP;
                luiVals[(*relocDataP >> 0x10) & 0x1F] = *relocDataP;
                break;

            case R_MIPS_LO16 << RELOC_TYPE_SHIFT:
                // Handles relocation for a hi/lo pair, part 2.
                // Grab the stored LUI (hi) from the `R_MIPS_HI16` section using the `rs` register of the instruction.
                // The full address is calculated, relocated, and then used to update both the LUI and lo instructions.
                // If the lo part is negative, add 1 to the LUI value.
                // Note: The lo instruction is assumed to have a signed immediate.

                luiInstRef = luiRefs[(*relocDataP >> 0x15) & 0x1F];
                regValP = &luiVals[(*relocDataP >> 0x15) & 0x1F];

                // Check address is valid for relocation
                if ((((*regValP << 0x10) + (s16)*relocDataP) & 0x0F000000) == 0) {
                    relocOffset = ((*regValP << 0x10) + (s16)*relocDataP) - (uintptr_t)vRamStart;
                    isLoNeg = (((relocOffset + allocu32) & 0x8000) ? 1 : 0);
                    unrelocatedAddress = (*luiInstRef << 0x10) + (s16)relocData;
                    *luiInstRef =
                        (*luiInstRef & 0xFFFF0000) | ((((relocOffset + allocu32) >> 0x10) & 0xFFFF) + isLoNeg);
                    relocatedValue = (*relocDataP & 0xFFFF0000) | ((relocOffset + allocu32) & 0xFFFF);

                    relocatedAddress = (*luiInstRef << 0x10) + (s16)relocatedValue;
                    *relocDataP = relocatedValue;
                }
                break;
        }

        dbg = 0x10;
        switch (RELOC_TYPE_MASK(reloc)) {
            case R_MIPS_32 << RELOC_TYPE_SHIFT:
                dbg = 0x16;
                FALLTHROUGH;
            case R_MIPS_26 << RELOC_TYPE_SHIFT:
                dbg += 0xA;
                FALLTHROUGH;
            case R_MIPS_LO16 << RELOC_TYPE_SHIFT:
                if (gOverlayLogSeverity >= 3) {
                    osSyncPrintf("%02d %08x %08x %08x ", dbg, relocDataP, relocatedValue, relocatedAddress);
                    osSyncPrintf(" %08x %08x %08x %08x\n", (uintptr_t)relocDataP + (uintptr_t)vRamStart - allocu32,
                                 relocData, unrelocatedAddress, relocOffset);
                }
                // Adding a break prevents matching
        }
    }
}
