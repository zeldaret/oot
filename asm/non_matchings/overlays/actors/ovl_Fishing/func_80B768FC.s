.late_rodata
glabel D_80B7B788
    .float 2500.0
    

glabel D_80B7B78C
    .float 0.3
    

glabel D_80B7B790
    .float 0.05
    

glabel D_80B7B794
    .float 2500.0
    

glabel D_80B7B798
    .float 0.3
    

glabel D_80B7B79C
    .float 0.05
    

glabel D_80B7B7A0
    .float 2500.0
    

glabel D_80B7B7A4
    .float 0.3
    

glabel D_80B7B7A8
    .float 0.05
    

glabel D_80B7B7AC
    .float 0.8
    

glabel D_80B7B7B0
    .float -9.99999974738e-05
    

.text
glabel func_80B768FC
/* 0CF5C 80B768FC 27BDFF00 */  addiu   $sp, $sp, 0xFF00           ## $sp = FFFFFF00
/* 0CF60 80B76900 3C0E80B8 */  lui     $t6, %hi(D_80B7E114)       ## $t6 = 80B80000
/* 0CF64 80B76904 81CEE114 */  lb      $t6, %lo(D_80B7E114)($t6)  
/* 0CF68 80B76908 AFB00058 */  sw      $s0, 0x0058($sp)           
/* 0CF6C 80B7690C AFBF007C */  sw      $ra, 0x007C($sp)           
/* 0CF70 80B76910 AFBE0078 */  sw      $s8, 0x0078($sp)           
/* 0CF74 80B76914 AFB70074 */  sw      $s7, 0x0074($sp)           
/* 0CF78 80B76918 AFB60070 */  sw      $s6, 0x0070($sp)           
/* 0CF7C 80B7691C AFB5006C */  sw      $s5, 0x006C($sp)           
/* 0CF80 80B76920 AFB40068 */  sw      $s4, 0x0068($sp)           
/* 0CF84 80B76924 AFB30064 */  sw      $s3, 0x0064($sp)           
/* 0CF88 80B76928 AFB20060 */  sw      $s2, 0x0060($sp)           
/* 0CF8C 80B7692C AFB1005C */  sw      $s1, 0x005C($sp)           
/* 0CF90 80B76930 F7BE0050 */  sdc1    $f30, 0x0050($sp)          
/* 0CF94 80B76934 F7BC0048 */  sdc1    $f28, 0x0048($sp)          
/* 0CF98 80B76938 F7BA0040 */  sdc1    $f26, 0x0040($sp)          
/* 0CF9C 80B7693C F7B80038 */  sdc1    $f24, 0x0038($sp)          
/* 0CFA0 80B76940 F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 0CFA4 80B76944 F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 0CFA8 80B76948 A7A000FE */  sh      $zero, 0x00FE($sp)         
/* 0CFAC 80B7694C 3C1080B8 */  lui     $s0, %hi(D_80B81FC8)       ## $s0 = 80B80000
/* 0CFB0 80B76950 0080B825 */  or      $s7, $a0, $zero            ## $s7 = 00000000
/* 0CFB4 80B76954 8C821C44 */  lw      $v0, 0x1C44($a0)           ## 00001C44
/* 0CFB8 80B76958 15C00007 */  bne     $t6, $zero, .L80B76978     
/* 0CFBC 80B7695C 26101FC8 */  addiu   $s0, $s0, %lo(D_80B81FC8)  ## $s0 = 80B81FC8
/* 0CFC0 80B76960 3C0F80B8 */  lui     $t7, %hi(D_80B7A694)       ## $t7 = 80B80000
/* 0CFC4 80B76964 85EFA694 */  lh      $t7, %lo(D_80B7A694)($t7)  
/* 0CFC8 80B76968 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0CFCC 80B7696C 24520024 */  addiu   $s2, $v0, 0x0024           ## $s2 = 00000024
/* 0CFD0 80B76970 15E10004 */  bne     $t7, $at, .L80B76984       
/* 0CFD4 80B76974 00000000 */  nop
.L80B76978:
/* 0CFD8 80B76978 3C1280B8 */  lui     $s2, %hi(D_80B7E0B8)       ## $s2 = 80B80000
/* 0CFDC 80B7697C 10000001 */  beq     $zero, $zero, .L80B76984   
/* 0CFE0 80B76980 2652E0B8 */  addiu   $s2, $s2, %lo(D_80B7E0B8)  ## $s2 = 80B7E0B8
.L80B76984:
/* 0CFE4 80B76984 3C1180B8 */  lui     $s1, %hi(D_80B830A8)       ## $s1 = 80B80000
/* 0CFE8 80B76988 263130A8 */  addiu   $s1, $s1, %lo(D_80B830A8)  ## $s1 = 80B830A8
/* 0CFEC 80B7698C 0C0400A4 */  jal     sinf
              
/* 0CFF0 80B76990 C62C0000 */  lwc1    $f12, 0x0000($s1)          ## 80B830A8
/* 0CFF4 80B76994 3C014434 */  lui     $at, 0x4434                ## $at = 44340000
/* 0CFF8 80B76998 4481D000 */  mtc1    $at, $f26                  ## $f26 = 720.00
/* 0CFFC 80B7699C 3C01C20C */  lui     $at, 0xC20C                ## $at = C20C0000
/* 0D000 80B769A0 4481E000 */  mtc1    $at, $f28                  ## $f28 = -35.00
/* 0D004 80B769A4 461A0102 */  mul.s   $f4, $f0, $f26             
/* 0D008 80B769A8 C62C0000 */  lwc1    $f12, 0x0000($s1)          ## 80B830A8
/* 0D00C 80B769AC E7BC00B0 */  swc1    $f28, 0x00B0($sp)          
/* 0D010 80B769B0 0C041184 */  jal     cosf
              
