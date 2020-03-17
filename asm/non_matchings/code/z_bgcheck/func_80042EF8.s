glabel func_80042EF8
/* ABA098 80042EF8 27BDFFC0 */  addiu $sp, $sp, -0x40
/* ABA09C 80042EFC AFBF003C */  sw    $ra, 0x3c($sp)
/* ABA0A0 80042F00 AFB70038 */  sw    $s7, 0x38($sp)
/* ABA0A4 80042F04 AFB60034 */  sw    $s6, 0x34($sp)
/* ABA0A8 80042F08 AFB50030 */  sw    $s5, 0x30($sp)
/* ABA0AC 80042F0C AFB4002C */  sw    $s4, 0x2c($sp)
/* ABA0B0 80042F10 AFB30028 */  sw    $s3, 0x28($sp)
/* ABA0B4 80042F14 AFB20024 */  sw    $s2, 0x24($sp)
/* ABA0B8 80042F18 AFB10020 */  sw    $s1, 0x20($sp)
/* ABA0BC 80042F1C AFB0001C */  sw    $s0, 0x1c($sp)
/* ABA0C0 80042F20 AFA7004C */  sw    $a3, 0x4c($sp)
/* ABA0C4 80042F24 94C20000 */  lhu   $v0, ($a2)
/* ABA0C8 80042F28 8CAE0000 */  lw    $t6, ($a1)
/* ABA0CC 80042F2C 3417FFFF */  li    $s7, 65535
/* ABA0D0 80042F30 00A08825 */  move  $s1, $a1
/* ABA0D4 80042F34 00809825 */  move  $s3, $a0
/* ABA0D8 80042F38 30F400FF */  andi  $s4, $a3, 0xff
/* ABA0DC 80042F3C 12E20016 */  beq   $s7, $v0, .L80042F98
/* ABA0E0 80042F40 8DD20018 */   lw    $s2, 0x18($t6)
/* ABA0E4 80042F44 8CAF0048 */  lw    $t7, 0x48($a1)
/* ABA0E8 80042F48 0002C080 */  sll   $t8, $v0, 2
/* ABA0EC 80042F4C 93B60057 */  lbu   $s6, 0x57($sp)
/* ABA0F0 80042F50 93B50053 */  lbu   $s5, 0x53($sp)
/* ABA0F4 80042F54 01F88021 */  addu  $s0, $t7, $t8
.L80042F58:
/* ABA0F8 80042F58 86020000 */  lh    $v0, ($s0)
/* ABA0FC 80042F5C AFB60014 */  sw    $s6, 0x14($sp)
/* ABA100 80042F60 AFB50010 */  sw    $s5, 0x10($sp)
/* ABA104 80042F64 0002C900 */  sll   $t9, $v0, 4
/* ABA108 80042F68 03323021 */  addu  $a2, $t9, $s2
/* ABA10C 80042F6C 02602025 */  move  $a0, $s3
/* ABA110 80042F70 02202825 */  move  $a1, $s1
/* ABA114 80042F74 0C010B2E */  jal   func_80042CB8
/* ABA118 80042F78 328700FF */   andi  $a3, $s4, 0xff
/* ABA11C 80042F7C 96020002 */  lhu   $v0, 2($s0)
/* ABA120 80042F80 52E20006 */  beql  $s7, $v0, .L80042F9C
/* ABA124 80042F84 8FBF003C */   lw    $ra, 0x3c($sp)
/* ABA128 80042F88 8E280048 */  lw    $t0, 0x48($s1)
/* ABA12C 80042F8C 00024880 */  sll   $t1, $v0, 2
/* ABA130 80042F90 1000FFF1 */  b     .L80042F58
/* ABA134 80042F94 01098021 */   addu  $s0, $t0, $t1
.L80042F98:
/* ABA138 80042F98 8FBF003C */  lw    $ra, 0x3c($sp)
.L80042F9C:
/* ABA13C 80042F9C 8FB0001C */  lw    $s0, 0x1c($sp)
/* ABA140 80042FA0 8FB10020 */  lw    $s1, 0x20($sp)
/* ABA144 80042FA4 8FB20024 */  lw    $s2, 0x24($sp)
/* ABA148 80042FA8 8FB30028 */  lw    $s3, 0x28($sp)
/* ABA14C 80042FAC 8FB4002C */  lw    $s4, 0x2c($sp)
/* ABA150 80042FB0 8FB50030 */  lw    $s5, 0x30($sp)
/* ABA154 80042FB4 8FB60034 */  lw    $s6, 0x34($sp)
/* ABA158 80042FB8 8FB70038 */  lw    $s7, 0x38($sp)
/* ABA15C 80042FBC 03E00008 */  jr    $ra
/* ABA160 80042FC0 27BD0040 */   addiu $sp, $sp, 0x40

