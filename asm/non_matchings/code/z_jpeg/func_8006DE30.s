glabel func_8006DE30
/* AE4FD0 8006DE30 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AE4FD4 8006DE34 AFBF0014 */  sw    $ra, 0x14($sp)
/* AE4FD8 8006DE38 8C8300B4 */  lw    $v1, 0xb4($a0)
/* AE4FDC 8006DE3C 3C018000 */  lui   $at, (0x800006C0 >> 16) # lui $at, 0x8000
/* AE4FE0 8006DE40 342106C0 */  ori   $at, (0x800006C0 & 0xFFFF) # ori $at, $at, 0x6c0
/* AE4FE4 8006DE44 00617021 */  addu  $t6, $v1, $at
/* AE4FE8 8006DE48 3C018000 */  lui   $at, (0x80000220 >> 16) # lui $at, 0x8000
/* AE4FEC 8006DE4C 34210220 */  ori   $at, (0x80000220 & 0xFFFF) # ori $at, $at, 0x220
/* AE4FF0 8006DE50 0061C821 */  addu  $t9, $v1, $at
/* AE4FF4 8006DE54 3C018000 */  lui   $at, (0x800002A0 >> 16) # lui $at, 0x8000
/* AE4FF8 8006DE58 AC6E0000 */  sw    $t6, ($v1)
/* AE4FFC 8006DE5C 8C8F0028 */  lw    $t7, 0x28($a0)
/* AE5000 8006DE60 342102A0 */  ori   $at, (0x800002A0 & 0xFFFF) # ori $at, $at, 0x2a0
/* AE5004 8006DE64 00614821 */  addu  $t1, $v1, $at
/* AE5008 8006DE68 3C018000 */  lui   $at, (0x80000320 >> 16) # lui $at, 0x8000
/* AE500C 8006DE6C 34210320 */  ori   $at, (0x80000320 & 0xFFFF) # ori $at, $at, 0x320
/* AE5010 8006DE70 24180004 */  li    $t8, 4
/* AE5014 8006DE74 00615021 */  addu  $t2, $v1, $at
/* AE5018 8006DE78 AC780004 */  sw    $t8, 4($v1)
/* AE501C 8006DE7C AC79000C */  sw    $t9, 0xc($v1)
/* AE5020 8006DE80 AC690010 */  sw    $t1, 0x10($v1)
/* AE5024 8006DE84 AC6A0014 */  sw    $t2, 0x14($v1)
/* AE5028 8006DE88 AC6F0008 */  sw    $t7, 8($v1)
/* AE502C 8006DE8C 3C018012 */  lui   $at, %hi(D_8011FA64) # $at, 0x8012
/* AE5030 8006DE90 AC20FA64 */  sw    $zero, %lo(D_8011FA64)($at)
/* AE5034 8006DE94 AFA40028 */  sw    $a0, 0x28($sp)
/* AE5038 8006DE98 0C034B7C */  jal   SysUcode_GetUCodeBoot
/* AE503C 8006DE9C AFA30024 */   sw    $v1, 0x24($sp)
/* AE5040 8006DEA0 3C018012 */  lui   $at, %hi(D_8011FA68) # $at, 0x8012
/* AE5044 8006DEA4 0C034B7F */  jal   SysUcode_GetUcodeBootSize
/* AE5048 8006DEA8 AC22FA68 */   sw    $v0, %lo(D_8011FA68)($at)
/* AE504C 8006DEAC 8FA30024 */  lw    $v1, 0x24($sp)
/* AE5050 8006DEB0 8FA70028 */  lw    $a3, 0x28($sp)
/* AE5054 8006DEB4 3C018012 */  lui   $at, %hi(D_8011FA6C) # $at, 0x8012
/* AE5058 8006DEB8 AC22FA6C */  sw    $v0, %lo(D_8011FA6C)($at)
/* AE505C 8006DEBC 3C018012 */  lui   $at, %hi(D_8011FA90) # $at, 0x8012
/* AE5060 8006DEC0 246B0020 */  addiu $t3, $v1, 0x20
/* AE5064 8006DEC4 AC2BFA98 */  sw    $t3, %lo(D_8011FA98)($at)
/* AE5068 8006DEC8 AC23FA90 */  sw    $v1, %lo(D_8011FA90)($at)
/* AE506C 8006DECC 3C0D8012 */  lui   $t5, %hi(D_8011FA60) # $t5, 0x8012
/* AE5070 8006DED0 240C0002 */  li    $t4, 2
/* AE5074 8006DED4 25ADFA60 */  addiu $t5, %lo(D_8011FA60) # addiu $t5, $t5, -0x5a0
/* AE5078 8006DED8 24E80098 */  addiu $t0, $a3, 0x98
/* AE507C 8006DEDC 25B9003C */  addiu $t9, $t5, 0x3c
/* AE5080 8006DEE0 ACE00030 */  sw    $zero, 0x30($a3)
/* AE5084 8006DEE4 ACEC0038 */  sw    $t4, 0x38($a3)
/* AE5088 8006DEE8 ACE80080 */  sw    $t0, 0x80($a3)
/* AE508C 8006DEEC ACE00084 */  sw    $zero, 0x84($a3)
/* AE5090 8006DEF0 ACE0003C */  sw    $zero, 0x3c($a3)
/* AE5094 8006DEF4 00E0C025 */  move  $t8, $a3
.L8006DEF8:
/* AE5098 8006DEF8 8DAF0000 */  lw    $t7, ($t5)
/* AE509C 8006DEFC 25AD000C */  addiu $t5, $t5, 0xc
/* AE50A0 8006DF00 2718000C */  addiu $t8, $t8, 0xc
/* AE50A4 8006DF04 AF0F0034 */  sw    $t7, 0x34($t8)
/* AE50A8 8006DF08 8DAEFFF8 */  lw    $t6, -8($t5)
/* AE50AC 8006DF0C AF0E0038 */  sw    $t6, 0x38($t8)
/* AE50B0 8006DF10 8DAFFFFC */  lw    $t7, -4($t5)
/* AE50B4 8006DF14 15B9FFF8 */  bne   $t5, $t9, .L8006DEF8
/* AE50B8 8006DF18 AF0F003C */   sw    $t7, 0x3c($t8)
/* AE50BC 8006DF1C 8DAF0000 */  lw    $t7, ($t5)
/* AE50C0 8006DF20 3C048016 */  lui   $a0, %hi(gSchedContext+0x38) # $a0, 0x8016
/* AE50C4 8006DF24 248466A0 */  addiu $a0, %lo(gSchedContext+0x38) # addiu $a0, $a0, 0x66a0
/* AE50C8 8006DF28 AF0F0040 */  sw    $t7, 0x40($t8)
/* AE50CC 8006DF2C AFA80018 */  sw    $t0, 0x18($sp)
/* AE50D0 8006DF30 24E50030 */  addiu $a1, $a3, 0x30
/* AE50D4 8006DF34 0C000C18 */  jal   osSendMesg
/* AE50D8 8006DF38 24060001 */   li    $a2, 1
/* AE50DC 8006DF3C 3C048016 */  lui   $a0, %hi(gSchedContext) # $a0, 0x8016
/* AE50E0 8006DF40 0C03257E */  jal   func_800C95F8
/* AE50E4 8006DF44 24846668 */   addiu $a0, %lo(gSchedContext) # addiu $a0, $a0, 0x6668
/* AE50E8 8006DF48 8FA40018 */  lw    $a0, 0x18($sp)
/* AE50EC 8006DF4C 00002825 */  move  $a1, $zero
/* AE50F0 8006DF50 0C000CA0 */  jal   osRecvMesg
/* AE50F4 8006DF54 24060001 */   li    $a2, 1
/* AE50F8 8006DF58 8FBF0014 */  lw    $ra, 0x14($sp)
/* AE50FC 8006DF5C 27BD0028 */  addiu $sp, $sp, 0x28
/* AE5100 8006DF60 03E00008 */  jr    $ra
/* AE5104 8006DF64 00000000 */   nop   

