.rdata
glabel D_80143608
    .asciz "\n@@@ 0,0,0,2,	/* Look Camera	*/"
    .balign 4

glabel D_80143628
    .asciz "\n@@@ 0,1,	/* dousa	*/"
    .balign 4

glabel D_80143640
    .asciz "\n@@@ 0,0,	/* Start Flame	*/"
    .balign 4

glabel D_8014365C
    .asciz "	/*  End   Flame	*/"
    .balign 4

glabel D_80143670
    .asciz "\n@@@0,0,	/*  Dammy	*/\n@@@ "
    .balign 4

glabel D_8014368C
    .asciz "\n@@@    %d, /*     code     */"
    .balign 4

glabel D_801436AC
    .asciz "\n@@@    %d,  /*     z        */"
    .balign 4

glabel D_801436CC
    .asciz "	/*  sokudo	*/"
    .balign 4

glabel D_801436DC
    .asciz "	/*  zoom	*/"
    .balign 4

glabel D_801436EC
    .asciz "	/*  x pos	*/"
    .balign 4

glabel D_801436FC
    .asciz "	/*  y pos	*/"
    .balign 4

glabel D_8014370C
    .asciz "	/*  z pos	*/\n"
    .balign 4

glabel D_8014371C
    .asciz "\n@@@0,0,	/*  Dammy	*/\n@@@ "
    .balign 4

glabel D_80143738
    .asciz "\n@@@ 0,0,0,1,	/* Position Camera */"
    .balign 4

glabel D_8014375C
    .asciz "\n@@@ 0,1,	/* dousa	*/"
    .balign 4

glabel D_80143774
    .asciz "\n@@@ 0,0,	/* Start Flame	*/"
    .balign 4

glabel D_80143790
    .asciz "	/*  End   Flame	*/"
    .balign 4

glabel D_801437A4
    .asciz "\n@@@0,0,	/*  Dammy	*/\n@@@ "
    .balign 4

glabel D_801437C0
    .asciz "\n@@@    %d, /*     code     */"
    .balign 4

glabel D_801437E0
    .asciz "\n@@@    %d, /*     z        */"
    .balign 4

glabel D_80143800
    .asciz "	/*  sokudo	*/"
    .balign 4

glabel D_80143810
    .asciz "	/*  zoom	*/"
    .balign 4

glabel D_80143820
    .asciz "	/*  x pos	*/"
    .balign 4

glabel D_80143830
    .asciz "	/*  y pos	*/"
    .balign 4

glabel D_80143840
    .asciz "	/*  z pos	*/"
    .balign 4

glabel D_80143850
    .asciz "\n@@@0,0,	/*  Dammy	*/\n@@@ "
    .balign 4

