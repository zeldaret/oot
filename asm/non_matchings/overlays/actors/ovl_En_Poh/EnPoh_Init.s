glabel EnPoh_Init
/* 00000 80ADDD50 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 80ADDD54 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 00008 80ADDD58 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0000C 80ADDD5C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00010 80ADDD60 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00014 80ADDD64 3C0580AE */  lui     $a1, %hi(D_80AE1B5C)       ## $a1 = 80AE0000
/* 00018 80ADDD68 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 80ADDD6C 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 80ADDD70 24A51B5C */  addiu   $a1, $a1, %lo(D_80AE1B5C)  ## $a1 = 80AE1B5C
/* 00024 80ADDD74 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00028 80ADDD78 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 0002C 80ADDD7C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00030 80ADDD80 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00034 80ADDD84 0C00AC78 */  jal     ActorShape_Init
              
/* 00038 80ADDD88 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 0003C 80ADDD8C 26050308 */  addiu   $a1, $s0, 0x0308           ## $a1 = 00000308
/* 00040 80ADDD90 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00044 80ADDD94 0C016EFE */  jal     func_8005BBF8              
/* 00048 80ADDD98 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0004C 80ADDD9C 3C0780AE */  lui     $a3, %hi(D_80AE1AC4)       ## $a3 = 80AE0000
/* 00050 80ADDDA0 260E0328 */  addiu   $t6, $s0, 0x0328           ## $t6 = 00000328
/* 00054 80ADDDA4 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00058 80ADDDA8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0005C 80ADDDAC 24E71AC4 */  addiu   $a3, $a3, %lo(D_80AE1AC4)  ## $a3 = 80AE1AC4
/* 00060 80ADDDB0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00064 80ADDDB4 0C017014 */  jal     func_8005C050              
/* 00068 80ADDDB8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0006C 80ADDDBC 8E0F0324 */  lw      $t7, 0x0324($s0)           ## 00000324
/* 00070 80ADDDC0 260502BC */  addiu   $a1, $s0, 0x02BC           ## $a1 = 000002BC
/* 00074 80ADDDC4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00078 80ADDDC8 A5E00036 */  sh      $zero, 0x0036($t7)         ## 00000036
/* 0007C 80ADDDCC C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00080 80ADDDD0 8E080324 */  lw      $t0, 0x0324($s0)           ## 00000324
/* 00084 80ADDDD4 4600218D */  trunc.w.s $f6, $f4                   
/* 00088 80ADDDD8 44193000 */  mfc1    $t9, $f6                   
/* 0008C 80ADDDDC 00000000 */  nop
/* 00090 80ADDDE0 A5190030 */  sh      $t9, 0x0030($t0)           ## 00000030
/* 00094 80ADDDE4 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00098 80ADDDE8 8E0B0324 */  lw      $t3, 0x0324($s0)           ## 00000324
/* 0009C 80ADDDEC 4600428D */  trunc.w.s $f10, $f8                  
/* 000A0 80ADDDF0 440A5000 */  mfc1    $t2, $f10                  
/* 000A4 80ADDDF4 00000000 */  nop
/* 000A8 80ADDDF8 A56A0032 */  sh      $t2, 0x0032($t3)           ## 00000032
/* 000AC 80ADDDFC C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 000B0 80ADDE00 8E0E0324 */  lw      $t6, 0x0324($s0)           ## 00000324
/* 000B4 80ADDE04 4600848D */  trunc.w.s $f18, $f16                 
/* 000B8 80ADDE08 440D9000 */  mfc1    $t5, $f18                  
/* 000BC 80ADDE0C 00000000 */  nop
/* 000C0 80ADDE10 A5CD0034 */  sh      $t5, 0x0034($t6)           ## 00000034
/* 000C4 80ADDE14 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 000C8 80ADDE18 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 000CC 80ADDE1C 3C0780AE */  lui     $a3, %hi(D_80AE1A74)       ## $a3 = 80AE0000
/* 000D0 80ADDE20 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 000D4 80ADDE24 24E71A74 */  addiu   $a3, $a3, %lo(D_80AE1A74)  ## $a3 = 80AE1A74
/* 000D8 80ADDE28 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000DC 80ADDE2C 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 000E0 80ADDE30 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000E4 80ADDE34 3C0580AE */  lui     $a1, %hi(D_80AE1ADC)       ## $a1 = 80AE0000
/* 000E8 80ADDE38 3C0680AE */  lui     $a2, %hi(D_80AE1AD4)       ## $a2 = 80AE0000
/* 000EC 80ADDE3C 24C61AD4 */  addiu   $a2, $a2, %lo(D_80AE1AD4)  ## $a2 = 80AE1AD4
/* 000F0 80ADDE40 24A51ADC */  addiu   $a1, $a1, %lo(D_80AE1ADC)  ## $a1 = 80AE1ADC
/* 000F4 80ADDE44 0C0187B5 */  jal     func_80061ED4              
/* 000F8 80ADDE48 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 000FC 80ADDE4C 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 00100 80ADDE50 A2000194 */  sb      $zero, 0x0194($s0)         ## 00000194
/* 00104 80ADDE54 A20F0195 */  sb      $t7, 0x0195($s0)           ## 00000195
/* 00108 80ADDE58 240402BC */  addiu   $a0, $zero, 0x02BC         ## $a0 = 000002BC
/* 0010C 80ADDE5C 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00110 80ADDE60 2405012C */  addiu   $a1, $zero, 0x012C         ## $a1 = 0000012C
/* 00114 80ADDE64 A602019A */  sh      $v0, 0x019A($s0)           ## 0000019A
/* 00118 80ADDE68 260602AC */  addiu   $a2, $s0, 0x02AC           ## $a2 = 000002AC
/* 0011C 80ADDE6C AFA60030 */  sw      $a2, 0x0030($sp)           
/* 00120 80ADDE70 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00124 80ADDE74 0C01E9D9 */  jal     Lights_Insert
              
