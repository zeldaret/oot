glabel func_80ABCDBC
/* 0020C 80ABCDBC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00210 80ABCDC0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00214 80ABCDC4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00218 80ABCDC8 E48401F4 */  swc1    $f4, 0x01F4($a0)           ## 000001F4
/* 0021C 80ABCDCC 0C2AF350 */  jal     func_80ABCD40              
/* 00220 80ABCDD0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00224 80ABCDD4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00228 80ABCDD8 3C0F80AC */  lui     $t7, %hi(func_80ABCF4C)    ## $t7 = 80AC0000
/* 0022C 80ABCDDC 240E00B4 */  addiu   $t6, $zero, 0x00B4         ## $t6 = 000000B4
/* 00230 80ABCDE0 25EFCF4C */  addiu   $t7, $t7, %lo(func_80ABCF4C) ## $t7 = 80ABCF4C
/* 00234 80ABCDE4 AC8E01DC */  sw      $t6, 0x01DC($a0)           ## 000001DC
/* 00238 80ABCDE8 AC8F014C */  sw      $t7, 0x014C($a0)           ## 0000014C
/* 0023C 80ABCDEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00240 80ABCDF0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00244 80ABCDF4 03E00008 */  jr      $ra                        
/* 00248 80ABCDF8 00000000 */  nop
