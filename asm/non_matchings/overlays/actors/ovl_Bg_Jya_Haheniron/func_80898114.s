.late_rodata
glabel D_808987D0
    .float 0.8
glabel D_808987D4
    .float 0.2

.text
glabel func_80898114
/* 00054 80898114 27BDFF40 */  addiu   $sp, $sp, 0xFF40           ## $sp = FFFFFF40
/* 00058 80898118 F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 0005C 8089811C 3C01808A */  lui     $at, %hi(D_808987D0)       ## $at = 808A0000
/* 00060 80898120 C43A87D0 */  lwc1    $f26, %lo(D_808987D0)($at) 
/* 00064 80898124 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 00068 80898128 3C01808A */  lui     $at, %hi(D_808987D4)       ## $at = 808A0000
/* 0006C 8089812C C43887D4 */  lwc1    $f24, %lo(D_808987D4)($at) 
/* 00070 80898130 AFB70084 */  sw      $s7, 0x0084($sp)           
/* 00074 80898134 AFB60080 */  sw      $s6, 0x0080($sp)           
/* 00078 80898138 AFB1006C */  sw      $s1, 0x006C($sp)           
/* 0007C 8089813C F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 00080 80898140 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00084 80898144 AFBE0088 */  sw      $s8, 0x0088($sp)           
/* 00088 80898148 AFB5007C */  sw      $s5, 0x007C($sp)           
/* 0008C 8089814C AFB40078 */  sw      $s4, 0x0078($sp)           
/* 00090 80898150 AFB30074 */  sw      $s3, 0x0074($sp)           
/* 00094 80898154 AFB20070 */  sw      $s2, 0x0070($sp)           
/* 00098 80898158 3C11808A */  lui     $s1, %hi(D_80898774)       ## $s1 = 808A0000
/* 0009C 8089815C 3C160600 */  lui     $s6, 0x0600                ## $s6 = 06000000
/* 000A0 80898160 3C17808A */  lui     $s7, %hi(D_8089877E)       ## $s7 = 808A0000
/* 000A4 80898164 4481B000 */  mtc1    $at, $f22                  ## $f22 = 10.00
/* 000A8 80898168 00C09825 */  or      $s3, $a2, $zero            ## $s3 = 00000000
/* 000AC 8089816C 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 000B0 80898170 0080F025 */  or      $s8, $a0, $zero            ## $s8 = 00000000
/* 000B4 80898174 AFBF008C */  sw      $ra, 0x008C($sp)           
/* 000B8 80898178 AFB00068 */  sw      $s0, 0x0068($sp)           
/* 000BC 8089817C F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 000C0 80898180 26F7877E */  addiu   $s7, $s7, %lo(D_8089877E)  ## $s7 = 8089877E
/* 000C4 80898184 26D60880 */  addiu   $s6, $s6, 0x0880           ## $s6 = 06000880
/* 000C8 80898188 26318774 */  addiu   $s1, $s1, %lo(D_80898774)  ## $s1 = 80898774
/* 000CC 8089818C 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 000D0 80898190 27B500B4 */  addiu   $s5, $sp, 0x00B4           ## $s5 = FFFFFFF4
.L80898194:
/* 000D4 80898194 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 000D8 80898198 00000000 */  nop
/* 000DC 8089819C 00128400 */  sll     $s0, $s2, 16               
/* 000E0 808981A0 00108403 */  sra     $s0, $s0, 16               
/* 000E4 808981A4 46160502 */  mul.s   $f20, $f0, $f22            
/* 000E8 808981A8 00102400 */  sll     $a0, $s0, 16               
/* 000EC 808981AC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 000F0 808981B0 00042403 */  sra     $a0, $a0, 16               
/* 000F4 808981B4 46140102 */  mul.s   $f4, $f0, $f20             
/* 000F8 808981B8 C6660000 */  lwc1    $f6, 0x0000($s3)           ## 00000000
/* 000FC 808981BC 46062200 */  add.s   $f8, $f4, $f6              
/* 00100 808981C0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00104 808981C4 E7A800B4 */  swc1    $f8, 0x00B4($sp)           
/* 00108 808981C8 46160282 */  mul.s   $f10, $f0, $f22            
/* 0010C 808981CC C6700004 */  lwc1    $f16, 0x0004($s3)          ## 00000004
/* 00110 808981D0 00102400 */  sll     $a0, $s0, 16               
/* 00114 808981D4 00042403 */  sra     $a0, $a0, 16               
/* 00118 808981D8 46105480 */  add.s   $f18, $f10, $f16           
/* 0011C 808981DC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00120 808981E0 E7B200B8 */  swc1    $f18, 0x00B8($sp)          
/* 00124 808981E4 46140102 */  mul.s   $f4, $f0, $f20             
/* 00128 808981E8 C6660008 */  lwc1    $f6, 0x0008($s3)           ## 00000008
/* 0012C 808981EC 46062200 */  add.s   $f8, $f4, $f6              
/* 00130 808981F0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00134 808981F4 E7A800BC */  swc1    $f8, 0x00BC($sp)           
/* 00138 808981F8 4618003C */  c.lt.s  $f0, $f24                  
/* 0013C 808981FC 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000000
/* 00140 80898200 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 00144 80898204 02A03025 */  or      $a2, $s5, $zero            ## $a2 = FFFFFFF4
/* 00148 80898208 45000003 */  bc1f    .L80898218                 
/* 0014C 8089820C 02803825 */  or      $a3, $s4, $zero            ## $a3 = 00000000
/* 00150 80898210 10000007 */  beq     $zero, $zero, .L80898230   
/* 00154 80898214 24020060 */  addiu   $v0, $zero, 0x0060         ## $v0 = 00000060
.L80898218:
/* 00158 80898218 461A003C */  c.lt.s  $f0, $f26                  
/* 0015C 8089821C 24020020 */  addiu   $v0, $zero, 0x0020         ## $v0 = 00000020
/* 00160 80898220 45000003 */  bc1f    .L80898230                 
/* 00164 80898224 00000000 */  nop
/* 00168 80898228 10000001 */  beq     $zero, $zero, .L80898230   
/* 0016C 8089822C 24020040 */  addiu   $v0, $zero, 0x0040         ## $v0 = 00000040
.L80898230:
/* 00170 80898230 86390000 */  lh      $t9, 0x0000($s1)           ## 80898774
/* 00174 80898234 240EFEA2 */  addiu   $t6, $zero, 0xFEA2         ## $t6 = FFFFFEA2
/* 00178 80898238 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 0017C 8089823C 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 00180 80898240 24080014 */  addiu   $t0, $zero, 0x0014         ## $t0 = 00000014
/* 00184 80898244 24090028 */  addiu   $t1, $zero, 0x0028         ## $t1 = 00000028
/* 00188 80898248 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 0018C 8089824C 240B016C */  addiu   $t3, $zero, 0x016C         ## $t3 = 0000016C
/* 00190 80898250 AFAB0038 */  sw      $t3, 0x0038($sp)           
/* 00194 80898254 AFAA0034 */  sw      $t2, 0x0034($sp)           
/* 00198 80898258 AFA90030 */  sw      $t1, 0x0030($sp)           
/* 0019C 8089825C AFA8002C */  sw      $t0, 0x002C($sp)           
/* 001A0 80898260 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 001A4 80898264 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 001A8 80898268 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 001AC 8089826C AFA20014 */  sw      $v0, 0x0014($sp)           
/* 001B0 80898270 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 001B4 80898274 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 001B8 80898278 AFB6003C */  sw      $s6, 0x003C($sp)           
/* 001BC 8089827C 0C00A7A3 */  jal     EffectSsKakera_Spawn
              
