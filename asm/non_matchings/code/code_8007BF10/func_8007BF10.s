glabel func_8007BF10
/* AF30B0 8007BF10 27BDFF60 */  addiu $sp, $sp, -0xa0
/* AF30B4 8007BF14 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF30B8 8007BF18 27A40020 */  addiu $a0, $sp, 0x20
/* AF30BC 8007BF1C 240E0003 */  li    $t6, 3
/* AF30C0 8007BF20 AFA00038 */  sw    $zero, 0x38($sp)
/* AF30C4 8007BF24 AFAE0040 */  sw    $t6, 0x40($sp)
/* AF30C8 8007BF28 AFA40088 */  sw    $a0, 0x88($sp)
/* AF30CC 8007BF2C AFA0008C */  sw    $zero, 0x8c($sp)
/* AF30D0 8007BF30 AFA00044 */  sw    $zero, 0x44($sp)
/* AF30D4 8007BF34 AFA00048 */  sw    $zero, 0x48($sp)
/* AF30D8 8007BF38 27A5001C */  addiu $a1, $sp, 0x1c
/* AF30DC 8007BF3C 0C001874 */  jal   osCreateMesgQueue
/* AF30E0 8007BF40 24060001 */   li    $a2, 1
/* AF30E4 8007BF44 3C048016 */  lui   $a0, %hi(gSchedContext+0x38) # $a0, 0x8016
/* AF30E8 8007BF48 248466A0 */  addiu $a0, %lo(gSchedContext+0x38) # addiu $a0, $a0, 0x66a0
/* AF30EC 8007BF4C 27A50038 */  addiu $a1, $sp, 0x38
/* AF30F0 8007BF50 0C000C18 */  jal   osSendMesg
/* AF30F4 8007BF54 24060001 */   li    $a2, 1
/* AF30F8 8007BF58 3C048016 */  lui   $a0, %hi(gSchedContext) # $a0, 0x8016
/* AF30FC 8007BF5C 0C03257E */  jal   func_800C95F8
/* AF3100 8007BF60 24846668 */   addiu $a0, %lo(gSchedContext) # addiu $a0, $a0, 0x6668
/* AF3104 8007BF64 27A40020 */  addiu $a0, $sp, 0x20
/* AF3108 8007BF68 00002825 */  move  $a1, $zero
/* AF310C 8007BF6C 0C000CA0 */  jal   osRecvMesg
/* AF3110 8007BF70 24060001 */   li    $a2, 1
/* AF3114 8007BF74 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF3118 8007BF78 27BD00A0 */  addiu $sp, $sp, 0xa0
/* AF311C 8007BF7C 03E00008 */  jr    $ra
/* AF3120 8007BF80 00000000 */   nop   
