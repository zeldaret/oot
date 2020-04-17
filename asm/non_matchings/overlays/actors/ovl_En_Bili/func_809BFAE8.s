glabel func_809BFAE8
/* 00248 809BFAE8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0024C 809BFAEC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00250 809BFAF0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00254 809BFAF4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00258 809BFAF8 24A50064 */  addiu   $a1, $a1, 0x0064           ## $a1 = 06000064
/* 0025C 809BFAFC AFA60018 */  sw      $a2, 0x0018($sp)
/* 00260 809BFB00 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 00264 809BFB04 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00268 809BFB08 8FA60018 */  lw      $a2, 0x0018($sp)
/* 0026C 809BFB0C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00270 809BFB10 3C18809C */  lui     $t8, %hi(func_809C04B4)    ## $t8 = 809C0000
/* 00274 809BFB14 90CE01E4 */  lbu     $t6, 0x01E4($a2)           ## 000001E4
/* 00278 809BFB18 271804B4 */  addiu   $t8, $t8, %lo(func_809C04B4) ## $t8 = 809C04B4
/* 0027C 809BFB1C ACD80190 */  sw      $t8, 0x0190($a2)           ## 00000190
/* 00280 809BFB20 31CFFFFE */  andi    $t7, $t6, 0xFFFE           ## $t7 = 00000000
/* 00284 809BFB24 A0CF01E4 */  sb      $t7, 0x01E4($a2)           ## 000001E4
/* 00288 809BFB28 E4C00068 */  swc1    $f0, 0x0068($a2)           ## 00000068
/* 0028C 809BFB2C E4C00060 */  swc1    $f0, 0x0060($a2)           ## 00000060
/* 00290 809BFB30 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00294 809BFB34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00298 809BFB38 03E00008 */  jr      $ra
/* 0029C 809BFB3C 00000000 */  nop
