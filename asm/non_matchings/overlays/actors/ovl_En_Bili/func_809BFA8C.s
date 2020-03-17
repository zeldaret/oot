glabel func_809BFA8C
/* 001EC 809BFA8C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001F0 809BFA90 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001F4 809BFA94 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 001F8 809BFA98 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 001FC 809BFA9C 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 06000024
/* 00200 809BFAA0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00204 809BFAA4 0C0294BE */  jal     func_800A52F8              
/* 00208 809BFAA8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0020C 809BFAAC 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00210 809BFAB0 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00214 809BFAB4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00218 809BFAB8 44813000 */  mtc1    $at, $f6                   ## $f6 = -1.00
/* 0021C 809BFABC 3C0F809C */  lui     $t7, %hi(func_809C02B8)    ## $t7 = 809C0000
/* 00220 809BFAC0 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 00224 809BFAC4 25EF02B8 */  addiu   $t7, $t7, %lo(func_809C02B8) ## $t7 = 809C02B8
/* 00228 809BFAC8 A4CE0196 */  sh      $t6, 0x0196($a2)           ## 00000196
/* 0022C 809BFACC ACCF0190 */  sw      $t7, 0x0190($a2)           ## 00000190
/* 00230 809BFAD0 E4C40068 */  swc1    $f4, 0x0068($a2)           ## 00000068
/* 00234 809BFAD4 E4C60060 */  swc1    $f6, 0x0060($a2)           ## 00000060
/* 00238 809BFAD8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0023C 809BFADC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00240 809BFAE0 03E00008 */  jr      $ra                        
/* 00244 809BFAE4 00000000 */  nop


