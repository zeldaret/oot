glabel func_80AED3E0
/* 027D0 80AED3E0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 027D4 80AED3E4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 027D8 80AED3E8 0C2BABB3 */  jal     func_80AEAECC              
/* 027DC 80AED3EC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 027E0 80AED3F0 0C2BACC8 */  jal     func_80AEB320              
/* 027E4 80AED3F4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 027E8 80AED3F8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 027EC 80AED3FC 0C2BB486 */  jal     func_80AED218              
/* 027F0 80AED400 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 027F4 80AED404 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 027F8 80AED408 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 027FC 80AED40C 03E00008 */  jr      $ra                        
/* 02800 80AED410 00000000 */  nop
