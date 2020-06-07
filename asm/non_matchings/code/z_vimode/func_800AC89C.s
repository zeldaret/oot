.rdata
glabel D_80141784
    .asciz "osViModePalLan1\n"
    .balign 4

glabel D_80141798
    .asciz "osViModeFpalLan1\n"
    .balign 4

glabel D_801417AC
    .asciz "Custom\n"
    .balign 4

.text
glabel func_800AC89C
/* B23A3C 800AC89C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B23A40 800AC8A0 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B23A44 800AC8A4 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B23A48 800AC8A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B23A4C 800AC8AC 8C8E0068 */  lw    $t6, 0x68($a0)
/* B23A50 800AC8B0 8C4F0000 */  lw    $t7, ($v0)
/* B23A54 800AC8B4 24060001 */  li    $a2, 1
/* B23A58 800AC8B8 00802825 */  move  $a1, $a0
/* B23A5C 800AC8BC A5EE0134 */  sh    $t6, 0x134($t7)
/* B23A60 800AC8C0 8C590000 */  lw    $t9, ($v0)
/* B23A64 800AC8C4 8C980054 */  lw    $t8, 0x54($a0)
/* B23A68 800AC8C8 A7380136 */  sh    $t8, 0x136($t9)
/* B23A6C 800AC8CC 8C490000 */  lw    $t1, ($v0)
/* B23A70 800AC8D0 8C880050 */  lw    $t0, 0x50($a0)
/* B23A74 800AC8D4 A5280138 */  sh    $t0, 0x138($t1)
/* B23A78 800AC8D8 8C4B0000 */  lw    $t3, ($v0)
/* B23A7C 800AC8DC 8C8A0064 */  lw    $t2, 0x64($a0)
/* B23A80 800AC8E0 A56A013A */  sh    $t2, 0x13a($t3)
/* B23A84 800AC8E4 8C4D0000 */  lw    $t5, ($v0)
/* B23A88 800AC8E8 8C8C0060 */  lw    $t4, 0x60($a0)
/* B23A8C 800AC8EC A5AC013C */  sh    $t4, 0x13c($t5)
/* B23A90 800AC8F0 8C4F0000 */  lw    $t7, ($v0)
/* B23A94 800AC8F4 8C8E005C */  lw    $t6, 0x5c($a0)
/* B23A98 800AC8F8 A5EE013E */  sh    $t6, 0x13e($t7)
/* B23A9C 800AC8FC 8C590000 */  lw    $t9, ($v0)
/* B23AA0 800AC900 8C980058 */  lw    $t8, 0x58($a0)
/* B23AA4 800AC904 A7380140 */  sh    $t8, 0x140($t9)
/* B23AA8 800AC908 8C430000 */  lw    $v1, ($v0)
/* B23AAC 800AC90C 84680148 */  lh    $t0, 0x148($v1)
/* B23AB0 800AC910 54C80021 */  bnel  $a2, $t0, .L800AC998
/* B23AB4 800AC914 8FBF0014 */   lw    $ra, 0x14($sp)
/* B23AB8 800AC918 A4600148 */  sh    $zero, 0x148($v1)
/* B23ABC 800AC91C 8C490000 */  lw    $t1, ($v0)
/* B23AC0 800AC920 24010002 */  li    $at, 2
/* B23AC4 800AC924 8524014A */  lh    $a0, 0x14a($t1)
/* B23AC8 800AC928 10860005 */  beq   $a0, $a2, .L800AC940
/* B23ACC 800AC92C 00000000 */   nop   
/* B23AD0 800AC930 1081000B */  beq   $a0, $at, .L800AC960
/* B23AD4 800AC934 00000000 */   nop   
/* B23AD8 800AC938 10000011 */  b     .L800AC980
/* B23ADC 800AC93C 3C048014 */   lui   $a0, %hi(D_801417AC)
.L800AC940:
/* B23AE0 800AC940 3C048014 */  lui   $a0, %hi(D_80141784) # $a0, 0x8014
/* B23AE4 800AC944 0C00084C */  jal   osSyncPrintf
/* B23AE8 800AC948 24841784 */   addiu $a0, %lo(D_80141784) # addiu $a0, $a0, 0x1784
/* B23AEC 800AC94C 3C048001 */  lui   $a0, %hi(osViModePalLan1) # $a0, 0x8001
/* B23AF0 800AC950 0C02B00C */  jal   func_800AC030
/* B23AF4 800AC954 2484ACA0 */   addiu $a0, %lo(osViModePalLan1) # addiu $a0, $a0, -0x5360
/* B23AF8 800AC958 1000000F */  b     .L800AC998
/* B23AFC 800AC95C 8FBF0014 */   lw    $ra, 0x14($sp)
.L800AC960:
/* B23B00 800AC960 3C048014 */  lui   $a0, %hi(D_80141798) # $a0, 0x8014
/* B23B04 800AC964 0C00084C */  jal   osSyncPrintf
/* B23B08 800AC968 24841798 */   addiu $a0, %lo(D_80141798) # addiu $a0, $a0, 0x1798
/* B23B0C 800AC96C 3C048001 */  lui   $a0, %hi(osViModeFpalLan1) # $a0, 0x8001
/* B23B10 800AC970 0C02B00C */  jal   func_800AC030
/* B23B14 800AC974 2484AF20 */   addiu $a0, %lo(osViModeFpalLan1) # addiu $a0, $a0, -0x50e0
/* B23B18 800AC978 10000007 */  b     .L800AC998
/* B23B1C 800AC97C 8FBF0014 */   lw    $ra, 0x14($sp)
.L800AC980:
/* B23B20 800AC980 248417AC */  addiu $a0, %lo(D_801417AC)
/* B23B24 800AC984 0C00084C */  jal   osSyncPrintf
/* B23B28 800AC988 AFA50018 */   sw    $a1, 0x18($sp)
/* B23B2C 800AC98C 0C02B00C */  jal   func_800AC030
/* B23B30 800AC990 8FA40018 */   lw    $a0, 0x18($sp)
/* B23B34 800AC994 8FBF0014 */  lw    $ra, 0x14($sp)
.L800AC998:
/* B23B38 800AC998 27BD0018 */  addiu $sp, $sp, 0x18
/* B23B3C 800AC99C 03E00008 */  jr    $ra
/* B23B40 800AC9A0 00000000 */   nop   

