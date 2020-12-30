glabel func_808D32B4
/* 00C44 808D32B4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00C48 808D32B8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00C4C 808D32BC AFA50024 */  sw      $a1, 0x0024($sp)
/* 00C50 808D32C0 8C8E0118 */  lw      $t6, 0x0118($a0)           ## 00000118
/* 00C54 808D32C4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00C58 808D32C8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00C5C 808D32CC 24A59194 */  addiu   $a1, $a1, 0x9194           ## $a1 = 06009194
/* 00C60 808D32D0 AFA70020 */  sw      $a3, 0x0020($sp)
/* 00C64 808D32D4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00C68 808D32D8 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 00C6C 808D32DC 0C029490 */  jal     Animation_MorphToPlayOnce
/* 00C70 808D32E0 AFAE001C */  sw      $t6, 0x001C($sp)
/* 00C74 808D32E4 8FA70020 */  lw      $a3, 0x0020($sp)
/* 00C78 808D32E8 3C0F808D */  lui     $t7, %hi(func_808D3330)    ## $t7 = 808D0000
/* 00C7C 808D32EC 25EF3330 */  addiu   $t7, $t7, %lo(func_808D3330) ## $t7 = 808D3330
/* 00C80 808D32F0 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00C84 808D32F4 24849194 */  addiu   $a0, $a0, 0x9194           ## $a0 = 06009194
/* 00C88 808D32F8 0C028800 */  jal     Animation_GetLastFrame

/* 00C8C 808D32FC ACEF0190 */  sw      $t7, 0x0190($a3)           ## 00000190
/* 00C90 808D3300 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00C94 808D3304 8FA70020 */  lw      $a3, 0x0020($sp)
/* 00C98 808D3308 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 00C9C 808D330C 468021A0 */  cvt.s.w $f6, $f4
/* 00CA0 808D3310 E4E601F0 */  swc1    $f6, 0x01F0($a3)           ## 000001F0
/* 00CA4 808D3314 8FB9001C */  lw      $t9, 0x001C($sp)
/* 00CA8 808D3318 A7380250 */  sh      $t8, 0x0250($t9)           ## 00000250
/* 00CAC 808D331C A4E00198 */  sh      $zero, 0x0198($a3)         ## 00000198
/* 00CB0 808D3320 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00CB4 808D3324 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00CB8 808D3328 03E00008 */  jr      $ra
/* 00CBC 808D332C 00000000 */  nop
