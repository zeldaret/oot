glabel func_809B8E34
/* 00B54 809B8E34 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00B58 809B8E38 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00B5C 809B8E3C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B60 809B8E40 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00B64 809B8E44 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00B68 809B8E48 24A50444 */  addiu   $a1, $a1, 0x0444           ## $a1 = 06000444
/* 00B6C 809B8E4C 0C0294BE */  jal     func_800A52F8              
/* 00B70 809B8E50 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00B74 809B8E54 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00B78 809B8E58 00000000 */  nop
/* 00B7C 809B8E5C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00B80 809B8E60 44811000 */  mtc1    $at, $f2                   ## $f2 = 0.50
/* 00B84 809B8E64 00000000 */  nop
/* 00B88 809B8E68 46020102 */  mul.s   $f4, $f0, $f2              
/* 00B8C 809B8E6C 46022180 */  add.s   $f6, $f4, $f2              
/* 00B90 809B8E70 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00B94 809B8E74 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 00B98 809B8E78 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00B9C 809B8E7C 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 00BA0 809B8E80 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00BA4 809B8E84 44818000 */  mtc1    $at, $f16                  ## $f16 = 40.00
/* 00BA8 809B8E88 46080282 */  mul.s   $f10, $f0, $f8             
/* 00BAC 809B8E8C 46105480 */  add.s   $f18, $f10, $f16           
/* 00BB0 809B8E90 4600910D */  trunc.w.s $f4, $f18                  
/* 00BB4 809B8E94 440F2000 */  mfc1    $t7, $f4                   
/* 00BB8 809B8E98 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00BBC 809B8E9C AE0F0260 */  sw      $t7, 0x0260($s0)           ## 00000260
/* 00BC0 809B8EA0 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00BC4 809B8EA4 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 00BC8 809B8EA8 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 00BCC 809B8EAC 44815000 */  mtc1    $at, $f10                  ## $f10 = 180.00
/* 00BD0 809B8EB0 46060202 */  mul.s   $f8, $f0, $f6              
/* 00BD4 809B8EB4 24080006 */  addiu   $t0, $zero, 0x0006         ## $t0 = 00000006
/* 00BD8 809B8EB8 3C05809C */  lui     $a1, %hi(func_809B8EF4)    ## $a1 = 809C0000
/* 00BDC 809B8EBC AE000324 */  sw      $zero, 0x0324($s0)         ## 00000324
/* 00BE0 809B8EC0 AE080250 */  sw      $t0, 0x0250($s0)           ## 00000250
/* 00BE4 809B8EC4 24A58EF4 */  addiu   $a1, $a1, %lo(func_809B8EF4) ## $a1 = 809B8EF4
/* 00BE8 809B8EC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BEC 809B8ECC 460A4400 */  add.s   $f16, $f8, $f10            
/* 00BF0 809B8ED0 4600848D */  trunc.w.s $f18, $f16                 
/* 00BF4 809B8ED4 44199000 */  mfc1    $t9, $f18                  
/* 00BF8 809B8ED8 0C26E0B8 */  jal     func_809B82E0              
/* 00BFC 809B8EDC AE190264 */  sw      $t9, 0x0264($s0)           ## 00000264
/* 00C00 809B8EE0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00C04 809B8EE4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00C08 809B8EE8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00C0C 809B8EEC 03E00008 */  jr      $ra                        
/* 00C10 809B8EF0 00000000 */  nop


