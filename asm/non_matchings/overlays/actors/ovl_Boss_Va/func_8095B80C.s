.late_rodata
glabel D_8095C92C
    .float 0.01

.text
glabel func_8095B80C
/* 0C54C 8095B80C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0C550 8095B810 3C0E8096 */  lui     $t6, %hi(D_8095C35C)       ## $t6 = 80960000
/* 0C554 8095B814 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0C558 8095B818 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 0C55C 8095B81C 25CEC35C */  addiu   $t6, $t6, %lo(D_8095C35C)  ## $t6 = 8095C35C
/* 0C560 8095B820 8DD80000 */  lw      $t8, 0x0000($t6)           ## 8095C35C
/* 0C564 8095B824 27A80034 */  addiu   $t0, $sp, 0x0034           ## $t0 = FFFFFFF4
/* 0C568 8095B828 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0C56C 8095B82C AD180000 */  sw      $t8, 0x0000($t0)           ## FFFFFFF4
/* 0C570 8095B830 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 8095C360
/* 0C574 8095B834 24090007 */  addiu   $t1, $zero, 0x0007         ## $t1 = 00000007
/* 0C578 8095B838 AD0F0004 */  sw      $t7, 0x0004($t0)           ## FFFFFFF8
/* 0C57C 8095B83C 8DD80008 */  lw      $t8, 0x0008($t6)           ## 8095C364
/* 0C580 8095B840 AD180008 */  sw      $t8, 0x0008($t0)           ## FFFFFFFC
.L8095B844:
/* 0C584 8095B844 90B90024 */  lbu     $t9, 0x0024($a1)           ## 00000024
/* 0C588 8095B848 57200050 */  bnel    $t9, $zero, .L8095B98C     
/* 0C58C 8095B84C 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 0C590 8095B850 A0A90024 */  sb      $t1, 0x0024($a1)           ## 00000024
/* 0C594 8095B854 ACA60054 */  sw      $a2, 0x0054($a1)           ## 00000054
/* 0C598 8095B858 8D0B0000 */  lw      $t3, 0x0000($t0)           ## FFFFFFF4
/* 0C59C 8095B85C 3C0C8096 */  lui     $t4, %hi(D_8095C220)       ## $t4 = 80960000
/* 0C5A0 8095B860 258CC220 */  addiu   $t4, $t4, %lo(D_8095C220)  ## $t4 = 8095C220
/* 0C5A4 8095B864 ACAB0000 */  sw      $t3, 0x0000($a1)           ## 00000000
/* 0C5A8 8095B868 8D0A0004 */  lw      $t2, 0x0004($t0)           ## FFFFFFF8
/* 0C5AC 8095B86C 27A30024 */  addiu   $v1, $sp, 0x0024           ## $v1 = FFFFFFE4
/* 0C5B0 8095B870 ACAA0004 */  sw      $t2, 0x0004($a1)           ## 00000004
/* 0C5B4 8095B874 8D0B0008 */  lw      $t3, 0x0008($t0)           ## FFFFFFFC
/* 0C5B8 8095B878 ACAB0008 */  sw      $t3, 0x0008($a1)           ## 00000008
/* 0C5BC 8095B87C 8D8E0000 */  lw      $t6, 0x0000($t4)           ## 8095C220
/* 0C5C0 8095B880 AC6E0000 */  sw      $t6, 0x0000($v1)           ## FFFFFFE4
/* 0C5C4 8095B884 8D8D0004 */  lw      $t5, 0x0004($t4)           ## 8095C224
/* 0C5C8 8095B888 8C780000 */  lw      $t8, 0x0000($v1)           ## FFFFFFE4
/* 0C5CC 8095B88C AC6D0004 */  sw      $t5, 0x0004($v1)           ## FFFFFFE8
/* 0C5D0 8095B890 8D8E0008 */  lw      $t6, 0x0008($t4)           ## 8095C228
/* 0C5D4 8095B894 AC6E0008 */  sw      $t6, 0x0008($v1)           ## FFFFFFEC
/* 0C5D8 8095B898 ACB80018 */  sw      $t8, 0x0018($a1)           ## 00000018
/* 0C5DC 8095B89C 8C6F0004 */  lw      $t7, 0x0004($v1)           ## FFFFFFE8
/* 0C5E0 8095B8A0 ACAF001C */  sw      $t7, 0x001C($a1)           ## 0000001C
/* 0C5E4 8095B8A4 8C780008 */  lw      $t8, 0x0008($v1)           ## FFFFFFEC
/* 0C5E8 8095B8A8 ACB80020 */  sw      $t8, 0x0020($a1)           ## 00000020
/* 0C5EC 8095B8AC 8C690000 */  lw      $t1, 0x0000($v1)           ## FFFFFFE4
/* 0C5F0 8095B8B0 ACA9000C */  sw      $t1, 0x000C($a1)           ## 0000000C
/* 0C5F4 8095B8B4 8C790004 */  lw      $t9, 0x0004($v1)           ## FFFFFFE8
/* 0C5F8 8095B8B8 ACB90010 */  sw      $t9, 0x0010($a1)           ## 00000010
/* 0C5FC 8095B8BC 8C690008 */  lw      $t1, 0x0008($v1)           ## FFFFFFEC
/* 0C600 8095B8C0 ACA90014 */  sw      $t1, 0x0014($a1)           ## 00000014
/* 0C604 8095B8C4 93A40057 */  lbu     $a0, 0x0057($sp)           
/* 0C608 8095B8C8 A4A0002E */  sh      $zero, 0x002E($a1)         ## 0000002E
/* 0C60C 8095B8CC A4A40028 */  sh      $a0, 0x0028($a1)           ## 00000028
/* 0C610 8095B8D0 C4E40000 */  lwc1    $f4, 0x0000($a3)           ## 00000000
/* 0C614 8095B8D4 E4A40048 */  swc1    $f4, 0x0048($a1)           ## 00000048
/* 0C618 8095B8D8 C4E60008 */  lwc1    $f6, 0x0008($a3)           ## 00000008
/* 0C61C 8095B8DC E4A60050 */  swc1    $f6, 0x0050($a1)           ## 00000050
/* 0C620 8095B8E0 C4E80004 */  lwc1    $f8, 0x0004($a3)           ## 00000004
/* 0C624 8095B8E4 E4A8004C */  swc1    $f8, 0x004C($a1)           ## 0000004C
/* 0C628 8095B8E8 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 0C62C 8095B8EC A7A20032 */  sh      $v0, 0x0032($sp)           
/* 0C630 8095B8F0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0C634 8095B8F4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0C638 8095B8F8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0C63C 8095B8FC 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 0C640 8095B900 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 0C644 8095B904 87A20032 */  lh      $v0, 0x0032($sp)           
/* 0C648 8095B908 460A0402 */  mul.s   $f16, $f0, $f10            
/* 0C64C 8095B90C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0C650 8095B910 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 0C654 8095B914 A4AF003E */  sh      $t7, 0x003E($a1)           ## 0000003E
/* 0C658 8095B918 3C018096 */  lui     $at, %hi(D_8095C92C)       ## $at = 80960000
/* 0C65C 8095B91C 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 0C660 8095B920 3C098013 */  lui     $t1, %hi(D_801333E8)
/* 0C664 8095B924 4600848D */  trunc.w.s $f18, $f16                 
/* 0C668 8095B928 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 0C66C 8095B92C 30590003 */  andi    $t9, $v0, 0x0003           ## $t9 = 00000000
/* 0C670 8095B930 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 0C674 8095B934 440D9000 */  mfc1    $t5, $f18                  
/* 0C678 8095B938 252933E8 */  addiu   $t1, %lo(D_801333E8)
/* 0C67C 8095B93C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 0C680 8095B940 25AE000A */  addiu   $t6, $t5, 0x000A           ## $t6 = 0000000A
/* 0C684 8095B944 A4AE0026 */  sh      $t6, 0x0026($a1)           ## 00000026
/* 0C688 8095B948 87B80052 */  lh      $t8, 0x0052($sp)           
/* 0C68C 8095B94C C428C92C */  lwc1    $f8, %lo(D_8095C92C)($at)  
/* 0C690 8095B950 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0C694 8095B954 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 0C698 8095B958 E4B00040 */  swc1    $f16, 0x0040($a1)          ## 00000040
/* 0C69C 8095B95C 468021A0 */  cvt.s.w $f6, $f4                   
/* 0C6A0 8095B960 46083282 */  mul.s   $f10, $f6, $f8             
/* 0C6A4 8095B964 13200002 */  beq     $t9, $zero, .L8095B970     
/* 0C6A8 8095B968 E4AA0044 */  swc1    $f10, 0x0044($a1)          ## 00000044
/* 0C6AC 8095B96C 1481000C */  bne     $a0, $at, .L8095B9A0       
.L8095B970:
/* 0C6B0 8095B970 2404393F */  addiu   $a0, $zero, 0x393F         ## $a0 = 0000393F
/* 0C6B4 8095B974 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0C6B8 8095B978 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0C6BC 8095B97C AFA90014 */  sw      $t1, 0x0014($sp)           
/* 0C6C0 8095B980 10000008 */  beq     $zero, $zero, .L8095B9A4   
/* 0C6C4 8095B984 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0C6C8 8095B988 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
.L8095B98C:
/* 0C6CC 8095B98C 00021400 */  sll     $v0, $v0, 16               
/* 0C6D0 8095B990 00021403 */  sra     $v0, $v0, 16               
/* 0C6D4 8095B994 28410190 */  slti    $at, $v0, 0x0190           
/* 0C6D8 8095B998 1420FFAA */  bne     $at, $zero, .L8095B844     
/* 0C6DC 8095B99C 24A50058 */  addiu   $a1, $a1, 0x0058           ## $a1 = 00000058
.L8095B9A0:
/* 0C6E0 8095B9A0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8095B9A4:
/* 0C6E4 8095B9A4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0C6E8 8095B9A8 03E00008 */  jr      $ra                        
/* 0C6EC 8095B9AC 00000000 */  nop
