glabel func_80AACB14
/* 00214 80AACB14 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00218 80AACB18 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0021C 80AACB1C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00220 80AACB20 0C00BCCD */  jal     func_8002F334              
/* 00224 80AACB24 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00228 80AACB28 1040000C */  beq     $v0, $zero, .L80AACB5C     
/* 0022C 80AACB2C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00230 80AACB30 3C0E80AB */  lui     $t6, %hi(func_80AACA94)    ## $t6 = 80AB0000
/* 00234 80AACB34 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00238 80AACB38 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 0023C 80AACB3C 25CECA94 */  addiu   $t6, $t6, %lo(func_80AACA94) ## $t6 = 80AACA94
/* 00240 80AACB40 AC8E0284 */  sw      $t6, 0x0284($a0)           ## 00000284
/* 00244 80AACB44 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 00248 80AACB48 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 0024C 80AACB4C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00250 80AACB50 24060025 */  addiu   $a2, $zero, 0x0025         ## $a2 = 00000025
/* 00254 80AACB54 0C00BD0D */  jal     func_8002F434              
/* 00258 80AACB58 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80AACB5C:
/* 0025C 80AACB5C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00260 80AACB60 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00264 80AACB64 03E00008 */  jr      $ra                        
/* 00268 80AACB68 00000000 */  nop
