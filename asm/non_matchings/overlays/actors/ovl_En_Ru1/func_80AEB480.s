glabel func_80AEB480
/* 00870 80AEB480 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00874 80AEB484 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00878 80AEB488 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0087C 80AEB48C 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00000000
/* 00880 80AEB490 0C2BABF8 */  jal     func_80AEAFE0              
/* 00884 80AEB494 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 00888 80AEB498 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0088C 80AEB49C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00890 80AEB4A0 03E00008 */  jr      $ra                        
/* 00894 80AEB4A4 00000000 */  nop
