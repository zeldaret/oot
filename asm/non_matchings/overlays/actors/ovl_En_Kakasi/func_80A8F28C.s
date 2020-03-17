glabel func_80A8F28C
/* 0011C 80A8F28C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00120 80A8F290 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00124 80A8F294 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00128 80A8F298 A48001AC */  sh      $zero, 0x01AC($a0)         ## 000001AC
/* 0012C 80A8F29C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00130 80A8F2A0 848E01AC */  lh      $t6, 0x01AC($a0)           ## 000001AC
/* 00134 80A8F2A4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00138 80A8F2A8 A48001A4 */  sh      $zero, 0x01A4($a0)         ## 000001A4
/* 0013C 80A8F2AC 24840168 */  addiu   $a0, $a0, 0x0168           ## $a0 = 00000168
/* 00140 80A8F2B0 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 00144 80A8F2B4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00148 80A8F2B8 E4840004 */  swc1    $f4, 0x0004($a0)           ## 0000016C
/* 0014C 80A8F2BC 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 00150 80A8F2C0 A48E0040 */  sh      $t6, 0x0040($a0)           ## 000001A8
/* 00154 80A8F2C4 860501AE */  lh      $a1, 0x01AE($s0)           ## 000001AE
/* 00158 80A8F2C8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0015C 80A8F2CC 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00160 80A8F2D0 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00164 80A8F2D4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00168 80A8F2D8 24072710 */  addiu   $a3, $zero, 0x2710         ## $a3 = 00002710
/* 0016C 80A8F2DC 860501B0 */  lh      $a1, 0x01B0($s0)           ## 000001B0
/* 00170 80A8F2E0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00174 80A8F2E4 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00178 80A8F2E8 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 0017C 80A8F2EC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00180 80A8F2F0 24072710 */  addiu   $a3, $zero, 0x2710         ## $a3 = 00002710
/* 00184 80A8F2F4 860501B2 */  lh      $a1, 0x01B2($s0)           ## 000001B2
/* 00188 80A8F2F8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0018C 80A8F2FC 260400B8 */  addiu   $a0, $s0, 0x00B8           ## $a0 = 000000B8
/* 00190 80A8F300 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00194 80A8F304 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00198 80A8F308 24072710 */  addiu   $a3, $zero, 0x2710         ## $a3 = 00002710
/* 0019C 80A8F30C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 001A0 80A8F310 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 001A4 80A8F314 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 001A8 80A8F318 03E00008 */  jr      $ra                        
/* 001AC 80A8F31C 00000000 */  nop