/* 0D014 80B769B4 E7A400AC */  swc1    $f4, 0x00AC($sp)           
/* 0D018 80B769B8 461A0182 */  mul.s   $f6, $f0, $f26             
/* 0D01C 80B769BC C7AA00AC */  lwc1    $f10, 0x00AC($sp)          
/* 0D020 80B769C0 3C0180B8 */  lui     $at, %hi(D_80B7B788)       ## $at = 80B80000
/* 0D024 80B769C4 3C1E80B8 */  lui     $s8, %hi(D_80B7A898)       ## $s8 = 80B80000
/* 0D028 80B769C8 27DEA898 */  addiu   $s8, $s8, %lo(D_80B7A898)  ## $s8 = 80B7A898
/* 0D02C 80B769CC 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 0D030 80B769D0 E7A600B4 */  swc1    $f6, 0x00B4($sp)           
/* 0D034 80B769D4 C6480000 */  lwc1    $f8, 0x0000($s2)           ## 80B7E0B8
/* 0D038 80B769D8 C7B200B4 */  lwc1    $f18, 0x00B4($sp)          
/* 0D03C 80B769DC C6500008 */  lwc1    $f16, 0x0008($s2)          ## 80B7E0C0
/* 0D040 80B769E0 460A4501 */  sub.s   $f20, $f8, $f10            
/* 0D044 80B769E4 C42AB788 */  lwc1    $f10, %lo(D_80B7B788)($at) 
/* 0D048 80B769E8 3C0180B8 */  lui     $at, %hi(D_80B7B78C)       ## $at = 80B80000
/* 0D04C 80B769EC 46128581 */  sub.s   $f22, $f16, $f18           
/* 0D050 80B769F0 4614A102 */  mul.s   $f4, $f20, $f20            
/* 0D054 80B769F4 00000000 */  nop
/* 0D058 80B769F8 4616B182 */  mul.s   $f6, $f22, $f22            
/* 0D05C 80B769FC 46062200 */  add.s   $f8, $f4, $f6              
/* 0D060 80B76A00 460A403C */  c.lt.s  $f8, $f10                  
/* 0D064 80B76A04 00000000 */  nop
/* 0D068 80B76A08 4500000C */  bc1f    .L80B76A3C                 
/* 0D06C 80B76A0C 00000000 */  nop
/* 0D070 80B76A10 C6300000 */  lwc1    $f16, 0x0000($s1)          ## 80B830A8
/* 0D074 80B76A14 C432B78C */  lwc1    $f18, %lo(D_80B7B78C)($at) 
/* 0D078 80B76A18 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0D07C 80B76A1C 4481C000 */  mtc1    $at, $f24                  ## $f24 = 1.00
/* 0D080 80B76A20 46128100 */  add.s   $f4, $f16, $f18            
/* 0D084 80B76A24 4480F000 */  mtc1    $zero, $f30                ## $f30 = 0.00
/* 0D088 80B76A28 3C1E80B8 */  lui     $s8, %hi(D_80B7A898)       ## $s8 = 80B80000
/* 0D08C 80B76A2C 27DEA898 */  addiu   $s8, $s8, %lo(D_80B7A898)  ## $s8 = 80B7A898
/* 0D090 80B76A30 E6240000 */  swc1    $f4, 0x0000($s1)           ## 80B830A8
/* 0D094 80B76A34 10000021 */  beq     $zero, $zero, .L80B76ABC   
/* 0D098 80B76A38 A7B800FE */  sh      $t8, 0x00FE($sp)           
.L80B76A3C:
/* 0D09C 80B76A3C 4480F000 */  mtc1    $zero, $f30                ## $f30 = 0.00
/* 0D0A0 80B76A40 C7C60000 */  lwc1    $f6, 0x0000($s8)           ## 80B7A898
/* 0D0A4 80B76A44 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0D0A8 80B76A48 02202025 */  or      $a0, $s1, $zero            ## $a0 = 80B830A8
/* 0D0AC 80B76A4C 4606F032 */  c.eq.s  $f30, $f6                  
/* 0D0B0 80B76A50 3C053F33 */  lui     $a1, 0x3F33                ## $a1 = 3F330000
/* 0D0B4 80B76A54 45030014 */  bc1tl   .L80B76AA8                 
/* 0D0B8 80B76A58 4481C000 */  mtc1    $at, $f24                  ## $f24 = 1.00
/* 0D0BC 80B76A5C 3C0180B8 */  lui     $at, %hi(D_80B7B790)       ## $at = 80B80000
/* 0D0C0 80B76A60 C42AB790 */  lwc1    $f10, %lo(D_80B7B790)($at) 
/* 0D0C4 80B76A64 C6280000 */  lwc1    $f8, 0x0000($s1)           ## 80B830A8
/* 0D0C8 80B76A68 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0D0CC 80B76A6C 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 0D0D0 80B76A70 460A4400 */  add.s   $f16, $f8, $f10            
/* 0D0D4 80B76A74 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0D0D8 80B76A78 4481C000 */  mtc1    $at, $f24                  ## $f24 = 1.00
/* 0D0DC 80B76A7C E6300000 */  swc1    $f16, 0x0000($s1)          ## 80B830A8
/* 0D0E0 80B76A80 8EF907C0 */  lw      $t9, 0x07C0($s7)           ## 000007C0
/* 0D0E4 80B76A84 8F280028 */  lw      $t0, 0x0028($t9)           ## 00000028
/* 0D0E8 80B76A88 85090002 */  lh      $t1, 0x0002($t0)           ## 00000002
/* 0D0EC 80B76A8C 44899000 */  mtc1    $t1, $f18                  ## $f18 = 0.00
/* 0D0F0 80B76A90 00000000 */  nop
/* 0D0F4 80B76A94 46809120 */  cvt.s.w $f4, $f18                  
/* 0D0F8 80B76A98 46062201 */  sub.s   $f8, $f4, $f6              
/* 0D0FC 80B76A9C 10000007 */  beq     $zero, $zero, .L80B76ABC   
/* 0D100 80B76AA0 E7A800B0 */  swc1    $f8, 0x00B0($sp)           
/* 0D104 80B76AA4 4481C000 */  mtc1    $at, $f24                  ## $f24 = 1.00
.L80B76AA8:
/* 0D108 80B76AA8 3C073A83 */  lui     $a3, 0x3A83                ## $a3 = 3A830000
/* 0D10C 80B76AAC 34E7126F */  ori     $a3, $a3, 0x126F           ## $a3 = 3A83126F
/* 0D110 80B76AB0 4406C000 */  mfc1    $a2, $f24                  
/* 0D114 80B76AB4 0C01E107 */  jal     Math_ApproachF
              
/* 0D118 80B76AB8 34A53333 */  ori     $a1, $a1, 0x3333           ## $a1 = 3F333333
.L80B76ABC:
/* 0D11C 80B76ABC 3C1180B8 */  lui     $s1, %hi(D_80B830AC)       ## $s1 = 80B80000
/* 0D120 80B76AC0 263130AC */  addiu   $s1, $s1, %lo(D_80B830AC)  ## $s1 = 80B830AC
/* 0D124 80B76AC4 0C0400A4 */  jal     sinf
              
/* 0D128 80B76AC8 C62C0000 */  lwc1    $f12, 0x0000($s1)          ## 80B830AC
/* 0D12C 80B76ACC 461A0282 */  mul.s   $f10, $f0, $f26            
/* 0D130 80B76AD0 E7BC00BC */  swc1    $f28, 0x00BC($sp)          
/* 0D134 80B76AD4 C62C0000 */  lwc1    $f12, 0x0000($s1)          ## 80B830AC
/* 0D138 80B76AD8 0C041184 */  jal     cosf
              
