glabel BgSpot00Hanebasi_Init
/* 00000 808A9780 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 00004 808A9784 AFA50074 */  sw      $a1, 0x0074($sp)           
/* 00008 808A9788 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 0000C 808A978C AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00010 808A9790 3C05808B */  lui     $a1, %hi(D_808AA7B4)       ## $a1 = 808B0000
/* 00014 808A9794 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 808A9798 AFA00058 */  sw      $zero, 0x0058($sp)         
/* 0001C 808A979C 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 808A97A0 24A5A7B4 */  addiu   $a1, $a1, %lo(D_808AA7B4)  ## $a1 = 808AA7B4
/* 00024 808A97A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00028 808A97A8 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 0002C 808A97AC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00030 808A97B0 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00034 808A97B4 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00038 808A97B8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0003C 808A97BC 15C10007 */  bne     $t6, $at, .L808A97DC       
/* 00040 808A97C0 24840280 */  addiu   $a0, $a0, 0x0280           ## $a0 = 06000280
/* 00044 808A97C4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00048 808A97C8 248405E0 */  addiu   $a0, $a0, 0x05E0           ## $a0 = 060005E0
/* 0004C 808A97CC 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00050 808A97D0 27A50058 */  addiu   $a1, $sp, 0x0058           ## $a1 = FFFFFFE8
/* 00054 808A97D4 10000004 */  beq     $zero, $zero, .L808A97E8   
/* 00058 808A97D8 8FA40074 */  lw      $a0, 0x0074($sp)           
.L808A97DC:
/* 0005C 808A97DC 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00060 808A97E0 27A50058 */  addiu   $a1, $sp, 0x0058           ## $a1 = FFFFFFE8
/* 00064 808A97E4 8FA40074 */  lw      $a0, 0x0074($sp)           
.L808A97E8:
/* 00068 808A97E8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0006C 808A97EC 8FA70058 */  lw      $a3, 0x0058($sp)           
/* 00070 808A97F0 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00074 808A97F4 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00078 808A97F8 8603001C */  lh      $v1, 0x001C($s0)           ## 0000001C
/* 0007C 808A97FC 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00080 808A9800 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00084 808A9804 14610091 */  bne     $v1, $at, .L808A9A4C       
/* 00088 808A9808 00000000 */  nop
/* 0008C 808A980C 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00090 808A9810 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 00094 808A9814 8C640004 */  lw      $a0, 0x0004($v1)           ## 8015E664
/* 00098 808A9818 5480000A */  bnel    $a0, $zero, .L808A9844     
/* 0009C 808A981C 8C621360 */  lw      $v0, 0x1360($v1)           ## 8015F9C0
/* 000A0 808A9820 8C6F1360 */  lw      $t7, 0x1360($v1)           ## 8015F9C0
/* 000A4 808A9824 29E10004 */  slti    $at, $t7, 0x0004           
/* 000A8 808A9828 50200006 */  beql    $at, $zero, .L808A9844     
/* 000AC 808A982C 8C621360 */  lw      $v0, 0x1360($v1)           ## 8015F9C0
/* 000B0 808A9830 0C00B55C */  jal     Actor_Kill
              
