glabel func_8097AD48
/* 02418 8097AD48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0241C 8097AD4C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02420 8097AD50 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02424 8097AD54 0C25EAED */  jal     func_8097ABB4              
/* 02428 8097AD58 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0242C 8097AD5C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02430 8097AD60 0C25EB3A */  jal     func_8097ACE8              
/* 02434 8097AD64 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02438 8097AD68 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0243C 8097AD6C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02440 8097AD70 03E00008 */  jr      $ra                        
/* 02444 8097AD74 00000000 */  nop


