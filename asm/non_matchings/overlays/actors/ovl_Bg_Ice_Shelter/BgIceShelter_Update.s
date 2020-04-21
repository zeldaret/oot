glabel BgIceShelter_Update
/* 00C58 80891398 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C5C 8089139C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C60 808913A0 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00C64 808913A4 0320F809 */  jalr    $ra, $t9                   
/* 00C68 808913A8 00000000 */  nop
/* 00C6C 808913AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C70 808913B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C74 808913B4 03E00008 */  jr      $ra                        
/* 00C78 808913B8 00000000 */  nop
