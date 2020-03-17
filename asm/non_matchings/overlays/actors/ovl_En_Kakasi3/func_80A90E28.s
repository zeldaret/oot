glabel func_80A90E28
/* 00108 80A90E28 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0010C 80A90E2C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00110 80A90E30 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00114 80A90E34 A48001AE */  sh      $zero, 0x01AE($a0)         ## 000001AE
/* 00118 80A90E38 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0011C 80A90E3C 848E01AE */  lh      $t6, 0x01AE($a0)           ## 000001AE
/* 00120 80A90E40 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00124 80A90E44 A48001A4 */  sh      $zero, 0x01A4($a0)         ## 000001A4
/* 00128 80A90E48 24840168 */  addiu   $a0, $a0, 0x0168           ## $a0 = 00000168
/* 0012C 80A90E4C 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 00130 80A90E50 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00134 80A90E54 E4840004 */  swc1    $f4, 0x0004($a0)           ## 0000016C
/* 00138 80A90E58 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 0013C 80A90E5C A48E0042 */  sh      $t6, 0x0042($a0)           ## 000001AA
/* 00140 80A90E60 860501B0 */  lh      $a1, 0x01B0($s0)           ## 000001B0
/* 00144 80A90E64 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00148 80A90E68 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0014C 80A90E6C 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00150 80A90E70 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00154 80A90E74 24072710 */  addiu   $a3, $zero, 0x2710         ## $a3 = 00002710
/* 00158 80A90E78 860501B2 */  lh      $a1, 0x01B2($s0)           ## 000001B2
/* 0015C 80A90E7C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00160 80A90E80 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00164 80A90E84 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00168 80A90E88 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0016C 80A90E8C 24072710 */  addiu   $a3, $zero, 0x2710         ## $a3 = 00002710
/* 00170 80A90E90 860501B4 */  lh      $a1, 0x01B4($s0)           ## 000001B4
/* 00174 80A90E94 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00178 80A90E98 260400B8 */  addiu   $a0, $s0, 0x00B8           ## $a0 = 000000B8
/* 0017C 80A90E9C 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00180 80A90EA0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00184 80A90EA4 24072710 */  addiu   $a3, $zero, 0x2710         ## $a3 = 00002710
/* 00188 80A90EA8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0018C 80A90EAC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00190 80A90EB0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00194 80A90EB4 03E00008 */  jr      $ra                        
/* 00198 80A90EB8 00000000 */  nop


