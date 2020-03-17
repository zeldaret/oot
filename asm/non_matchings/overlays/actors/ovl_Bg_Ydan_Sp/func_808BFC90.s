glabel func_808BFC90
/* 00880 808BFC90 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 00884 808BFC94 AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 00888 808BFC98 AFBE0050 */  sw      $s8, 0x0050($sp)           
/* 0088C 808BFC9C AFB7004C */  sw      $s7, 0x004C($sp)           
/* 00890 808BFCA0 AFB60048 */  sw      $s6, 0x0048($sp)           
/* 00894 808BFCA4 AFB50044 */  sw      $s5, 0x0044($sp)           
/* 00898 808BFCA8 AFB40040 */  sw      $s4, 0x0040($sp)           
/* 0089C 808BFCAC AFB3003C */  sw      $s3, 0x003C($sp)           
/* 008A0 808BFCB0 AFB20038 */  sw      $s2, 0x0038($sp)           
/* 008A4 808BFCB4 AFB10034 */  sw      $s1, 0x0034($sp)           
/* 008A8 808BFCB8 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 008AC 808BFCBC F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 008B0 808BFCC0 8482016A */  lh      $v0, 0x016A($a0)           ## 0000016A
/* 008B4 808BFCC4 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 008B8 808BFCC8 00A0F025 */  or      $s8, $a1, $zero            ## $s8 = 00000000
/* 008BC 808BFCCC 10400003 */  beq     $v0, $zero, .L808BFCDC     
/* 008C0 808BFCD0 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 008C4 808BFCD4 A48E016A */  sh      $t6, 0x016A($a0)           ## 0000016A
/* 008C8 808BFCD8 8482016A */  lh      $v0, 0x016A($a0)           ## 0000016A
.L808BFCDC:
/* 008CC 808BFCDC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 008D0 808BFCE0 3C01808C */  lui     $at, %hi(D_808C0A74)       ## $at = 808C0000
/* 008D4 808BFCE4 C4280A74 */  lwc1    $f8, %lo(D_808C0A74)($at)  
/* 008D8 808BFCE8 468021A0 */  cvt.s.w $f6, $f4                   
/* 008DC 808BFCEC 46083302 */  mul.s   $f12, $f6, $f8             
/* 008E0 808BFCF0 0C0400A4 */  jal     sinf
              
