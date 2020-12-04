glabel func_809B1884
/* 00764 809B1884 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00768 809B1888 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 0076C 809B188C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00770 809B1890 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00774 809B1894 C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 00778 809B1898 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0077C 809B189C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00780 809B18A0 0C02927F */  jal     Animation_Update
              
/* 00784 809B18A4 E7A4003C */  swc1    $f4, 0x003C($sp)           
/* 00788 809B18A8 860E0262 */  lh      $t6, 0x0262($s0)           ## 00000262
/* 0078C 809B18AC 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00790 809B18B0 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00794 809B18B4 15C00004 */  bne     $t6, $zero, .L809B18C8     
/* 00798 809B18B8 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 0079C 809B18BC 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 007A0 809B18C0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 007A4 809B18C4 AFA00010 */  sw      $zero, 0x0010($sp)         
.L809B18C8:
/* 007A8 809B18C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007AC 809B18CC 0C26C470 */  jal     func_809B11C0              
/* 007B0 809B18D0 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 007B4 809B18D4 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 007B8 809B18D8 44814000 */  mtc1    $at, $f8                   ## $f8 = 12.00
/* 007BC 809B18DC C7A6003C */  lwc1    $f6, 0x003C($sp)           
/* 007C0 809B18E0 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 007C4 809B18E4 46083032 */  c.eq.s  $f6, $f8                   
/* 007C8 809B18E8 00000000 */  nop
/* 007CC 809B18EC 45020018 */  bc1fl   .L809B1950                 
/* 007D0 809B18F0 C7B2003C */  lwc1    $f18, 0x003C($sp)          
/* 007D4 809B18F4 C60A0284 */  lwc1    $f10, 0x0284($s0)          ## 00000284
/* 007D8 809B18F8 44818000 */  mtc1    $at, $f16                  ## $f16 = 15.00
/* 007DC 809B18FC 8E070280 */  lw      $a3, 0x0280($s0)           ## 00000280
/* 007E0 809B1900 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 007E4 809B1904 46105480 */  add.s   $f18, $f10, $f16           
/* 007E8 809B1908 240600E1 */  addiu   $a2, $zero, 0x00E1         ## $a2 = 000000E1
/* 007EC 809B190C 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 007F0 809B1910 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 007F4 809B1914 C6040288 */  lwc1    $f4, 0x0288($s0)           ## 00000288
/* 007F8 809B1918 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 007FC 809B191C C606028C */  lwc1    $f6, 0x028C($s0)           ## 0000028C
/* 00800 809B1920 4600320D */  trunc.w.s $f8, $f6                   
/* 00804 809B1924 44194000 */  mfc1    $t9, $f8                   
/* 00808 809B1928 00000000 */  nop
/* 0080C 809B192C AFB90018 */  sw      $t9, 0x0018($sp)           
/* 00810 809B1930 C60A0290 */  lwc1    $f10, 0x0290($s0)          ## 00000290
/* 00814 809B1934 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00818 809B1938 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0081C 809B193C 4600540D */  trunc.w.s $f16, $f10                 
/* 00820 809B1940 44098000 */  mfc1    $t1, $f16                  
/* 00824 809B1944 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00828 809B1948 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 0082C 809B194C C7B2003C */  lwc1    $f18, 0x003C($sp)          
.L809B1950:
/* 00830 809B1950 C604026C */  lwc1    $f4, 0x026C($s0)           ## 0000026C
/* 00834 809B1954 3C0A809B */  lui     $t2, %hi(func_809B1524)    ## $t2 = 809B0000
/* 00838 809B1958 254A1524 */  addiu   $t2, $t2, %lo(func_809B1524) ## $t2 = 809B1524
/* 0083C 809B195C 4612203E */  c.le.s  $f4, $f18                  
/* 00840 809B1960 00000000 */  nop
/* 00844 809B1964 45020003 */  bc1fl   .L809B1974                 
/* 00848 809B1968 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 0084C 809B196C AE0A0250 */  sw      $t2, 0x0250($s0)           ## 00000250
/* 00850 809B1970 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809B1974:
/* 00854 809B1974 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00858 809B1978 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0085C 809B197C 03E00008 */  jr      $ra                        
/* 00860 809B1980 00000000 */  nop
