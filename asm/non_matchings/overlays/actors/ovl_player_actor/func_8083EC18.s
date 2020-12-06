.late_rodata
glabel D_808553D0
    .float 3.051851E-05

glabel D_808553D4
    .float 3.051851E-05

glabel D_808553D8
    .double 1.500000022351741790771484375E+01

glabel D_808553E0
    .double 1.500000022351741790771484375E+01

glabel D_808553E8
    .float 3.051851E-05

.text
glabel func_8083EC18
/* 0CA08 8083EC18 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 0CA0C 8083EC1C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0CA10 8083EC20 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0CA14 8083EC24 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 0CA18 8083EC28 AFA50094 */  sw      $a1, 0x0094($sp)           
/* 0CA1C 8083EC2C AFA60098 */  sw      $a2, 0x0098($sp)           
/* 0CA20 8083EC30 3C01429E */  lui     $at, 0x429E                ## $at = 429E0000
/* 0CA24 8083EC34 44813000 */  mtc1    $at, $f6                   ## $f6 = 79.00
/* 0CA28 8083EC38 C4840884 */  lwc1    $f4, 0x0884($a0)           ## 00000884
/* 0CA2C 8083EC3C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0CA30 8083EC40 4604303E */  c.le.s  $f6, $f4                   
/* 0CA34 8083EC44 00000000 */  nop
/* 0CA38 8083EC48 45020104 */  bc1fl   .L8083F05C                 
/* 0CA3C 8083EC4C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0CA40 8083EC50 8C8E067C */  lw      $t6, 0x067C($a0)           ## 0000067C
/* 0CA44 8083EC54 8FA90098 */  lw      $t1, 0x0098($sp)           
/* 0CA48 8083EC58 000E7900 */  sll     $t7, $t6,  4               
/* 0CA4C 8083EC5C 05E1000C */  bgez    $t7, .L8083EC90            
/* 0CA50 8083EC60 312A0008 */  andi    $t2, $t1, 0x0008           ## $t2 = 00000000
/* 0CA54 8083EC64 8098014F */  lb      $t8, 0x014F($a0)           ## 0000014F
/* 0CA58 8083EC68 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0CA5C 8083EC6C 13010008 */  beq     $t8, $at, .L8083EC90       
/* 0CA60 8083EC70 00000000 */  nop
/* 0CA64 8083EC74 8C990678 */  lw      $t9, 0x0678($a0)           ## 00000678
/* 0CA68 8083EC78 C4880084 */  lwc1    $f8, 0x0084($a0)           ## 00000084
/* 0CA6C 8083EC7C C72A002C */  lwc1    $f10, 0x002C($t9)          ## 0000002C
/* 0CA70 8083EC80 460A403C */  c.lt.s  $f8, $f10                  
/* 0CA74 8083EC84 00000000 */  nop
/* 0CA78 8083EC88 450200F4 */  bc1fl   .L8083F05C                 
/* 0CA7C 8083EC8C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8083EC90:
/* 0CA80 8083EC90 11400003 */  beq     $t2, $zero, .L8083ECA0     
/* 0CA84 8083EC94 00004025 */  or      $t0, $zero, $zero          ## $t0 = 00000000
/* 0CA88 8083EC98 10000001 */  beq     $zero, $zero, .L8083ECA0   
/* 0CA8C 8083EC9C 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
.L8083ECA0:
/* 0CA90 8083ECA0 1500000B */  bne     $t0, $zero, .L8083ECD0     
/* 0CA94 8083ECA4 8FAB0098 */  lw      $t3, 0x0098($sp)           
/* 0CA98 8083ECA8 316C0002 */  andi    $t4, $t3, 0x0002           ## $t4 = 00000000
/* 0CA9C 8083ECAC 15800008 */  bne     $t4, $zero, .L8083ECD0     
/* 0CAA0 8083ECB0 8FA40094 */  lw      $a0, 0x0094($sp)           
/* 0CAA4 8083ECB4 8E050074 */  lw      $a1, 0x0074($s0)           ## 00000074
/* 0CAA8 8083ECB8 9206007C */  lbu     $a2, 0x007C($s0)           ## 0000007C
/* 0CAAC 8083ECBC AFA8008C */  sw      $t0, 0x008C($sp)           
/* 0CAB0 8083ECC0 0C010793 */  jal     func_80041E4C              
/* 0CAB4 8083ECC4 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 0CAB8 8083ECC8 104000E3 */  beq     $v0, $zero, .L8083F058     
/* 0CABC 8083ECCC 8FA8008C */  lw      $t0, 0x008C($sp)           
.L8083ECD0:
/* 0CAC0 8083ECD0 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 0CAC4 8083ECD4 8E0D0074 */  lw      $t5, 0x0074($s0)           ## 00000074
/* 0CAC8 8083ECD8 27A70050 */  addiu   $a3, $sp, 0x0050           ## $a3 = FFFFFFC0
/* 0CACC 8083ECDC 4600A306 */  mov.s   $f12, $f20                 
/* 0CAD0 8083ECE0 11000004 */  beq     $t0, $zero, .L8083ECF4     
/* 0CAD4 8083ECE4 AFAD0084 */  sw      $t5, 0x0084($sp)           
/* 0CAD8 8083ECE8 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 0CADC 8083ECEC 10000067 */  beq     $zero, $zero, .L8083EE8C   
/* 0CAE0 8083ECF0 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
.L8083ECF4:
/* 0CAE4 8083ECF4 8FA60094 */  lw      $a2, 0x0094($sp)           
/* 0CAE8 8083ECF8 9205007C */  lbu     $a1, 0x007C($s0)           ## 0000007C
/* 0CAEC 8083ECFC AFA8008C */  sw      $t0, 0x008C($sp)           
/* 0CAF0 8083ED00 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 0CAF4 8083ED04 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 0CAF8 8083ED08 0C00E31E */  jal     func_80038C78              
/* 0CAFC 8083ED0C 24C607C0 */  addiu   $a2, $a2, 0x07C0           ## $a2 = 000007C0
/* 0CB00 8083ED10 C7AC0050 */  lwc1    $f12, 0x0050($sp)          
/* 0CB04 8083ED14 C7AE0058 */  lwc1    $f14, 0x0058($sp)          
/* 0CB08 8083ED18 8FA20044 */  lw      $v0, 0x0044($sp)           
/* 0CB0C 8083ED1C 8FA50084 */  lw      $a1, 0x0084($sp)           
/* 0CB10 8083ED20 8FA8008C */  lw      $t0, 0x008C($sp)           
/* 0CB14 8083ED24 C7B40054 */  lwc1    $f20, 0x0054($sp)          
/* 0CB18 8083ED28 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 0CB1C 8083ED2C 24040003 */  addiu   $a0, $zero, 0x0003         ## $a0 = 00000003
/* 0CB20 8083ED30 46006406 */  mov.s   $f16, $f12                 
/* 0CB24 8083ED34 46007486 */  mov.s   $f18, $f14                 
/* 0CB28 8083ED38 C440000C */  lwc1    $f0, 0x000C($v0)           ## 0000000C
.L8083ED3C:
/* 0CB2C 8083ED3C 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000002
/* 0CB30 8083ED40 2442000C */  addiu   $v0, $v0, 0x000C           ## $v0 = 0000000C
/* 0CB34 8083ED44 4610003C */  c.lt.s  $f0, $f16                  
/* 0CB38 8083ED48 00000000 */  nop
/* 0CB3C 8083ED4C 45020004 */  bc1fl   .L8083ED60                 
/* 0CB40 8083ED50 4600603C */  c.lt.s  $f12, $f0                  
/* 0CB44 8083ED54 10000006 */  beq     $zero, $zero, .L8083ED70   
/* 0CB48 8083ED58 46000406 */  mov.s   $f16, $f0                  
/* 0CB4C 8083ED5C 4600603C */  c.lt.s  $f12, $f0                  
.L8083ED60:
/* 0CB50 8083ED60 00000000 */  nop
/* 0CB54 8083ED64 45020003 */  bc1fl   .L8083ED74                 
/* 0CB58 8083ED68 C4400008 */  lwc1    $f0, 0x0008($v0)           ## 00000014
/* 0CB5C 8083ED6C 46000306 */  mov.s   $f12, $f0                  
.L8083ED70:
/* 0CB60 8083ED70 C4400008 */  lwc1    $f0, 0x0008($v0)           ## 00000014
.L8083ED74:
/* 0CB64 8083ED74 4612003C */  c.lt.s  $f0, $f18                  
/* 0CB68 8083ED78 00000000 */  nop
/* 0CB6C 8083ED7C 45020004 */  bc1fl   .L8083ED90                 
/* 0CB70 8083ED80 4600703C */  c.lt.s  $f14, $f0                  
/* 0CB74 8083ED84 10000006 */  beq     $zero, $zero, .L8083EDA0   
/* 0CB78 8083ED88 46000486 */  mov.s   $f18, $f0                  
/* 0CB7C 8083ED8C 4600703C */  c.lt.s  $f14, $f0                  
.L8083ED90:
/* 0CB80 8083ED90 00000000 */  nop
/* 0CB84 8083ED94 45020003 */  bc1fl   .L8083EDA4                 
/* 0CB88 8083ED98 C4400004 */  lwc1    $f0, 0x0004($v0)           ## 00000010
/* 0CB8C 8083ED9C 46000386 */  mov.s   $f14, $f0                  
.L8083EDA0:
/* 0CB90 8083EDA0 C4400004 */  lwc1    $f0, 0x0004($v0)           ## 00000010
.L8083EDA4:
/* 0CB94 8083EDA4 4614003C */  c.lt.s  $f0, $f20                  
/* 0CB98 8083EDA8 00000000 */  nop
/* 0CB9C 8083EDAC 45000002 */  bc1f    .L8083EDB8                 
/* 0CBA0 8083EDB0 00000000 */  nop
/* 0CBA4 8083EDB4 46000506 */  mov.s   $f20, $f0                  
.L8083EDB8:
/* 0CBA8 8083EDB8 5464FFE0 */  bnel    $v1, $a0, .L8083ED3C       
/* 0CBAC 8083EDBC C440000C */  lwc1    $f0, 0x000C($v0)           ## 00000018
/* 0CBB0 8083EDC0 460C8100 */  add.s   $f4, $f16, $f12            
/* 0CBB4 8083EDC4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0CBB8 8083EDC8 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 0CBBC 8083EDCC 84AE000C */  lh      $t6, 0x000C($a1)           ## 0000000C
/* 0CBC0 8083EDD0 460E9200 */  add.s   $f8, $f18, $f14            
/* 0CBC4 8083EDD4 46062402 */  mul.s   $f16, $f4, $f6             
/* 0CBC8 8083EDD8 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 0CBCC 8083EDDC 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 0CBD0 8083EDE0 3C018085 */  lui     $at, %hi(D_808553D0)       ## $at = 80850000
/* 0CBD4 8083EDE4 84AF0008 */  lh      $t7, 0x0008($a1)           ## 00000008
/* 0CBD8 8083EDE8 460A4482 */  mul.s   $f18, $f8, $f10            
/* 0CBDC 8083EDEC C42853D0 */  lwc1    $f8, %lo(D_808553D0)($at)  
/* 0CBE0 8083EDF0 3C018085 */  lui     $at, %hi(D_808553D4)       ## $at = 80850000
/* 0CBE4 8083EDF4 468021A0 */  cvt.s.w $f6, $f4                   
/* 0CBE8 8083EDF8 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 0CBEC 8083EDFC 46083282 */  mul.s   $f10, $f6, $f8             
/* 0CBF0 8083EE00 46102181 */  sub.s   $f6, $f4, $f16             
/* 0CBF4 8083EE04 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 0CBF8 8083EE08 460A3202 */  mul.s   $f8, $f6, $f10             
/* 0CBFC 8083EE0C C42A53D4 */  lwc1    $f10, %lo(D_808553D4)($at) 
/* 0CC00 8083EE10 3C018085 */  lui     $at, %hi(D_808553D8)       ## $at = 80850000
/* 0CC04 8083EE14 468021A0 */  cvt.s.w $f6, $f4                   
/* 0CC08 8083EE18 460A3102 */  mul.s   $f4, $f6, $f10             
/* 0CC0C 8083EE1C C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 0CC10 8083EE20 46123281 */  sub.s   $f10, $f6, $f18            
/* 0CC14 8083EE24 46045182 */  mul.s   $f6, $f10, $f4             
/* 0CC18 8083EE28 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 0CC1C 8083EE2C 46145101 */  sub.s   $f4, $f10, $f20            
/* 0CC20 8083EE30 46064301 */  sub.s   $f12, $f8, $f6             
/* 0CC24 8083EE34 E7A40048 */  swc1    $f4, 0x0048($sp)           
/* 0CC28 8083EE38 C7A80048 */  lwc1    $f8, 0x0048($sp)           
/* 0CC2C 8083EE3C D42653D8 */  ldc1    $f6, %lo(D_808553D8)($at)  
/* 0CC30 8083EE40 3C013FE0 */  lui     $at, 0x3FE0                ## $at = 3FE00000
/* 0CC34 8083EE44 460040A1 */  cvt.d.s $f2, $f8                   
/* 0CC38 8083EE48 44812800 */  mtc1    $at, $f5                   ## $f5 = 1.75
/* 0CC3C 8083EE4C 46261283 */  div.d   $f10, $f2, $f6             
/* 0CC40 8083EE50 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0CC44 8083EE54 3C018085 */  lui     $at, %hi(D_808553E0)       ## $at = 80850000
/* 0CC48 8083EE58 46006005 */  abs.s   $f0, $f12                  
/* 0CC4C 8083EE5C 46000306 */  mov.s   $f12, $f0                  
/* 0CC50 8083EE60 46245200 */  add.d   $f8, $f10, $f4             
/* 0CC54 8083EE64 4620418D */  trunc.w.d $f6, $f8                   
/* 0CC58 8083EE68 44193000 */  mfc1    $t9, $f6                   
/* 0CC5C 8083EE6C D42653E0 */  ldc1    $f6, %lo(D_808553E0)($at)  
/* 0CC60 8083EE70 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 0CC64 8083EE74 00000000 */  nop
/* 0CC68 8083EE78 46805120 */  cvt.s.w $f4, $f10                  
/* 0CC6C 8083EE7C 46002221 */  cvt.d.s $f8, $f4                   
/* 0CC70 8083EE80 46264282 */  mul.d   $f10, $f8, $f6             
/* 0CC74 8083EE84 46225101 */  sub.d   $f4, $f10, $f2             
/* 0CC78 8083EE88 46202520 */  cvt.s.d $f20, $f4                  
.L8083EE8C:
/* 0CC7C 8083EE8C 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 0CC80 8083EE90 44814000 */  mtc1    $at, $f8                   ## $f8 = 8.00
/* 0CC84 8083EE94 8FA90084 */  lw      $t1, 0x0084($sp)           
/* 0CC88 8083EE98 4608603C */  c.lt.s  $f12, $f8                  
/* 0CC8C 8083EE9C 00000000 */  nop
/* 0CC90 8083EEA0 4502006E */  bc1fl   .L8083F05C                 
/* 0CC94 8083EEA4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0CC98 8083EEA8 852A0008 */  lh      $t2, 0x0008($t1)           ## 00000008
/* 0CC9C 8083EEAC 3C018085 */  lui     $at, %hi(D_808553E8)       ## $at = 80850000
/* 0CCA0 8083EEB0 C42253E8 */  lwc1    $f2, %lo(D_808553E8)($at)  
/* 0CCA4 8083EEB4 448A3000 */  mtc1    $t2, $f6                   ## $f6 = 0.00
/* 0CCA8 8083EEB8 3C068084 */  lui     $a2, %hi(func_8083A3B0)    ## $a2 = 80840000
/* 0CCAC 8083EEBC 24C6A3B0 */  addiu   $a2, $a2, %lo(func_8083A3B0) ## $a2 = 8083A3B0
/* 0CCB0 8083EEC0 468032A0 */  cvt.s.w $f10, $f6                  
/* 0CCB4 8083EEC4 8FA40094 */  lw      $a0, 0x0094($sp)           
/* 0CCB8 8083EEC8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0CCBC 8083EECC 46025102 */  mul.s   $f4, $f10, $f2             
/* 0CCC0 8083EED0 E7A4003C */  swc1    $f4, 0x003C($sp)           
/* 0CCC4 8083EED4 852B000C */  lh      $t3, 0x000C($t1)           ## 0000000C
/* 0CCC8 8083EED8 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 0CCCC 8083EEDC 00000000 */  nop
/* 0CCD0 8083EEE0 468041A0 */  cvt.s.w $f6, $f8                   
/* 0CCD4 8083EEE4 46023282 */  mul.s   $f10, $f6, $f2             
/* 0CCD8 8083EEE8 E7AA0038 */  swc1    $f10, 0x0038($sp)          
/* 0CCDC 8083EEEC C6000888 */  lwc1    $f0, 0x0888($s0)           ## 00000888
/* 0CCE0 8083EEF0 E7B2007C */  swc1    $f18, 0x007C($sp)          
/* 0CCE4 8083EEF4 E7B00080 */  swc1    $f16, 0x0080($sp)          
/* 0CCE8 8083EEF8 AFA8008C */  sw      $t0, 0x008C($sp)           
/* 0CCEC 8083EEFC 0C20DA26 */  jal     func_80836898              
/* 0CCF0 8083EF00 E7A00034 */  swc1    $f0, 0x0034($sp)           
/* 0CCF4 8083EF04 8E0C067C */  lw      $t4, 0x067C($s0)           ## 0000067C
/* 0CCF8 8083EF08 3C010020 */  lui     $at, 0x0020                ## $at = 00200000
/* 0CCFC 8083EF0C 8FA8008C */  lw      $t0, 0x008C($sp)           
/* 0CD00 8083EF10 01816825 */  or      $t5, $t4, $at              ## $t5 = 00200000
/* 0CD04 8083EF14 3C01F7FF */  lui     $at, 0xF7FF                ## $at = F7FF0000
/* 0CD08 8083EF18 C7A00034 */  lwc1    $f0, 0x0034($sp)           
/* 0CD0C 8083EF1C C7B00080 */  lwc1    $f16, 0x0080($sp)          
/* 0CD10 8083EF20 C7B2007C */  lwc1    $f18, 0x007C($sp)          
/* 0CD14 8083EF24 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = F7FFFFFF
/* 0CD18 8083EF28 AE0D067C */  sw      $t5, 0x067C($s0)           ## 0000067C
/* 0CD1C 8083EF2C 01A17824 */  and     $t7, $t5, $at              
/* 0CD20 8083EF30 15000004 */  bne     $t0, $zero, .L8083EF44     
/* 0CD24 8083EF34 AE0F067C */  sw      $t7, 0x067C($s0)           ## 0000067C
/* 0CD28 8083EF38 8FB80098 */  lw      $t8, 0x0098($sp)           
/* 0CD2C 8083EF3C 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 0CD30 8083EF40 13200026 */  beq     $t9, $zero, .L8083EFDC     
.L8083EF44:
/* 0CD34 8083EF44 00085600 */  sll     $t2, $t0, 24               
/* 0CD38 8083EF48 000A4E03 */  sra     $t1, $t2, 24               
/* 0CD3C 8083EF4C 11200011 */  beq     $t1, $zero, .L8083EF94     
/* 0CD40 8083EF50 A208084F */  sb      $t0, 0x084F($s0)           ## 0000084F
/* 0CD44 8083EF54 960B0088 */  lhu     $t3, 0x0088($s0)           ## 00000088
/* 0CD48 8083EF58 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 0CD4C 8083EF5C 24C62D68 */  addiu   $a2, $a2, 0x2D68           ## $a2 = 04002D68
/* 0CD50 8083EF60 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 0CD54 8083EF64 11800004 */  beq     $t4, $zero, .L8083EF78     
/* 0CD58 8083EF68 00000000 */  nop
/* 0CD5C 8083EF6C 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 0CD60 8083EF70 10000001 */  beq     $zero, $zero, .L8083EF78   
/* 0CD64 8083EF74 24C62D80 */  addiu   $a2, $a2, 0x2D80           ## $a2 = 04002D80
.L8083EF78:
/* 0CD68 8083EF78 8E0D0678 */  lw      $t5, 0x0678($s0)           ## 00000678
/* 0CD6C 8083EF7C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0CD70 8083EF80 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 0CD74 8083EF84 C5A40038 */  lwc1    $f4, 0x0038($t5)           ## 00200038
/* 0CD78 8083EF88 46082181 */  sub.s   $f6, $f4, $f8              
/* 0CD7C 8083EF8C 10000006 */  beq     $zero, $zero, .L8083EFA8   
/* 0CD80 8083EF90 46003001 */  sub.s   $f0, $f6, $f0              
.L8083EF94:
/* 0CD84 8083EF94 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0CD88 8083EF98 8E0E0678 */  lw      $t6, 0x0678($s0)           ## 00000678
/* 0CD8C 8083EF9C 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 0CD90 8083EFA0 8DC600A4 */  lw      $a2, 0x00A4($t6)           ## 000000A4
/* 0CD94 8083EFA4 460A0001 */  sub.s   $f0, $f0, $f10             
.L8083EFA8:
/* 0CD98 8083EFA8 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 0CD9C 8083EFAC 8602007E */  lh      $v0, 0x007E($s0)           ## 0000007E
/* 0CDA0 8083EFB0 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 0CDA4 8083EFB4 46142200 */  add.s   $f8, $f4, $f20             
/* 0CDA8 8083EFB8 00411021 */  addu    $v0, $v0, $at              
/* 0CDAC 8083EFBC 00021400 */  sll     $v0, $v0, 16               
/* 0CDB0 8083EFC0 240FFFFE */  addiu   $t7, $zero, 0xFFFE         ## $t7 = FFFFFFFE
/* 0CDB4 8083EFC4 00021403 */  sra     $v0, $v0, 16               
/* 0CDB8 8083EFC8 A60F0850 */  sh      $t7, 0x0850($s0)           ## 00000850
/* 0CDBC 8083EFCC E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 0CDC0 8083EFD0 A602083C */  sh      $v0, 0x083C($s0)           ## 0000083C
/* 0CDC4 8083EFD4 10000008 */  beq     $zero, $zero, .L8083EFF8   
/* 0CDC8 8083EFD8 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
.L8083EFDC:
/* 0CDCC 8083EFDC 8E180678 */  lw      $t8, 0x0678($s0)           ## 00000678
/* 0CDD0 8083EFE0 8602007E */  lh      $v0, 0x007E($s0)           ## 0000007E
/* 0CDD4 8083EFE4 2419FFFC */  addiu   $t9, $zero, 0xFFFC         ## $t9 = FFFFFFFC
/* 0CDD8 8083EFE8 8F0600A8 */  lw      $a2, 0x00A8($t8)           ## 000000A8
/* 0CDDC 8083EFEC A6190850 */  sh      $t9, 0x0850($s0)           ## 00000850
/* 0CDE0 8083EFF0 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 0CDE4 8083EFF4 A602083C */  sh      $v0, 0x083C($s0)           ## 0000083C
.L8083EFF8:
/* 0CDE8 8083EFF8 C7A6003C */  lwc1    $f6, 0x003C($sp)           
/* 0CDEC 8083EFFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0CDF0 8083F000 46060282 */  mul.s   $f10, $f0, $f6             
/* 0CDF4 8083F004 46105100 */  add.s   $f4, $f10, $f16            
/* 0CDF8 8083F008 E6040024 */  swc1    $f4, 0x0024($s0)           ## 00000024
/* 0CDFC 8083F00C C7A80038 */  lwc1    $f8, 0x0038($sp)           
/* 0CE00 8083F010 46080182 */  mul.s   $f6, $f0, $f8              
/* 0CE04 8083F014 46123280 */  add.s   $f10, $f6, $f18            
/* 0CE08 8083F018 E60A002C */  swc1    $f10, 0x002C($s0)          ## 0000002C
/* 0CE0C 8083F01C 0C20C889 */  jal     func_80832224              
/* 0CE10 8083F020 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 0CE14 8083F024 26040100 */  addiu   $a0, $s0, 0x0100           ## $a0 = 00000100
/* 0CE18 8083F028 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 0CE1C 8083F02C 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 0CE20 8083F030 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 0CE24 8083F034 8FA40094 */  lw      $a0, 0x0094($sp)           
/* 0CE28 8083F038 0C20C899 */  jal     func_80832264              
/* 0CE2C 8083F03C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0CE30 8083F040 8FA40094 */  lw      $a0, 0x0094($sp)           
/* 0CE34 8083F044 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0CE38 8083F048 0C20CBD5 */  jal     func_80832F54              
/* 0CE3C 8083F04C 2406009F */  addiu   $a2, $zero, 0x009F         ## $a2 = 0000009F
/* 0CE40 8083F050 10000002 */  beq     $zero, $zero, .L8083F05C   
/* 0CE44 8083F054 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083F058:
/* 0CE48 8083F058 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8083F05C:
/* 0CE4C 8083F05C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0CE50 8083F060 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 0CE54 8083F064 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0CE58 8083F068 03E00008 */  jr      $ra                        
/* 0CE5C 8083F06C 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
