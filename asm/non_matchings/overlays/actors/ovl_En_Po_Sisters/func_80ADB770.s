glabel func_80ADB770
/* 027E0 80ADB770 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 027E4 80ADB774 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 027E8 80ADB778 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 027EC 80ADB77C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 027F0 80ADB780 8482019A */  lh      $v0, 0x019A($a0)           ## 0000019A
/* 027F4 80ADB784 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 027F8 80ADB788 10400002 */  beq     $v0, $zero, .L80ADB794     
/* 027FC 80ADB78C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 02800 80ADB790 A48E019A */  sh      $t6, 0x019A($a0)           ## 0000019A
.L80ADB794:
/* 02804 80ADB794 860F019C */  lh      $t7, 0x019C($s0)           ## 0000019C
/* 02808 80ADB798 59E0003F */  blezl   $t7, .L80ADB898            
/* 0280C 80ADB79C 920D0195 */  lbu     $t5, 0x0195($s0)           ## 00000195
/* 02810 80ADB7A0 8618019A */  lh      $t8, 0x019A($s0)           ## 0000019A
/* 02814 80ADB7A4 2B010010 */  slti    $at, $t8, 0x0010           
/* 02818 80ADB7A8 5420003B */  bnel    $at, $zero, .L80ADB898     
/* 0281C 80ADB7AC 920D0195 */  lbu     $t5, 0x0195($s0)           ## 00000195
/* 02820 80ADB7B0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02824 80ADB7B4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02828 80ADB7B8 92020195 */  lbu     $v0, 0x0195($s0)           ## 00000195
/* 0282C 80ADB7BC 54400031 */  bnel    $v0, $zero, .L80ADB884     
/* 02830 80ADB7C0 8E090118 */  lw      $t1, 0x0118($s0)           ## 00000118
/* 02834 80ADB7C4 92030196 */  lbu     $v1, 0x0196($s0)           ## 00000196
/* 02838 80ADB7C8 24190010 */  addiu   $t9, $zero, 0x0010         ## $t9 = 00000010
/* 0283C 80ADB7CC 03231023 */  subu    $v0, $t9, $v1              
/* 02840 80ADB7D0 00021400 */  sll     $v0, $v0, 16               
/* 02844 80ADB7D4 00021403 */  sra     $v0, $v0, 16               
/* 02848 80ADB7D8 04400003 */  bltz    $v0, .L80ADB7E8            
/* 0284C 80ADB7DC 00022023 */  subu    $a0, $zero, $v0            
/* 02850 80ADB7E0 10000001 */  beq     $zero, $zero, .L80ADB7E8   
/* 02854 80ADB7E4 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
.L80ADB7E8:
/* 02858 80ADB7E8 2881000E */  slti    $at, $a0, 0x000E           
/* 0285C 80ADB7EC 10200016 */  beq     $at, $zero, .L80ADB848     
/* 02860 80ADB7F0 00602025 */  or      $a0, $v1, $zero            ## $a0 = 00000000
/* 02864 80ADB7F4 000426C0 */  sll     $a0, $a0, 27               
/* 02868 80ADB7F8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0286C 80ADB7FC 00042403 */  sra     $a0, $a0, 16               
/* 02870 80ADB800 8609019C */  lh      $t1, 0x019C($s0)           ## 0000019C
/* 02874 80ADB804 240B0580 */  addiu   $t3, $zero, 0x0580         ## $t3 = 00000580
/* 02878 80ADB808 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 0287C 80ADB80C 00095080 */  sll     $t2, $t1,  2               
/* 02880 80ADB810 01495023 */  subu    $t2, $t2, $t1              
/* 02884 80ADB814 000A51C0 */  sll     $t2, $t2,  7               
/* 02888 80ADB818 016A6023 */  subu    $t4, $t3, $t2              
/* 0288C 80ADB81C 448C4000 */  mtc1    $t4, $f8                   ## $f8 = 0.00
/* 02890 80ADB820 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 02894 80ADB824 46000005 */  abs.s   $f0, $f0                   
/* 02898 80ADB828 468042A0 */  cvt.s.w $f10, $f8                  
/* 0289C 80ADB82C 468021A0 */  cvt.s.w $f6, $f4                   
/* 028A0 80ADB830 46005402 */  mul.s   $f16, $f10, $f0            
/* 028A4 80ADB834 46103480 */  add.s   $f18, $f6, $f16            
/* 028A8 80ADB838 4600910D */  trunc.w.s $f4, $f18                  
/* 028AC 80ADB83C 440E2000 */  mfc1    $t6, $f4                   
/* 028B0 80ADB840 00000000 */  nop
/* 028B4 80ADB844 A60E00B6 */  sh      $t6, 0x00B6($s0)           ## 000000B6
.L80ADB848:
/* 028B8 80ADB848 8602019A */  lh      $v0, 0x019A($s0)           ## 0000019A
/* 028BC 80ADB84C 2841011C */  slti    $at, $v0, 0x011C           
/* 028C0 80ADB850 10200003 */  beq     $at, $zero, .L80ADB860     
/* 028C4 80ADB854 2841001F */  slti    $at, $v0, 0x001F           
/* 028C8 80ADB858 50200006 */  beql    $at, $zero, .L80ADB874     
/* 028CC 80ADB85C 92190199 */  lbu     $t9, 0x0199($s0)           ## 00000199
.L80ADB860:
/* 028D0 80ADB860 920F0199 */  lbu     $t7, 0x0199($s0)           ## 00000199
/* 028D4 80ADB864 35F80040 */  ori     $t8, $t7, 0x0040           ## $t8 = 00000040
/* 028D8 80ADB868 1000000A */  beq     $zero, $zero, .L80ADB894   
/* 028DC 80ADB86C A2180199 */  sb      $t8, 0x0199($s0)           ## 00000199
/* 028E0 80ADB870 92190199 */  lbu     $t9, 0x0199($s0)           ## 00000199
.L80ADB874:
/* 028E4 80ADB874 3328FFBF */  andi    $t0, $t9, 0xFFBF           ## $t0 = 00000000
/* 028E8 80ADB878 10000006 */  beq     $zero, $zero, .L80ADB894   
/* 028EC 80ADB87C A2080199 */  sb      $t0, 0x0199($s0)           ## 00000199
/* 028F0 80ADB880 8E090118 */  lw      $t1, 0x0118($s0)           ## 00000118
.L80ADB884:
/* 028F4 80ADB884 00025380 */  sll     $t2, $v0, 14               
/* 028F8 80ADB888 852B00B6 */  lh      $t3, 0x00B6($t1)           ## 000000B6
/* 028FC 80ADB88C 016A6021 */  addu    $t4, $t3, $t2              
/* 02900 80ADB890 A60C00B6 */  sh      $t4, 0x00B6($s0)           ## 000000B6
.L80ADB894:
/* 02904 80ADB894 920D0195 */  lbu     $t5, 0x0195($s0)           ## 00000195
.L80ADB898:
/* 02908 80ADB898 55A00011 */  bnel    $t5, $zero, .L80ADB8E0     
/* 0290C 80ADB89C 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 02910 80ADB8A0 8602019A */  lh      $v0, 0x019A($s0)           ## 0000019A
/* 02914 80ADB8A4 2841011C */  slti    $at, $v0, 0x011C           
/* 02918 80ADB8A8 10200005 */  beq     $at, $zero, .L80ADB8C0     
/* 0291C 80ADB8AC 2841001F */  slti    $at, $v0, 0x001F           
/* 02920 80ADB8B0 10200007 */  beq     $at, $zero, .L80ADB8D0     
/* 02924 80ADB8B4 28410010 */  slti    $at, $v0, 0x0010           
/* 02928 80ADB8B8 54200006 */  bnel    $at, $zero, .L80ADB8D4     
/* 0292C 80ADB8BC 92180199 */  lbu     $t8, 0x0199($s0)           ## 00000199
.L80ADB8C0:
/* 02930 80ADB8C0 920E0199 */  lbu     $t6, 0x0199($s0)           ## 00000199
/* 02934 80ADB8C4 35CF0040 */  ori     $t7, $t6, 0x0040           ## $t7 = 00000040
/* 02938 80ADB8C8 10000004 */  beq     $zero, $zero, .L80ADB8DC   
/* 0293C 80ADB8CC A20F0199 */  sb      $t7, 0x0199($s0)           ## 00000199
.L80ADB8D0:
/* 02940 80ADB8D0 92180199 */  lbu     $t8, 0x0199($s0)           ## 00000199
.L80ADB8D4:
/* 02944 80ADB8D4 3319FFBF */  andi    $t9, $t8, 0xFFBF           ## $t9 = 00000000
/* 02948 80ADB8D8 A2190199 */  sb      $t9, 0x0199($s0)           ## 00000199
.L80ADB8DC:
/* 0294C 80ADB8DC 8FA80024 */  lw      $t0, 0x0024($sp)           
.L80ADB8E0:
/* 02950 80ADB8E0 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 02954 80ADB8E4 0C00B6EC */  jal     func_8002DBB0              
/* 02958 80ADB8E8 8D041C44 */  lw      $a0, 0x1C44($t0)           ## 00001C44
/* 0295C 80ADB8EC 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 02960 80ADB8F0 44814000 */  mtc1    $at, $f8                   ## $f8 = 600.00
/* 02964 80ADB8F4 00000000 */  nop
/* 02968 80ADB8F8 4600403C */  c.lt.s  $f8, $f0                   
/* 0296C 80ADB8FC 00000000 */  nop
/* 02970 80ADB900 4502000A */  bc1fl   .L80ADB92C                 
/* 02974 80ADB904 860A019A */  lh      $t2, 0x019A($s0)           ## 0000019A
/* 02978 80ADB908 92090199 */  lbu     $t1, 0x0199($s0)           ## 00000199
/* 0297C 80ADB90C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02980 80ADB910 312BFFBF */  andi    $t3, $t1, 0xFFBF           ## $t3 = 00000000
/* 02984 80ADB914 A20B0199 */  sb      $t3, 0x0199($s0)           ## 00000199
/* 02988 80ADB918 0C2B6709 */  jal     func_80AD9C24              
/* 0298C 80ADB91C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02990 80ADB920 1000002C */  beq     $zero, $zero, .L80ADB9D4   
/* 02994 80ADB924 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02998 80ADB928 860A019A */  lh      $t2, 0x019A($s0)           ## 0000019A
.L80ADB92C:
/* 0299C 80ADB92C 5540000E */  bnel    $t2, $zero, .L80ADB968     
/* 029A0 80ADB930 920D0195 */  lbu     $t5, 0x0195($s0)           ## 00000195
/* 029A4 80ADB934 920C0195 */  lbu     $t4, 0x0195($s0)           ## 00000195
/* 029A8 80ADB938 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029AC 80ADB93C 15800005 */  bne     $t4, $zero, .L80ADB954     
/* 029B0 80ADB940 00000000 */  nop
/* 029B4 80ADB944 0C2B6538 */  jal     func_80AD94E0              
/* 029B8 80ADB948 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029BC 80ADB94C 10000021 */  beq     $zero, $zero, .L80ADB9D4   
/* 029C0 80ADB950 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ADB954:
/* 029C4 80ADB954 0C2B6709 */  jal     func_80AD9C24              
/* 029C8 80ADB958 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 029CC 80ADB95C 1000001D */  beq     $zero, $zero, .L80ADB9D4   
/* 029D0 80ADB960 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029D4 80ADB964 920D0195 */  lbu     $t5, 0x0195($s0)           ## 00000195
.L80ADB968:
/* 029D8 80ADB968 51A0000C */  beql    $t5, $zero, .L80ADB99C     
/* 029DC 80ADB96C 8602019C */  lh      $v0, 0x019C($s0)           ## 0000019C
/* 029E0 80ADB970 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
/* 029E4 80ADB974 3C0E80AE */  lui     $t6, %hi(func_80ADAAA4)    ## $t6 = 80AE0000
/* 029E8 80ADB978 25CEAAA4 */  addiu   $t6, $t6, %lo(func_80ADAAA4) ## $t6 = 80ADAAA4
/* 029EC 80ADB97C 8C4F0190 */  lw      $t7, 0x0190($v0)           ## 00000190
/* 029F0 80ADB980 55CF0014 */  bnel    $t6, $t7, .L80ADB9D4       
/* 029F4 80ADB984 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029F8 80ADB988 0C2B6576 */  jal     func_80AD95D8              
/* 029FC 80ADB98C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A00 80ADB990 10000010 */  beq     $zero, $zero, .L80ADB9D4   
/* 02A04 80ADB994 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A08 80ADB998 8602019C */  lh      $v0, 0x019C($s0)           ## 0000019C
.L80ADB99C:
/* 02A0C 80ADB99C 2418FFF1 */  addiu   $t8, $zero, 0xFFF1         ## $t8 = FFFFFFF1
/* 02A10 80ADB9A0 14400003 */  bne     $v0, $zero, .L80ADB9B0     
/* 02A14 80ADB9A4 00000000 */  nop
/* 02A18 80ADB9A8 10000009 */  beq     $zero, $zero, .L80ADB9D0   
/* 02A1C 80ADB9AC A618019C */  sh      $t8, 0x019C($s0)           ## 0000019C
.L80ADB9B0:
/* 02A20 80ADB9B0 04410007 */  bgez    $v0, .L80ADB9D0            
/* 02A24 80ADB9B4 24590001 */  addiu   $t9, $v0, 0x0001           ## $t9 = 00000001
/* 02A28 80ADB9B8 A619019C */  sh      $t9, 0x019C($s0)           ## 0000019C
/* 02A2C 80ADB9BC 8608019C */  lh      $t0, 0x019C($s0)           ## 0000019C
/* 02A30 80ADB9C0 55000004 */  bnel    $t0, $zero, .L80ADB9D4     
/* 02A34 80ADB9C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A38 80ADB9C8 0C2B6538 */  jal     func_80AD94E0              
/* 02A3C 80ADB9CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ADB9D0:
/* 02A40 80ADB9D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ADB9D4:
/* 02A44 80ADB9D4 0C2B65F2 */  jal     func_80AD97C8              
/* 02A48 80ADB9D8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02A4C 80ADB9DC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02A50 80ADB9E0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02A54 80ADB9E4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02A58 80ADB9E8 03E00008 */  jr      $ra                        
/* 02A5C 80ADB9EC 00000000 */  nop


