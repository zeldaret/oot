glabel func_80B1F7D4
/* 01E54 80B1F7D4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01E58 80B1F7D8 8FAE0030 */  lw      $t6, 0x0030($sp)           
/* 01E5C 80B1F7DC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01E60 80B1F7E0 0C024348 */  jal     func_80090D20              
/* 01E64 80B1F7E4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01E68 80B1F7E8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01E6C 80B1F7EC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01E70 80B1F7F0 03E00008 */  jr      $ra                        
/* 01E74 80B1F7F4 00000000 */  nop
