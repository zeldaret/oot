glabel func_80AB1A94
/* 00D04 80AB1A94 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00D08 80AB1A98 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00D0C 80AB1A9C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00D10 80AB1AA0 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00D14 80AB1AA4 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 00D18 80AB1AA8 C4A40024 */  lwc1    $f4, 0x0024($a1)           ## 00000024
/* 00D1C 80AB1AAC 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00D20 80AB1AB0 8DCEFA90 */  lw      $t6, -0x0570($t6)          ## 8015FA90
/* 00D24 80AB1AB4 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00D28 80AB1AB8 3C0141B0 */  lui     $at, 0x41B0                ## $at = 41B00000
/* 00D2C 80AB1ABC 85CF147E */  lh      $t7, 0x147E($t6)           ## 8016147E
/* 00D30 80AB1AC0 44815000 */  mtc1    $at, $f10                  ## $f10 = 22.00
/* 00D34 80AB1AC4 C4B20028 */  lwc1    $f18, 0x0028($a1)          ## 00000028
/* 00D38 80AB1AC8 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 00D3C 80AB1ACC 24180007 */  addiu   $t8, $zero, 0x0007         ## $t8 = 00000007
/* 00D40 80AB1AD0 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00D44 80AB1AD4 46803220 */  cvt.s.w $f8, $f6                   
/* 00D48 80AB1AD8 240700F5 */  addiu   $a3, $zero, 0x00F5         ## $a3 = 000000F5
/* 00D4C 80AB1ADC 460A4400 */  add.s   $f16, $f8, $f10            
/* 00D50 80AB1AE0 46128100 */  add.s   $f4, $f16, $f18            
/* 00D54 80AB1AE4 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 00D58 80AB1AE8 C4A6002C */  lwc1    $f6, 0x002C($a1)           ## 0000002C
/* 00D5C 80AB1AEC AFB80028 */  sw      $t8, 0x0028($sp)           
/* 00D60 80AB1AF0 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00D64 80AB1AF4 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00D68 80AB1AF8 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00D6C 80AB1AFC 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00D70 80AB1B00 E7A60018 */  swc1    $f6, 0x0018($sp)           
/* 00D74 80AB1B04 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00D78 80AB1B08 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00D7C 80AB1B0C 03E00008 */  jr      $ra                        
/* 00D80 80AB1B10 00000000 */  nop
