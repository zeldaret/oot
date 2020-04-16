glabel BgHidanHamstep_Update
/* 00C04 80888C44 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C08 80888C48 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C0C 80888C4C 8C99023C */  lw      $t9, 0x023C($a0)           ## 0000023C
/* 00C10 80888C50 0320F809 */  jalr    $ra, $t9                   
/* 00C14 80888C54 00000000 */  nop
/* 00C18 80888C58 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C1C 80888C5C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C20 80888C60 03E00008 */  jr      $ra                        
/* 00C24 80888C64 00000000 */  nop
