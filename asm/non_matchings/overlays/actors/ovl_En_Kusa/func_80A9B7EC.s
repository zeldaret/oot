glabel func_80A9B7EC
/* 0084C 80A9B7EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00850 80A9B7F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00854 80A9B7F4 3C0580AA */  lui     $a1, %hi(func_80A9B810)    ## $a1 = 80AA0000
/* 00858 80A9B7F8 0C2A6BE8 */  jal     func_80A9AFA0              
/* 0085C 80A9B7FC 24A5B810 */  addiu   $a1, $a1, %lo(func_80A9B810) ## $a1 = 80A9B810
/* 00860 80A9B800 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00864 80A9B804 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00868 80A9B808 03E00008 */  jr      $ra                        
/* 0086C 80A9B80C 00000000 */  nop
