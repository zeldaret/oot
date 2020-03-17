glabel func_8097A36C
/* 01A3C 8097A36C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01A40 8097A370 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01A44 8097A374 0C25E60F */  jal     func_8097983C              
/* 01A48 8097A378 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01A4C 8097A37C 50400004 */  beql    $v0, $zero, .L8097A390     
/* 01A50 8097A380 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A54 8097A384 0C00B55C */  jal     Actor_Kill
              
/* 01A58 8097A388 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01A5C 8097A38C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8097A390:
/* 01A60 8097A390 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01A64 8097A394 03E00008 */  jr      $ra                        
/* 01A68 8097A398 00000000 */  nop


