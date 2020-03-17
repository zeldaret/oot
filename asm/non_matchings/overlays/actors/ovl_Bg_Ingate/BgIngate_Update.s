glabel BgIngate_Update
/* 0025C 8089299C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00260 808929A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00264 808929A4 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00268 808929A8 0320F809 */  jalr    $ra, $t9                   
/* 0026C 808929AC 00000000 */  nop
/* 00270 808929B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00274 808929B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00278 808929B8 03E00008 */  jr      $ra                        
/* 0027C 808929BC 00000000 */  nop


