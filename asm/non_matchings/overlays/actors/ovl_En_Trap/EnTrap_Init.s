glabel EnTrap_Init
/* 00000 80B24660 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00004 80B24664 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00008 80B24668 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 0000C 80B2466C F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 00010 80B24670 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00014 80B24674 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00018 80B24678 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 0001C 80B2467C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00020 80B24680 00027203 */  sra     $t6, $v0,  8               
/* 00024 80B24684 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 00028 80B24688 305800FF */  andi    $t8, $v0, 0x00FF           ## $t8 = 00000000
/* 0002C 80B2468C A48F0150 */  sh      $t7, 0x0150($a0)           ## 00000150
/* 00030 80B24690 A498001C */  sh      $t8, 0x001C($a0)           ## 0000001C
/* 00034 80B24694 0C00B58B */  jal     Actor_SetScale
              
/* 00038 80B24698 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 0003C 80B2469C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00040 80B246A0 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 00044 80B246A4 44812000 */  mtc1    $at, $f4                   ## $f4 = -2.00
/* 00048 80B246A8 30590010 */  andi    $t9, $v0, 0x0010           ## $t9 = 00000000
/* 0004C 80B246AC 1320000E */  beq     $t9, $zero, .L80B246E8     
/* 00050 80B246B0 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 00054 80B246B4 86080150 */  lh      $t0, 0x0150($s0)           ## 00000150
/* 00058 80B246B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0005C 80B246BC 2405287D */  addiu   $a1, $zero, 0x287D         ## $a1 = 0000287D
/* 00060 80B246C0 3109000F */  andi    $t1, $t0, 0x000F           ## $t1 = 00000000
/* 00064 80B246C4 44893000 */  mtc1    $t1, $f6                   ## $f6 = 0.00
/* 00068 80B246C8 00000000 */  nop
/* 0006C 80B246CC 46803020 */  cvt.s.w $f0, $f6                   
/* 00070 80B246D0 E600019C */  swc1    $f0, 0x019C($s0)           ## 0000019C
/* 00074 80B246D4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00078 80B246D8 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 0007C 80B246DC 260A0024 */  addiu   $t2, $s0, 0x0024           ## $t2 = 00000024
/* 00080 80B246E0 100000AC */  beq     $zero, $zero, .L80B24994   
/* 00084 80B246E4 AFAA0030 */  sw      $t2, 0x0030($sp)           
.L80B246E8:
/* 00088 80B246E8 304B0020 */  andi    $t3, $v0, 0x0020           ## $t3 = 00000000
/* 0008C 80B246EC 1160001E */  beq     $t3, $zero, .L80B24768     
/* 00090 80B246F0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00094 80B246F4 86020150 */  lh      $v0, 0x0150($s0)           ## 00000150
/* 00098 80B246F8 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 0009C 80B246FC 44818000 */  mtc1    $at, $f16                  ## $f16 = 40.00
/* 000A0 80B24700 304C000F */  andi    $t4, $v0, 0x000F           ## $t4 = 00000000
/* 000A4 80B24704 448C4000 */  mtc1    $t4, $f8                   ## $f8 = 0.00
/* 000A8 80B24708 304D00F0 */  andi    $t5, $v0, 0x00F0           ## $t5 = 00000000
/* 000AC 80B2470C 25AE0010 */  addiu   $t6, $t5, 0x0010           ## $t6 = 00000010
/* 000B0 80B24710 468042A0 */  cvt.s.w $f10, $f8                  
/* 000B4 80B24714 000E7940 */  sll     $t7, $t6,  5               
/* 000B8 80B24718 A60F0150 */  sh      $t7, 0x0150($s0)           ## 00000150
/* 000BC 80B2471C 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 000C0 80B24720 46105482 */  mul.s   $f18, $f10, $f16           
/* 000C4 80B24724 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 000C8 80B24728 E6120154 */  swc1    $f18, 0x0154($s0)          ## 00000154
/* 000CC 80B2472C C6040154 */  lwc1    $f4, 0x0154($s0)           ## 00000154
/* 000D0 80B24730 C6080008 */  lwc1    $f8, 0x0008($s0)           ## 00000008
/* 000D4 80B24734 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 000D8 80B24738 46040182 */  mul.s   $f6, $f0, $f4              
/* 000DC 80B2473C 46083280 */  add.s   $f10, $f6, $f8             
/* 000E0 80B24740 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 000E4 80B24744 E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 000E8 80B24748 C6100154 */  lwc1    $f16, 0x0154($s0)          ## 00000154
/* 000EC 80B2474C C6040010 */  lwc1    $f4, 0x0010($s0)           ## 00000010
/* 000F0 80B24750 26180024 */  addiu   $t8, $s0, 0x0024           ## $t8 = 00000024
/* 000F4 80B24754 46100482 */  mul.s   $f18, $f0, $f16            
/* 000F8 80B24758 46049180 */  add.s   $f6, $f18, $f4             
/* 000FC 80B2475C E606002C */  swc1    $f6, 0x002C($s0)           ## 0000002C
/* 00100 80B24760 1000008C */  beq     $zero, $zero, .L80B24994   
/* 00104 80B24764 AFB80030 */  sw      $t8, 0x0030($sp)           
.L80B24768:
/* 00108 80B24768 86020150 */  lh      $v0, 0x0150($s0)           ## 00000150
/* 0010C 80B2476C 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 00110 80B24770 240B001D */  addiu   $t3, $zero, 0x001D         ## $t3 = 0000001D
/* 00114 80B24774 1040000B */  beq     $v0, $zero, .L80B247A4     
/* 00118 80B24778 3049000F */  andi    $t1, $v0, 0x000F           ## $t1 = 00000000
/* 0011C 80B2477C 44895000 */  mtc1    $t1, $f10                  ## $f10 = 0.00
/* 00120 80B24780 0002C903 */  sra     $t9, $v0,  4               
/* 00124 80B24784 00194080 */  sll     $t0, $t9,  2               
/* 00128 80B24788 46805420 */  cvt.s.w $f16, $f10                 
/* 0012C 80B2478C 01194021 */  addu    $t0, $t0, $t9              
/* 00130 80B24790 000840C0 */  sll     $t0, $t0,  3               
/* 00134 80B24794 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 00138 80B24798 E7B00048 */  swc1    $f16, 0x0048($sp)          
/* 0013C 80B2479C 10000008 */  beq     $zero, $zero, .L80B247C0   
/* 00140 80B247A0 46804520 */  cvt.s.w $f20, $f8                  
.L80B247A4:
/* 00144 80B247A4 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00148 80B247A8 4481A000 */  mtc1    $at, $f20                  ## $f20 = 200.00
/* 0014C 80B247AC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00150 80B247B0 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 00154 80B247B4 240A000F */  addiu   $t2, $zero, 0x000F         ## $t2 = 0000000F
/* 00158 80B247B8 E7B20048 */  swc1    $f18, 0x0048($sp)          
/* 0015C 80B247BC A60A001C */  sh      $t2, 0x001C($s0)           ## 0000001C
.L80B247C0:
/* 00160 80B247C0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00164 80B247C4 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 00168 80B247C8 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 0016C 80B247CC AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00170 80B247D0 44070000 */  mfc1    $a3, $f0                   
/* 00174 80B247D4 0C00B92D */  jal     func_8002E4B4              
/* 00178 80B247D8 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 0017C 80B247DC 26020024 */  addiu   $v0, $s0, 0x0024           ## $v0 = 00000024
/* 00180 80B247E0 8C4D0000 */  lw      $t5, 0x0000($v0)           ## 00000024
/* 00184 80B247E4 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 00188 80B247E8 AE0D0008 */  sw      $t5, 0x0008($s0)           ## 00000008
/* 0018C 80B247EC 8C4C0004 */  lw      $t4, 0x0004($v0)           ## 00000028
/* 00190 80B247F0 AE0C000C */  sw      $t4, 0x000C($s0)           ## 0000000C
/* 00194 80B247F4 8C4D0008 */  lw      $t5, 0x0008($v0)           ## 0000002C
/* 00198 80B247F8 AE0D0010 */  sw      $t5, 0x0010($s0)           ## 00000010
/* 0019C 80B247FC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 001A0 80B24800 AFA20030 */  sw      $v0, 0x0030($sp)           
/* 001A4 80B24804 46140102 */  mul.s   $f4, $f0, $f20             
/* 001A8 80B24808 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 001AC 80B2480C 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 001B0 80B24810 46062200 */  add.s   $f8, $f4, $f6              
/* 001B4 80B24814 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 001B8 80B24818 E6080158 */  swc1    $f8, 0x0158($s0)           ## 00000158
/* 001BC 80B2481C 46140402 */  mul.s   $f16, $f0, $f20            
/* 001C0 80B24820 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 001C4 80B24824 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 001C8 80B24828 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 001CC 80B2482C 00812021 */  addu    $a0, $a0, $at              
/* 001D0 80B24830 00042400 */  sll     $a0, $a0, 16               
/* 001D4 80B24834 46105481 */  sub.s   $f18, $f10, $f16           
/* 001D8 80B24838 00042403 */  sra     $a0, $a0, 16               
/* 001DC 80B2483C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 001E0 80B24840 E6120160 */  swc1    $f18, 0x0160($s0)          ## 00000160
/* 001E4 80B24844 46140102 */  mul.s   $f4, $f0, $f20             
/* 001E8 80B24848 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 001EC 80B2484C 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 001F0 80B24850 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 001F4 80B24854 00812021 */  addu    $a0, $a0, $at              
/* 001F8 80B24858 00042400 */  sll     $a0, $a0, 16               
/* 001FC 80B2485C 46062200 */  add.s   $f8, $f4, $f6              
/* 00200 80B24860 00042403 */  sra     $a0, $a0, 16               
/* 00204 80B24864 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00208 80B24868 E6080164 */  swc1    $f8, 0x0164($s0)           ## 00000164
/* 0020C 80B2486C 46140402 */  mul.s   $f16, $f0, $f20            
/* 00210 80B24870 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00214 80B24874 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 00218 80B24878 46105481 */  sub.s   $f18, $f10, $f16           
/* 0021C 80B2487C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00220 80B24880 E612016C */  swc1    $f18, 0x016C($s0)          ## 0000016C
/* 00224 80B24884 46140102 */  mul.s   $f4, $f0, $f20             
/* 00228 80B24888 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 0022C 80B2488C 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 00230 80B24890 46062200 */  add.s   $f8, $f4, $f6              
/* 00234 80B24894 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00238 80B24898 E6080170 */  swc1    $f8, 0x0170($s0)           ## 00000170
/* 0023C 80B2489C 46140282 */  mul.s   $f10, $f0, $f20            
/* 00240 80B248A0 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00244 80B248A4 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 00248 80B248A8 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 0024C 80B248AC 00812021 */  addu    $a0, $a0, $at              
/* 00250 80B248B0 00042400 */  sll     $a0, $a0, 16               
/* 00254 80B248B4 46105480 */  add.s   $f18, $f10, $f16           
/* 00258 80B248B8 00042403 */  sra     $a0, $a0, 16               
/* 0025C 80B248BC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00260 80B248C0 E6120178 */  swc1    $f18, 0x0178($s0)          ## 00000178
/* 00264 80B248C4 46140102 */  mul.s   $f4, $f0, $f20             
/* 00268 80B248C8 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 0026C 80B248CC 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 00270 80B248D0 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00274 80B248D4 00812021 */  addu    $a0, $a0, $at              
/* 00278 80B248D8 00042400 */  sll     $a0, $a0, 16               
/* 0027C 80B248DC 46062200 */  add.s   $f8, $f4, $f6              
/* 00280 80B248E0 00042403 */  sra     $a0, $a0, 16               
/* 00284 80B248E4 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00288 80B248E8 E608017C */  swc1    $f8, 0x017C($s0)           ## 0000017C
/* 0028C 80B248EC 46140282 */  mul.s   $f10, $f0, $f20            
/* 00290 80B248F0 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00294 80B248F4 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 00298 80B248F8 46105480 */  add.s   $f18, $f10, $f16           
/* 0029C 80B248FC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 002A0 80B24900 E6120184 */  swc1    $f18, 0x0184($s0)          ## 00000184
/* 002A4 80B24904 C7A40048 */  lwc1    $f4, 0x0048($sp)           
/* 002A8 80B24908 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 002AC 80B2490C 46040182 */  mul.s   $f6, $f0, $f4              
/* 002B0 80B24910 4600320D */  trunc.w.s $f8, $f6                   
/* 002B4 80B24914 44024000 */  mfc1    $v0, $f8                   
/* 002B8 80B24918 00000000 */  nop
/* 002BC 80B2491C 00021400 */  sll     $v0, $v0, 16               
/* 002C0 80B24920 00021403 */  sra     $v0, $v0, 16               
/* 002C4 80B24924 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 002C8 80B24928 A7A20046 */  sh      $v0, 0x0046($sp)           
/* 002CC 80B2492C C7AA0048 */  lwc1    $f10, 0x0048($sp)          
/* 002D0 80B24930 87A20046 */  lh      $v0, 0x0046($sp)           
/* 002D4 80B24934 460A0402 */  mul.s   $f16, $f0, $f10            
/* 002D8 80B24938 4600848D */  trunc.w.s $f18, $f16                 
/* 002DC 80B2493C 44039000 */  mfc1    $v1, $f18                  
/* 002E0 80B24940 00000000 */  nop
/* 002E4 80B24944 00032C00 */  sll     $a1, $v1, 16               
/* 002E8 80B24948 04410004 */  bgez    $v0, .L80B2495C            
/* 002EC 80B2494C 00052C03 */  sra     $a1, $a1, 16               
/* 002F0 80B24950 00021023 */  subu    $v0, $zero, $v0            
/* 002F4 80B24954 00021400 */  sll     $v0, $v0, 16               
/* 002F8 80B24958 00021403 */  sra     $v0, $v0, 16               
.L80B2495C:
/* 002FC 80B2495C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00300 80B24960 00032400 */  sll     $a0, $v1, 16               
/* 00304 80B24964 00042403 */  sra     $a0, $a0, 16               
/* 00308 80B24968 04810004 */  bgez    $a0, .L80B2497C            
/* 0030C 80B2496C 46802020 */  cvt.s.w $f0, $f4                   
/* 00310 80B24970 00042823 */  subu    $a1, $zero, $a0            
/* 00314 80B24974 00052C00 */  sll     $a1, $a1, 16               
/* 00318 80B24978 00052C03 */  sra     $a1, $a1, 16               
.L80B2497C:
/* 0031C 80B2497C 44853000 */  mtc1    $a1, $f6                   ## $f6 = 0.00
/* 00320 80B24980 E600019C */  swc1    $f0, 0x019C($s0)           ## 0000019C
/* 00324 80B24984 E6000188 */  swc1    $f0, 0x0188($s0)           ## 00000188
/* 00328 80B24988 468030A0 */  cvt.s.w $f2, $f6                   
/* 0032C 80B2498C E6020194 */  swc1    $f2, 0x0194($s0)           ## 00000194
/* 00330 80B24990 E6020190 */  swc1    $f2, 0x0190($s0)           ## 00000190
.L80B24994:
/* 00334 80B24994 8FB80030 */  lw      $t8, 0x0030($sp)           
/* 00338 80B24998 260501A0 */  addiu   $a1, $s0, 0x01A0           ## $a1 = 000001A0
/* 0033C 80B2499C 8F080000 */  lw      $t0, 0x0000($t8)           ## 00000000
/* 00340 80B249A0 AE080038 */  sw      $t0, 0x0038($s0)           ## 00000038
/* 00344 80B249A4 8F190004 */  lw      $t9, 0x0004($t8)           ## 00000004
/* 00348 80B249A8 AE19003C */  sw      $t9, 0x003C($s0)           ## 0000003C
/* 0034C 80B249AC 8F080008 */  lw      $t0, 0x0008($t8)           ## 00000008
/* 00350 80B249B0 AE080040 */  sw      $t0, 0x0040($s0)           ## 00000040
/* 00354 80B249B4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00358 80B249B8 0C0170D9 */  jal     CollisionCheck_AllocCylinder
              
/* 0035C 80B249BC 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00360 80B249C0 3C0780B2 */  lui     $a3, %hi(D_80B25830)       ## $a3 = 80B20000
/* 00364 80B249C4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00368 80B249C8 24E75830 */  addiu   $a3, $a3, %lo(D_80B25830)  ## $a3 = 80B25830
/* 0036C 80B249CC 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00370 80B249D0 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00374 80B249D4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00378 80B249D8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0037C 80B249DC 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00380 80B249E0 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00384 80B249E4 44050000 */  mfc1    $a1, $f0                   
/* 00388 80B249E8 44070000 */  mfc1    $a3, $f0                   
/* 0038C 80B249EC 0C00AC78 */  jal     ActorShape_Init
              
/* 00390 80B249F0 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00394 80B249F4 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 00398 80B249F8 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 0039C 80B249FC A209001F */  sb      $t1, 0x001F($s0)           ## 0000001F
/* 003A0 80B24A00 A20A00AE */  sb      $t2, 0x00AE($s0)           ## 000000AE
/* 003A4 80B24A04 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 003A8 80B24A08 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 003AC 80B24A0C D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 003B0 80B24A10 03E00008 */  jr      $ra                        
/* 003B4 80B24A14 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
