glabel func_80A960B0
/* 00D60 80A960B0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00D64 80A960B4 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00D68 80A960B8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D6C 80A960BC AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00D70 80A960C0 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00D74 80A960C4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00D78 80A960C8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00D7C 80A960CC 3C053BA3 */  lui     $a1, 0x3BA3                ## $a1 = 3BA30000
/* 00D80 80A960D0 3C063A03 */  lui     $a2, 0x3A03                ## $a2 = 3A030000
/* 00D84 80A960D4 34C6126F */  ori     $a2, $a2, 0x126F           ## $a2 = 3A03126F
/* 00D88 80A960D8 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3BA3D70A
/* 00D8C 80A960DC 0C01DE80 */  jal     Math_ApproxF
              
/* 00D90 80A960E0 26040050 */  addiu   $a0, $s0, 0x0050           ## $a0 = 00000050
/* 00D94 80A960E4 3C014160 */  lui     $at, 0x4160                ## $at = 41600000
/* 00D98 80A960E8 44813000 */  mtc1    $at, $f6                   ## $f6 = 14.00
/* 00D9C 80A960EC C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 00DA0 80A960F0 C6000050 */  lwc1    $f0, 0x0050($s0)           ## 00000050
/* 00DA4 80A960F4 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 00DA8 80A960F8 46062200 */  add.s   $f8, $f4, $f6              
/* 00DAC 80A960FC 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 00DB0 80A96100 E6000058 */  swc1    $f0, 0x0058($s0)           ## 00000058
/* 00DB4 80A96104 E6000054 */  swc1    $f0, 0x0054($s0)           ## 00000054
/* 00DB8 80A96108 44054000 */  mfc1    $a1, $f8                   
/* 00DBC 80A9610C 0C01DE80 */  jal     Math_ApproxF
              
/* 00DC0 80A96110 00000000 */  nop
/* 00DC4 80A96114 50400004 */  beql    $v0, $zero, .L80A96128     
/* 00DC8 80A96118 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 00DCC 80A9611C 0C2A5552 */  jal     func_80A95548              
/* 00DD0 80A96120 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DD4 80A96124 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
.L80A96128:
/* 00DD8 80A96128 2418000C */  addiu   $t8, $zero, 0x000C         ## $t8 = 0000000C
/* 00DDC 80A9612C 24190005 */  addiu   $t9, $zero, 0x0005         ## $t9 = 00000005
/* 00DE0 80A96130 25CF1999 */  addiu   $t7, $t6, 0x1999           ## $t7 = 00001999
/* 00DE4 80A96134 A60F00B6 */  sh      $t7, 0x00B6($s0)           ## 000000B6
/* 00DE8 80A96138 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00DEC 80A9613C 2409FFFF */  addiu   $t1, $zero, 0xFFFF         ## $t1 = FFFFFFFF
/* 00DF0 80A96140 240A000A */  addiu   $t2, $zero, 0x000A         ## $t2 = 0000000A
/* 00DF4 80A96144 AFAA0020 */  sw      $t2, 0x0020($sp)           
/* 00DF8 80A96148 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 00DFC 80A9614C AFA80018 */  sw      $t0, 0x0018($sp)           
/* 00E00 80A96150 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00E04 80A96154 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00E08 80A96158 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00E0C 80A9615C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00E10 80A96160 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 00E14 80A96164 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 00E18 80A96168 0C00A5E9 */  jal     EffectSsHahen_SpawnBurst              
/* 00E1C 80A9616C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00E20 80A96170 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00E24 80A96174 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00E28 80A96178 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00E2C 80A9617C 03E00008 */  jr      $ra                        
/* 00E30 80A96180 00000000 */  nop
