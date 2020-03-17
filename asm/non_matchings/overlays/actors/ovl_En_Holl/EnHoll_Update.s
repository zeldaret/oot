glabel EnHoll_Update
/* 00C8C 80A5989C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C90 80A598A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C94 80A598A4 8C990150 */  lw      $t9, 0x0150($a0)           ## 00000150
/* 00C98 80A598A8 0320F809 */  jalr    $ra, $t9                   
/* 00C9C 80A598AC 00000000 */  nop
/* 00CA0 80A598B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00CA4 80A598B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CA8 80A598B8 03E00008 */  jr      $ra                        
/* 00CAC 80A598BC 00000000 */  nop


