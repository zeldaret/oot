glabel func_80969FB4
/* 004E4 80969FB4 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 004E8 80969FB8 3C018097 */  lui     $at, %hi(D_8096D0EC)       ## $at = 80970000
/* 004EC 80969FBC C426D0EC */  lwc1    $f6, %lo(D_8096D0EC)($at)  
/* 004F0 80969FC0 C48400BC */  lwc1    $f4, 0x00BC($a0)           ## 000000BC
/* 004F4 80969FC4 46062200 */  add.s   $f8, $f4, $f6              
/* 004F8 80969FC8 03E00008 */  jr      $ra                        
/* 004FC 80969FCC E48800BC */  swc1    $f8, 0x00BC($a0)           ## 000000BC


