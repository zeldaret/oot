#ifndef ULTRA64_UCODE_H
#define ULTRA64_UCODE_H

#include "ultratypes.h"

#define SP_DRAM_STACK_SIZE8     (0x400)
#define SP_DRAM_STACK_SIZE64    (SP_DRAM_STACK_SIZE8 >> 3)

#define SP_UCODE_SIZE           0x1000

#define SP_UCODE_DATA_SIZE      0x800

extern u64 rspbootTextStart[], rspbootTextEnd[];

extern u64 aspMainTextStart[], aspMainTextEnd[];
extern u64 aspMainDataStart[], aspMainDataEnd[];

extern u64 gspF3DZEX2_NoN_PosLight_fifoTextStart[], gspF3DZEX2_NoN_PosLight_fifoTextEnd[];
extern u64 gspF3DZEX2_NoN_PosLight_fifoDataStart[], gspF3DZEX2_NoN_PosLight_fifoDataEnd[];

extern u64 gspS2DEX2d_fifoTextStart[], gspS2DEX2d_fifoTextEnd[];
extern u64 gspS2DEX2d_fifoDataStart[], gspS2DEX2d_fifoDataEnd[];

extern u64 njpgdspMainTextStart[], njpgdspMainTextEnd[];
extern u64 njpgdspMainDataStart[], njpgdspMainDataEnd[];

#endif