/* 0D13C 80B76ADC E7AA00B8 */  swc1    $f10, 0x00B8($sp)          
/* 0D140 80B76AE0 461A0402 */  mul.s   $f16, $f0, $f26            
/* 0D144 80B76AE4 C7A400B8 */  lwc1    $f4, 0x00B8($sp)           
/* 0D148 80B76AE8 3C0180B8 */  lui     $at, %hi(D_80B7B794)       ## $at = 80B80000
/* 0D14C 80B76AEC E7B000C0 */  swc1    $f16, 0x00C0($sp)          
/* 0D150 80B76AF0 C6520000 */  lwc1    $f18, 0x0000($s2)          ## 80B7E0B8
/* 0D154 80B76AF4 C7A800C0 */  lwc1    $f8, 0x00C0($sp)           
/* 0D158 80B76AF8 C6460008 */  lwc1    $f6, 0x0008($s2)           ## 80B7E0C0
/* 0D15C 80B76AFC 46049501 */  sub.s   $f20, $f18, $f4            
/* 0D160 80B76B00 C424B794 */  lwc1    $f4, %lo(D_80B7B794)($at)  
/* 0D164 80B76B04 3C0180B8 */  lui     $at, %hi(D_80B7B798)       ## $at = 80B80000
/* 0D168 80B76B08 46083581 */  sub.s   $f22, $f6, $f8             
/* 0D16C 80B76B0C 4614A282 */  mul.s   $f10, $f20, $f20           
/* 0D170 80B76B10 00000000 */  nop
/* 0D174 80B76B14 4616B402 */  mul.s   $f16, $f22, $f22           
/* 0D178 80B76B18 46105480 */  add.s   $f18, $f10, $f16           
/* 0D17C 80B76B1C 4604903C */  c.lt.s  $f18, $f4                  
/* 0D180 80B76B20 00000000 */  nop
/* 0D184 80B76B24 45000009 */  bc1f    .L80B76B4C                 
/* 0D188 80B76B28 00000000 */  nop
/* 0D18C 80B76B2C C6260000 */  lwc1    $f6, 0x0000($s1)           ## 80B830AC
/* 0D190 80B76B30 C428B798 */  lwc1    $f8, %lo(D_80B7B798)($at)  
/* 0D194 80B76B34 87AA00FE */  lh      $t2, 0x00FE($sp)           
/* 0D198 80B76B38 46083281 */  sub.s   $f10, $f6, $f8             
/* 0D19C 80B76B3C 354B0002 */  ori     $t3, $t2, 0x0002           ## $t3 = 00000002
/* 0D1A0 80B76B40 A7AB00FE */  sh      $t3, 0x00FE($sp)           
/* 0D1A4 80B76B44 1000001C */  beq     $zero, $zero, .L80B76BB8   
/* 0D1A8 80B76B48 E62A0000 */  swc1    $f10, 0x0000($s1)          ## 80B830AC
.L80B76B4C:
/* 0D1AC 80B76B4C C7D00000 */  lwc1    $f16, 0x0000($s8)          ## 80B7A898
/* 0D1B0 80B76B50 3C054013 */  lui     $a1, 0x4013                ## $a1 = 40130000
/* 0D1B4 80B76B54 3C0180B8 */  lui     $at, %hi(D_80B7B79C)       ## $at = 80B80000
/* 0D1B8 80B76B58 4610F032 */  c.eq.s  $f30, $f16                 
/* 0D1BC 80B76B5C 34A53333 */  ori     $a1, $a1, 0x3333           ## $a1 = 40133333
/* 0D1C0 80B76B60 02202025 */  or      $a0, $s1, $zero            ## $a0 = 80B830AC
/* 0D1C4 80B76B64 3C073A83 */  lui     $a3, 0x3A83                ## $a3 = 3A830000
/* 0D1C8 80B76B68 45030011 */  bc1tl   .L80B76BB0                 
/* 0D1CC 80B76B6C 4406C000 */  mfc1    $a2, $f24                  
/* 0D1D0 80B76B70 C6320000 */  lwc1    $f18, 0x0000($s1)          ## 80B830AC
/* 0D1D4 80B76B74 C424B79C */  lwc1    $f4, %lo(D_80B7B79C)($at)  
/* 0D1D8 80B76B78 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0D1DC 80B76B7C 44818000 */  mtc1    $at, $f16                  ## $f16 = 5.00
/* 0D1E0 80B76B80 46049181 */  sub.s   $f6, $f18, $f4             
/* 0D1E4 80B76B84 E6260000 */  swc1    $f6, 0x0000($s1)           ## 80B830AC
/* 0D1E8 80B76B88 8EEC07C0 */  lw      $t4, 0x07C0($s7)           ## 000007C0
/* 0D1EC 80B76B8C 8D8D0028 */  lw      $t5, 0x0028($t4)           ## 00000028
/* 0D1F0 80B76B90 85AE0002 */  lh      $t6, 0x0002($t5)           ## 00000002
/* 0D1F4 80B76B94 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 0D1F8 80B76B98 00000000 */  nop
/* 0D1FC 80B76B9C 468042A0 */  cvt.s.w $f10, $f8                  
/* 0D200 80B76BA0 46105481 */  sub.s   $f18, $f10, $f16           
/* 0D204 80B76BA4 10000004 */  beq     $zero, $zero, .L80B76BB8   
/* 0D208 80B76BA8 E7B200BC */  swc1    $f18, 0x00BC($sp)          
/* 0D20C 80B76BAC 4406C000 */  mfc1    $a2, $f24                  
.L80B76BB0:
/* 0D210 80B76BB0 0C01E107 */  jal     Math_ApproachF
              
/* 0D214 80B76BB4 34E7126F */  ori     $a3, $a3, 0x126F           ## $a3 = 3A83126F
.L80B76BB8:
/* 0D218 80B76BB8 3C1180B8 */  lui     $s1, %hi(D_80B830B0)       ## $s1 = 80B80000
/* 0D21C 80B76BBC 263130B0 */  addiu   $s1, $s1, %lo(D_80B830B0)  ## $s1 = 80B830B0
/* 0D220 80B76BC0 0C0400A4 */  jal     sinf
              
/* 0D224 80B76BC4 C62C0000 */  lwc1    $f12, 0x0000($s1)          ## 80B830B0
/* 0D228 80B76BC8 461A0102 */  mul.s   $f4, $f0, $f26             
/* 0D22C 80B76BCC E7BC00C8 */  swc1    $f28, 0x00C8($sp)          
/* 0D230 80B76BD0 C62C0000 */  lwc1    $f12, 0x0000($s1)          ## 80B830B0
/* 0D234 80B76BD4 0C041184 */  jal     cosf
              
