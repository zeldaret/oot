glabel func_80AD17E8
/* 02348 80AD17E8 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0234C 80AD17EC AFBF002C */  sw      $ra, 0x002C($sp)           
/* 02350 80AD17F0 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 02354 80AD17F4 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 02358 80AD17F8 8C8E02B4 */  lw      $t6, 0x02B4($a0)           ## 000002B4
/* 0235C 80AD17FC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02360 80AD1800 11C00032 */  beq     $t6, $zero, .L80AD18CC     
/* 02364 80AD1804 00000000 */  nop
/* 02368 80AD1808 8C8F02D4 */  lw      $t7, 0x02D4($a0)           ## 000002D4
/* 0236C 80AD180C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02370 80AD1810 24A50844 */  addiu   $a1, $a1, 0x0844           ## $a1 = 06000844
/* 02374 80AD1814 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 02378 80AD1818 1B000003 */  blez    $t8, .L80AD1828            
/* 0237C 80AD181C AC9802D4 */  sw      $t8, 0x02D4($a0)           ## 000002D4
/* 02380 80AD1820 908800AF */  lbu     $t0, 0x00AF($a0)           ## 000000AF
/* 02384 80AD1824 15000011 */  bne     $t0, $zero, .L80AD186C     
.L80AD1828:
/* 02388 80AD1828 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0238C 80AD182C 0C029490 */  jal     SkelAnime_ChangeAnimationTransitionStop              
/* 02390 80AD1830 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 02394 80AD1834 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 02398 80AD1838 A60000B4 */  sh      $zero, 0x00B4($s0)         ## 000000B4
/* 0239C 80AD183C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 023A0 80AD1840 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 023A4 80AD1844 860B00B4 */  lh      $t3, 0x00B4($s0)           ## 000000B4
/* 023A8 80AD1848 24090FA0 */  addiu   $t1, $zero, 0x0FA0         ## $t1 = 00000FA0
/* 023AC 80AD184C 240A000E */  addiu   $t2, $zero, 0x000E         ## $t2 = 0000000E
/* 023B0 80AD1850 A60902F0 */  sh      $t1, 0x02F0($s0)           ## 000002F0
/* 023B4 80AD1854 AE0A02D4 */  sw      $t2, 0x02D4($s0)           ## 000002D4
/* 023B8 80AD1858 AE0002B4 */  sw      $zero, 0x02B4($s0)         ## 000002B4
/* 023BC 80AD185C E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
/* 023C0 80AD1860 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 023C4 80AD1864 1000008B */  beq     $zero, $zero, .L80AD1A94   
/* 023C8 80AD1868 A60B00B8 */  sh      $t3, 0x00B8($s0)           ## 000000B8
.L80AD186C:
/* 023CC 80AD186C 920C0114 */  lbu     $t4, 0x0114($s0)           ## 00000114
/* 023D0 80AD1870 3C053E51 */  lui     $a1, 0x3E51                ## $a1 = 3E510000
/* 023D4 80AD1874 260402EC */  addiu   $a0, $s0, 0x02EC           ## $a0 = 000002EC
/* 023D8 80AD1878 318D0004 */  andi    $t5, $t4, 0x0004           ## $t5 = 00000000
/* 023DC 80AD187C 11A0000B */  beq     $t5, $zero, .L80AD18AC     
/* 023E0 80AD1880 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 023E4 80AD1884 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 023E8 80AD1888 3C073E70 */  lui     $a3, 0x3E70                ## $a3 = 3E700000
/* 023EC 80AD188C 34E7A3D7 */  ori     $a3, $a3, 0xA3D7           ## $a3 = 3E70A3D7
/* 023F0 80AD1890 260402EC */  addiu   $a0, $s0, 0x02EC           ## $a0 = 000002EC
/* 023F4 80AD1894 34A5EB85 */  ori     $a1, $a1, 0xEB85           ## $a1 = 3E51EB85
/* 023F8 80AD1898 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 023FC 80AD189C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 02400 80AD18A0 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 02404 80AD18A4 1000007C */  beq     $zero, $zero, .L80AD1A98   
/* 02408 80AD18A8 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AD18AC:
/* 0240C 80AD18AC 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 02410 80AD18B0 3C073BA3 */  lui     $a3, 0x3BA3                ## $a3 = 3BA30000
/* 02414 80AD18B4 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3BA3D70A
/* 02418 80AD18B8 44051000 */  mfc1    $a1, $f2                   
/* 0241C 80AD18BC 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 02420 80AD18C0 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 02424 80AD18C4 10000074 */  beq     $zero, $zero, .L80AD1A98   
/* 02428 80AD18C8 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AD18CC:
/* 0242C 80AD18CC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02430 80AD18D0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02434 80AD18D4 860E02F2 */  lh      $t6, 0x02F2($s0)           ## 000002F2
/* 02438 80AD18D8 860F02F0 */  lh      $t7, 0x02F0($s0)           ## 000002F0
/* 0243C 80AD18DC 260402F0 */  addiu   $a0, $s0, 0x02F0           ## $a0 = 000002F0
/* 02440 80AD18E0 24050FA0 */  addiu   $a1, $zero, 0x0FA0         ## $a1 = 00000FA0
/* 02444 80AD18E4 01CFC021 */  addu    $t8, $t6, $t7              
/* 02448 80AD18E8 A61802F2 */  sh      $t8, 0x02F2($s0)           ## 000002F2
/* 0244C 80AD18EC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02450 80AD18F0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02454 80AD18F4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02458 80AD18F8 240700FA */  addiu   $a3, $zero, 0x00FA         ## $a3 = 000000FA
/* 0245C 80AD18FC 921900AF */  lbu     $t9, 0x00AF($s0)           ## 000000AF
/* 02460 80AD1900 3C0180AD */  lui     $at, %hi(D_80AD2950)       ## $at = 80AD0000
/* 02464 80AD1904 57200009 */  bnel    $t9, $zero, .L80AD192C     
/* 02468 80AD1908 3C0142B1 */  lui     $at, 0x42B1                ## $at = 42B10000
/* 0246C 80AD190C C6060050 */  lwc1    $f6, 0x0050($s0)           ## 00000050
/* 02470 80AD1910 C4282950 */  lwc1    $f8, %lo(D_80AD2950)($at)  
/* 02474 80AD1914 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02478 80AD1918 46083281 */  sub.s   $f10, $f6, $f8             
/* 0247C 80AD191C E60A0050 */  swc1    $f10, 0x0050($s0)          ## 00000050
/* 02480 80AD1920 0C00B58B */  jal     Actor_SetScale
              
