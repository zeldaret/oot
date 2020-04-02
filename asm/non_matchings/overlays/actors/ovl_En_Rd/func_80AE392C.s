glabel func_80AE392C
/* 0152C 80AE392C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01530 80AE3930 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01534 80AE3934 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01538 80AE3938 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 0153C 80AE393C 24A58040 */  addiu   $a1, $a1, 0x8040           ## $a1 = 06008040
/* 01540 80AE3940 AFA70018 */  sw      $a3, 0x0018($sp)
/* 01544 80AE3944 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 01548 80AE3948 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 0154C 80AE394C 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 01550 80AE3950 8FA40018 */  lw      $a0, 0x0018($sp)
/* 01554 80AE3954 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 01558 80AE3958 3C0580AE */  lui     $a1, %hi(func_80AE3978)    ## $a1 = 80AE0000
/* 0155C 80AE395C 24A53978 */  addiu   $a1, $a1, %lo(func_80AE3978) ## $a1 = 80AE3978
/* 01560 80AE3960 0C2B8900 */  jal     func_80AE2400
/* 01564 80AE3964 A08E031B */  sb      $t6, 0x031B($a0)           ## 0000031B
/* 01568 80AE3968 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0156C 80AE396C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01570 80AE3970 03E00008 */  jr      $ra
/* 01574 80AE3974 00000000 */  nop


