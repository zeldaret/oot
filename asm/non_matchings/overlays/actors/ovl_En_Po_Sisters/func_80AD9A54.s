glabel func_80AD9A54
/* 00AC4 80AD9A54 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AC8 80AD9A58 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00ACC 80AD9A5C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00AD0 80AD9A60 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00AD4 80AD9A64 C4840238 */  lwc1    $f4, 0x0238($a0)           ## 00000238
/* 00AD8 80AD9A68 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00ADC 80AD9A6C A480019A */  sh      $zero, 0x019A($a0)         ## 0000019A
/* 00AE0 80AD9A70 E4840028 */  swc1    $f4, 0x0028($a0)           ## 00000028
/* 00AE4 80AD9A74 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00AE8 80AD9A78 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00AEC 80AD9A7C 24A60024 */  addiu   $a2, $a1, 0x0024           ## $a2 = 00000024
/* 00AF0 80AD9A80 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00AF4 80AD9A84 24070080 */  addiu   $a3, $zero, 0x0080         ## $a3 = 00000080
/* 00AF8 80AD9A88 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00AFC 80AD9A8C 3C0E80AE */  lui     $t6, %hi(func_80ADB17C)    ## $t6 = 80AE0000
/* 00B00 80AD9A90 25CEB17C */  addiu   $t6, $t6, %lo(func_80ADB17C) ## $t6 = 80ADB17C
/* 00B04 80AD9A94 ACAE0190 */  sw      $t6, 0x0190($a1)           ## 00000190
/* 00B08 80AD9A98 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B0C 80AD9A9C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B10 80AD9AA0 03E00008 */  jr      $ra                        
/* 00B14 80AD9AA4 00000000 */  nop


