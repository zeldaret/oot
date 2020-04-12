.late_rodata
glabel D_80990F38
 .word 0x42A6AAAB, 0x00000000

.text
glabel func_8098E944
/* 004E4 8098E944 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 004E8 8098E948 3C018099 */  lui     $at, %hi(D_80990F38)       ## $at = 80990000
/* 004EC 8098E94C C4260F38 */  lwc1    $f6, %lo(D_80990F38)($at)  
/* 004F0 8098E950 C48400BC */  lwc1    $f4, 0x00BC($a0)           ## 000000BC
/* 004F4 8098E954 46062200 */  add.s   $f8, $f4, $f6              
/* 004F8 8098E958 03E00008 */  jr      $ra                        
/* 004FC 8098E95C E48800BC */  swc1    $f8, 0x00BC($a0)           ## 000000BC
