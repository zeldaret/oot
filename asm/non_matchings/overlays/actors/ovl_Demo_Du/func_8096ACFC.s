glabel func_8096ACFC
/* 0122C 8096ACFC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01230 8096AD00 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01234 8096AD04 AFA40028 */  sw      $a0, 0x0028($sp)
/* 01238 8096AD08 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 0123C 8096AD0C 51C0001D */  beql    $t6, $zero, .L8096AD84
/* 01240 8096AD10 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01244 8096AD14 8CA21D94 */  lw      $v0, 0x1D94($a1)           ## 00001D94
/* 01248 8096AD18 5040001A */  beql    $v0, $zero, .L8096AD84
/* 0124C 8096AD1C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01250 8096AD20 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 01254 8096AD24 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01258 8096AD28 3C040600 */  lui     $a0, %hi(gDaruniaAnim_001D70)                ## $a0 = 06000000
/* 0125C 8096AD2C 51E10015 */  beql    $t7, $at, .L8096AD84
/* 01260 8096AD30 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01264 8096AD34 0C028800 */  jal     Animation_GetLastFrame

/* 01268 8096AD38 24841D70 */  addiu   $a0, $a0, %lo(gDaruniaAnim_001D70)           ## $a0 = 06001D70
/* 0126C 8096AD3C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01270 8096AD40 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01274 8096AD44 8FA40028 */  lw      $a0, 0x0028($sp)
/* 01278 8096AD48 468021A0 */  cvt.s.w $f6, $f4
/* 0127C 8096AD4C 3C050600 */  lui     $a1, %hi(gDaruniaAnim_001D70)                ## $a1 = 06000000
/* 01280 8096AD50 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 01284 8096AD54 44070000 */  mfc1    $a3, $f0
/* 01288 8096AD58 AFB80014 */  sw      $t8, 0x0014($sp)
/* 0128C 8096AD5C 24A51D70 */  addiu   $a1, $a1, %lo(gDaruniaAnim_001D70)           ## $a1 = 06001D70
/* 01290 8096AD60 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01294 8096AD64 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01298 8096AD68 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0129C 8096AD6C 0C029468 */  jal     Animation_Change

/* 012A0 8096AD70 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 012A4 8096AD74 8FA80028 */  lw      $t0, 0x0028($sp)
/* 012A8 8096AD78 2419000F */  addiu   $t9, $zero, 0x000F         ## $t9 = 0000000F
/* 012AC 8096AD7C AD190198 */  sw      $t9, 0x0198($t0)           ## 00000198
/* 012B0 8096AD80 8FBF0024 */  lw      $ra, 0x0024($sp)
.L8096AD84:
/* 012B4 8096AD84 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 012B8 8096AD88 03E00008 */  jr      $ra
/* 012BC 8096AD8C 00000000 */  nop