/* 008E4 808BFCF4 00000000 */  nop
/* 008E8 808BFCF8 C66A016C */  lwc1    $f10, 0x016C($s3)          ## 0000016C
/* 008EC 808BFCFC C662000C */  lwc1    $f2, 0x000C($s3)           ## 0000000C
/* 008F0 808BFD00 3C01433E */  lui     $at, 0x433E                ## $at = 433E0000
/* 008F4 808BFD04 460A0402 */  mul.s   $f16, $f0, $f10            
/* 008F8 808BFD08 44819000 */  mtc1    $at, $f18                  ## $f18 = 190.00
/* 008FC 808BFD0C 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000000
/* 00900 808BFD10 27C50810 */  addiu   $a1, $s8, 0x0810           ## $a1 = 00000810
/* 00904 808BFD14 46028300 */  add.s   $f12, $f16, $f2            
/* 00908 808BFD18 460C1101 */  sub.s   $f4, $f2, $f12             
/* 0090C 808BFD1C E66C0028 */  swc1    $f12, 0x0028($s3)          ## 00000028
/* 00910 808BFD20 4604903C */  c.lt.s  $f18, $f4                  
/* 00914 808BFD24 00000000 */  nop
/* 00918 808BFD28 4500003A */  bc1f    .L808BFE14                 
/* 0091C 808BFD2C 00000000 */  nop
/* 00920 808BFD30 0C00FAFE */  jal     func_8003EBF8              
/* 00924 808BFD34 8E66014C */  lw      $a2, 0x014C($s3)           ## 0000014C
/* 00928 808BFD38 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 0092C 808BFD3C A66F016A */  sh      $t7, 0x016A($s3)           ## 0000016A
/* 00930 808BFD40 0C01E221 */  jal     func_80078884              
/* 00934 808BFD44 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 00938 808BFD48 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000000
/* 0093C 808BFD4C 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00940 808BFD50 92650168 */  lbu     $a1, 0x0168($s3)           ## 00000168
/* 00944 808BFD54 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00948 808BFD58 4481A000 */  mtc1    $at, $f20                  ## $f20 = 60.00
/* 0094C 808BFD5C C6660028 */  lwc1    $f6, 0x0028($s3)           ## 00000028
/* 00950 808BFD60 3C18808C */  lui     $t8, %hi(func_808BFC50)    ## $t8 = 808C0000
/* 00954 808BFD64 2718FC50 */  addiu   $t8, $t8, %lo(func_808BFC50) ## $t8 = 808BFC50
/* 00958 808BFD68 46143201 */  sub.s   $f8, $f6, $f20             
/* 0095C 808BFD6C AE780164 */  sw      $t8, 0x0164($s3)           ## 00000164
/* 00960 808BFD70 3C16808C */  lui     $s6, %hi(D_808C09CC)       ## $s6 = 808C0000
/* 00964 808BFD74 3C15808C */  lui     $s5, %hi(D_808C09C8)       ## $s5 = 808C0000
/* 00968 808BFD78 3C12808C */  lui     $s2, %hi(D_808C09D0)       ## $s2 = 808C0000
/* 0096C 808BFD7C E7A8006C */  swc1    $f8, 0x006C($sp)           
/* 00970 808BFD80 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00974 808BFD84 265209D0 */  addiu   $s2, $s2, %lo(D_808C09D0)  ## $s2 = 808C09D0
/* 00978 808BFD88 26B509C8 */  addiu   $s5, $s5, %lo(D_808C09C8)  ## $s5 = 808C09C8
/* 0097C 808BFD8C 26D609CC */  addiu   $s6, $s6, %lo(D_808C09CC)  ## $s6 = 808C09CC
/* 00980 808BFD90 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00984 808BFD94 24170006 */  addiu   $s7, $zero, 0x0006         ## $s7 = 00000006
/* 00988 808BFD98 27B40068 */  addiu   $s4, $sp, 0x0068           ## $s4 = FFFFFFF0
.L808BFD9C:
/* 0098C 808BFD9C 00102400 */  sll     $a0, $s0, 16               
/* 00990 808BFDA0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00994 808BFDA4 00042403 */  sra     $a0, $a0, 16               
/* 00998 808BFDA8 46140282 */  mul.s   $f10, $f0, $f20            
/* 0099C 808BFDAC C6700024 */  lwc1    $f16, 0x0024($s3)          ## 00000024
/* 009A0 808BFDB0 00102400 */  sll     $a0, $s0, 16               
/* 009A4 808BFDB4 00042403 */  sra     $a0, $a0, 16               
/* 009A8 808BFDB8 46105480 */  add.s   $f18, $f10, $f16           
/* 009AC 808BFDBC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 009B0 808BFDC0 E7B20068 */  swc1    $f18, 0x0068($sp)          
/* 009B4 808BFDC4 46140102 */  mul.s   $f4, $f0, $f20             
/* 009B8 808BFDC8 C666002C */  lwc1    $f6, 0x002C($s3)           ## 0000002C
/* 009BC 808BFDCC 241903E8 */  addiu   $t9, $zero, 0x03E8         ## $t9 = 000003E8
/* 009C0 808BFDD0 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 009C4 808BFDD4 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 009C8 808BFDD8 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 009CC 808BFDDC AFB60014 */  sw      $s6, 0x0014($sp)           
/* 009D0 808BFDE0 46062200 */  add.s   $f8, $f4, $f6              
/* 009D4 808BFDE4 AFB50010 */  sw      $s5, 0x0010($sp)           
/* 009D8 808BFDE8 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000000
/* 009DC 808BFDEC 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFF0
/* 009E0 808BFDF0 E7A80070 */  swc1    $f8, 0x0070($sp)           
/* 009E4 808BFDF4 02403025 */  or      $a2, $s2, $zero            ## $a2 = 808C09D0
/* 009E8 808BFDF8 0C00A0A7 */  jal     func_8002829C              
/* 009EC 808BFDFC 02403825 */  or      $a3, $s2, $zero            ## $a3 = 808C09D0
/* 009F0 808BFE00 26102AAA */  addiu   $s0, $s0, 0x2AAA           ## $s0 = 00002AAA
/* 009F4 808BFE04 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 009F8 808BFE08 00108400 */  sll     $s0, $s0, 16               
/* 009FC 808BFE0C 1637FFE3 */  bne     $s1, $s7, .L808BFD9C       
/* 00A00 808BFE10 00108403 */  sra     $s0, $s0, 16               
.L808BFE14:
/* 00A04 808BFE14 0C22FE0F */  jal     func_808BF83C              
/* 00A08 808BFE18 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00A0C 808BFE1C 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 00A10 808BFE20 D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 00A14 808BFE24 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00A18 808BFE28 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 00A1C 808BFE2C 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 00A20 808BFE30 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 00A24 808BFE34 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 00A28 808BFE38 8FB50044 */  lw      $s5, 0x0044($sp)           
/* 00A2C 808BFE3C 8FB60048 */  lw      $s6, 0x0048($sp)           
/* 00A30 808BFE40 8FB7004C */  lw      $s7, 0x004C($sp)           
/* 00A34 808BFE44 8FBE0050 */  lw      $s8, 0x0050($sp)           
/* 00A38 808BFE48 03E00008 */  jr      $ra                        
/* 00A3C 808BFE4C 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000


