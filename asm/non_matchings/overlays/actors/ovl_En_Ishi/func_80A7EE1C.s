glabel func_80A7EE1C
/* 009BC 80A7EE1C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 009C0 80A7EE20 AFB40048 */  sw      $s4, 0x0048($sp)           
/* 009C4 80A7EE24 AFB30044 */  sw      $s3, 0x0044($sp)           
/* 009C8 80A7EE28 AFB20040 */  sw      $s2, 0x0040($sp)           
/* 009CC 80A7EE2C AFB1003C */  sw      $s1, 0x003C($sp)           
/* 009D0 80A7EE30 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 009D4 80A7EE34 F7B40030 */  sdc1    $f20, 0x0030($sp)          
/* 009D8 80A7EE38 3C0180A8 */  lui     $at, %hi(D_80A8747C)       ## $at = 80A80000
/* 009DC 80A7EE3C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 009E0 80A7EE40 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 009E4 80A7EE44 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 009E8 80A7EE48 C434747C */  lwc1    $f20, %lo(D_80A8747C)($at) 
/* 009EC 80A7EE4C 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 009F0 80A7EE50 24B31C24 */  addiu   $s3, $a1, 0x1C24           ## $s3 = 00001C24
/* 009F4 80A7EE54 24140003 */  addiu   $s4, $zero, 0x0003         ## $s4 = 00000003
.L80A7EE58:
/* 009F8 80A7EE58 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 009FC 80A7EE5C 00000000 */  nop
/* 00A00 80A7EE60 46140202 */  mul.s   $f8, $f0, $f20             
/* 00A04 80A7EE64 C6240028 */  lwc1    $f4, 0x0028($s1)           ## 00000028
/* 00A08 80A7EE68 8E270024 */  lw      $a3, 0x0024($s1)           ## 00000024
/* 00A0C 80A7EE6C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00A10 80A7EE70 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00A14 80A7EE74 C626002C */  lwc1    $f6, 0x002C($s1)           ## 0000002C
/* 00A18 80A7EE78 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 00A1C 80A7EE7C 4600428D */  trunc.w.s $f10, $f8                  
/* 00A20 80A7EE80 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00A24 80A7EE84 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00A28 80A7EE88 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00001C24
/* 00A2C 80A7EE8C 440F5000 */  mfc1    $t7, $f10                  
/* 00A30 80A7EE90 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 00A34 80A7EE94 24060020 */  addiu   $a2, $zero, 0x0020         ## $a2 = 00000020
/* 00A38 80A7EE98 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00A3C 80A7EE9C 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00A40 80A7EEA0 AFAF001C */  sw      $t7, 0x001C($sp)           
/* 00A44 80A7EEA4 10400003 */  beq     $v0, $zero, .L80A7EEB4     
/* 00A48 80A7EEA8 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00A4C 80A7EEAC 1614FFEA */  bne     $s0, $s4, .L80A7EE58       
/* 00A50 80A7EEB0 00000000 */  nop
.L80A7EEB4:
/* 00A54 80A7EEB4 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 00A58 80A7EEB8 D7B40030 */  ldc1    $f20, 0x0030($sp)          
/* 00A5C 80A7EEBC 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 00A60 80A7EEC0 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 00A64 80A7EEC4 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 00A68 80A7EEC8 8FB30044 */  lw      $s3, 0x0044($sp)           
/* 00A6C 80A7EECC 8FB40048 */  lw      $s4, 0x0048($sp)           
/* 00A70 80A7EED0 03E00008 */  jr      $ra                        
/* 00A74 80A7EED4 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000


