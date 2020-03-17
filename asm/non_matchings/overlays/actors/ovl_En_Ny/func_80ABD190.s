glabel func_80ABD190
/* 005E0 80ABD190 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 005E4 80ABD194 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 005E8 80ABD198 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 005EC 80ABD19C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 005F0 80ABD1A0 A3A0003F */  sb      $zero, 0x003F($sp)         
/* 005F4 80ABD1A4 90830160 */  lbu     $v1, 0x0160($a0)           ## 00000160
/* 005F8 80ABD1A8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005FC 80ABD1AC A48001CC */  sh      $zero, 0x01CC($a0)         ## 000001CC
/* 00600 80ABD1B0 306E0004 */  andi    $t6, $v1, 0x0004           ## $t6 = 00000000
/* 00604 80ABD1B4 11C0000C */  beq     $t6, $zero, .L80ABD1E8     
/* 00608 80ABD1B8 30680002 */  andi    $t0, $v1, 0x0002           ## $t0 = 00000000
/* 0060C 80ABD1BC 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00610 80ABD1C0 8499008A */  lh      $t9, 0x008A($a0)           ## 0000008A
/* 00614 80ABD1C4 44812000 */  mtc1    $at, $f4                   ## $f4 = -4.00
/* 00618 80ABD1C8 306FFFFB */  andi    $t7, $v1, 0xFFFB           ## $t7 = 00000000
/* 0061C 80ABD1CC 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00620 80ABD1D0 A08F0160 */  sb      $t7, 0x0160($a0)           ## 00000160
/* 00624 80ABD1D4 A49801CC */  sh      $t8, 0x01CC($a0)           ## 000001CC
/* 00628 80ABD1D8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0062C 80ABD1DC A4990032 */  sh      $t9, 0x0032($a0)           ## 00000032
/* 00630 80ABD1E0 10000070 */  beq     $zero, $zero, .L80ABD3A4   
/* 00634 80ABD1E4 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
.L80ABD1E8:
/* 00638 80ABD1E8 11000006 */  beq     $t0, $zero, .L80ABD204     
/* 0063C 80ABD1EC 3069FFFD */  andi    $t1, $v1, 0xFFFD           ## $t1 = 00000000
/* 00640 80ABD1F0 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00644 80ABD1F4 A2090160 */  sb      $t1, 0x0160($s0)           ## 00000160
/* 00648 80ABD1F8 A60A01CC */  sh      $t2, 0x01CC($s0)           ## 000001CC
/* 0064C 80ABD1FC 10000069 */  beq     $zero, $zero, .L80ABD3A4   
/* 00650 80ABD200 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80ABD204:
/* 00654 80ABD204 92020161 */  lbu     $v0, 0x0161($s0)           ## 00000161
/* 00658 80ABD208 304B0002 */  andi    $t3, $v0, 0x0002           ## $t3 = 00000000
/* 0065C 80ABD20C 51600065 */  beql    $t3, $zero, .L80ABD3A4     
/* 00660 80ABD210 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00664 80ABD214 8E0D016C */  lw      $t5, 0x016C($s0)           ## 0000016C
/* 00668 80ABD218 304CFFFD */  andi    $t4, $v0, 0xFFFD           ## $t4 = 00000000
/* 0066C 80ABD21C A20C0161 */  sb      $t4, 0x0161($s0)           ## 00000161
/* 00670 80ABD220 85AE000E */  lh      $t6, 0x000E($t5)           ## 0000000E
/* 00674 80ABD224 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 00678 80ABD228 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 0067C 80ABD22C 00000000 */  nop
/* 00680 80ABD230 46803220 */  cvt.s.w $f8, $f6                   
/* 00684 80ABD234 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.25
/* 00688 80ABD238 E7A80030 */  swc1    $f8, 0x0030($sp)           
/* 0068C 80ABD23C 8E0F016C */  lw      $t7, 0x016C($s0)           ## 0000016C
/* 00690 80ABD240 85F80010 */  lh      $t8, 0x0010($t7)           ## 00000010
/* 00694 80ABD244 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 00698 80ABD248 00000000 */  nop
/* 0069C 80ABD24C 46805420 */  cvt.s.w $f16, $f10                 
/* 006A0 80ABD250 E7B00034 */  swc1    $f16, 0x0034($sp)          
/* 006A4 80ABD254 8E19016C */  lw      $t9, 0x016C($s0)           ## 0000016C
/* 006A8 80ABD258 87280012 */  lh      $t0, 0x0012($t9)           ## 00000012
/* 006AC 80ABD25C 44889000 */  mtc1    $t0, $f18                  ## $f18 = 0.00
/* 006B0 80ABD260 00000000 */  nop
/* 006B4 80ABD264 46809120 */  cvt.s.w $f4, $f18                  
/* 006B8 80ABD268 E7A40038 */  swc1    $f4, 0x0038($sp)           
/* 006BC 80ABD26C C60801E0 */  lwc1    $f8, 0x01E0($s0)           ## 000001E0
/* 006C0 80ABD270 46083032 */  c.eq.s  $f6, $f8                   
/* 006C4 80ABD274 00000000 */  nop
/* 006C8 80ABD278 45020035 */  bc1fl   .L80ABD350                 
/* 006CC 80ABD27C 920F00AF */  lbu     $t7, 0x00AF($s0)           ## 000000AF
/* 006D0 80ABD280 8E0901D4 */  lw      $t1, 0x01D4($s0)           ## 000001D4
/* 006D4 80ABD284 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 006D8 80ABD288 55210031 */  bnel    $t1, $at, .L80ABD350       
/* 006DC 80ABD28C 920F00AF */  lbu     $t7, 0x00AF($s0)           ## 000000AF
/* 006E0 80ABD290 920200B1 */  lbu     $v0, 0x00B1($s0)           ## 000000B1
/* 006E4 80ABD294 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 006E8 80ABD298 10410017 */  beq     $v0, $at, .L80ABD2F8       
/* 006EC 80ABD29C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 006F0 80ABD2A0 10410020 */  beq     $v0, $at, .L80ABD324       
/* 006F4 80ABD2A4 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 006F8 80ABD2A8 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 006FC 80ABD2AC 10410006 */  beq     $v0, $at, .L80ABD2C8       
/* 00700 80ABD2B0 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00704 80ABD2B4 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 00708 80ABD2B8 10410004 */  beq     $v0, $at, .L80ABD2CC       
/* 0070C 80ABD2BC 00000000 */  nop
/* 00710 80ABD2C0 10000023 */  beq     $zero, $zero, .L80ABD350   
/* 00714 80ABD2C4 920F00AF */  lbu     $t7, 0x00AF($s0)           ## 000000AF
.L80ABD2C8:
/* 00718 80ABD2C8 A3AA003F */  sb      $t2, 0x003F($sp)           
.L80ABD2CC:
/* 0071C 80ABD2CC 0C00D58A */  jal     Actor_ApplyDamage
              
