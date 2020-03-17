glabel func_80AF2978
/* 00428 80AF2978 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 0042C 80AF297C 3C0180AF */  lui     $at, %hi(D_80AF527C)       ## $at = 80AF0000
/* 00430 80AF2980 C426527C */  lwc1    $f6, %lo(D_80AF527C)($at)  
/* 00434 80AF2984 C48400BC */  lwc1    $f4, 0x00BC($a0)           ## 000000BC
/* 00438 80AF2988 46062200 */  add.s   $f8, $f4, $f6              
/* 0043C 80AF298C 03E00008 */  jr      $ra                        
/* 00440 80AF2990 E48800BC */  swc1    $f8, 0x00BC($a0)           ## 000000BC


