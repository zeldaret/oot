glabel func_800F8884
/* B6FA24 800F8884 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B6FA28 800F8888 AFB5002C */  sw    $s5, 0x2c($sp)
/* B6FA2C 800F888C 309500FF */  andi  $s5, $a0, 0xff
/* B6FA30 800F8890 3C0F8013 */  lui   $t7, %hi(D_801333A8) # $t7, 0x8013
/* B6FA34 800F8894 AFB40028 */  sw    $s4, 0x28($sp)
/* B6FA38 800F8898 25EF33A8 */  addiu $t7, %lo(D_801333A8) # addiu $t7, $t7, 0x33a8
/* B6FA3C 800F889C 00157080 */  sll   $t6, $s5, 2
/* B6FA40 800F88A0 01CFA021 */  addu  $s4, $t6, $t7
/* B6FA44 800F88A4 8E820000 */  lw    $v0, ($s4)
/* B6FA48 800F88A8 AFBF003C */  sw    $ra, 0x3c($sp)
/* B6FA4C 800F88AC AFBE0038 */  sw    $fp, 0x38($sp)
/* B6FA50 800F88B0 AFB70034 */  sw    $s7, 0x34($sp)
/* B6FA54 800F88B4 AFB60030 */  sw    $s6, 0x30($sp)
/* B6FA58 800F88B8 AFB30024 */  sw    $s3, 0x24($sp)
/* B6FA5C 800F88BC AFB20020 */  sw    $s2, 0x20($sp)
/* B6FA60 800F88C0 AFB1001C */  sw    $s1, 0x1c($sp)
/* B6FA64 800F88C4 AFB00018 */  sw    $s0, 0x18($sp)
/* B6FA68 800F88C8 AFA40040 */  sw    $a0, 0x40($sp)
/* B6FA6C 800F88CC 9051002D */  lbu   $s1, 0x2d($v0)
/* B6FA70 800F88D0 241700FF */  li    $s7, 255
/* B6FA74 800F88D4 00A0B025 */  move  $s6, $a1
/* B6FA78 800F88D8 12F10025 */  beq   $s7, $s1, .L800F8970
/* B6FA7C 800F88DC 00009025 */   move  $s2, $zero
/* B6FA80 800F88E0 241E0030 */  li    $fp, 48
.L800F88E4:
/* B6FA84 800F88E4 023E0019 */  multu $s1, $fp
/* B6FA88 800F88E8 0000C012 */  mflo  $t8
/* B6FA8C 800F88EC 00588021 */  addu  $s0, $v0, $t8
/* B6FA90 800F88F0 8E190000 */  lw    $t9, ($s0)
/* B6FA94 800F88F4 56D90017 */  bnel  $s6, $t9, .L800F8954
/* B6FA98 800F88F8 323200FF */   andi  $s2, $s1, 0xff
/* B6FA9C 800F88FC 9202002A */  lbu   $v0, 0x2a($s0)
/* B6FAA0 800F8900 00129880 */  sll   $s3, $s2, 2
/* B6FAA4 800F8904 02729823 */  subu  $s3, $s3, $s2
/* B6FAA8 800F8908 28410003 */  slti  $at, $v0, 3
/* B6FAAC 800F890C 14200008 */  bnez  $at, .L800F8930
/* B6FAB0 800F8910 00139900 */   sll   $s3, $s3, 4
/* B6FAB4 800F8914 9204002E */  lbu   $a0, 0x2e($s0)
/* B6FAB8 800F8918 3C010602 */  lui   $at, 0x602
/* B6FABC 800F891C 00002825 */  move  $a1, $zero
/* B6FAC0 800F8920 00042200 */  sll   $a0, $a0, 8
/* B6FAC4 800F8924 0C0396C8 */  jal   func_800E5B20
/* B6FAC8 800F8928 00812025 */   or    $a0, $a0, $at
/* B6FACC 800F892C 9202002A */  lbu   $v0, 0x2a($s0)
.L800F8930:
/* B6FAD0 800F8930 10400003 */  beqz  $v0, .L800F8940
/* B6FAD4 800F8934 32A400FF */   andi  $a0, $s5, 0xff
/* B6FAD8 800F8938 0C03DED5 */  jal   func_800F7B54
/* B6FADC 800F893C 322500FF */   andi  $a1, $s1, 0xff
.L800F8940:
/* B6FAE0 800F8940 8E820000 */  lw    $v0, ($s4)
/* B6FAE4 800F8944 00534021 */  addu  $t0, $v0, $s3
/* B6FAE8 800F8948 10000007 */  b     .L800F8968
/* B6FAEC 800F894C 9111002D */   lbu   $s1, 0x2d($t0)
/* B6FAF0 800F8950 323200FF */  andi  $s2, $s1, 0xff
.L800F8954:
/* B6FAF4 800F8954 00124880 */  sll   $t1, $s2, 2
/* B6FAF8 800F8958 01324823 */  subu  $t1, $t1, $s2
/* B6FAFC 800F895C 00094900 */  sll   $t1, $t1, 4
/* B6FB00 800F8960 00495021 */  addu  $t2, $v0, $t1
/* B6FB04 800F8964 9151002D */  lbu   $s1, 0x2d($t2)
.L800F8968:
/* B6FB08 800F8968 16F1FFDE */  bne   $s7, $s1, .L800F88E4
/* B6FB0C 800F896C 00000000 */   nop   
.L800F8970:
/* B6FB10 800F8970 8FBF003C */  lw    $ra, 0x3c($sp)
/* B6FB14 800F8974 8FB00018 */  lw    $s0, 0x18($sp)
/* B6FB18 800F8978 8FB1001C */  lw    $s1, 0x1c($sp)
/* B6FB1C 800F897C 8FB20020 */  lw    $s2, 0x20($sp)
/* B6FB20 800F8980 8FB30024 */  lw    $s3, 0x24($sp)
/* B6FB24 800F8984 8FB40028 */  lw    $s4, 0x28($sp)
/* B6FB28 800F8988 8FB5002C */  lw    $s5, 0x2c($sp)
/* B6FB2C 800F898C 8FB60030 */  lw    $s6, 0x30($sp)
/* B6FB30 800F8990 8FB70034 */  lw    $s7, 0x34($sp)
/* B6FB34 800F8994 8FBE0038 */  lw    $fp, 0x38($sp)
/* B6FB38 800F8998 03E00008 */  jr    $ra
/* B6FB3C 800F899C 27BD0040 */   addiu $sp, $sp, 0x40

