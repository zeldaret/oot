.late_rodata
glabel D_80A7E014
    .float 0.001

glabel D_80A7E018
 .word 0x3951B717
glabel D_80A7E01C
    .float 0.8

glabel D_80A7E020
    .float 0.1

glabel D_80A7E024
 .word 0xBF19999A
glabel D_80A7E028
    .float 0.6

glabel D_80A7E02C
 .word 0xBF19999A

.text
glabel func_80A7CC3C
/* 00E1C 80A7CC3C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00E20 80A7CC40 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00E24 80A7CC44 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00E28 80A7CC48 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00E2C 80A7CC4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E30 80A7CC50 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00E34 80A7CC54 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00E38 80A7CC58 44050000 */  mfc1    $a1, $f0                   
/* 00E3C 80A7CC5C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00E40 80A7CC60 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 00E44 80A7CC64 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 00E48 80A7CC68 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00E4C 80A7CC6C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00E50 80A7CC70 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00E54 80A7CC74 24052AAA */  addiu   $a1, $zero, 0x2AAA         ## $a1 = 00002AAA
/* 00E58 80A7CC78 0C01DE5F */  jal     Math_ApproxS
              
/* 00E5C 80A7CC7C 24060160 */  addiu   $a2, $zero, 0x0160         ## $a2 = 00000160
/* 00E60 80A7CC80 3C0180A8 */  lui     $at, %hi(D_80A7E014)       ## $at = 80A80000
/* 00E64 80A7CC84 C42CE014 */  lwc1    $f12, %lo(D_80A7E014)($at) 
/* 00E68 80A7CC88 3C0180A8 */  lui     $at, %hi(D_80A7E018)       ## $at = 80A80000
/* 00E6C 80A7CC8C C426E018 */  lwc1    $f6, %lo(D_80A7E018)($at)  
/* 00E70 80A7CC90 C6040050 */  lwc1    $f4, 0x0050($s0)           ## 00000050
/* 00E74 80A7CC94 46062001 */  sub.s   $f0, $f4, $f6              
/* 00E78 80A7CC98 460C003C */  c.lt.s  $f0, $f12                  
/* 00E7C 80A7CC9C 00000000 */  nop
/* 00E80 80A7CCA0 45020004 */  bc1fl   .L80A7CCB4                 
/* 00E84 80A7CCA4 46000086 */  mov.s   $f2, $f0                   
/* 00E88 80A7CCA8 10000002 */  beq     $zero, $zero, .L80A7CCB4   
/* 00E8C 80A7CCAC 46006086 */  mov.s   $f2, $f12                  
/* 00E90 80A7CCB0 46000086 */  mov.s   $f2, $f0                   
.L80A7CCB4:
/* 00E94 80A7CCB4 44051000 */  mfc1    $a1, $f2                   
/* 00E98 80A7CCB8 0C00B58B */  jal     Actor_SetScale
              
