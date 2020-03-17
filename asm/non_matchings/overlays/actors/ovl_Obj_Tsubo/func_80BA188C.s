glabel func_80BA188C
/* 00B2C 80BA188C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00B30 80BA1890 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00B34 80BA1894 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B38 80BA1898 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00B3C 80BA189C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00B40 80BA18A0 84840032 */  lh      $a0, 0x0032($a0)           ## 00000032
/* 00B44 80BA18A4 C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 00B48 80BA18A8 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 00B4C 80BA18AC 46040182 */  mul.s   $f6, $f0, $f4              
/* 00B50 80BA18B0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00B54 80BA18B4 E606005C */  swc1    $f6, 0x005C($s0)           ## 0000005C
/* 00B58 80BA18B8 C6080068 */  lwc1    $f8, 0x0068($s0)           ## 00000068
/* 00B5C 80BA18BC 240E00F0 */  addiu   $t6, $zero, 0x00F0         ## $t6 = 000000F0
/* 00B60 80BA18C0 A20E00AE */  sb      $t6, 0x00AE($s0)           ## 000000AE
/* 00B64 80BA18C4 46080282 */  mul.s   $f10, $f0, $f8             
/* 00B68 80BA18C8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00B6C 80BA18CC E60A0064 */  swc1    $f10, 0x0064($s0)          ## 00000064
/* 00B70 80BA18D0 3C0180BA */  lui     $at, %hi(D_80BA1C6C)       ## $at = 80BA0000
/* 00B74 80BA18D4 C4301C6C */  lwc1    $f16, %lo(D_80BA1C6C)($at) 
/* 00B78 80BA18D8 3C01452F */  lui     $at, 0x452F                ## $at = 452F0000
/* 00B7C 80BA18DC 44812000 */  mtc1    $at, $f4                   ## $f4 = 2800.00
/* 00B80 80BA18E0 46100481 */  sub.s   $f18, $f0, $f16            
/* 00B84 80BA18E4 3C0180BA */  lui     $at, %hi(D_80BA1B50)       ## $at = 80BA0000
/* 00B88 80BA18E8 46049182 */  mul.s   $f6, $f18, $f4             
/* 00B8C 80BA18EC 4600320D */  trunc.w.s $f8, $f6                   
/* 00B90 80BA18F0 44184000 */  mfc1    $t8, $f8                   
/* 00B94 80BA18F4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00B98 80BA18F8 A4381B50 */  sh      $t8, %lo(D_80BA1B50)($at)  
/* 00B9C 80BA18FC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00BA0 80BA1900 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 00BA4 80BA1904 3C0144FA */  lui     $at, 0x44FA                ## $at = 44FA0000
/* 00BA8 80BA1908 44819000 */  mtc1    $at, $f18                  ## $f18 = 2000.00
/* 00BAC 80BA190C 460A0401 */  sub.s   $f16, $f0, $f10            
/* 00BB0 80BA1910 3C0180BA */  lui     $at, %hi(D_80BA1B58)       ## $at = 80BA0000
/* 00BB4 80BA1914 3C0980BA */  lui     $t1, %hi(func_80BA1958)    ## $t1 = 80BA0000
/* 00BB8 80BA1918 25291958 */  addiu   $t1, $t1, %lo(func_80BA1958) ## $t1 = 80BA1958
/* 00BBC 80BA191C 46128102 */  mul.s   $f4, $f16, $f18            
/* 00BC0 80BA1920 4600218D */  trunc.w.s $f6, $f4                   
/* 00BC4 80BA1924 44083000 */  mfc1    $t0, $f6                   
/* 00BC8 80BA1928 00000000 */  nop
/* 00BCC 80BA192C A4281B58 */  sh      $t0, %lo(D_80BA1B58)($at)  
/* 00BD0 80BA1930 3C0180BA */  lui     $at, %hi(D_80BA1B54)       ## $at = 80BA0000
/* 00BD4 80BA1934 A4201B54 */  sh      $zero, %lo(D_80BA1B54)($at) 
/* 00BD8 80BA1938 3C0180BA */  lui     $at, %hi(D_80BA1B5C)       ## $at = 80BA0000
/* 00BDC 80BA193C A4201B5C */  sh      $zero, %lo(D_80BA1B5C)($at) 
/* 00BE0 80BA1940 AE09014C */  sw      $t1, 0x014C($s0)           ## 0000014C
/* 00BE4 80BA1944 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00BE8 80BA1948 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00BEC 80BA194C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00BF0 80BA1950 03E00008 */  jr      $ra                        
/* 00BF4 80BA1954 00000000 */  nop


