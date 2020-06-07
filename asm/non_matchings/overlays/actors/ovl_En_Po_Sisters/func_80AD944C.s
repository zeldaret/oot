glabel func_80AD944C
/* 004BC 80AD944C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004C0 80AD9450 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 004C4 80AD9454 908E0231 */  lbu     $t6, 0x0231($a0)           ## 00000231
/* 004C8 80AD9458 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 004CC 80AD945C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 004D0 80AD9460 11C00006 */  beq     $t6, $zero, .L80AD947C
/* 004D4 80AD9464 24A50114 */  addiu   $a1, $a1, 0x0114           ## $a1 = 06000114
/* 004D8 80AD9468 909802BD */  lbu     $t8, 0x02BD($a0)           ## 000002BD
/* 004DC 80AD946C 240F0009 */  addiu   $t7, $zero, 0x0009         ## $t7 = 00000009
/* 004E0 80AD9470 A08F02C0 */  sb      $t7, 0x02C0($a0)           ## 000002C0
/* 004E4 80AD9474 37190004 */  ori     $t9, $t8, 0x0004           ## $t9 = 00000004
/* 004E8 80AD9478 A09902BD */  sb      $t9, 0x02BD($a0)           ## 000002BD
.L80AD947C:
/* 004EC 80AD947C 24E4014C */  addiu   $a0, $a3, 0x014C           ## $a0 = 0000014C
/* 004F0 80AD9480 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 004F4 80AD9484 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 004F8 80AD9488 AFA70018 */  sw      $a3, 0x0018($sp)
/* 004FC 80AD948C 8FA70018 */  lw      $a3, 0x0018($sp)
/* 00500 80AD9490 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00504 80AD9494 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00508 80AD9498 24840114 */  addiu   $a0, $a0, 0x0114           ## $a0 = 06000114
/* 0050C 80AD949C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00510 80AD94A0 E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
/* 00514 80AD94A4 8FA70018 */  lw      $a3, 0x0018($sp)
/* 00518 80AD94A8 00024080 */  sll     $t0, $v0,  2
/* 0051C 80AD94AC 01024023 */  subu    $t0, $t0, $v0
/* 00520 80AD94B0 90EA0199 */  lbu     $t2, 0x0199($a3)           ## 00000199
/* 00524 80AD94B4 3C0C80AE */  lui     $t4, %hi(func_80ADA7F0)    ## $t4 = 80AE0000
/* 00528 80AD94B8 25090003 */  addiu   $t1, $t0, 0x0003           ## $t1 = 00000003
/* 0052C 80AD94BC 258CA7F0 */  addiu   $t4, $t4, %lo(func_80ADA7F0) ## $t4 = 80ADA7F0
/* 00530 80AD94C0 314BFFFD */  andi    $t3, $t2, 0xFFFD           ## $t3 = 00000000
/* 00534 80AD94C4 A4E9019A */  sh      $t1, 0x019A($a3)           ## 0000019A
/* 00538 80AD94C8 A0EB0199 */  sb      $t3, 0x0199($a3)           ## 00000199
/* 0053C 80AD94CC ACEC0190 */  sw      $t4, 0x0190($a3)           ## 00000190
/* 00540 80AD94D0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00544 80AD94D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00548 80AD94D8 03E00008 */  jr      $ra
/* 0054C 80AD94DC 00000000 */  nop
