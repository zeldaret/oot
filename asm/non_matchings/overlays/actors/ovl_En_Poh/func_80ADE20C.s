glabel func_80ADE20C
/* 004BC 80ADE20C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 004C0 80ADE210 AFBF001C */  sw      $ra, 0x001C($sp)
/* 004C4 80ADE214 AFB00018 */  sw      $s0, 0x0018($sp)
/* 004C8 80ADE218 908E0197 */  lbu     $t6, 0x0197($a0)           ## 00000197
/* 004CC 80ADE21C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 004D0 80ADE220 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004D4 80ADE224 15C00008 */  bne     $t6, $zero, .L80ADE248
/* 004D8 80ADE228 24A5020C */  addiu   $a1, $a1, 0x020C           ## $a1 = 0600020C
/* 004DC 80ADE22C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 004E0 80ADE230 24A501A8 */  addiu   $a1, $a1, 0x01A8           ## $a1 = 060001A8
/* 004E4 80ADE234 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 004E8 80ADE238 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRepeat
/* 004EC 80ADE23C 3C06C0C0 */  lui     $a2, 0xC0C0                ## $a2 = C0C00000
/* 004F0 80ADE240 10000004 */  beq     $zero, $zero, .L80ADE254
/* 004F4 80ADE244 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
.L80ADE248:
/* 004F8 80ADE248 0C0294BE */  jal     SkelAnime_ChangeAnimationDefaultRepeat
/* 004FC 80ADE24C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00500 80ADE250 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
.L80ADE254:
/* 00504 80ADE254 240F000C */  addiu   $t7, $zero, 0x000C         ## $t7 = 0000000C
/* 00508 80ADE258 A60F0198 */  sh      $t7, 0x0198($s0)           ## 00000198
/* 0050C 80ADE25C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00510 80ADE260 240538EC */  addiu   $a1, $zero, 0x38EC         ## $a1 = 000038EC
/* 00514 80ADE264 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00518 80ADE268 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 0051C 80ADE26C 3C1880AE */  lui     $t8, %hi(func_80ADEDFC)    ## $t8 = 80AE0000
/* 00520 80ADE270 2718EDFC */  addiu   $t8, $t8, %lo(func_80ADEDFC) ## $t8 = 80ADEDFC
/* 00524 80ADE274 AE180190 */  sw      $t8, 0x0190($s0)           ## 00000190
/* 00528 80ADE278 8FBF001C */  lw      $ra, 0x001C($sp)
/* 0052C 80ADE27C 8FB00018 */  lw      $s0, 0x0018($sp)
/* 00530 80ADE280 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00534 80ADE284 03E00008 */  jr      $ra
/* 00538 80ADE288 00000000 */  nop


