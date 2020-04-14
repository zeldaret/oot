glabel func_80ACACD8
/* 00DB8 80ACACD8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00DBC 80ACACDC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00DC0 80ACACE0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00DC4 80ACACE4 0C2B28EE */  jal     func_80ACA3B8              
/* 00DC8 80ACACE8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00DCC 80ACACEC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00DD0 80ACACF0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00DD4 80ACACF4 2406206C */  addiu   $a2, $zero, 0x206C         ## $a2 = 0000206C
/* 00DD8 80ACACF8 3C0743F0 */  lui     $a3, 0x43F0                ## $a3 = 43F00000
/* 00DDC 80ACACFC 0C2B28FD */  jal     func_80ACA3F4              
/* 00DE0 80ACAD00 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00DE4 80ACAD04 50400008 */  beql    $v0, $zero, .L80ACAD28     
/* 00DE8 80ACAD08 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00DEC 80ACAD0C 0C03D719 */  jal     func_800F5C64              
/* 00DF0 80ACAD10 2404005A */  addiu   $a0, $zero, 0x005A         ## $a0 = 0000005A
/* 00DF4 80ACAD14 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 00DF8 80ACAD18 3C0E80AD */  lui     $t6, %hi(func_80ACAC6C)    ## $t6 = 80AD0000
/* 00DFC 80ACAD1C 25CEAC6C */  addiu   $t6, $t6, %lo(func_80ACAC6C) ## $t6 = 80ACAC6C
/* 00E00 80ACAD20 ADEE040C */  sw      $t6, 0x040C($t7)           ## 0000040C
/* 00E04 80ACAD24 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ACAD28:
/* 00E08 80ACAD28 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00E0C 80ACAD2C 03E00008 */  jr      $ra                        
/* 00E10 80ACAD30 00000000 */  nop
