glabel func_80A5AA24
/* 00DF4 80A5AA24 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00DF8 80A5AA28 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00DFC 80A5AA2C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00E00 80A5AA30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E04 80A5AA34 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00E08 80A5AA38 3C0538D1 */  lui     $a1, 0x38D1                ## $a1 = 38D10000
/* 00E0C 80A5AA3C 3C06391D */  lui     $a2, 0x391D                ## $a2 = 391D0000
/* 00E10 80A5AA40 34C64952 */  ori     $a2, $a2, 0x4952           ## $a2 = 391D4952
/* 00E14 80A5AA44 34A5B717 */  ori     $a1, $a1, 0xB717           ## $a1 = 38D1B717
/* 00E18 80A5AA48 0C01DE80 */  jal     Math_ApproxF
              
/* 00E1C 80A5AA4C 24840050 */  addiu   $a0, $a0, 0x0050           ## $a0 = 00000050
/* 00E20 80A5AA50 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 00E24 80A5AA54 C6000050 */  lwc1    $f0, 0x0050($s0)           ## 00000050
/* 00E28 80A5AA58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E2C 80A5AA5C E6000054 */  swc1    $f0, 0x0054($s0)           ## 00000054
/* 00E30 80A5AA60 0C00B638 */  jal     Actor_MoveForward
              
/* 00E34 80A5AA64 E6000058 */  swc1    $f0, 0x0058($s0)           ## 00000058
/* 00E38 80A5AA68 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00E3C 80A5AA6C 240E001D */  addiu   $t6, $zero, 0x001D         ## $t6 = 0000001D
/* 00E40 80A5AA70 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00E44 80A5AA74 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00E48 80A5AA78 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00E4C 80A5AA7C 3C0640E0 */  lui     $a2, 0x40E0                ## $a2 = 40E00000
/* 00E50 80A5AA80 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 00E54 80A5AA84 0C00B92D */  jal     func_8002E4B4              
/* 00E58 80A5AA88 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00E5C 80A5AA8C 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 00E60 80A5AA90 51E00004 */  beql    $t7, $zero, .L80A5AAA4     
/* 00E64 80A5AA94 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00E68 80A5AA98 0C00B55C */  jal     Actor_Kill
              
/* 00E6C 80A5AA9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E70 80A5AAA0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A5AAA4:
/* 00E74 80A5AAA4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00E78 80A5AAA8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00E7C 80A5AAAC 03E00008 */  jr      $ra                        
/* 00E80 80A5AAB0 00000000 */  nop
