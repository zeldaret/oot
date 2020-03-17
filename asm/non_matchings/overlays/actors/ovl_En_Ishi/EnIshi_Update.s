glabel EnIshi_Update
/* 0141C 80A7F87C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01420 80A7F880 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01424 80A7F884 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 01428 80A7F888 0320F809 */  jalr    $ra, $t9                   
/* 0142C 80A7F88C 00000000 */  nop
/* 01430 80A7F890 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01434 80A7F894 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01438 80A7F898 03E00008 */  jr      $ra                        
/* 0143C 80A7F89C 00000000 */  nop


