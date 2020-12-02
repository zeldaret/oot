glabel func_80AC6ADC
/* 03E3C 80AC6ADC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03E40 80AC6AE0 AFA40028 */  sw      $a0, 0x0028($sp)
/* 03E44 80AC6AE4 AFA5002C */  sw      $a1, 0x002C($sp)
/* 03E48 80AC6AE8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 03E4C 80AC6AEC 8FA50028 */  lw      $a1, 0x0028($sp)
/* 03E50 80AC6AF0 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 03E54 80AC6AF4 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 03E58 80AC6AF8 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 03E5C 80AC6AFC 24E70338 */  addiu   $a3, $a3, 0x0338           ## $a3 = 06000338
/* 03E60 80AC6B00 24C69B38 */  addiu   $a2, $a2, 0x9B38           ## $a2 = 06009B38
/* 03E64 80AC6B04 AFA00010 */  sw      $zero, 0x0010($sp)
/* 03E68 80AC6B08 AFA00014 */  sw      $zero, 0x0014($sp)
/* 03E6C 80AC6B0C AFA00018 */  sw      $zero, 0x0018($sp)
/* 03E70 80AC6B10 0C0291BE */  jal     SkelAnime_InitFlex
/* 03E74 80AC6B14 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 03E78 80AC6B18 8FA20028 */  lw      $v0, 0x0028($sp)
/* 03E7C 80AC6B1C 3C0E80AC */  lui     $t6, %hi(func_80AC7DAC)    ## $t6 = 80AC0000
/* 03E80 80AC6B20 25CE7DAC */  addiu   $t6, $t6, %lo(func_80AC7DAC) ## $t6 = 80AC7DAC
/* 03E84 80AC6B24 AC4E0134 */  sw      $t6, 0x0134($v0)           ## 00000134
/* 03E88 80AC6B28 AC400194 */  sw      $zero, 0x0194($v0)         ## 00000194
/* 03E8C 80AC6B2C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 03E90 80AC6B30 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03E94 80AC6B34 03E00008 */  jr      $ra
/* 03E98 80AC6B38 00000000 */  nop
