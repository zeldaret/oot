glabel func_809114E8
/* 00EA8 809114E8 44856000 */  mtc1    $a1, $f12                  ## $f12 = 0.00
/* 00EAC 809114EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00EB0 809114F0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00EB4 809114F4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00EB8 809114F8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00EBC 809114FC 44066000 */  mfc1    $a2, $f12
/* 00EC0 80911500 24A50060 */  addiu   $a1, $a1, 0x0060           ## $a1 = 06010060
/* 00EC4 80911504 AFA70018 */  sw      $a3, 0x0018($sp)
/* 00EC8 80911508 0C0294D3 */  jal     Animation_MorphToLoop
/* 00ECC 8091150C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00ED0 80911510 8FA70018 */  lw      $a3, 0x0018($sp)
/* 00ED4 80911514 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00ED8 80911518 3C0E8091 */  lui     $t6, %hi(func_8091156C)    ## $t6 = 80910000
/* 00EDC 8091151C 8CEF0004 */  lw      $t7, 0x0004($a3)           ## 00000004
/* 00EE0 80911520 25CE156C */  addiu   $t6, $t6, %lo(func_8091156C) ## $t6 = 8091156C
/* 00EE4 80911524 ACEE0190 */  sw      $t6, 0x0190($a3)           ## 00000190
/* 00EE8 80911528 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00EEC 8091152C ACF80004 */  sw      $t8, 0x0004($a3)           ## 00000004
/* 00EF0 80911530 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00EF4 80911534 E4E401CC */  swc1    $f4, 0x01CC($a3)           ## 000001CC
/* 00EF8 80911538 3C014280 */  lui     $at, 0x4280                ## $at = 42800000
/* 00EFC 8091153C 44813000 */  mtc1    $at, $f6                   ## $f6 = 64.00
/* 00F00 80911540 8FA70018 */  lw      $a3, 0x0018($sp)
/* 00F04 80911544 46060202 */  mul.s   $f8, $f0, $f6
/* 00F08 80911548 4600428D */  trunc.w.s $f10, $f8
/* 00F0C 8091154C 440A5000 */  mfc1    $t2, $f10
/* 00F10 80911550 00000000 */  nop
/* 00F14 80911554 254B001E */  addiu   $t3, $t2, 0x001E           ## $t3 = 0000001E
/* 00F18 80911558 A4EB01BC */  sh      $t3, 0x01BC($a3)           ## 000001BC
/* 00F1C 8091155C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00F20 80911560 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F24 80911564 03E00008 */  jr      $ra
/* 00F28 80911568 00000000 */  nop
