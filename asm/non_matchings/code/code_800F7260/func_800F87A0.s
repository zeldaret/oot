glabel func_800F87A0
/* B6F940 800F87A0 27BDFF80 */  addiu $sp, $sp, -0x80
/* B6F944 800F87A4 AFB60030 */  sw    $s6, 0x30($sp)
/* B6F948 800F87A8 309600FF */  andi  $s6, $a0, 0xff
/* B6F94C 800F87AC 3C0F8013 */  lui   $t7, %hi(gSoundBanks) # $t7, 0x8013
/* B6F950 800F87B0 AFB20020 */  sw    $s2, 0x20($sp)
/* B6F954 800F87B4 25EF33A8 */  addiu $t7, %lo(gSoundBanks) # addiu $t7, $t7, 0x33a8
/* B6F958 800F87B8 00167080 */  sll   $t6, $s6, 2
/* B6F95C 800F87BC 01CF9021 */  addu  $s2, $t6, $t7
/* B6F960 800F87C0 8E430000 */  lw    $v1, ($s2)
/* B6F964 800F87C4 AFBF0034 */  sw    $ra, 0x34($sp)
/* B6F968 800F87C8 AFB5002C */  sw    $s5, 0x2c($sp)
/* B6F96C 800F87CC AFB40028 */  sw    $s4, 0x28($sp)
/* B6F970 800F87D0 AFB30024 */  sw    $s3, 0x24($sp)
/* B6F974 800F87D4 AFB1001C */  sw    $s1, 0x1c($sp)
/* B6F978 800F87D8 AFB00018 */  sw    $s0, 0x18($sp)
/* B6F97C 800F87DC AFA40080 */  sw    $a0, 0x80($sp)
/* B6F980 800F87E0 9071002D */  lbu   $s1, 0x2d($v1)
/* B6F984 800F87E4 241300FF */  li    $s3, 255
/* B6F988 800F87E8 24140030 */  li    $s4, 48
/* B6F98C 800F87EC 12710016 */  beq   $s3, $s1, .L800F8848
/* B6F990 800F87F0 3C150602 */   lui   $s5, 0x602
.L800F87F4:
/* B6F994 800F87F4 02340019 */  multu $s1, $s4
/* B6F998 800F87F8 0000C012 */  mflo  $t8
/* B6F99C 800F87FC 00788021 */  addu  $s0, $v1, $t8
/* B6F9A0 800F8800 9202002A */  lbu   $v0, 0x2a($s0)
/* B6F9A4 800F8804 28410003 */  slti  $at, $v0, 3
/* B6F9A8 800F8808 14200007 */  bnez  $at, .L800F8828
/* B6F9AC 800F880C 00000000 */   nop   
/* B6F9B0 800F8810 9208002E */  lbu   $t0, 0x2e($s0)
/* B6F9B4 800F8814 00002825 */  move  $a1, $zero
/* B6F9B8 800F8818 00084A00 */  sll   $t1, $t0, 8
/* B6F9BC 800F881C 0C0396C8 */  jal   func_800E5B20
/* B6F9C0 800F8820 01352025 */   or    $a0, $t1, $s5
/* B6F9C4 800F8824 9202002A */  lbu   $v0, 0x2a($s0)
.L800F8828:
/* B6F9C8 800F8828 10400003 */  beqz  $v0, .L800F8838
/* B6F9CC 800F882C 32C400FF */   andi  $a0, $s6, 0xff
/* B6F9D0 800F8830 0C03DED5 */  jal   func_800F7B54
/* B6F9D4 800F8834 322500FF */   andi  $a1, $s1, 0xff
.L800F8838:
/* B6F9D8 800F8838 8E430000 */  lw    $v1, ($s2)
/* B6F9DC 800F883C 9071002D */  lbu   $s1, 0x2d($v1)
/* B6F9E0 800F8840 1671FFEC */  bne   $s3, $s1, .L800F87F4
/* B6F9E4 800F8844 00000000 */   nop   
.L800F8848:
/* B6F9E8 800F8848 00165300 */  sll   $t2, $s6, 0xc
/* B6F9EC 800F884C A7AA0070 */  sh    $t2, 0x70($sp)
/* B6F9F0 800F8850 00002025 */  move  $a0, $zero
/* B6F9F4 800F8854 0C03DD38 */  jal   func_800F74E0
/* B6F9F8 800F8858 27A50048 */   addiu $a1, $sp, 0x48
/* B6F9FC 800F885C 8FBF0034 */  lw    $ra, 0x34($sp)
/* B6FA00 800F8860 8FB00018 */  lw    $s0, 0x18($sp)
/* B6FA04 800F8864 8FB1001C */  lw    $s1, 0x1c($sp)
/* B6FA08 800F8868 8FB20020 */  lw    $s2, 0x20($sp)
/* B6FA0C 800F886C 8FB30024 */  lw    $s3, 0x24($sp)
/* B6FA10 800F8870 8FB40028 */  lw    $s4, 0x28($sp)
/* B6FA14 800F8874 8FB5002C */  lw    $s5, 0x2c($sp)
/* B6FA18 800F8878 8FB60030 */  lw    $s6, 0x30($sp)
/* B6FA1C 800F887C 03E00008 */  jr    $ra
/* B6FA20 800F8880 27BD0080 */   addiu $sp, $sp, 0x80

