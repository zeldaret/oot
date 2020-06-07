glabel func_80B56108
/* 02D58 80B56108 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02D5C 80B5610C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02D60 80B56110 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 02D64 80B56114 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02D68 80B56118 0C042F6F */  jal     func_8010BDBC              
/* 02D6C 80B5611C 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 02D70 80B56120 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02D74 80B56124 1441000A */  bne     $v0, $at, .L80B56150       
/* 02D78 80B56128 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02D7C 80B5612C 8CCE0004 */  lw      $t6, 0x0004($a2)           ## 00000004
/* 02D80 80B56130 2401FFF6 */  addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
/* 02D84 80B56134 24080010 */  addiu   $t0, $zero, 0x0010         ## $t0 = 00000010
/* 02D88 80B56138 01C17824 */  and     $t7, $t6, $at              
/* 02D8C 80B5613C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 02D90 80B56140 ACCF0004 */  sw      $t7, 0x0004($a2)           ## 00000004
/* 02D94 80B56144 01E1C824 */  and     $t9, $t7, $at              
/* 02D98 80B56148 ACD90004 */  sw      $t9, 0x0004($a2)           ## 00000004
/* 02D9C 80B5614C ACC8024C */  sw      $t0, 0x024C($a2)           ## 0000024C
.L80B56150:
/* 02DA0 80B56150 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02DA4 80B56154 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02DA8 80B56158 03E00008 */  jr      $ra                        
/* 02DAC 80B5615C 00000000 */  nop