/* 000B4 808A9834 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000B8 808A9838 100000D0 */  beq     $zero, $zero, .L808A9B7C   
/* 000BC 808A983C 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 000C0 808A9840 8C621360 */  lw      $v0, 0x1360($v1)           ## 00001360
.L808A9844:
/* 000C4 808A9844 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 000C8 808A9848 10A2000D */  beq     $a1, $v0, .L808A9880       
/* 000CC 808A984C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 000D0 808A9850 10410009 */  beq     $v0, $at, .L808A9878       
/* 000D4 808A9854 2419C000 */  addiu   $t9, $zero, 0xC000         ## $t9 = FFFFC000
/* 000D8 808A9858 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 000DC 808A985C 10410006 */  beq     $v0, $at, .L808A9878       
/* 000E0 808A9860 00000000 */  nop
/* 000E4 808A9864 50800007 */  beql    $a0, $zero, .L808A9884     
/* 000E8 808A9868 A60000B4 */  sh      $zero, 0x00B4($s0)         ## 000000B4
/* 000EC 808A986C 8C780010 */  lw      $t8, 0x0010($v1)           ## 00000010
/* 000F0 808A9870 53000004 */  beql    $t8, $zero, .L808A9884     
/* 000F4 808A9874 A60000B4 */  sh      $zero, 0x00B4($s0)         ## 000000B4
.L808A9878:
/* 000F8 808A9878 10000002 */  beq     $zero, $zero, .L808A9884   
/* 000FC 808A987C A61900B4 */  sh      $t9, 0x00B4($s0)           ## 000000B4
.L808A9880:
/* 00100 808A9880 A60000B4 */  sh      $zero, 0x00B4($s0)         ## 000000B4
.L808A9884:
/* 00104 808A9884 8C681360 */  lw      $t0, 0x1360($v1)           ## 00001360
/* 00108 808A9888 10A80015 */  beq     $a1, $t0, .L808A98E0       
/* 0010C 808A988C 3C048012 */  lui     $a0, %hi(gBitFlags)
/* 00110 808A9890 24847120 */  addiu   $a0, %lo(gBitFlags)
/* 00114 808A9894 8C890048 */  lw      $t1, 0x0048($a0)           ## 80127168
/* 00118 808A9898 8C6200A4 */  lw      $v0, 0x00A4($v1)           ## 000000A4
/* 0011C 808A989C 01225024 */  and     $t2, $t1, $v0              
/* 00120 808A98A0 1140000F */  beq     $t2, $zero, .L808A98E0     
/* 00124 808A98A4 00000000 */  nop
/* 00128 808A98A8 8C8B004C */  lw      $t3, 0x004C($a0)           ## 8012716C
/* 0012C 808A98AC 01626024 */  and     $t4, $t3, $v0              
/* 00130 808A98B0 1180000B */  beq     $t4, $zero, .L808A98E0     
/* 00134 808A98B4 00000000 */  nop
/* 00138 808A98B8 8C8D0050 */  lw      $t5, 0x0050($a0)           ## 80127170
/* 0013C 808A98BC 01A27024 */  and     $t6, $t5, $v0              
/* 00140 808A98C0 11C00007 */  beq     $t6, $zero, .L808A98E0     
/* 00144 808A98C4 00000000 */  nop
/* 00148 808A98C8 946F0EE4 */  lhu     $t7, 0x0EE4($v1)           ## 00000EE4
/* 0014C 808A98CC 2419C000 */  addiu   $t9, $zero, 0xC000         ## $t9 = FFFFC000
/* 00150 808A98D0 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 00154 808A98D4 17000002 */  bne     $t8, $zero, .L808A98E0     
/* 00158 808A98D8 00000000 */  nop
/* 0015C 808A98DC A61900B4 */  sh      $t9, 0x00B4($s0)           ## 000000B4
.L808A98E0:
/* 00160 808A98E0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00164 808A98E4 860400B4 */  lh      $a0, 0x00B4($s0)           ## 000000B4
/* 00168 808A98E8 E7A00054 */  swc1    $f0, 0x0054($sp)           
/* 0016C 808A98EC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00170 808A98F0 860400B4 */  lh      $a0, 0x00B4($s0)           ## 000000B4
/* 00174 808A98F4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00178 808A98F8 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 0017C 808A98FC C7A20054 */  lwc1    $f2, 0x0054($sp)           
/* 00180 808A9900 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 00184 808A9904 44814000 */  mtc1    $at, $f8                   ## $f8 = 400.00
/* 00188 808A9908 46022182 */  mul.s   $f6, $f4, $f2              
/* 0018C 808A990C 00000000 */  nop
/* 00190 808A9910 46080282 */  mul.s   $f10, $f0, $f8             
/* 00194 808A9914 460A3401 */  sub.s   $f16, $f6, $f10            
/* 00198 808A9918 E7B00060 */  swc1    $f16, 0x0060($sp)          
/* 0019C 808A991C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 001A0 808A9920 860400B4 */  lh      $a0, 0x00B4($s0)           ## 000000B4
/* 001A4 808A9924 E7A00054 */  swc1    $f0, 0x0054($sp)           
/* 001A8 808A9928 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 001AC 808A992C 860400B4 */  lh      $a0, 0x00B4($s0)           ## 000000B4
/* 001B0 808A9930 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 001B4 808A9934 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 001B8 808A9938 C7A20054 */  lwc1    $f2, 0x0054($sp)           
/* 001BC 808A993C 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 001C0 808A9940 44814000 */  mtc1    $at, $f8                   ## $f8 = 400.00
/* 001C4 808A9944 46029102 */  mul.s   $f4, $f18, $f2             
/* 001C8 808A9948 00000000 */  nop
/* 001CC 808A994C 46080182 */  mul.s   $f6, $f0, $f8              
/* 001D0 808A9950 46062281 */  sub.s   $f10, $f4, $f6             
/* 001D4 808A9954 E7AA0064 */  swc1    $f10, 0x0064($sp)          
/* 001D8 808A9958 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 001DC 808A995C 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 001E0 808A9960 E7A00054 */  swc1    $f0, 0x0054($sp)           
/* 001E4 808A9964 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 001E8 808A9968 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 001EC 808A996C C7B00064 */  lwc1    $f16, 0x0064($sp)          
/* 001F0 808A9970 3C01431E */  lui     $at, 0x431E                ## $at = 431E0000
/* 001F4 808A9974 44814000 */  mtc1    $at, $f8                   ## $f8 = 158.00
/* 001F8 808A9978 46100482 */  mul.s   $f18, $f0, $f16            
/* 001FC 808A997C C7A20054 */  lwc1    $f2, 0x0054($sp)           
/* 00200 808A9980 46024102 */  mul.s   $f4, $f8, $f2              
/* 00204 808A9984 46049180 */  add.s   $f6, $f18, $f4             
/* 00208 808A9988 E7A6005C */  swc1    $f6, 0x005C($sp)           
/* 0020C 808A998C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00210 808A9990 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00214 808A9994 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00218 808A9998 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0021C 808A999C E7A00054 */  swc1    $f0, 0x0054($sp)           
/* 00220 808A99A0 C7AC0064 */  lwc1    $f12, 0x0064($sp)          
/* 00224 808A99A4 3C01C31E */  lui     $at, 0xC31E                ## $at = C31E0000
/* 00228 808A99A8 44818000 */  mtc1    $at, $f16                  ## $f16 = -158.00
/* 0022C 808A99AC 460C0282 */  mul.s   $f10, $f0, $f12            
/* 00230 808A99B0 C7A20054 */  lwc1    $f2, 0x0054($sp)           
/* 00234 808A99B4 860800B4 */  lh      $t0, 0x00B4($s0)           ## 000000B4
/* 00238 808A99B8 C7A4005C */  lwc1    $f4, 0x005C($sp)           
/* 0023C 808A99BC 46028202 */  mul.s   $f8, $f16, $f2             
/* 00240 808A99C0 3402F020 */  ori     $v0, $zero, 0xF020         ## $v0 = 0000F020
/* 00244 808A99C4 15000003 */  bne     $t0, $zero, .L808A99D4     
/* 00248 808A99C8 46085300 */  add.s   $f12, $f10, $f8            
/* 0024C 808A99CC 10000001 */  beq     $zero, $zero, .L808A99D4   
/* 00250 808A99D0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L808A99D4:
/* 00254 808A99D4 C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 00258 808A99D8 C7AA0060 */  lwc1    $f10, 0x0060($sp)          
/* 0025C 808A99DC 8FA60074 */  lw      $a2, 0x0074($sp)           
/* 00260 808A99E0 46049180 */  add.s   $f6, $f18, $f4             
/* 00264 808A99E4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00268 808A99E8 2407004A */  addiu   $a3, $zero, 0x004A         ## $a3 = 0000004A
/* 0026C 808A99EC 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00270 808A99F0 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00274 808A99F4 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 00278 808A99F8 460A8200 */  add.s   $f8, $f16, $f10            
/* 0027C 808A99FC E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 00280 808A9A00 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 00284 808A9A04 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 00288 808A9A08 460C9100 */  add.s   $f4, $f18, $f12            
/* 0028C 808A9A0C E7A40018 */  swc1    $f4, 0x0018($sp)           
/* 00290 808A9A10 860900B6 */  lh      $t1, 0x00B6($s0)           ## 000000B6
/* 00294 808A9A14 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00298 808A9A18 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 0029C 808A9A1C 0C00C916 */  jal     Actor_SpawnAttached
              
