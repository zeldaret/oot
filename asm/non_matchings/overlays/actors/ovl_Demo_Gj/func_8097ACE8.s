glabel func_8097ACE8
/* 023B8 8097ACE8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 023BC 8097ACEC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 023C0 8097ACF0 0C25E60F */  jal     func_8097983C              
/* 023C4 8097ACF4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 023C8 8097ACF8 50400004 */  beql    $v0, $zero, .L8097AD0C     
/* 023CC 8097ACFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 023D0 8097AD00 0C00B55C */  jal     Actor_Kill
              
/* 023D4 8097AD04 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 023D8 8097AD08 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8097AD0C:
/* 023DC 8097AD0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 023E0 8097AD10 03E00008 */  jr      $ra                        
/* 023E4 8097AD14 00000000 */  nop


