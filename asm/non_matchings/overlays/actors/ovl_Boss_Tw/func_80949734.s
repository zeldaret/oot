.late_rodata
glabel D_8094B210
    .float 1.99000000954

.text
glabel func_80949734
/* 10A64 80949734 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 10A68 80949738 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 10A6C 8094973C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 10A70 80949740 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 10A74 80949744 24840568 */  addiu   $a0, $a0, 0x0568           ## $a0 = 00000568
/* 10A78 80949748 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 10A7C 8094974C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 10A80 80949750 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 10A84 80949754 C600005C */  lwc1    $f0, 0x005C($s0)           ## 0000005C
/* 10A88 80949758 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 10A8C 8094975C 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.50
/* 10A90 80949760 46000005 */  abs.s   $f0, $f0                   
/* 10A94 80949764 3C063CF5 */  lui     $a2, 0x3CF5                ## $a2 = 3CF50000
/* 10A98 80949768 46040182 */  mul.s   $f6, $f0, $f4              
/* 10A9C 8094976C 34C6C28F */  ori     $a2, $a2, 0xC28F           ## $a2 = 3CF5C28F
/* 10AA0 80949770 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 10AA4 80949774 8E0504B0 */  lw      $a1, 0x04B0($s0)           ## 000004B0
/* 10AA8 80949778 44073000 */  mfc1    $a3, $f6                   
/* 10AAC 8094977C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 10AB0 80949780 00000000 */  nop
/* 10AB4 80949784 C6000060 */  lwc1    $f0, 0x0060($s0)           ## 00000060
/* 10AB8 80949788 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 10ABC 8094978C 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.50
/* 10AC0 80949790 46000005 */  abs.s   $f0, $f0                   
/* 10AC4 80949794 3C063CF5 */  lui     $a2, 0x3CF5                ## $a2 = 3CF50000
/* 10AC8 80949798 46080282 */  mul.s   $f10, $f0, $f8             
/* 10ACC 8094979C 34C6C28F */  ori     $a2, $a2, 0xC28F           ## $a2 = 3CF5C28F
/* 10AD0 809497A0 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 10AD4 809497A4 8E0504B4 */  lw      $a1, 0x04B4($s0)           ## 000004B4
/* 10AD8 809497A8 44075000 */  mfc1    $a3, $f10                  
/* 10ADC 809497AC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 10AE0 809497B0 00000000 */  nop
/* 10AE4 809497B4 C6000064 */  lwc1    $f0, 0x0064($s0)           ## 00000064
/* 10AE8 809497B8 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 10AEC 809497BC 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.50
/* 10AF0 809497C0 46000005 */  abs.s   $f0, $f0                   
/* 10AF4 809497C4 3C063CF5 */  lui     $a2, 0x3CF5                ## $a2 = 3CF50000
/* 10AF8 809497C8 46100482 */  mul.s   $f18, $f0, $f16            
/* 10AFC 809497CC 34C6C28F */  ori     $a2, $a2, 0xC28F           ## $a2 = 3CF5C28F
/* 10B00 809497D0 2604002C */  addiu   $a0, $s0, 0x002C           ## $a0 = 0000002C
/* 10B04 809497D4 8E0504B8 */  lw      $a1, 0x04B8($s0)           ## 000004B8
/* 10B08 809497D8 44079000 */  mfc1    $a3, $f18                  
/* 10B0C 809497DC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 10B10 809497E0 00000000 */  nop
/* 10B14 809497E4 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 10B18 809497E8 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 10B1C 809497EC 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 10B20 809497F0 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 10B24 809497F4 24071000 */  addiu   $a3, $zero, 0x1000         ## $a3 = 00001000
/* 10B28 809497F8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 10B2C 809497FC 0C0295B2 */  jal     func_800A56C8              
/* 10B30 80949800 8E0501A4 */  lw      $a1, 0x01A4($s0)           ## 000001A4
/* 10B34 80949804 50400042 */  beql    $v0, $zero, .L80949910     
/* 10B38 80949808 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 10B3C 8094980C 820E00AF */  lb      $t6, 0x00AF($s0)           ## 000000AF
/* 10B40 80949810 3C038095 */  lui     $v1, %hi(D_8094C85E)       ## $v1 = 80950000
/* 10B44 80949814 2463C85E */  addiu   $v1, $v1, %lo(D_8094C85E)  ## $v1 = 8094C85E
/* 10B48 80949818 29C1000A */  slti    $at, $t6, 0x000A           
/* 10B4C 8094981C 10200026 */  beq     $at, $zero, .L809498B8     
/* 10B50 80949820 3C018095 */  lui     $at, %hi(D_8094B210)       ## $at = 80950000
/* 10B54 80949824 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 10B58 80949828 C42CB210 */  lwc1    $f12, %lo(D_8094B210)($at) 
/* 10B5C 8094982C 444FF800 */  cfc1    $t7, $31
/* 10B60 80949830 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 10B64 80949834 44D8F800 */  ctc1    $t8, $31
/* 10B68 80949838 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 10B6C 8094983C 46000124 */  cvt.w.s $f4, $f0                   
/* 10B70 80949840 4458F800 */  cfc1    $t8, $31
/* 10B74 80949844 00000000 */  nop
/* 10B78 80949848 33180078 */  andi    $t8, $t8, 0x0078           ## $t8 = 00000000
/* 10B7C 8094984C 53000013 */  beql    $t8, $zero, .L8094989C     
/* 10B80 80949850 44182000 */  mfc1    $t8, $f4                   
/* 10B84 80949854 44812000 */  mtc1    $at, $f4                   ## $f4 = 2147483648.00
/* 10B88 80949858 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 10B8C 8094985C 46040101 */  sub.s   $f4, $f0, $f4              
/* 10B90 80949860 44D8F800 */  ctc1    $t8, $31
/* 10B94 80949864 00000000 */  nop
/* 10B98 80949868 46002124 */  cvt.w.s $f4, $f4                   
/* 10B9C 8094986C 4458F800 */  cfc1    $t8, $31
/* 10BA0 80949870 00000000 */  nop
/* 10BA4 80949874 33180078 */  andi    $t8, $t8, 0x0078           ## $t8 = 00000000
/* 10BA8 80949878 17000005 */  bne     $t8, $zero, .L80949890     
/* 10BAC 8094987C 00000000 */  nop
/* 10BB0 80949880 44182000 */  mfc1    $t8, $f4                   
/* 10BB4 80949884 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 10BB8 80949888 10000007 */  beq     $zero, $zero, .L809498A8   
/* 10BBC 8094988C 0301C025 */  or      $t8, $t8, $at              ## $t8 = 80000000
.L80949890:
/* 10BC0 80949890 10000005 */  beq     $zero, $zero, .L809498A8   
/* 10BC4 80949894 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 10BC8 80949898 44182000 */  mfc1    $t8, $f4                   
.L8094989C:
/* 10BCC 8094989C 00000000 */  nop
/* 10BD0 809498A0 0700FFFB */  bltz    $t8, .L80949890            
/* 10BD4 809498A4 00000000 */  nop
.L809498A8:
/* 10BD8 809498A8 44CFF800 */  ctc1    $t7, $31
/* 10BDC 809498AC 3C018095 */  lui     $at, %hi(D_8094C85C)       ## $at = 80950000
/* 10BE0 809498B0 10000013 */  beq     $zero, $zero, .L80949900   
/* 10BE4 809498B4 A038C85C */  sb      $t8, %lo(D_8094C85C)($at)  
.L809498B8:
/* 10BE8 809498B8 90790000 */  lbu     $t9, 0x0000($v1)           ## 00000000
/* 10BEC 809498BC 3C048095 */  lui     $a0, %hi(D_8094C85D)       ## $a0 = 80950000
/* 10BF0 809498C0 2484C85D */  addiu   $a0, $a0, %lo(D_8094C85D)  ## $a0 = 8094C85D
/* 10BF4 809498C4 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 10BF8 809498C8 310900FF */  andi    $t1, $t0, 0x00FF           ## $t1 = 00000001
/* 10BFC 809498CC 29210004 */  slti    $at, $t1, 0x0004           
/* 10C00 809498D0 14200006 */  bne     $at, $zero, .L809498EC     
/* 10C04 809498D4 A0680000 */  sb      $t0, 0x0000($v1)           ## 00000000
/* 10C08 809498D8 90820000 */  lbu     $v0, 0x0000($a0)           ## 8094C85D
/* 10C0C 809498DC 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 10C10 809498E0 A06A0000 */  sb      $t2, 0x0000($v1)           ## 00000000
/* 10C14 809498E4 2C420001 */  sltiu   $v0, $v0, 0x0001           
/* 10C18 809498E8 A0820000 */  sb      $v0, 0x0000($a0)           ## 8094C85D
.L809498EC:
/* 10C1C 809498EC 3C048095 */  lui     $a0, %hi(D_8094C85D)       ## $a0 = 80950000
/* 10C20 809498F0 2484C85D */  addiu   $a0, $a0, %lo(D_8094C85D)  ## $a0 = 8094C85D
/* 10C24 809498F4 908B0000 */  lbu     $t3, 0x0000($a0)           ## 8094C85D
/* 10C28 809498F8 3C018095 */  lui     $at, %hi(D_8094C85C)       ## $at = 80950000
/* 10C2C 809498FC A02BC85C */  sb      $t3, %lo(D_8094C85C)($at)  
.L80949900:
/* 10C30 80949900 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 10C34 80949904 0C252648 */  jal     func_80949920              
/* 10C38 80949908 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 10C3C 8094990C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80949910:
/* 10C40 80949910 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 10C44 80949914 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 10C48 80949918 03E00008 */  jr      $ra                        
/* 10C4C 8094991C 00000000 */  nop
