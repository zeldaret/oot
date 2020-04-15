glabel func_80ACA928
/* 00A08 80ACA928 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A0C 80ACA92C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A10 80ACA930 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00A14 80ACA934 0C2B28EE */  jal     func_80ACA3B8              
/* 00A18 80ACA938 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00A1C 80ACA93C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00A20 80ACA940 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00A24 80ACA944 24062064 */  addiu   $a2, $zero, 0x2064         ## $a2 = 00002064
/* 00A28 80ACA948 3C0743B4 */  lui     $a3, 0x43B4                ## $a3 = 43B40000
/* 00A2C 80ACA94C 0C2B28FD */  jal     func_80ACA3F4              
/* 00A30 80ACA950 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00A34 80ACA954 5040000D */  beql    $v0, $zero, .L80ACA98C     
/* 00A38 80ACA958 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A3C 80ACA95C 0C03D719 */  jal     func_800F5C64              
/* 00A40 80ACA960 2404005A */  addiu   $a0, $zero, 0x005A         ## $a0 = 0000005A
/* 00A44 80ACA964 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 00A48 80ACA968 3C0E80AD */  lui     $t6, %hi(func_80ACA88C)    ## $t6 = 80AD0000
/* 00A4C 80ACA96C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00A50 80ACA970 25CEA88C */  addiu   $t6, $t6, %lo(func_80ACA88C) ## $t6 = 80ACA88C
/* 00A54 80ACA974 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00A58 80ACA978 ADEE040C */  sw      $t6, 0x040C($t7)           ## 0000040C
/* 00A5C 80ACA97C 94580EE0 */  lhu     $t8, 0x0EE0($v0)           ## 8015F540
/* 00A60 80ACA980 37198000 */  ori     $t9, $t8, 0x8000           ## $t9 = 00008000
/* 00A64 80ACA984 A4590EE0 */  sh      $t9, 0x0EE0($v0)           ## 8015F540
/* 00A68 80ACA988 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ACA98C:
/* 00A6C 80ACA98C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00A70 80ACA990 03E00008 */  jr      $ra                        
/* 00A74 80ACA994 00000000 */  nop