/* 00128 80ADDE78 262507A8 */  addiu   $a1, $s1, 0x07A8           ## $a1 = 000007A8
/* 0012C 80ADDE7C C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 00130 80ADDE80 C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
/* 00134 80ADDE84 C6100010 */  lwc1    $f16, 0x0010($s0)          ## 00000010
/* 00138 80ADDE88 4600218D */  trunc.w.s $f6, $f4                   
/* 0013C 80ADDE8C AE0202A8 */  sw      $v0, 0x02A8($s0)           ## 000002A8
/* 00140 80ADDE90 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 00144 80ADDE94 4600428D */  trunc.w.s $f10, $f8                  
/* 00148 80ADDE98 44053000 */  mfc1    $a1, $f6                   
/* 0014C 80ADDE9C 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 00150 80ADDEA0 4600848D */  trunc.w.s $f18, $f16                 
/* 00154 80ADDEA4 44065000 */  mfc1    $a2, $f10                  
/* 00158 80ADDEA8 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 0015C 80ADDEAC 00052C00 */  sll     $a1, $a1, 16               
/* 00160 80ADDEB0 44079000 */  mfc1    $a3, $f18                  
/* 00164 80ADDEB4 00063400 */  sll     $a2, $a2, 16               
/* 00168 80ADDEB8 00063403 */  sra     $a2, $a2, 16               
/* 0016C 80ADDEBC 00073C00 */  sll     $a3, $a3, 16               
/* 00170 80ADDEC0 00073C03 */  sra     $a3, $a3, 16               
/* 00174 80ADDEC4 00052C03 */  sra     $a1, $a1, 16               
/* 00178 80ADDEC8 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 0017C 80ADDECC AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 00180 80ADDED0 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00184 80ADDED4 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00188 80ADDED8 0C01E77C */  jal     Lights_InitType2PositionalLight
              
