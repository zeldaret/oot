glabel func_80ADE368
/* 00618 80ADE368 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0061C 80ADE36C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00620 80ADE370 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00624 80ADE374 8CEE02A4 */  lw      $t6, 0x02A4($a3)           ## 000002A4
/* 00628 80ADE378 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0062C 80ADE37C 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 00630 80ADE380 8DC50018 */  lw      $a1, 0x0018($t6)           ## 00000018
/* 00634 80ADE384 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRepeat
/* 00638 80ADE388 AFA70018 */  sw      $a3, 0x0018($sp)
/* 0063C 80ADE38C 8FA70018 */  lw      $a3, 0x0018($sp)
/* 00640 80ADE390 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00644 80ADE394 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 00648 80ADE398 84EF00B6 */  lh      $t7, 0x00B6($a3)           ## 000000B6
/* 0064C 80ADE39C 90F902CD */  lbu     $t9, 0x02CD($a3)           ## 000002CD
/* 00650 80ADE3A0 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00654 80ADE3A4 3C0A80AE */  lui     $t2, %hi(func_80ADF894)    ## $t2 = 80AE0000
/* 00658 80ADE3A8 240900C8 */  addiu   $t1, $zero, 0x00C8         ## $t1 = 000000C8
/* 0065C 80ADE3AC 254AF894 */  addiu   $t2, $t2, %lo(func_80ADF894) ## $t2 = 80ADF894
/* 00660 80ADE3B0 01E1C021 */  addu    $t8, $t7, $at
/* 00664 80ADE3B4 37280001 */  ori     $t0, $t9, 0x0001           ## $t0 = 00000001
/* 00668 80ADE3B8 A4F80032 */  sh      $t8, 0x0032($a3)           ## 00000032
/* 0066C 80ADE3BC A0E802CD */  sb      $t0, 0x02CD($a3)           ## 000002CD
/* 00670 80ADE3C0 A4E90198 */  sh      $t1, 0x0198($a3)           ## 00000198
/* 00674 80ADE3C4 ACEA0190 */  sw      $t2, 0x0190($a3)           ## 00000190
/* 00678 80ADE3C8 E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
/* 0067C 80ADE3CC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00680 80ADE3D0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00684 80ADE3D4 03E00008 */  jr      $ra
/* 00688 80ADE3D8 00000000 */  nop


