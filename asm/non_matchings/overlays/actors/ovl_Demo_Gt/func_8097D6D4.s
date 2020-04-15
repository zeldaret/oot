glabel func_8097D6D4
/* 00064 8097D6D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00068 8097D6D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0006C 8097D6DC 2406003C */  addiu   $a2, $zero, 0x003C         ## $a2 = 0000003C
/* 00070 8097D6E0 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00074 8097D6E4 2407180E */  addiu   $a3, $zero, 0x180E         ## $a3 = 0000180E
/* 00078 8097D6E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0007C 8097D6EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00080 8097D6F0 03E00008 */  jr      $ra                        
/* 00084 8097D6F4 00000000 */  nop
