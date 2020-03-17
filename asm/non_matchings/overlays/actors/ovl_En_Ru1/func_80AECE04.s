glabel func_80AECE04
/* 021F4 80AECE04 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 021F8 80AECE08 3C0180AF */  lui     $at, %hi(D_80AF1BEC)       ## $at = 80AF0000
/* 021FC 80AECE0C C4261BEC */  lwc1    $f6, %lo(D_80AF1BEC)($at)  
/* 02200 80AECE10 C48400BC */  lwc1    $f4, 0x00BC($a0)           ## 000000BC
/* 02204 80AECE14 46062200 */  add.s   $f8, $f4, $f6              
/* 02208 80AECE18 03E00008 */  jr      $ra                        
/* 0220C 80AECE1C E48800BC */  swc1    $f8, 0x00BC($a0)           ## 000000BC


