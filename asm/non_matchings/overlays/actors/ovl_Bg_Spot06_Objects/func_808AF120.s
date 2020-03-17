glabel func_808AF120
/* 009A0 808AF120 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 009A4 808AF124 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 009A8 808AF128 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 009AC 808AF12C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 009B0 808AF130 8482016A */  lh      $v0, 0x016A($a0)           ## 0000016A
/* 009B4 808AF134 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009B8 808AF138 10400002 */  beq     $v0, $zero, .L808AF144     
/* 009BC 808AF13C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 009C0 808AF140 A48E016A */  sh      $t6, 0x016A($a0)           ## 0000016A
.L808AF144:
/* 009C4 808AF144 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 009C8 808AF148 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 009CC 808AF14C 3C01808B */  lui     $at, %hi(D_808AFA14)       ## $at = 808B0000
/* 009D0 808AF150 C426FA14 */  lwc1    $f6, %lo(D_808AFA14)($at)  
/* 009D4 808AF154 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 009D8 808AF158 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 009DC 808AF15C 46003202 */  mul.s   $f8, $f6, $f0              
/* 009E0 808AF160 46082280 */  add.s   $f10, $f4, $f8             
/* 009E4 808AF164 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 009E8 808AF168 E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 009EC 808AF16C 3C01808B */  lui     $at, %hi(D_808AFA18)       ## $at = 808B0000
/* 009F0 808AF170 C432FA18 */  lwc1    $f18, %lo(D_808AFA18)($at) 
/* 009F4 808AF174 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 009F8 808AF178 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009FC 808AF17C 46009182 */  mul.s   $f6, $f18, $f0             
/* 00A00 808AF180 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00A04 808AF184 46068100 */  add.s   $f4, $f16, $f6             
/* 00A08 808AF188 E604002C */  swc1    $f4, 0x002C($s0)           ## 0000002C
/* 00A0C 808AF18C 0C22BB9B */  jal     func_808AEE6C              
/* 00A10 808AF190 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00A14 808AF194 860F016A */  lh      $t7, 0x016A($s0)           ## 0000016A
/* 00A18 808AF198 3C08808B */  lui     $t0, %hi(func_808AF1D8)    ## $t0 = 808B0000
/* 00A1C 808AF19C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00A20 808AF1A0 15E00008 */  bne     $t7, $zero, .L808AF1C4     
/* 00A24 808AF1A4 2508F1D8 */  addiu   $t0, $t0, %lo(func_808AF1D8) ## $t0 = 808AF1D8
/* 00A28 808AF1A8 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 00A2C 808AF1AC 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 00A30 808AF1B0 2401DFFF */  addiu   $at, $zero, 0xDFFF         ## $at = FFFFDFFF
/* 00A34 808AF1B4 AE080164 */  sw      $t0, 0x0164($s0)           ## 00000164
/* 00A38 808AF1B8 0301C824 */  and     $t9, $t8, $at              
/* 00A3C 808AF1BC AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 00A40 808AF1C0 E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
.L808AF1C4:
/* 00A44 808AF1C4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A48 808AF1C8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00A4C 808AF1CC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00A50 808AF1D0 03E00008 */  jr      $ra                        
/* 00A54 808AF1D4 00000000 */  nop


