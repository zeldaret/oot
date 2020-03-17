glabel func_808DBB78
/* 05308 808DBB78 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0530C 808DBB7C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 05310 808DBB80 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 05314 808DBB84 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 05318 808DBB88 3C028090 */  lui     $v0, %hi(D_808F93C0)       ## $v0 = 80900000
/* 0531C 808DBB8C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 05320 808DBB90 244293C0 */  addiu   $v0, $v0, %lo(D_808F93C0)  ## $v0 = 808F93C0
/* 05324 808DBB94 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 05328 808DBB98 A08E0199 */  sb      $t6, 0x0199($a0)           ## 00000199
/* 0532C 808DBB9C 44810000 */  mtc1    $at, $f0                   ## $f0 = -3.00
/* 05330 808DBBA0 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 808F93C0
/* 05334 808DBBA4 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 05338 808DBBA8 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.25
/* 0533C 808DBBAC E5E016B0 */  swc1    $f0, 0x16B0($t7)           ## 000016B0
/* 05340 808DBBB0 8C580000 */  lw      $t8, 0x0000($v0)           ## 808F93C0
/* 05344 808DBBB4 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 05348 808DBBB8 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 0534C 808DBBBC E70416B4 */  swc1    $f4, 0x16B4($t8)           ## 000016B4
/* 05350 808DBBC0 8C590000 */  lw      $t9, 0x0000($v0)           ## 808F93C0
/* 05354 808DBBC4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05358 808DBBC8 24840150 */  addiu   $a0, $a0, 0x0150           ## $a0 = 00000150
/* 0535C 808DBBCC E72016B8 */  swc1    $f0, 0x16B8($t9)           ## 000016B8
/* 05360 808DBBD0 8C480000 */  lw      $t0, 0x0000($v0)           ## 808F93C0
/* 05364 808DBBD4 E50616D0 */  swc1    $f6, 0x16D0($t0)           ## 000016D0
/* 05368 808DBBD8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0536C 808DBBDC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 05370 808DBBE0 AFA30020 */  sw      $v1, 0x0020($sp)           
/* 05374 808DBBE4 860901C2 */  lh      $t1, 0x01C2($s0)           ## 000001C2
/* 05378 808DBBE8 8FA30020 */  lw      $v1, 0x0020($sp)           
/* 0537C 808DBBEC 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 05380 808DBBF0 55200056 */  bnel    $t1, $zero, .L808DBD4C     
/* 05384 808DBBF4 860401A2 */  lh      $a0, 0x01A2($s0)           ## 000001A2
/* 05388 808DBBF8 C4680028 */  lwc1    $f8, 0x0028($v1)           ## 00000028
/* 0538C 808DBBFC 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 05390 808DBC00 00000000 */  nop
/* 05394 808DBC04 460A403C */  c.lt.s  $f8, $f10                  
/* 05398 808DBC08 00000000 */  nop
/* 0539C 808DBC0C 4503004F */  bc1tl   .L808DBD4C                 
/* 053A0 808DBC10 860401A2 */  lh      $a0, 0x01A2($s0)           ## 000001A2
/* 053A4 808DBC14 8C62067C */  lw      $v0, 0x067C($v1)           ## 0000067C
/* 053A8 808DBC18 30422000 */  andi    $v0, $v0, 0x2000           ## $v0 = 00000000
/* 053AC 808DBC1C 54400014 */  bnel    $v0, $zero, .L808DBC70     
/* 053B0 808DBC20 860A01B6 */  lh      $t2, 0x01B6($s0)           ## 000001B6
/* 053B4 808DBC24 C4600024 */  lwc1    $f0, 0x0024($v1)           ## 00000024
/* 053B8 808DBC28 3C0142DC */  lui     $at, 0x42DC                ## $at = 42DC0000
/* 053BC 808DBC2C 44811000 */  mtc1    $at, $f2                   ## $f2 = 110.00
/* 053C0 808DBC30 46000005 */  abs.s   $f0, $f0                   
/* 053C4 808DBC34 4602003C */  c.lt.s  $f0, $f2                   
/* 053C8 808DBC38 00000000 */  nop
/* 053CC 808DBC3C 4502000C */  bc1fl   .L808DBC70                 
/* 053D0 808DBC40 860A01B6 */  lh      $t2, 0x01B6($s0)           ## 000001B6
/* 053D4 808DBC44 C460002C */  lwc1    $f0, 0x002C($v1)           ## 0000002C
/* 053D8 808DBC48 46000005 */  abs.s   $f0, $f0                   
/* 053DC 808DBC4C 4602003C */  c.lt.s  $f0, $f2                   
/* 053E0 808DBC50 00000000 */  nop
/* 053E4 808DBC54 45020006 */  bc1fl   .L808DBC70                 
/* 053E8 808DBC58 860A01B6 */  lh      $t2, 0x01B6($s0)           ## 000001B6
/* 053EC 808DBC5C 0C236B3A */  jal     func_808DACE8              
/* 053F0 808DBC60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 053F4 808DBC64 10000039 */  beq     $zero, $zero, .L808DBD4C   
/* 053F8 808DBC68 860401A2 */  lh      $a0, 0x01A2($s0)           ## 000001A2
/* 053FC 808DBC6C 860A01B6 */  lh      $t2, 0x01B6($s0)           ## 000001B6
.L808DBC70:
/* 05400 808DBC70 55400036 */  bnel    $t2, $zero, .L808DBD4C     
/* 05404 808DBC74 860401A2 */  lh      $a0, 0x01A2($s0)           ## 000001A2
/* 05408 808DBC78 14400033 */  bne     $v0, $zero, .L808DBD48     
/* 0540C 808DBC7C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 05410 808DBC80 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 05414 808DBC84 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 05418 808DBC88 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0541C 808DBC8C 4600040D */  trunc.w.s $f16, $f0                  
/* 05420 808DBC90 821800AF */  lb      $t8, 0x00AF($s0)           ## 000000AF
/* 05424 808DBC94 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 05428 808DBC98 440E8000 */  mfc1    $t6, $f16                  
/* 0542C 808DBC9C 2B010014 */  slti    $at, $t8, 0x0014           
/* 05430 808DBCA0 25CF001E */  addiu   $t7, $t6, 0x001E           ## $t7 = 0000001E
/* 05434 808DBCA4 14200005 */  bne     $at, $zero, .L808DBCBC     
/* 05438 808DBCA8 A60F01B6 */  sh      $t7, 0x01B6($s0)           ## 000001B6
/* 0543C 808DBCAC 0C236FB1 */  jal     func_808DBEC4              
/* 05440 808DBCB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05444 808DBCB4 10000025 */  beq     $zero, $zero, .L808DBD4C   
/* 05448 808DBCB8 860401A2 */  lh      $a0, 0x01A2($s0)           ## 000001A2
.L808DBCBC:
/* 0544C 808DBCBC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 05450 808DBCC0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 05454 808DBCC4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 05458 808DBCC8 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 0545C 808DBCCC 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 05460 808DBCD0 4600903E */  c.le.s  $f18, $f0                  
/* 05464 808DBCD4 00000000 */  nop
/* 05468 808DBCD8 45000019 */  bc1f    .L808DBD40                 
/* 0546C 808DBCDC 00000000 */  nop
/* 05470 808DBCE0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 05474 808DBCE4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 05478 808DBCE8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0547C 808DBCEC 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 05480 808DBCF0 3C0143AF */  lui     $at, 0x43AF                ## $at = 43AF0000
/* 05484 808DBCF4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 05488 808DBCF8 4600203E */  c.le.s  $f4, $f0                   
/* 0548C 808DBCFC 00000000 */  nop
/* 05490 808DBD00 45010007 */  bc1t    .L808DBD20                 
/* 05494 808DBD04 00000000 */  nop
/* 05498 808DBD08 44813000 */  mtc1    $at, $f6                   ## $f6 = 350.00
/* 0549C 808DBD0C C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 054A0 808DBD10 4608303C */  c.lt.s  $f6, $f8                   
/* 054A4 808DBD14 00000000 */  nop
/* 054A8 808DBD18 45000005 */  bc1f    .L808DBD30                 
/* 054AC 808DBD1C 00000000 */  nop
.L808DBD20:
/* 054B0 808DBD20 0C236C9E */  jal     func_808DB278              
/* 054B4 808DBD24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 054B8 808DBD28 10000008 */  beq     $zero, $zero, .L808DBD4C   
/* 054BC 808DBD2C 860401A2 */  lh      $a0, 0x01A2($s0)           ## 000001A2
.L808DBD30:
/* 054C0 808DBD30 0C236B3A */  jal     func_808DACE8              
/* 054C4 808DBD34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 054C8 808DBD38 10000004 */  beq     $zero, $zero, .L808DBD4C   
/* 054CC 808DBD3C 860401A2 */  lh      $a0, 0x01A2($s0)           ## 000001A2
.L808DBD40:
/* 054D0 808DBD40 0C236FB1 */  jal     func_808DBEC4              
/* 054D4 808DBD44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L808DBD48:
/* 054D8 808DBD48 860401A2 */  lh      $a0, 0x01A2($s0)           ## 000001A2
.L808DBD4C:
/* 054DC 808DBD4C 00800821 */  addu    $at, $a0, $zero            
/* 054E0 808DBD50 00042080 */  sll     $a0, $a0,  2               
/* 054E4 808DBD54 00812021 */  addu    $a0, $a0, $at              
/* 054E8 808DBD58 00042200 */  sll     $a0, $a0,  8               
/* 054EC 808DBD5C 00042400 */  sll     $a0, $a0, 16               
/* 054F0 808DBD60 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 054F4 808DBD64 00042403 */  sra     $a0, $a0, 16               
/* 054F8 808DBD68 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 054FC 808DBD6C 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 05500 808DBD70 00000000 */  nop
/* 05504 808DBD74 460A0402 */  mul.s   $f16, $f0, $f10            
/* 05508 808DBD78 E7B0002C */  swc1    $f16, 0x002C($sp)          
/* 0550C 808DBD7C 860401A2 */  lh      $a0, 0x01A2($s0)           ## 000001A2
/* 05510 808DBD80 00800821 */  addu    $at, $a0, $zero            
/* 05514 808DBD84 000420C0 */  sll     $a0, $a0,  3               
/* 05518 808DBD88 00812023 */  subu    $a0, $a0, $at              
/* 0551C 808DBD8C 00042200 */  sll     $a0, $a0,  8               
/* 05520 808DBD90 00042400 */  sll     $a0, $a0, 16               
/* 05524 808DBD94 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 05528 808DBD98 00042403 */  sra     $a0, $a0, 16               
/* 0552C 808DBD9C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 05530 808DBDA0 44819000 */  mtc1    $at, $f18                  ## $f18 = 100.00
/* 05534 808DBDA4 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 05538 808DBDA8 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 0553C 808DBDAC 46120102 */  mul.s   $f4, $f0, $f18             
/* 05540 808DBDB0 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 05544 808DBDB4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 05548 808DBDB8 E7A40024 */  swc1    $f4, 0x0024($sp)           
/* 0554C 808DBDBC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 05550 808DBDC0 8E0701C8 */  lw      $a3, 0x01C8($s0)           ## 000001C8
/* 05554 808DBDC4 3C01808F */  lui     $at, %hi(D_808F7FEC)       ## $at = 808F0000
/* 05558 808DBDC8 C4287FEC */  lwc1    $f8, %lo(D_808F7FEC)($at)  
/* 0555C 808DBDCC C60601C8 */  lwc1    $f6, 0x01C8($s0)           ## 000001C8
/* 05560 808DBDD0 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 05564 808DBDD4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 05568 808DBDD8 46083282 */  mul.s   $f10, $f6, $f8             
/* 0556C 808DBDDC 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 05570 808DBDE0 3C054316 */  lui     $a1, 0x4316                ## $a1 = 43160000
/* 05574 808DBDE4 44075000 */  mfc1    $a3, $f10                  
/* 05578 808DBDE8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0557C 808DBDEC 00000000 */  nop
/* 05580 808DBDF0 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 05584 808DBDF4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 05588 808DBDF8 2604002C */  addiu   $a0, $s0, 0x002C           ## $a0 = 0000002C
/* 0558C 808DBDFC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05590 808DBE00 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 05594 808DBE04 8E0701C8 */  lw      $a3, 0x01C8($s0)           ## 000001C8
/* 05598 808DBE08 260401C8 */  addiu   $a0, $s0, 0x01C8           ## $a0 = 000001C8
/* 0559C 808DBE0C 3C054248 */  lui     $a1, 0x4248                ## $a1 = 42480000
/* 055A0 808DBE10 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 055A4 808DBE14 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 055A8 808DBE18 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 055AC 808DBE1C 860401A2 */  lh      $a0, 0x01A2($s0)           ## 000001A2
/* 055B0 808DBE20 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 055B4 808DBE24 C6120100 */  lwc1    $f18, 0x0100($s0)          ## 00000100
/* 055B8 808DBE28 00800821 */  addu    $at, $a0, $zero            
/* 055BC 808DBE2C 00042080 */  sll     $a0, $a0,  2               
/* 055C0 808DBE30 00812023 */  subu    $a0, $a0, $at              
/* 055C4 808DBE34 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 055C8 808DBE38 C6080108 */  lwc1    $f8, 0x0108($s0)           ## 00000108
/* 055CC 808DBE3C 00042100 */  sll     $a0, $a0,  4               
/* 055D0 808DBE40 00812023 */  subu    $a0, $a0, $at              
/* 055D4 808DBE44 000420C0 */  sll     $a0, $a0,  3               
/* 055D8 808DBE48 46128101 */  sub.s   $f4, $f16, $f18            
/* 055DC 808DBE4C 00812023 */  subu    $a0, $a0, $at              
/* 055E0 808DBE50 00042080 */  sll     $a0, $a0,  2               
/* 055E4 808DBE54 46083281 */  sub.s   $f10, $f6, $f8             
/* 055E8 808DBE58 00042400 */  sll     $a0, $a0, 16               
/* 055EC 808DBE5C E604005C */  swc1    $f4, 0x005C($s0)           ## 0000005C
/* 055F0 808DBE60 00042403 */  sra     $a0, $a0, 16               
/* 055F4 808DBE64 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 055F8 808DBE68 E60A0064 */  swc1    $f10, 0x0064($s0)          ## 00000064
/* 055FC 808DBE6C C61001C8 */  lwc1    $f16, 0x01C8($s0)          ## 000001C8
/* 05600 808DBE70 3C01808F */  lui     $at, %hi(D_808F7FF0)       ## $at = 808F0000
/* 05604 808DBE74 C4247FF0 */  lwc1    $f4, %lo(D_808F7FF0)($at)  
/* 05608 808DBE78 46008482 */  mul.s   $f18, $f16, $f0            
/* 0560C 808DBE7C C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 05610 808DBE80 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 05614 808DBE84 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 05618 808DBE88 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 0561C 808DBE8C 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 05620 808DBE90 46049082 */  mul.s   $f2, $f18, $f4             
/* 05624 808DBE94 46023200 */  add.s   $f8, $f6, $f2              
/* 05628 808DBE98 E6020060 */  swc1    $f2, 0x0060($s0)           ## 00000060
/* 0562C 808DBE9C 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 05630 808DBEA0 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 05634 808DBEA4 260400E4 */  addiu   $a0, $s0, 0x00E4           ## $a0 = 000000E4
/* 05638 808DBEA8 0C01E245 */  jal     func_80078914              
/* 0563C 808DBEAC 240530A4 */  addiu   $a1, $zero, 0x30A4         ## $a1 = 000030A4
/* 05640 808DBEB0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 05644 808DBEB4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 05648 808DBEB8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0564C 808DBEBC 03E00008 */  jr      $ra                        
/* 05650 808DBEC0 00000000 */  nop


