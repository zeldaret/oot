glabel func_8097A70C
/* 01DDC 8097A70C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01DE0 8097A710 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01DE4 8097A714 0C25E60F */  jal     func_8097983C              
/* 01DE8 8097A718 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01DEC 8097A71C 50400004 */  beql    $v0, $zero, .L8097A730     
/* 01DF0 8097A720 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01DF4 8097A724 0C00B55C */  jal     Actor_Kill
              
/* 01DF8 8097A728 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01DFC 8097A72C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8097A730:
/* 01E00 8097A730 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01E04 8097A734 03E00008 */  jr      $ra                        
/* 01E08 8097A738 00000000 */  nop
