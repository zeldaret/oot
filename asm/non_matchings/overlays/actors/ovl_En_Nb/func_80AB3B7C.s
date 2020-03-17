glabel func_80AB3B7C
/* 02DEC 80AB3B7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02DF0 80AB3B80 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02DF4 80AB3B84 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 02DF8 80AB3B88 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02DFC 80AB3B8C 0C042F6F */  jal     func_8010BDBC              
/* 02E00 80AB3B90 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 02E04 80AB3B94 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02E08 80AB3B98 14410007 */  bne     $v0, $at, .L80AB3BB8       
/* 02E0C 80AB3B9C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02E10 80AB3BA0 8CCF0004 */  lw      $t7, 0x0004($a2)           ## 00000004
/* 02E14 80AB3BA4 2401FFF6 */  addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
/* 02E18 80AB3BA8 240E001D */  addiu   $t6, $zero, 0x001D         ## $t6 = 0000001D
/* 02E1C 80AB3BAC 01E1C024 */  and     $t8, $t7, $at              
/* 02E20 80AB3BB0 ACCE0278 */  sw      $t6, 0x0278($a2)           ## 00000278
/* 02E24 80AB3BB4 ACD80004 */  sw      $t8, 0x0004($a2)           ## 00000004
.L80AB3BB8:
/* 02E28 80AB3BB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02E2C 80AB3BBC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02E30 80AB3BC0 03E00008 */  jr      $ra                        
/* 02E34 80AB3BC4 00000000 */  nop


