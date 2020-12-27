.late_rodata
glabel D_80A66898
 .word 0x3FE6A090, 0x2DE00D1B

.text
glabel func_80A5D0A0
/* 01DB0 80A5D0A0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01DB4 80A5D0A4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01DB8 80A5D0A8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01DBC 80A5D0AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01DC0 80A5D0B0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01DC4 80A5D0B4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01DC8 80A5D0B8 A7A00022 */  sh      $zero, 0x0022($sp)         
/* 01DCC 80A5D0BC 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFFC
/* 01DD0 80A5D0C0 24840264 */  addiu   $a0, $a0, 0x0264           ## $a0 = 00000264
/* 01DD4 80A5D0C4 27A60022 */  addiu   $a2, $sp, 0x0022           ## $a2 = FFFFFFFA
/* 01DD8 80A5D0C8 0C298C52 */  jal     func_80A63148              
/* 01DDC 80A5D0CC E484FE04 */  swc1    $f4, -0x01FC($a0)          ## 00000068
/* 01DE0 80A5D0D0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01DE4 80A5D0D4 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 01DE8 80A5D0D8 C7A80024 */  lwc1    $f8, 0x0024($sp)           
/* 01DEC 80A5D0DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DF0 80A5D0E0 4608303C */  c.lt.s  $f6, $f8                   
/* 01DF4 80A5D0E4 00000000 */  nop
/* 01DF8 80A5D0E8 45000022 */  bc1f    .L80A5D174                 
/* 01DFC 80A5D0EC 00000000 */  nop
/* 01E00 80A5D0F0 0C296FFE */  jal     func_80A5BFF8              
/* 01E04 80A5D0F4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01E08 80A5D0F8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01E0C 80A5D0FC 1441001D */  bne     $v0, $at, .L80A5D174       
/* 01E10 80A5D100 00000000 */  nop
/* 01E14 80A5D104 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 01E18 80A5D108 87A40022 */  lh      $a0, 0x0022($sp)           
/* 01E1C 80A5D10C 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 01E20 80A5D110 44815000 */  mtc1    $at, $f10                  ## $f10 = -0.50
/* 01E24 80A5D114 00000000 */  nop
/* 01E28 80A5D118 460A003E */  c.le.s  $f0, $f10                  
/* 01E2C 80A5D11C 00000000 */  nop
/* 01E30 80A5D120 45000005 */  bc1f    .L80A5D138                 
/* 01E34 80A5D124 00000000 */  nop
/* 01E38 80A5D128 0C297962 */  jal     func_80A5E588              
/* 01E3C 80A5D12C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E40 80A5D130 10000010 */  beq     $zero, $zero, .L80A5D174   
/* 01E44 80A5D134 00000000 */  nop
.L80A5D138:
/* 01E48 80A5D138 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 01E4C 80A5D13C 87A40022 */  lh      $a0, 0x0022($sp)           
/* 01E50 80A5D140 3C0180A6 */  lui     $at, %hi(D_80A66898)       ## $at = 80A60000
/* 01E54 80A5D144 D4306898 */  ldc1    $f16, %lo(D_80A66898)($at) 
/* 01E58 80A5D148 460004A1 */  cvt.d.s $f18, $f0                  
/* 01E5C 80A5D14C 4630903E */  c.le.d  $f18, $f16                 
/* 01E60 80A5D150 00000000 */  nop
/* 01E64 80A5D154 45000005 */  bc1f    .L80A5D16C                 
/* 01E68 80A5D158 00000000 */  nop
/* 01E6C 80A5D15C 0C2974F0 */  jal     func_80A5D3C0              
/* 01E70 80A5D160 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E74 80A5D164 10000003 */  beq     $zero, $zero, .L80A5D174   
/* 01E78 80A5D168 00000000 */  nop
.L80A5D16C:
/* 01E7C 80A5D16C 0C29758A */  jal     func_80A5D628              
/* 01E80 80A5D170 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A5D174:
/* 01E84 80A5D174 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01E88 80A5D178 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 01E8C 80A5D17C 50400004 */  beql    $v0, $zero, .L80A5D190     
/* 01E90 80A5D180 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01E94 80A5D184 0C297468 */  jal     func_80A5D1A0              
/* 01E98 80A5D188 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E9C 80A5D18C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A5D190:
/* 01EA0 80A5D190 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01EA4 80A5D194 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01EA8 80A5D198 03E00008 */  jr      $ra                        
/* 01EAC 80A5D19C 00000000 */  nop
