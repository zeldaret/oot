glabel func_80A7F2F8
/* 00E98 80A7F2F8 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 00E9C 80A7F2FC 3C0E80A8 */  lui     $t6, %hi(func_80A7F31C)    ## $t6 = 80A80000
/* 00EA0 80A7F300 25CEF31C */  addiu   $t6, $t6, %lo(func_80A7F31C) ## $t6 = 80A7F31C
/* 00EA4 80A7F304 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 00EA8 80A7F308 37190010 */  ori     $t9, $t8, 0x0010           ## $t9 = 00000010
/* 00EAC 80A7F30C AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 00EB0 80A7F310 A08F0003 */  sb      $t7, 0x0003($a0)           ## 00000003
/* 00EB4 80A7F314 03E00008 */  jr      $ra                        
/* 00EB8 80A7F318 AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
