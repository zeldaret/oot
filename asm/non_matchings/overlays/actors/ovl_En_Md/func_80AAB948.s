.late_rodata
glabel D_80AAC588
    .float 0.001

.text
glabel func_80AAB948
/* 016F8 80AAB948 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 016FC 80AAB94C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01700 80AAB950 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01704 80AAB954 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01708 80AAB958 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 0170C 80AAB95C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01710 80AAB960 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 01714 80AAB964 0C2AAA89 */  jal     func_80AAAA24              
/* 01718 80AAB968 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 0171C 80AAB96C 860201E0 */  lh      $v0, 0x01E0($s0)           ## 000001E0
/* 01720 80AAB970 54400042 */  bnel    $v0, $zero, .L80AABA7C     
/* 01724 80AAB974 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01728 80AAB978 8602008A */  lh      $v0, 0x008A($s0)           ## 0000008A
/* 0172C 80AAB97C 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 01730 80AAB980 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 01734 80AAB984 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 01738 80AAB988 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0173C 80AAB98C 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 01740 80AAB990 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 01744 80AAB994 A7A20022 */  sh      $v0, 0x0022($sp)           
/* 01748 80AAB998 C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 0174C 80AAB99C 00022400 */  sll     $a0, $v0, 16               
/* 01750 80AAB9A0 00042403 */  sra     $a0, $a0, 16               
/* 01754 80AAB9A4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01758 80AAB9A8 E6040024 */  swc1    $f4, 0x0024($s0)           ## 00000024
/* 0175C 80AAB9AC 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 01760 80AAB9B0 44814000 */  mtc1    $at, $f8                   ## $f8 = 60.00
/* 01764 80AAB9B4 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 01768 80AAB9B8 C6120010 */  lwc1    $f18, 0x0010($s0)          ## 00000010
/* 0176C 80AAB9BC 46004282 */  mul.s   $f10, $f8, $f0             
/* 01770 80AAB9C0 E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
/* 01774 80AAB9C4 460A3400 */  add.s   $f16, $f6, $f10            
/* 01778 80AAB9C8 E6100024 */  swc1    $f16, 0x0024($s0)          ## 00000024
/* 0177C 80AAB9CC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01780 80AAB9D0 87A40022 */  lh      $a0, 0x0022($sp)           
/* 01784 80AAB9D4 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 01788 80AAB9D8 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 0178C 80AAB9DC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01790 80AAB9E0 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 01794 80AAB9E4 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 01798 80AAB9E8 44814000 */  mtc1    $at, $f8                   ## $f8 = 60.00
/* 0179C 80AAB9EC C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 017A0 80AAB9F0 860F008A */  lh      $t7, 0x008A($s0)           ## 0000008A
/* 017A4 80AAB9F4 46004182 */  mul.s   $f6, $f8, $f0              
/* 017A8 80AAB9F8 3C0180AB */  lui     $at, %hi(D_80AAC588)       ## $at = 80AB0000
/* 017AC 80AAB9FC 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 017B0 80AABA00 00000000 */  nop
/* 017B4 80AABA04 468084A0 */  cvt.s.w $f18, $f16                 
/* 017B8 80AABA08 46062280 */  add.s   $f10, $f4, $f6             
/* 017BC 80AABA0C E60A002C */  swc1    $f10, 0x002C($s0)          ## 0000002C
/* 017C0 80AABA10 87B80022 */  lh      $t8, 0x0022($sp)           
/* 017C4 80AABA14 C426C588 */  lwc1    $f6, %lo(D_80AAC588)($at)  
/* 017C8 80AABA18 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 017CC 80AABA1C 00000000 */  nop
/* 017D0 80AABA20 46804120 */  cvt.s.w $f4, $f8                   
/* 017D4 80AABA24 46049001 */  sub.s   $f0, $f18, $f4             
/* 017D8 80AABA28 46000005 */  abs.s   $f0, $f0                   
/* 017DC 80AABA2C 46060282 */  mul.s   $f10, $f0, $f6             
/* 017E0 80AABA30 00000000 */  nop
/* 017E4 80AABA34 460C5082 */  mul.s   $f2, $f10, $f12            
/* 017E8 80AABA38 460E103C */  c.lt.s  $f2, $f14                  
/* 017EC 80AABA3C 00000000 */  nop
/* 017F0 80AABA40 45000004 */  bc1f    .L80AABA54                 
/* 017F4 80AABA44 00000000 */  nop
/* 017F8 80AABA48 E60E0168 */  swc1    $f14, 0x0168($s0)          ## 00000168
/* 017FC 80AABA4C 1000000A */  beq     $zero, $zero, .L80AABA78   
/* 01800 80AABA50 860201E0 */  lh      $v0, 0x01E0($s0)           ## 000001E0
.L80AABA54:
/* 01804 80AABA54 4602603C */  c.lt.s  $f12, $f2                  
/* 01808 80AABA58 00000000 */  nop
/* 0180C 80AABA5C 45020004 */  bc1fl   .L80AABA70                 
/* 01810 80AABA60 46001006 */  mov.s   $f0, $f2                   
/* 01814 80AABA64 10000002 */  beq     $zero, $zero, .L80AABA70   
/* 01818 80AABA68 46006006 */  mov.s   $f0, $f12                  
/* 0181C 80AABA6C 46001006 */  mov.s   $f0, $f2                   
.L80AABA70:
/* 01820 80AABA70 E6000168 */  swc1    $f0, 0x0168($s0)           ## 00000168
/* 01824 80AABA74 860201E0 */  lh      $v0, 0x01E0($s0)           ## 000001E0
.L80AABA78:
/* 01828 80AABA78 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L80AABA7C:
/* 0182C 80AABA7C 14410032 */  bne     $v0, $at, .L80AABB48       
/* 01830 80AABA80 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 01834 80AABA84 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 01838 80AABA88 3C198012 */  lui     $t9, %hi(gBitFlags+0x48)
/* 0183C 80AABA8C 8F397168 */  lw      $t9, %lo(gBitFlags+0x48)($t9)
/* 01840 80AABA90 8C6800A4 */  lw      $t0, 0x00A4($v1)           ## 8015E704
/* 01844 80AABA94 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01848 80AABA98 03284824 */  and     $t1, $t9, $t0              
/* 0184C 80AABA9C 5120000E */  beql    $t1, $zero, .L80AABAD8     
/* 01850 80AABAA0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01854 80AABAA4 946A0ED6 */  lhu     $t2, 0x0ED6($v1)           ## 8015F536
/* 01858 80AABAA8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0185C 80AABAAC 314B1000 */  andi    $t3, $t2, 0x1000           ## $t3 = 00000000
/* 01860 80AABAB0 55600009 */  bnel    $t3, $zero, .L80AABAD8     
/* 01864 80AABAB4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01868 80AABAB8 848C00A4 */  lh      $t4, 0x00A4($a0)           ## 000000A4
/* 0186C 80AABABC 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
/* 01870 80AABAC0 240D0037 */  addiu   $t5, $zero, 0x0037         ## $t5 = 00000037
/* 01874 80AABAC4 15810003 */  bne     $t4, $at, .L80AABAD4       
/* 01878 80AABAC8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0187C 80AABACC 00240821 */  addu    $at, $at, $a0              
/* 01880 80AABAD0 A02D03DC */  sb      $t5, 0x03DC($at)           ## 000103DC
.L80AABAD4:
/* 01884 80AABAD4 8FA40034 */  lw      $a0, 0x0034($sp)           
.L80AABAD8:
/* 01888 80AABAD8 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
/* 0188C 80AABADC 848200A4 */  lh      $v0, 0x00A4($a0)           ## 000000A4
/* 01890 80AABAE0 54410006 */  bnel    $v0, $at, .L80AABAFC       
/* 01894 80AABAE4 2401005B */  addiu   $at, $zero, 0x005B         ## $at = 0000005B
/* 01898 80AABAE8 946E0ED4 */  lhu     $t6, 0x0ED4($v1)           ## 8015F534
/* 0189C 80AABAEC 35CF0010 */  ori     $t7, $t6, 0x0010           ## $t7 = 00000010
/* 018A0 80AABAF0 A46F0ED4 */  sh      $t7, 0x0ED4($v1)           ## 8015F534
/* 018A4 80AABAF4 848200A4 */  lh      $v0, 0x00A4($a0)           ## 000000A4
/* 018A8 80AABAF8 2401005B */  addiu   $at, $zero, 0x005B         ## $at = 0000005B
.L80AABAFC:
/* 018AC 80AABAFC 14410004 */  bne     $v0, $at, .L80AABB10       
/* 018B0 80AABB00 00000000 */  nop
/* 018B4 80AABB04 94780ED4 */  lhu     $t8, 0x0ED4($v1)           ## 8015F534
/* 018B8 80AABB08 37190400 */  ori     $t9, $t8, 0x0400           ## $t9 = 00000400
/* 018BC 80AABB0C A4790ED4 */  sh      $t9, 0x0ED4($v1)           ## 8015F534
.L80AABB10:
/* 018C0 80AABB10 0C2AAA4B */  jal     func_80AAA92C              
/* 018C4 80AABB14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018C8 80AABB18 0C2AAA4F */  jal     func_80AAA93C              
/* 018CC 80AABB1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018D0 80AABB20 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 018D4 80AABB24 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.50
/* 018D8 80AABB28 3C0980AB */  lui     $t1, %hi(func_80AABD0C)    ## $t1 = 80AB0000
/* 018DC 80AABB2C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 018E0 80AABB30 2529BD0C */  addiu   $t1, $t1, %lo(func_80AABD0C) ## $t1 = 80AABD0C
/* 018E4 80AABB34 A6080212 */  sh      $t0, 0x0212($s0)           ## 00000212
/* 018E8 80AABB38 A60001E0 */  sh      $zero, 0x01E0($s0)         ## 000001E0
/* 018EC 80AABB3C AE090190 */  sw      $t1, 0x0190($s0)           ## 00000190
/* 018F0 80AABB40 1000002E */  beq     $zero, $zero, .L80AABBFC   
/* 018F4 80AABB44 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
.L80AABB48:
/* 018F8 80AABB48 8E0B0154 */  lw      $t3, 0x0154($s0)           ## 00000154
/* 018FC 80AABB4C 3C0A0600 */  lui     $t2, 0x0600                ## $t2 = 06000000
/* 01900 80AABB50 254A02C8 */  addiu   $t2, $t2, 0x02C8           ## $t2 = 060002C8
/* 01904 80AABB54 154B0006 */  bne     $t2, $t3, .L80AABB70       
/* 01908 80AABB58 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0190C 80AABB5C 26050214 */  addiu   $a1, $s0, 0x0214           ## $a1 = 00000214
/* 01910 80AABB60 26060236 */  addiu   $a2, $s0, 0x0236           ## $a2 = 00000236
/* 01914 80AABB64 0C00D3D5 */  jal     func_80034F54              
/* 01918 80AABB68 24070011 */  addiu   $a3, $zero, 0x0011         ## $a3 = 00000011
/* 0191C 80AABB6C 860201E0 */  lh      $v0, 0x01E0($s0)           ## 000001E0
.L80AABB70:
/* 01920 80AABB70 14400022 */  bne     $v0, $zero, .L80AABBFC     
/* 01924 80AABB74 8FAC0034 */  lw      $t4, 0x0034($sp)           
/* 01928 80AABB78 858D00A4 */  lh      $t5, 0x00A4($t4)           ## 000000A4
/* 0192C 80AABB7C 2401005B */  addiu   $at, $zero, 0x005B         ## $at = 0000005B
/* 01930 80AABB80 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 01934 80AABB84 55A1001E */  bnel    $t5, $at, .L80AABC00       
/* 01938 80AABB88 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0193C 80AABB8C 8C620680 */  lw      $v0, 0x0680($v1)           ## 00000680
/* 01940 80AABB90 3C010200 */  lui     $at, 0x0200                ## $at = 02000000
/* 01944 80AABB94 24050022 */  addiu   $a1, $zero, 0x0022         ## $a1 = 00000022
/* 01948 80AABB98 000271C0 */  sll     $t6, $v0,  7               
/* 0194C 80AABB9C 05C10009 */  bgez    $t6, .L80AABBC4            
/* 01950 80AABBA0 00417825 */  or      $t7, $v0, $at              ## $t7 = 02000000
/* 01954 80AABBA4 AC6F0680 */  sw      $t7, 0x0680($v1)           ## 00000680
/* 01958 80AABBA8 AC7006A8 */  sw      $s0, 0x06A8($v1)           ## 000006A8
/* 0195C 80AABBAC 0C042F56 */  jal     func_8010BD58              
/* 01960 80AABBB0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01964 80AABBB4 3C1880AB */  lui     $t8, %hi(func_80AABC10)    ## $t8 = 80AB0000
/* 01968 80AABBB8 2718BC10 */  addiu   $t8, $t8, %lo(func_80AABC10) ## $t8 = 80AABC10
/* 0196C 80AABBBC 1000000F */  beq     $zero, $zero, .L80AABBFC   
/* 01970 80AABBC0 AE180190 */  sw      $t8, 0x0190($s0)           ## 00000190
.L80AABBC4:
/* 01974 80AABBC4 861901D4 */  lh      $t9, 0x01D4($s0)           ## 000001D4
/* 01978 80AABBC8 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 0197C 80AABBCC 44819000 */  mtc1    $at, $f18                  ## $f18 = 30.00
/* 01980 80AABBD0 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 01984 80AABBD4 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 01988 80AABBD8 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 0198C 80AABBDC 468021A0 */  cvt.s.w $f6, $f4                   
/* 01990 80AABBE0 00414025 */  or      $t0, $v0, $at              ## $t0 = 00800000
/* 01994 80AABBE4 46069280 */  add.s   $f10, $f18, $f6            
/* 01998 80AABBE8 460A403C */  c.lt.s  $f8, $f10                  
/* 0199C 80AABBEC 00000000 */  nop
/* 019A0 80AABBF0 45020003 */  bc1fl   .L80AABC00                 
/* 019A4 80AABBF4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 019A8 80AABBF8 AC680680 */  sw      $t0, 0x0680($v1)           ## 00000680
.L80AABBFC:
/* 019AC 80AABBFC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AABC00:
/* 019B0 80AABC00 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 019B4 80AABC04 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 019B8 80AABC08 03E00008 */  jr      $ra                        
/* 019BC 80AABC0C 00000000 */  nop
