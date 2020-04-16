glabel func_80AACA94
/* 00194 80AACA94 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00198 80AACA98 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0019C 80AACA9C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 001A0 80AACAA0 0C00BD04 */  jal     func_8002F410              
/* 001A4 80AACAA4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 001A8 80AACAA8 1040000D */  beq     $v0, $zero, .L80AACAE0     
/* 001AC 80AACAAC 3C0E80AB */  lui     $t6, %hi(func_80AACA40)    ## $t6 = 80AB0000
/* 001B0 80AACAB0 8FA20020 */  lw      $v0, 0x0020($sp)           
/* 001B4 80AACAB4 25CECA40 */  addiu   $t6, $t6, %lo(func_80AACA40) ## $t6 = 80AACA40
/* 001B8 80AACAB8 240400F0 */  addiu   $a0, $zero, 0x00F0         ## $a0 = 000000F0
/* 001BC 80AACABC AC400118 */  sw      $zero, 0x0118($v0)         ## 00000118
/* 001C0 80AACAC0 0C0222A8 */  jal     func_80088AA0              
/* 001C4 80AACAC4 AC4E0284 */  sw      $t6, 0x0284($v0)           ## 00000284
/* 001C8 80AACAC8 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 001CC 80AACACC 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 001D0 80AACAD0 944F13FC */  lhu     $t7, 0x13FC($v0)           ## 8015FA5C
/* 001D4 80AACAD4 31F8FFFE */  andi    $t8, $t7, 0xFFFE           ## $t8 = 00000000
/* 001D8 80AACAD8 1000000A */  beq     $zero, $zero, .L80AACB04   
/* 001DC 80AACADC A45813FC */  sh      $t8, 0x13FC($v0)           ## 8015FA5C
.L80AACAE0:
/* 001E0 80AACAE0 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 001E4 80AACAE4 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 001E8 80AACAE8 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 001EC 80AACAEC 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 001F0 80AACAF0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 001F4 80AACAF4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 001F8 80AACAF8 24060025 */  addiu   $a2, $zero, 0x0025         ## $a2 = 00000025
/* 001FC 80AACAFC 0C00BD0D */  jal     func_8002F434              
/* 00200 80AACB00 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80AACB04:
/* 00204 80AACB04 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00208 80AACB08 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0020C 80AACB0C 03E00008 */  jr      $ra                        
/* 00210 80AACB10 00000000 */  nop
