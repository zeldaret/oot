glabel func_80BA17C4
/* 00A64 80BA17C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A68 80BA17C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A6C 80BA17CC 3C0E80BA */  lui     $t6, %hi(func_80BA180C)    ## $t6 = 80BA0000
/* 00A70 80BA17D0 25CE180C */  addiu   $t6, $t6, %lo(func_80BA180C) ## $t6 = 80BA180C
/* 00A74 80BA17D4 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 00A78 80BA17D8 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 00A7C 80BA17DC A08F0003 */  sb      $t7, 0x0003($a0)           ## 00000003
/* 00A80 80BA17E0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00A84 80BA17E4 0C00BDF7 */  jal     func_8002F7DC              
/* 00A88 80BA17E8 2405086F */  addiu   $a1, $zero, 0x086F         ## $a1 = 0000086F
/* 00A8C 80BA17EC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00A90 80BA17F0 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 00A94 80BA17F4 37190010 */  ori     $t9, $t8, 0x0010           ## $t9 = 00000010
/* 00A98 80BA17F8 AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 00A9C 80BA17FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AA0 80BA1800 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AA4 80BA1804 03E00008 */  jr      $ra                        
/* 00AA8 80BA1808 00000000 */  nop