/* 0D238 80B76BD8 E7A400C4 */  swc1    $f4, 0x00C4($sp)           
/* 0D23C 80B76BDC 461A0182 */  mul.s   $f6, $f0, $f26             
/* 0D240 80B76BE0 C7AA00C4 */  lwc1    $f10, 0x00C4($sp)          
/* 0D244 80B76BE4 3C0180B8 */  lui     $at, %hi(D_80B7B7A0)       ## $at = 80B80000
/* 0D248 80B76BE8 E7A600CC */  swc1    $f6, 0x00CC($sp)           
/* 0D24C 80B76BEC C6480000 */  lwc1    $f8, 0x0000($s2)           ## 80B7E0B8
/* 0D250 80B76BF0 C7B200CC */  lwc1    $f18, 0x00CC($sp)          
/* 0D254 80B76BF4 C6500008 */  lwc1    $f16, 0x0008($s2)          ## 80B7E0C0
/* 0D258 80B76BF8 460A4501 */  sub.s   $f20, $f8, $f10            
/* 0D25C 80B76BFC C42AB7A0 */  lwc1    $f10, %lo(D_80B7B7A0)($at) 
/* 0D260 80B76C00 3C0180B8 */  lui     $at, %hi(D_80B7B7A4)       ## $at = 80B80000
/* 0D264 80B76C04 46128581 */  sub.s   $f22, $f16, $f18           
/* 0D268 80B76C08 4614A102 */  mul.s   $f4, $f20, $f20            
/* 0D26C 80B76C0C 00000000 */  nop
/* 0D270 80B76C10 4616B182 */  mul.s   $f6, $f22, $f22            
/* 0D274 80B76C14 46062200 */  add.s   $f8, $f4, $f6              
/* 0D278 80B76C18 460A403C */  c.lt.s  $f8, $f10                  
/* 0D27C 80B76C1C 00000000 */  nop
/* 0D280 80B76C20 45000009 */  bc1f    .L80B76C48                 
/* 0D284 80B76C24 00000000 */  nop
/* 0D288 80B76C28 C6300000 */  lwc1    $f16, 0x0000($s1)          ## 80B830B0
/* 0D28C 80B76C2C C432B7A4 */  lwc1    $f18, %lo(D_80B7B7A4)($at) 
/* 0D290 80B76C30 87AF00FE */  lh      $t7, 0x00FE($sp)           
/* 0D294 80B76C34 46128101 */  sub.s   $f4, $f16, $f18            
/* 0D298 80B76C38 35F80004 */  ori     $t8, $t7, 0x0004           ## $t8 = 00000004
/* 0D29C 80B76C3C A7B800FE */  sh      $t8, 0x00FE($sp)           
/* 0D2A0 80B76C40 1000001C */  beq     $zero, $zero, .L80B76CB4   
/* 0D2A4 80B76C44 E6240000 */  swc1    $f4, 0x0000($s1)           ## 80B830B0
.L80B76C48:
/* 0D2A8 80B76C48 C7C60000 */  lwc1    $f6, 0x0000($s8)           ## 80B7A898
/* 0D2AC 80B76C4C 3C054093 */  lui     $a1, 0x4093                ## $a1 = 40930000
/* 0D2B0 80B76C50 3C0180B8 */  lui     $at, %hi(D_80B7B7A8)       ## $at = 80B80000
/* 0D2B4 80B76C54 4606F032 */  c.eq.s  $f30, $f6                  
/* 0D2B8 80B76C58 34A53333 */  ori     $a1, $a1, 0x3333           ## $a1 = 40933333
/* 0D2BC 80B76C5C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 80B830B0
/* 0D2C0 80B76C60 3C073A83 */  lui     $a3, 0x3A83                ## $a3 = 3A830000
/* 0D2C4 80B76C64 45030011 */  bc1tl   .L80B76CAC                 
/* 0D2C8 80B76C68 4406C000 */  mfc1    $a2, $f24                  
/* 0D2CC 80B76C6C C6280000 */  lwc1    $f8, 0x0000($s1)           ## 80B830B0
/* 0D2D0 80B76C70 C42AB7A8 */  lwc1    $f10, %lo(D_80B7B7A8)($at) 
/* 0D2D4 80B76C74 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0D2D8 80B76C78 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 0D2DC 80B76C7C 460A4401 */  sub.s   $f16, $f8, $f10            
/* 0D2E0 80B76C80 E6300000 */  swc1    $f16, 0x0000($s1)          ## 80B830B0
/* 0D2E4 80B76C84 8EF907C0 */  lw      $t9, 0x07C0($s7)           ## 000007C0
/* 0D2E8 80B76C88 8F280028 */  lw      $t0, 0x0028($t9)           ## 00000028
/* 0D2EC 80B76C8C 85090002 */  lh      $t1, 0x0002($t0)           ## 00000002
/* 0D2F0 80B76C90 44899000 */  mtc1    $t1, $f18                  ## $f18 = 0.00
/* 0D2F4 80B76C94 00000000 */  nop
/* 0D2F8 80B76C98 46809120 */  cvt.s.w $f4, $f18                  
/* 0D2FC 80B76C9C 46062201 */  sub.s   $f8, $f4, $f6              
/* 0D300 80B76CA0 10000004 */  beq     $zero, $zero, .L80B76CB4   
/* 0D304 80B76CA4 E7A800C8 */  swc1    $f8, 0x00C8($sp)           
/* 0D308 80B76CA8 4406C000 */  mfc1    $a2, $f24                  
.L80B76CAC:
/* 0D30C 80B76CAC 0C01E107 */  jal     Math_ApproachF
              
