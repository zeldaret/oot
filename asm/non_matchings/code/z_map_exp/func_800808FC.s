.late_rodata
glabel jtbl_8013D9DC
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L80080A84
    .word L80080A84
    .word L80080A84
    .word L80080A84
    .word L80080A84
    .word L80080A84
    .word L80080A84
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4

.text
glabel func_800808FC
/* AF7A9C 800808FC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AF7AA0 80080900 AFB70034 */  sw    $s7, 0x34($sp)
/* AF7AA4 80080904 3C178016 */  lui   $s7, %hi(gSaveContext) # $s7, 0x8016
/* AF7AA8 80080908 AFBE0038 */  sw    $fp, 0x38($sp)
/* AF7AAC 8008090C 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AF7AB0 80080910 0005F400 */  sll   $fp, $a1, 0x10
/* AF7AB4 80080914 26F7E660 */  addiu $s7, %lo(gSaveContext) # addiu $s7, $s7, -0x19a0
/* AF7AB8 80080918 AFB5002C */  sw    $s5, 0x2c($sp)
/* AF7ABC 8008091C AFB40028 */  sw    $s4, 0x28($sp)
/* AF7AC0 80080920 AFB00018 */  sw    $s0, 0x18($sp)
/* AF7AC4 80080924 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AF7AC8 80080928 0080A825 */  move  $s5, $a0
/* AF7ACC 8008092C 001EF403 */  sra   $fp, $fp, 0x10
/* AF7AD0 80080930 AFBF003C */  sw    $ra, 0x3c($sp)
/* AF7AD4 80080934 AFB60030 */  sw    $s6, 0x30($sp)
/* AF7AD8 80080938 AFB30024 */  sw    $s3, 0x24($sp)
/* AF7ADC 8008093C AFB20020 */  sw    $s2, 0x20($sp)
/* AF7AE0 80080940 AFB1001C */  sw    $s1, 0x1c($sp)
/* AF7AE4 80080944 AFA50044 */  sw    $a1, 0x44($sp)
/* AF7AE8 80080948 96F41402 */  lhu   $s4, 0x1402($s7)
/* AF7AEC 8008094C 00811821 */  addu  $v1, $a0, $at
/* AF7AF0 80080950 00008025 */  move  $s0, $zero
.L80080954:
/* AF7AF4 80080954 00701021 */  addu  $v0, $v1, $s0
/* AF7AF8 80080958 26100001 */  addiu $s0, $s0, 1
/* AF7AFC 8008095C 00108400 */  sll   $s0, $s0, 0x10
/* AF7B00 80080960 00108403 */  sra   $s0, $s0, 0x10
/* AF7B04 80080964 2A010010 */  slti  $at, $s0, 0x10
/* AF7B08 80080968 A0400140 */  sb    $zero, 0x140($v0)
/* AF7B0C 8008096C 1420FFF9 */  bnez  $at, .L80080954
/* AF7B10 80080970 A0400150 */   sb    $zero, 0x150($v0)
/* AF7B14 80080974 3C168012 */  lui   $s6, %hi(gBitFlags) # $s6, 0x8012
/* AF7B18 80080978 26D67120 */  addiu $s6, %lo(gBitFlags) # addiu $s6, $s6, 0x7120
/* AF7B1C 8008097C 02F47821 */  addu  $t7, $s7, $s4
/* AF7B20 80080980 91F800A8 */  lbu   $t8, 0xa8($t7)
/* AF7B24 80080984 8ECE0008 */  lw    $t6, 8($s6)
/* AF7B28 80080988 24080001 */  li    $t0, 1
/* AF7B2C 8008098C 01D8C824 */  and   $t9, $t6, $t8
/* AF7B30 80080990 53200004 */  beql  $t9, $zero, .L800809A4
/* AF7B34 80080994 96A900A4 */   lhu   $t1, 0xa4($s5)
/* AF7B38 80080998 A060015E */  sb    $zero, 0x15e($v1)
/* AF7B3C 8008099C A068015F */  sb    $t0, 0x15f($v1)
/* AF7B40 800809A0 96A900A4 */  lhu   $t1, 0xa4($s5)
.L800809A4:
/* AF7B44 800809A4 2D210019 */  sltiu $at, $t1, 0x19
/* AF7B48 800809A8 10200036 */  beqz  $at, .L80080A84
/* AF7B4C 800809AC 00094880 */   sll   $t1, $t1, 2
/* AF7B50 800809B0 3C018014 */  lui   $at, %hi(jtbl_8013D9DC)
/* AF7B54 800809B4 00290821 */  addu  $at, $at, $t1
/* AF7B58 800809B8 8C29D9DC */  lw    $t1, %lo(jtbl_8013D9DC)($at)
/* AF7B5C 800809BC 01200008 */  jr    $t1
/* AF7B60 800809C0 00000000 */   nop   
glabel L800809C4
/* AF7B64 800809C4 3C028016 */  lui   $v0, %hi(D_8015FFD0) # $v0, 0x8016
/* AF7B68 800809C8 8C42FFD0 */  lw    $v0, %lo(D_8015FFD0)($v0)
/* AF7B6C 800809CC 00149840 */  sll   $s3, $s4, 1
/* AF7B70 800809D0 00008025 */  move  $s0, $zero
/* AF7B74 800809D4 8C4A000C */  lw    $t2, 0xc($v0)
/* AF7B78 800809D8 2412001C */  li    $s2, 28
/* AF7B7C 800809DC 241100FF */  li    $s1, 255
/* AF7B80 800809E0 01535821 */  addu  $t3, $t2, $s3
/* AF7B84 800809E4 85630000 */  lh    $v1, ($t3)
/* AF7B88 800809E8 58600027 */  blezl $v1, .L80080A88
/* AF7B8C 800809EC 8FBF003C */   lw    $ra, 0x3c($sp)
/* AF7B90 800809F0 8C4C0010 */  lw    $t4, 0x10($v0)
.L800809F4:
/* AF7B94 800809F4 001468C0 */  sll   $t5, $s4, 3
/* AF7B98 800809F8 01B46823 */  subu  $t5, $t5, $s4
/* AF7B9C 800809FC 001E70C0 */  sll   $t6, $fp, 3
/* AF7BA0 80080A00 01DE7023 */  subu  $t6, $t6, $fp
/* AF7BA4 80080A04 000D6940 */  sll   $t5, $t5, 5
/* AF7BA8 80080A08 000E7080 */  sll   $t6, $t6, 2
/* AF7BAC 80080A0C 018D7821 */  addu  $t7, $t4, $t5
/* AF7BB0 80080A10 01EEC021 */  addu  $t8, $t7, $t6
/* AF7BB4 80080A14 0010C840 */  sll   $t9, $s0, 1
/* AF7BB8 80080A18 03194021 */  addu  $t0, $t8, $t9
/* AF7BBC 80080A1C 85050000 */  lh    $a1, ($t0)
/* AF7BC0 80080A20 50B10013 */  beql  $a1, $s1, .L80080A70
/* AF7BC4 80080A24 26100001 */   addiu $s0, $s0, 1
/* AF7BC8 80080A28 02920019 */  multu $s4, $s2
/* AF7BCC 80080A2C 00054880 */  sll   $t1, $a1, 2
/* AF7BD0 80080A30 02C95021 */  addu  $t2, $s6, $t1
/* AF7BD4 80080A34 8D4B0000 */  lw    $t3, ($t2)
/* AF7BD8 80080A38 00006012 */  mflo  $t4
/* AF7BDC 80080A3C 02EC6821 */  addu  $t5, $s7, $t4
/* AF7BE0 80080A40 8DAF00E8 */  lw    $t7, 0xe8($t5)
/* AF7BE4 80080A44 016F7024 */  and   $t6, $t3, $t7
/* AF7BE8 80080A48 51C00009 */  beql  $t6, $zero, .L80080A70
/* AF7BEC 80080A4C 26100001 */   addiu $s0, $s0, 1
/* AF7BF0 80080A50 0C0201FF */  jal   func_800807FC
/* AF7BF4 80080A54 02A02025 */   move  $a0, $s5
/* AF7BF8 80080A58 3C028016 */  lui   $v0, %hi(D_8015FFD0) # $v0, 0x8016
/* AF7BFC 80080A5C 8C42FFD0 */  lw    $v0, %lo(D_8015FFD0)($v0)
/* AF7C00 80080A60 8C58000C */  lw    $t8, 0xc($v0)
/* AF7C04 80080A64 0313C821 */  addu  $t9, $t8, $s3
/* AF7C08 80080A68 87230000 */  lh    $v1, ($t9)
/* AF7C0C 80080A6C 26100001 */  addiu $s0, $s0, 1
.L80080A70:
/* AF7C10 80080A70 00108400 */  sll   $s0, $s0, 0x10
/* AF7C14 80080A74 00108403 */  sra   $s0, $s0, 0x10
/* AF7C18 80080A78 0203082A */  slt   $at, $s0, $v1
/* AF7C1C 80080A7C 5420FFDD */  bnezl $at, .L800809F4
/* AF7C20 80080A80 8C4C0010 */   lw    $t4, 0x10($v0)
.L80080A84:
glabel L80080A84
/* AF7C24 80080A84 8FBF003C */  lw    $ra, 0x3c($sp)
.L80080A88:
/* AF7C28 80080A88 8FB00018 */  lw    $s0, 0x18($sp)
/* AF7C2C 80080A8C 8FB1001C */  lw    $s1, 0x1c($sp)
/* AF7C30 80080A90 8FB20020 */  lw    $s2, 0x20($sp)
/* AF7C34 80080A94 8FB30024 */  lw    $s3, 0x24($sp)
/* AF7C38 80080A98 8FB40028 */  lw    $s4, 0x28($sp)
/* AF7C3C 80080A9C 8FB5002C */  lw    $s5, 0x2c($sp)
/* AF7C40 80080AA0 8FB60030 */  lw    $s6, 0x30($sp)
/* AF7C44 80080AA4 8FB70034 */  lw    $s7, 0x34($sp)
/* AF7C48 80080AA8 8FBE0038 */  lw    $fp, 0x38($sp)
/* AF7C4C 80080AAC 03E00008 */  jr    $ra
/* AF7C50 80080AB0 27BD0040 */   addiu $sp, $sp, 0x40

