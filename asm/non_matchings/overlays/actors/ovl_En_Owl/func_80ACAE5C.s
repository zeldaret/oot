glabel func_80ACAE5C
/* 00F3C 80ACAE5C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00F40 80ACAE60 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00F44 80ACAE64 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00F48 80ACAE68 0C2B28EE */  jal     func_80ACA3B8              
/* 00F4C 80ACAE6C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00F50 80ACAE70 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00F54 80ACAE74 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00F58 80ACAE78 2406206F */  addiu   $a2, $zero, 0x206F         ## $a2 = 0000206F
/* 00F5C 80ACAE7C 3C0743B4 */  lui     $a3, 0x43B4                ## $a3 = 43B40000
/* 00F60 80ACAE80 0C2B28FD */  jal     func_80ACA3F4              
/* 00F64 80ACAE84 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00F68 80ACAE88 50400008 */  beql    $v0, $zero, .L80ACAEAC     
/* 00F6C 80ACAE8C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00F70 80ACAE90 0C03D719 */  jal     func_800F5C64              
/* 00F74 80ACAE94 2404005A */  addiu   $a0, $zero, 0x005A         ## $a0 = 0000005A
/* 00F78 80ACAE98 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 00F7C 80ACAE9C 3C0E80AD */  lui     $t6, %hi(func_80ACADF0)    ## $t6 = 80AD0000
/* 00F80 80ACAEA0 25CEADF0 */  addiu   $t6, $t6, %lo(func_80ACADF0) ## $t6 = 80ACADF0
/* 00F84 80ACAEA4 ADEE040C */  sw      $t6, 0x040C($t7)           ## 0000040C
/* 00F88 80ACAEA8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ACAEAC:
/* 00F8C 80ACAEAC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00F90 80ACAEB0 03E00008 */  jr      $ra                        
/* 00F94 80ACAEB4 00000000 */  nop
