glabel func_80B41798
/* 055B8 80B41798 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 055BC 80B4179C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 055C0 80B417A0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 055C4 80B417A4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 055C8 80B417A8 0C042F6F */  jal     func_8010BDBC              
/* 055CC 80B417AC 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 055D0 80B417B0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 055D4 80B417B4 14410007 */  bne     $v0, $at, .L80B417D4       
/* 055D8 80B417B8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 055DC 80B417BC 8CCF0004 */  lw      $t7, 0x0004($a2)           ## 00000004
/* 055E0 80B417C0 2401FFF6 */  addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
/* 055E4 80B417C4 240E004F */  addiu   $t6, $zero, 0x004F         ## $t6 = 0000004F
/* 055E8 80B417C8 01E1C024 */  and     $t8, $t7, $at              
/* 055EC 80B417CC ACCE0260 */  sw      $t6, 0x0260($a2)           ## 00000260
/* 055F0 80B417D0 ACD80004 */  sw      $t8, 0x0004($a2)           ## 00000004
.L80B417D4:
/* 055F4 80B417D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 055F8 80B417D8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 055FC 80B417DC 03E00008 */  jr      $ra                        
/* 05600 80B417E0 00000000 */  nop