/* 02484 80AD1924 8E050050 */  lw      $a1, 0x0050($s0)           ## 00000050
/* 02488 80AD1928 3C0142B1 */  lui     $at, 0x42B1                ## $at = 42B10000
.L80AD192C:
/* 0248C 80AD192C 44819000 */  mtc1    $at, $f18                  ## $f18 = 88.50
/* 02490 80AD1930 C6100080 */  lwc1    $f16, 0x0080($s0)          ## 00000080
/* 02494 80AD1934 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 02498 80AD1938 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 0249C 80AD193C 46128100 */  add.s   $f4, $f16, $f18            
/* 024A0 80AD1940 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 024A4 80AD1944 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 024A8 80AD1948 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 024AC 80AD194C 44052000 */  mfc1    $a1, $f4                   
/* 024B0 80AD1950 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 024B4 80AD1954 00000000 */  nop
/* 024B8 80AD1958 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 024BC 80AD195C 00000000 */  nop
/* 024C0 80AD1960 46080032 */  c.eq.s  $f0, $f8                   
/* 024C4 80AD1964 00000000 */  nop
/* 024C8 80AD1968 4502002B */  bc1fl   .L80AD1A18                 
/* 024CC 80AD196C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 024D0 80AD1970 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 024D4 80AD1974 C6100080 */  lwc1    $f16, 0x0080($s0)          ## 00000080
/* 024D8 80AD1978 3C01426C */  lui     $at, 0x426C                ## $at = 426C0000
/* 024DC 80AD197C 44812000 */  mtc1    $at, $f4                   ## $f4 = 59.00
/* 024E0 80AD1980 46105481 */  sub.s   $f18, $f10, $f16           
/* 024E4 80AD1984 4604903C */  c.lt.s  $f18, $f4                  
/* 024E8 80AD1988 00000000 */  nop
/* 024EC 80AD198C 45020022 */  bc1fl   .L80AD1A18                 
/* 024F0 80AD1990 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 024F4 80AD1994 8E090024 */  lw      $t1, 0x0024($s0)           ## 00000024
/* 024F8 80AD1998 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFF4
/* 024FC 80AD199C 240A0096 */  addiu   $t2, $zero, 0x0096         ## $t2 = 00000096
/* 02500 80AD19A0 ACA90000 */  sw      $t1, 0x0000($a1)           ## FFFFFFF4
/* 02504 80AD19A4 8E080028 */  lw      $t0, 0x0028($s0)           ## 00000028
/* 02508 80AD19A8 240B0064 */  addiu   $t3, $zero, 0x0064         ## $t3 = 00000064
/* 0250C 80AD19AC 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 02510 80AD19B0 ACA80004 */  sw      $t0, 0x0004($a1)           ## FFFFFFF8
/* 02514 80AD19B4 8E09002C */  lw      $t1, 0x002C($s0)           ## 0000002C
/* 02518 80AD19B8 3C0642A0 */  lui     $a2, 0x42A0                ## $a2 = 42A00000
/* 0251C 80AD19BC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02520 80AD19C0 ACA90008 */  sw      $t1, 0x0008($a1)           ## FFFFFFFC
/* 02524 80AD19C4 C6060080 */  lwc1    $f6, 0x0080($s0)           ## 00000080
/* 02528 80AD19C8 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 0252C 80AD19CC AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 02530 80AD19D0 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 02534 80AD19D4 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 02538 80AD19D8 0C00CD20 */  jal     func_80033480              
/* 0253C 80AD19DC E7A60038 */  swc1    $f6, 0x0038($sp)           
/* 02540 80AD19E0 3C0180AD */  lui     $at, %hi(D_80AD2954)       ## $at = 80AD0000
/* 02544 80AD19E4 C4282954 */  lwc1    $f8, %lo(D_80AD2954)($at)  
/* 02548 80AD19E8 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 0254C 80AD19EC 44815000 */  mtc1    $at, $f10                  ## $f10 = 2.00
/* 02550 80AD19F0 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 02554 80AD19F4 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 02558 80AD19F8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 0255C 80AD19FC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02560 80AD1A00 27A60034 */  addiu   $a2, $sp, 0x0034           ## $a2 = FFFFFFF4
/* 02564 80AD1A04 3C074296 */  lui     $a3, 0x4296                ## $a3 = 42960000
/* 02568 80AD1A08 E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 0256C 80AD1A0C 0C2B3DE2 */  jal     func_80ACF788              
/* 02570 80AD1A10 E7AA0018 */  swc1    $f10, 0x0018($sp)          
/* 02574 80AD1A14 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
.L80AD1A18:
/* 02578 80AD1A18 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 0257C 80AD1A1C 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 02580 80AD1A20 4602003C */  c.lt.s  $f0, $f2                   
/* 02584 80AD1A24 00000000 */  nop
/* 02588 80AD1A28 45020006 */  bc1fl   .L80AD1A44                 
/* 0258C 80AD1A2C 8E0E02D4 */  lw      $t6, 0x02D4($s0)           ## 000002D4
/* 02590 80AD1A30 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.25
/* 02594 80AD1A34 00000000 */  nop
/* 02598 80AD1A38 46100480 */  add.s   $f18, $f0, $f16            
/* 0259C 80AD1A3C E6120068 */  swc1    $f18, 0x0068($s0)          ## 00000068
/* 025A0 80AD1A40 8E0E02D4 */  lw      $t6, 0x02D4($s0)           ## 000002D4
.L80AD1A44:
/* 025A4 80AD1A44 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 025A8 80AD1A48 1DE00012 */  bgtz    $t7, .L80AD1A94            
/* 025AC 80AD1A4C AE0F02D4 */  sw      $t7, 0x02D4($s0)           ## 000002D4
/* 025B0 80AD1A50 921900AF */  lbu     $t9, 0x00AF($s0)           ## 000000AF
/* 025B4 80AD1A54 57200006 */  bnel    $t9, $zero, .L80AD1A70     
/* 025B8 80AD1A58 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 025BC 80AD1A5C 0C2B46AA */  jal     func_80AD1AA8              
/* 025C0 80AD1A60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025C4 80AD1A64 1000000C */  beq     $zero, $zero, .L80AD1A98   
/* 025C8 80AD1A68 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 025CC 80AD1A6C 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
.L80AD1A70:
/* 025D0 80AD1A70 05010006 */  bgez    $t0, .L80AD1A8C            
/* 025D4 80AD1A74 00000000 */  nop
/* 025D8 80AD1A78 0C2B43CE */  jal     func_80AD0F38              
/* 025DC 80AD1A7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025E0 80AD1A80 2409003C */  addiu   $t1, $zero, 0x003C         ## $t1 = 0000003C
/* 025E4 80AD1A84 10000003 */  beq     $zero, $zero, .L80AD1A94   
/* 025E8 80AD1A88 A60902F6 */  sh      $t1, 0x02F6($s0)           ## 000002F6
.L80AD1A8C:
/* 025EC 80AD1A8C 0C2B3FAC */  jal     func_80ACFEB0              
/* 025F0 80AD1A90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AD1A94:
/* 025F4 80AD1A94 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AD1A98:
/* 025F8 80AD1A98 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 025FC 80AD1A9C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 02600 80AD1AA0 03E00008 */  jr      $ra                        
/* 02604 80AD1AA4 00000000 */  nop