/* 0018C 80ADDEDC 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00190 80ADDEE0 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00194 80ADDEE4 28410004 */  slti    $at, $v0, 0x0004           
/* 00198 80ADDEE8 54200004 */  bnel    $at, $zero, .L80ADDEFC     
/* 0019C 80ADDEEC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 001A0 80ADDEF0 A600001C */  sh      $zero, 0x001C($s0)         ## 0000001C
/* 001A4 80ADDEF4 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 001A8 80ADDEF8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80ADDEFC:
/* 001AC 80ADDEFC 5441001A */  bnel    $v0, $at, .L80ADDF68       
/* 001B0 80ADDF00 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 001B4 80ADDF04 3C0280AE */  lui     $v0, %hi(D_80AE1A50)       ## $v0 = 80AE0000
/* 001B8 80ADDF08 24421A50 */  addiu   $v0, $v0, %lo(D_80AE1A50)  ## $v0 = 80AE1A50
/* 001BC 80ADDF0C 844C0000 */  lh      $t4, 0x0000($v0)           ## 80AE1A50
/* 001C0 80ADDF10 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001C4 80ADDF14 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 001C8 80ADDF18 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 001CC 80ADDF1C A44D0000 */  sh      $t5, 0x0000($v0)           ## 80AE1A50
/* 001D0 80ADDF20 844E0000 */  lh      $t6, 0x0000($v0)           ## 80AE1A50
/* 001D4 80ADDF24 29C10003 */  slti    $at, $t6, 0x0003           
/* 001D8 80ADDF28 14200005 */  bne     $at, $zero, .L80ADDF40     
/* 001DC 80ADDF2C 00000000 */  nop
/* 001E0 80ADDF30 0C00B55C */  jal     Actor_Kill
              
/* 001E4 80ADDF34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001E8 80ADDF38 10000008 */  beq     $zero, $zero, .L80ADDF5C   
/* 001EC 80ADDF3C 00000000 */  nop
.L80ADDF40:
/* 001F0 80ADDF40 0C007D52 */  jal     Item_DropCollectible
              
/* 001F4 80ADDF44 24064001 */  addiu   $a2, $zero, 0x4001         ## $a2 = 00004001
/* 001F8 80ADDF48 10400004 */  beq     $v0, $zero, .L80ADDF5C     
/* 001FC 80ADDF4C 00000000 */  nop
/* 00200 80ADDF50 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00204 80ADDF54 00000000 */  nop
/* 00208 80ADDF58 E4440068 */  swc1    $f4, 0x0068($v0)           ## 00000068
.L80ADDF5C:
/* 0020C 80ADDF5C 10000026 */  beq     $zero, $zero, .L80ADDFF8   
/* 00210 80ADDF60 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00214 80ADDF64 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L80ADDF68:
/* 00218 80ADDF68 14410011 */  bne     $v0, $at, .L80ADDFB0       
/* 0021C 80ADDF6C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00220 80ADDF70 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00224 80ADDF74 24050028 */  addiu   $a1, $zero, 0x0028         ## $a1 = 00000028
/* 00228 80ADDF78 14400005 */  bne     $v0, $zero, .L80ADDF90     
/* 0022C 80ADDF7C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00230 80ADDF80 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00234 80ADDF84 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 00238 80ADDF88 10400005 */  beq     $v0, $zero, .L80ADDFA0     
/* 0023C 80ADDF8C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80ADDF90:
/* 00240 80ADDF90 0C00B55C */  jal     Actor_Kill
              
/* 00244 80ADDF94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00248 80ADDF98 10000003 */  beq     $zero, $zero, .L80ADDFA8   
/* 0024C 80ADDF9C 00000000 */  nop
.L80ADDFA0:
/* 00250 80ADDFA0 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00254 80ADDFA4 24050028 */  addiu   $a1, $zero, 0x0028         ## $a1 = 00000028
.L80ADDFA8:
/* 00258 80ADDFA8 10000013 */  beq     $zero, $zero, .L80ADDFF8   
/* 0025C 80ADDFAC 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L80ADDFB0:
/* 00260 80ADDFB0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00264 80ADDFB4 14410010 */  bne     $v0, $at, .L80ADDFF8       
/* 00268 80ADDFB8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0026C 80ADDFBC 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00270 80ADDFC0 24050029 */  addiu   $a1, $zero, 0x0029         ## $a1 = 00000029
/* 00274 80ADDFC4 14400005 */  bne     $v0, $zero, .L80ADDFDC     
/* 00278 80ADDFC8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0027C 80ADDFCC 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00280 80ADDFD0 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 00284 80ADDFD4 10400005 */  beq     $v0, $zero, .L80ADDFEC     
/* 00288 80ADDFD8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80ADDFDC:
/* 0028C 80ADDFDC 0C00B55C */  jal     Actor_Kill
              
