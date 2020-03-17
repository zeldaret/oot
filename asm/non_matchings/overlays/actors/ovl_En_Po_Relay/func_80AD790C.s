glabel func_80AD790C
/* 001CC 80AD790C 3C0880AD */  lui     $t0, %hi(func_80AD7B34)    ## $t0 = 80AD0000
/* 001D0 80AD7910 240E0020 */  addiu   $t6, $zero, 0x0020         ## $t6 = 00000020
/* 001D4 80AD7914 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 001D8 80AD7918 24188000 */  addiu   $t8, $zero, 0x8000         ## $t8 = FFFF8000
/* 001DC 80AD791C 241900FE */  addiu   $t9, $zero, 0x00FE         ## $t9 = 000000FE
/* 001E0 80AD7920 25087B34 */  addiu   $t0, $t0, %lo(func_80AD7B34) ## $t0 = 80AD7B34
/* 001E4 80AD7924 A08E0195 */  sb      $t6, 0x0195($a0)           ## 00000195
/* 001E8 80AD7928 A4800198 */  sh      $zero, 0x0198($a0)         ## 00000198
/* 001EC 80AD792C A08F0003 */  sb      $t7, 0x0003($a0)           ## 00000003
/* 001F0 80AD7930 A48000B6 */  sh      $zero, 0x00B6($a0)         ## 000000B6
/* 001F4 80AD7934 A4980032 */  sh      $t8, 0x0032($a0)           ## 00000032
/* 001F8 80AD7938 A09900AE */  sb      $t9, 0x00AE($a0)           ## 000000AE
/* 001FC 80AD793C 03E00008 */  jr      $ra                        
/* 00200 80AD7940 AC880190 */  sw      $t0, 0x0190($a0)           ## 00000190


