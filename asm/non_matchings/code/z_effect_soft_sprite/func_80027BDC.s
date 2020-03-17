.rdata
glabel D_80135AE0
    .asciz "\x1b[31m"
    .balign 4

glabel D_80135AE8
    .asciz "EffectSoftSprite2_disp():位置が領域外のため 削除します。エフェクトラベルNo.%d:プログラムの方で対応をお願いします。ここです ==> pos(%f, %f, %f)で、ラベルはz_effect_soft_sprite_dlftbls.declにあります。\n"
    # EUC-JP: 位置が領域外のため 削除します。エフェクトラベルNo.%d:プログラムの方で対応をお願いします。ここです ==> pos(%f, %f, %f)で、ラベルはz_effect_soft_sprite_dlftbls.declにあります。| Since the position is outside the area, delete it. Effect label No.% d: Please respond by the program. Here is ==> pos (% f,% f,% f) and the label is in z_effect_soft_sprite_dlftbls.decl.
    .balign 4

glabel D_80135BB4
    .asciz "\x1b[32m"
    .balign 4

glabel D_80135BBC
    .asciz "もし、posを別のことに使っている場合相談に応じます。\n"
    # EUC-JP: もし、posを別のことに使っている場合相談に応じます。| If you use pos for another thing, we will consult.
    .balign 4

glabel D_80135BF4
    .asciz "\x1b[m"
    .balign 4

