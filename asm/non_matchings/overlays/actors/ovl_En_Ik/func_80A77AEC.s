glabel func_80A77AEC
/* 037DC 80A77AEC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 037E0 80A77AF0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 037E4 80A77AF4 0C29DE77 */  jal     func_80A779DC              
/* 037E8 80A77AF8 00000000 */  nop
/* 037EC 80A77AFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 037F0 80A77B00 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 037F4 80A77B04 03E00008 */  jr      $ra                        
/* 037F8 80A77B08 00000000 */  nop
