glabel func_80B55DB0
/* 02A00 80B55DB0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02A04 80B55DB4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02A08 80B55DB8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 02A0C 80B55DBC AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02A10 80B55DC0 0C042F6F */  jal     func_8010BDBC              
/* 02A14 80B55DC4 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 02A18 80B55DC8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02A1C 80B55DCC 1441000A */  bne     $v0, $at, .L80B55DF8       
/* 02A20 80B55DD0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02A24 80B55DD4 8CCE0004 */  lw      $t6, 0x0004($a2)           ## 00000004
/* 02A28 80B55DD8 2401FFF6 */  addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
/* 02A2C 80B55DDC 2408000C */  addiu   $t0, $zero, 0x000C         ## $t0 = 0000000C
/* 02A30 80B55DE0 01C17824 */  and     $t7, $t6, $at              
/* 02A34 80B55DE4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 02A38 80B55DE8 ACCF0004 */  sw      $t7, 0x0004($a2)           ## 00000004
/* 02A3C 80B55DEC 01E1C824 */  and     $t9, $t7, $at              
/* 02A40 80B55DF0 ACD90004 */  sw      $t9, 0x0004($a2)           ## 00000004
/* 02A44 80B55DF4 ACC8024C */  sw      $t0, 0x024C($a2)           ## 0000024C
.L80B55DF8:
/* 02A48 80B55DF8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02A4C 80B55DFC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02A50 80B55E00 03E00008 */  jr      $ra                        
/* 02A54 80B55E04 00000000 */  nop