/* 0D310 80B76CB0 34E7126F */  ori     $a3, $a3, 0x126F           ## $a3 = 3A83126F
.L80B76CB4:
/* 0D314 80B76CB4 3C0A80B8 */  lui     $t2, %hi(D_80B7E075)       ## $t2 = 80B80000
/* 0D318 80B76CB8 914AE075 */  lbu     $t2, %lo(D_80B7E075)($t2)  
/* 0D31C 80B76CBC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0D320 80B76CC0 15410004 */  bne     $t2, $at, .L80B76CD4       
/* 0D324 80B76CC4 3C0180B8 */  lui     $at, %hi(D_80B7B7AC)       ## $at = 80B80000
/* 0D328 80B76CC8 C42AB7AC */  lwc1    $f10, %lo(D_80B7B7AC)($at) 
/* 0D32C 80B76CCC 10000002 */  beq     $zero, $zero, .L80B76CD8   
/* 0D330 80B76CD0 E7AA00D8 */  swc1    $f10, 0x00D8($sp)          
.L80B76CD4:
/* 0D334 80B76CD4 E7B800D8 */  swc1    $f24, 0x00D8($sp)          
.L80B76CD8:
/* 0D338 80B76CD8 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 0D33C 80B76CDC 4481E000 */  mtc1    $at, $f28                  ## $f28 = 1.50
/* 0D340 80B76CE0 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0D344 80B76CE4 4481D000 */  mtc1    $at, $f26                  ## $f26 = 100.00
/* 0D348 80B76CE8 0000B025 */  or      $s6, $zero, $zero          ## $s6 = 00000000
.L80B76CEC:
/* 0D34C 80B76CEC 920B0000 */  lbu     $t3, 0x0000($s0)           ## 80B81FC8
/* 0D350 80B76CF0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0D354 80B76CF4 34211D60 */  ori     $at, $at, 0x1D60           ## $at = 00011D60
/* 0D358 80B76CF8 1160011B */  beq     $t3, $zero, .L80B77168     
/* 0D35C 80B76CFC 02E12021 */  addu    $a0, $s7, $at              
/* 0D360 80B76D00 860C0002 */  lh      $t4, 0x0002($s0)           ## 80B81FCA
/* 0D364 80B76D04 26140004 */  addiu   $s4, $s0, 0x0004           ## $s4 = 80B81FCC
/* 0D368 80B76D08 2615001C */  addiu   $s5, $s0, 0x001C           ## $s5 = 80B81FE4
/* 0D36C 80B76D0C 3C0780B8 */  lui     $a3, %hi(D_80B7FEA4)       ## $a3 = 80B80000
/* 0D370 80B76D10 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 0D374 80B76D14 A60D0002 */  sh      $t5, 0x0002($s0)           ## 80B81FCA
/* 0D378 80B76D18 24E7FEA4 */  addiu   $a3, $a3, %lo(D_80B7FEA4)  ## $a3 = 80B7FEA4
/* 0D37C 80B76D1C 02A03025 */  or      $a2, $s5, $zero            ## $a2 = 80B81FE4
/* 0D380 80B76D20 0C029B84 */  jal     SkinMatrix_Vec3fMtxFMultXYZW              
/* 0D384 80B76D24 02802825 */  or      $a1, $s4, $zero            ## $a1 = 80B81FCC
/* 0D388 80B76D28 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 0D38C 80B76D2C 44818000 */  mtc1    $at, $f16                  ## $f16 = 400.00
/* 0D390 80B76D30 C6020024 */  lwc1    $f2, 0x0024($s0)           ## 80B81FEC
/* 0D394 80B76D34 2AC10015 */  slti    $at, $s6, 0x0015           
/* 0D398 80B76D38 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 0D39C 80B76D3C 4610103C */  c.lt.s  $f2, $f16                  
/* 0D3A0 80B76D40 00000000 */  nop
/* 0D3A4 80B76D44 4502000C */  bc1fl   .L80B76D78                 
/* 0D3A8 80B76D48 A2000044 */  sb      $zero, 0x0044($s0)         ## 80B8200C
/* 0D3AC 80B76D4C C600001C */  lwc1    $f0, 0x001C($s0)           ## 80B81FE4
/* 0D3B0 80B76D50 4602D480 */  add.s   $f18, $f26, $f2            
/* 0D3B4 80B76D54 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0D3B8 80B76D58 46000005 */  abs.s   $f0, $f0                   
/* 0D3BC 80B76D5C 4612003C */  c.lt.s  $f0, $f18                  
/* 0D3C0 80B76D60 00000000 */  nop
/* 0D3C4 80B76D64 45020004 */  bc1fl   .L80B76D78                 
/* 0D3C8 80B76D68 A2000044 */  sb      $zero, 0x0044($s0)         ## 80B8200C
/* 0D3CC 80B76D6C 10000002 */  beq     $zero, $zero, .L80B76D78   
/* 0D3D0 80B76D70 A20E0044 */  sb      $t6, 0x0044($s0)           ## 80B8200C
/* 0D3D4 80B76D74 A2000044 */  sb      $zero, 0x0044($s0)         ## 80B8200C
.L80B76D78:
/* 0D3D8 80B76D78 50200004 */  beql    $at, $zero, .L80B76D8C     
/* 0D3DC 80B76D7C 2AC10029 */  slti    $at, $s6, 0x0029           
/* 0D3E0 80B76D80 10000008 */  beq     $zero, $zero, .L80B76DA4   
/* 0D3E4 80B76D84 24130001 */  addiu   $s3, $zero, 0x0001         ## $s3 = 00000001
/* 0D3E8 80B76D88 2AC10029 */  slti    $at, $s6, 0x0029           
.L80B76D8C:
/* 0D3EC 80B76D8C 10200004 */  beq     $at, $zero, .L80B76DA0     
/* 0D3F0 80B76D90 24120002 */  addiu   $s2, $zero, 0x0002         ## $s2 = 00000002
/* 0D3F4 80B76D94 24120001 */  addiu   $s2, $zero, 0x0001         ## $s2 = 00000001
/* 0D3F8 80B76D98 10000002 */  beq     $zero, $zero, .L80B76DA4   
/* 0D3FC 80B76D9C 24130002 */  addiu   $s3, $zero, 0x0002         ## $s3 = 00000002
.L80B76DA0:
/* 0D400 80B76DA0 24130004 */  addiu   $s3, $zero, 0x0004         ## $s3 = 00000004
.L80B76DA4:
/* 0D404 80B76DA4 C6080014 */  lwc1    $f8, 0x0014($s0)           ## 80B81FDC
/* 0D408 80B76DA8 C60A0008 */  lwc1    $f10, 0x0008($s0)          ## 80B81FD0
/* 0D40C 80B76DAC C6040010 */  lwc1    $f4, 0x0010($s0)           ## 80B81FD8
/* 0D410 80B76DB0 C6060004 */  lwc1    $f6, 0x0004($s0)           ## 80B81FCC
/* 0D414 80B76DB4 460A4401 */  sub.s   $f16, $f8, $f10            
/* 0D418 80B76DB8 46062501 */  sub.s   $f20, $f4, $f6             
/* 0D41C 80B76DBC E7B000F0 */  swc1    $f16, 0x00F0($sp)          
/* 0D420 80B76DC0 C604000C */  lwc1    $f4, 0x000C($s0)           ## 80B81FD4
/* 0D424 80B76DC4 C6120018 */  lwc1    $f18, 0x0018($s0)          ## 80B81FE0
/* 0D428 80B76DC8 4600A386 */  mov.s   $f14, $f20                 
/* 0D42C 80B76DCC 46049581 */  sub.s   $f22, $f18, $f4            
/* 0D430 80B76DD0 0C034199 */  jal     Math_Atan2S
              
/* 0D434 80B76DD4 4600B306 */  mov.s   $f12, $f22                 
/* 0D438 80B76DD8 4614A182 */  mul.s   $f6, $f20, $f20            
/* 0D43C 80B76DDC A7A200D4 */  sh      $v0, 0x00D4($sp)           
/* 0D440 80B76DE0 C7AE00F0 */  lwc1    $f14, 0x00F0($sp)          
/* 0D444 80B76DE4 4616B202 */  mul.s   $f8, $f22, $f22            
/* 0D448 80B76DE8 46083000 */  add.s   $f0, $f6, $f8              
/* 0D44C 80B76DEC 46000304 */  sqrt.s  $f12, $f0                  
/* 0D450 80B76DF0 0C034199 */  jal     Math_Atan2S
              
