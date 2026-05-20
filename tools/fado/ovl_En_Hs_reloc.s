.section .ovl
# ovl_En_Hs2OverlayInfo
.word _ovl_En_Hs2SegmentTextSize
.word _ovl_En_Hs2SegmentDataSize
.word _ovl_En_Hs2SegmentRoDataSize
.word _ovl_En_Hs2SegmentBssSize

.word 28 # relocCount

# TEXT RELOCS
.word 0x45000084 # R_MIPS_HI16 0x000084 .data
.word 0x4600008C # R_MIPS_LO16 0x00008C .data
.word 0x450000B4 # R_MIPS_HI16 0x0000B4 .rodata
.word 0x460000BC # R_MIPS_LO16 0x0000BC .rodata
.word 0x450000C0 # R_MIPS_HI16 0x0000C0 func_80A6F1A4
.word 0x460000C4 # R_MIPS_LO16 0x0000C4 func_80A6F1A4
.word 0x450001DC # R_MIPS_HI16 0x0001DC func_80A6F1A4
.word 0x460001E0 # R_MIPS_LO16 0x0001E0 func_80A6F1A4
.word 0x4500022C # R_MIPS_HI16 0x00022C func_80A6F164
.word 0x46000230 # R_MIPS_LO16 0x000230 func_80A6F164
.word 0x44000238 # R_MIPS_26   0x000238 func_80A6F0B4
.word 0x450003D0 # R_MIPS_HI16 0x0003D0 .rodata
.word 0x460003D8 # R_MIPS_LO16 0x0003D8 .rodata
.word 0x45000460 # R_MIPS_HI16 0x000460 .data
.word 0x46000464 # R_MIPS_LO16 0x000464 .data
.word 0x4500049C # R_MIPS_HI16 0x00049C EnHs2_OverrideLimbDraw
.word 0x460004B4 # R_MIPS_LO16 0x0004B4 EnHs2_OverrideLimbDraw
.word 0x450004A0 # R_MIPS_HI16 0x0004A0 EnHs2_PostLimbDraw
.word 0x460004B0 # R_MIPS_LO16 0x0004B0 EnHs2_PostLimbDraw

# DATA RELOCS
.word 0x82000010 # R_MIPS_32   0x000010 EnHs2_Init
.word 0x82000014 # R_MIPS_32   0x000014 EnHs2_Destroy
.word 0x82000018 # R_MIPS_32   0x000018 EnHs2_Update
.word 0x8200001C # R_MIPS_32   0x00001C EnHs2_Draw

# RODATA RELOCS
.word 0xC2000020 # R_MIPS_32   0x000020 .text
.word 0xC2000024 # R_MIPS_32   0x000024 .text
.word 0xC2000028 # R_MIPS_32   0x000028 .text
.word 0xC200002C # R_MIPS_32   0x00002C .text
.word 0xC2000030 # R_MIPS_32   0x000030 .text
.word 0
.word 0

.word 0x00000090 # ovl_En_Hs2OverlayInfoOffset
