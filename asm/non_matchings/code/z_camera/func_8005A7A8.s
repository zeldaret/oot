.rdata
glabel D_80139CC0
    .asciz "\x1B[41;37mcamera: error: illegal camera ID (%d) !! (%d|%d|%d)\n\x1B[m"
    .balign 4

.text
glabel func_8005A7A8
/* AD1948 8005A7A8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AD194C 8005A7AC AFB10020 */  sw    $s1, 0x20($sp)
/* AD1950 8005A7B0 AFB0001C */  sw    $s0, 0x1c($sp)
/* AD1954 8005A7B4 2401FFFF */  li    $at, -1
/* AD1958 8005A7B8 00808025 */  move  $s0, $a0
/* AD195C 8005A7BC 00A08825 */  move  $s1, $a1
/* AD1960 8005A7C0 10A10004 */  beq   $a1, $at, .L8005A7D4
/* AD1964 8005A7C4 AFBF0024 */   sw    $ra, 0x24($sp)
/* AD1968 8005A7C8 848E0148 */  lh    $t6, 0x148($a0)
/* AD196C 8005A7CC 54AE0007 */  bnel  $a1, $t6, .L8005A7EC
/* AD1970 8005A7D0 8619014A */   lh    $t9, 0x14a($s0)
.L8005A7D4:
/* AD1974 8005A7D4 860F014A */  lh    $t7, 0x14a($s0)
/* AD1978 8005A7D8 2402FFFF */  li    $v0, -1
/* AD197C 8005A7DC 35F80040 */  ori   $t8, $t7, 0x40
/* AD1980 8005A7E0 10000033 */  b     .L8005A8B0
/* AD1984 8005A7E4 A618014A */   sh    $t8, 0x14a($s0)
/* AD1988 8005A7E8 8619014A */  lh    $t9, 0x14a($s0)
.L8005A7EC:
/* AD198C 8005A7EC 02002025 */  move  $a0, $s0
/* AD1990 8005A7F0 33280040 */  andi  $t0, $t9, 0x40
/* AD1994 8005A7F4 5500002F */  bnezl $t0, .L8005A8B4
/* AD1998 8005A7F8 8FBF0024 */   lw    $ra, 0x24($sp)
/* AD199C 8005A7FC 0C0111D0 */  jal   func_80044740
/* AD19A0 8005A800 02202825 */   move  $a1, $s1
/* AD19A4 8005A804 A7A2002E */  sh    $v0, 0x2e($sp)
/* AD19A8 8005A808 8609014A */  lh    $t1, 0x14a($s0)
/* AD19AC 8005A80C 00022C00 */  sll   $a1, $v0, 0x10
/* AD19B0 8005A810 00052C03 */  sra   $a1, $a1, 0x10
/* AD19B4 8005A814 352A0040 */  ori   $t2, $t1, 0x40
/* AD19B8 8005A818 A60A014A */  sh    $t2, 0x14a($s0)
/* AD19BC 8005A81C 02002025 */  move  $a0, $s0
/* AD19C0 8005A820 0C016952 */  jal   Camera_ChangeSetting
/* AD19C4 8005A824 24060005 */   li    $a2, 5
/* AD19C8 8005A828 28430000 */  slti  $v1, $v0, 0
/* AD19CC 8005A82C 38630001 */  xori  $v1, $v1, 1
/* AD19D0 8005A830 00031C00 */  sll   $v1, $v1, 0x10
/* AD19D4 8005A834 00031C03 */  sra   $v1, $v1, 0x10
/* AD19D8 8005A838 1460000A */  bnez  $v1, .L8005A864
/* AD19DC 8005A83C 02002025 */   move  $a0, $s0
/* AD19E0 8005A840 860B0142 */  lh    $t3, 0x142($s0)
/* AD19E4 8005A844 3C0D8012 */  lui   $t5, %hi(sCameraSettings)
/* AD19E8 8005A848 2861FFFF */  slti  $at, $v1, -1
/* AD19EC 8005A84C 000B60C0 */  sll   $t4, $t3, 3
/* AD19F0 8005A850 01AC6821 */  addu  $t5, $t5, $t4
/* AD19F4 8005A854 8DADD064 */  lw    $t5, %lo(sCameraSettings)($t5)
/* AD19F8 8005A858 000D7000 */  sll   $t6, $t5, 0
/* AD19FC 8005A85C 05C10009 */  bgez  $t6, .L8005A884
/* AD1A00 8005A860 00000000 */   nop
.L8005A864:
/* AD1A04 8005A864 860F014A */  lh    $t7, 0x14a($s0)
/* AD1A08 8005A868 A6110148 */  sh    $s1, 0x148($s0)
/* AD1A0C 8005A86C 86050144 */  lh    $a1, 0x144($s0)
/* AD1A10 8005A870 35F80004 */  ori   $t8, $t7, 4
/* AD1A14 8005A874 0C01144A */  jal   Camera_CopyModeValuesToPREG
/* AD1A18 8005A878 A618014A */   sh    $t8, 0x14a($s0)
/* AD1A1C 8005A87C 1000000B */  b     .L8005A8AC
/* AD1A20 8005A880 3C018000 */   lui   $at, 0x8000
.L8005A884:
/* AD1A24 8005A884 10200008 */  beqz  $at, .L8005A8A8
/* AD1A28 8005A888 3C048014 */   lui   $a0, %hi(D_80139CC0) # $a0, 0x8014
/* AD1A2C 8005A88C 87B9002E */  lh    $t9, 0x2e($sp)
/* AD1A30 8005A890 86060164 */  lh    $a2, 0x164($s0)
/* AD1A34 8005A894 24849CC0 */  addiu $a0, %lo(D_80139CC0) # addiu $a0, $a0, -0x6340
/* AD1A38 8005A898 02202825 */  move  $a1, $s1
/* AD1A3C 8005A89C 24070032 */  li    $a3, 50
/* AD1A40 8005A8A0 0C00084C */  jal   osSyncPrintf
/* AD1A44 8005A8A4 AFB90010 */   sw    $t9, 0x10($sp)
.L8005A8A8:
/* AD1A48 8005A8A8 3C018000 */  lui   $at, 0x8000
.L8005A8AC:
/* AD1A4C 8005A8AC 02211025 */  or    $v0, $s1, $at
.L8005A8B0:
/* AD1A50 8005A8B0 8FBF0024 */  lw    $ra, 0x24($sp)
.L8005A8B4:
/* AD1A54 8005A8B4 8FB0001C */  lw    $s0, 0x1c($sp)
/* AD1A58 8005A8B8 8FB10020 */  lw    $s1, 0x20($sp)
/* AD1A5C 8005A8BC 03E00008 */  jr    $ra
/* AD1A60 8005A8C0 27BD0030 */   addiu $sp, $sp, 0x30