/* 0D454 80B76DF4 E7AC00E8 */  swc1    $f12, 0x00E8($sp)          
/* 0D458 80B76DF8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0D45C 80B76DFC 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 0D460 80B76E00 C7AA00E8 */  lwc1    $f10, 0x00E8($sp)          
/* 0D464 80B76E04 A7A200D6 */  sh      $v0, 0x00D6($sp)           
/* 0D468 80B76E08 4610503C */  c.lt.s  $f10, $f16                 
/* 0D46C 80B76E0C 00000000 */  nop
/* 0D470 80B76E10 4503000E */  bc1tl   .L80B76E4C                 
/* 0D474 80B76E14 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0D478 80B76E18 860F0002 */  lh      $t7, 0x0002($s0)           ## 80B81FCA
/* 0D47C 80B76E1C 31F8001F */  andi    $t8, $t7, 0x001F           ## $t8 = 00000000
/* 0D480 80B76E20 5700005A */  bnel    $t8, $zero, .L80B76F8C     
/* 0D484 80B76E24 2604003E */  addiu   $a0, $s0, 0x003E           ## $a0 = 80B82006
/* 0D488 80B76E28 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 0D48C 80B76E2C 00000000 */  nop
/* 0D490 80B76E30 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0D494 80B76E34 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 0D498 80B76E38 00000000 */  nop
/* 0D49C 80B76E3C 4600903C */  c.lt.s  $f18, $f0                  
/* 0D4A0 80B76E40 00000000 */  nop
/* 0D4A4 80B76E44 45000050 */  bc1f    .L80B76F88                 
/* 0D4A8 80B76E48 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
.L80B76E4C:
/* 0D4AC 80B76E4C 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 0D4B0 80B76E50 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0D4B4 80B76E54 02E1C821 */  addu    $t9, $s7, $at              
/* 0D4B8 80B76E58 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 0D4BC 80B76E5C AFB90080 */  sw      $t9, 0x0080($sp)           
/* 0D4C0 80B76E60 00124080 */  sll     $t0, $s2,  2               
/* 0D4C4 80B76E64 01124023 */  subu    $t0, $t0, $s2              
/* 0D4C8 80B76E68 00084080 */  sll     $t0, $t0,  2               
/* 0D4CC 80B76E6C 27A900AC */  addiu   $t1, $sp, 0x00AC           ## $t1 = FFFFFFAC
/* 0D4D0 80B76E70 01098821 */  addu    $s1, $t0, $t1              
/* 0D4D4 80B76E74 C6240004 */  lwc1    $f4, 0x0004($s1)           ## 80B830B4
/* 0D4D8 80B76E78 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 0D4DC 80B76E7C 46040180 */  add.s   $f6, $f0, $f4              
/* 0D4E0 80B76E80 E6060014 */  swc1    $f6, 0x0014($s0)           ## 80B81FDC
/* 0D4E4 80B76E84 C7C80000 */  lwc1    $f8, 0x0000($s8)           ## 80B7A898
/* 0D4E8 80B76E88 4608F032 */  c.eq.s  $f30, $f8                  
/* 0D4EC 80B76E8C 00000000 */  nop
/* 0D4F0 80B76E90 4501000E */  bc1t    .L80B76ECC                 
/* 0D4F4 80B76E94 00000000 */  nop
/* 0D4F8 80B76E98 44816000 */  mtc1    $at, $f12                  ## $f12 = 200.00
/* 0D4FC 80B76E9C 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 0D500 80B76EA0 00000000 */  nop
/* 0D504 80B76EA4 C62A0000 */  lwc1    $f10, 0x0000($s1)          ## 80B830B0
/* 0D508 80B76EA8 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 0D50C 80B76EAC 44816000 */  mtc1    $at, $f12                  ## $f12 = 200.00
/* 0D510 80B76EB0 460A0400 */  add.s   $f16, $f0, $f10            
/* 0D514 80B76EB4 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 0D518 80B76EB8 E6100010 */  swc1    $f16, 0x0010($s0)          ## 80B81FD8
/* 0D51C 80B76EBC C6320008 */  lwc1    $f18, 0x0008($s1)          ## 80B830B8
/* 0D520 80B76EC0 46120100 */  add.s   $f4, $f0, $f18             
/* 0D524 80B76EC4 1000000B */  beq     $zero, $zero, .L80B76EF4   
/* 0D528 80B76EC8 E6040018 */  swc1    $f4, 0x0018($s0)           ## 80B81FE0
.L80B76ECC:
/* 0D52C 80B76ECC 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 0D530 80B76ED0 4600D306 */  mov.s   $f12, $f26                 
/* 0D534 80B76ED4 C6260000 */  lwc1    $f6, 0x0000($s1)           ## 80B830B0
/* 0D538 80B76ED8 4600D306 */  mov.s   $f12, $f26                 
/* 0D53C 80B76EDC 46060200 */  add.s   $f8, $f0, $f6              
/* 0D540 80B76EE0 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 0D544 80B76EE4 E6080010 */  swc1    $f8, 0x0010($s0)           ## 80B81FD8
/* 0D548 80B76EE8 C62A0008 */  lwc1    $f10, 0x0008($s1)          ## 80B830B8
/* 0D54C 80B76EEC 460A0400 */  add.s   $f16, $f0, $f10            
/* 0D550 80B76EF0 E6100018 */  swc1    $f16, 0x0018($s0)          ## 80B81FE0
.L80B76EF4:
/* 0D554 80B76EF4 8E8C0000 */  lw      $t4, 0x0000($s4)           ## 80B81FCC
/* 0D558 80B76EF8 27AA00A0 */  addiu   $t2, $sp, 0x00A0           ## $t2 = FFFFFFA0
/* 0D55C 80B76EFC 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0D560 80B76F00 AD4C0000 */  sw      $t4, 0x0000($t2)           ## FFFFFFA0
/* 0D564 80B76F04 8E8B0004 */  lw      $t3, 0x0004($s4)           ## 80B81FD0
/* 0D568 80B76F08 44816000 */  mtc1    $at, $f12                  ## $f12 = 50.00
/* 0D56C 80B76F0C AD4B0004 */  sw      $t3, 0x0004($t2)           ## FFFFFFA4
/* 0D570 80B76F10 8E8C0008 */  lw      $t4, 0x0008($s4)           ## 80B81FD4
/* 0D574 80B76F14 AD4C0008 */  sw      $t4, 0x0008($t2)           ## FFFFFFA8
/* 0D578 80B76F18 8EED07C0 */  lw      $t5, 0x07C0($s7)           ## 000007C0
/* 0D57C 80B76F1C 8DAE0028 */  lw      $t6, 0x0028($t5)           ## 00000028
/* 0D580 80B76F20 85CF0002 */  lh      $t7, 0x0002($t6)           ## 00000002
/* 0D584 80B76F24 448F9000 */  mtc1    $t7, $f18                  ## $f18 = 0.00
/* 0D588 80B76F28 00000000 */  nop
/* 0D58C 80B76F2C 46809120 */  cvt.s.w $f4, $f18                  
/* 0D590 80B76F30 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 0D594 80B76F34 E7A400A4 */  swc1    $f4, 0x00A4($sp)           
/* 0D598 80B76F38 8FB80080 */  lw      $t8, 0x0080($sp)           
/* 0D59C 80B76F3C 461A0180 */  add.s   $f6, $f0, $f26             
/* 0D5A0 80B76F40 24190096 */  addiu   $t9, $zero, 0x0096         ## $t9 = 00000096
/* 0D5A4 80B76F44 8F051E10 */  lw      $a1, 0x1E10($t8)           ## 00001E10
/* 0D5A8 80B76F48 2408005A */  addiu   $t0, $zero, 0x005A         ## $t0 = 0000005A
/* 0D5AC 80B76F4C AFA80018 */  sw      $t0, 0x0018($sp)           
/* 0D5B0 80B76F50 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 0D5B4 80B76F54 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 0D5B8 80B76F58 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 80B81FE4
/* 0D5BC 80B76F5C 27A600A0 */  addiu   $a2, $sp, 0x00A0           ## $a2 = FFFFFFA0
/* 0D5C0 80B76F60 0C2DA70B */  jal     func_80B69C2C              
/* 0D5C4 80B76F64 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 0D5C8 80B76F68 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 80B81FF0
/* 0D5CC 80B76F6C 461C403C */  c.lt.s  $f8, $f28                  
/* 0D5D0 80B76F70 00000000 */  nop
/* 0D5D4 80B76F74 45020003 */  bc1fl   .L80B76F84                 
/* 0D5D8 80B76F78 E61C0034 */  swc1    $f28, 0x0034($s0)          ## 80B81FFC
/* 0D5DC 80B76F7C E61C0028 */  swc1    $f28, 0x0028($s0)          ## 80B81FF0
/* 0D5E0 80B76F80 E61C0034 */  swc1    $f28, 0x0034($s0)          ## 80B81FFC
.L80B76F84:
/* 0D5E4 80B76F84 E6180038 */  swc1    $f24, 0x0038($s0)          ## 80B82000
.L80B76F88:
/* 0D5E8 80B76F88 2604003E */  addiu   $a0, $s0, 0x003E           ## $a0 = 80B82006
.L80B76F8C:
/* 0D5EC 80B76F8C 87A500D4 */  lh      $a1, 0x00D4($sp)           
/* 0D5F0 80B76F90 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 0D5F4 80B76F94 0C2DA6E1 */  jal     func_80B69B84              
/* 0D5F8 80B76F98 24074000 */  addiu   $a3, $zero, 0x4000         ## $a3 = 00004000
/* 0D5FC 80B76F9C 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 0D600 80B76FA0 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 0D604 80B76FA4 44819000 */  mtc1    $at, $f18                  ## $f18 = 3.00
/* 0D608 80B76FA8 46805420 */  cvt.s.w $f16, $f10                 
/* 0D60C 80B76FAC 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 0D610 80B76FB0 24071388 */  addiu   $a3, $zero, 0x1388         ## $a3 = 00001388
/* 0D614 80B76FB4 46128102 */  mul.s   $f4, $f16, $f18            
/* 0D618 80B76FB8 4600218D */  trunc.w.s $f6, $f4                   
/* 0D61C 80B76FBC 44033000 */  mfc1    $v1, $f6                   
/* 0D620 80B76FC0 00000000 */  nop
/* 0D624 80B76FC4 00032400 */  sll     $a0, $v1, 16               
/* 0D628 80B76FC8 00042403 */  sra     $a0, $a0, 16               
/* 0D62C 80B76FCC 28811F41 */  slti    $at, $a0, 0x1F41           
/* 0D630 80B76FD0 00032C00 */  sll     $a1, $v1, 16               
/* 0D634 80B76FD4 14200003 */  bne     $at, $zero, .L80B76FE4     
/* 0D638 80B76FD8 00052C03 */  sra     $a1, $a1, 16               
/* 0D63C 80B76FDC 10000005 */  beq     $zero, $zero, .L80B76FF4   
/* 0D640 80B76FE0 24051F40 */  addiu   $a1, $zero, 0x1F40         ## $a1 = 00001F40
.L80B76FE4:
/* 0D644 80B76FE4 2881E0C0 */  slti    $at, $a0, 0xE0C0           
/* 0D648 80B76FE8 10200002 */  beq     $at, $zero, .L80B76FF4     
/* 0D64C 80B76FEC 00000000 */  nop
/* 0D650 80B76FF0 2405E0C0 */  addiu   $a1, $zero, 0xE0C0         ## $a1 = FFFFE0C0
.L80B76FF4:
/* 0D654 80B76FF4 0C01E1EF */  jal     Math_ApproachS
              
