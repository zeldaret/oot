glabel func_80A5D678
/* 02388 80A5D678 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0238C 80A5D67C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02390 80A5D680 AC800150 */  sw      $zero, 0x0150($a0)         ## 00000150
/* 02394 80A5D684 0C2975A7 */  jal     func_80A5D69C              
/* 02398 80A5D688 AC800154 */  sw      $zero, 0x0154($a0)         ## 00000154
/* 0239C 80A5D68C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 023A0 80A5D690 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 023A4 80A5D694 03E00008 */  jr      $ra                        
/* 023A8 80A5D698 00000000 */  nop