/* 002A0 808A9A20 AFA90020 */  sw      $t1, 0x0020($sp)           
/* 002A4 808A9A24 14400003 */  bne     $v0, $zero, .L808A9A34     
/* 002A8 808A9A28 00000000 */  nop
/* 002AC 808A9A2C 0C00B55C */  jal     Actor_Kill
              
/* 002B0 808A9A30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L808A9A34:
/* 002B4 808A9A34 3C0A808B */  lui     $t2, %hi(func_808A9BE8)    ## $t2 = 808B0000
/* 002B8 808A9A38 254A9BE8 */  addiu   $t2, $t2, %lo(func_808A9BE8) ## $t2 = 808A9BE8
/* 002BC 808A9A3C 240B0028 */  addiu   $t3, $zero, 0x0028         ## $t3 = 00000028
/* 002C0 808A9A40 AE0A0164 */  sw      $t2, 0x0164($s0)           ## 00000164
/* 002C4 808A9A44 1000002D */  beq     $zero, $zero, .L808A9AFC   
/* 002C8 808A9A48 A60B0168 */  sh      $t3, 0x0168($s0)           ## 00000168
.L808A9A4C:
/* 002CC 808A9A4C 14600029 */  bne     $v1, $zero, .L808A9AF4     
/* 002D0 808A9A50 3C19808B */  lui     $t9, %hi(func_808A9E58)    ## $t9 = 808B0000
/* 002D4 808A9A54 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 002D8 808A9A58 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 002DC 808A9A5C E7A0004C */  swc1    $f0, 0x004C($sp)           
/* 002E0 808A9A60 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 002E4 808A9A64 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 002E8 808A9A68 3C01439E */  lui     $at, 0x439E                ## $at = 439E0000
/* 002EC 808A9A6C 44811000 */  mtc1    $at, $f2                   ## $f2 = 316.00
/* 002F0 808A9A70 C7B0004C */  lwc1    $f16, 0x004C($sp)          
/* 002F4 808A9A74 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 002F8 808A9A78 8FA60074 */  lw      $a2, 0x0074($sp)           
/* 002FC 808A9A7C 46028282 */  mul.s   $f10, $f16, $f2            
/* 00300 808A9A80 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00304 808A9A84 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00308 808A9A88 46020102 */  mul.s   $f4, $f0, $f2              
/* 0030C 808A9A8C 2407004A */  addiu   $a3, $zero, 0x004A         ## $a3 = 0000004A
/* 00310 808A9A90 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00314 808A9A94 460A3201 */  sub.s   $f8, $f6, $f10             
/* 00318 808A9A98 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 0031C 808A9A9C C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 00320 808A9AA0 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 00324 808A9AA4 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00328 808A9AA8 46102180 */  add.s   $f6, $f4, $f16             
/* 0032C 808A9AAC E7A60018 */  swc1    $f6, 0x0018($sp)           
/* 00330 808A9AB0 860D00B4 */  lh      $t5, 0x00B4($s0)           ## 000000B4
/* 00334 808A9AB4 AFAD001C */  sw      $t5, 0x001C($sp)           
/* 00338 808A9AB8 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 0033C 808A9ABC AFAF0028 */  sw      $t7, 0x0028($sp)           
/* 00340 808A9AC0 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00344 808A9AC4 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00348 808A9AC8 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 0034C 808A9ACC 14400005 */  bne     $v0, $zero, .L808A9AE4     
/* 00350 808A9AD0 00000000 */  nop
/* 00354 808A9AD4 0C00B55C */  jal     Actor_Kill
              