/* 0D658 80B76FF8 26040042 */  addiu   $a0, $s0, 0x0042           ## $a0 = 80B8200A
/* 0D65C 80B76FFC 860A0042 */  lh      $t2, 0x0042($s0)           ## 80B8200A
/* 0D660 80B77000 3C0180B8 */  lui     $at, %hi(D_80B7B7B0)       ## $at = 80B80000
/* 0D664 80B77004 C430B7B0 */  lwc1    $f16, %lo(D_80B7B7B0)($at) 
/* 0D668 80B77008 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 0D66C 80B7700C 2604003C */  addiu   $a0, $s0, 0x003C           ## $a0 = 80B82004
/* 0D670 80B77010 87A500D6 */  lh      $a1, 0x00D6($sp)           
/* 0D674 80B77014 468042A0 */  cvt.s.w $f10, $f8                  
/* 0D678 80B77018 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 0D67C 80B7701C 24074000 */  addiu   $a3, $zero, 0x4000         ## $a3 = 00004000
/* 0D680 80B77020 46105482 */  mul.s   $f18, $f10, $f16           
/* 0D684 80B77024 0C01E1EF */  jal     Math_ApproachS
              
/* 0D688 80B77028 E7B200E0 */  swc1    $f18, 0x00E0($sp)          
/* 0D68C 80B7702C 87AB00FE */  lh      $t3, 0x00FE($sp)           
/* 0D690 80B77030 4406C000 */  mfc1    $a2, $f24                  
/* 0D694 80B77034 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 80B81FF0
/* 0D698 80B77038 01736024 */  and     $t4, $t3, $s3              
/* 0D69C 80B7703C 11800008 */  beq     $t4, $zero, .L80B77060     
/* 0D6A0 80B77040 3C053F40 */  lui     $a1, 0x3F40                ## $a1 = 3F400000
/* 0D6A4 80B77044 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 0D6A8 80B77048 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 0D6AC 80B7704C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 0D6B0 80B77050 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 0D6B4 80B77054 E6180038 */  swc1    $f24, 0x0038($s0)          ## 80B82000
/* 0D6B8 80B77058 E6040028 */  swc1    $f4, 0x0028($s0)           ## 80B81FF0
/* 0D6BC 80B7705C E6060034 */  swc1    $f6, 0x0034($s0)           ## 80B81FFC
.L80B77060:
/* 0D6C0 80B77060 C7C80000 */  lwc1    $f8, 0x0000($s8)           ## 80B7A898
/* 0D6C4 80B77064 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 0D6C8 80B77068 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 0D6CC 80B7706C 4608F032 */  c.eq.s  $f30, $f8                  
/* 0D6D0 80B77070 00000000 */  nop
/* 0D6D4 80B77074 45010007 */  bc1t    .L80B77094                 
/* 0D6D8 80B77078 00000000 */  nop
/* 0D6DC 80B7707C 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 0D6E0 80B77080 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 0D6E4 80B77084 44818000 */  mtc1    $at, $f16                  ## $f16 = 2.00
/* 0D6E8 80B77088 E6180038 */  swc1    $f24, 0x0038($s0)          ## 80B82000
/* 0D6EC 80B7708C E60A0028 */  swc1    $f10, 0x0028($s0)          ## 80B81FF0
/* 0D6F0 80B77090 E6100034 */  swc1    $f16, 0x0034($s0)          ## 80B81FFC
.L80B77094:
/* 0D6F4 80B77094 0C01E107 */  jal     Math_ApproachF
              
