.late_rodata
glabel D_80A0B540
 .word 0xBE4CCCCD

.text
glabel func_80A0AC88
/* 00878 80A0AC88 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0087C 80A0AC8C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00880 80A0AC90 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00884 80A0AC94 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00888 80A0AC98 948E0088 */  lhu     $t6, 0x0088($a0)           ## 00000088
/* 0088C 80A0AC9C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00890 80A0ACA0 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00894 80A0ACA4 31CF0020 */  andi    $t7, $t6, 0x0020           ## $t7 = 00000000
/* 00898 80A0ACA8 51E00026 */  beql    $t7, $zero, .L80A0AD44     
/* 0089C 80A0ACAC 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
/* 008A0 80A0ACB0 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 008A4 80A0ACB4 C4860084 */  lwc1    $f6, 0x0084($a0)           ## 00000084
/* 008A8 80A0ACB8 4606203C */  c.lt.s  $f4, $f6                   
/* 008AC 80A0ACBC 00000000 */  nop
/* 008B0 80A0ACC0 45020020 */  bc1fl   .L80A0AD44                 
/* 008B4 80A0ACC4 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
/* 008B8 80A0ACC8 8C990024 */  lw      $t9, 0x0024($a0)           ## 00000024
/* 008BC 80A0ACCC 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF0
/* 008C0 80A0ACD0 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 008C4 80A0ACD4 ACB90000 */  sw      $t9, 0x0000($a1)           ## FFFFFFF0
/* 008C8 80A0ACD8 8C980028 */  lw      $t8, 0x0028($a0)           ## 00000028
/* 008CC 80A0ACDC 44819000 */  mtc1    $at, $f18                  ## $f18 = -1.00
/* 008D0 80A0ACE0 3C0180A1 */  lui     $at, %hi(D_80A0B540)       ## $at = 80A10000
/* 008D4 80A0ACE4 ACB80004 */  sw      $t8, 0x0004($a1)           ## FFFFFFF4
/* 008D8 80A0ACE8 8C99002C */  lw      $t9, 0x002C($a0)           ## 0000002C
/* 008DC 80A0ACEC 24080320 */  addiu   $t0, $zero, 0x0320         ## $t0 = 00000320
/* 008E0 80A0ACF0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 008E4 80A0ACF4 ACB90008 */  sw      $t9, 0x0008($a1)           ## FFFFFFF8
/* 008E8 80A0ACF8 C7A80034 */  lwc1    $f8, 0x0034($sp)           
/* 008EC 80A0ACFC C48A0084 */  lwc1    $f10, 0x0084($a0)          ## 00000084
/* 008F0 80A0AD00 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 008F4 80A0AD04 460A4400 */  add.s   $f16, $f8, $f10            
/* 008F8 80A0AD08 E7B00034 */  swc1    $f16, 0x0034($sp)          
/* 008FC 80A0AD0C E4920060 */  swc1    $f18, 0x0060($a0)          ## 00000060
/* 00900 80A0AD10 C424B540 */  lwc1    $f4, %lo(D_80A0B540)($at)  
/* 00904 80A0AD14 E484006C */  swc1    $f4, 0x006C($a0)           ## 0000006C
/* 00908 80A0AD18 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 0090C 80A0AD1C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00910 80A0AD20 0C00A527 */  jal     func_8002949C              
/* 00914 80A0AD24 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00918 80A0AD28 260400E4 */  addiu   $a0, $s0, 0x00E4           ## $a0 = 000000E4
/* 0091C 80A0AD2C 0C01E245 */  jal     func_80078914              
/* 00920 80A0AD30 24052817 */  addiu   $a1, $zero, 0x2817         ## $a1 = 00002817
/* 00924 80A0AD34 3C0980A1 */  lui     $t1, %hi(func_80A0AD88)    ## $t1 = 80A10000
/* 00928 80A0AD38 2529AD88 */  addiu   $t1, $t1, %lo(func_80A0AD88) ## $t1 = 80A0AD88
/* 0092C 80A0AD3C AE09014C */  sw      $t1, 0x014C($s0)           ## 0000014C
/* 00930 80A0AD40 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
.L80A0AD44:
/* 00934 80A0AD44 5040000C */  beql    $v0, $zero, .L80A0AD78     
/* 00938 80A0AD48 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0093C 80A0AD4C 8C4A0130 */  lw      $t2, 0x0130($v0)           ## 00000130
/* 00940 80A0AD50 51400009 */  beql    $t2, $zero, .L80A0AD78     
/* 00944 80A0AD54 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00948 80A0AD58 844B029C */  lh      $t3, 0x029C($v0)           ## 0000029C
/* 0094C 80A0AD5C 3C0D80A1 */  lui     $t5, %hi(func_80A0AEE0)    ## $t5 = 80A10000
/* 00950 80A0AD60 240C0014 */  addiu   $t4, $zero, 0x0014         ## $t4 = 00000014
/* 00954 80A0AD64 15600003 */  bne     $t3, $zero, .L80A0AD74     
/* 00958 80A0AD68 25ADAEE0 */  addiu   $t5, $t5, %lo(func_80A0AEE0) ## $t5 = 80A0AEE0
/* 0095C 80A0AD6C A60C0156 */  sh      $t4, 0x0156($s0)           ## 00000156
/* 00960 80A0AD70 AE0D014C */  sw      $t5, 0x014C($s0)           ## 0000014C
.L80A0AD74:
/* 00964 80A0AD74 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A0AD78:
/* 00968 80A0AD78 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0096C 80A0AD7C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00970 80A0AD80 03E00008 */  jr      $ra                        
/* 00974 80A0AD84 00000000 */  nop
