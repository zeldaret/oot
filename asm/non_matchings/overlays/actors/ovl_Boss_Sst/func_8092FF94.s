glabel func_8092FF94
/* 039C4 8092FF94 3C0F8094 */  lui     $t7, %hi(D_80938CA0)       ## $t7 = 80940000
/* 039C8 8092FF98 8DEF8CA0 */  lw      $t7, %lo(D_80938CA0)($t7)  
/* 039CC 8092FF9C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 039D0 8092FFA0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 039D4 8092FFA4 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 039D8 8092FFA8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 039DC 8092FFAC A5EE001C */  sh      $t6, 0x001C($t7)           ## 8094001C
/* 039E0 8092FFB0 84D8001C */  lh      $t8, 0x001C($a2)           ## 0000001C
/* 039E4 8092FFB4 3C058093 */  lui     $a1, %hi(D_80937854)       ## $a1 = 80930000
/* 039E8 8092FFB8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 039EC 8092FFBC 0018C880 */  sll     $t9, $t8,  2               
/* 039F0 8092FFC0 00B92821 */  addu    $a1, $a1, $t9              
/* 039F4 8092FFC4 8CA57854 */  lw      $a1, %lo(D_80937854)($a1)  
/* 039F8 8092FFC8 0C02947A */  jal     func_800A51E8              
/* 039FC 8092FFCC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03A00 8092FFD0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 03A04 8092FFD4 3C088093 */  lui     $t0, %hi(func_8092FFF0)    ## $t0 = 80930000
/* 03A08 8092FFD8 2508FFF0 */  addiu   $t0, $t0, %lo(func_8092FFF0) ## $t0 = 8092FFF0
/* 03A0C 8092FFDC ACC80190 */  sw      $t0, 0x0190($a2)           ## 00000190
/* 03A10 8092FFE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03A14 8092FFE4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03A18 8092FFE8 03E00008 */  jr      $ra                        
/* 03A1C 8092FFEC 00000000 */  nop


