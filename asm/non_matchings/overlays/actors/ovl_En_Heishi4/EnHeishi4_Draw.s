glabel EnHeishi4_Draw
/* 00DA8 80A56E78 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00DAC 80A56E7C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00DB0 80A56E80 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00DB4 80A56E84 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00DB8 80A56E88 0C024F46 */  jal     func_80093D18              
/* 00DBC 80A56E8C 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 00DC0 80A56E90 8FA20020 */  lw      $v0, 0x0020($sp)           
/* 00DC4 80A56E94 3C0780A5 */  lui     $a3, %hi(func_80A56E14)    ## $a3 = 80A50000
/* 00DC8 80A56E98 24E76E14 */  addiu   $a3, $a3, %lo(func_80A56E14) ## $a3 = 80A56E14
/* 00DCC 80A56E9C 8C450150 */  lw      $a1, 0x0150($v0)           ## 00000150
/* 00DD0 80A56EA0 8C46016C */  lw      $a2, 0x016C($v0)           ## 0000016C
/* 00DD4 80A56EA4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00DD8 80A56EA8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00DDC 80A56EAC 0C028572 */  jal     SkelAnime_Draw
              
/* 00DE0 80A56EB0 AFA20014 */  sw      $v0, 0x0014($sp)           
/* 00DE4 80A56EB4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00DE8 80A56EB8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00DEC 80A56EBC 03E00008 */  jr      $ra                        
/* 00DF0 80A56EC0 00000000 */  nop
/* 00DF4 80A56EC4 00000000 */  nop
/* 00DF8 80A56EC8 00000000 */  nop
/* 00DFC 80A56ECC 00000000 */  nop
