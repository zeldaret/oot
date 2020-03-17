glabel func_80B575B0
/* 04200 80B575B0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04204 80B575B4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04208 80B575B8 0C2D5CFF */  jal     func_80B573FC              
/* 0420C 80B575BC 3C064316 */  lui     $a2, 0x4316                ## $a2 = 43160000
/* 04210 80B575C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04214 80B575C4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04218 80B575C8 03E00008 */  jr      $ra                        
/* 0421C 80B575CC 00000000 */  nop