/* 00358 808A9AD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0035C 808A9ADC 0C00B55C */  jal     Actor_Kill
              
/* 00360 808A9AE0 8E040118 */  lw      $a0, 0x0118($s0)           ## 00000118
.L808A9AE4:
/* 00364 808A9AE4 3C18808B */  lui     $t8, %hi(func_808A9E58)    ## $t8 = 808B0000
/* 00368 808A9AE8 27189E58 */  addiu   $t8, $t8, %lo(func_808A9E58) ## $t8 = 808A9E58
/* 0036C 808A9AEC 10000003 */  beq     $zero, $zero, .L808A9AFC   
/* 00370 808A9AF0 AE180164 */  sw      $t8, 0x0164($s0)           ## 00000164
.L808A9AF4:
/* 00374 808A9AF4 27399E58 */  addiu   $t9, $t9, %lo(func_808A9E58) ## $t9 = FFFF9E58
/* 00378 808A9AF8 AE190164 */  sw      $t9, 0x0164($s0)           ## 00000164
.L808A9AFC:
/* 0037C 808A9AFC 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 00380 808A9B00 8FA40074 */  lw      $a0, 0x0074($sp)           
/* 00384 808A9B04 26060170 */  addiu   $a2, $s0, 0x0170           ## $a2 = 00000170
/* 00388 808A9B08 0500001B */  bltz    $t0, .L808A9B78            
/* 0038C 808A9B0C 248507A8 */  addiu   $a1, $a0, 0x07A8           ## $a1 = 000007A8
/* 00390 808A9B10 0C01E9D9 */  jal     Lights_Insert
              
