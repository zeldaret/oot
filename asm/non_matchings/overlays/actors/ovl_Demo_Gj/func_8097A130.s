glabel func_8097A130
/* 01800 8097A130 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01804 8097A134 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01808 8097A138 0C25E60F */  jal     func_8097983C              
/* 0180C 8097A13C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01810 8097A140 50400004 */  beql    $v0, $zero, .L8097A154     
/* 01814 8097A144 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01818 8097A148 0C00B55C */  jal     Actor_Kill
              
/* 0181C 8097A14C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01820 8097A150 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8097A154:
/* 01824 8097A154 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01828 8097A158 03E00008 */  jr      $ra                        
/* 0182C 8097A15C 00000000 */  nop


