glabel func_80845964
/* 13754 80845964 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 13758 80845968 44876000 */  mtc1    $a3, $f12                  ## $f12 = 0.00
/* 1375C 8084596C 8FA7004C */  lw      $a3, 0x004C($sp)           
/* 13760 80845970 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 13764 80845974 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 13768 80845978 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1376C 8084597C 10E0000B */  beq     $a3, $zero, .L808459AC     
/* 13770 80845980 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 13774 80845984 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 13778 80845988 C4A60838 */  lwc1    $f6, 0x0838($a1)           ## 00000838
/* 1377C 8084598C 46062032 */  c.eq.s  $f4, $f6                   
/* 13780 80845990 00000000 */  nop
/* 13784 80845994 45020006 */  bc1fl   .L808459B0                 
/* 13788 80845998 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 1378C 8084599C 0C028EF0 */  jal     func_800A3BC0              
/* 13790 808459A0 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 13794 808459A4 1000007A */  beq     $zero, $zero, .L80845B90   
/* 13798 808459A8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808459AC:
/* 1379C 808459AC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L808459B0:
/* 137A0 808459B0 10E10058 */  beq     $a3, $at, .L80845B14       
/* 137A4 808459B4 3C0E8016 */  lui     $t6, %hi(gGameInfo)
/* 137A8 808459B8 8DCEFA90 */  lw      $t6, %lo(gGameInfo)($t6)
/* 137AC 808459BC 8CD80018 */  lw      $t8, 0x0018($a2)           ## 00000018
/* 137B0 808459C0 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 137B4 808459C4 85CF0110 */  lh      $t7, 0x0110($t6)           ## 80160110
/* 137B8 808459C8 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 137BC 808459CC 44983000 */  mtc1    $t8, $f6                   ## $f6 = 0.00
/* 137C0 808459D0 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 137C4 808459D4 8CD90020 */  lw      $t9, 0x0020($a2)           ## 00000020
/* 137C8 808459D8 8FA90038 */  lw      $t1, 0x0038($sp)           
/* 137CC 808459DC 468042A0 */  cvt.s.w $f10, $f8                  
/* 137D0 808459E0 94C80004 */  lhu     $t0, 0x0004($a2)           ## 00000004
/* 137D4 808459E4 952A1D74 */  lhu     $t2, 0x1D74($t1)           ## 00001D74
/* 137D8 808459E8 46803220 */  cvt.s.w $f8, $f6                   
/* 137DC 808459EC 46045402 */  mul.s   $f16, $f10, $f4            
/* 137E0 808459F0 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 137E4 808459F4 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 137E8 808459F8 010A1823 */  subu    $v1, $t0, $t2              
/* 137EC 808459FC 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000001
/* 137F0 80845A00 460A4381 */  sub.s   $f14, $f8, $f10            
/* 137F4 80845A04 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 137F8 80845A08 E7B00034 */  swc1    $f16, 0x0034($sp)          
/* 137FC 80845A0C 468021A0 */  cvt.s.w $f6, $f4                   
/* 13800 80845A10 460E7282 */  mul.s   $f10, $f14, $f14           
/* 13804 80845A14 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 13808 80845A18 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 1380C 80845A1C 46083301 */  sub.s   $f12, $f6, $f8             
/* 13810 80845A20 460C6102 */  mul.s   $f4, $f12, $f12            
/* 13814 80845A24 46045000 */  add.s   $f0, $f10, $f4             
/* 13818 80845A28 46000004 */  sqrt.s  $f0, $f0                   
/* 1381C 80845A2C 46100483 */  div.s   $f18, $f0, $f16            
/* 13820 80845A30 0C034199 */  jal     Math_Atan2S
              
