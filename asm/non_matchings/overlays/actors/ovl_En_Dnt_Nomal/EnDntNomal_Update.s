.late_rodata
glabel jtbl_809F606C
.word L809F57B0
.word L809F56EC
.word L809F5714
.word L809F576C
.word L809F5784
.word L809F5794
.word L809F57A4

.text
glabel EnDntNomal_Update
/* 02360 809F5620 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 02364 809F5624 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02368 809F5628 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0236C 809F562C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 02370 809F5630 84820258 */  lh      $v0, 0x0258($a0)           ## 00000258
/* 02374 809F5634 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02378 809F5638 3C0B809F */  lui     $t3, %hi(func_809F49A4)    ## $t3 = 809F0000
/* 0237C 809F563C 10400002 */  beq     $v0, $zero, .L809F5648     
/* 02380 809F5640 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 02384 809F5644 A60E0258 */  sh      $t6, 0x0258($s0)           ## 00000258
.L809F5648:
/* 02388 809F5648 8602025A */  lh      $v0, 0x025A($s0)           ## 0000025A
/* 0238C 809F564C 10400002 */  beq     $v0, $zero, .L809F5658     
/* 02390 809F5650 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 02394 809F5654 A60F025A */  sh      $t7, 0x025A($s0)           ## 0000025A
.L809F5658:
/* 02398 809F5658 86020264 */  lh      $v0, 0x0264($s0)           ## 00000264
/* 0239C 809F565C 10400002 */  beq     $v0, $zero, .L809F5668     
/* 023A0 809F5660 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 023A4 809F5664 A6180264 */  sh      $t8, 0x0264($s0)           ## 00000264
.L809F5668:
/* 023A8 809F5668 8602025C */  lh      $v0, 0x025C($s0)           ## 0000025C
/* 023AC 809F566C 10400002 */  beq     $v0, $zero, .L809F5678     
/* 023B0 809F5670 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 023B4 809F5674 A619025C */  sh      $t9, 0x025C($s0)           ## 0000025C
.L809F5678:
/* 023B8 809F5678 8602025E */  lh      $v0, 0x025E($s0)           ## 0000025E
/* 023BC 809F567C 10400002 */  beq     $v0, $zero, .L809F5688     
/* 023C0 809F5680 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 023C4 809F5684 A608025E */  sh      $t0, 0x025E($s0)           ## 0000025E
.L809F5688:
/* 023C8 809F5688 86020260 */  lh      $v0, 0x0260($s0)           ## 00000260
/* 023CC 809F568C 10400002 */  beq     $v0, $zero, .L809F5698     
/* 023D0 809F5690 2449FFFF */  addiu   $t1, $v0, 0xFFFF           ## $t1 = FFFFFFFF
/* 023D4 809F5694 A6090260 */  sh      $t1, 0x0260($s0)           ## 00000260
.L809F5698:
/* 023D8 809F5698 8E0C0214 */  lw      $t4, 0x0214($s0)           ## 00000214
/* 023DC 809F569C 860A00B4 */  lh      $t2, 0x00B4($s0)           ## 000000B4
/* 023E0 809F56A0 256B49A4 */  addiu   $t3, $t3, %lo(func_809F49A4) ## $t3 = 809F49A4
/* 023E4 809F56A4 116C0003 */  beq     $t3, $t4, .L809F56B4       
/* 023E8 809F56A8 A60A0030 */  sh      $t2, 0x0030($s0)           ## 00000030
/* 023EC 809F56AC 860D00B6 */  lh      $t5, 0x00B6($s0)           ## 000000B6
/* 023F0 809F56B0 A60D0032 */  sh      $t5, 0x0032($s0)           ## 00000032
.L809F56B4:
/* 023F4 809F56B4 860E0262 */  lh      $t6, 0x0262($s0)           ## 00000262
/* 023F8 809F56B8 8618026A */  lh      $t8, 0x026A($s0)           ## 0000026A
/* 023FC 809F56BC 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000000
/* 02400 809F56C0 1300003B */  beq     $t8, $zero, .L809F57B0     
/* 02404 809F56C4 A60F0262 */  sh      $t7, 0x0262($s0)           ## 00000262
/* 02408 809F56C8 96190270 */  lhu     $t9, 0x0270($s0)           ## 00000270
/* 0240C 809F56CC 2F210007 */  sltiu   $at, $t9, 0x0007           
/* 02410 809F56D0 10200037 */  beq     $at, $zero, .L809F57B0     
/* 02414 809F56D4 0019C880 */  sll     $t9, $t9,  2               
/* 02418 809F56D8 3C01809F */  lui     $at, %hi(jtbl_809F606C)       ## $at = 809F0000
/* 0241C 809F56DC 00390821 */  addu    $at, $at, $t9              
/* 02420 809F56E0 8C39606C */  lw      $t9, %lo(jtbl_809F606C)($at)  
/* 02424 809F56E4 03200008 */  jr      $t9                        
/* 02428 809F56E8 00000000 */  nop
glabel L809F56EC
/* 0242C 809F56EC 92080278 */  lbu     $t0, 0x0278($s0)           ## 00000278
/* 02430 809F56F0 3C0A809F */  lui     $t2, %hi(func_809F44FC)    ## $t2 = 809F0000
/* 02434 809F56F4 3C09809F */  lui     $t1, %hi(func_809F43F0)    ## $t1 = 809F0000
/* 02438 809F56F8 15000004 */  bne     $t0, $zero, .L809F570C     
/* 0243C 809F56FC 254A44FC */  addiu   $t2, $t2, %lo(func_809F44FC) ## $t2 = 809F44FC
/* 02440 809F5700 252943F0 */  addiu   $t1, $t1, %lo(func_809F43F0) ## $t1 = 809F43F0
/* 02444 809F5704 1000002A */  beq     $zero, $zero, .L809F57B0   
/* 02448 809F5708 AE090214 */  sw      $t1, 0x0214($s0)           ## 00000214
.L809F570C:
/* 0244C 809F570C 10000028 */  beq     $zero, $zero, .L809F57B0   
/* 02450 809F5710 AE0A0214 */  sw      $t2, 0x0214($s0)           ## 00000214
glabel L809F5714
/* 02454 809F5714 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 02458 809F5718 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 0245C 809F571C A6000274 */  sh      $zero, 0x0274($s0)         ## 00000274
/* 02460 809F5720 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 02464 809F5724 A20000AE */  sb      $zero, 0x00AE($s0)         ## 000000AE
/* 02468 809F5728 860B026A */  lh      $t3, 0x026A($s0)           ## 0000026A
/* 0246C 809F572C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 02470 809F5730 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 02474 809F5734 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 02478 809F5738 4600048D */  trunc.w.s $f18, $f0                  
/* 0247C 809F573C 3C0B809F */  lui     $t3, %hi(func_809F4730)    ## $t3 = 809F0000
/* 02480 809F5740 256B4730 */  addiu   $t3, $t3, %lo(func_809F4730) ## $t3 = 809F4730
/* 02484 809F5744 468021A0 */  cvt.s.w $f6, $f4                   
/* 02488 809F5748 44099000 */  mfc1    $t1, $f18                  
/* 0248C 809F574C AE0B0214 */  sw      $t3, 0x0214($s0)           ## 00000214
/* 02490 809F5750 46083282 */  mul.s   $f10, $f6, $f8             
/* 02494 809F5754 4600540D */  trunc.w.s $f16, $f10                 
/* 02498 809F5758 440F8000 */  mfc1    $t7, $f16                  
/* 0249C 809F575C 00000000 */  nop
/* 024A0 809F5760 012F5021 */  addu    $t2, $t1, $t7              
/* 024A4 809F5764 10000012 */  beq     $zero, $zero, .L809F57B0   
/* 024A8 809F5768 A60A0264 */  sh      $t2, 0x0264($s0)           ## 00000264
glabel L809F576C
/* 024AC 809F576C 3C0D809F */  lui     $t5, %hi(func_809F4730)    ## $t5 = 809F0000
/* 024B0 809F5770 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 024B4 809F5774 25AD4730 */  addiu   $t5, $t5, %lo(func_809F4730) ## $t5 = 809F4730
/* 024B8 809F5778 A60C0274 */  sh      $t4, 0x0274($s0)           ## 00000274
/* 024BC 809F577C 1000000C */  beq     $zero, $zero, .L809F57B0   
/* 024C0 809F5780 AE0D0214 */  sw      $t5, 0x0214($s0)           ## 00000214
glabel L809F5784
/* 024C4 809F5784 3C0E809F */  lui     $t6, %hi(func_809F4E18)    ## $t6 = 809F0000
/* 024C8 809F5788 25CE4E18 */  addiu   $t6, $t6, %lo(func_809F4E18) ## $t6 = 809F4E18
/* 024CC 809F578C 10000008 */  beq     $zero, $zero, .L809F57B0   
/* 024D0 809F5790 AE0E0214 */  sw      $t6, 0x0214($s0)           ## 00000214
glabel L809F5794
/* 024D4 809F5794 3C18809F */  lui     $t8, %hi(func_809F5478)    ## $t8 = 809F0000
/* 024D8 809F5798 27185478 */  addiu   $t8, $t8, %lo(func_809F5478) ## $t8 = 809F5478
/* 024DC 809F579C 10000004 */  beq     $zero, $zero, .L809F57B0   
/* 024E0 809F57A0 AE180214 */  sw      $t8, 0x0214($s0)           ## 00000214
glabel L809F57A4
/* 024E4 809F57A4 3C19809F */  lui     $t9, %hi(func_809F4BA4)    ## $t9 = 809F0000
/* 024E8 809F57A8 27394BA4 */  addiu   $t9, $t9, %lo(func_809F4BA4) ## $t9 = 809F4BA4
/* 024EC 809F57AC AE190214 */  sw      $t9, 0x0214($s0)           ## 00000214
glabel L809F57B0
.L809F57B0:
/* 024F0 809F57B0 86080270 */  lh      $t0, 0x0270($s0)           ## 00000270
/* 024F4 809F57B4 51000003 */  beql    $t0, $zero, .L809F57C4     
/* 024F8 809F57B8 86090260 */  lh      $t1, 0x0260($s0)           ## 00000260
/* 024FC 809F57BC A6000270 */  sh      $zero, 0x0270($s0)         ## 00000270
/* 02500 809F57C0 86090260 */  lh      $t1, 0x0260($s0)           ## 00000260
.L809F57C4:
/* 02504 809F57C4 55200011 */  bnel    $t1, $zero, .L809F580C     
/* 02508 809F57C8 8E190214 */  lw      $t9, 0x0214($s0)           ## 00000214
/* 0250C 809F57CC 860F0268 */  lh      $t7, 0x0268($s0)           ## 00000268
/* 02510 809F57D0 25EA0001 */  addiu   $t2, $t7, 0x0001           ## $t2 = 00000001
/* 02514 809F57D4 A60A0268 */  sh      $t2, 0x0268($s0)           ## 00000268
/* 02518 809F57D8 860B0268 */  lh      $t3, 0x0268($s0)           ## 00000268
/* 0251C 809F57DC 29610003 */  slti    $at, $t3, 0x0003           
/* 02520 809F57E0 14200009 */  bne     $at, $zero, .L809F5808     
/* 02524 809F57E4 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 02528 809F57E8 44816000 */  mtc1    $at, $f12                  ## $f12 = 60.00
/* 0252C 809F57EC 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 02530 809F57F0 A6000268 */  sh      $zero, 0x0268($s0)         ## 00000268
/* 02534 809F57F4 4600010D */  trunc.w.s $f4, $f0                   
/* 02538 809F57F8 44182000 */  mfc1    $t8, $f4                   
/* 0253C 809F57FC 00000000 */  nop
/* 02540 809F5800 27190014 */  addiu   $t9, $t8, 0x0014           ## $t9 = 00000014
/* 02544 809F5804 A6190260 */  sh      $t9, 0x0260($s0)           ## 00000260
.L809F5808:
/* 02548 809F5808 8E190214 */  lw      $t9, 0x0214($s0)           ## 00000214
.L809F580C:
/* 0254C 809F580C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02550 809F5810 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 02554 809F5814 0320F809 */  jalr    $ra, $t9                   
/* 02558 809F5818 00000000 */  nop
/* 0255C 809F581C 0C00B638 */  jal     Actor_MoveForward
              
