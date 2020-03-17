glabel func_8097D6F8
/* 00088 8097D6F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0008C 8097D6FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00090 8097D700 2406003C */  addiu   $a2, $zero, 0x003C         ## $a2 = 0000003C
/* 00094 8097D704 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00098 8097D708 240728C2 */  addiu   $a3, $zero, 0x28C2         ## $a3 = 000028C2
/* 0009C 8097D70C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000A0 8097D710 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000A4 8097D714 03E00008 */  jr      $ra                        
/* 000A8 8097D718 00000000 */  nop


