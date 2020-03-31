glabel func_80A17780
/* 00270 80A17780 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00274 80A17784 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00278 80A17788 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0027C 80A1778C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00280 80A17790 24A59DB0 */  addiu   $a1, $a1, 0x9DB0           ## $a1 = 06009DB0
/* 00284 80A17794 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00288 80A17798 0C02947A */  jal     SkelAnimeChangeAnimationDefaultStop              
/* 0028C 80A1779C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00290 80A177A0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00294 80A177A4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00298 80A177A8 3C0E80A2 */  lui     $t6, %hi(func_80A18500)    ## $t6 = 80A20000
/* 0029C 80A177AC 25CE8500 */  addiu   $t6, $t6, %lo(func_80A18500) ## $t6 = 80A18500
/* 002A0 80A177B0 ACCE0190 */  sw      $t6, 0x0190($a2)           ## 00000190
/* 002A4 80A177B4 E4C40068 */  swc1    $f4, 0x0068($a2)           ## 00000068
/* 002A8 80A177B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002AC 80A177BC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002B0 80A177C0 03E00008 */  jr      $ra                        
/* 002B4 80A177C4 00000000 */  nop


