glabel func_80B8FE3C
/* 013BC 80B8FE3C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 013C0 80B8FE40 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 013C4 80B8FE44 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 013C8 80B8FE48 848E01B4 */  lh      $t6, 0x01B4($a0)           ## 000001B4
/* 013CC 80B8FE4C 5DC00004 */  bgtzl   $t6, .L80B8FE60            
/* 013D0 80B8FE50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 013D4 80B8FE54 0C2E3F9B */  jal     func_80B8FE6C              
/* 013D8 80B8FE58 00000000 */  nop
/* 013DC 80B8FE5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B8FE60:
/* 013E0 80B8FE60 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 013E4 80B8FE64 03E00008 */  jr      $ra                        
/* 013E8 80B8FE68 00000000 */  nop
