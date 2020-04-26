glabel func_80AD5D60
/* 02260 80AD5D60 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02264 80AD5D64 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02268 80AD5D68 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0226C 80AD5D6C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02270 80AD5D70 8482019A */  lh      $v0, 0x019A($a0)           ## 0000019A
/* 02274 80AD5D74 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02278 80AD5D78 50400040 */  beql    $v0, $zero, .L80AD5E7C     
/* 0227C 80AD5D7C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02280 80AD5D80 10400002 */  beq     $v0, $zero, .L80AD5D8C     
/* 02284 80AD5D84 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 02288 80AD5D88 A48E019A */  sh      $t6, 0x019A($a0)           ## 0000019A
.L80AD5D8C:
/* 0228C 80AD5D8C 920202A0 */  lbu     $v0, 0x02A0($s0)           ## 000002A0
/* 02290 80AD5D90 24190013 */  addiu   $t9, $zero, 0x0013         ## $t9 = 00000013
/* 02294 80AD5D94 26040220 */  addiu   $a0, $s0, 0x0220           ## $a0 = 00000220
/* 02298 80AD5D98 304F0002 */  andi    $t7, $v0, 0x0002           ## $t7 = 00000000
/* 0229C 80AD5D9C 11E00003 */  beq     $t7, $zero, .L80AD5DAC     
/* 022A0 80AD5DA0 3058FFFD */  andi    $t8, $v0, 0xFFFD           ## $t8 = 00000000
/* 022A4 80AD5DA4 A21802A0 */  sb      $t8, 0x02A0($s0)           ## 000002A0
/* 022A8 80AD5DA8 A619019A */  sh      $t9, 0x019A($s0)           ## 0000019A
.L80AD5DAC:
/* 022AC 80AD5DAC 8608019A */  lh      $t0, 0x019A($s0)           ## 0000019A
/* 022B0 80AD5DB0 3C053B44 */  lui     $a1, 0x3B44                ## $a1 = 3B440000
/* 022B4 80AD5DB4 34A59BA6 */  ori     $a1, $a1, 0x9BA6           ## $a1 = 3B449BA6
/* 022B8 80AD5DB8 29010014 */  slti    $at, $t0, 0x0014           
/* 022BC 80AD5DBC 10200008 */  beq     $at, $zero, .L80AD5DE0     
/* 022C0 80AD5DC0 3C063A1D */  lui     $a2, 0x3A1D                ## $a2 = 3A1D0000
/* 022C4 80AD5DC4 3C06391D */  lui     $a2, 0x391D                ## $a2 = 391D0000
/* 022C8 80AD5DC8 34C64952 */  ori     $a2, $a2, 0x4952           ## $a2 = 391D4952
/* 022CC 80AD5DCC 26040220 */  addiu   $a0, $s0, 0x0220           ## $a0 = 00000220
/* 022D0 80AD5DD0 0C01DE80 */  jal     Math_ApproxF
              
/* 022D4 80AD5DD4 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 022D8 80AD5DD8 10000028 */  beq     $zero, $zero, .L80AD5E7C   
/* 022DC 80AD5DDC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AD5DE0:
/* 022E0 80AD5DE0 0C01DE80 */  jal     Math_ApproxF
              
/* 022E4 80AD5DE4 34C64952 */  ori     $a2, $a2, 0x4952           ## $a2 = 00004952
/* 022E8 80AD5DE8 50400012 */  beql    $v0, $zero, .L80AD5E34     
/* 022EC 80AD5DEC C6080224 */  lwc1    $f8, 0x0224($s0)           ## 00000224
/* 022F0 80AD5DF0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 022F4 80AD5DF4 86040198 */  lh      $a0, 0x0198($s0)           ## 00000198
/* 022F8 80AD5DF8 3C014020 */  lui     $at, 0x4020                ## $at = 40200000
/* 022FC 80AD5DFC 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.50
/* 02300 80AD5E00 C6040224 */  lwc1    $f4, 0x0224($s0)           ## 00000224
/* 02304 80AD5E04 86040198 */  lh      $a0, 0x0198($s0)           ## 00000198
/* 02308 80AD5E08 46003202 */  mul.s   $f8, $f6, $f0              
/* 0230C 80AD5E0C 46082280 */  add.s   $f10, $f4, $f8             
/* 02310 80AD5E10 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 02314 80AD5E14 E60A0224 */  swc1    $f10, 0x0224($s0)          ## 00000224
/* 02318 80AD5E18 3C014020 */  lui     $at, 0x4020                ## $at = 40200000
/* 0231C 80AD5E1C 44819000 */  mtc1    $at, $f18                  ## $f18 = 2.50
/* 02320 80AD5E20 C610022C */  lwc1    $f16, 0x022C($s0)          ## 0000022C
/* 02324 80AD5E24 46009182 */  mul.s   $f6, $f18, $f0             
/* 02328 80AD5E28 46068100 */  add.s   $f4, $f16, $f6             
/* 0232C 80AD5E2C E604022C */  swc1    $f4, 0x022C($s0)           ## 0000022C
/* 02330 80AD5E30 C6080224 */  lwc1    $f8, 0x0224($s0)           ## 00000224
.L80AD5E34:
/* 02334 80AD5E34 C6120228 */  lwc1    $f18, 0x0228($s0)          ## 00000228
/* 02338 80AD5E38 C606022C */  lwc1    $f6, 0x022C($s0)           ## 0000022C
/* 0233C 80AD5E3C 4600428D */  trunc.w.s $f10, $f8                  
/* 02340 80AD5E40 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02344 80AD5E44 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02348 80AD5E48 4600940D */  trunc.w.s $f16, $f18                 
/* 0234C 80AD5E4C 440A5000 */  mfc1    $t2, $f10                  
/* 02350 80AD5E50 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02354 80AD5E54 4600310D */  trunc.w.s $f4, $f6                   
/* 02358 80AD5E58 440C8000 */  mfc1    $t4, $f16                  
/* 0235C 80AD5E5C 26060290 */  addiu   $a2, $s0, 0x0290           ## $a2 = 00000290
/* 02360 80AD5E60 00812821 */  addu    $a1, $a0, $at              
/* 02364 80AD5E64 440E2000 */  mfc1    $t6, $f4                   
/* 02368 80AD5E68 A60A02D6 */  sh      $t2, 0x02D6($s0)           ## 000002D6
/* 0236C 80AD5E6C A60C02D8 */  sh      $t4, 0x02D8($s0)           ## 000002D8
/* 02370 80AD5E70 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 02374 80AD5E74 A60E02DA */  sh      $t6, 0x02DA($s0)           ## 000002DA
/* 02378 80AD5E78 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AD5E7C:
/* 0237C 80AD5E7C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02380 80AD5E80 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02384 80AD5E84 03E00008 */  jr      $ra                        
/* 02388 80AD5E88 00000000 */  nop
