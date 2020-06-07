glabel func_8097A53C
/* 01C0C 8097A53C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01C10 8097A540 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01C14 8097A544 0C25E60F */  jal     func_8097983C              
/* 01C18 8097A548 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01C1C 8097A54C 50400004 */  beql    $v0, $zero, .L8097A560     
/* 01C20 8097A550 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01C24 8097A554 0C00B55C */  jal     Actor_Kill
              
/* 01C28 8097A558 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01C2C 8097A55C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8097A560:
/* 01C30 8097A560 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01C34 8097A564 03E00008 */  jr      $ra                        
/* 01C38 8097A568 00000000 */  nop
