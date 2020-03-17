glabel ObjIcePoly_Update
/* 006F8 80B94958 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006FC 80B9495C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00700 80B94960 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 00704 80B94964 0320F809 */  jalr    $ra, $t9                   
/* 00708 80B94968 00000000 */  nop
/* 0070C 80B9496C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00710 80B94970 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00714 80B94974 03E00008 */  jr      $ra                        
/* 00718 80B94978 00000000 */  nop


