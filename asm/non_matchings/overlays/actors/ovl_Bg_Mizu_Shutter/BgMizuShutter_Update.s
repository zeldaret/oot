glabel BgMizuShutter_Update
/* 005D4 8089F424 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005D8 8089F428 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005DC 8089F42C 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 005E0 8089F430 0320F809 */  jalr    $ra, $t9                   
/* 005E4 8089F434 00000000 */  nop
/* 005E8 8089F438 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005EC 8089F43C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005F0 8089F440 03E00008 */  jr      $ra                        
/* 005F4 8089F444 00000000 */  nop