/* 00720 80ABD2D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00724 80ABD2D4 240B0050 */  addiu   $t3, $zero, 0x0050         ## $t3 = 00000050
/* 00728 80ABD2D8 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 0072C 80ABD2DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00730 80ABD2E0 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00734 80ABD2E4 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00738 80ABD2E8 0C00D09B */  jal     func_8003426C              
/* 0073C 80ABD2EC 24072000 */  addiu   $a3, $zero, 0x2000         ## $a3 = 00002000
/* 00740 80ABD2F0 10000017 */  beq     $zero, $zero, .L80ABD350   
/* 00744 80ABD2F4 920F00AF */  lbu     $t7, 0x00AF($s0)           ## 000000AF
.L80ABD2F8:
/* 00748 80ABD2F8 0C00D58A */  jal     Actor_ApplyDamage
              
/* 0074C 80ABD2FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00750 80ABD300 240C0050 */  addiu   $t4, $zero, 0x0050         ## $t4 = 00000050
/* 00754 80ABD304 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00758 80ABD308 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0075C 80ABD30C 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00760 80ABD310 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00764 80ABD314 0C00D09B */  jal     func_8003426C              
/* 00768 80ABD318 24072000 */  addiu   $a3, $zero, 0x2000         ## $a3 = 00002000
/* 0076C 80ABD31C 1000000C */  beq     $zero, $zero, .L80ABD350   
/* 00770 80ABD320 920F00AF */  lbu     $t7, 0x00AF($s0)           ## 000000AF
.L80ABD324:
/* 00774 80ABD324 A60D01CA */  sh      $t5, 0x01CA($s0)           ## 000001CA
/* 00778 80ABD328 0C00D58A */  jal     Actor_ApplyDamage
              
/* 0077C 80ABD32C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00780 80ABD330 240E0050 */  addiu   $t6, $zero, 0x0050         ## $t6 = 00000050
/* 00784 80ABD334 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00788 80ABD338 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0078C 80ABD33C 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00790 80ABD340 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00794 80ABD344 0C00D09B */  jal     func_8003426C              
/* 00798 80ABD348 24072000 */  addiu   $a3, $zero, 0x2000         ## $a3 = 00002000
/* 0079C 80ABD34C 920F00AF */  lbu     $t7, 0x00AF($s0)           ## 000000AF
.L80ABD350:
/* 007A0 80ABD350 AE0001DC */  sw      $zero, 0x01DC($s0)         ## 000001DC
/* 007A4 80ABD354 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 007A8 80ABD358 15E0000D */  bne     $t7, $zero, .L80ABD390     
/* 007AC 80ABD35C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 007B0 80ABD360 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 007B4 80ABD364 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 007B8 80ABD368 A20000C8 */  sb      $zero, 0x00C8($s0)         ## 000000C8
/* 007BC 80ABD36C 0301C824 */  and     $t9, $t8, $at              
/* 007C0 80ABD370 AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 007C4 80ABD374 93A8003F */  lbu     $t0, 0x003F($sp)           
/* 007C8 80ABD378 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 007CC 80ABD37C A20801D0 */  sb      $t0, 0x01D0($s0)           ## 000001D0
/* 007D0 80ABD380 0C00CB1F */  jal     func_80032C7C              
/* 007D4 80ABD384 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 007D8 80ABD388 10000006 */  beq     $zero, $zero, .L80ABD3A4   
/* 007DC 80ABD38C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80ABD390:
/* 007E0 80ABD390 0C00A729 */  jal     func_80029CA4              
/* 007E4 80ABD394 27A60030 */  addiu   $a2, $sp, 0x0030           ## $a2 = FFFFFFF0
/* 007E8 80ABD398 10000002 */  beq     $zero, $zero, .L80ABD3A4   
/* 007EC 80ABD39C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 007F0 80ABD3A0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80ABD3A4:
/* 007F4 80ABD3A4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 007F8 80ABD3A8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 007FC 80ABD3AC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00800 80ABD3B0 03E00008 */  jr      $ra                        
/* 00804 80ABD3B4 00000000 */  nop


