glabel func_80B909B0
/* 01F30 80B909B0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01F34 80B909B4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01F38 80B909B8 0C2E3CA6 */  jal     func_80B8F298              
/* 01F3C 80B909BC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01F40 80B909C0 10400004 */  beq     $v0, $zero, .L80B909D4     
/* 01F44 80B909C4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01F48 80B909C8 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 01F4C 80B909CC 10000006 */  beq     $zero, $zero, .L80B909E8   
/* 01F50 80B909D0 A48E01B4 */  sh      $t6, 0x01B4($a0)           ## 000001B4
.L80B909D4:
/* 01F54 80B909D4 848F01B4 */  lh      $t7, 0x01B4($a0)           ## 000001B4
/* 01F58 80B909D8 5DE00004 */  bgtzl   $t7, .L80B909EC            
/* 01F5C 80B909DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01F60 80B909E0 0C2E427E */  jal     func_80B909F8              
/* 01F64 80B909E4 00000000 */  nop
.L80B909E8:
/* 01F68 80B909E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B909EC:
/* 01F6C 80B909EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01F70 80B909F0 03E00008 */  jr      $ra                        
/* 01F74 80B909F4 00000000 */  nop


