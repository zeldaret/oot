glabel func_80AABD0C
/* 01ABC 80AABD0C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01AC0 80AABD10 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01AC4 80AABD14 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01AC8 80AABD18 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01ACC 80AABD1C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01AD0 80AABD20 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01AD4 80AABD24 26050214 */  addiu   $a1, $s0, 0x0214           ## $a1 = 00000214
/* 01AD8 80AABD28 26060236 */  addiu   $a2, $s0, 0x0236           ## $a2 = 00000236
/* 01ADC 80AABD2C 0C00D3D5 */  jal     func_80034F54              
/* 01AE0 80AABD30 24070011 */  addiu   $a3, $zero, 0x0011         ## $a3 = 00000011
/* 01AE4 80AABD34 0C2AAA4F */  jal     func_80AAA93C              
/* 01AE8 80AABD38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AEC 80AABD3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AF0 80AABD40 0C2AACDC */  jal     func_80AAB370              
/* 01AF4 80AABD44 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01AF8 80AABD48 50400007 */  beql    $v0, $zero, .L80AABD68     
/* 01AFC 80AABD4C 8A180030 */  lwl     $t8, 0x0030($s0)           ## 00000030
/* 01B00 80AABD50 860E0212 */  lh      $t6, 0x0212($s0)           ## 00000212
/* 01B04 80AABD54 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01B08 80AABD58 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01B0C 80AABD5C 11C00008 */  beq     $t6, $zero, .L80AABD80     
/* 01B10 80AABD60 3C198012 */  lui     $t9, %hi(gBitFlags+0x48)
/* 01B14 80AABD64 8A180030 */  lwl     $t8, 0x0030($s0)           ## 00000030
.L80AABD68:
/* 01B18 80AABD68 9A180033 */  lwr     $t8, 0x0033($s0)           ## 00000033
/* 01B1C 80AABD6C AA1800B4 */  swl     $t8, 0x00B4($s0)           ## 000000B4
/* 01B20 80AABD70 BA1800B7 */  swr     $t8, 0x00B7($s0)           ## 000000B7
/* 01B24 80AABD74 96180034 */  lhu     $t8, 0x0034($s0)           ## 00000034
/* 01B28 80AABD78 10000029 */  beq     $zero, $zero, .L80AABE20   
/* 01B2C 80AABD7C A61800B8 */  sh      $t8, 0x00B8($s0)           ## 000000B8
.L80AABD80:
/* 01B30 80AABD80 8F397168 */  lw      $t9, %lo(gBitFlags+0x48)($t9)
/* 01B34 80AABD84 8C4800A4 */  lw      $t0, 0x00A4($v0)           ## 8015E704
/* 01B38 80AABD88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B3C 80AABD8C 03284824 */  and     $t1, $t9, $t0              
/* 01B40 80AABD90 11200015 */  beq     $t1, $zero, .L80AABDE8     
/* 01B44 80AABD94 00000000 */  nop
/* 01B48 80AABD98 944A0ED6 */  lhu     $t2, 0x0ED6($v0)           ## 8015F536
/* 01B4C 80AABD9C 8FAC0024 */  lw      $t4, 0x0024($sp)           
/* 01B50 80AABDA0 314B1000 */  andi    $t3, $t2, 0x1000           ## $t3 = 00000000
/* 01B54 80AABDA4 15600010 */  bne     $t3, $zero, .L80AABDE8     
/* 01B58 80AABDA8 00000000 */  nop
/* 01B5C 80AABDAC 858D00A4 */  lh      $t5, 0x00A4($t4)           ## 000000A4
/* 01B60 80AABDB0 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
/* 01B64 80AABDB4 15A1000C */  bne     $t5, $at, .L80AABDE8       
/* 01B68 80AABDB8 00000000 */  nop
/* 01B6C 80AABDBC 0C041B33 */  jal     func_80106CCC              
/* 01B70 80AABDC0 01802025 */  or      $a0, $t4, $zero            ## $a0 = 00000000
/* 01B74 80AABDC4 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01B78 80AABDC8 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01B7C 80AABDCC 944E0ED6 */  lhu     $t6, 0x0ED6($v0)           ## 8015F536
/* 01B80 80AABDD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B84 80AABDD4 35CF1000 */  ori     $t7, $t6, 0x1000           ## $t7 = 00001000
/* 01B88 80AABDD8 0C00B55C */  jal     Actor_Kill
              
/* 01B8C 80AABDDC A44F0ED6 */  sh      $t7, 0x0ED6($v0)           ## 8015F536
/* 01B90 80AABDE0 10000010 */  beq     $zero, $zero, .L80AABE24   
/* 01B94 80AABDE4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AABDE8:
/* 01B98 80AABDE8 0C2AAA4B */  jal     func_80AAA92C              
/* 01B9C 80AABDEC 2405000B */  addiu   $a1, $zero, 0x000B         ## $a1 = 0000000B
/* 01BA0 80AABDF0 8E190024 */  lw      $t9, 0x0024($s0)           ## 00000024
/* 01BA4 80AABDF4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01BA8 80AABDF8 8E180028 */  lw      $t8, 0x0028($s0)           ## 00000028
/* 01BAC 80AABDFC AE190008 */  sw      $t9, 0x0008($s0)           ## 00000008
/* 01BB0 80AABE00 8E19002C */  lw      $t9, 0x002C($s0)           ## 0000002C
/* 01BB4 80AABE04 3C0880AB */  lui     $t0, %hi(func_80AAB8F8)    ## $t0 = 80AB0000
/* 01BB8 80AABE08 2508B8F8 */  addiu   $t0, $t0, %lo(func_80AAB8F8) ## $t0 = 80AAB8F8
/* 01BBC 80AABE0C AE080190 */  sw      $t0, 0x0190($s0)           ## 00000190
/* 01BC0 80AABE10 E6000168 */  swc1    $f0, 0x0168($s0)           ## 00000168
/* 01BC4 80AABE14 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 01BC8 80AABE18 AE18000C */  sw      $t8, 0x000C($s0)           ## 0000000C
/* 01BCC 80AABE1C AE190010 */  sw      $t9, 0x0010($s0)           ## 00000010
.L80AABE20:
/* 01BD0 80AABE20 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AABE24:
/* 01BD4 80AABE24 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01BD8 80AABE28 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01BDC 80AABE2C 03E00008 */  jr      $ra                        
/* 01BE0 80AABE30 00000000 */  nop
