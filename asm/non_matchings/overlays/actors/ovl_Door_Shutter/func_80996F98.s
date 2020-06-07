glabel func_80996F98
/* 00CF8 80996F98 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CFC 80996F9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D00 80996FA0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00D04 80996FA4 848E0164 */  lh      $t6, 0x0164($a0)           ## 00000164
/* 00D08 80996FA8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00D0C 80996FAC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00D10 80996FB0 55C0000E */  bnel    $t6, $zero, .L80996FEC     
/* 00D14 80996FB4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00D18 80996FB8 84C5001C */  lh      $a1, 0x001C($a2)           ## 0000001C
/* 00D1C 80996FBC AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00D20 80996FC0 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00D24 80996FC4 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00D28 80996FC8 14400007 */  bne     $v0, $zero, .L80996FE8     
/* 00D2C 80996FCC 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00D30 80996FD0 3C058099 */  lui     $a1, %hi(func_80996EE8)    ## $a1 = 80990000
/* 00D34 80996FD4 24A56EE8 */  addiu   $a1, $a1, %lo(func_80996EE8) ## $a1 = 80996EE8
/* 00D38 80996FD8 0C2658A8 */  jal     func_809962A0              
/* 00D3C 80996FDC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00D40 80996FE0 10000005 */  beq     $zero, $zero, .L80996FF8   
/* 00D44 80996FE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80996FE8:
/* 00D48 80996FE8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
.L80996FEC:
/* 00D4C 80996FEC 0C265AC3 */  jal     func_80996B0C              
/* 00D50 80996FF0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00D54 80996FF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80996FF8:
/* 00D58 80996FF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D5C 80996FFC 03E00008 */  jr      $ra                        
/* 00D60 80997000 00000000 */  nop
