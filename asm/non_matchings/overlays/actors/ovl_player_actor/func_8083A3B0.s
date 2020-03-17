glabel func_8083A3B0
/* 081A0 8083A3B0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 081A4 8083A3B4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 081A8 8083A3B8 84AE0850 */  lh      $t6, 0x0850($a1)           ## 00000850
/* 081AC 8083A3BC 3C068085 */  lui     $a2, %hi(func_8084BF1C)    ## $a2 = 80850000
/* 081B0 8083A3C0 24C6BF1C */  addiu   $a2, $a2, %lo(func_8084BF1C) ## $a2 = 8084BF1C
/* 081B4 8083A3C4 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 081B8 8083A3C8 80AF084F */  lb      $t7, 0x084F($a1)           ## 0000084F
/* 081BC 8083A3CC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 081C0 8083A3D0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 081C4 8083A3D4 0C20D76B */  jal     func_80835DAC              
/* 081C8 8083A3D8 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 081CC 8083A3DC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 081D0 8083A3E0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 081D4 8083A3E4 00000000 */  nop
/* 081D8 8083A3E8 E4A40060 */  swc1    $f4, 0x0060($a1)           ## 00000060
/* 081DC 8083A3EC 8FB8001C */  lw      $t8, 0x001C($sp)           
/* 081E0 8083A3F0 A4B80850 */  sh      $t8, 0x0850($a1)           ## 00000850
/* 081E4 8083A3F4 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 081E8 8083A3F8 A0B9084F */  sb      $t9, 0x084F($a1)           ## 0000084F
/* 081EC 8083A3FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 081F0 8083A400 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 081F4 8083A404 03E00008 */  jr      $ra                        
/* 081F8 8083A408 00000000 */  nop


