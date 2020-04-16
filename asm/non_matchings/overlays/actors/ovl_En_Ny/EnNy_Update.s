.late_rodata
glabel D_80ABE4D0
 .word 0x3FAA3D71

.text
glabel EnNy_Update
/* 008EC 80ABD49C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 008F0 80ABD4A0 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 008F4 80ABD4A4 AFB30038 */  sw      $s3, 0x0038($sp)           
/* 008F8 80ABD4A8 AFB20034 */  sw      $s2, 0x0034($sp)           
/* 008FC 80ABD4AC AFB10030 */  sw      $s1, 0x0030($sp)           
/* 00900 80ABD4B0 AFB0002C */  sw      $s0, 0x002C($sp)           
/* 00904 80ABD4B4 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 00908 80ABD4B8 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 0090C 80ABD4BC 848E01C8 */  lh      $t6, 0x01C8($a0)           ## 000001C8
/* 00910 80ABD4C0 848201CA */  lh      $v0, 0x01CA($a0)           ## 000001CA
/* 00914 80ABD4C4 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 00918 80ABD4C8 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.25
/* 0091C 80ABD4CC C48401E0 */  lwc1    $f4, 0x01E0($a0)           ## 000001E0
/* 00920 80ABD4D0 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00924 80ABD4D4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00928 80ABD4D8 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 0092C 80ABD4DC A48F01C8 */  sh      $t7, 0x01C8($a0)           ## 000001C8
/* 00930 80ABD4E0 10400003 */  beq     $v0, $zero, .L80ABD4F0     
/* 00934 80ABD4E4 46062501 */  sub.s   $f20, $f4, $f6             
/* 00938 80ABD4E8 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 0093C 80ABD4EC A49801CA */  sh      $t8, 0x01CA($a0)           ## 000001CA
.L80ABD4F0:
/* 00940 80ABD4F0 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00944 80ABD4F4 0C00B56E */  jal     Actor_SetHeight
              
/* 00948 80ABD4F8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0094C 80ABD4FC 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00950 80ABD500 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00954 80ABD504 0C00B58B */  jal     Actor_SetScale
              
/* 00958 80ABD508 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0095C 80ABD50C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00960 80ABD510 44810000 */  mtc1    $at, $f0                   ## $f0 = 10.00
/* 00964 80ABD514 3C0180AC */  lui     $at, %hi(D_80ABE4D0)       ## $at = 80AC0000
/* 00968 80ABD518 C428E4D0 */  lwc1    $f8, %lo(D_80ABE4D0)($at)  
/* 0096C 80ABD51C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00970 80ABD520 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 00974 80ABD524 46144282 */  mul.s   $f10, $f8, $f20            
/* 00978 80ABD528 8E59016C */  lw      $t9, 0x016C($s2)           ## 0000016C
/* 0097C 80ABD52C 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00980 80ABD530 44813000 */  mtc1    $at, $f6                   ## $f6 = 1000.00
/* 00984 80ABD534 3C0141C0 */  lui     $at, 0x41C0                ## $at = 41C00000
/* 00988 80ABD538 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0098C 80ABD53C 46105480 */  add.s   $f18, $f10, $f16           
/* 00990 80ABD540 44818000 */  mtc1    $at, $f16                  ## $f16 = 24.00
/* 00994 80ABD544 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00998 80ABD548 E7320038 */  swc1    $f18, 0x0038($t9)          ## 00000038
/* 0099C 80ABD54C C64401E8 */  lwc1    $f4, 0x01E8($s2)           ## 000001E8
/* 009A0 80ABD550 864C00B4 */  lh      $t4, 0x00B4($s2)           ## 000000B4
/* 009A4 80ABD554 46062202 */  mul.s   $f8, $f4, $f6              
/* 009A8 80ABD558 44812000 */  mtc1    $at, $f4                   ## $f4 = 12.00
/* 009AC 80ABD55C 46148482 */  mul.s   $f18, $f16, $f20           
/* 009B0 80ABD560 4600428D */  trunc.w.s $f10, $f8                  
/* 009B4 80ABD564 46049580 */  add.s   $f22, $f18, $f4            
/* 009B8 80ABD568 440B5000 */  mfc1    $t3, $f10                  
/* 009BC 80ABD56C 4600B180 */  add.s   $f6, $f22, $f0             
/* 009C0 80ABD570 018B6821 */  addu    $t5, $t4, $t3              
/* 009C4 80ABD574 A64D00B4 */  sh      $t5, 0x00B4($s2)           ## 000000B4
/* 009C8 80ABD578 4600B201 */  sub.s   $f8, $f22, $f0             
/* 009CC 80ABD57C 44053000 */  mfc1    $a1, $f6                   
/* 009D0 80ABD580 44064000 */  mfc1    $a2, $f8                   
/* 009D4 80ABD584 0C2AF4EE */  jal     func_80ABD3B8              
/* 009D8 80ABD588 00000000 */  nop
/* 009DC 80ABD58C 0C00B638 */  jal     Actor_MoveForward
              
