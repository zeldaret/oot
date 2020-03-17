glabel func_80AFF3D0
/* 01120 80AFF3D0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01124 80AFF3D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01128 80AFF3D8 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 0112C 80AFF3DC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01130 80AFF3E0 44813000 */  mtc1    $at, $f6                   ## $f6 = 600.00
/* 01134 80AFF3E4 240E003C */  addiu   $t6, $zero, 0x003C         ## $t6 = 0000003C
/* 01138 80AFF3E8 240F2000 */  addiu   $t7, $zero, 0x2000         ## $t7 = 00002000
/* 0113C 80AFF3EC A48E02CC */  sh      $t6, 0x02CC($a0)           ## 000002CC
/* 01140 80AFF3F0 A48F02C8 */  sh      $t7, 0x02C8($a0)           ## 000002C8
/* 01144 80AFF3F4 E48402F0 */  swc1    $f4, 0x02F0($a0)           ## 000002F0
/* 01148 80AFF3F8 E48602EC */  swc1    $f6, 0x02EC($a0)           ## 000002EC
/* 0114C 80AFF3FC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01150 80AFF400 0C2BF8AC */  jal     func_80AFE2B0              
/* 01154 80AFF404 24050007 */  addiu   $a1, $zero, 0x0007         ## $a1 = 00000007
/* 01158 80AFF408 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0115C 80AFF40C 0C2BF8CE */  jal     func_80AFE338              
/* 01160 80AFF410 24050007 */  addiu   $a1, $zero, 0x0007         ## $a1 = 00000007
/* 01164 80AFF414 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01168 80AFF418 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0116C 80AFF41C 03E00008 */  jr      $ra                        
/* 01170 80AFF420 00000000 */  nop


