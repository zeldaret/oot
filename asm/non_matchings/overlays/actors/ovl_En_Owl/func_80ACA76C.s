glabel func_80ACA76C
/* 0084C 80ACA76C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00850 80ACA770 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00854 80ACA774 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00858 80ACA778 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0085C 80ACA77C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00860 80ACA780 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00864 80ACA784 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00868 80ACA788 0C00B7D5 */  jal     func_8002DF54              
/* 0086C 80ACA78C 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00870 80ACA790 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00874 80ACA794 0C00BCCD */  jal     func_8002F334              
/* 00878 80ACA798 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0087C 80ACA79C 1040000B */  beq     $v0, $zero, .L80ACA7CC     
/* 00880 80ACA7A0 3C041100 */  lui     $a0, 0x1100                ## $a0 = 11000000
/* 00884 80ACA7A4 0C03E803 */  jal     Audio_SetBGM
              
/* 00888 80ACA7A8 348400FF */  ori     $a0, $a0, 0x00FF           ## $a0 = 110000FF
/* 0088C 80ACA7AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00890 80ACA7B0 0C2B298B */  jal     func_80ACA62C              
/* 00894 80ACA7B4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00898 80ACA7B8 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 0089C 80ACA7BC 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 008A0 80ACA7C0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 008A4 80ACA7C4 01C17824 */  and     $t7, $t6, $at              
/* 008A8 80ACA7C8 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
.L80ACA7CC:
/* 008AC 80ACA7CC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 008B0 80ACA7D0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 008B4 80ACA7D4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 008B8 80ACA7D8 03E00008 */  jr      $ra                        
/* 008BC 80ACA7DC 00000000 */  nop


