glabel func_80900210
/* 032D0 80900210 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 032D4 80900214 AFA5001C */  sw      $a1, 0x001C($sp)
/* 032D8 80900218 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 032DC 8090021C AFA40018 */  sw      $a0, 0x0018($sp)
/* 032E0 80900220 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 032E4 80900224 24A5DFF0 */  addiu   $a1, $a1, 0xDFF0           ## $a1 = 0600DFF0
/* 032E8 80900228 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 032EC 8090022C 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 032F0 80900230 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 032F4 80900234 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 032F8 80900238 0C028800 */  jal     SkelAnime_GetLastFrame

/* 032FC 8090023C 2484DFF0 */  addiu   $a0, $a0, 0xDFF0           ## $a0 = 0600DFF0
/* 03300 80900240 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 03304 80900244 8FA30018 */  lw      $v1, 0x0018($sp)
/* 03308 80900248 3C0E8090 */  lui     $t6, %hi(func_8090026C)    ## $t6 = 80900000
/* 0330C 8090024C 468021A0 */  cvt.s.w $f6, $f4
/* 03310 80900250 25CE026C */  addiu   $t6, $t6, %lo(func_8090026C) ## $t6 = 8090026C
/* 03314 80900254 AC6E0190 */  sw      $t6, 0x0190($v1)           ## 00000190
/* 03318 80900258 E4660194 */  swc1    $f6, 0x0194($v1)           ## 00000194
/* 0331C 8090025C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 03320 80900260 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03324 80900264 03E00008 */  jr      $ra
/* 03328 80900268 00000000 */  nop