/* 009E0 80ABD590 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 009E4 80ABD594 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 009E8 80ABD598 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 009EC 80ABD59C 264401E4 */  addiu   $a0, $s2, 0x01E4           ## $a0 = 000001E4
/* 009F0 80ABD5A0 0C01DE80 */  jal     Math_ApproxF
              
/* 009F4 80ABD5A4 8E4501E8 */  lw      $a1, 0x01E8($s2)           ## 000001E8
/* 009F8 80ABD5A8 8E59014C */  lw      $t9, 0x014C($s2)           ## 0000014C
/* 009FC 80ABD5AC 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00A00 80ABD5B0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00A04 80ABD5B4 0320F809 */  jalr    $ra, $t9                   
/* 00A08 80ABD5B8 00000000 */  nop
/* 00A0C 80ABD5BC C64A0104 */  lwc1    $f10, 0x0104($s2)          ## 00000104
/* 00A10 80ABD5C0 C6520028 */  lwc1    $f18, 0x0028($s2)          ## 00000028
/* 00A14 80ABD5C4 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00A18 80ABD5C8 4481A000 */  mtc1    $at, $f20                  ## $f20 = 20.00
/* 00A1C 80ABD5CC 46165401 */  sub.s   $f16, $f10, $f22           
/* 00A20 80ABD5D0 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00A24 80ABD5D4 44813000 */  mtc1    $at, $f6                   ## $f6 = 60.00
/* 00A28 80ABD5D8 46169101 */  sub.s   $f4, $f18, $f22            
/* 00A2C 80ABD5DC E6500104 */  swc1    $f16, 0x0104($s2)          ## 00000104
/* 00A30 80ABD5E0 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 00A34 80ABD5E4 4406A000 */  mfc1    $a2, $f20                  
/* 00A38 80ABD5E8 E6440028 */  swc1    $f4, 0x0028($s2)           ## 00000028
/* 00A3C 80ABD5EC 4407A000 */  mfc1    $a3, $f20                  
/* 00A40 80ABD5F0 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00A44 80ABD5F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A48 80ABD5F8 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 00A4C 80ABD5FC 0C00B92D */  jal     func_8002E4B4              
/* 00A50 80ABD600 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00A54 80ABD604 C6480028 */  lwc1    $f8, 0x0028($s2)           ## 00000028
/* 00A58 80ABD608 E65601F0 */  swc1    $f22, 0x01F0($s2)          ## 000001F0
/* 00A5C 80ABD60C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00A60 80ABD610 46164280 */  add.s   $f10, $f8, $f22            
/* 00A64 80ABD614 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00A68 80ABD618 0C2AF464 */  jal     func_80ABD190              
/* 00A6C 80ABD61C E64A0028 */  swc1    $f10, 0x0028($s2)          ## 00000028
/* 00A70 80ABD620 10400021 */  beq     $v0, $zero, .L80ABD6A8     
/* 00A74 80ABD624 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 00A78 80ABD628 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00A7C 80ABD62C 02408025 */  or      $s0, $s2, $zero            ## $s0 = 00000000
/* 00A80 80ABD630 24130008 */  addiu   $s3, $zero, 0x0008         ## $s3 = 00000008
.L80ABD634:
/* 00A84 80ABD634 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00A88 80ABD638 4600A306 */  mov.s   $f12, $f20                 
/* 00A8C 80ABD63C C6500024 */  lwc1    $f16, 0x0024($s2)          ## 00000024
/* 00A90 80ABD640 4600A306 */  mov.s   $f12, $f20                 
/* 00A94 80ABD644 46100480 */  add.s   $f18, $f0, $f16            
/* 00A98 80ABD648 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00A9C 80ABD64C E61201F8 */  swc1    $f18, 0x01F8($s0)          ## 000001F8
/* 00AA0 80ABD650 C6440028 */  lwc1    $f4, 0x0028($s2)           ## 00000028
/* 00AA4 80ABD654 4600A306 */  mov.s   $f12, $f20                 
/* 00AA8 80ABD658 46040180 */  add.s   $f6, $f0, $f4              
/* 00AAC 80ABD65C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00AB0 80ABD660 E60601FC */  swc1    $f6, 0x01FC($s0)           ## 000001FC
/* 00AB4 80ABD664 C648002C */  lwc1    $f8, 0x002C($s2)           ## 0000002C
/* 00AB8 80ABD668 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 00ABC 80ABD66C 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = 0000000C
/* 00AC0 80ABD670 46080280 */  add.s   $f10, $f0, $f8             
/* 00AC4 80ABD674 1633FFEF */  bne     $s1, $s3, .L80ABD634       
/* 00AC8 80ABD678 E60A01F4 */  swc1    $f10, 0x01F4($s0)          ## 00000200
/* 00ACC 80ABD67C 3C0F80AC */  lui     $t7, %hi(func_80ABDBB8)    ## $t7 = 80AC0000
/* 00AD0 80ABD680 3C1880AC */  lui     $t8, %hi(func_80ABE040)    ## $t8 = 80AC0000
/* 00AD4 80ABD684 3C0880AC */  lui     $t0, %hi(func_80ABD728)    ## $t0 = 80AC0000
/* 00AD8 80ABD688 25EFDBB8 */  addiu   $t7, $t7, %lo(func_80ABDBB8) ## $t7 = 80ABDBB8
/* 00ADC 80ABD68C 2718E040 */  addiu   $t8, $t8, %lo(func_80ABE040) ## $t8 = 80ABE040
/* 00AE0 80ABD690 2508D728 */  addiu   $t0, $t0, %lo(func_80ABD728) ## $t0 = 80ABD728
/* 00AE4 80ABD694 A64001C8 */  sh      $zero, 0x01C8($s2)         ## 000001C8
/* 00AE8 80ABD698 AE4F0130 */  sw      $t7, 0x0130($s2)           ## 00000130
/* 00AEC 80ABD69C AE580134 */  sw      $t8, 0x0134($s2)           ## 00000134
/* 00AF0 80ABD6A0 10000018 */  beq     $zero, $zero, .L80ABD704   
/* 00AF4 80ABD6A4 AE48014C */  sw      $t0, 0x014C($s2)           ## 0000014C
.L80ABD6A8:
/* 00AF8 80ABD6A8 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.00
/* 00AFC 80ABD6AC C65201E0 */  lwc1    $f18, 0x01E0($s2)          ## 000001E0
/* 00B00 80ABD6B0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00B04 80ABD6B4 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00B08 80ABD6B8 4612803C */  c.lt.s  $f16, $f18                 
/* 00B0C 80ABD6BC 02012821 */  addu    $a1, $s0, $at              
/* 00B10 80ABD6C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000000C
/* 00B14 80ABD6C4 45020004 */  bc1fl   .L80ABD6D8                 
/* 00B18 80ABD6C8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00B1C 80ABD6CC 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00B20 80ABD6D0 26460150 */  addiu   $a2, $s2, 0x0150           ## $a2 = 00000150
/* 00B24 80ABD6D4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80ABD6D8:
/* 00B28 80ABD6D8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00B2C 80ABD6DC 02018821 */  addu    $s1, $s0, $at              
/* 00B30 80ABD6E0 26530150 */  addiu   $s3, $s2, 0x0150           ## $s3 = 00000150
/* 00B34 80ABD6E4 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000150
/* 00B38 80ABD6E8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000001
/* 00B3C 80ABD6EC 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00B40 80ABD6F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000000C
/* 00B44 80ABD6F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000000C
/* 00B48 80ABD6F8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000001
/* 00B4C 80ABD6FC 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00B50 80ABD700 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000150
.L80ABD704:
/* 00B54 80ABD704 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00B58 80ABD708 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00B5C 80ABD70C D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 00B60 80ABD710 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 00B64 80ABD714 8FB10030 */  lw      $s1, 0x0030($sp)           
/* 00B68 80ABD718 8FB20034 */  lw      $s2, 0x0034($sp)           
/* 00B6C 80ABD71C 8FB30038 */  lw      $s3, 0x0038($sp)           
/* 00B70 80ABD720 03E00008 */  jr      $ra                        
/* 00B74 80ABD724 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
