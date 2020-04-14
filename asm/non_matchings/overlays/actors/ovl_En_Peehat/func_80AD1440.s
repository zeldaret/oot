glabel func_80AD1440
/* 01FA0 80AD1440 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01FA4 80AD1444 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01FA8 80AD1448 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01FAC 80AD144C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01FB0 80AD1450 24A50844 */  addiu   $a1, $a1, 0x0844           ## $a1 = 06000844
/* 01FB4 80AD1454 AFA70018 */  sw      $a3, 0x0018($sp)
/* 01FB8 80AD1458 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01FBC 80AD145C 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 01FC0 80AD1460 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 01FC4 80AD1464 8FA40018 */  lw      $a0, 0x0018($sp)
/* 01FC8 80AD1468 3C01C110 */  lui     $at, 0xC110                ## $at = C1100000
/* 01FCC 80AD146C 44812000 */  mtc1    $at, $f4                   ## $f4 = -9.00
/* 01FD0 80AD1470 848F008A */  lh      $t7, 0x008A($a0)           ## 0000008A
/* 01FD4 80AD1474 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 01FD8 80AD1478 3C0580AD */  lui     $a1, %hi(func_80AD14A0)    ## $a1 = 80AD0000
/* 01FDC 80AD147C 24A514A0 */  addiu   $a1, $a1, %lo(func_80AD14A0) ## $a1 = 80AD14A0
/* 01FE0 80AD1480 AC8E02B0 */  sw      $t6, 0x02B0($a0)           ## 000002B0
/* 01FE4 80AD1484 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 01FE8 80AD1488 0C2B3D28 */  jal     func_80ACF4A0
/* 01FEC 80AD148C A48F0032 */  sh      $t7, 0x0032($a0)           ## 00000032
/* 01FF0 80AD1490 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01FF4 80AD1494 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01FF8 80AD1498 03E00008 */  jr      $ra
/* 01FFC 80AD149C 00000000 */  nop
