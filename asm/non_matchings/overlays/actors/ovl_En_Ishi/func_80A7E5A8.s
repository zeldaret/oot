.late_rodata
glabel D_80A87458
    .float -0.8

glabel D_80A8745C
    .float 0.8

.text
glabel func_80A7E5A8
/* 00148 80A7E5A8 27BDFF30 */  addiu   $sp, $sp, 0xFF30           ## $sp = FFFFFF30
/* 0014C 80A7E5AC F7BE0068 */  sdc1    $f30, 0x0068($sp)          
/* 00150 80A7E5B0 3C014130 */  lui     $at, 0x4130                ## $at = 41300000
/* 00154 80A7E5B4 4481F000 */  mtc1    $at, $f30                  ## $f30 = 11.00
/* 00158 80A7E5B8 F7BC0060 */  sdc1    $f28, 0x0060($sp)          
/* 0015C 80A7E5BC 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00160 80A7E5C0 4481E000 */  mtc1    $at, $f28                  ## $f28 = 5.00
/* 00164 80A7E5C4 F7BA0058 */  sdc1    $f26, 0x0058($sp)          
/* 00168 80A7E5C8 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 0016C 80A7E5CC 4481D000 */  mtc1    $at, $f26                  ## $f26 = 8.00
/* 00170 80A7E5D0 F7B80050 */  sdc1    $f24, 0x0050($sp)          
/* 00174 80A7E5D4 3C0180A8 */  lui     $at, %hi(D_80A87458)       ## $at = 80A80000
/* 00178 80A7E5D8 C4387458 */  lwc1    $f24, %lo(D_80A87458)($at) 
/* 0017C 80A7E5DC F7B60048 */  sdc1    $f22, 0x0048($sp)          
/* 00180 80A7E5E0 3C0180A8 */  lui     $at, %hi(D_80A8745C)       ## $at = 80A80000
/* 00184 80A7E5E4 C436745C */  lwc1    $f22, %lo(D_80A8745C)($at) 
/* 00188 80A7E5E8 AFB50088 */  sw      $s5, 0x0088($sp)           
/* 0018C 80A7E5EC AFB40084 */  sw      $s4, 0x0084($sp)           
/* 00190 80A7E5F0 AFB10078 */  sw      $s1, 0x0078($sp)           
/* 00194 80A7E5F4 F7B40040 */  sdc1    $f20, 0x0040($sp)          
/* 00198 80A7E5F8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0019C 80A7E5FC AFB70090 */  sw      $s7, 0x0090($sp)           
/* 001A0 80A7E600 AFB6008C */  sw      $s6, 0x008C($sp)           
/* 001A4 80A7E604 AFB30080 */  sw      $s3, 0x0080($sp)           
/* 001A8 80A7E608 AFB2007C */  sw      $s2, 0x007C($sp)           
/* 001AC 80A7E60C AFB00074 */  sw      $s0, 0x0074($sp)           
/* 001B0 80A7E610 3C1180A8 */  lui     $s1, %hi(D_80A87398)       ## $s1 = 80A80000
/* 001B4 80A7E614 3C140501 */  lui     $s4, 0x0501                ## $s4 = 05010000
/* 001B8 80A7E618 3C1580A8 */  lui     $s5, %hi(D_80A873A4)       ## $s5 = 80A80000
/* 001BC 80A7E61C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 0.50
/* 001C0 80A7E620 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 001C4 80A7E624 00A0B825 */  or      $s7, $a1, $zero            ## $s7 = 00000000
/* 001C8 80A7E628 AFBF0094 */  sw      $ra, 0x0094($sp)           
/* 001CC 80A7E62C 26B573A4 */  addiu   $s5, $s5, %lo(D_80A873A4)  ## $s5 = 80A873A4
/* 001D0 80A7E630 2694A880 */  addiu   $s4, $s4, 0xA880           ## $s4 = 0500A880
/* 001D4 80A7E634 26317398 */  addiu   $s1, $s1, %lo(D_80A87398)  ## $s1 = 80A87398
/* 001D8 80A7E638 27B200C0 */  addiu   $s2, $sp, 0x00C0           ## $s2 = FFFFFFF0
/* 001DC 80A7E63C 27B300B4 */  addiu   $s3, $sp, 0x00B4           ## $s3 = FFFFFFE4
/* 001E0 80A7E640 2496005C */  addiu   $s6, $a0, 0x005C           ## $s6 = 0000005C
.L80A7E644:
/* 001E4 80A7E644 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 001E8 80A7E648 00000000 */  nop
/* 001EC 80A7E64C 46140101 */  sub.s   $f4, $f0, $f20             
/* 001F0 80A7E650 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 001F4 80A7E654 461A2182 */  mul.s   $f6, $f4, $f26             
/* 001F8 80A7E658 46083280 */  add.s   $f10, $f6, $f8             
/* 001FC 80A7E65C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00200 80A7E660 E7AA00B4 */  swc1    $f10, 0x00B4($sp)          
/* 00204 80A7E664 461C0402 */  mul.s   $f16, $f0, $f28            
/* 00208 80A7E668 C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 0020C 80A7E66C 46128100 */  add.s   $f4, $f16, $f18            
/* 00210 80A7E670 461C2180 */  add.s   $f6, $f4, $f28             
/* 00214 80A7E674 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00218 80A7E678 E7A600B8 */  swc1    $f6, 0x00B8($sp)           
/* 0021C 80A7E67C 46140201 */  sub.s   $f8, $f0, $f20             
/* 00220 80A7E680 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00224 80A7E684 02402025 */  or      $a0, $s2, $zero            ## $a0 = FFFFFFF0
/* 00228 80A7E688 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 0000005C
/* 0022C 80A7E68C 461A4282 */  mul.s   $f10, $f8, $f26            
/* 00230 80A7E690 46105480 */  add.s   $f18, $f10, $f16           
/* 00234 80A7E694 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00238 80A7E698 E7B200BC */  swc1    $f18, 0x00BC($sp)          
/* 0023C 80A7E69C 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 00240 80A7E6A0 C7A400C0 */  lwc1    $f4, 0x00C0($sp)           
/* 00244 80A7E6A4 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 00248 80A7E6A8 11C0000B */  beq     $t6, $zero, .L80A7E6D8     
/* 0024C 80A7E6AC 304F0008 */  andi    $t7, $v0, 0x0008           ## $t7 = 00000000
/* 00250 80A7E6B0 46162182 */  mul.s   $f6, $f4, $f22             
/* 00254 80A7E6B4 C7A800C4 */  lwc1    $f8, 0x00C4($sp)           
/* 00258 80A7E6B8 C7B000C8 */  lwc1    $f16, 0x00C8($sp)          
/* 0025C 80A7E6BC 46184282 */  mul.s   $f10, $f8, $f24            
/* 00260 80A7E6C0 00000000 */  nop
/* 00264 80A7E6C4 46168482 */  mul.s   $f18, $f16, $f22           
/* 00268 80A7E6C8 E7A600C0 */  swc1    $f6, 0x00C0($sp)           
/* 0026C 80A7E6CC E7AA00C4 */  swc1    $f10, 0x00C4($sp)          
/* 00270 80A7E6D0 1000000C */  beq     $zero, $zero, .L80A7E704   
/* 00274 80A7E6D4 E7B200C8 */  swc1    $f18, 0x00C8($sp)          
.L80A7E6D8:
/* 00278 80A7E6D8 11E0000A */  beq     $t7, $zero, .L80A7E704     
/* 0027C 80A7E6DC C7A400C0 */  lwc1    $f4, 0x00C0($sp)           
/* 00280 80A7E6E0 46182182 */  mul.s   $f6, $f4, $f24             
/* 00284 80A7E6E4 C7A800C4 */  lwc1    $f8, 0x00C4($sp)           
/* 00288 80A7E6E8 C7B000C8 */  lwc1    $f16, 0x00C8($sp)          
/* 0028C 80A7E6EC 46164282 */  mul.s   $f10, $f8, $f22            
/* 00290 80A7E6F0 00000000 */  nop
/* 00294 80A7E6F4 46188482 */  mul.s   $f18, $f16, $f24           
/* 00298 80A7E6F8 E7A600C0 */  swc1    $f6, 0x00C0($sp)           
/* 0029C 80A7E6FC E7AA00C4 */  swc1    $f10, 0x00C4($sp)          
/* 002A0 80A7E700 E7B200C8 */  swc1    $f18, 0x00C8($sp)          
.L80A7E704:
/* 002A4 80A7E704 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 002A8 80A7E708 00000000 */  nop
/* 002AC 80A7E70C 46140181 */  sub.s   $f6, $f0, $f20             
/* 002B0 80A7E710 C7A400C0 */  lwc1    $f4, 0x00C0($sp)           
/* 002B4 80A7E714 461E3202 */  mul.s   $f8, $f6, $f30             
/* 002B8 80A7E718 46082280 */  add.s   $f10, $f4, $f8             
/* 002BC 80A7E71C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 002C0 80A7E720 E7AA00C0 */  swc1    $f10, 0x00C0($sp)          
/* 002C4 80A7E724 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 002C8 80A7E728 44819000 */  mtc1    $at, $f18                  ## $f18 = 6.00
/* 002CC 80A7E72C C7B000C4 */  lwc1    $f16, 0x00C4($sp)          
/* 002D0 80A7E730 46120182 */  mul.s   $f6, $f0, $f18             
/* 002D4 80A7E734 46068100 */  add.s   $f4, $f16, $f6             
/* 002D8 80A7E738 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 002DC 80A7E73C E7A400C4 */  swc1    $f4, 0x00C4($sp)           
/* 002E0 80A7E740 46140281 */  sub.s   $f10, $f0, $f20            
/* 002E4 80A7E744 C7A800C8 */  lwc1    $f8, 0x00C8($sp)           
/* 002E8 80A7E748 461E5482 */  mul.s   $f18, $f10, $f30           
/* 002EC 80A7E74C 46124400 */  add.s   $f16, $f8, $f18            
/* 002F0 80A7E750 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 002F4 80A7E754 E7B000C8 */  swc1    $f16, 0x00C8($sp)          
/* 002F8 80A7E758 4614003C */  c.lt.s  $f0, $f20                  
/* 002FC 80A7E75C 02E02025 */  or      $a0, $s7, $zero            ## $a0 = 00000000
/* 00300 80A7E760 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFE4
/* 00304 80A7E764 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFFF0
/* 00308 80A7E768 45000003 */  bc1f    .L80A7E778                 
/* 0030C 80A7E76C 02603825 */  or      $a3, $s3, $zero            ## $a3 = FFFFFFE4
/* 00310 80A7E770 10000002 */  beq     $zero, $zero, .L80A7E77C   
/* 00314 80A7E774 24020041 */  addiu   $v0, $zero, 0x0041         ## $v0 = 00000041
.L80A7E778:
/* 00318 80A7E778 24020021 */  addiu   $v0, $zero, 0x0021         ## $v0 = 00000021
.L80A7E77C:
/* 0031C 80A7E77C 86290000 */  lh      $t1, 0x0000($s1)           ## 80A87398
/* 00320 80A7E780 2418FE5C */  addiu   $t8, $zero, 0xFE5C         ## $t8 = FFFFFE5C
/* 00324 80A7E784 2419001E */  addiu   $t9, $zero, 0x001E         ## $t9 = 0000001E
/* 00328 80A7E788 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 0032C 80A7E78C 240A0003 */  addiu   $t2, $zero, 0x0003         ## $t2 = 00000003
/* 00330 80A7E790 240B000A */  addiu   $t3, $zero, 0x000A         ## $t3 = 0000000A
/* 00334 80A7E794 240C0028 */  addiu   $t4, $zero, 0x0028         ## $t4 = 00000028
/* 00338 80A7E798 240DFFFF */  addiu   $t5, $zero, 0xFFFF         ## $t5 = FFFFFFFF
/* 0033C 80A7E79C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00340 80A7E7A0 AFAE0038 */  sw      $t6, 0x0038($sp)           
/* 00344 80A7E7A4 AFAD0034 */  sw      $t5, 0x0034($sp)           
/* 00348 80A7E7A8 AFAC0030 */  sw      $t4, 0x0030($sp)           
/* 0034C 80A7E7AC AFAB002C */  sw      $t3, 0x002C($sp)           
/* 00350 80A7E7B0 AFAA0028 */  sw      $t2, 0x0028($sp)           
/* 00354 80A7E7B4 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 00358 80A7E7B8 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 0035C 80A7E7BC AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00360 80A7E7C0 AFA20014 */  sw      $v0, 0x0014($sp)           
/* 00364 80A7E7C4 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00368 80A7E7C8 AFB4003C */  sw      $s4, 0x003C($sp)           
/* 0036C 80A7E7CC 0C00A7A3 */  jal     EffectSsKakera_Spawn
              
