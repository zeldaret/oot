.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800ACE70
/* B24010 800ACE70 240200FF */  li    $v0, 255
/* B24014 800ACE74 AC800000 */  sw    $zero, ($a0)
/* B24018 800ACE78 AC800004 */  sw    $zero, 4($a0)
/* B2401C 800ACE7C A0820008 */  sb    $v0, 8($a0)
/* B24020 800ACE80 A0820009 */  sb    $v0, 9($a0)
/* B24024 800ACE84 A082000A */  sb    $v0, 0xa($a0)
/* B24028 800ACE88 03E00008 */  jr    $ra
/* B2402C 800ACE8C A082000B */   sb    $v0, 0xb($a0)

glabel func_800ACE90
/* B24030 800ACE90 03E00008 */  jr    $ra
/* B24034 800ACE94 AFA40000 */   sw    $a0, ($sp)

glabel func_800ACE98
/* B24038 800ACE98 8CA20000 */  lw    $v0, ($a1)
/* B2403C 800ACE9C 00803025 */  move  $a2, $a0
/* B24040 800ACEA0 3C03E700 */  lui   $v1, 0xe700
/* B24044 800ACEA4 00402025 */  move  $a0, $v0
/* B24048 800ACEA8 AC830000 */  sw    $v1, ($a0)
/* B2404C 800ACEAC AC800004 */  sw    $zero, 4($a0)
/* B24050 800ACEB0 24420008 */  addiu $v0, $v0, 8
/* B24054 800ACEB4 00402025 */  move  $a0, $v0
/* B24058 800ACEB8 3C0EEE00 */  lui   $t6, 0xee00
/* B2405C 800ACEBC 240FFFFF */  li    $t7, -1
/* B24060 800ACEC0 AC8F0004 */  sw    $t7, 4($a0)
/* B24064 800ACEC4 AC8E0000 */  sw    $t6, ($a0)
/* B24068 800ACEC8 8CD80004 */  lw    $t8, 4($a2)
/* B2406C 800ACECC 24420008 */  addiu $v0, $v0, 8
/* B24070 800ACED0 24070001 */  li    $a3, 1
/* B24074 800ACED4 14F80007 */  bne   $a3, $t8, .L800ACEF4
/* B24078 800ACED8 00402025 */   move  $a0, $v0
/* B2407C 800ACEDC 3C080050 */  lui   $t0, (0x005003C0 >> 16) # lui $t0, 0x50
/* B24080 800ACEE0 350803C0 */  ori   $t0, (0x005003C0 & 0xFFFF) # ori $t0, $t0, 0x3c0
/* B24084 800ACEE4 3C19ED00 */  lui   $t9, 0xed00
/* B24088 800ACEE8 AC990000 */  sw    $t9, ($a0)
/* B2408C 800ACEEC AC880004 */  sw    $t0, 4($a0)
/* B24090 800ACEF0 24420008 */  addiu $v0, $v0, 8
.L800ACEF4:
/* B24094 800ACEF4 8CC40000 */  lw    $a0, ($a2)
/* B24098 800ACEF8 3C0A8013 */  lui   $t2, %hi(D_8012AC40) # $t2, 0x8013
/* B2409C 800ACEFC 254AAC40 */  addiu $t2, %lo(D_8012AC40) # addiu $t2, $t2, -0x53c0
/* B240A0 800ACF00 1087000C */  beq   $a0, $a3, .L800ACF34
/* B240A4 800ACF04 3C09DE00 */   lui   $t1, 0xde00
/* B240A8 800ACF08 24010002 */  li    $at, 2
/* B240AC 800ACF0C 1081000E */  beq   $a0, $at, .L800ACF48
/* B240B0 800ACF10 3C0BFA00 */   lui   $t3, 0xfa00
/* B240B4 800ACF14 24010003 */  li    $at, 3
/* B240B8 800ACF18 10810018 */  beq   $a0, $at, .L800ACF7C
/* B240BC 800ACF1C 3C0FF900 */   lui   $t7, 0xf900
/* B240C0 800ACF20 24010004 */  li    $at, 4
/* B240C4 800ACF24 10810022 */  beq   $a0, $at, .L800ACFB0
/* B240C8 800ACF28 3C09F800 */   lui   $t1, 0xf800
/* B240CC 800ACF2C 1000002D */  b     .L800ACFE4
/* B240D0 800ACF30 00402025 */   move  $a0, $v0
.L800ACF34:
/* B240D4 800ACF34 00402025 */  move  $a0, $v0
/* B240D8 800ACF38 AC890000 */  sw    $t1, ($a0)
/* B240DC 800ACF3C AC8A0004 */  sw    $t2, 4($a0)
/* B240E0 800ACF40 10000027 */  b     .L800ACFE0
/* B240E4 800ACF44 24420008 */   addiu $v0, $v0, 8
.L800ACF48:
/* B240E8 800ACF48 00402025 */  move  $a0, $v0
/* B240EC 800ACF4C AC8B0000 */  sw    $t3, ($a0)
/* B240F0 800ACF50 8CCC0008 */  lw    $t4, 8($a2)
/* B240F4 800ACF54 24420008 */  addiu $v0, $v0, 8
/* B240F8 800ACF58 3C0E8013 */  lui   $t6, %hi(D_8012AC58) # $t6, 0x8013
/* B240FC 800ACF5C AC8C0004 */  sw    $t4, 4($a0)
/* B24100 800ACF60 00402025 */  move  $a0, $v0
/* B24104 800ACF64 25CEAC58 */  addiu $t6, %lo(D_8012AC58) # addiu $t6, $t6, -0x53a8
/* B24108 800ACF68 3C0DDE00 */  lui   $t5, 0xde00
/* B2410C 800ACF6C AC8D0000 */  sw    $t5, ($a0)
/* B24110 800ACF70 AC8E0004 */  sw    $t6, 4($a0)
/* B24114 800ACF74 1000001A */  b     .L800ACFE0
/* B24118 800ACF78 24420008 */   addiu $v0, $v0, 8
.L800ACF7C:
/* B2411C 800ACF7C 00402025 */  move  $a0, $v0
/* B24120 800ACF80 AC8F0000 */  sw    $t7, ($a0)
/* B24124 800ACF84 8CD80008 */  lw    $t8, 8($a2)
/* B24128 800ACF88 24420008 */  addiu $v0, $v0, 8
/* B2412C 800ACF8C 3C088013 */  lui   $t0, %hi(D_8012AC00) # $t0, 0x8013
/* B24130 800ACF90 AC980004 */  sw    $t8, 4($a0)
/* B24134 800ACF94 00402025 */  move  $a0, $v0
/* B24138 800ACF98 2508AC00 */  addiu $t0, %lo(D_8012AC00) # addiu $t0, $t0, -0x5400
/* B2413C 800ACF9C 3C19DE00 */  lui   $t9, 0xde00
/* B24140 800ACFA0 AC990000 */  sw    $t9, ($a0)
/* B24144 800ACFA4 AC880004 */  sw    $t0, 4($a0)
/* B24148 800ACFA8 1000000D */  b     .L800ACFE0
/* B2414C 800ACFAC 24420008 */   addiu $v0, $v0, 8
.L800ACFB0:
/* B24150 800ACFB0 00402025 */  move  $a0, $v0
/* B24154 800ACFB4 AC890000 */  sw    $t1, ($a0)
/* B24158 800ACFB8 8CCA0008 */  lw    $t2, 8($a2)
/* B2415C 800ACFBC 24420008 */  addiu $v0, $v0, 8
/* B24160 800ACFC0 3C0C8013 */  lui   $t4, %hi(D_8012AC28) # $t4, 0x8013
/* B24164 800ACFC4 AC8A0004 */  sw    $t2, 4($a0)
/* B24168 800ACFC8 00402025 */  move  $a0, $v0
/* B2416C 800ACFCC 258CAC28 */  addiu $t4, %lo(D_8012AC28) # addiu $t4, $t4, -0x53d8
/* B24170 800ACFD0 3C0BDE00 */  lui   $t3, 0xde00
/* B24174 800ACFD4 AC8B0000 */  sw    $t3, ($a0)
/* B24178 800ACFD8 AC8C0004 */  sw    $t4, 4($a0)
/* B2417C 800ACFDC 24420008 */  addiu $v0, $v0, 8
.L800ACFE0:
/* B24180 800ACFE0 00402025 */  move  $a0, $v0
.L800ACFE4:
/* B24184 800ACFE4 AC830000 */  sw    $v1, ($a0)
/* B24188 800ACFE8 AC800004 */  sw    $zero, 4($a0)
/* B2418C 800ACFEC 24420008 */  addiu $v0, $v0, 8
/* B24190 800ACFF0 03E00008 */  jr    $ra
/* B24194 800ACFF4 ACA20000 */   sw    $v0, ($a1)
