glabel func_809E5FBC
/* 007EC 809E5FBC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007F0 809E5FC0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 007F4 809E5FC4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 007F8 809E5FC8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 007FC 809E5FCC 24A50208 */  addiu   $a1, $a1, 0x0208           ## $a1 = 06000208
/* 00800 809E5FD0 AFA60018 */  sw      $a2, 0x0018($sp)
/* 00804 809E5FD4 0C02947A */  jal     SkelAnime_ChangeAnimationDefaultStop
/* 00808 809E5FD8 2484017C */  addiu   $a0, $a0, 0x017C           ## $a0 = 0000017C
/* 0080C 809E5FDC 8FA60018 */  lw      $a2, 0x0018($sp)
/* 00810 809E5FE0 3C0E809E */  lui     $t6, %hi(func_809E7104)    ## $t6 = 809E0000
/* 00814 809E5FE4 25CE7104 */  addiu   $t6, $t6, %lo(func_809E7104) ## $t6 = 809E7104
/* 00818 809E5FE8 A4C001C6 */  sh      $zero, 0x01C6($a2)         ## 000001C6
/* 0081C 809E5FEC ACCE01C0 */  sw      $t6, 0x01C0($a2)           ## 000001C0
/* 00820 809E5FF0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00824 809E5FF4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00828 809E5FF8 03E00008 */  jr      $ra
/* 0082C 809E5FFC 00000000 */  nop


