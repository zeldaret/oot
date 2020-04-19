glabel func_80A4C3A4
/* 00704 80A4C3A4 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 00708 80A4C3A8 F7BE0040 */  sdc1    $f30, 0x0040($sp)          
/* 0070C 80A4C3AC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00710 80A4C3B0 4481F000 */  mtc1    $at, $f30                  ## $f30 = 20.00
/* 00714 80A4C3B4 F7BC0038 */  sdc1    $f28, 0x0038($sp)          
/* 00718 80A4C3B8 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 0071C 80A4C3BC 4481E000 */  mtc1    $at, $f28                  ## $f28 = 30.00
/* 00720 80A4C3C0 F7BA0030 */  sdc1    $f26, 0x0030($sp)          
/* 00724 80A4C3C4 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00728 80A4C3C8 4481D000 */  mtc1    $at, $f26                  ## $f26 = 40.00
/* 0072C 80A4C3CC F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 00730 80A4C3D0 3C01423C */  lui     $at, 0x423C                ## $at = 423C0000
/* 00734 80A4C3D4 4481C000 */  mtc1    $at, $f24                  ## $f24 = 47.00
/* 00738 80A4C3D8 AFB60064 */  sw      $s6, 0x0064($sp)           
/* 0073C 80A4C3DC AFB50060 */  sw      $s5, 0x0060($sp)           
/* 00740 80A4C3E0 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 00744 80A4C3E4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00748 80A4C3E8 AFB70068 */  sw      $s7, 0x0068($sp)           
/* 0074C 80A4C3EC AFB4005C */  sw      $s4, 0x005C($sp)           
/* 00750 80A4C3F0 AFB30058 */  sw      $s3, 0x0058($sp)           
/* 00754 80A4C3F4 AFB20054 */  sw      $s2, 0x0054($sp)           
/* 00758 80A4C3F8 AFB10050 */  sw      $s1, 0x0050($sp)           
/* 0075C 80A4C3FC AFB0004C */  sw      $s0, 0x004C($sp)           
/* 00760 80A4C400 3C1580A5 */  lui     $s5, %hi(D_80A4DECC)       ## $s5 = 80A50000
/* 00764 80A4C404 3C1680A5 */  lui     $s6, %hi(D_80A4DED8)       ## $s6 = 80A50000
/* 00768 80A4C408 4481B000 */  mtc1    $at, $f22                  ## $f22 = 0.50
/* 0076C 80A4C40C 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 00770 80A4C410 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 00774 80A4C414 AFBF006C */  sw      $ra, 0x006C($sp)           
/* 00778 80A4C418 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 0077C 80A4C41C 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00780 80A4C420 26D6DED8 */  addiu   $s6, $s6, %lo(D_80A4DED8)  ## $s6 = 80A4DED8
/* 00784 80A4C424 26B5DECC */  addiu   $s5, $s5, %lo(D_80A4DECC)  ## $s5 = 80A4DECC
/* 00788 80A4C428 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 0078C 80A4C42C 27B4007C */  addiu   $s4, $sp, 0x007C           ## $s4 = FFFFFFF4
/* 00790 80A4C430 24170008 */  addiu   $s7, $zero, 0x0008         ## $s7 = 00000008
/* 00794 80A4C434 26104E20 */  addiu   $s0, $s0, 0x4E20           ## $s0 = 00004E20
.L80A4C438:
/* 00798 80A4C438 00108400 */  sll     $s0, $s0, 16               
/* 0079C 80A4C43C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 007A0 80A4C440 00108403 */  sra     $s0, $s0, 16               
/* 007A4 80A4C444 00102400 */  sll     $a0, $s0, 16               
/* 007A8 80A4C448 00042403 */  sra     $a0, $a0, 16               
/* 007AC 80A4C44C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 007B0 80A4C450 46000506 */  mov.s   $f20, $f0                  
/* 007B4 80A4C454 4616A102 */  mul.s   $f4, $f20, $f22            
/* 007B8 80A4C458 C6500000 */  lwc1    $f16, 0x0000($s2)          ## 00000000
/* 007BC 80A4C45C 46162180 */  add.s   $f6, $f4, $f22             
/* 007C0 80A4C460 4606C202 */  mul.s   $f8, $f24, $f6             
/* 007C4 80A4C464 00000000 */  nop
/* 007C8 80A4C468 46080282 */  mul.s   $f10, $f0, $f8             
/* 007CC 80A4C46C 46105480 */  add.s   $f18, $f10, $f16           
/* 007D0 80A4C470 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 007D4 80A4C474 E7B2007C */  swc1    $f18, 0x007C($sp)          
/* 007D8 80A4C478 46160101 */  sub.s   $f4, $f0, $f22             
/* 007DC 80A4C47C C6480004 */  lwc1    $f8, 0x0004($s2)           ## 00000004
/* 007E0 80A4C480 461A2182 */  mul.s   $f6, $f4, $f26             
/* 007E4 80A4C484 46083280 */  add.s   $f10, $f6, $f8             
/* 007E8 80A4C488 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 007EC 80A4C48C E7AA0080 */  swc1    $f10, 0x0080($sp)          
/* 007F0 80A4C490 00102400 */  sll     $a0, $s0, 16               
/* 007F4 80A4C494 00042403 */  sra     $a0, $a0, 16               
/* 007F8 80A4C498 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 007FC 80A4C49C 46000506 */  mov.s   $f20, $f0                  
/* 00800 80A4C4A0 4616A402 */  mul.s   $f16, $f20, $f22           
/* 00804 80A4C4A4 C6480008 */  lwc1    $f8, 0x0008($s2)           ## 00000008
/* 00808 80A4C4A8 46168480 */  add.s   $f18, $f16, $f22           
/* 0080C 80A4C4AC 4612C102 */  mul.s   $f4, $f24, $f18            
/* 00810 80A4C4B0 00000000 */  nop
/* 00814 80A4C4B4 46040182 */  mul.s   $f6, $f0, $f4              
/* 00818 80A4C4B8 46083280 */  add.s   $f10, $f6, $f8             
/* 0081C 80A4C4BC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00820 80A4C4C0 E7AA0084 */  swc1    $f10, 0x0084($sp)          
/* 00824 80A4C4C4 461C0402 */  mul.s   $f16, $f0, $f28            
/* 00828 80A4C4C8 24090050 */  addiu   $t1, $zero, 0x0050         ## $t1 = 00000050
/* 0082C 80A4C4CC AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00830 80A4C4D0 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00834 80A4C4D4 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFF4
/* 00838 80A4C4D8 02A03025 */  or      $a2, $s5, $zero            ## $a2 = 80A4DECC
/* 0083C 80A4C4DC 02C03825 */  or      $a3, $s6, $zero            ## $a3 = 80A4DED8
/* 00840 80A4C4E0 4600848D */  trunc.w.s $f18, $f16                 
/* 00844 80A4C4E4 440F9000 */  mfc1    $t7, $f18                  
/* 00848 80A4C4E8 00000000 */  nop
/* 0084C 80A4C4EC 000FC400 */  sll     $t8, $t7, 16               
/* 00850 80A4C4F0 0018CC03 */  sra     $t9, $t8, 16               
/* 00854 80A4C4F4 27280064 */  addiu   $t0, $t9, 0x0064           ## $t0 = 00000064
/* 00858 80A4C4F8 0C00A1B3 */  jal     func_800286CC              
/* 0085C 80A4C4FC AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00860 80A4C500 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00864 80A4C504 00000000 */  nop
/* 00868 80A4C508 461E0102 */  mul.s   $f4, $f0, $f30             
/* 0086C 80A4C50C 240F0050 */  addiu   $t7, $zero, 0x0050         ## $t7 = 00000050
/* 00870 80A4C510 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00874 80A4C514 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00878 80A4C518 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFF4
/* 0087C 80A4C51C 02A03025 */  or      $a2, $s5, $zero            ## $a2 = 80A4DECC
/* 00880 80A4C520 02C03825 */  or      $a3, $s6, $zero            ## $a3 = 80A4DED8
/* 00884 80A4C524 4600218D */  trunc.w.s $f6, $f4                   
/* 00888 80A4C528 440B3000 */  mfc1    $t3, $f6                   
/* 0088C 80A4C52C 00000000 */  nop
/* 00890 80A4C530 000B6400 */  sll     $t4, $t3, 16               
/* 00894 80A4C534 000C6C03 */  sra     $t5, $t4, 16               
/* 00898 80A4C538 25AE0050 */  addiu   $t6, $t5, 0x0050           ## $t6 = 00000050
/* 0089C 80A4C53C 0C00A1B3 */  jal     func_800286CC              
/* 008A0 80A4C540 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 008A4 80A4C544 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 008A8 80A4C548 5637FFBB */  bnel    $s1, $s7, .L80A4C438       
/* 008AC 80A4C54C 26104E20 */  addiu   $s0, $s0, 0x4E20           ## $s0 = 00009C40
/* 008B0 80A4C550 8FBF006C */  lw      $ra, 0x006C($sp)           
/* 008B4 80A4C554 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 008B8 80A4C558 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 008BC 80A4C55C D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 008C0 80A4C560 D7BA0030 */  ldc1    $f26, 0x0030($sp)          
/* 008C4 80A4C564 D7BC0038 */  ldc1    $f28, 0x0038($sp)          
/* 008C8 80A4C568 D7BE0040 */  ldc1    $f30, 0x0040($sp)          
/* 008CC 80A4C56C 8FB0004C */  lw      $s0, 0x004C($sp)           
/* 008D0 80A4C570 8FB10050 */  lw      $s1, 0x0050($sp)           
/* 008D4 80A4C574 8FB20054 */  lw      $s2, 0x0054($sp)           
/* 008D8 80A4C578 8FB30058 */  lw      $s3, 0x0058($sp)           
/* 008DC 80A4C57C 8FB4005C */  lw      $s4, 0x005C($sp)           
/* 008E0 80A4C580 8FB50060 */  lw      $s5, 0x0060($sp)           
/* 008E4 80A4C584 8FB60064 */  lw      $s6, 0x0064($sp)           
/* 008E8 80A4C588 8FB70068 */  lw      $s7, 0x0068($sp)           
/* 008EC 80A4C58C 03E00008 */  jr      $ra                        
/* 008F0 80A4C590 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
