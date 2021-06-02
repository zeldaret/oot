.late_rodata
glabel D_8095C930
    .float 0.3

glabel D_8095C934
    .float 0.01

glabel D_8095C938
    .float 0.9

.text
glabel func_8095B9B0
/* 0C6F0 8095B9B0 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 0C6F4 8095B9B4 3C0F8096 */  lui     $t7, %hi(D_8095C368)       ## $t7 = 80960000
/* 0C6F8 8095B9B8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0C6FC 8095B9BC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0C700 8095B9C0 AFA40050 */  sw      $a0, 0x0050($sp)           
/* 0C704 8095B9C4 AFA7005C */  sw      $a3, 0x005C($sp)           
/* 0C708 8095B9C8 25EFC368 */  addiu   $t7, $t7, %lo(D_8095C368)  ## $t7 = 8095C368
/* 0C70C 8095B9CC 8DF90000 */  lw      $t9, 0x0000($t7)           ## 8095C368
/* 0C710 8095B9D0 27AE003C */  addiu   $t6, $sp, 0x003C           ## $t6 = FFFFFFEC
/* 0C714 8095B9D4 8DF80004 */  lw      $t8, 0x0004($t7)           ## 8095C36C
/* 0C718 8095B9D8 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFEC
/* 0C71C 8095B9DC 8DF90008 */  lw      $t9, 0x0008($t7)           ## 8095C370
/* 0C720 8095B9E0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0C724 8095B9E4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0C728 8095B9E8 24030190 */  addiu   $v1, $zero, 0x0190         ## $v1 = 00000190
/* 0C72C 8095B9EC ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF0
/* 0C730 8095B9F0 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF4
.L8095B9F4:
/* 0C734 8095B9F4 92080024 */  lbu     $t0, 0x0024($s0)           ## 00000024
/* 0C738 8095B9F8 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 0C73C 8095B9FC 1500006D */  bne     $t0, $zero, .L8095BBB4     
/* 0C740 8095BA00 24090008 */  addiu   $t1, $zero, 0x0008         ## $t1 = 00000008
/* 0C744 8095BA04 A2090024 */  sb      $t1, 0x0024($s0)           ## 00000024
/* 0C748 8095BA08 8CCB0000 */  lw      $t3, 0x0000($a2)           ## 00000000
/* 0C74C 8095BA0C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0C750 8095BA10 AE0B0000 */  sw      $t3, 0x0000($s0)           ## 00000000
/* 0C754 8095BA14 8CCA0004 */  lw      $t2, 0x0004($a2)           ## 00000004
/* 0C758 8095BA18 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 0C75C 8095BA1C 8CCB0008 */  lw      $t3, 0x0008($a2)           ## 00000008
/* 0C760 8095BA20 E6040044 */  swc1    $f4, 0x0044($s0)           ## 00000044
/* 0C764 8095BA24 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 0C768 8095BA28 AE0B0008 */  sw      $t3, 0x0008($s0)           ## 00000008
/* 0C76C 8095BA2C 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 0C770 8095BA30 44811000 */  mtc1    $at, $f2                   ## $f2 = 4.00
/* 0C774 8095BA34 87A4005E */  lh      $a0, 0x005E($sp)           
/* 0C778 8095BA38 46020182 */  mul.s   $f6, $f0, $f2              
/* 0C77C 8095BA3C 46023200 */  add.s   $f8, $f6, $f2              
/* 0C780 8095BA40 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 0C784 8095BA44 E7A80048 */  swc1    $f8, 0x0048($sp)           
/* 0C788 8095BA48 C7AA0048 */  lwc1    $f10, 0x0048($sp)          
/* 0C78C 8095BA4C 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 0C790 8095BA50 44816000 */  mtc1    $at, $f12                  ## $f12 = 8.00
/* 0C794 8095BA54 460A0402 */  mul.s   $f16, $f0, $f10            
/* 0C798 8095BA58 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 0C79C 8095BA5C E7B00030 */  swc1    $f16, 0x0030($sp)          
/* 0C7A0 8095BA60 E7A00034 */  swc1    $f0, 0x0034($sp)           
/* 0C7A4 8095BA64 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 0C7A8 8095BA68 87A4005E */  lh      $a0, 0x005E($sp)           
/* 0C7AC 8095BA6C C7B20048 */  lwc1    $f18, 0x0048($sp)          
/* 0C7B0 8095BA70 27AC0030 */  addiu   $t4, $sp, 0x0030           ## $t4 = FFFFFFE0
/* 0C7B4 8095BA74 3C018096 */  lui     $at, %hi(D_8095C930)       ## $at = 80960000
/* 0C7B8 8095BA78 46120102 */  mul.s   $f4, $f0, $f18             
/* 0C7BC 8095BA7C E7A40038 */  swc1    $f4, 0x0038($sp)           
/* 0C7C0 8095BA80 8D8E0000 */  lw      $t6, 0x0000($t4)           ## FFFFFFE0
/* 0C7C4 8095BA84 AE0E000C */  sw      $t6, 0x000C($s0)           ## 0000000C
/* 0C7C8 8095BA88 8D8D0004 */  lw      $t5, 0x0004($t4)           ## FFFFFFE4
/* 0C7CC 8095BA8C AE0D0010 */  sw      $t5, 0x0010($s0)           ## 00000010
/* 0C7D0 8095BA90 8D8E0008 */  lw      $t6, 0x0008($t4)           ## FFFFFFE8
/* 0C7D4 8095BA94 AE0E0014 */  sw      $t6, 0x0014($s0)           ## 00000014
/* 0C7D8 8095BA98 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 0C7DC 8095BA9C C42CC930 */  lwc1    $f12, %lo(D_8095C930)($at) 
/* 0C7E0 8095BAA0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0C7E4 8095BAA4 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 0C7E8 8095BAA8 27AF003C */  addiu   $t7, $sp, 0x003C           ## $t7 = FFFFFFEC
/* 0C7EC 8095BAAC 24080014 */  addiu   $t0, $zero, 0x0014         ## $t0 = 00000014
/* 0C7F0 8095BAB0 46060201 */  sub.s   $f8, $f0, $f6              
/* 0C7F4 8095BAB4 3C098096 */  lui     $t1, %hi(D_809668D2)       ## $t1 = 80960000
/* 0C7F8 8095BAB8 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 0C7FC 8095BABC 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 0C800 8095BAC0 E7A80040 */  swc1    $f8, 0x0040($sp)           
/* 0C804 8095BAC4 8DF90000 */  lw      $t9, 0x0000($t7)           ## FFFFFFEC
/* 0C808 8095BAC8 240C009B */  addiu   $t4, $zero, 0x009B         ## $t4 = 0000009B
/* 0C80C 8095BACC 240D0037 */  addiu   $t5, $zero, 0x0037         ## $t5 = 00000037
/* 0C810 8095BAD0 AE190018 */  sw      $t9, 0x0018($s0)           ## 00000018
/* 0C814 8095BAD4 8DF80004 */  lw      $t8, 0x0004($t7)           ## FFFFFFF0
/* 0C818 8095BAD8 AE18001C */  sw      $t8, 0x001C($s0)           ## 0000001C
/* 0C81C 8095BADC 8DF90008 */  lw      $t9, 0x0008($t7)           ## FFFFFFF4
/* 0C820 8095BAE0 A6080026 */  sh      $t0, 0x0026($s0)           ## 00000026
/* 0C824 8095BAE4 AE190020 */  sw      $t9, 0x0020($s0)           ## 00000020
/* 0C828 8095BAE8 812968D2 */  lb      $t1, %lo(D_809668D2)($t1)  
/* 0C82C 8095BAEC 29210014 */  slti    $at, $t1, 0x0014           
/* 0C830 8095BAF0 50200004 */  beql    $at, $zero, .L8095BB04     
/* 0C834 8095BAF4 A6000028 */  sh      $zero, 0x0028($s0)         ## 00000028
/* 0C838 8095BAF8 10000002 */  beq     $zero, $zero, .L8095BB04   
/* 0C83C 8095BAFC A60A0028 */  sh      $t2, 0x0028($s0)           ## 00000028
/* 0C840 8095BB00 A6000028 */  sh      $zero, 0x0028($s0)         ## 00000028
.L8095BB04:
/* 0C844 8095BB04 A60B003E */  sh      $t3, 0x003E($s0)           ## 0000003E
/* 0C848 8095BB08 8602003E */  lh      $v0, 0x003E($s0)           ## 0000003E
/* 0C84C 8095BB0C A60D0034 */  sh      $t5, 0x0034($s0)           ## 00000034
/* 0C850 8095BB10 860E0034 */  lh      $t6, 0x0034($s0)           ## 00000034
/* 0C854 8095BB14 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 0C858 8095BB18 44816000 */  mtc1    $at, $f12                  ## $f12 = 65536.00
/* 0C85C 8095BB1C A60C0030 */  sh      $t4, 0x0030($s0)           ## 00000030
/* 0C860 8095BB20 A602003C */  sh      $v0, 0x003C($s0)           ## 0000003C
/* 0C864 8095BB24 A602003A */  sh      $v0, 0x003A($s0)           ## 0000003A
/* 0C868 8095BB28 A6020038 */  sh      $v0, 0x0038($s0)           ## 00000038
/* 0C86C 8095BB2C A6020036 */  sh      $v0, 0x0036($s0)           ## 00000036
/* 0C870 8095BB30 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 0C874 8095BB34 A60E0032 */  sh      $t6, 0x0032($s0)           ## 00000032
/* 0C878 8095BB38 4600028D */  trunc.w.s $f10, $f0                  
/* 0C87C 8095BB3C 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 0C880 8095BB40 44816000 */  mtc1    $at, $f12                  ## $f12 = 65536.00
/* 0C884 8095BB44 44185000 */  mfc1    $t8, $f10                  
/* 0C888 8095BB48 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 0C88C 8095BB4C A618002A */  sh      $t8, 0x002A($s0)           ## 0000002A
/* 0C890 8095BB50 4600040D */  trunc.w.s $f16, $f0                  
/* 0C894 8095BB54 44088000 */  mfc1    $t0, $f16                  
/* 0C898 8095BB58 00000000 */  nop
/* 0C89C 8095BB5C A608002C */  sh      $t0, 0x002C($s0)           ## 0000002C
/* 0C8A0 8095BB60 87A90062 */  lh      $t1, 0x0062($sp)           
/* 0C8A4 8095BB64 44899000 */  mtc1    $t1, $f18                  ## $f18 = 0.00
/* 0C8A8 8095BB68 00000000 */  nop
/* 0C8AC 8095BB6C 46809320 */  cvt.s.w $f12, $f18                 
/* 0C8B0 8095BB70 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 0C8B4 8095BB74 E7AC0024 */  swc1    $f12, 0x0024($sp)          
/* 0C8B8 8095BB78 C7AC0024 */  lwc1    $f12, 0x0024($sp)          
/* 0C8BC 8095BB7C 3C018096 */  lui     $at, %hi(D_8095C934)       ## $at = 80960000
/* 0C8C0 8095BB80 C426C934 */  lwc1    $f6, %lo(D_8095C934)($at)  
/* 0C8C4 8095BB84 460C0100 */  add.s   $f4, $f0, $f12             
/* 0C8C8 8095BB88 46062202 */  mul.s   $f8, $f4, $f6              
/* 0C8CC 8095BB8C 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 0C8D0 8095BB90 E6080040 */  swc1    $f8, 0x0040($s0)           ## 00000040
/* 0C8D4 8095BB94 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 0C8D8 8095BB98 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.25
/* 0C8DC 8095BB9C 3C018096 */  lui     $at, %hi(D_8095C938)       ## $at = 80960000
/* 0C8E0 8095BBA0 C432C938 */  lwc1    $f18, %lo(D_8095C938)($at) 
/* 0C8E4 8095BBA4 460A0402 */  mul.s   $f16, $f0, $f10            
/* 0C8E8 8095BBA8 46128100 */  add.s   $f4, $f16, $f18            
/* 0C8EC 8095BBAC 10000003 */  beq     $zero, $zero, .L8095BBBC   
/* 0C8F0 8095BBB0 E604004C */  swc1    $f4, 0x004C($s0)           ## 0000004C
.L8095BBB4:
/* 0C8F4 8095BBB4 1443FF8F */  bne     $v0, $v1, .L8095B9F4       
/* 0C8F8 8095BBB8 26100058 */  addiu   $s0, $s0, 0x0058           ## $s0 = 00000058
.L8095BBBC:
/* 0C8FC 8095BBBC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0C900 8095BBC0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0C904 8095BBC4 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 0C908 8095BBC8 03E00008 */  jr      $ra                        
/* 0C90C 8095BBCC 00000000 */  nop
