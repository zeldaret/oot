glabel func_809F8D0C
/* 00ABC 809F8D0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AC0 809F8D10 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AC4 809F8D14 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00AC8 809F8D18 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00ACC 809F8D1C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00AD0 809F8D20 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00AD4 809F8D24 50400009 */  beql    $v0, $zero, .L809F8D4C     
/* 00AD8 809F8D28 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00ADC 809F8D2C 0C27E273 */  jal     func_809F89CC              
/* 00AE0 809F8D30 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00AE4 809F8D34 2404000A */  addiu   $a0, $zero, 0x000A         ## $a0 = 0000000A
/* 00AE8 809F8D38 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00AEC 809F8D3C 24050014 */  addiu   $a1, $zero, 0x0014         ## $a1 = 00000014
/* 00AF0 809F8D40 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00AF4 809F8D44 A5C2030C */  sh      $v0, 0x030C($t6)           ## 0000030C
/* 00AF8 809F8D48 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809F8D4C:
/* 00AFC 809F8D4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B00 809F8D50 03E00008 */  jr      $ra                        
/* 00B04 809F8D54 00000000 */  nop
