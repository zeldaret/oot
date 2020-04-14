glabel func_80933D2C
/* 0775C 80933D2C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 07760 80933D30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 07764 80933D34 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 07768 80933D38 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00000000
/* 0776C 80933D3C 0C01E245 */  jal     func_80078914              
/* 07770 80933D40 248403C8 */  addiu   $a0, $a0, 0x03C8           ## $a0 = 000003C8
/* 07774 80933D44 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 07778 80933D48 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0777C 80933D4C 03E00008 */  jr      $ra                        
/* 07780 80933D50 00000000 */  nop