/* 00E9C 80A7CCBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EA0 80A7CCC0 3C0180A8 */  lui     $at, %hi(D_80A7E01C)       ## $at = 80A80000
/* 00EA4 80A7CCC4 C42AE01C */  lwc1    $f10, %lo(D_80A7E01C)($at) 
/* 00EA8 80A7CCC8 C60800BC */  lwc1    $f8, 0x00BC($s0)           ## 000000BC
/* 00EAC 80A7CCCC 460A4401 */  sub.s   $f16, $f8, $f10            
/* 00EB0 80A7CCD0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00EB4 80A7CCD4 E61000BC */  swc1    $f16, 0x00BC($s0)          ## 000000BC
/* 00EB8 80A7CCD8 C6120008 */  lwc1    $f18, 0x0008($s0)          ## 00000008
/* 00EBC 80A7CCDC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00EC0 80A7CCE0 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 00EC4 80A7CCE4 46120100 */  add.s   $f4, $f0, $f18             
/* 00EC8 80A7CCE8 46062201 */  sub.s   $f8, $f4, $f6              
/* 00ECC 80A7CCEC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00ED0 80A7CCF0 E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 00ED4 80A7CCF4 C60A0010 */  lwc1    $f10, 0x0010($s0)          ## 00000010
/* 00ED8 80A7CCF8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00EDC 80A7CCFC 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 00EE0 80A7CD00 460A0400 */  add.s   $f16, $f0, $f10            
/* 00EE4 80A7CD04 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 00EE8 80A7CD08 46128101 */  sub.s   $f4, $f16, $f18            
/* 00EEC 80A7CD0C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00EF0 80A7CD10 E604002C */  swc1    $f4, 0x002C($s0)           ## 0000002C
/* 00EF4 80A7CD14 860E031A */  lh      $t6, 0x031A($s0)           ## 0000031A
/* 00EF8 80A7CD18 29C10015 */  slti    $at, $t6, 0x0015           
/* 00EFC 80A7CD1C 54200034 */  bnel    $at, $zero, .L80A7CDF0     
/* 00F00 80A7CD20 8609031A */  lh      $t1, 0x031A($s0)           ## 0000031A
/* 00F04 80A7CD24 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00F08 80A7CD28 00000000 */  nop
/* 00F0C 80A7CD2C 3C0180A8 */  lui     $at, %hi(D_80A7E020)       ## $at = 80A80000
/* 00F10 80A7CD30 C426E020 */  lwc1    $f6, %lo(D_80A7E020)($at)  
/* 00F14 80A7CD34 4606003C */  c.lt.s  $f0, $f6                   
/* 00F18 80A7CD38 00000000 */  nop
/* 00F1C 80A7CD3C 4502002C */  bc1fl   .L80A7CDF0                 
/* 00F20 80A7CD40 8609031A */  lh      $t1, 0x031A($s0)           ## 0000031A
/* 00F24 80A7CD44 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00F28 80A7CD48 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00F2C 80A7CD4C 3C0180A8 */  lui     $at, %hi(D_80A7E024)       ## $at = 80A80000
/* 00F30 80A7CD50 C428E024 */  lwc1    $f8, %lo(D_80A7E024)($at)  
/* 00F34 80A7CD54 46080282 */  mul.s   $f10, $f0, $f8             
/* 00F38 80A7CD58 E7AA0034 */  swc1    $f10, 0x0034($sp)          
/* 00F3C 80A7CD5C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00F40 80A7CD60 860400B4 */  lh      $a0, 0x00B4($s0)           ## 000000B4
/* 00F44 80A7CD64 3C0180A8 */  lui     $at, %hi(D_80A7E028)       ## $at = 80A80000
/* 00F48 80A7CD68 C430E028 */  lwc1    $f16, %lo(D_80A7E028)($at) 
/* 00F4C 80A7CD6C 46100482 */  mul.s   $f18, $f0, $f16            
/* 00F50 80A7CD70 E7B20038 */  swc1    $f18, 0x0038($sp)          
/* 00F54 80A7CD74 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00F58 80A7CD78 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00F5C 80A7CD7C 3C0180A8 */  lui     $at, %hi(D_80A7E02C)       ## $at = 80A80000
/* 00F60 80A7CD80 C424E02C */  lwc1    $f4, %lo(D_80A7E02C)($at)  
/* 00F64 80A7CD84 46040182 */  mul.s   $f6, $f0, $f4              
/* 00F68 80A7CD88 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00F6C 80A7CD8C E7A6003C */  swc1    $f6, 0x003C($sp)           
/* 00F70 80A7CD90 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00F74 80A7CD94 E7A0002C */  swc1    $f0, 0x002C($sp)           
/* 00F78 80A7CD98 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00F7C 80A7CD9C 44811000 */  mtc1    $at, $f2                   ## $f2 = 5.00
/* 00F80 80A7CDA0 C7A8002C */  lwc1    $f8, 0x002C($sp)           
/* 00F84 80A7CDA4 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00F88 80A7CDA8 44816000 */  mtc1    $at, $f12                  ## $f12 = 8.00
/* 00F8C 80A7CDAC 46024282 */  mul.s   $f10, $f8, $f2             
/* 00F90 80A7CDB0 3C0780A8 */  lui     $a3, %hi(D_80A7DF28)       ## $a3 = 80A80000
/* 00F94 80A7CDB4 24E7DF28 */  addiu   $a3, $a3, %lo(D_80A7DF28)  ## $a3 = 80A7DF28
/* 00F98 80A7CDB8 46020102 */  mul.s   $f4, $f0, $f2              
/* 00F9C 80A7CDBC 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00FA0 80A7CDC0 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00FA4 80A7CDC4 27A60034 */  addiu   $a2, $sp, 0x0034           ## $a2 = FFFFFFEC
/* 00FA8 80A7CDC8 460C5400 */  add.s   $f16, $f10, $f12           
/* 00FAC 80A7CDCC 460C2180 */  add.s   $f6, $f4, $f12             
/* 00FB0 80A7CDD0 4600848D */  trunc.w.s $f18, $f16                 
/* 00FB4 80A7CDD4 4600320D */  trunc.w.s $f8, $f6                   
/* 00FB8 80A7CDD8 44189000 */  mfc1    $t8, $f18                  
/* 00FBC 80A7CDDC 44084000 */  mfc1    $t0, $f8                   
/* 00FC0 80A7CDE0 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00FC4 80A7CDE4 0C00A1B3 */  jal     func_800286CC              
/* 00FC8 80A7CDE8 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00FCC 80A7CDEC 8609031A */  lh      $t1, 0x031A($s0)           ## 0000031A
.L80A7CDF0:
/* 00FD0 80A7CDF0 5D200017 */  bgtzl   $t1, .L80A7CE50            
/* 00FD4 80A7CDF4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00FD8 80A7CDF8 960A0314 */  lhu     $t2, 0x0314($s0)           ## 00000314
/* 00FDC 80A7CDFC 314B0010 */  andi    $t3, $t2, 0x0010           ## $t3 = 00000000
/* 00FE0 80A7CE00 11600010 */  beq     $t3, $zero, .L80A7CE44     
/* 00FE4 80A7CE04 00000000 */  nop
/* 00FE8 80A7CE08 8E020320 */  lw      $v0, 0x0320($s0)           ## 00000320
/* 00FEC 80A7CE0C 1040000D */  beq     $v0, $zero, .L80A7CE44     
/* 00FF0 80A7CE10 24440024 */  addiu   $a0, $v0, 0x0024           ## $a0 = 00000024
/* 00FF4 80A7CE14 0C032D94 */  jal     func_800CB650              
/* 00FF8 80A7CE18 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00FFC 80A7CE1C 3C014280 */  lui     $at, 0x4280                ## $at = 42800000
/* 01000 80A7CE20 44815000 */  mtc1    $at, $f10                  ## $f10 = 64.00
/* 01004 80A7CE24 00000000 */  nop
/* 01008 80A7CE28 460A003C */  c.lt.s  $f0, $f10                  
/* 0100C 80A7CE2C 00000000 */  nop
/* 01010 80A7CE30 45000004 */  bc1f    .L80A7CE44                 
/* 01014 80A7CE34 00000000 */  nop
/* 01018 80A7CE38 8E0D0320 */  lw      $t5, 0x0320($s0)           ## 00000320
/* 0101C 80A7CE3C 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 01020 80A7CE40 A5AC0152 */  sh      $t4, 0x0152($t5)           ## 00000152
.L80A7CE44:
/* 01024 80A7CE44 0C00B55C */  jal     Actor_Kill
              
/* 01028 80A7CE48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0102C 80A7CE4C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A7CE50:
/* 01030 80A7CE50 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01034 80A7CE54 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 01038 80A7CE58 03E00008 */  jr      $ra                        
/* 0103C 80A7CE5C 00000000 */  nop
