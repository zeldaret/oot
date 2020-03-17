glabel func_80ACAB2C
/* 00C0C 80ACAB2C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00C10 80ACAB30 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C14 80ACAB34 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00C18 80ACAB38 0C2B28EE */  jal     func_80ACA3B8              
/* 00C1C 80ACAB3C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00C20 80ACAB40 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00C24 80ACAB44 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00C28 80ACAB48 24062068 */  addiu   $a2, $zero, 0x2068         ## $a2 = 00002068
/* 00C2C 80ACAB4C 3C074407 */  lui     $a3, 0x4407                ## $a3 = 44070000
/* 00C30 80ACAB50 0C2B28FD */  jal     func_80ACA3F4              
/* 00C34 80ACAB54 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00C38 80ACAB58 50400008 */  beql    $v0, $zero, .L80ACAB7C     
/* 00C3C 80ACAB5C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00C40 80ACAB60 0C03D719 */  jal     func_800F5C64              
/* 00C44 80ACAB64 2404005A */  addiu   $a0, $zero, 0x005A         ## $a0 = 0000005A
/* 00C48 80ACAB68 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 00C4C 80ACAB6C 3C0E80AD */  lui     $t6, %hi(func_80ACAAC0)    ## $t6 = 80AD0000
/* 00C50 80ACAB70 25CEAAC0 */  addiu   $t6, $t6, %lo(func_80ACAAC0) ## $t6 = 80ACAAC0
/* 00C54 80ACAB74 ADEE040C */  sw      $t6, 0x040C($t7)           ## 0000040C
/* 00C58 80ACAB78 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ACAB7C:
/* 00C5C 80ACAB7C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00C60 80ACAB80 03E00008 */  jr      $ra                        
/* 00C64 80ACAB84 00000000 */  nop


