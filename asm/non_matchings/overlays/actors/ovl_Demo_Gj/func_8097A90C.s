glabel func_8097A90C
/* 01FDC 8097A90C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01FE0 8097A910 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01FE4 8097A914 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01FE8 8097A918 0C25E3B9 */  jal     func_80978EE4              
/* 01FEC 8097A91C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01FF0 8097A920 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01FF4 8097A924 0C25EA24 */  jal     func_8097A890              
/* 01FF8 8097A928 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01FFC 8097A92C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02000 8097A930 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02004 8097A934 03E00008 */  jr      $ra                        
/* 02008 8097A938 00000000 */  nop
