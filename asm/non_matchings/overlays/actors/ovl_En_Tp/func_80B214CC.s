glabel func_80B214CC
/* 006EC 80B214CC 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 006F0 80B214D0 3C0E80B2 */  lui     $t6, %hi(D_80B22AE8)       ## $t6 = 80B20000
/* 006F4 80B214D4 AFBF0064 */  sw      $ra, 0x0064($sp)           
/* 006F8 80B214D8 AFB40060 */  sw      $s4, 0x0060($sp)           
/* 006FC 80B214DC AFB3005C */  sw      $s3, 0x005C($sp)           
/* 00700 80B214E0 AFB20058 */  sw      $s2, 0x0058($sp)           
/* 00704 80B214E4 AFB10054 */  sw      $s1, 0x0054($sp)           
/* 00708 80B214E8 AFB00050 */  sw      $s0, 0x0050($sp)           
/* 0070C 80B214EC F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 00710 80B214F0 25CE2AE8 */  addiu   $t6, $t6, %lo(D_80B22AE8)  ## $t6 = 80B22AE8
/* 00714 80B214F4 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80B22AE8
/* 00718 80B214F8 27B00078 */  addiu   $s0, $sp, 0x0078           ## $s0 = FFFFFFE8
/* 0071C 80B214FC 3C1980B2 */  lui     $t9, %hi(D_80B22AF4)       ## $t9 = 80B20000
/* 00720 80B21500 AE180000 */  sw      $t8, 0x0000($s0)           ## FFFFFFE8
/* 00724 80B21504 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80B22AEC
/* 00728 80B21508 27392AF4 */  addiu   $t9, $t9, %lo(D_80B22AF4)  ## $t9 = 80B22AF4
/* 0072C 80B2150C 27B1006C */  addiu   $s1, $sp, 0x006C           ## $s1 = FFFFFFDC
/* 00730 80B21510 AE0F0004 */  sw      $t7, 0x0004($s0)           ## FFFFFFEC
/* 00734 80B21514 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80B22AF0
/* 00738 80B21518 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 0073C 80B2151C 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 00740 80B21520 AE180008 */  sw      $t8, 0x0008($s0)           ## FFFFFFF0
/* 00744 80B21524 8F290000 */  lw      $t1, 0x0000($t9)           ## 80B22AF4
/* 00748 80B21528 AE290000 */  sw      $t1, 0x0000($s1)           ## FFFFFFDC
/* 0074C 80B2152C 8F280004 */  lw      $t0, 0x0004($t9)           ## 80B22AF8
/* 00750 80B21530 AE280004 */  sw      $t0, 0x0004($s1)           ## FFFFFFE0
/* 00754 80B21534 8F290008 */  lw      $t1, 0x0008($t9)           ## 80B22AFC
/* 00758 80B21538 AE290008 */  sw      $t1, 0x0008($s1)           ## FFFFFFE4
/* 0075C 80B2153C 848A015A */  lh      $t2, 0x015A($a0)           ## 0000015A
/* 00760 80B21540 254BFFFF */  addiu   $t3, $t2, 0xFFFF           ## $t3 = FFFFFFFF
/* 00764 80B21544 A48B015A */  sh      $t3, 0x015A($a0)           ## 0000015A
/* 00768 80B21548 848C015A */  lh      $t4, 0x015A($a0)           ## 0000015A
/* 0076C 80B2154C 5D8000A3 */  bgtzl   $t4, .L80B217DC            
/* 00770 80B21550 8FBF0064 */  lw      $ra, 0x0064($sp)           
/* 00774 80B21554 848D001C */  lh      $t5, 0x001C($a0)           ## 0000001C
/* 00778 80B21558 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 0077C 80B2155C 26931C24 */  addiu   $s3, $s4, 0x1C24           ## $s3 = 00001C24
/* 00780 80B21560 55A10071 */  bnel    $t5, $at, .L80B21728       
/* 00784 80B21564 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00788 80B21568 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0078C 80B2156C 00000000 */  nop
/* 00790 80B21570 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00794 80B21574 4481A000 */  mtc1    $at, $f20                  ## $f20 = 0.50
/* 00798 80B21578 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 0079C 80B2157C 44813000 */  mtc1    $at, $f6                   ## $f6 = 15.00
/* 007A0 80B21580 46140101 */  sub.s   $f4, $f0, $f20             
/* 007A4 80B21584 C64A0024 */  lwc1    $f10, 0x0024($s2)          ## 00000024
/* 007A8 80B21588 46062202 */  mul.s   $f8, $f4, $f6              
/* 007AC 80B2158C 460A4400 */  add.s   $f16, $f8, $f10            
/* 007B0 80B21590 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 007B4 80B21594 E7B0006C */  swc1    $f16, 0x006C($sp)          
/* 007B8 80B21598 46140481 */  sub.s   $f18, $f0, $f20            
/* 007BC 80B2159C 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 007C0 80B215A0 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 007C4 80B215A4 C648002C */  lwc1    $f8, 0x002C($s2)           ## 0000002C
/* 007C8 80B215A8 46049182 */  mul.s   $f6, $f18, $f4             
/* 007CC 80B215AC 46083280 */  add.s   $f10, $f6, $f8             
/* 007D0 80B215B0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 007D4 80B215B4 E7AA0074 */  swc1    $f10, 0x0074($sp)          
/* 007D8 80B215B8 46140401 */  sub.s   $f16, $f0, $f20            
/* 007DC 80B215BC 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 007E0 80B215C0 44819000 */  mtc1    $at, $f18                  ## $f18 = 5.00
/* 007E4 80B215C4 C6460028 */  lwc1    $f6, 0x0028($s2)           ## 00000028
/* 007E8 80B215C8 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 007EC 80B215CC 46128102 */  mul.s   $f4, $f16, $f18            
/* 007F0 80B215D0 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 007F4 80B215D4 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 007F8 80B215D8 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 007FC 80B215DC 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 00800 80B215E0 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 00804 80B215E4 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00808 80B215E8 46062200 */  add.s   $f8, $f4, $f6              
/* 0080C 80B215EC 240B0009 */  addiu   $t3, $zero, 0x0009         ## $t3 = 00000009
/* 00810 80B215F0 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00814 80B215F4 AFAC003C */  sw      $t4, 0x003C($sp)           
/* 00818 80B215F8 E7A80070 */  swc1    $f8, 0x0070($sp)           
/* 0081C 80B215FC AFAB0038 */  sw      $t3, 0x0038($sp)           
/* 00820 80B21600 AFAA0034 */  sw      $t2, 0x0034($sp)           
/* 00824 80B21604 AFA90030 */  sw      $t1, 0x0030($sp)           
/* 00828 80B21608 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 0082C 80B2160C AFB90020 */  sw      $t9, 0x0020($sp)           
/* 00830 80B21610 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 00834 80B21614 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 00838 80B21618 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0083C 80B2161C AFA0002C */  sw      $zero, 0x002C($sp)         
/* 00840 80B21620 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00844 80B21624 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00848 80B21628 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 0084C 80B2162C 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFDC
/* 00850 80B21630 02003025 */  or      $a2, $s0, $zero            ## $a2 = FFFFFFE8
/* 00854 80B21634 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 00858 80B21638 02003825 */  or      $a3, $s0, $zero            ## $a3 = FFFFFFE8
/* 0085C 80B2163C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00860 80B21640 00000000 */  nop
/* 00864 80B21644 46140281 */  sub.s   $f10, $f0, $f20            
/* 00868 80B21648 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 0086C 80B2164C 44818000 */  mtc1    $at, $f16                  ## $f16 = 15.00
/* 00870 80B21650 C6440024 */  lwc1    $f4, 0x0024($s2)           ## 00000024
/* 00874 80B21654 46105482 */  mul.s   $f18, $f10, $f16           
/* 00878 80B21658 46049180 */  add.s   $f6, $f18, $f4             
/* 0087C 80B2165C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00880 80B21660 E7A6006C */  swc1    $f6, 0x006C($sp)           
/* 00884 80B21664 46140201 */  sub.s   $f8, $f0, $f20             
/* 00888 80B21668 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 0088C 80B2166C 44815000 */  mtc1    $at, $f10                  ## $f10 = 15.00
/* 00890 80B21670 C652002C */  lwc1    $f18, 0x002C($s2)          ## 0000002C
/* 00894 80B21674 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00898 80B21678 46128100 */  add.s   $f4, $f16, $f18            
/* 0089C 80B2167C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 008A0 80B21680 E7A40074 */  swc1    $f4, 0x0074($sp)           
/* 008A4 80B21684 46140181 */  sub.s   $f6, $f0, $f20             
/* 008A8 80B21688 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 008AC 80B2168C 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 008B0 80B21690 C6500028 */  lwc1    $f16, 0x0028($s2)          ## 00000028
/* 008B4 80B21694 240D0064 */  addiu   $t5, $zero, 0x0064         ## $t5 = 00000064
/* 008B8 80B21698 46083282 */  mul.s   $f10, $f6, $f8             
/* 008BC 80B2169C 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 008C0 80B216A0 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 008C4 80B216A4 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 008C8 80B216A8 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 008CC 80B216AC 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 008D0 80B216B0 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 008D4 80B216B4 46105480 */  add.s   $f18, $f10, $f16           
/* 008D8 80B216B8 240A0009 */  addiu   $t2, $zero, 0x0009         ## $t2 = 00000009
/* 008DC 80B216BC 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 008E0 80B216C0 AFAB003C */  sw      $t3, 0x003C($sp)           
/* 008E4 80B216C4 E7B20070 */  swc1    $f18, 0x0070($sp)          
/* 008E8 80B216C8 AFAA0038 */  sw      $t2, 0x0038($sp)           
/* 008EC 80B216CC AFA90034 */  sw      $t1, 0x0034($sp)           
/* 008F0 80B216D0 AFA80030 */  sw      $t0, 0x0030($sp)           
/* 008F4 80B216D4 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 008F8 80B216D8 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 008FC 80B216DC AFAF001C */  sw      $t7, 0x001C($sp)           
/* 00900 80B216E0 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 00904 80B216E4 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00908 80B216E8 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 0090C 80B216EC AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00910 80B216F0 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00914 80B216F4 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00918 80B216F8 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFDC
/* 0091C 80B216FC 02003025 */  or      $a2, $s0, $zero            ## $a2 = FFFFFFE8
/* 00920 80B21700 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 00924 80B21704 02003825 */  or      $a3, $s0, $zero            ## $a3 = FFFFFFE8
/* 00928 80B21708 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 0092C 80B2170C 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 00930 80B21710 26460024 */  addiu   $a2, $s2, 0x0024           ## $a2 = 00000024
/* 00934 80B21714 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00938 80B21718 24070050 */  addiu   $a3, $zero, 0x0050         ## $a3 = 00000050
/* 0093C 80B2171C 10000022 */  beq     $zero, $zero, .L80B217A8   
/* 00940 80B21720 8E42011C */  lw      $v0, 0x011C($s2)           ## 0000011C
/* 00944 80B21724 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
.L80B21728:
/* 00948 80B21728 4481A000 */  mtc1    $at, $f20                  ## $f20 = 0.50
/* 0094C 80B2172C 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00950 80B21730 C6440028 */  lwc1    $f4, 0x0028($s2)           ## 00000028
.L80B21734:
/* 00954 80B21734 8E470024 */  lw      $a3, 0x0024($s2)           ## 00000024
/* 00958 80B21738 240C000A */  addiu   $t4, $zero, 0x000A         ## $t4 = 0000000A
/* 0095C 80B2173C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00960 80B21740 C646002C */  lwc1    $f6, 0x002C($s2)           ## 0000002C
/* 00964 80B21744 AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 00968 80B21748 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0096C 80B2174C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00970 80B21750 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00974 80B21754 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00001C24
/* 00978 80B21758 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 0097C 80B2175C 24060035 */  addiu   $a2, $zero, 0x0035         ## $a2 = 00000035
/* 00980 80B21760 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00984 80B21764 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00988 80B21768 10400009 */  beq     $v0, $zero, .L80B21790     
/* 0098C 80B2176C 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 00990 80B21770 C6480058 */  lwc1    $f8, 0x0058($s2)           ## 00000058
/* 00994 80B21774 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 00998 80B21778 46144282 */  mul.s   $f10, $f8, $f20            
/* 0099C 80B2177C 44055000 */  mfc1    $a1, $f10                  
/* 009A0 80B21780 0C00B58B */  jal     Actor_SetScale
              