/* 00370 80A7E7D0 AFA90024 */  sw      $t1, 0x0024($sp)           
/* 00374 80A7E7D4 26310002 */  addiu   $s1, $s1, 0x0002           ## $s1 = 80A8739A
/* 00378 80A7E7D8 1635FF9A */  bne     $s1, $s5, .L80A7E644       
/* 0037C 80A7E7DC 00000000 */  nop
/* 00380 80A7E7E0 8FBF0094 */  lw      $ra, 0x0094($sp)           
/* 00384 80A7E7E4 D7B40040 */  ldc1    $f20, 0x0040($sp)          
/* 00388 80A7E7E8 D7B60048 */  ldc1    $f22, 0x0048($sp)          
/* 0038C 80A7E7EC D7B80050 */  ldc1    $f24, 0x0050($sp)          
/* 00390 80A7E7F0 D7BA0058 */  ldc1    $f26, 0x0058($sp)          
/* 00394 80A7E7F4 D7BC0060 */  ldc1    $f28, 0x0060($sp)          
/* 00398 80A7E7F8 D7BE0068 */  ldc1    $f30, 0x0068($sp)          
/* 0039C 80A7E7FC 8FB00074 */  lw      $s0, 0x0074($sp)           
/* 003A0 80A7E800 8FB10078 */  lw      $s1, 0x0078($sp)           
/* 003A4 80A7E804 8FB2007C */  lw      $s2, 0x007C($sp)           
/* 003A8 80A7E808 8FB30080 */  lw      $s3, 0x0080($sp)           
/* 003AC 80A7E80C 8FB40084 */  lw      $s4, 0x0084($sp)           
/* 003B0 80A7E810 8FB50088 */  lw      $s5, 0x0088($sp)           
/* 003B4 80A7E814 8FB6008C */  lw      $s6, 0x008C($sp)           
/* 003B8 80A7E818 8FB70090 */  lw      $s7, 0x0090($sp)           
/* 003BC 80A7E81C 03E00008 */  jr      $ra                        
/* 003C0 80A7E820 27BD00D0 */  addiu   $sp, $sp, 0x00D0           ## $sp = 00000000
