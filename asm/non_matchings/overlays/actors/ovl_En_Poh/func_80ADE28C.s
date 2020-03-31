glabel func_80ADE28C
/* 0053C 80ADE28C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00540 80ADE290 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00544 80ADE294 AFB00020 */  sw      $s0, 0x0020($sp)
/* 00548 80ADE298 908E0197 */  lbu     $t6, 0x0197($a0)           ## 00000197
/* 0054C 80ADE29C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00550 80ADE2A0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00554 80ADE2A4 15C00008 */  bne     $t6, $zero, .L80ADE2C8
/* 00558 80ADE2A8 24A50570 */  addiu   $a1, $a1, 0x0570           ## $a1 = 06000570
/* 0055C 80ADE2AC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00560 80ADE2B0 24A504EC */  addiu   $a1, $a1, 0x04EC           ## $a1 = 060004EC
/* 00564 80ADE2B4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00568 80ADE2B8 0C029490 */  jal     SkelAnime_ChangeAnimationTransitionStop
/* 0056C 80ADE2BC 3C06C0C0 */  lui     $a2, 0xC0C0                ## $a2 = C0C00000
/* 00570 80ADE2C0 10000004 */  beq     $zero, $zero, .L80ADE2D4
/* 00574 80ADE2C4 8E0F02F8 */  lw      $t7, 0x02F8($s0)           ## 000002F8
.L80ADE2C8:
/* 00578 80ADE2C8 0C02947A */  jal     SkelAnime_ChangeAnimationDefaultStop
/* 0057C 80ADE2CC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00580 80ADE2D0 8E0F02F8 */  lw      $t7, 0x02F8($s0)           ## 000002F8
.L80ADE2D4:
/* 00584 80ADE2D4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00588 80ADE2D8 3421F824 */  ori     $at, $at, 0xF824           ## $at = 0001F824
/* 0058C 80ADE2DC 8DF80000 */  lw      $t8, 0x0000($t7)           ## 00000000
/* 00590 80ADE2E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00594 80ADE2E4 0301C824 */  and     $t9, $t8, $at
/* 00598 80ADE2E8 13200005 */  beq     $t9, $zero, .L80ADE300
/* 0059C 80ADE2EC 00000000 */  nop
/* 005A0 80ADE2F0 8E0802C4 */  lw      $t0, 0x02C4($s0)           ## 000002C4
/* 005A4 80ADE2F4 85090032 */  lh      $t1, 0x0032($t0)           ## 00000032
/* 005A8 80ADE2F8 10000006 */  beq     $zero, $zero, .L80ADE314
/* 005AC 80ADE2FC A6090032 */  sh      $t1, 0x0032($s0)           ## 00000032
.L80ADE300:
/* 005B0 80ADE300 0C00B69E */  jal     func_8002DA78
/* 005B4 80ADE304 8E0502C4 */  lw      $a1, 0x02C4($s0)           ## 000002C4
/* 005B8 80ADE308 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 005BC 80ADE30C 00415021 */  addu    $t2, $v0, $at
/* 005C0 80ADE310 A60A0032 */  sh      $t2, 0x0032($s0)           ## 00000032
.L80ADE314:
/* 005C4 80ADE314 920B02CD */  lbu     $t3, 0x02CD($s0)           ## 000002CD
/* 005C8 80ADE318 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 005CC 80ADE31C 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 005D0 80ADE320 316CFFFE */  andi    $t4, $t3, 0xFFFE           ## $t4 = 00000000
/* 005D4 80ADE324 A20C02CD */  sb      $t4, 0x02CD($s0)           ## 000002CD
/* 005D8 80ADE328 240D0010 */  addiu   $t5, $zero, 0x0010         ## $t5 = 00000010
/* 005DC 80ADE32C E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 005E0 80ADE330 AFAD0010 */  sw      $t5, 0x0010($sp)
/* 005E4 80ADE334 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005E8 80ADE338 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 005EC 80ADE33C 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 005F0 80ADE340 0C00D09B */  jal     func_8003426C
/* 005F4 80ADE344 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 005F8 80ADE348 3C0E80AE */  lui     $t6, %hi(func_80ADEECC)    ## $t6 = 80AE0000
/* 005FC 80ADE34C 25CEEECC */  addiu   $t6, $t6, %lo(func_80ADEECC) ## $t6 = 80ADEECC
/* 00600 80ADE350 AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
/* 00604 80ADE354 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00608 80ADE358 8FB00020 */  lw      $s0, 0x0020($sp)
/* 0060C 80ADE35C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00610 80ADE360 03E00008 */  jr      $ra
/* 00614 80ADE364 00000000 */  nop


