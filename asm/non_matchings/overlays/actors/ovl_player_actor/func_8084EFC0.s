glabel func_8084EFC0
/* 1CDB0 8084EFC0 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 1CDB4 8084EFC4 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 1CDB8 8084EFC8 AFB10030 */  sw      $s1, 0x0030($sp)           
/* 1CDBC 8084EFCC AFB0002C */  sw      $s0, 0x002C($sp)           
/* 1CDC0 8084EFD0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1CDC4 8084EFD4 0C20DC87 */  jal     func_8083721C              
/* 1CDC8 8084EFD8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 1CDCC 8084EFDC 260601B4 */  addiu   $a2, $s0, 0x01B4           ## $a2 = 000001B4
/* 1CDD0 8084EFE0 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000001B4
/* 1CDD4 8084EFE4 AFA6003C */  sw      $a2, 0x003C($sp)           
/* 1CDD8 8084EFE8 0C028EF0 */  jal     func_800A3BC0              
/* 1CDDC 8084EFEC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1CDE0 8084EFF0 1040000B */  beq     $v0, $zero, .L8084F020     
/* 1CDE4 8084EFF4 8FA6003C */  lw      $a2, 0x003C($sp)           
/* 1CDE8 8084EFF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1CDEC 8084EFFC 0C20F03A */  jal     func_8083C0E8              
/* 1CDF0 8084F000 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 1CDF4 8084F004 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1CDF8 8084F008 0C030129 */  jal     func_800C04A4              
/* 1CDFC 8084F00C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1CE00 8084F010 0C016C69 */  jal     func_8005B1A4              
/* 1CE04 8084F014 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 1CE08 8084F018 10000036 */  beq     $zero, $zero, .L8084F0F4   
/* 1CE0C 8084F01C 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L8084F020:
/* 1CE10 8084F020 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 1CE14 8084F024 0C02914C */  jal     func_800A4530              
/* 1CE18 8084F028 3C054298 */  lui     $a1, 0x4298                ## $a1 = 42980000
/* 1CE1C 8084F02C 1040002D */  beq     $v0, $zero, .L8084F0E4     
/* 1CE20 8084F030 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1CE24 8084F034 820E0154 */  lb      $t6, 0x0154($s0)           ## 00000154
/* 1CE28 8084F038 3C198085 */  lui     $t9, %hi(D_80854A28)       ## $t9 = 80850000
/* 1CE2C 8084F03C 27394A28 */  addiu   $t9, $t9, %lo(D_80854A28)  ## $t9 = 80854A28
/* 1CE30 8084F040 000E7880 */  sll     $t7, $t6,  2               
/* 1CE34 8084F044 25F8FF84 */  addiu   $t8, $t7, 0xFF84           ## $t8 = FFFFFF84
/* 1CE38 8084F048 03194021 */  addu    $t0, $t8, $t9              
/* 1CE3C 8084F04C AFA8004C */  sw      $t0, 0x004C($sp)           
/* 1CE40 8084F050 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 1CE44 8084F054 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 1CE48 8084F058 E7A00040 */  swc1    $f0, 0x0040($sp)           
/* 1CE4C 8084F05C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 1CE50 8084F060 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 1CE54 8084F064 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 1CE58 8084F068 44811000 */  mtc1    $at, $f2                   ## $f2 = 5.00
/* 1CE5C 8084F06C C7A40040 */  lwc1    $f4, 0x0040($sp)           
/* 1CE60 8084F070 8FA2004C */  lw      $v0, 0x004C($sp)           
/* 1CE64 8084F074 C61003B4 */  lwc1    $f16, 0x03B4($s0)          ## 000003B4
/* 1CE68 8084F078 46022182 */  mul.s   $f6, $f4, $f2              
/* 1CE6C 8084F07C C60803B0 */  lwc1    $f8, 0x03B0($s0)           ## 000003B0
/* 1CE70 8084F080 84460000 */  lh      $a2, 0x0000($v0)           ## 00000000
/* 1CE74 8084F084 46020482 */  mul.s   $f18, $f0, $f2             
/* 1CE78 8084F088 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 1CE7C 8084F08C C60403B8 */  lwc1    $f4, 0x03B8($s0)           ## 000003B8
/* 1CE80 8084F090 24094000 */  addiu   $t1, $zero, 0x4000         ## $t1 = 00004000
/* 1CE84 8084F094 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 1CE88 8084F098 46083280 */  add.s   $f10, $f6, $f8             
/* 1CE8C 8084F09C 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 1CE90 8084F0A0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 1CE94 8084F0A4 46049180 */  add.s   $f6, $f18, $f4             
/* 1CE98 8084F0A8 44075000 */  mfc1    $a3, $f10                  
/* 1CE9C 8084F0AC E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 1CEA0 8084F0B0 860A00B6 */  lh      $t2, 0x00B6($s0)           ## 000000B6
/* 1CEA4 8084F0B4 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 1CEA8 8084F0B8 AFAA001C */  sw      $t2, 0x001C($sp)           
/* 1CEAC 8084F0BC 844B0002 */  lh      $t3, 0x0002($v0)           ## 00000002
/* 1CEB0 8084F0C0 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 1CEB4 8084F0C4 AFAB0024 */  sw      $t3, 0x0024($sp)           
/* 1CEB8 8084F0C8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1CEBC 8084F0CC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1CEC0 8084F0D0 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 1CEC4 8084F0D4 0C023B67 */  jal     func_8008ED9C              
/* 1CEC8 8084F0D8 2407001E */  addiu   $a3, $zero, 0x001E         ## $a3 = 0000001E
/* 1CECC 8084F0DC 10000005 */  beq     $zero, $zero, .L8084F0F4   
/* 1CED0 8084F0E0 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L8084F0E4:
/* 1CED4 8084F0E4 3C058085 */  lui     $a1, %hi(D_80854A34)       ## $a1 = 80850000
/* 1CED8 8084F0E8 0C20CA49 */  jal     func_80832924              
/* 1CEDC 8084F0EC 24A54A34 */  addiu   $a1, $a1, %lo(D_80854A34)  ## $a1 = 80854A34
/* 1CEE0 8084F0F0 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L8084F0F4:
/* 1CEE4 8084F0F4 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 1CEE8 8084F0F8 8FB10030 */  lw      $s1, 0x0030($sp)           
/* 1CEEC 8084F0FC 03E00008 */  jr      $ra                        
/* 1CEF0 8084F100 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000