/* 13824 80845A34 E7B20028 */  swc1    $f18, 0x0028($sp)          
/* 13828 80845A38 8FA7004C */  lw      $a3, 0x004C($sp)           
/* 1382C 80845A3C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 13830 80845A40 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 13834 80845A44 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 13838 80845A48 C7B00034 */  lwc1    $f16, 0x0034($sp)          
/* 1383C 80845A4C C7B20028 */  lwc1    $f18, 0x0028($sp)          
/* 13840 80845A50 14E1002C */  bne     $a3, $at, .L80845B04       
/* 13844 80845A54 A7A2004A */  sh      $v0, 0x004A($sp)           
/* 13848 80845A58 8CCB0018 */  lw      $t3, 0x0018($a2)           ## 00000018
/* 1384C 80845A5C 8CCC000C */  lw      $t4, 0x000C($a2)           ## 0000000C
/* 13850 80845A60 8CCE0020 */  lw      $t6, 0x0020($a2)           ## 00000020
/* 13854 80845A64 8CCF0014 */  lw      $t7, 0x0014($a2)           ## 00000014
/* 13858 80845A68 016C6823 */  subu    $t5, $t3, $t4              
/* 1385C 80845A6C 448D3000 */  mtc1    $t5, $f6                   ## $f6 = 0.00
/* 13860 80845A70 01CFC023 */  subu    $t8, $t6, $t7              
/* 13864 80845A74 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 13868 80845A78 468030A0 */  cvt.s.w $f2, $f6                   
/* 1386C 80845A7C 94D90004 */  lhu     $t9, 0x0004($a2)           ## 00000004
/* 13870 80845A80 94C90002 */  lhu     $t1, 0x0002($a2)           ## 00000002
/* 13874 80845A84 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 13878 80845A88 46804320 */  cvt.s.w $f12, $f8                  
/* 1387C 80845A8C 46021282 */  mul.s   $f10, $f2, $f2             
/* 13880 80845A90 03294023 */  subu    $t0, $t9, $t1              
/* 13884 80845A94 44883000 */  mtc1    $t0, $f6                   ## $f6 = 0.00
/* 13888 80845A98 460C6102 */  mul.s   $f4, $f12, $f12            
/* 1388C 80845A9C 46803220 */  cvt.s.w $f8, $f6                   
/* 13890 80845AA0 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.50
/* 13894 80845AA4 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 13898 80845AA8 46045000 */  add.s   $f0, $f10, $f4             
/* 1389C 80845AAC 46000004 */  sqrt.s  $f0, $f0                   
/* 138A0 80845AB0 46100283 */  div.s   $f10, $f0, $f16            
/* 138A4 80845AB4 46085103 */  div.s   $f4, $f10, $f8             
/* 138A8 80845AB8 44814000 */  mtc1    $at, $f8                   ## $f8 = 4.00
/* 138AC 80845ABC 46062283 */  div.s   $f10, $f4, $f6             
/* 138B0 80845AC0 46085102 */  mul.s   $f4, $f10, $f8             
/* 138B4 80845AC4 4600218D */  trunc.w.s $f6, $f4                   
/* 138B8 80845AC8 44023000 */  mfc1    $v0, $f6                   
/* 138BC 80845ACC 00000000 */  nop
/* 138C0 80845AD0 0043082A */  slt     $at, $v0, $v1              
/* 138C4 80845AD4 14200005 */  bne     $at, $zero, .L80845AEC     
/* 138C8 80845AD8 00626023 */  subu    $t4, $v1, $v0              
/* 138CC 80845ADC 860B00B6 */  lh      $t3, 0x00B6($s0)           ## 000000B6
/* 138D0 80845AE0 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 138D4 80845AE4 1000000B */  beq     $zero, $zero, .L80845B14   
/* 138D8 80845AE8 A7AB004A */  sh      $t3, 0x004A($sp)           
.L80845AEC:
/* 138DC 80845AEC 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 138E0 80845AF0 448D5000 */  mtc1    $t5, $f10                  ## $f10 = 0.00
/* 138E4 80845AF4 00000000 */  nop
/* 138E8 80845AF8 46805220 */  cvt.s.w $f8, $f10                  
/* 138EC 80845AFC 10000005 */  beq     $zero, $zero, .L80845B14   
/* 138F0 80845B00 46089303 */  div.s   $f12, $f18, $f8            
.L80845B04:
/* 138F4 80845B04 44832000 */  mtc1    $v1, $f4                   ## $f4 = 0.00
/* 138F8 80845B08 00000000 */  nop
/* 138FC 80845B0C 468021A0 */  cvt.s.w $f6, $f4                   
/* 13900 80845B10 46069303 */  div.s   $f12, $f18, $f6            
.L80845B14:
/* 13904 80845B14 8E0E0680 */  lw      $t6, 0x0680($s0)           ## 00000680
/* 13908 80845B18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1390C 80845B1C 35CF0020 */  ori     $t7, $t6, 0x0020           ## $t7 = 00000020
/* 13910 80845B20 AE0F0680 */  sw      $t7, 0x0680($s0)           ## 00000680
/* 13914 80845B24 E7AC0044 */  swc1    $f12, 0x0044($sp)          
/* 13918 80845B28 0C2107B9 */  jal     func_80841EE4              
/* 1391C 80845B2C 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 13920 80845B30 C7AC0044 */  lwc1    $f12, 0x0044($sp)          
/* 13924 80845B34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 13928 80845B38 87A6004A */  lh      $a2, 0x004A($sp)           
/* 1392C 80845B3C 44056000 */  mfc1    $a1, $f12                  
/* 13930 80845B40 0C20F7DA */  jal     func_8083DF68              
/* 13934 80845B44 00000000 */  nop
/* 13938 80845B48 C7AC0044 */  lwc1    $f12, 0x0044($sp)          
/* 1393C 80845B4C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 13940 80845B50 00000000 */  nop
/* 13944 80845B54 460A6032 */  c.eq.s  $f12, $f10                 
/* 13948 80845B58 00000000 */  nop
/* 1394C 80845B5C 4502000B */  bc1fl   .L80845B8C                 
/* 13950 80845B60 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 13954 80845B64 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 13958 80845B68 C6040838 */  lwc1    $f4, 0x0838($s0)           ## 00000838
/* 1395C 80845B6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 13960 80845B70 46044032 */  c.eq.s  $f8, $f4                   
/* 13964 80845B74 00000000 */  nop
/* 13968 80845B78 45020004 */  bc1fl   .L80845B8C                 
/* 1396C 80845B7C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 13970 80845B80 0C20EFD4 */  jal     func_8083BF50              
/* 13974 80845B84 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 13978 80845B88 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80845B8C:
/* 1397C 80845B8C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80845B90:
/* 13980 80845B90 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 13984 80845B94 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 13988 80845B98 03E00008 */  jr      $ra                        
/* 1398C 80845B9C 00000000 */  nop
