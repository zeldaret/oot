.rdata
glabel D_8013984C
    .asciz "camera: room type: default set field\n"
    .balign 4

glabel D_80139874
    .asciz "camera: room type: default set etc (%d)\n"
    .balign 4
    
glabel D_801398A0
    .asciz "camera: room type: prerender\n"
    .balign 4

.text
glabel func_80057FC4
/* ACF164 80057FC4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* ACF168 80057FC8 AFBF002C */  sw    $ra, 0x2c($sp)
/* ACF16C 80057FCC AFB00028 */  sw    $s0, 0x28($sp)
/* ACF170 80057FD0 8C82008C */  lw    $v0, 0x8c($a0)
/* ACF174 80057FD4 3C010001 */  lui   $at, 1
/* ACF178 80057FD8 00808025 */  move  $s0, $a0
/* ACF17C 80057FDC 244E01E0 */  addiu $t6, $v0, 0x1e0
/* ACF180 80057FE0 108E0009 */  beq   $a0, $t6, .L80058008
/* ACF184 80057FE4 00411821 */   addu  $v1, $v0, $at
/* ACF188 80057FE8 8499014C */  lh    $t9, 0x14c($a0)
/* ACF18C 80057FEC 240F0021 */  li    $t7, 33
/* ACF190 80057FF0 A48F0142 */  sh    $t7, 0x142($a0)
/* ACF194 80057FF4 84980142 */  lh    $t8, 0x142($a0)
/* ACF198 80057FF8 3328FFFB */  andi  $t0, $t9, 0xfffb
/* ACF19C 80057FFC A488014C */  sh    $t0, 0x14c($a0)
/* ACF1A0 80058000 1000004A */  b     .L8005812C
/* ACF1A4 80058004 A4980154 */   sh    $t8, 0x154($a0)
.L80058008:
/* ACF1A8 80058008 8C691CC4 */  lw    $t1, 0x1cc4($v1)
/* ACF1AC 8005800C 24060001 */  li    $a2, 1
/* ACF1B0 80058010 3C048014 */  lui   $a0, %hi(D_801398A0)
/* ACF1B4 80058014 912A0000 */  lbu   $t2, ($t1)
/* ACF1B8 80058018 10CA003B */  beq   $a2, $t2, .L80058108
/* ACF1BC 8005801C 00000000 */   nop   
/* ACF1C0 80058020 90651CBF */  lbu   $a1, 0x1cbf($v1)
/* ACF1C4 80058024 3C048014 */  lui   $a0, %hi(D_8013984C)
/* ACF1C8 80058028 10A00012 */  beqz  $a1, .L80058074
/* ACF1CC 8005802C 00000000 */   nop   
/* ACF1D0 80058030 14A60021 */  bne   $a1, $a2, .L800580B8
/* ACF1D4 80058034 3C048014 */   lui   $a0, %hi(D_80139874) # $a0, 0x8014
/* ACF1D8 80058038 240B0012 */  li    $t3, 18
/* ACF1DC 8005803C 240C000A */  li    $t4, 10
/* ACF1E0 80058040 AFAC0018 */  sw    $t4, 0x18($sp)
/* ACF1E4 80058044 AFAB0014 */  sw    $t3, 0x14($sp)
/* ACF1E8 80058048 02002025 */  move  $a0, $s0
/* ACF1EC 8005804C 00002825 */  move  $a1, $zero
/* ACF1F0 80058050 2406FF9D */  li    $a2, -99
/* ACF1F4 80058054 24070000 */  li    $a3, 0
/* ACF1F8 80058058 0C016B50 */  jal   func_8005AD40
/* ACF1FC 8005805C AFA00010 */   sw    $zero, 0x10($sp)
/* ACF200 80058060 240D0003 */  li    $t5, 3
/* ACF204 80058064 A60D0142 */  sh    $t5, 0x142($s0)
/* ACF208 80058068 860E0142 */  lh    $t6, 0x142($s0)
/* ACF20C 8005806C 1000002F */  b     .L8005812C
/* ACF210 80058070 A60E0154 */   sh    $t6, 0x154($s0)
.L80058074:
/* ACF214 80058074 0C00084C */  jal   osSyncPrintf
/* ACF218 80058078 2484984C */   addiu $a0, %lo(D_8013984C) # addiu $a0, $a0, -0x67b4
/* ACF21C 8005807C 240F0012 */  li    $t7, 18
/* ACF220 80058080 2418000A */  li    $t8, 10
/* ACF224 80058084 AFB80018 */  sw    $t8, 0x18($sp)
/* ACF228 80058088 AFAF0014 */  sw    $t7, 0x14($sp)
/* ACF22C 8005808C 02002025 */  move  $a0, $s0
/* ACF230 80058090 00002825 */  move  $a1, $zero
/* ACF234 80058094 2406FF9D */  li    $a2, -99
/* ACF238 80058098 24070000 */  li    $a3, 0
/* ACF23C 8005809C 0C016B50 */  jal   func_8005AD40
/* ACF240 800580A0 AFA00010 */   sw    $zero, 0x10($sp)
/* ACF244 800580A4 24190001 */  li    $t9, 1
/* ACF248 800580A8 A6190142 */  sh    $t9, 0x142($s0)
/* ACF24C 800580AC 86080142 */  lh    $t0, 0x142($s0)
/* ACF250 800580B0 1000001E */  b     .L8005812C
/* ACF254 800580B4 A6080154 */   sh    $t0, 0x154($s0)
.L800580B8:
/* ACF258 800580B8 0C00084C */  jal   osSyncPrintf
/* ACF25C 800580BC 24849874 */   addiu $a0, %lo(D_80139874)
/* ACF260 800580C0 24090012 */  li    $t1, 18
/* ACF264 800580C4 240A000A */  li    $t2, 10
/* ACF268 800580C8 AFAA0018 */  sw    $t2, 0x18($sp)
/* ACF26C 800580CC AFA90014 */  sw    $t1, 0x14($sp)
/* ACF270 800580D0 02002025 */  move  $a0, $s0
/* ACF274 800580D4 00002825 */  move  $a1, $zero
/* ACF278 800580D8 2406FF9D */  li    $a2, -99
/* ACF27C 800580DC 24070000 */  li    $a3, 0
/* ACF280 800580E0 0C016B50 */  jal   func_8005AD40
/* ACF284 800580E4 AFA00010 */   sw    $zero, 0x10($sp)
/* ACF288 800580E8 860D014C */  lh    $t5, 0x14c($s0)
/* ACF28C 800580EC 240B0001 */  li    $t3, 1
/* ACF290 800580F0 A60B0142 */  sh    $t3, 0x142($s0)
/* ACF294 800580F4 860C0142 */  lh    $t4, 0x142($s0)
/* ACF298 800580F8 35AE0004 */  ori   $t6, $t5, 4
/* ACF29C 800580FC A60E014C */  sh    $t6, 0x14c($s0)
/* ACF2A0 80058100 1000000A */  b     .L8005812C
/* ACF2A4 80058104 A60C0154 */   sh    $t4, 0x154($s0)
.L80058108:
/* ACF2A8 80058108 0C00084C */  jal   osSyncPrintf
/* ACF2AC 8005810C 248498A0 */   addiu $a0, %lo(D_801398A0)
/* ACF2B0 80058110 240F0021 */  li    $t7, 33
/* ACF2B4 80058114 8619014C */  lh    $t9, 0x14c($s0)
/* ACF2B8 80058118 A60F0142 */  sh    $t7, 0x142($s0)
/* ACF2BC 8005811C 86180142 */  lh    $t8, 0x142($s0)
/* ACF2C0 80058120 3328FFFB */  andi  $t0, $t9, 0xfffb
/* ACF2C4 80058124 A608014C */  sh    $t0, 0x14c($s0)
/* ACF2C8 80058128 A6180154 */  sh    $t8, 0x154($s0)
.L8005812C:
/* ACF2CC 8005812C 8FBF002C */  lw    $ra, 0x2c($sp)
/* ACF2D0 80058130 8FB00028 */  lw    $s0, 0x28($sp)
/* ACF2D4 80058134 27BD0030 */  addiu $sp, $sp, 0x30
/* ACF2D8 80058138 03E00008 */  jr    $ra
/* ACF2DC 8005813C 00000000 */   nop   