/* 00394 808A9B14 AFA60048 */  sw      $a2, 0x0048($sp)           
/* 00398 808A9B18 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
/* 0039C 808A9B1C AE02016C */  sw      $v0, 0x016C($s0)           ## 0000016C
/* 003A0 808A9B20 8FA40048 */  lw      $a0, 0x0048($sp)           
/* 003A4 808A9B24 15200005 */  bne     $t1, $zero, .L808A9B3C     
/* 003A8 808A9B28 240600A8 */  addiu   $a2, $zero, 0x00A8         ## $a2 = 000000A8
/* 003AC 808A9B2C 3C014382 */  lui     $at, 0x4382                ## $at = 43820000
/* 003B0 808A9B30 44811000 */  mtc1    $at, $f2                   ## $f2 = 260.00
/* 003B4 808A9B34 10000005 */  beq     $zero, $zero, .L808A9B4C   
/* 003B8 808A9B38 4600128D */  trunc.w.s $f10, $f2                  
.L808A9B3C:
/* 003BC 808A9B3C 3C01C382 */  lui     $at, 0xC382                ## $at = C3820000
/* 003C0 808A9B40 44811000 */  mtc1    $at, $f2                   ## $f2 = -260.00
/* 003C4 808A9B44 00000000 */  nop
/* 003C8 808A9B48 4600128D */  trunc.w.s $f10, $f2                  
.L808A9B4C:
/* 003CC 808A9B4C 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 003D0 808A9B50 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 003D4 808A9B54 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 003D8 808A9B58 44055000 */  mfc1    $a1, $f10                  
/* 003DC 808A9B5C AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 003E0 808A9B60 240702B2 */  addiu   $a3, $zero, 0x02B2         ## $a3 = 000002B2
/* 003E4 808A9B64 00052C00 */  sll     $a1, $a1, 16               
/* 003E8 808A9B68 00052C03 */  sra     $a1, $a1, 16               
/* 003EC 808A9B6C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 003F0 808A9B70 0C01E77C */  jal     Lights_PointGlowSetData
              
/* 003F4 808A9B74 AFA0001C */  sw      $zero, 0x001C($sp)         
.L808A9B78:
/* 003F8 808A9B78 8FBF003C */  lw      $ra, 0x003C($sp)           
.L808A9B7C:
/* 003FC 808A9B7C 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 00400 808A9B80 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 00404 808A9B84 03E00008 */  jr      $ra                        
/* 00408 808A9B88 00000000 */  nop