.text
glabel func_80027BDC
/* A9ED7C 80027BDC 27BDFFA0 */  addiu $sp, $sp, -0x60
/* A9ED80 80027BE0 AFB30044 */  sw    $s3, 0x44($sp)
/* A9ED84 80027BE4 00809825 */  move  $s3, $a0
/* A9ED88 80027BE8 AFBF005C */  sw    $ra, 0x5c($sp)
/* A9ED8C 80027BEC AFBE0058 */  sw    $fp, 0x58($sp)
/* A9ED90 80027BF0 AFB70054 */  sw    $s7, 0x54($sp)
/* A9ED94 80027BF4 AFB60050 */  sw    $s6, 0x50($sp)
/* A9ED98 80027BF8 AFB5004C */  sw    $s5, 0x4c($sp)
/* A9ED9C 80027BFC AFB40048 */  sw    $s4, 0x48($sp)
/* A9EDA0 80027C00 AFB20040 */  sw    $s2, 0x40($sp)
/* A9EDA4 80027C04 AFB1003C */  sw    $s1, 0x3c($sp)
/* A9EDA8 80027C08 AFB00038 */  sw    $s0, 0x38($sp)
/* A9EDAC 80027C0C F7B60030 */  sdc1  $f22, 0x30($sp)
/* A9EDB0 80027C10 F7B40028 */  sdc1  $f20, 0x28($sp)
/* A9EDB4 80027C14 8E650000 */  lw    $a1, ($s3)
/* A9EDB8 80027C18 0C01E9B1 */  jal   Lights_CreateMapper
/* A9EDBC 80027C1C 248407A8 */   addiu $a0, $a0, 0x7a8
/* A9EDC0 80027C20 00408025 */  move  $s0, $v0
/* A9EDC4 80027C24 00402025 */  move  $a0, $v0
/* A9EDC8 80027C28 8E6507A8 */  lw    $a1, 0x7a8($s3)
/* A9EDCC 80027C2C 0C01E91D */  jal   func_8007A474
/* A9EDD0 80027C30 00003025 */   move  $a2, $zero
/* A9EDD4 80027C34 02002025 */  move  $a0, $s0
/* A9EDD8 80027C38 0C01E7BF */  jal   func_80079EFC
/* A9EDDC 80027C3C 8E650000 */   lw    $a1, ($s3)
/* A9EDE0 80027C40 3C128011 */  lui   $s2, %hi(EffectSS2Info) # $s2, 0x8011
/* A9EDE4 80027C44 265258B0 */  addiu $s2, %lo(EffectSS2Info) # addiu $s2, $s2, 0x58b0
/* A9EDE8 80027C48 8E430008 */  lw    $v1, 8($s2)
/* A9EDEC 80027C4C 00008825 */  move  $s1, $zero
/* A9EDF0 80027C50 00008025 */  move  $s0, $zero
/* A9EDF4 80027C54 18600051 */  blez  $v1, .L80027D9C
/* A9EDF8 80027C58 3C01C6FA */   li    $at, 0xC6FA0000 # 0.000000
/* A9EDFC 80027C5C 4481B000 */  mtc1  $at, $f22
/* A9EE00 80027C60 3C0146FA */  lui   $at, 0x46fa
/* A9EE04 80027C64 3C1E8013 */  lui   $fp, %hi(D_80135BF4) # $fp, 0x8013
/* A9EE08 80027C68 3C178013 */  lui   $s7, %hi(D_80135BBC) # $s7, 0x8013
/* A9EE0C 80027C6C 3C168013 */  lui   $s6, %hi(D_80135BB4) # $s6, 0x8013
/* A9EE10 80027C70 3C158013 */  lui   $s5, %hi(D_80135AE8) # $s5, 0x8013
/* A9EE14 80027C74 3C148013 */  lui   $s4, %hi(D_80135AE0)
/* A9EE18 80027C78 4481A000 */  mtc1  $at, $f20
/* A9EE1C 80027C7C 26945AE0 */  addiu $s4, %lo(D_80135AE0)
/* A9EE20 80027C80 26B55AE8 */  addiu $s5, %lo(D_80135AE8) # addiu $s5, $s5, 0x5ae8
/* A9EE24 80027C84 26D65BB4 */  addiu $s6, %lo(D_80135BB4) # addiu $s6, $s6, 0x5bb4
/* A9EE28 80027C88 26F75BBC */  addiu $s7, %lo(D_80135BBC) # addiu $s7, $s7, 0x5bbc
/* A9EE2C 80027C8C 27DE5BF4 */  addiu $fp, %lo(D_80135BF4) # addiu $fp, $fp, 0x5bf4
.L80027C90:
/* A9EE30 80027C90 8E4E0000 */  lw    $t6, ($s2)
/* A9EE34 80027C94 01D01021 */  addu  $v0, $t6, $s0
/* A9EE38 80027C98 844F005C */  lh    $t7, 0x5c($v0)
/* A9EE3C 80027C9C 05E2003C */  bltzl $t7, .L80027D90
/* A9EE40 80027CA0 26310001 */   addiu $s1, $s1, 1
/* A9EE44 80027CA4 C4400000 */  lwc1  $f0, ($v0)
/* A9EE48 80027CA8 4600A03C */  c.lt.s $f20, $f0
/* A9EE4C 80027CAC 00000000 */  nop   
/* A9EE50 80027CB0 45010017 */  bc1t  .L80027D10
/* A9EE54 80027CB4 00000000 */   nop   
/* A9EE58 80027CB8 4616003C */  c.lt.s $f0, $f22
/* A9EE5C 80027CBC 00000000 */  nop   
/* A9EE60 80027CC0 45010013 */  bc1t  .L80027D10
/* A9EE64 80027CC4 00000000 */   nop   
/* A9EE68 80027CC8 C4400004 */  lwc1  $f0, 4($v0)
/* A9EE6C 80027CCC 4600A03C */  c.lt.s $f20, $f0
/* A9EE70 80027CD0 00000000 */  nop   
/* A9EE74 80027CD4 4501000E */  bc1t  .L80027D10
/* A9EE78 80027CD8 00000000 */   nop   
/* A9EE7C 80027CDC 4616003C */  c.lt.s $f0, $f22
/* A9EE80 80027CE0 00000000 */  nop   
/* A9EE84 80027CE4 4501000A */  bc1t  .L80027D10
/* A9EE88 80027CE8 00000000 */   nop   
/* A9EE8C 80027CEC C4400008 */  lwc1  $f0, 8($v0)
/* A9EE90 80027CF0 4600A03C */  c.lt.s $f20, $f0
/* A9EE94 80027CF4 00000000 */  nop   
/* A9EE98 80027CF8 45010005 */  bc1t  .L80027D10
/* A9EE9C 80027CFC 00000000 */   nop   
/* A9EEA0 80027D00 4616003C */  c.lt.s $f0, $f22
/* A9EEA4 80027D04 02602025 */  move  $a0, $s3
/* A9EEA8 80027D08 4500001D */  bc1f  .L80027D80
/* A9EEAC 80027D0C 00000000 */   nop   
.L80027D10:
/* A9EEB0 80027D10 0C00084C */  jal   osSyncPrintf
/* A9EEB4 80027D14 02802025 */   move  $a0, $s4
/* A9EEB8 80027D18 8E580000 */  lw    $t8, ($s2)
/* A9EEBC 80027D1C 02A02025 */  move  $a0, $s5
/* A9EEC0 80027D20 03101021 */  addu  $v0, $t8, $s0
/* A9EEC4 80027D24 C4480004 */  lwc1  $f8, 4($v0)
/* A9EEC8 80027D28 C4440000 */  lwc1  $f4, ($v0)
/* A9EECC 80027D2C 9045005F */  lbu   $a1, 0x5f($v0)
/* A9EED0 80027D30 460042A1 */  cvt.d.s $f10, $f8
/* A9EED4 80027D34 460021A1 */  cvt.d.s $f6, $f4
/* A9EED8 80027D38 F7AA0010 */  sdc1  $f10, 0x10($sp)
/* A9EEDC 80027D3C C4500008 */  lwc1  $f16, 8($v0)
/* A9EEE0 80027D40 44073000 */  mfc1  $a3, $f6
/* A9EEE4 80027D44 44063800 */  mfc1  $a2, $f7
/* A9EEE8 80027D48 460084A1 */  cvt.d.s $f18, $f16
/* A9EEEC 80027D4C 0C00084C */  jal   osSyncPrintf
/* A9EEF0 80027D50 F7B20018 */   sdc1  $f18, 0x18($sp)
/* A9EEF4 80027D54 0C00084C */  jal   osSyncPrintf
/* A9EEF8 80027D58 02C02025 */   move  $a0, $s6
/* A9EEFC 80027D5C 0C00084C */  jal   osSyncPrintf
/* A9EF00 80027D60 02E02025 */   move  $a0, $s7
/* A9EF04 80027D64 0C00084C */  jal   osSyncPrintf
/* A9EF08 80027D68 03C02025 */   move  $a0, $fp
/* A9EF0C 80027D6C 8E590000 */  lw    $t9, ($s2)
/* A9EF10 80027D70 0C009D38 */  jal   Effect_SS_Delete
/* A9EF14 80027D74 02192021 */   addu  $a0, $s0, $t9
/* A9EF18 80027D78 10000004 */  b     .L80027D8C
/* A9EF1C 80027D7C 8E430008 */   lw    $v1, 8($s2)
.L80027D80:
/* A9EF20 80027D80 0C009EE6 */  jal   Effect_SS_DrawParticle
/* A9EF24 80027D84 02202825 */   move  $a1, $s1
/* A9EF28 80027D88 8E430008 */  lw    $v1, 8($s2)
.L80027D8C:
/* A9EF2C 80027D8C 26310001 */  addiu $s1, $s1, 1
.L80027D90:
/* A9EF30 80027D90 0223082A */  slt   $at, $s1, $v1
/* A9EF34 80027D94 1420FFBE */  bnez  $at, .L80027C90
/* A9EF38 80027D98 26100060 */   addiu $s0, $s0, 0x60
.L80027D9C:
/* A9EF3C 80027D9C 8FBF005C */  lw    $ra, 0x5c($sp)
/* A9EF40 80027DA0 D7B40028 */  ldc1  $f20, 0x28($sp)
/* A9EF44 80027DA4 D7B60030 */  ldc1  $f22, 0x30($sp)
/* A9EF48 80027DA8 8FB00038 */  lw    $s0, 0x38($sp)
/* A9EF4C 80027DAC 8FB1003C */  lw    $s1, 0x3c($sp)
/* A9EF50 80027DB0 8FB20040 */  lw    $s2, 0x40($sp)
/* A9EF54 80027DB4 8FB30044 */  lw    $s3, 0x44($sp)
/* A9EF58 80027DB8 8FB40048 */  lw    $s4, 0x48($sp)
/* A9EF5C 80027DBC 8FB5004C */  lw    $s5, 0x4c($sp)
/* A9EF60 80027DC0 8FB60050 */  lw    $s6, 0x50($sp)
/* A9EF64 80027DC4 8FB70054 */  lw    $s7, 0x54($sp)
/* A9EF68 80027DC8 8FBE0058 */  lw    $fp, 0x58($sp)
/* A9EF6C 80027DCC 03E00008 */  jr    $ra
/* A9EF70 80027DD0 27BD0060 */   addiu $sp, $sp, 0x60

