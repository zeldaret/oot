glabel func_80ADA25C
/* 012CC 80ADA25C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 012D0 80ADA260 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 012D4 80ADA264 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 012D8 80ADA268 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 012DC 80ADA26C 24A514CC */  addiu   $a1, $a1, 0x14CC           ## $a1 = 060014CC
/* 012E0 80ADA270 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 012E4 80ADA274 0C0294BE */  jal     func_800A52F8              
/* 012E8 80ADA278 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 012EC 80ADA27C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 012F0 80ADA280 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 012F4 80ADA284 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 012F8 80ADA288 A48F019A */  sh      $t7, 0x019A($a0)           ## 0000019A
/* 012FC 80ADA28C A08E0198 */  sb      $t6, 0x0198($a0)           ## 00000198
/* 01300 80ADA290 8485019A */  lh      $a1, 0x019A($a0)           ## 0000019A
/* 01304 80ADA294 0C2B6490 */  jal     func_80AD9240              
/* 01308 80ADA298 24860008 */  addiu   $a2, $a0, 0x0008           ## $a2 = 00000008
/* 0130C 80ADA29C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 01310 80ADA2A0 3C1880AE */  lui     $t8, %hi(func_80ADBEE8)    ## $t8 = 80AE0000
/* 01314 80ADA2A4 2718BEE8 */  addiu   $t8, $t8, %lo(func_80ADBEE8) ## $t8 = 80ADBEE8
/* 01318 80ADA2A8 ACF80190 */  sw      $t8, 0x0190($a3)           ## 00000190
/* 0131C 80ADA2AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01320 80ADA2B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01324 80ADA2B4 03E00008 */  jr      $ra                        
/* 01328 80ADA2B8 00000000 */  nop


