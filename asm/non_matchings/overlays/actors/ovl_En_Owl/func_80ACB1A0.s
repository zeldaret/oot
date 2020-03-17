glabel func_80ACB1A0
/* 01280 80ACB1A0 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 01284 80ACB1A4 95CEF58A */  lhu     $t6, -0x0A76($t6)          ## 8015F58A
/* 01288 80ACB1A8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0128C 80ACB1AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01290 80ACB1B0 31CF0020 */  andi    $t7, $t6, 0x0020           ## $t7 = 00000000
/* 01294 80ACB1B4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01298 80ACB1B8 11E00003 */  beq     $t7, $zero, .L80ACB1C8     
/* 0129C 80ACB1BC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 012A0 80ACB1C0 10000002 */  beq     $zero, $zero, .L80ACB1CC   
/* 012A4 80ACB1C4 24064004 */  addiu   $a2, $zero, 0x4004         ## $a2 = 00004004
.L80ACB1C8:
/* 012A8 80ACB1C8 24064003 */  addiu   $a2, $zero, 0x4003         ## $a2 = 00004003
.L80ACB1CC:
/* 012AC 80ACB1CC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 012B0 80ACB1D0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 012B4 80ACB1D4 0C2B28EE */  jal     func_80ACA3B8              
/* 012B8 80ACB1D8 A7A6001E */  sh      $a2, 0x001E($sp)           
/* 012BC 80ACB1DC 97A6001E */  lhu     $a2, 0x001E($sp)           
/* 012C0 80ACB1E0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 012C4 80ACB1E4 0C2B2956 */  jal     func_80ACA558              
/* 012C8 80ACB1E8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 012CC 80ACB1EC 1040000B */  beq     $v0, $zero, .L80ACB21C     
/* 012D0 80ACB1F0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 012D4 80ACB1F4 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 012D8 80ACB1F8 94580F2A */  lhu     $t8, 0x0F2A($v0)           ## 8015F58A
/* 012DC 80ACB1FC 2404005A */  addiu   $a0, $zero, 0x005A         ## $a0 = 0000005A
/* 012E0 80ACB200 37190020 */  ori     $t9, $t8, 0x0020           ## $t9 = 00000020
/* 012E4 80ACB204 0C03D719 */  jal     func_800F5C64              
/* 012E8 80ACB208 A4590F2A */  sh      $t9, 0x0F2A($v0)           ## 8015F58A
/* 012EC 80ACB20C 8FA90020 */  lw      $t1, 0x0020($sp)           
/* 012F0 80ACB210 3C0880AD */  lui     $t0, %hi(func_80ACB148)    ## $t0 = 80AD0000
/* 012F4 80ACB214 2508B148 */  addiu   $t0, $t0, %lo(func_80ACB148) ## $t0 = 80ACB148
/* 012F8 80ACB218 AD28040C */  sw      $t0, 0x040C($t1)           ## 0000040C
.L80ACB21C:
/* 012FC 80ACB21C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01300 80ACB220 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01304 80ACB224 03E00008 */  jr      $ra                        
/* 01308 80ACB228 00000000 */  nop


