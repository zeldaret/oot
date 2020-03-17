glabel func_80B56DEC
/* 03A3C 80B56DEC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03A40 80B56DF0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03A44 80B56DF4 908E014D */  lbu     $t6, 0x014D($a0)           ## 0000014D
/* 03A48 80B56DF8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 03A4C 80B56DFC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 03A50 80B56E00 15C10009 */  bne     $t6, $at, .L80B56E28       
/* 03A54 80B56E04 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03A58 80B56E08 3C054110 */  lui     $a1, 0x4110                ## $a1 = 41100000
/* 03A5C 80B56E0C 0C0295B2 */  jal     func_800A56C8              
/* 03A60 80B56E10 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 03A64 80B56E14 10400004 */  beq     $v0, $zero, .L80B56E28     
/* 03A68 80B56E18 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 03A6C 80B56E1C 24C400E4 */  addiu   $a0, $a2, 0x00E4           ## $a0 = 000000E4
/* 03A70 80B56E20 0C01E245 */  jal     func_80078914              
/* 03A74 80B56E24 24056877 */  addiu   $a1, $zero, 0x6877         ## $a1 = 00006877
.L80B56E28:
/* 03A78 80B56E28 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03A7C 80B56E2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03A80 80B56E30 03E00008 */  jr      $ra                        
/* 03A84 80B56E34 00000000 */  nop


