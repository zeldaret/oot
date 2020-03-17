glabel func_80BA1294
/* 00534 80BA1294 27BDFF20 */  addiu   $sp, $sp, 0xFF20           ## $sp = FFFFFF20
/* 00538 80BA1298 AFB40088 */  sw      $s4, 0x0088($sp)           
/* 0053C 80BA129C AFBF009C */  sw      $ra, 0x009C($sp)           
/* 00540 80BA12A0 AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 00544 80BA12A4 AFB70094 */  sw      $s7, 0x0094($sp)           
/* 00548 80BA12A8 AFB60090 */  sw      $s6, 0x0090($sp)           
/* 0054C 80BA12AC AFB5008C */  sw      $s5, 0x008C($sp)           
/* 00550 80BA12B0 AFB30084 */  sw      $s3, 0x0084($sp)           
/* 00554 80BA12B4 AFB20080 */  sw      $s2, 0x0080($sp)           
/* 00558 80BA12B8 AFB1007C */  sw      $s1, 0x007C($sp)           
/* 0055C 80BA12BC AFB00078 */  sw      $s0, 0x0078($sp)           
/* 00560 80BA12C0 F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 00564 80BA12C4 F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 00568 80BA12C8 F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 0056C 80BA12CC F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 00570 80BA12D0 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 00574 80BA12D4 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 00578 80BA12D8 AFA500E4 */  sw      $a1, 0x00E4($sp)           
/* 0057C 80BA12DC 24940024 */  addiu   $s4, $a0, 0x0024           ## $s4 = 00000024
/* 00580 80BA12E0 8E8F0000 */  lw      $t7, 0x0000($s4)           ## 00000024
/* 00584 80BA12E4 27B300C8 */  addiu   $s3, $sp, 0x00C8           ## $s3 = FFFFFFE8
/* 00588 80BA12E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0058C 80BA12EC AE6F0000 */  sw      $t7, 0x0000($s3)           ## FFFFFFE8
/* 00590 80BA12F0 8E8E0004 */  lw      $t6, 0x0004($s4)           ## 00000028
/* 00594 80BA12F4 24180190 */  addiu   $t8, $zero, 0x0190         ## $t8 = 00000190
/* 00598 80BA12F8 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFE8
/* 0059C 80BA12FC AE6E0004 */  sw      $t6, 0x0004($s3)           ## FFFFFFEC
/* 005A0 80BA1300 8E8F0008 */  lw      $t7, 0x0008($s4)           ## 0000002C
/* 005A4 80BA1304 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 005A8 80BA1308 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 005AC 80BA130C AE6F0008 */  sw      $t7, 0x0008($s3)           ## FFFFFFF0
/* 005B0 80BA1310 C7A400CC */  lwc1    $f4, 0x00CC($sp)           
/* 005B4 80BA1314 C4860084 */  lwc1    $f6, 0x0084($a0)           ## 00000084
/* 005B8 80BA1318 AFB000E0 */  sw      $s0, 0x00E0($sp)           
/* 005BC 80BA131C AFB80014 */  sw      $t8, 0x0014($sp)           
/* 005C0 80BA1320 46062200 */  add.s   $f8, $f4, $f6              
/* 005C4 80BA1324 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 005C8 80BA1328 8FA400E4 */  lw      $a0, 0x00E4($sp)           
/* 005CC 80BA132C 0C00A527 */  jal     func_8002949C              
/* 005D0 80BA1330 E7A800CC */  swc1    $f8, 0x00CC($sp)           
/* 005D4 80BA1334 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 005D8 80BA1338 4481F000 */  mtc1    $at, $f30                  ## $f30 = 5.00
/* 005DC 80BA133C 3C0180BA */  lui     $at, %hi(D_80BA1C64)       ## $at = 80BA0000
/* 005E0 80BA1340 C43C1C64 */  lwc1    $f28, %lo(D_80BA1C64)($at) 
/* 005E4 80BA1344 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 005E8 80BA1348 4481D000 */  mtc1    $at, $f26                  ## $f26 = 2.00
/* 005EC 80BA134C 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 005F0 80BA1350 3C1780BA */  lui     $s7, %hi(D_80BA1B8C)       ## $s7 = 80BA0000
/* 005F4 80BA1354 3C1680BA */  lui     $s6, %hi(D_80BA1B80)       ## $s6 = 80BA0000
/* 005F8 80BA1358 4481C000 */  mtc1    $at, $f24                  ## $f24 = 8.00
/* 005FC 80BA135C 26D61B80 */  addiu   $s6, $s6, %lo(D_80BA1B80)  ## $s6 = 80BA1B80
/* 00600 80BA1360 26F71B8C */  addiu   $s7, $s7, %lo(D_80BA1B8C)  ## $s7 = 80BA1B8C
/* 00604 80BA1364 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 00608 80BA1368 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 0060C 80BA136C 241E000F */  addiu   $s8, $zero, 0x000F         ## $s8 = 0000000F
/* 00610 80BA1370 27B500BC */  addiu   $s5, $sp, 0x00BC           ## $s5 = FFFFFFDC
.L80BA1374:
/* 00614 80BA1374 00112400 */  sll     $a0, $s1, 16               
/* 00618 80BA1378 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0061C 80BA137C 00042403 */  sra     $a0, $a0, 16               
/* 00620 80BA1380 00112400 */  sll     $a0, $s1, 16               
/* 00624 80BA1384 46000506 */  mov.s   $f20, $f0                  
/* 00628 80BA1388 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0062C 80BA138C 00042403 */  sra     $a0, $a0, 16               
/* 00630 80BA1390 4618A282 */  mul.s   $f10, $f20, $f24           
/* 00634 80BA1394 46000586 */  mov.s   $f22, $f0                  
/* 00638 80BA1398 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0063C 80BA139C E7AA00C8 */  swc1    $f10, 0x00C8($sp)          
/* 00640 80BA13A0 461E0402 */  mul.s   $f16, $f0, $f30            
/* 00644 80BA13A4 C7A600C8 */  lwc1    $f6, 0x00C8($sp)           
/* 00648 80BA13A8 4618B102 */  mul.s   $f4, $f22, $f24            
/* 0064C 80BA13AC 00000000 */  nop
/* 00650 80BA13B0 461C3202 */  mul.s   $f8, $f6, $f28             
/* 00654 80BA13B4 461A8480 */  add.s   $f18, $f16, $f26           
/* 00658 80BA13B8 E7A400D0 */  swc1    $f4, 0x00D0($sp)           
/* 0065C 80BA13BC E7B200CC */  swc1    $f18, 0x00CC($sp)          
/* 00660 80BA13C0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00664 80BA13C4 E7A800BC */  swc1    $f8, 0x00BC($sp)           
/* 00668 80BA13C8 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 0066C 80BA13CC 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 00670 80BA13D0 C7A400D0 */  lwc1    $f4, 0x00D0($sp)           
/* 00674 80BA13D4 02602025 */  or      $a0, $s3, $zero            ## $a0 = FFFFFFE8
/* 00678 80BA13D8 460A0402 */  mul.s   $f16, $f0, $f10            
/* 0067C 80BA13DC 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000024
/* 00680 80BA13E0 02603025 */  or      $a2, $s3, $zero            ## $a2 = FFFFFFE8
/* 00684 80BA13E4 461C2182 */  mul.s   $f6, $f4, $f28             
/* 00688 80BA13E8 461A8480 */  add.s   $f18, $f16, $f26           
/* 0068C 80BA13EC E7A600C4 */  swc1    $f6, 0x00C4($sp)           
/* 00690 80BA13F0 0C01DFA7 */  jal     Math_Vec3f_Sum
              ## Vec3f_Add
