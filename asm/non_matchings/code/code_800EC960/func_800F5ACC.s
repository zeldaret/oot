.rdata
glabel D_8014A460
    .asciz "Middle Boss BGM Start not stack \n"
    .balign 4

.text
glabel func_800F5ACC
/* B6CC6C 800F5ACC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B6CC70 800F5AD0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B6CC74 800F5AD4 AFA40028 */  sw    $a0, 0x28($sp)
/* B6CC78 800F5AD8 0C03E82D */  jal   func_800FA0B4
/* B6CC7C 800F5ADC 00002025 */   move  $a0, $zero
/* B6CC80 800F5AE0 304400FF */  andi  $a0, $v0, 0xff
/* B6CC84 800F5AE4 2401002E */  li    $at, 46
/* B6CC88 800F5AE8 10810017 */  beq   $a0, $at, .L800F5B48
/* B6CC8C 800F5AEC 3045FFFF */   andi  $a1, $v0, 0xffff
/* B6CC90 800F5AF0 24010062 */  li    $at, 98
/* B6CC94 800F5AF4 10810014 */  beq   $a0, $at, .L800F5B48
/* B6CC98 800F5AF8 97A6002A */   lhu   $a2, 0x2a($sp)
/* B6CC9C 800F5AFC 10C20012 */  beq   $a2, $v0, .L800F5B48
/* B6CCA0 800F5B00 24040003 */   li    $a0, 3
/* B6CCA4 800F5B04 A7A50026 */  sh    $a1, 0x26($sp)
/* B6CCA8 800F5B08 0C03D7A4 */  jal   func_800F5E90
/* B6CCAC 800F5B0C AFA6001C */   sw    $a2, 0x1c($sp)
/* B6CCB0 800F5B10 97A50026 */  lhu   $a1, 0x26($sp)
/* B6CCB4 800F5B14 3401FFFF */  li    $at, 65535
/* B6CCB8 800F5B18 8FA6001C */  lw    $a2, 0x1c($sp)
/* B6CCBC 800F5B1C 10A10004 */  beq   $a1, $at, .L800F5B30
/* B6CCC0 800F5B20 3C048015 */   lui   $a0, %hi(D_8014A460) # $a0, 0x8015
/* B6CCC4 800F5B24 3C018013 */  lui   $at, %hi(D_80130628) # $at, 0x8013
/* B6CCC8 800F5B28 10000005 */  b     .L800F5B40
/* B6CCCC 800F5B2C A4250628 */   sh    $a1, %lo(D_80130628)($at)
.L800F5B30:
/* B6CCD0 800F5B30 2484A460 */  addiu $a0, %lo(D_8014A460) # addiu $a0, $a0, -0x5ba0
/* B6CCD4 800F5B34 0C00084C */  jal   osSyncPrintf
/* B6CCD8 800F5B38 AFA6001C */   sw    $a2, 0x1c($sp)
/* B6CCDC 800F5B3C 8FA6001C */  lw    $a2, 0x1c($sp)
.L800F5B40:
/* B6CCE0 800F5B40 0C03E803 */  jal   Audio_SetBGM
/* B6CCE4 800F5B44 00C02025 */   move  $a0, $a2
.L800F5B48:
/* B6CCE8 800F5B48 8FBF0014 */  lw    $ra, 0x14($sp)
/* B6CCEC 800F5B4C 27BD0028 */  addiu $sp, $sp, 0x28
/* B6CCF0 800F5B50 03E00008 */  jr    $ra
/* B6CCF4 800F5B54 00000000 */   nop   

