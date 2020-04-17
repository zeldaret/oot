glabel DemoIm_Destroy
/* 02914 809874F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02918 809874F8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0291C 809874FC 0C261353 */  jal     func_80984D4C              
/* 02920 80987500 00000000 */  nop
/* 02924 80987504 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02928 80987508 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0292C 8098750C 03E00008 */  jr      $ra                        
/* 02930 80987510 00000000 */  nop