/* 009A4 80B21784 00000000 */  nop
/* 009A8 80B21788 864D0160 */  lh      $t5, 0x0160($s2)           ## 00000160
/* 009AC 80B2178C A60D0160 */  sh      $t5, 0x0160($s0)           ## 00000160
.L80B21790:
/* 009B0 80B21790 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 009B4 80B21794 00118C00 */  sll     $s1, $s1, 16               
/* 009B8 80B21798 00118C03 */  sra     $s1, $s1, 16               
/* 009BC 80B2179C 5A20FFE5 */  blezl   $s1, .L80B21734            
/* 009C0 80B217A0 C6440028 */  lwc1    $f4, 0x0028($s2)           ## 00000028
/* 009C4 80B217A4 8E42011C */  lw      $v0, 0x011C($s2)           ## 0000011C
.L80B217A8:
/* 009C8 80B217A8 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 009CC 80B217AC 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 009D0 80B217B0 10400007 */  beq     $v0, $zero, .L80B217D0     
/* 009D4 80B217B4 00000000 */  nop
/* 009D8 80B217B8 AC400118 */  sw      $zero, 0x0118($v0)         ## 00000118
/* 009DC 80B217BC 8E4F011C */  lw      $t7, 0x011C($s2)           ## 0000011C
/* 009E0 80B217C0 240E000B */  addiu   $t6, $zero, 0x000B         ## $t6 = 0000000B
/* 009E4 80B217C4 A5EE001C */  sh      $t6, 0x001C($t7)           ## 0000001C
/* 009E8 80B217C8 8E58011C */  lw      $t8, 0x011C($s2)           ## 0000011C
/* 009EC 80B217CC A30000AF */  sb      $zero, 0x00AF($t8)         ## 000000AF
.L80B217D0:
/* 009F0 80B217D0 0C00B55C */  jal     Actor_Kill
              
/* 009F4 80B217D4 AE590150 */  sw      $t9, 0x0150($s2)           ## 00000150
/* 009F8 80B217D8 8FBF0064 */  lw      $ra, 0x0064($sp)           
.L80B217DC:
/* 009FC 80B217DC D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 00A00 80B217E0 8FB00050 */  lw      $s0, 0x0050($sp)           
/* 00A04 80B217E4 8FB10054 */  lw      $s1, 0x0054($sp)           
/* 00A08 80B217E8 8FB20058 */  lw      $s2, 0x0058($sp)           
/* 00A0C 80B217EC 8FB3005C */  lw      $s3, 0x005C($sp)           
/* 00A10 80B217F0 8FB40060 */  lw      $s4, 0x0060($sp)           
/* 00A14 80B217F4 03E00008 */  jr      $ra                        
/* 00A18 80B217F8 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
