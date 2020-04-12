glabel func_80AED3A4
/* 02794 80AED3A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02798 80AED3A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0279C 80AED3AC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 027A0 80AED3B0 0C2BACC8 */  jal     func_80AEB320              
/* 027A4 80AED3B4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 027A8 80AED3B8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 027AC 80AED3BC 0C2BB3DB */  jal     func_80AECF6C              
/* 027B0 80AED3C0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 027B4 80AED3C4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 027B8 80AED3C8 0C2BB467 */  jal     func_80AED19C              
/* 027BC 80AED3CC 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 027C0 80AED3D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 027C4 80AED3D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 027C8 80AED3D8 03E00008 */  jr      $ra                        
/* 027CC 80AED3DC 00000000 */  nop
