glabel func_80B04AB8
/* 00228 80B04AB8 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0022C 80B04ABC 3C0E80B0 */  lui     $t6, %hi(D_80B07168)       ## $t6 = 80B00000
/* 00230 80B04AC0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00234 80B04AC4 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 00238 80B04AC8 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 0023C 80B04ACC 25CE7168 */  addiu   $t6, $t6, %lo(D_80B07168)  ## $t6 = 80B07168
/* 00240 80B04AD0 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80B07168
/* 00244 80B04AD4 27A60034 */  addiu   $a2, $sp, 0x0034           ## $a2 = FFFFFFF4
/* 00248 80B04AD8 24080064 */  addiu   $t0, $zero, 0x0064         ## $t0 = 00000064
/* 0024C 80B04ADC ACD80000 */  sw      $t8, 0x0000($a2)           ## FFFFFFF4
/* 00250 80B04AE0 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80B0716C
/* 00254 80B04AE4 240900DC */  addiu   $t1, $zero, 0x00DC         ## $t1 = 000000DC
/* 00258 80B04AE8 240A0008 */  addiu   $t2, $zero, 0x0008         ## $t2 = 00000008
/* 0025C 80B04AEC ACCF0004 */  sw      $t7, 0x0004($a2)           ## FFFFFFF8
/* 00260 80B04AF0 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80B07170
/* 00264 80B04AF4 00C03825 */  or      $a3, $a2, $zero            ## $a3 = FFFFFFF4
/* 00268 80B04AF8 27A50028 */  addiu   $a1, $sp, 0x0028           ## $a1 = FFFFFFE8
/* 0026C 80B04AFC ACD80008 */  sw      $t8, 0x0008($a2)           ## FFFFFFFC
/* 00270 80B04B00 8FB90040 */  lw      $t9, 0x0040($sp)           
/* 00274 80B04B04 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00278 80B04B08 C7240024 */  lwc1    $f4, 0x0024($t9)           ## 00000024
/* 0027C 80B04B0C E7A40028 */  swc1    $f4, 0x0028($sp)           
/* 00280 80B04B10 C7260080 */  lwc1    $f6, 0x0080($t9)           ## 00000080
/* 00284 80B04B14 E7A6002C */  swc1    $f6, 0x002C($sp)           
/* 00288 80B04B18 C728002C */  lwc1    $f8, 0x002C($t9)           ## 0000002C
/* 0028C 80B04B1C AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 00290 80B04B20 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00294 80B04B24 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00298 80B04B28 0C00A3E1 */  jal     func_80028F84              
/* 0029C 80B04B2C E7A80030 */  swc1    $f8, 0x0030($sp)           
/* 002A0 80B04B30 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 002A4 80B04B34 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 002A8 80B04B38 03E00008 */  jr      $ra                        
/* 002AC 80B04B3C 00000000 */  nop