/* B6FB40 800F89A0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B6FB44 800F89A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B6FB48 800F89A8 AFA40048 */  sw    $a0, 0x48($sp)
/* B6FB4C 800F89AC AFA5004C */  sw    $a1, 0x4c($sp)
/* B6FB50 800F89B0 0C03E221 */  jal   func_800F8884
/* B6FB54 800F89B4 93A4004B */   lbu   $a0, 0x4b($sp)
/* B6FB58 800F89B8 93AE004B */  lbu   $t6, 0x4b($sp)
/* B6FB5C 800F89BC 8FB8004C */  lw    $t8, 0x4c($sp)
/* B6FB60 800F89C0 24040001 */  li    $a0, 1
/* B6FB64 800F89C4 000E7B00 */  sll   $t7, $t6, 0xc
/* B6FB68 800F89C8 A7AF0040 */  sh    $t7, 0x40($sp)
/* B6FB6C 800F89CC 27A50018 */  addiu $a1, $sp, 0x18
/* B6FB70 800F89D0 0C03DD38 */  jal   func_800F74E0
/* B6FB74 800F89D4 AFB80018 */   sw    $t8, 0x18($sp)
/* B6FB78 800F89D8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B6FB7C 800F89DC 27BD0048 */  addiu $sp, $sp, 0x48
/* B6FB80 800F89E0 03E00008 */  jr    $ra
/* B6FB84 800F89E4 00000000 */   nop   