/* 02560 809F5820 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02564 809F5824 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02568 809F5828 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 0256C 809F582C 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 02570 809F5830 44813000 */  mtc1    $at, $f6                   ## $f6 = 60.00
/* 02574 809F5834 2408001D */  addiu   $t0, $zero, 0x001D         ## $t0 = 0000001D
/* 02578 809F5838 44060000 */  mfc1    $a2, $f0                   
/* 0257C 809F583C 44070000 */  mfc1    $a3, $f0                   
/* 02580 809F5840 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 02584 809F5844 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 02588 809F5848 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0258C 809F584C 0C00B92D */  jal     func_8002E4B4              
/* 02590 809F5850 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 02594 809F5854 8609026A */  lh      $t1, 0x026A($s0)           ## 0000026A
/* 02598 809F5858 26060314 */  addiu   $a2, $s0, 0x0314           ## $a2 = 00000314
/* 0259C 809F585C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000314
/* 025A0 809F5860 15200011 */  bne     $t1, $zero, .L809F58A8     
/* 025A4 809F5864 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025A8 809F5868 26040294 */  addiu   $a0, $s0, 0x0294           ## $a0 = 00000294
/* 025AC 809F586C 260F024C */  addiu   $t7, $s0, 0x024C           ## $t7 = 0000024C
/* 025B0 809F5870 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 025B4 809F5874 AFA4002C */  sw      $a0, 0x002C($sp)           
/* 025B8 809F5878 26050228 */  addiu   $a1, $s0, 0x0228           ## $a1 = 00000228
/* 025BC 809F587C 26060234 */  addiu   $a2, $s0, 0x0234           ## $a2 = 00000234
/* 025C0 809F5880 0C0189CD */  jal     Collider_SetQuadVertices              
/* 025C4 809F5884 26070240 */  addiu   $a3, $s0, 0x0240           ## $a3 = 00000240
/* 025C8 809F5888 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 025CC 809F588C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 025D0 809F5890 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 025D4 809F5894 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 025D8 809F5898 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 025DC 809F589C 00812821 */  addu    $a1, $a0, $at              
/* 025E0 809F58A0 1000000C */  beq     $zero, $zero, .L809F58D4   
/* 025E4 809F58A4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809F58A8:
/* 025E8 809F58A8 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 025EC 809F58AC AFA6002C */  sw      $a2, 0x002C($sp)           
/* 025F0 809F58B0 920B0218 */  lbu     $t3, 0x0218($s0)           ## 00000218
/* 025F4 809F58B4 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 025F8 809F58B8 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 025FC 809F58BC 11600004 */  beq     $t3, $zero, .L809F58D0     
/* 02600 809F58C0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02604 809F58C4 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02608 809F58C8 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 0260C 809F58CC 00812821 */  addu    $a1, $a0, $at              
.L809F58D0:
/* 02610 809F58D0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809F58D4:
/* 02614 809F58D4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02618 809F58D8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0261C 809F58DC 03E00008 */  jr      $ra                        
/* 02620 809F58E0 00000000 */  nop
