glabel func_80B562F4
/* 02F44 80B562F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02F48 80B562F8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02F4C 80B562FC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 02F50 80B56300 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02F54 80B56304 0C042F6F */  jal     func_8010BDBC              
/* 02F58 80B56308 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 02F5C 80B5630C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02F60 80B56310 1441000A */  bne     $v0, $at, .L80B5633C       
/* 02F64 80B56314 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02F68 80B56318 8CCE0004 */  lw      $t6, 0x0004($a2)           ## 00000004
/* 02F6C 80B5631C 2401FFF6 */  addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
/* 02F70 80B56320 24080014 */  addiu   $t0, $zero, 0x0014         ## $t0 = 00000014
/* 02F74 80B56324 01C17824 */  and     $t7, $t6, $at              
/* 02F78 80B56328 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 02F7C 80B5632C ACCF0004 */  sw      $t7, 0x0004($a2)           ## 00000004
/* 02F80 80B56330 01E1C824 */  and     $t9, $t7, $at              
/* 02F84 80B56334 ACD90004 */  sw      $t9, 0x0004($a2)           ## 00000004
/* 02F88 80B56338 ACC8024C */  sw      $t0, 0x024C($a2)           ## 0000024C
.L80B5633C:
/* 02F8C 80B5633C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02F90 80B56340 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02F94 80B56344 03E00008 */  jr      $ra                        
/* 02F98 80B56348 00000000 */  nop
