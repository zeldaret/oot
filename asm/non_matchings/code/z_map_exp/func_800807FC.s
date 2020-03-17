.rdata
glabel D_8013D700
    .asciz "\x1b[33m"
    .balign 4

glabel D_8013D708
    .asciz "ＰＡＬＥＴＥセット 【 i=%x : room=%x 】Room_Inf[%d][4]=%x  ( map_palete_no = %d )\n"
    # EUC-JP: ＰＡＬＥＴＥセット 【 i=%x : room=%x 】 | Palette set
    .balign 4

glabel D_8013D75C
    .asciz "\x1b[m"
    .balign 4

.text
glabel func_800807FC
/* AF799C 800807FC 3C0E8016 */  lui   $t6, %hi(D_8015FFD0) # $t6, 0x8016
/* AF79A0 80080800 8DCEFFD0 */  lw    $t6, %lo(D_8015FFD0)($t6)
/* AF79A4 80080804 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AF79A8 80080808 3C078016 */  lui   $a3, %hi(gSaveContext+0x1402) # $a3, 0x8016
/* AF79AC 8008080C 94E7FA62 */  lhu   $a3, %lo(gSaveContext+0x1402)($a3)
/* AF79B0 80080810 AFBF001C */  sw    $ra, 0x1c($sp)
/* AF79B4 80080814 AFA50034 */  sw    $a1, 0x34($sp)
/* AF79B8 80080818 8DCF0008 */  lw    $t7, 8($t6)
/* AF79BC 8008081C 3C0A0001 */  lui   $t2, 1
/* AF79C0 80080820 00052C00 */  sll   $a1, $a1, 0x10
/* AF79C4 80080824 01445021 */  addu  $t2, $t2, $a0
/* AF79C8 80080828 854A074C */  lh    $t2, 0x74c($t2)
/* AF79CC 8008082C 00052C03 */  sra   $a1, $a1, 0x10
/* AF79D0 80080830 0007C180 */  sll   $t8, $a3, 6
/* AF79D4 80080834 00054040 */  sll   $t0, $a1, 1
/* AF79D8 80080838 01F8C821 */  addu  $t9, $t7, $t8
/* AF79DC 8008083C 03284821 */  addu  $t1, $t9, $t0
/* AF79E0 80080840 00803025 */  move  $a2, $a0
/* AF79E4 80080844 14AA0004 */  bne   $a1, $t2, .L80080858
/* AF79E8 80080848 85220000 */   lh    $v0, ($t1)
/* AF79EC 8008084C 3C010001 */  lui   $at, 1
/* AF79F0 80080850 00240821 */  addu  $at, $at, $a0
/* AF79F4 80080854 A422074E */  sh    $v0, 0x74e($at)
.L80080858:
/* AF79F8 80080858 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AF79FC 8008085C 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AF7A00 80080860 00C15821 */  addu  $t3, $a2, $at
/* AF7A04 80080864 3C048014 */  lui   $a0, %hi(D_8013D700) # $a0, 0x8014
/* AF7A08 80080868 2484D700 */  addiu $a0, %lo(D_8013D700) # addiu $a0, $a0, -0x2900
/* AF7A0C 8008086C AFAB0020 */  sw    $t3, 0x20($sp)
/* AF7A10 80080870 A7A20026 */  sh    $v0, 0x26($sp)
/* AF7A14 80080874 A7A50036 */  sh    $a1, 0x36($sp)
/* AF7A18 80080878 0C00084C */  jal   osSyncPrintf
/* AF7A1C 8008087C AFA7002C */   sw    $a3, 0x2c($sp)
/* AF7A20 80080880 8FA7002C */  lw    $a3, 0x2c($sp)
/* AF7A24 80080884 3C0D8016 */  lui   $t5, %hi(gSaveContext+0xe8)
/* AF7A28 80080888 8FAE0020 */  lw    $t6, 0x20($sp)
/* AF7A2C 8008088C 000760C0 */  sll   $t4, $a3, 3
/* AF7A30 80080890 01876023 */  subu  $t4, $t4, $a3
/* AF7A34 80080894 000C6080 */  sll   $t4, $t4, 2
/* AF7A38 80080898 01AC6821 */  addu  $t5, $t5, $t4
/* AF7A3C 8008089C 8DADE748 */  lw    $t5, %lo(gSaveContext+0xe8)($t5)
/* AF7A40 800808A0 3C048014 */  lui   $a0, %hi(D_8013D708) # $a0, 0x8014
/* AF7A44 800808A4 2484D708 */  addiu $a0, %lo(D_8013D708) # addiu $a0, $a0, -0x28f8
/* AF7A48 800808A8 AFAD0010 */  sw    $t5, 0x10($sp)
/* AF7A4C 800808AC 85CF025E */  lh    $t7, 0x25e($t6)
/* AF7A50 800808B0 87A50026 */  lh    $a1, 0x26($sp)
/* AF7A54 800808B4 87A60036 */  lh    $a2, 0x36($sp)
/* AF7A58 800808B8 0C00084C */  jal   osSyncPrintf
/* AF7A5C 800808BC AFAF0014 */   sw    $t7, 0x14($sp)
/* AF7A60 800808C0 3C048014 */  lui   $a0, %hi(D_8013D75C) # $a0, 0x8014
/* AF7A64 800808C4 0C00084C */  jal   osSyncPrintf
/* AF7A68 800808C8 2484D75C */   addiu $a0, %lo(D_8013D75C) # addiu $a0, $a0, -0x28a4
/* AF7A6C 800808CC 87B90026 */  lh    $t9, 0x26($sp)
/* AF7A70 800808D0 8FB80020 */  lw    $t8, 0x20($sp)
/* AF7A74 800808D4 24090002 */  li    $t1, 2
/* AF7A78 800808D8 00194040 */  sll   $t0, $t9, 1
/* AF7A7C 800808DC 03081021 */  addu  $v0, $t8, $t0
/* AF7A80 800808E0 240A00BF */  li    $t2, 191
/* AF7A84 800808E4 A0490140 */  sb    $t1, 0x140($v0)
/* AF7A88 800808E8 A04A0141 */  sb    $t2, 0x141($v0)
/* AF7A8C 800808EC 8FBF001C */  lw    $ra, 0x1c($sp)
/* AF7A90 800808F0 27BD0030 */  addiu $sp, $sp, 0x30
/* AF7A94 800808F4 03E00008 */  jr    $ra
/* AF7A98 800808F8 00000000 */   nop   

