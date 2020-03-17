glabel func_808D3400
/* 00D90 808D3400 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D94 808D3404 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00D98 808D3408 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D9C 808D340C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00DA0 808D3410 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00DA4 808D3414 24A573CC */  addiu   $a1, $a1, 0x73CC           ## $a1 = 060073CC
/* 00DA8 808D3418 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00DAC 808D341C 0C029490 */  jal     func_800A5240              
/* 00DB0 808D3420 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 00DB4 808D3424 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00DB8 808D3428 3C0E808D */  lui     $t6, %hi(func_808D3464)    ## $t6 = 808D0000
/* 00DBC 808D342C 25CE3464 */  addiu   $t6, $t6, %lo(func_808D3464) ## $t6 = 808D3464
/* 00DC0 808D3430 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00DC4 808D3434 248473CC */  addiu   $a0, $a0, 0x73CC           ## $a0 = 060073CC
/* 00DC8 808D3438 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00DCC 808D343C ADEE0190 */  sw      $t6, 0x0190($t7)           ## 00000190
/* 00DD0 808D3440 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00DD4 808D3444 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 00DD8 808D3448 468021A0 */  cvt.s.w $f6, $f4                   
/* 00DDC 808D344C A4600198 */  sh      $zero, 0x0198($v1)         ## 00000198
/* 00DE0 808D3450 E46601F0 */  swc1    $f6, 0x01F0($v1)           ## 000001F0
/* 00DE4 808D3454 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DE8 808D3458 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00DEC 808D345C 03E00008 */  jr      $ra                        
/* 00DF0 808D3460 00000000 */  nop


