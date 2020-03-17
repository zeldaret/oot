glabel func_80852048
/* 1FE38 80852048 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1FE3C 8085204C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1FE40 80852050 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1FE44 80852054 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1FE48 80852058 0C028EF0 */  jal     func_800A3BC0              
/* 1FE4C 8085205C 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 1FE50 80852060 3C058085 */  lui     $a1, %hi(D_808551C8)       ## $a1 = 80850000
/* 1FE54 80852064 24A551C8 */  addiu   $a1, $a1, %lo(D_808551C8)  ## $a1 = 808551C8
/* 1FE58 80852068 0C20CA49 */  jal     func_80832924              
/* 1FE5C 8085206C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 1FE60 80852070 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1FE64 80852074 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1FE68 80852078 03E00008 */  jr      $ra                        
/* 1FE6C 8085207C 00000000 */  nop