/* 001C0 80898280 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 001C4 80898284 26310002 */  addiu   $s1, $s1, 0x0002           ## $s1 = 80898776
/* 001C8 80898288 1637FFC2 */  bne     $s1, $s7, .L80898194       
/* 001CC 8089828C 26523333 */  addiu   $s2, $s2, 0x3333           ## $s2 = 00003333
/* 001D0 80898290 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 001D4 80898294 44810000 */  mtc1    $at, $f0                   ## $f0 = 5.00
/* 001D8 80898298 C6700000 */  lwc1    $f16, 0x0000($s3)          ## 00000000
/* 001DC 8089829C C68A0000 */  lwc1    $f10, 0x0000($s4)          ## 00000000
/* 001E0 808982A0 240C0064 */  addiu   $t4, $zero, 0x0064         ## $t4 = 00000064
/* 001E4 808982A4 46008482 */  mul.s   $f18, $f16, $f0            
/* 001E8 808982A8 240D00A0 */  addiu   $t5, $zero, 0x00A0         ## $t5 = 000000A0
/* 001EC 808982AC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 001F0 808982B0 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000000
/* 001F4 808982B4 27A500A8 */  addiu   $a1, $sp, 0x00A8           ## $a1 = FFFFFFE8
/* 001F8 808982B8 3C0642C8 */  lui     $a2, 0x42C8                ## $a2 = 42C80000
/* 001FC 808982BC 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 00200 808982C0 46125100 */  add.s   $f4, $f10, $f18            
/* 00204 808982C4 E7A400A8 */  swc1    $f4, 0x00A8($sp)           
/* 00208 808982C8 C6680004 */  lwc1    $f8, 0x0004($s3)           ## 00000004
/* 0020C 808982CC C6860004 */  lwc1    $f6, 0x0004($s4)           ## 00000004
/* 00210 808982D0 46004402 */  mul.s   $f16, $f8, $f0             
/* 00214 808982D4 46103280 */  add.s   $f10, $f6, $f16            
/* 00218 808982D8 E7AA00AC */  swc1    $f10, 0x00AC($sp)          
/* 0021C 808982DC C6640008 */  lwc1    $f4, 0x0008($s3)           ## 00000008
/* 00220 808982E0 C6920008 */  lwc1    $f18, 0x0008($s4)          ## 00000008
/* 00224 808982E4 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 00228 808982E8 46002202 */  mul.s   $f8, $f4, $f0              
/* 0022C 808982EC AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 00230 808982F0 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00234 808982F4 46089180 */  add.s   $f6, $f18, $f8             
/* 00238 808982F8 0C00CD20 */  jal     func_80033480              
/* 0023C 808982FC E7A600B0 */  swc1    $f6, 0x00B0($sp)           
/* 00240 80898300 8FBF008C */  lw      $ra, 0x008C($sp)           
/* 00244 80898304 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 00248 80898308 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 0024C 8089830C D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 00250 80898310 D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 00254 80898314 8FB00068 */  lw      $s0, 0x0068($sp)           
/* 00258 80898318 8FB1006C */  lw      $s1, 0x006C($sp)           
/* 0025C 8089831C 8FB20070 */  lw      $s2, 0x0070($sp)           
/* 00260 80898320 8FB30074 */  lw      $s3, 0x0074($sp)           
/* 00264 80898324 8FB40078 */  lw      $s4, 0x0078($sp)           
/* 00268 80898328 8FB5007C */  lw      $s5, 0x007C($sp)           
/* 0026C 8089832C 8FB60080 */  lw      $s6, 0x0080($sp)           
/* 00270 80898330 8FB70084 */  lw      $s7, 0x0084($sp)           
/* 00274 80898334 8FBE0088 */  lw      $s8, 0x0088($sp)           
/* 00278 80898338 03E00008 */  jr      $ra                        
/* 0027C 8089833C 27BD00C0 */  addiu   $sp, $sp, 0x00C0           ## $sp = 00000000
