glabel func_80A5E588
/* 03298 80A5E588 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0329C 80A5E58C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 032A0 80A5E590 AC800154 */  sw      $zero, 0x0154($a0)         ## 00000154
/* 032A4 80A5E594 0C29796B */  jal     func_80A5E5AC              
/* 032A8 80A5E598 AC800150 */  sw      $zero, 0x0150($a0)         ## 00000150
/* 032AC 80A5E59C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 032B0 80A5E5A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 032B4 80A5E5A4 03E00008 */  jr      $ra                        
/* 032B8 80A5E5A8 00000000 */  nop


