glabel func_80ADFE80
/* 02130 80ADFE80 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 02134 80ADFE84 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 02138 80ADFE88 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 0213C 80ADFE8C 84820198 */  lh      $v0, 0x0198($a0)           ## 00000198
/* 02140 80ADFE90 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 02144 80ADFE94 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02148 80ADFE98 10400003 */  beq     $v0, $zero, .L80ADFEA8     
/* 0214C 80ADFE9C 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 02150 80ADFEA0 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 02154 80ADFEA4 A48E0198 */  sh      $t6, 0x0198($a0)           ## 00000198
.L80ADFEA8:
/* 02158 80ADFEA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0215C 80ADFEAC 0C00BC65 */  jal     func_8002F194              
/* 02160 80ADFEB0 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 02164 80ADFEB4 1040000D */  beq     $v0, $zero, .L80ADFEEC     
/* 02168 80ADFEB8 8FA70034 */  lw      $a3, 0x0034($sp)           
/* 0216C 80ADFEBC 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 02170 80ADFEC0 29E10002 */  slti    $at, $t7, 0x0002           
/* 02174 80ADFEC4 14200005 */  bne     $at, $zero, .L80ADFEDC     
/* 02178 80ADFEC8 00000000 */  nop
/* 0217C 80ADFECC 0C2B7A6F */  jal     func_80ADE9BC              
/* 02180 80ADFED0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02184 80ADFED4 1000006D */  beq     $zero, $zero, .L80AE008C   
/* 02188 80ADFED8 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80ADFEDC:
/* 0218C 80ADFEDC 0C2B7A66 */  jal     func_80ADE998              
/* 02190 80ADFEE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02194 80ADFEE4 10000069 */  beq     $zero, $zero, .L80AE008C   
/* 02198 80ADFEE8 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80ADFEEC:
/* 0219C 80ADFEEC 86180198 */  lh      $t8, 0x0198($s0)           ## 00000198
/* 021A0 80ADFEF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021A4 80ADFEF4 5700000A */  bnel    $t8, $zero, .L80ADFF20     
/* 021A8 80ADFEF8 920902CE */  lbu     $t1, 0x02CE($s0)           ## 000002CE
/* 021AC 80ADFEFC 0C2B7A54 */  jal     func_80ADE950              
/* 021B0 80ADFF00 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 021B4 80ADFF04 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
/* 021B8 80ADFF08 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 021BC 80ADFF0C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 021C0 80ADFF10 03214024 */  and     $t0, $t9, $at              
/* 021C4 80ADFF14 1000005C */  beq     $zero, $zero, .L80AE0088   
/* 021C8 80ADFF18 AE080004 */  sw      $t0, 0x0004($s0)           ## 00000004
/* 021CC 80ADFF1C 920902CE */  lbu     $t1, 0x02CE($s0)           ## 000002CE
.L80ADFF20:
/* 021D0 80ADFF20 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 021D4 80ADFF24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021D8 80ADFF28 312A0002 */  andi    $t2, $t1, 0x0002           ## $t2 = 00000000
/* 021DC 80ADFF2C 11400009 */  beq     $t2, $zero, .L80ADFF54     
/* 021E0 80ADFF30 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 021E4 80ADFF34 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
/* 021E8 80ADFF38 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 021EC 80ADFF3C 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 021F0 80ADFF40 01616025 */  or      $t4, $t3, $at              ## $t4 = 00010000
/* 021F4 80ADFF44 0C00BCBD */  jal     func_8002F2F4              
/* 021F8 80ADFF48 AE0C0004 */  sw      $t4, 0x0004($s0)           ## 00000004
/* 021FC 80ADFF4C 1000000B */  beq     $zero, $zero, .L80ADFF7C   
/* 02200 80ADFF50 92040195 */  lbu     $a0, 0x0195($s0)           ## 00000195
.L80ADFF54:
/* 02204 80ADFF54 8E0D0004 */  lw      $t5, 0x0004($s0)           ## 00000004
/* 02208 80ADFF58 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0220C 80ADFF5C 260602BC */  addiu   $a2, $s0, 0x02BC           ## $a2 = 000002BC
/* 02210 80ADFF60 01A17024 */  and     $t6, $t5, $at              
/* 02214 80ADFF64 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02218 80ADFF68 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0221C 80ADFF6C AE0E0004 */  sw      $t6, 0x0004($s0)           ## 00000004
/* 02220 80ADFF70 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 02224 80ADFF74 00E12821 */  addu    $a1, $a3, $at              
/* 02228 80ADFF78 92040195 */  lbu     $a0, 0x0195($s0)           ## 00000195
.L80ADFF7C:
/* 0222C 80ADFF7C 000422C0 */  sll     $a0, $a0, 11               
/* 02230 80ADFF80 00042400 */  sll     $a0, $a0, 16               
/* 02234 80ADFF84 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02238 80ADFF88 00042403 */  sra     $a0, $a0, 16               
/* 0223C 80ADFF8C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02240 80ADFF90 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 02244 80ADFF94 C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
/* 02248 80ADFF98 92020195 */  lbu     $v0, 0x0195($s0)           ## 00000195
/* 0224C 80ADFF9C 46040182 */  mul.s   $f6, $f0, $f4              
/* 02250 80ADFFA0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02254 80ADFFA4 44819000 */  mtc1    $at, $f18                  ## $f18 = 20.00
/* 02258 80ADFFA8 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 0225C 80ADFFAC 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 02260 80ADFFB0 46083280 */  add.s   $f10, $f6, $f8             
/* 02264 80ADFFB4 10400003 */  beq     $v0, $zero, .L80ADFFC4     
/* 02268 80ADFFB8 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 0226C 80ADFFBC A20F0195 */  sb      $t7, 0x0195($s0)           ## 00000195
/* 02270 80ADFFC0 31E200FF */  andi    $v0, $t7, 0x00FF           ## $v0 = 000000FF
.L80ADFFC4:
/* 02274 80ADFFC4 54400003 */  bnel    $v0, $zero, .L80ADFFD4     
/* 02278 80ADFFC8 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 0227C 80ADFFCC A2180195 */  sb      $t8, 0x0195($s0)           ## 00000195
/* 02280 80ADFFD0 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
.L80ADFFD4:
/* 02284 80ADFFD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02288 80ADFFD8 3C05C120 */  lui     $a1, 0xC120                ## $a1 = C1200000
/* 0228C 80ADFFDC 46128101 */  sub.s   $f4, $f16, $f18            
/* 02290 80ADFFE0 4600218D */  trunc.w.s $f6, $f4                   
/* 02294 80ADFFE4 44083000 */  mfc1    $t0, $f6                   
/* 02298 80ADFFE8 0C00B56E */  jal     Actor_SetHeight
              