/* 00290 80ADDFE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00294 80ADDFE4 10000004 */  beq     $zero, $zero, .L80ADDFF8   
/* 00298 80ADDFE8 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L80ADDFEC:
/* 0029C 80ADDFEC 0C00B2DD */  jal     Flags_SetSwitch
              
/* 002A0 80ADDFF0 24050029 */  addiu   $a1, $zero, 0x0029         ## $a1 = 00000029
/* 002A4 80ADDFF4 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L80ADDFF8:
/* 002A8 80ADDFF8 28410002 */  slti    $at, $v0, 0x0002           
/* 002AC 80ADDFFC 1020000B */  beq     $at, $zero, .L80ADE02C     
/* 002B0 80ADE000 2405006E */  addiu   $a1, $zero, 0x006E         ## $a1 = 0000006E
/* 002B4 80ADE004 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 002B8 80ADE008 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 002BC 80ADE00C 02212021 */  addu    $a0, $s1, $at              
/* 002C0 80ADE010 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 002C4 80ADE014 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 002C8 80ADE018 240F0044 */  addiu   $t7, $zero, 0x0044         ## $t7 = 00000044
/* 002CC 80ADE01C A2020196 */  sb      $v0, 0x0196($s0)           ## 00000196
/* 002D0 80ADE020 A2000197 */  sb      $zero, 0x0197($s0)         ## 00000197
/* 002D4 80ADE024 1000000A */  beq     $zero, $zero, .L80ADE050   
/* 002D8 80ADE028 A20F0117 */  sb      $t7, 0x0117($s0)           ## 00000117
.L80ADE02C:
/* 002DC 80ADE02C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 002E0 80ADE030 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 002E4 80ADE034 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 002E8 80ADE038 02212021 */  addu    $a0, $s1, $at              
/* 002EC 80ADE03C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 002F0 80ADE040 24190043 */  addiu   $t9, $zero, 0x0043         ## $t9 = 00000043
/* 002F4 80ADE044 A2020196 */  sb      $v0, 0x0196($s0)           ## 00000196
/* 002F8 80ADE048 A2180197 */  sb      $t8, 0x0197($s0)           ## 00000197
/* 002FC 80ADE04C A2190117 */  sb      $t9, 0x0117($s0)           ## 00000117
.L80ADE050:
/* 00300 80ADE050 92080197 */  lbu     $t0, 0x0197($s0)           ## 00000197
/* 00304 80ADE054 820C0196 */  lb      $t4, 0x0196($s0)           ## 00000196
/* 00308 80ADE058 3C0A80AE */  lui     $t2, %hi(D_80AE1AFC)       ## $t2 = 80AE0000
/* 0030C 80ADE05C 00084880 */  sll     $t1, $t0,  2               
/* 00310 80ADE060 01284821 */  addu    $t1, $t1, $t0              
/* 00314 80ADE064 000948C0 */  sll     $t1, $t1,  3               
/* 00318 80ADE068 254A1AFC */  addiu   $t2, $t2, %lo(D_80AE1AFC)  ## $t2 = 80AE1AFC
/* 0031C 80ADE06C 012A5821 */  addu    $t3, $t1, $t2              
/* 00320 80ADE070 05810003 */  bgez    $t4, .L80ADE080            
/* 00324 80ADE074 AE0B02A4 */  sw      $t3, 0x02A4($s0)           ## 000002A4
/* 00328 80ADE078 0C00B55C */  jal     Actor_Kill
              
/* 0032C 80ADE07C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ADE080:
/* 00330 80ADE080 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00334 80ADE084 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 00338 80ADE088 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 0033C 80ADE08C 03E00008 */  jr      $ra                        
/* 00340 80ADE090 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
