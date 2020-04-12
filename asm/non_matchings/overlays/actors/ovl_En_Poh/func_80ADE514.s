glabel func_80ADE514
/* 007C4 80ADE514 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007C8 80ADE518 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 007CC 80ADE51C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 007D0 80ADE520 8CCE02A4 */  lw      $t6, 0x02A4($a2)           ## 000002A4
/* 007D4 80ADE524 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 007D8 80ADE528 8DC5000C */  lw      $a1, 0x000C($t6)           ## 0000000C
/* 007DC 80ADE52C 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 007E0 80ADE530 AFA60018 */  sw      $a2, 0x0018($sp)
/* 007E4 80ADE534 8FA60018 */  lw      $a2, 0x0018($sp)
/* 007E8 80ADE538 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 007EC 80ADE53C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 007F0 80ADE540 84CF0032 */  lh      $t7, 0x0032($a2)           ## 00000032
/* 007F4 80ADE544 3C1980AE */  lui     $t9, %hi(func_80ADF5E0)    ## $t9 = 80AE0000
/* 007F8 80ADE548 2739F5E0 */  addiu   $t9, $t9, %lo(func_80ADF5E0) ## $t9 = 80ADF5E0
/* 007FC 80ADE54C 01E1C021 */  addu    $t8, $t7, $at
/* 00800 80ADE550 A4D8019C */  sh      $t8, 0x019C($a2)           ## 0000019C
/* 00804 80ADE554 ACD90190 */  sw      $t9, 0x0190($a2)           ## 00000190
/* 00808 80ADE558 E4C40068 */  swc1    $f4, 0x0068($a2)           ## 00000068
/* 0080C 80ADE55C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00810 80ADE560 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00814 80ADE564 03E00008 */  jr      $ra
/* 00818 80ADE568 00000000 */  nop
