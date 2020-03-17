glabel func_8097A190
/* 01860 8097A190 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01864 8097A194 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01868 8097A198 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0186C 8097A19C 0C25E800 */  jal     func_8097A000              
/* 01870 8097A1A0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01874 8097A1A4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01878 8097A1A8 0C25E84C */  jal     func_8097A130              
/* 0187C 8097A1AC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01880 8097A1B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01884 8097A1B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01888 8097A1B8 03E00008 */  jr      $ra                        
/* 0188C 8097A1BC 00000000 */  nop


