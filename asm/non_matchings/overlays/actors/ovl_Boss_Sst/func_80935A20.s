.late_rodata
glabel D_80937A5C
 .word 0x3D75C28F
glabel D_80937A60
    .float 0.12
    .balign 4

glabel D_80937A64
 .word 0x3D75C28F
glabel D_80937A68
    .float 0.12
    .balign 4

.text
glabel func_80935A20
/* 09450 80935A20 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 09454 80935A24 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 09458 80935A28 28A1000B */  slti    $at, $a1, 0x000B           
/* 0945C 80935A2C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 09460 80935A30 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 09464 80935A34 10200025 */  beq     $at, $zero, .L80935ACC     
/* 09468 80935A38 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 0946C 80935A3C 8C8E03F0 */  lw      $t6, 0x03F0($a0)           ## 000003F0
/* 09470 80935A40 00057980 */  sll     $t7, $a1,  6               
/* 09474 80935A44 0005C080 */  sll     $t8, $a1,  2               
/* 09478 80935A48 01CF1821 */  addu    $v1, $t6, $t7              
/* 0947C 80935A4C 84790030 */  lh      $t9, 0x0030($v1)           ## 00000030
/* 09480 80935A50 0305C021 */  addu    $t8, $t8, $a1              
/* 09484 80935A54 0018C0C0 */  sll     $t8, $t8,  3               
/* 09488 80935A58 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 0948C 80935A5C 00988021 */  addu    $s0, $a0, $t8              
/* 09490 80935A60 24630030 */  addiu   $v1, $v1, 0x0030           ## $v1 = 00000030
/* 09494 80935A64 468021A0 */  cvt.s.w $f6, $f4                   
/* 09498 80935A68 26100700 */  addiu   $s0, $s0, 0x0700           ## $s0 = 00000700
/* 0949C 80935A6C 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 094A0 80935A70 E6060000 */  swc1    $f6, 0x0000($s0)           ## 00000700
/* 094A4 80935A74 84680002 */  lh      $t0, 0x0002($v1)           ## 00000032
/* 094A8 80935A78 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 094AC 80935A7C 00000000 */  nop
/* 094B0 80935A80 468042A0 */  cvt.s.w $f10, $f8                  
/* 094B4 80935A84 E60A0004 */  swc1    $f10, 0x0004($s0)          ## 00000704
/* 094B8 80935A88 84690004 */  lh      $t1, 0x0004($v1)           ## 00000034
/* 094BC 80935A8C 44898000 */  mtc1    $t1, $f16                  ## $f16 = 0.00
/* 094C0 80935A90 00000000 */  nop
/* 094C4 80935A94 468084A0 */  cvt.s.w $f18, $f16                 
/* 094C8 80935A98 14A0003E */  bne     $a1, $zero, .L80935B94     
/* 094CC 80935A9C E6120008 */  swc1    $f18, 0x0008($s0)          ## 00000708
/* 094D0 80935AA0 44810000 */  mtc1    $at, $f0                   ## $f0 = 25.00
/* 094D4 80935AA4 C6040000 */  lwc1    $f4, 0x0000($s0)           ## 00000700
/* 094D8 80935AA8 C6080004 */  lwc1    $f8, 0x0004($s0)           ## 00000704
/* 094DC 80935AAC C6100008 */  lwc1    $f16, 0x0008($s0)          ## 00000708
/* 094E0 80935AB0 46002181 */  sub.s   $f6, $f4, $f0              
/* 094E4 80935AB4 46004281 */  sub.s   $f10, $f8, $f0             
/* 094E8 80935AB8 E6060000 */  swc1    $f6, 0x0000($s0)           ## 00000700
/* 094EC 80935ABC 46008481 */  sub.s   $f18, $f16, $f0            
/* 094F0 80935AC0 E60A0004 */  swc1    $f10, 0x0004($s0)          ## 00000704
/* 094F4 80935AC4 10000033 */  beq     $zero, $zero, .L80935B94   
/* 094F8 80935AC8 E6120008 */  swc1    $f18, 0x0008($s0)          ## 00000708
.L80935ACC:
/* 094FC 80935ACC 8E2303F0 */  lw      $v1, 0x03F0($s1)           ## 000003F0
/* 09500 80935AD0 24A4FFF5 */  addiu   $a0, $a1, 0xFFF5           ## $a0 = FFFFFFF5
/* 09504 80935AD4 308A0001 */  andi    $t2, $a0, 0x0001           ## $t2 = 00000001
/* 09508 80935AD8 11400003 */  beq     $t2, $zero, .L80935AE8     
/* 0950C 80935ADC 24630030 */  addiu   $v1, $v1, 0x0030           ## $v1 = 00000060
/* 09510 80935AE0 10000002 */  beq     $zero, $zero, .L80935AEC   
/* 09514 80935AE4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80935AE8:
/* 09518 80935AE8 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L80935AEC:
/* 0951C 80935AEC 44822000 */  mtc1    $v0, $f4                   ## $f4 = NaN
/* 09520 80935AF0 846C0000 */  lh      $t4, 0x0000($v1)           ## 00000060
/* 09524 80935AF4 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 09528 80935AF8 468021A0 */  cvt.s.w $f6, $f4                   
/* 0952C 80935AFC 44810000 */  mtc1    $at, $f0                   ## $f0 = 25.00
/* 09530 80935B00 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 09534 80935B04 00055880 */  sll     $t3, $a1,  2               
/* 09538 80935B08 01655821 */  addu    $t3, $t3, $a1              
/* 0953C 80935B0C 46805420 */  cvt.s.w $f16, $f10                 
/* 09540 80935B10 46003202 */  mul.s   $f8, $f6, $f0              
/* 09544 80935B14 000B58C0 */  sll     $t3, $t3,  3               
/* 09548 80935B18 022B8021 */  addu    $s0, $s1, $t3              
/* 0954C 80935B1C 308D0002 */  andi    $t5, $a0, 0x0002           ## $t5 = 00000000
/* 09550 80935B20 26100700 */  addiu   $s0, $s0, 0x0700           ## $s0 = 00000E00
/* 09554 80935B24 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
/* 09558 80935B28 46104480 */  add.s   $f18, $f8, $f16            
/* 0955C 80935B2C 11A00003 */  beq     $t5, $zero, .L80935B3C     
/* 09560 80935B30 E6120000 */  swc1    $f18, 0x0000($s0)          ## 00000E00
/* 09564 80935B34 10000001 */  beq     $zero, $zero, .L80935B3C   
/* 09568 80935B38 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80935B3C:
/* 0956C 80935B3C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 09570 80935B40 846E0002 */  lh      $t6, 0x0002($v1)           ## 00000062
/* 09574 80935B44 308F0004 */  andi    $t7, $a0, 0x0004           ## $t7 = 00000004
/* 09578 80935B48 468021A0 */  cvt.s.w $f6, $f4                   
/* 0957C 80935B4C 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 09580 80935B50 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
/* 09584 80935B54 46804420 */  cvt.s.w $f16, $f8                  
/* 09588 80935B58 46003282 */  mul.s   $f10, $f6, $f0             
/* 0958C 80935B5C 46105480 */  add.s   $f18, $f10, $f16           
/* 09590 80935B60 11E00003 */  beq     $t7, $zero, .L80935B70     
/* 09594 80935B64 E6120004 */  swc1    $f18, 0x0004($s0)          ## 00000E04
/* 09598 80935B68 10000001 */  beq     $zero, $zero, .L80935B70   
/* 0959C 80935B6C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80935B70:
/* 095A0 80935B70 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 095A4 80935B74 84780004 */  lh      $t8, 0x0004($v1)           ## 00000064
/* 095A8 80935B78 468021A0 */  cvt.s.w $f6, $f4                   
/* 095AC 80935B7C 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 095B0 80935B80 00000000 */  nop
/* 095B4 80935B84 46805420 */  cvt.s.w $f16, $f10                 
/* 095B8 80935B88 46003202 */  mul.s   $f8, $f6, $f0              
/* 095BC 80935B8C 46104480 */  add.s   $f18, $f8, $f16            
/* 095C0 80935B90 E6120008 */  swc1    $f18, 0x0008($s0)          ## 00000E08
.L80935B94:
/* 095C4 80935B94 C6040000 */  lwc1    $f4, 0x0000($s0)           ## 00000E00
/* 095C8 80935B98 C6260024 */  lwc1    $f6, 0x0024($s1)           ## 00000024
/* 095CC 80935B9C C6080004 */  lwc1    $f8, 0x0004($s0)           ## 00000E04
/* 095D0 80935BA0 46062281 */  sub.s   $f10, $f4, $f6             
/* 095D4 80935BA4 C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000E08
/* 095D8 80935BA8 E60A0000 */  swc1    $f10, 0x0000($s0)          ## 00000E00
/* 095DC 80935BAC C6300028 */  lwc1    $f16, 0x0028($s1)          ## 00000028
/* 095E0 80935BB0 46104481 */  sub.s   $f18, $f8, $f16            
/* 095E4 80935BB4 E6120004 */  swc1    $f18, 0x0004($s0)          ## 00000E04
/* 095E8 80935BB8 C626002C */  lwc1    $f6, 0x002C($s1)           ## 0000002C
/* 095EC 80935BBC A6000022 */  sh      $zero, 0x0022($s0)         ## 00000E22
/* 095F0 80935BC0 46062281 */  sub.s   $f10, $f4, $f6             
/* 095F4 80935BC4 E60A0008 */  swc1    $f10, 0x0008($s0)          ## 00000E08
/* 095F8 80935BC8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 095FC 80935BCC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 09600 80935BD0 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 09604 80935BD4 44814000 */  mtc1    $at, $f8                   ## $f8 = 65536.00
/* 09608 80935BD8 00000000 */  nop
/* 0960C 80935BDC 46080402 */  mul.s   $f16, $f0, $f8             
/* 09610 80935BE0 4600848D */  trunc.w.s $f18, $f16                 
/* 09614 80935BE4 44089000 */  mfc1    $t0, $f18                  
/* 09618 80935BE8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0961C 80935BEC A6080018 */  sh      $t0, 0x0018($s0)           ## 00000E18
/* 09620 80935BF0 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 09624 80935BF4 44812000 */  mtc1    $at, $f4                   ## $f4 = 65536.00
/* 09628 80935BF8 00000000 */  nop
/* 0962C 80935BFC 46040182 */  mul.s   $f6, $f0, $f4              
/* 09630 80935C00 4600328D */  trunc.w.s $f10, $f6                  
/* 09634 80935C04 440A5000 */  mfc1    $t2, $f10                  
/* 09638 80935C08 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0963C 80935C0C A60A001A */  sh      $t2, 0x001A($s0)           ## 00000E1A
/* 09640 80935C10 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 09644 80935C14 44814000 */  mtc1    $at, $f8                   ## $f8 = 65536.00
/* 09648 80935C18 240D0078 */  addiu   $t5, $zero, 0x0078         ## $t5 = 00000078
/* 0964C 80935C1C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 09650 80935C20 46080402 */  mul.s   $f16, $f0, $f8             
/* 09654 80935C24 A20D0024 */  sb      $t5, 0x0024($s0)           ## 00000E24
/* 09658 80935C28 A60E0020 */  sh      $t6, 0x0020($s0)           ## 00000E20
/* 0965C 80935C2C 4600848D */  trunc.w.s $f18, $f16                 
/* 09660 80935C30 440C9000 */  mfc1    $t4, $f18                  
/* 09664 80935C34 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 09668 80935C38 A60C001C */  sh      $t4, 0x001C($s0)           ## 00000E1C
/* 0966C 80935C3C 3C018093 */  lui     $at, %hi(D_80937A5C)       ## $at = 80930000
/* 09670 80935C40 C4247A5C */  lwc1    $f4, %lo(D_80937A5C)($at)  
/* 09674 80935C44 3C018093 */  lui     $at, %hi(D_80937A60)       ## $at = 80930000
/* 09678 80935C48 C42A7A60 */  lwc1    $f10, %lo(D_80937A60)($at) 
/* 0967C 80935C4C 46040182 */  mul.s   $f6, $f0, $f4              
/* 09680 80935C50 C6100000 */  lwc1    $f16, 0x0000($s0)          ## 00000E00
/* 09684 80935C54 460A3200 */  add.s   $f8, $f6, $f10             
/* 09688 80935C58 46104482 */  mul.s   $f18, $f8, $f16            
/* 0968C 80935C5C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 09690 80935C60 E612000C */  swc1    $f18, 0x000C($s0)          ## 00000E0C
/* 09694 80935C64 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 09698 80935C68 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 0969C 80935C6C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 096A0 80935C70 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 096A4 80935C74 46040182 */  mul.s   $f6, $f0, $f4              
/* 096A8 80935C78 460A3200 */  add.s   $f8, $f6, $f10             
/* 096AC 80935C7C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 096B0 80935C80 E6080010 */  swc1    $f8, 0x0010($s0)           ## 00000E10
/* 096B4 80935C84 3C018093 */  lui     $at, %hi(D_80937A64)       ## $at = 80930000
/* 096B8 80935C88 C4307A64 */  lwc1    $f16, %lo(D_80937A64)($at) 
/* 096BC 80935C8C 3C018093 */  lui     $at, %hi(D_80937A68)       ## $at = 80930000
/* 096C0 80935C90 C4247A68 */  lwc1    $f4, %lo(D_80937A68)($at)  
/* 096C4 80935C94 46100482 */  mul.s   $f18, $f0, $f16            
/* 096C8 80935C98 C60A0008 */  lwc1    $f10, 0x0008($s0)          ## 00000E08
/* 096CC 80935C9C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 096D0 80935CA0 240F0FA0 */  addiu   $t7, $zero, 0x0FA0         ## $t7 = 00000FA0
/* 096D4 80935CA4 A60F001E */  sh      $t7, 0x001E($s0)           ## 00000E1E
/* 096D8 80935CA8 30B80001 */  andi    $t8, $a1, 0x0001           ## $t8 = 00000000
/* 096DC 80935CAC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 096E0 80935CB0 46049180 */  add.s   $f6, $f18, $f4             
/* 096E4 80935CB4 460A3202 */  mul.s   $f8, $f6, $f10             
/* 096E8 80935CB8 17000003 */  bne     $t8, $zero, .L80935CC8     
/* 096EC 80935CBC E6080014 */  swc1    $f8, 0x0014($s0)           ## 00000E14
/* 096F0 80935CC0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 096F4 80935CC4 24050874 */  addiu   $a1, $zero, 0x0874         ## $a1 = 00000874
.L80935CC8:
/* 096F8 80935CC8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 096FC 80935CCC 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 09700 80935CD0 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 09704 80935CD4 03E00008 */  jr      $ra                        
/* 09708 80935CD8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