/* 0229C 80ADFFEC A6080304 */  sh      $t0, 0x0304($s0)           ## 00000304
/* 022A0 80ADFFF0 8E0202A4 */  lw      $v0, 0x02A4($s0)           ## 000002A4
/* 022A4 80ADFFF4 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 022A8 80ADFFF8 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 022AC 80ADFFFC 904C0003 */  lbu     $t4, 0x0003($v0)           ## 00000003
/* 022B0 80AE0000 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 022B4 80AE0004 4600428D */  trunc.w.s $f10, $f8                  
/* 022B8 80AE0008 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 022BC 80AE000C 904D0004 */  lbu     $t5, 0x0004($v0)           ## 00000004
/* 022C0 80AE0010 4600848D */  trunc.w.s $f18, $f16                 
/* 022C4 80AE0014 44055000 */  mfc1    $a1, $f10                  
/* 022C8 80AE0018 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 022CC 80AE001C 904E0005 */  lbu     $t6, 0x0005($v0)           ## 00000005
/* 022D0 80AE0020 4600218D */  trunc.w.s $f6, $f4                   
/* 022D4 80AE0024 44069000 */  mfc1    $a2, $f18                  
/* 022D8 80AE0028 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 022DC 80AE002C 920F029D */  lbu     $t7, 0x029D($s0)           ## 0000029D
/* 022E0 80AE0030 44073000 */  mfc1    $a3, $f6                   
/* 022E4 80AE0034 00052C00 */  sll     $a1, $a1, 16               
/* 022E8 80AE0038 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 022EC 80AE003C 00063400 */  sll     $a2, $a2, 16               
/* 022F0 80AE0040 00073C00 */  sll     $a3, $a3, 16               
/* 022F4 80AE0044 00073C03 */  sra     $a3, $a3, 16               
/* 022F8 80AE0048 00063403 */  sra     $a2, $a2, 16               
/* 022FC 80AE004C 00052C03 */  sra     $a1, $a1, 16               
/* 02300 80AE0050 260402AC */  addiu   $a0, $s0, 0x02AC           ## $a0 = 000002AC
/* 02304 80AE0054 05E10005 */  bgez    $t7, .L80AE006C            
/* 02308 80AE0058 468042A0 */  cvt.s.w $f10, $f8                  
/* 0230C 80AE005C 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 02310 80AE0060 44818000 */  mtc1    $at, $f16                  ## $f16 = 4294967296.00
/* 02314 80AE0064 00000000 */  nop
/* 02318 80AE0068 46105280 */  add.s   $f10, $f10, $f16           
.L80AE006C:
/* 0231C 80AE006C 3C0180AE */  lui     $at, %hi(D_80AE1C5C)       ## $at = 80AE0000
/* 02320 80AE0070 C4321C5C */  lwc1    $f18, %lo(D_80AE1C5C)($at) 
/* 02324 80AE0074 46125102 */  mul.s   $f4, $f10, $f18            
/* 02328 80AE0078 4600218D */  trunc.w.s $f6, $f4                   
/* 0232C 80AE007C 44193000 */  mfc1    $t9, $f6                   
/* 02330 80AE0080 0C01E763 */  jal     Lights_InitType0PositionalLight
              
/* 02334 80AE0084 AFB9001C */  sw      $t9, 0x001C($sp)           
.L80AE0088:
/* 02338 80AE0088 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AE008C:
/* 0233C 80AE008C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 02340 80AE0090 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02344 80AE0094 03E00008 */  jr      $ra                        
/* 02348 80AE0098 00000000 */  nop


