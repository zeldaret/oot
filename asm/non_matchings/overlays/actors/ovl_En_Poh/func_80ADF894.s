glabel func_80ADF894
/* 01B44 80ADF894 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01B48 80ADF898 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01B4C 80ADF89C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01B50 80ADF8A0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01B54 80ADF8A4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01B58 80ADF8A8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01B5C 80ADF8AC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01B60 80ADF8B0 92040195 */  lbu     $a0, 0x0195($s0)           ## 00000195
/* 01B64 80ADF8B4 000422C0 */  sll     $a0, $a0, 11               
/* 01B68 80ADF8B8 00042400 */  sll     $a0, $a0, 16               
/* 01B6C 80ADF8BC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01B70 80ADF8C0 00042403 */  sra     $a0, $a0, 16               
/* 01B74 80ADF8C4 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 01B78 80ADF8C8 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 01B7C 80ADF8CC 00000000 */  nop
/* 01B80 80ADF8D0 46040182 */  mul.s   $f6, $f0, $f4              
/* 01B84 80ADF8D4 E7A60024 */  swc1    $f6, 0x0024($sp)           
/* 01B88 80ADF8D8 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01B8C 80ADF8DC 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 01B90 80ADF8E0 C7AA0024 */  lwc1    $f10, 0x0024($sp)          
/* 01B94 80ADF8E4 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 01B98 80ADF8E8 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 01B9C 80ADF8EC 46005402 */  mul.s   $f16, $f10, $f0            
/* 01BA0 80ADF8F0 46104481 */  sub.s   $f18, $f8, $f16            
/* 01BA4 80ADF8F4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01BA8 80ADF8F8 E6120024 */  swc1    $f18, 0x0024($s0)          ## 00000024
/* 01BAC 80ADF8FC C7A60024 */  lwc1    $f6, 0x0024($sp)           
/* 01BB0 80ADF900 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 01BB4 80ADF904 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 01BB8 80ADF908 46003282 */  mul.s   $f10, $f6, $f0             
/* 01BBC 80ADF90C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 01BC0 80ADF910 00A12821 */  addu    $a1, $a1, $at              
/* 01BC4 80ADF914 00052C00 */  sll     $a1, $a1, 16               
/* 01BC8 80ADF918 00052C03 */  sra     $a1, $a1, 16               
/* 01BCC 80ADF91C 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 01BD0 80ADF920 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 01BD4 80ADF924 460A2200 */  add.s   $f8, $f4, $f10             
/* 01BD8 80ADF928 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01BDC 80ADF92C E608002C */  swc1    $f8, 0x002C($s0)           ## 0000002C
/* 01BE0 80ADF930 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01BE4 80ADF934 0C2B7A73 */  jal     func_80ADE9CC              
/* 01BE8 80ADF938 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01BEC 80ADF93C 860E0198 */  lh      $t6, 0x0198($s0)           ## 00000198
/* 01BF0 80ADF940 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 01BF4 80ADF944 51C00008 */  beql    $t6, $zero, .L80ADF968     
/* 01BF8 80ADF948 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 01BFC 80ADF94C 44818000 */  mtc1    $at, $f16                  ## $f16 = 250.00
/* 01C00 80ADF950 C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
/* 01C04 80ADF954 4612803C */  c.lt.s  $f16, $f18                 
/* 01C08 80ADF958 00000000 */  nop
/* 01C0C 80ADF95C 45020006 */  bc1fl   .L80ADF978                 
/* 01C10 80ADF960 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C14 80ADF964 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
.L80ADF968:
/* 01C18 80ADF968 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C1C 80ADF96C 0C2B785B */  jal     func_80ADE16C              
/* 01C20 80ADF970 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 01C24 80ADF974 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ADF978:
/* 01C28 80ADF978 0C00BE5D */  jal     func_8002F974              
/* 01C2C 80ADF97C 24053072 */  addiu   $a1, $zero, 0x3072         ## $a1 = 00003072
/* 01C30 80ADF980 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01C34 80ADF984 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01C38 80ADF988 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01C3C 80ADF98C 03E00008 */  jr      $ra                        
/* 01C40 80ADF990 00000000 */  nop