.text
glabel func_800B4B20
/* B2BCC0 800B4B20 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B2BCC4 800B4B24 AFBF0024 */  sw    $ra, 0x24($sp)
/* B2BCC8 800B4B28 AFB20020 */  sw    $s2, 0x20($sp)
/* B2BCCC 800B4B2C AFB1001C */  sw    $s1, 0x1c($sp)
/* B2BCD0 800B4B30 AFB00018 */  sw    $s0, 0x18($sp)
/* B2BCD4 800B4B34 8C8E0008 */  lw    $t6, 8($a0)
/* B2BCD8 800B4B38 00809025 */  move  $s2, $a0
/* B2BCDC 800B4B3C 3C048014 */  lui   $a0, %hi(D_80143608) # $a0, 0x8014
/* B2BCE0 800B4B40 24843608 */  addiu $a0, %lo(D_80143608) # addiu $a0, $a0, 0x3608
/* B2BCE4 800B4B44 0C00084C */  jal   osSyncPrintf
/* B2BCE8 800B4B48 AFAE0028 */   sw    $t6, 0x28($sp)
/* B2BCEC 800B4B4C 3C048014 */  lui   $a0, %hi(D_80143628) # $a0, 0x8014
/* B2BCF0 800B4B50 0C00084C */  jal   osSyncPrintf
/* B2BCF4 800B4B54 24843628 */   addiu $a0, %lo(D_80143628) # addiu $a0, $a0, 0x3628
/* B2BCF8 800B4B58 3C048014 */  lui   $a0, %hi(D_80143640) # $a0, 0x8014
/* B2BCFC 800B4B5C 0C00084C */  jal   osSyncPrintf
/* B2BD00 800B4B60 24843640 */   addiu $a0, %lo(D_80143640) # addiu $a0, $a0, 0x3640
/* B2BD04 800B4B64 0C02D2AA */  jal   func_800B4AA8
/* B2BD08 800B4B68 9644000C */   lhu   $a0, 0xc($s2)
/* B2BD0C 800B4B6C 3C048014 */  lui   $a0, %hi(D_8014365C) # $a0, 0x8014
/* B2BD10 800B4B70 0C00084C */  jal   osSyncPrintf
/* B2BD14 800B4B74 2484365C */   addiu $a0, %lo(D_8014365C) # addiu $a0, $a0, 0x365c
/* B2BD18 800B4B78 3C048014 */  lui   $a0, %hi(D_80143670) # $a0, 0x8014
/* B2BD1C 800B4B7C 0C00084C */  jal   osSyncPrintf
/* B2BD20 800B4B80 24843670 */   addiu $a0, %lo(D_80143670) # addiu $a0, $a0, 0x3670
/* B2BD24 800B4B84 864F000E */  lh    $t7, 0xe($s2)
/* B2BD28 800B4B88 00008825 */  move  $s1, $zero
/* B2BD2C 800B4B8C 8FB00028 */  lw    $s0, 0x28($sp)
/* B2BD30 800B4B90 19E0002B */  blez  $t7, .L800B4C40
.L800B4B94:
/* B2BD34 800B4B94 3C048014 */   lui   $a0, %hi(D_8014368C) # $a0, 0x8014
/* B2BD38 800B4B98 2484368C */  addiu $a0, %lo(D_8014368C) # addiu $a0, $a0, 0x368c
/* B2BD3C 800B4B9C 0C00084C */  jal   osSyncPrintf
/* B2BD40 800B4BA0 82050000 */   lb    $a1, ($s0)
/* B2BD44 800B4BA4 3C048014 */  lui   $a0, %hi(D_801436AC) # $a0, 0x8014
/* B2BD48 800B4BA8 248436AC */  addiu $a0, %lo(D_801436AC) # addiu $a0, $a0, 0x36ac
/* B2BD4C 800B4BAC 0C00084C */  jal   osSyncPrintf
/* B2BD50 800B4BB0 82050001 */   lb    $a1, 1($s0)
/* B2BD54 800B4BB4 0C02D2AA */  jal   func_800B4AA8
/* B2BD58 800B4BB8 96040002 */   lhu   $a0, 2($s0)
/* B2BD5C 800B4BBC 3C048014 */  lui   $a0, %hi(D_801436CC) # $a0, 0x8014
/* B2BD60 800B4BC0 0C00084C */  jal   osSyncPrintf
/* B2BD64 800B4BC4 248436CC */   addiu $a0, %lo(D_801436CC) # addiu $a0, $a0, 0x36cc
/* B2BD68 800B4BC8 0C02D29A */  jal   func_800B4A68
/* B2BD6C 800B4BCC C60C0004 */   lwc1  $f12, 4($s0)
/* B2BD70 800B4BD0 3C048014 */  lui   $a0, %hi(D_801436DC) # $a0, 0x8014
/* B2BD74 800B4BD4 0C00084C */  jal   osSyncPrintf
/* B2BD78 800B4BD8 248436DC */   addiu $a0, %lo(D_801436DC) # addiu $a0, $a0, 0x36dc
/* B2BD7C 800B4BDC 0C02D2B9 */  jal   func_800B4AE4
/* B2BD80 800B4BE0 86040008 */   lh    $a0, 8($s0)
/* B2BD84 800B4BE4 3C048014 */  lui   $a0, %hi(D_801436EC) # $a0, 0x8014
/* B2BD88 800B4BE8 0C00084C */  jal   osSyncPrintf
/* B2BD8C 800B4BEC 248436EC */   addiu $a0, %lo(D_801436EC) # addiu $a0, $a0, 0x36ec
/* B2BD90 800B4BF0 0C02D2B9 */  jal   func_800B4AE4
/* B2BD94 800B4BF4 8604000A */   lh    $a0, 0xa($s0)
/* B2BD98 800B4BF8 3C048014 */  lui   $a0, %hi(D_801436FC) # $a0, 0x8014
/* B2BD9C 800B4BFC 0C00084C */  jal   osSyncPrintf
/* B2BDA0 800B4C00 248436FC */   addiu $a0, %lo(D_801436FC) # addiu $a0, $a0, 0x36fc
/* B2BDA4 800B4C04 0C02D2B9 */  jal   func_800B4AE4
/* B2BDA8 800B4C08 8604000C */   lh    $a0, 0xc($s0)
/* B2BDAC 800B4C0C 3C048014 */  lui   $a0, %hi(D_8014370C) # $a0, 0x8014
/* B2BDB0 800B4C10 0C00084C */  jal   osSyncPrintf
/* B2BDB4 800B4C14 2484370C */   addiu $a0, %lo(D_8014370C) # addiu $a0, $a0, 0x370c
/* B2BDB8 800B4C18 3C048014 */  lui   $a0, %hi(D_8014371C) # $a0, 0x8014
/* B2BDBC 800B4C1C 0C00084C */  jal   osSyncPrintf
/* B2BDC0 800B4C20 2484371C */   addiu $a0, %lo(D_8014371C) # addiu $a0, $a0, 0x371c
/* B2BDC4 800B4C24 8658000E */  lh    $t8, 0xe($s2)
/* B2BDC8 800B4C28 26310001 */  addiu $s1, $s1, 1
/* B2BDCC 800B4C2C 26100010 */  addiu $s0, $s0, 0x10
/* B2BDD0 800B4C30 0238082A */  slt   $at, $s1, $t8
/* B2BDD4 800B4C34 1420FFD7 */  bnez  $at, .L800B4B94
/* B2BDD8 800B4C38 00000000 */   nop   
/* B2BDDC 800B4C3C 00008825 */  move  $s1, $zero
.L800B4C40:
/* B2BDE0 800B4C40 8E590004 */  lw    $t9, 4($s2)
/* B2BDE4 800B4C44 3C048014 */  lui   $a0, %hi(D_80143738) # $a0, 0x8014
/* B2BDE8 800B4C48 24843738 */  addiu $a0, %lo(D_80143738) # addiu $a0, $a0, 0x3738
/* B2BDEC 800B4C4C 0C00084C */  jal   osSyncPrintf
/* B2BDF0 800B4C50 AFB90028 */   sw    $t9, 0x28($sp)
/* B2BDF4 800B4C54 3C048014 */  lui   $a0, %hi(D_8014375C) # $a0, 0x8014
/* B2BDF8 800B4C58 0C00084C */  jal   osSyncPrintf
/* B2BDFC 800B4C5C 2484375C */   addiu $a0, %lo(D_8014375C) # addiu $a0, $a0, 0x375c
/* B2BE00 800B4C60 3C048014 */  lui   $a0, %hi(D_80143774) # $a0, 0x8014
/* B2BE04 800B4C64 0C00084C */  jal   osSyncPrintf
/* B2BE08 800B4C68 24843774 */   addiu $a0, %lo(D_80143774) # addiu $a0, $a0, 0x3774
/* B2BE0C 800B4C6C 0C02D2AA */  jal   func_800B4AA8
/* B2BE10 800B4C70 9644000C */   lhu   $a0, 0xc($s2)
/* B2BE14 800B4C74 3C048014 */  lui   $a0, %hi(D_80143790) # $a0, 0x8014
/* B2BE18 800B4C78 0C00084C */  jal   osSyncPrintf
/* B2BE1C 800B4C7C 24843790 */   addiu $a0, %lo(D_80143790) # addiu $a0, $a0, 0x3790
/* B2BE20 800B4C80 3C048014 */  lui   $a0, %hi(D_801437A4) # $a0, 0x8014
/* B2BE24 800B4C84 0C00084C */  jal   osSyncPrintf
/* B2BE28 800B4C88 248437A4 */   addiu $a0, %lo(D_801437A4) # addiu $a0, $a0, 0x37a4
/* B2BE2C 800B4C8C 8648000E */  lh    $t0, 0xe($s2)
/* B2BE30 800B4C90 8FB00028 */  lw    $s0, 0x28($sp)
/* B2BE34 800B4C94 1900002A */  blez  $t0, .L800B4D40
.L800B4C98:
/* B2BE38 800B4C98 3C048014 */   lui   $a0, %hi(D_801437C0) # $a0, 0x8014
/* B2BE3C 800B4C9C 248437C0 */  addiu $a0, %lo(D_801437C0) # addiu $a0, $a0, 0x37c0
/* B2BE40 800B4CA0 0C00084C */  jal   osSyncPrintf
/* B2BE44 800B4CA4 82050000 */   lb    $a1, ($s0)
/* B2BE48 800B4CA8 3C048014 */  lui   $a0, %hi(D_801437E0) # $a0, 0x8014
/* B2BE4C 800B4CAC 248437E0 */  addiu $a0, %lo(D_801437E0) # addiu $a0, $a0, 0x37e0
/* B2BE50 800B4CB0 0C00084C */  jal   osSyncPrintf
/* B2BE54 800B4CB4 82050001 */   lb    $a1, 1($s0)
/* B2BE58 800B4CB8 0C02D2AA */  jal   func_800B4AA8
/* B2BE5C 800B4CBC 96040002 */   lhu   $a0, 2($s0)
/* B2BE60 800B4CC0 3C048014 */  lui   $a0, %hi(D_80143800) # $a0, 0x8014
/* B2BE64 800B4CC4 0C00084C */  jal   osSyncPrintf
/* B2BE68 800B4CC8 24843800 */   addiu $a0, %lo(D_80143800) # addiu $a0, $a0, 0x3800
/* B2BE6C 800B4CCC 0C02D29A */  jal   func_800B4A68
/* B2BE70 800B4CD0 C60C0004 */   lwc1  $f12, 4($s0)
/* B2BE74 800B4CD4 3C048014 */  lui   $a0, %hi(D_80143810) # $a0, 0x8014
/* B2BE78 800B4CD8 0C00084C */  jal   osSyncPrintf
/* B2BE7C 800B4CDC 24843810 */   addiu $a0, %lo(D_80143810) # addiu $a0, $a0, 0x3810
/* B2BE80 800B4CE0 0C02D2B9 */  jal   func_800B4AE4
/* B2BE84 800B4CE4 86040008 */   lh    $a0, 8($s0)
/* B2BE88 800B4CE8 3C048014 */  lui   $a0, %hi(D_80143820) # $a0, 0x8014
/* B2BE8C 800B4CEC 0C00084C */  jal   osSyncPrintf
/* B2BE90 800B4CF0 24843820 */   addiu $a0, %lo(D_80143820) # addiu $a0, $a0, 0x3820
/* B2BE94 800B4CF4 0C02D2B9 */  jal   func_800B4AE4
/* B2BE98 800B4CF8 8604000A */   lh    $a0, 0xa($s0)
/* B2BE9C 800B4CFC 3C048014 */  lui   $a0, %hi(D_80143830) # $a0, 0x8014
/* B2BEA0 800B4D00 0C00084C */  jal   osSyncPrintf
/* B2BEA4 800B4D04 24843830 */   addiu $a0, %lo(D_80143830) # addiu $a0, $a0, 0x3830
/* B2BEA8 800B4D08 0C02D2B9 */  jal   func_800B4AE4
/* B2BEAC 800B4D0C 8604000C */   lh    $a0, 0xc($s0)
/* B2BEB0 800B4D10 3C048014 */  lui   $a0, %hi(D_80143840) # $a0, 0x8014
/* B2BEB4 800B4D14 0C00084C */  jal   osSyncPrintf
/* B2BEB8 800B4D18 24843840 */   addiu $a0, %lo(D_80143840) # addiu $a0, $a0, 0x3840
/* B2BEBC 800B4D1C 3C048014 */  lui   $a0, %hi(D_80143850) # $a0, 0x8014
/* B2BEC0 800B4D20 0C00084C */  jal   osSyncPrintf
/* B2BEC4 800B4D24 24843850 */   addiu $a0, %lo(D_80143850) # addiu $a0, $a0, 0x3850
/* B2BEC8 800B4D28 8649000E */  lh    $t1, 0xe($s2)
/* B2BECC 800B4D2C 26310001 */  addiu $s1, $s1, 1
/* B2BED0 800B4D30 26100010 */  addiu $s0, $s0, 0x10
/* B2BED4 800B4D34 0229082A */  slt   $at, $s1, $t1
/* B2BED8 800B4D38 1420FFD7 */  bnez  $at, .L800B4C98
/* B2BEDC 800B4D3C 00000000 */   nop   
.L800B4D40:
/* B2BEE0 800B4D40 8FBF0024 */  lw    $ra, 0x24($sp)
/* B2BEE4 800B4D44 8FB00018 */  lw    $s0, 0x18($sp)
/* B2BEE8 800B4D48 8FB1001C */  lw    $s1, 0x1c($sp)
/* B2BEEC 800B4D4C 8FB20020 */  lw    $s2, 0x20($sp)
/* B2BEF0 800B4D50 03E00008 */  jr    $ra
/* B2BEF4 800B4D54 27BD0030 */   addiu $sp, $sp, 0x30

