glabel func_80852174
/* 1FF64 80852174 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1FF68 80852178 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1FF6C 8085217C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 1FF70 80852180 0C21482F */  jal     func_808520BC              
/* 1FF74 80852184 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1FF78 80852188 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 1FF7C 8085218C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 1FF80 80852190 0C028EF0 */  jal     func_800A3BC0              
/* 1FF84 80852194 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 1FF88 80852198 3C058085 */  lui     $a1, %hi(D_808551D8)       ## $a1 = 80850000
/* 1FF8C 8085219C 24A551D8 */  addiu   $a1, $a1, %lo(D_808551D8)  ## $a1 = 808551D8
/* 1FF90 808521A0 0C20CA49 */  jal     func_80832924              
/* 1FF94 808521A4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 1FF98 808521A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1FF9C 808521AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1FFA0 808521B0 03E00008 */  jr      $ra                        
/* 1FFA4 808521B4 00000000 */  nop