/* 0D6F8 80B77098 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 0D6FC 80B7709C C6120028 */  lwc1    $f18, 0x0028($s0)          ## 80B81FF0
/* 0D700 80B770A0 C7A400D8 */  lwc1    $f4, 0x00D8($sp)           
/* 0D704 80B770A4 8604003C */  lh      $a0, 0x003C($s0)           ## 80B82004
/* 0D708 80B770A8 46049502 */  mul.s   $f20, $f18, $f4            
/* 0D70C 80B770AC 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 0D710 80B770B0 00000000 */  nop
/* 0D714 80B770B4 46140582 */  mul.s   $f22, $f0, $f20            
/* 0D718 80B770B8 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 0D71C 80B770BC 8604003E */  lh      $a0, 0x003E($s0)           ## 80B82006
/* 0D720 80B770C0 4600B202 */  mul.s   $f8, $f22, $f0             
/* 0D724 80B770C4 C6060004 */  lwc1    $f6, 0x0004($s0)           ## 80B81FCC
/* 0D728 80B770C8 8604003C */  lh      $a0, 0x003C($s0)           ## 80B82004
/* 0D72C 80B770CC 46083280 */  add.s   $f10, $f6, $f8             
/* 0D730 80B770D0 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 0D734 80B770D4 E60A0004 */  swc1    $f10, 0x0004($s0)          ## 80B81FCC
/* 0D738 80B770D8 4600A482 */  mul.s   $f18, $f20, $f0            
/* 0D73C 80B770DC C6100008 */  lwc1    $f16, 0x0008($s0)          ## 80B81FD0
/* 0D740 80B770E0 8604003E */  lh      $a0, 0x003E($s0)           ## 80B82006
/* 0D744 80B770E4 46128100 */  add.s   $f4, $f16, $f18            
/* 0D748 80B770E8 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 0D74C 80B770EC E6040008 */  swc1    $f4, 0x0008($s0)           ## 80B81FD0
/* 0D750 80B770F0 4600B202 */  mul.s   $f8, $f22, $f0             
/* 0D754 80B770F4 C606000C */  lwc1    $f6, 0x000C($s0)           ## 80B81FD4
/* 0D758 80B770F8 920D0044 */  lbu     $t5, 0x0044($s0)           ## 80B8200C
/* 0D75C 80B770FC 26040034 */  addiu   $a0, $s0, 0x0034           ## $a0 = 80B81FFC
/* 0D760 80B77100 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 0D764 80B77104 46083280 */  add.s   $f10, $f6, $f8             
/* 0D768 80B77108 11A00017 */  beq     $t5, $zero, .L80B77168     
/* 0D76C 80B7710C E60A000C */  swc1    $f10, 0x000C($s0)          ## 80B81FD4
/* 0D770 80B77110 4405C000 */  mfc1    $a1, $f24                  
/* 0D774 80B77114 4406C000 */  mfc1    $a2, $f24                  
/* 0D778 80B77118 0C01E107 */  jal     Math_ApproachF
              
/* 0D77C 80B7711C 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 0D780 80B77120 3C053ECC */  lui     $a1, 0x3ECC                ## $a1 = 3ECC0000
/* 0D784 80B77124 4406C000 */  mfc1    $a2, $f24                  
/* 0D788 80B77128 3C073D23 */  lui     $a3, 0x3D23                ## $a3 = 3D230000
/* 0D78C 80B7712C 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3D23D70A
/* 0D790 80B77130 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3ECCCCCD
/* 0D794 80B77134 0C01E107 */  jal     Math_ApproachF
              
/* 0D798 80B77138 26040038 */  addiu   $a0, $s0, 0x0038           ## $a0 = 80B82000
/* 0D79C 80B7713C C6100030 */  lwc1    $f16, 0x0030($s0)          ## 80B81FF8
/* 0D7A0 80B77140 C6120034 */  lwc1    $f18, 0x0034($s0)          ## 80B81FFC
/* 0D7A4 80B77144 46128100 */  add.s   $f4, $f16, $f18            
/* 0D7A8 80B77148 E6040030 */  swc1    $f4, 0x0030($s0)           ## 80B81FF8
/* 0D7AC 80B7714C 0C041184 */  jal     cosf
              
/* 0D7B0 80B77150 C60C0030 */  lwc1    $f12, 0x0030($s0)          ## 80B81FF8
/* 0D7B4 80B77154 C6060038 */  lwc1    $f6, 0x0038($s0)           ## 80B82000
/* 0D7B8 80B77158 C7AA00E0 */  lwc1    $f10, 0x00E0($sp)          
/* 0D7BC 80B7715C 46060202 */  mul.s   $f8, $f0, $f6              
/* 0D7C0 80B77160 460A4400 */  add.s   $f16, $f8, $f10            
/* 0D7C4 80B77164 E610002C */  swc1    $f16, 0x002C($s0)          ## 80B81FF4
.L80B77168:
/* 0D7C8 80B77168 26D60001 */  addiu   $s6, $s6, 0x0001           ## $s6 = 00000001
/* 0D7CC 80B7716C 0016B400 */  sll     $s6, $s6, 16               
/* 0D7D0 80B77170 0016B403 */  sra     $s6, $s6, 16               
/* 0D7D4 80B77174 2AC1003C */  slti    $at, $s6, 0x003C           
/* 0D7D8 80B77178 1420FEDC */  bne     $at, $zero, .L80B76CEC     
/* 0D7DC 80B7717C 26100048 */  addiu   $s0, $s0, 0x0048           ## $s0 = 80B82010
/* 0D7E0 80B77180 8FBF007C */  lw      $ra, 0x007C($sp)           
/* 0D7E4 80B77184 E7DE0000 */  swc1    $f30, 0x0000($s8)          ## 80B7A898
/* 0D7E8 80B77188 D7BE0050 */  ldc1    $f30, 0x0050($sp)          
/* 0D7EC 80B7718C 8FBE0078 */  lw      $s8, 0x0078($sp)           
/* 0D7F0 80B77190 D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 0D7F4 80B77194 D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 0D7F8 80B77198 D7B80038 */  ldc1    $f24, 0x0038($sp)          
/* 0D7FC 80B7719C D7BA0040 */  ldc1    $f26, 0x0040($sp)          
/* 0D800 80B771A0 D7BC0048 */  ldc1    $f28, 0x0048($sp)          
/* 0D804 80B771A4 8FB00058 */  lw      $s0, 0x0058($sp)           
/* 0D808 80B771A8 8FB1005C */  lw      $s1, 0x005C($sp)           
/* 0D80C 80B771AC 8FB20060 */  lw      $s2, 0x0060($sp)           
/* 0D810 80B771B0 8FB30064 */  lw      $s3, 0x0064($sp)           
/* 0D814 80B771B4 8FB40068 */  lw      $s4, 0x0068($sp)           
/* 0D818 80B771B8 8FB5006C */  lw      $s5, 0x006C($sp)           
/* 0D81C 80B771BC 8FB60070 */  lw      $s6, 0x0070($sp)           
/* 0D820 80B771C0 8FB70074 */  lw      $s7, 0x0074($sp)           
/* 0D824 80B771C4 03E00008 */  jr      $ra                        
/* 0D828 80B771C8 27BD0100 */  addiu   $sp, $sp, 0x0100           ## $sp = 00000000