/* 00694 80BA13F4 E7B200C0 */  swc1    $f18, 0x00C0($sp)          
/* 00698 80BA13F8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0069C 80BA13FC 00000000 */  nop
/* 006A0 80BA1400 3C0180BA */  lui     $at, %hi(D_80BA1C68)       ## $at = 80BA0000
/* 006A4 80BA1404 C4281C68 */  lwc1    $f8, %lo(D_80BA1C68)($at)  
/* 006A8 80BA1408 24100020 */  addiu   $s0, $zero, 0x0020         ## $s0 = 00000020
/* 006AC 80BA140C 4608003C */  c.lt.s  $f0, $f8                   
/* 006B0 80BA1410 00000000 */  nop
/* 006B4 80BA1414 45000003 */  bc1f    .L80BA1424                 
/* 006B8 80BA1418 00000000 */  nop
/* 006BC 80BA141C 10000001 */  beq     $zero, $zero, .L80BA1424   
/* 006C0 80BA1420 24100040 */  addiu   $s0, $zero, 0x0040         ## $s0 = 00000040
.L80BA1424:
/* 006C4 80BA1424 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 006C8 80BA1428 00000000 */  nop
/* 006CC 80BA142C 3C0142BE */  lui     $at, 0x42BE                ## $at = 42BE0000
/* 006D0 80BA1430 44815000 */  mtc1    $at, $f10                  ## $f10 = 95.00
/* 006D4 80BA1434 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 006D8 80BA1438 44819000 */  mtc1    $at, $f18                  ## $f18 = 15.00
/* 006DC 80BA143C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 006E0 80BA1440 8FAF00E0 */  lw      $t7, 0x00E0($sp)           
/* 006E4 80BA1444 2419FF4C */  addiu   $t9, $zero, 0xFF4C         ## $t9 = FFFFFF4C
/* 006E8 80BA1448 2408001E */  addiu   $t0, $zero, 0x001E         ## $t0 = 0000001E
/* 006EC 80BA144C 2409001E */  addiu   $t1, $zero, 0x001E         ## $t1 = 0000001E
/* 006F0 80BA1450 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 006F4 80BA1454 240D0046 */  addiu   $t5, $zero, 0x0046         ## $t5 = 00000046
/* 006F8 80BA1458 46128100 */  add.s   $f4, $f16, $f18            
/* 006FC 80BA145C 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 00700 80BA1460 AFAE0034 */  sw      $t6, 0x0034($sp)           
/* 00704 80BA1464 AFAD0030 */  sw      $t5, 0x0030($sp)           
/* 00708 80BA1468 4600218D */  trunc.w.s $f6, $f4                   
/* 0070C 80BA146C AFAC002C */  sw      $t4, 0x002C($sp)           
/* 00710 80BA1470 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 00714 80BA1474 AFA80018 */  sw      $t0, 0x0018($sp)           
/* 00718 80BA1478 440B3000 */  mfc1    $t3, $f6                   
/* 0071C 80BA147C AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00720 80BA1480 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00724 80BA1484 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00728 80BA1488 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 0072C 80BA148C AFAB0024 */  sw      $t3, 0x0024($sp)           
/* 00730 80BA1490 85E2001C */  lh      $v0, 0x001C($t7)           ## 0000001C
/* 00734 80BA1494 8FA400E4 */  lw      $a0, 0x00E4($sp)           
/* 00738 80BA1498 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFE8
/* 0073C 80BA149C 00021203 */  sra     $v0, $v0,  8               
/* 00740 80BA14A0 30420001 */  andi    $v0, $v0, 0x0001           ## $v0 = 00000000
/* 00744 80BA14A4 0002C040 */  sll     $t8, $v0,  1               
/* 00748 80BA14A8 00024880 */  sll     $t1, $v0,  2               
/* 0074C 80BA14AC 02E95021 */  addu    $t2, $s7, $t1              
/* 00750 80BA14B0 02D8C821 */  addu    $t9, $s6, $t8              
/* 00754 80BA14B4 87280000 */  lh      $t0, 0x0000($t9)           ## FFFFFF4C
/* 00758 80BA14B8 8D4B0000 */  lw      $t3, 0x0000($t2)           ## 00000000
/* 0075C 80BA14BC 02A03025 */  or      $a2, $s5, $zero            ## $a2 = FFFFFFDC
/* 00760 80BA14C0 02803825 */  or      $a3, $s4, $zero            ## $a3 = 00000024
/* 00764 80BA14C4 AFA80038 */  sw      $t0, 0x0038($sp)           
/* 00768 80BA14C8 0C00A7A3 */  jal     Effect_SpawnFragment
              
/* 0076C 80BA14CC AFAB003C */  sw      $t3, 0x003C($sp)           
/* 00770 80BA14D0 26314E20 */  addiu   $s1, $s1, 0x4E20           ## $s1 = 00004E20
/* 00774 80BA14D4 00118C00 */  sll     $s1, $s1, 16               
/* 00778 80BA14D8 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 0077C 80BA14DC 165EFFA5 */  bne     $s2, $s8, .L80BA1374       
/* 00780 80BA14E0 00118C03 */  sra     $s1, $s1, 16               
/* 00784 80BA14E4 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 00788 80BA14E8 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 0078C 80BA14EC D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 00790 80BA14F0 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 00794 80BA14F4 D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 00798 80BA14F8 D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 0079C 80BA14FC D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 007A0 80BA1500 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 007A4 80BA1504 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 007A8 80BA1508 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 007AC 80BA150C 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 007B0 80BA1510 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 007B4 80BA1514 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 007B8 80BA1518 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 007BC 80BA151C 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 007C0 80BA1520 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 007C4 80BA1524 03E00008 */  jr      $ra                        
/* 007C8 80BA1528 27BD00E0 */  addiu   $sp, $sp, 0x00E0           ## $sp = 00000000


