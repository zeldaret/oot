glabel func_80B55C4C
/* 0289C 80B55C4C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 028A0 80B55C50 10A00003 */  beq     $a1, $zero, .L80B55C60     
/* 028A4 80B55C54 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 028A8 80B55C58 0C2D5703 */  jal     func_80B55C0C              
/* 028AC 80B55C5C 00000000 */  nop
.L80B55C60:
/* 028B0 80B55C60 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 028B4 80B55C64 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 028B8 80B55C68 03E00008 */  jr      $ra                        
/* 028BC 80B55C6C 00000000 */  nop
