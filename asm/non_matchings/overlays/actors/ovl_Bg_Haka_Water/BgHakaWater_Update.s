glabel BgHakaWater_Update
/* 003A0 808820A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003A4 808820A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003A8 808820A8 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 003AC 808820AC 0320F809 */  jalr    $ra, $t9                   
/* 003B0 808820B0 00000000 */  nop
/* 003B4 808820B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003B8 808820B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003BC 808820BC 03E00008 */  jr      $ra                        
/* 003C0 808820C0 00000000 */  nop


