glabel func_8097AAAC
/* 0217C 8097AAAC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02180 8097AAB0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02184 8097AAB4 0C25E60F */  jal     func_8097983C              
/* 02188 8097AAB8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0218C 8097AABC 50400004 */  beql    $v0, $zero, .L8097AAD0     
/* 02190 8097AAC0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02194 8097AAC4 0C00B55C */  jal     Actor_Kill
              
/* 02198 8097AAC8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0219C 8097AACC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8097AAD0:
/* 021A0 8097AAD0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 021A4 8097AAD4 03E00008 */  jr      $ra                        
/* 021A8 8097AAD8 00000000 */  nop


