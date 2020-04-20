.rdata
glabel D_80146020
    .asciz "sc->curRSPTask == NULL"
    .balign 4

glabel D_80146038
    .asciz "../sched.c"
    .balign 4

glabel D_80146044
    .asciz "%08d:osSpTaskStartGo(%08x) %s\n"    
    .balign 4

glabel D_80146064
    .asciz "AUDIO"
    .balign 4

glabel D_8014606C
    .asciz "GRAPH"
    .balign 4

glabel D_80146074
    .asciz "OTHER"
    .balign 4

.text
glabel func_800C8CB8
/* B3FE58 800C8CB8 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B3FE5C 800C8CBC AFBF001C */  sw    $ra, 0x1c($sp)
/* B3FE60 800C8CC0 AFB00018 */  sw    $s0, 0x18($sp)
/* B3FE64 800C8CC4 AFA40048 */  sw    $a0, 0x48($sp)
/* B3FE68 800C8CC8 AFA60050 */  sw    $a2, 0x50($sp)
/* B3FE6C 800C8CCC 8C8F0230 */  lw    $t7, 0x230($a0)
/* B3FE70 800C8CD0 3C048014 */  lui   $a0, %hi(D_80146020) # $a0, 0x8014
/* B3FE74 800C8CD4 00A08025 */  move  $s0, $a1
/* B3FE78 800C8CD8 11E00005 */  beqz  $t7, .L800C8CF0
/* B3FE7C 800C8CDC 24846020 */   addiu $a0, %lo(D_80146020) # addiu $a0, $a0, 0x6020
/* B3FE80 800C8CE0 3C058014 */  lui   $a1, %hi(D_80146038) # $a1, 0x8014
/* B3FE84 800C8CE4 24A56038 */  addiu $a1, %lo(D_80146038) # addiu $a1, $a1, 0x6038
/* B3FE88 800C8CE8 0C0007FC */  jal   __assert
/* B3FE8C 800C8CEC 24060297 */   li    $a2, 663
.L800C8CF0:
/* B3FE90 800C8CF0 52000076 */  beql  $s0, $zero, .L800C8ECC
/* B3FE94 800C8CF4 8FBF001C */   lw    $ra, 0x1c($sp)
/* B3FE98 800C8CF8 8E180010 */  lw    $t8, 0x10($s0)
/* B3FE9C 800C8CFC 02002825 */  move  $a1, $s0
/* B3FEA0 800C8D00 5700001A */  bnezl $t8, .L800C8D6C
/* B3FEA4 800C8D04 8E0F0004 */   lw    $t7, 4($s0)
/* B3FEA8 800C8D08 8E020008 */  lw    $v0, 8($s0)
/* B3FEAC 800C8D0C 30590002 */  andi  $t9, $v0, 2
/* B3FEB0 800C8D10 53200009 */  beql  $t9, $zero, .L800C8D38
/* B3FEB4 800C8D14 304B0001 */   andi  $t3, $v0, 1
/* B3FEB8 800C8D18 8E080004 */  lw    $t0, 4($s0)
/* B3FEBC 800C8D1C 2401FFFD */  li    $at, -3
/* B3FEC0 800C8D20 01014824 */  and   $t1, $t0, $at
/* B3FEC4 800C8D24 AE090004 */  sw    $t1, 4($s0)
/* B3FEC8 800C8D28 8FAA0048 */  lw    $t2, 0x48($sp)
/* B3FECC 800C8D2C AD400230 */  sw    $zero, 0x230($t2)
/* B3FED0 800C8D30 8E020008 */  lw    $v0, 8($s0)
/* B3FED4 800C8D34 304B0001 */  andi  $t3, $v0, 1
.L800C8D38:
/* B3FED8 800C8D38 11600007 */  beqz  $t3, .L800C8D58
/* B3FEDC 800C8D3C 00000000 */   nop   
/* B3FEE0 800C8D40 8E0C0004 */  lw    $t4, 4($s0)
/* B3FEE4 800C8D44 2401FFFE */  li    $at, -2
/* B3FEE8 800C8D48 01816824 */  and   $t5, $t4, $at
/* B3FEEC 800C8D4C AE0D0004 */  sw    $t5, 4($s0)
/* B3FEF0 800C8D50 8FAE0048 */  lw    $t6, 0x48($sp)
/* B3FEF4 800C8D54 ADC00234 */  sw    $zero, 0x234($t6)
.L800C8D58:
/* B3FEF8 800C8D58 0C032310 */  jal   func_800C8C40
/* B3FEFC 800C8D5C 8FA40048 */   lw    $a0, 0x48($sp)
/* B3FF00 800C8D60 1000005A */  b     .L800C8ECC
/* B3FF04 800C8D64 8FBF001C */   lw    $ra, 0x1c($sp)
/* B3FF08 800C8D68 8E0F0004 */  lw    $t7, 4($s0)
.L800C8D6C:
/* B3FF0C 800C8D6C 2401FFCF */  li    $at, -49
/* B3FF10 800C8D70 01E1C024 */  and   $t8, $t7, $at
/* B3FF14 800C8D74 0C041924 */  jal   osWritebackDCacheAll
/* B3FF18 800C8D78 AE180004 */   sw    $t8, 4($s0)
/* B3FF1C 800C8D7C 26040010 */  addiu $a0, $s0, 0x10
/* B3FF20 800C8D80 0C040173 */  jal   osSpTaskLoad
/* B3FF24 800C8D84 AFA40020 */   sw    $a0, 0x20($sp)
/* B3FF28 800C8D88 8E040010 */  lw    $a0, 0x10($s0)
/* B3FF2C 800C8D8C 24010002 */  li    $at, 2
/* B3FF30 800C8D90 54810008 */  bnel  $a0, $at, .L800C8DB4
/* B3FF34 800C8D94 24010001 */   li    $at, 1
/* B3FF38 800C8D98 0C001A78 */  jal   osGetTime
/* B3FF3C 800C8D9C 00000000 */   nop   
/* B3FF40 800C8DA0 3C018017 */  lui   $at, %hi(D_8016A50C) # $at, 0x8017
/* B3FF44 800C8DA4 AC22A508 */  sw    $v0, %lo(D_8016A508)($at)
/* B3FF48 800C8DA8 1000000F */  b     .L800C8DE8
/* B3FF4C 800C8DAC AC23A50C */   sw    $v1, %lo(D_8016A50C)($at)
/* B3FF50 800C8DB0 24010001 */  li    $at, 1
.L800C8DB4:
/* B3FF54 800C8DB4 14810007 */  bne   $a0, $at, .L800C8DD4
/* B3FF58 800C8DB8 00000000 */   nop   
/* B3FF5C 800C8DBC 0C001A78 */  jal   osGetTime
/* B3FF60 800C8DC0 00000000 */   nop   
/* B3FF64 800C8DC4 3C018017 */  lui   $at, %hi(D_8016A504) # $at, 0x8017
/* B3FF68 800C8DC8 AC22A500 */  sw    $v0, %lo(D_8016A500)($at)
/* B3FF6C 800C8DCC 10000006 */  b     .L800C8DE8
/* B3FF70 800C8DD0 AC23A504 */   sw    $v1, %lo(D_8016A504)($at)
.L800C8DD4:
/* B3FF74 800C8DD4 0C001A78 */  jal   osGetTime
/* B3FF78 800C8DD8 00000000 */   nop   
/* B3FF7C 800C8DDC 3C018017 */  lui   $at, %hi(D_8016A514) # $at, 0x8017
/* B3FF80 800C8DE0 AC22A510 */  sw    $v0, %lo(D_8016A510)($at)
/* B3FF84 800C8DE4 AC23A514 */  sw    $v1, %lo(D_8016A514)($at)
.L800C8DE8:
/* B3FF88 800C8DE8 0C0401CD */  jal   osSpTaskStartGo
/* B3FF8C 800C8DEC 8FA40020 */   lw    $a0, 0x20($sp)
/* B3FF90 800C8DF0 3C198013 */  lui   $t9, %hi(D_8012D290) # $t9, 0x8013
/* B3FF94 800C8DF4 2739D290 */  addiu $t9, %lo(D_8012D290) # addiu $t9, $t9, -0x2d70
/* B3FF98 800C8DF8 8F280000 */  lw    $t0, ($t9)
/* B3FF9C 800C8DFC 51000023 */  beql  $t0, $zero, .L800C8E8C
/* B3FFA0 800C8E00 8FA20048 */   lw    $v0, 0x48($sp)
/* B3FFA4 800C8E04 0C001A78 */  jal   osGetTime
/* B3FFA8 800C8E08 00000000 */   nop   
/* B3FFAC 800C8E0C 00402025 */  move  $a0, $v0
/* B3FFB0 800C8E10 00602825 */  move  $a1, $v1
/* B3FFB4 800C8E14 24060000 */  li    $a2, 0
/* B3FFB8 800C8E18 0C000E1E */  jal   __ll_mul
/* B3FFBC 800C8E1C 24070040 */   li    $a3, 64
/* B3FFC0 800C8E20 00402025 */  move  $a0, $v0
/* B3FFC4 800C8E24 00602825 */  move  $a1, $v1
/* B3FFC8 800C8E28 24060000 */  li    $a2, 0
/* B3FFCC 800C8E2C 0C000DDE */  jal   __ull_div
/* B3FFD0 800C8E30 24070BB8 */   li    $a3, 3000
/* B3FFD4 800C8E34 AFA20038 */  sw    $v0, 0x38($sp)
/* B3FFD8 800C8E38 AFA3003C */  sw    $v1, 0x3c($sp)
/* B3FFDC 800C8E3C 8E040010 */  lw    $a0, 0x10($s0)
/* B3FFE0 800C8E40 24010002 */  li    $at, 2
/* B3FFE4 800C8E44 8FA5003C */  lw    $a1, 0x3c($sp)
/* B3FFE8 800C8E48 14810004 */  bne   $a0, $at, .L800C8E5C
/* B3FFEC 800C8E4C 8FA60020 */   lw    $a2, 0x20($sp)
/* B3FFF0 800C8E50 3C078014 */  lui   $a3, %hi(D_80146064) # $a3, 0x8014
/* B3FFF4 800C8E54 10000009 */  b     .L800C8E7C
/* B3FFF8 800C8E58 24E76064 */   addiu $a3, %lo(D_80146064) # addiu $a3, $a3, 0x6064
.L800C8E5C:
/* B3FFFC 800C8E5C 24010001 */  li    $at, 1
/* B40000 800C8E60 14810004 */  bne   $a0, $at, .L800C8E74
/* B40004 800C8E64 3C028014 */   lui   $v0, %hi(D_80146074)
/* B40008 800C8E68 3C028014 */  lui   $v0, %hi(D_8014606C) # $v0, 0x8014
/* B4000C 800C8E6C 10000002 */  b     .L800C8E78
/* B40010 800C8E70 2442606C */   addiu $v0, %lo(D_8014606C) # addiu $v0, $v0, 0x606c
.L800C8E74:
/* B40014 800C8E74 24426074 */  addiu $v0, %lo(D_80146074)
.L800C8E78:
/* B40018 800C8E78 00403825 */  move  $a3, $v0
.L800C8E7C:
/* B4001C 800C8E7C 3C048014 */  lui   $a0, %hi(D_80146044) # $a0, 0x8014
/* B40020 800C8E80 0C00084C */  jal   osSyncPrintf
/* B40024 800C8E84 24846044 */   addiu $a0, %lo(D_80146044) # addiu $a0, $a0, 0x6044
/* B40028 800C8E88 8FA20048 */  lw    $v0, 0x48($sp)
.L800C8E8C:
/* B4002C 800C8E8C AC500230 */  sw    $s0, 0x230($v0)
/* B40030 800C8E90 8FA90050 */  lw    $t1, 0x50($sp)
/* B40034 800C8E94 5609000D */  bnel  $s0, $t1, .L800C8ECC
/* B40038 800C8E98 8FBF001C */   lw    $ra, 0x1c($sp)
/* B4003C 800C8E9C 8C4C0234 */  lw    $t4, 0x234($v0)
/* B40040 800C8EA0 3C0E8017 */  lui   $t6, %hi(D_8016A500) # $t6, 0x8017
/* B40044 800C8EA4 3C0F8017 */  lui   $t7, %hi(D_8016A504) # $t7, 0x8017
/* B40048 800C8EA8 55800008 */  bnezl $t4, .L800C8ECC
/* B4004C 800C8EAC 8FBF001C */   lw    $ra, 0x1c($sp)
/* B40050 800C8EB0 AC490234 */  sw    $t1, 0x234($v0)
/* B40054 800C8EB4 8DEFA504 */  lw    $t7, %lo(D_8016A504)($t7)
/* B40058 800C8EB8 8DCEA500 */  lw    $t6, %lo(D_8016A500)($t6)
/* B4005C 800C8EBC 3C018017 */  lui   $at, %hi(D_8016A518) # $at, 0x8017
/* B40060 800C8EC0 AC2FA51C */  sw    $t7, %lo(D_8016A51C)($at)
/* B40064 800C8EC4 AC2EA518 */  sw    $t6, %lo(D_8016A518)($at)
/* B40068 800C8EC8 8FBF001C */  lw    $ra, 0x1c($sp)
.L800C8ECC:
/* B4006C 800C8ECC 8FB00018 */  lw    $s0, 0x18($sp)
/* B40070 800C8ED0 27BD0048 */  addiu $sp, $sp, 0x48
/* B40074 800C8ED4 03E00008 */  jr    $ra
/* B40078 800C8ED8 00000000 */   nop   

