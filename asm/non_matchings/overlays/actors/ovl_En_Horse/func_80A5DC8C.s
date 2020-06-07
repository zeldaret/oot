glabel func_80A5DC8C
/* 0299C 80A5DC8C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 029A0 80A5DC90 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 029A4 80A5DC94 AC800154 */  sw      $zero, 0x0154($a0)         ## 00000154
/* 029A8 80A5DC98 0C29772C */  jal     func_80A5DCB0              
/* 029AC 80A5DC9C AC800150 */  sw      $zero, 0x0150($a0)         ## 00000150
/* 029B0 80A5DCA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 029B4 80A5DCA4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 029B8 80A5DCA8 03E00008 */  jr      $ra                        
/* 029BC 80A5DCAC 00000000 */  nop
