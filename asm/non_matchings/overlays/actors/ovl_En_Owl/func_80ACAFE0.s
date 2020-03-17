glabel func_80ACAFE0
/* 010C0 80ACAFE0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 010C4 80ACAFE4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 010C8 80ACAFE8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 010CC 80ACAFEC 0C2B28EE */  jal     func_80ACA3B8              
/* 010D0 80ACAFF0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 010D4 80ACAFF4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 010D8 80ACAFF8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 010DC 80ACAFFC 24062071 */  addiu   $a2, $zero, 0x2071         ## $a2 = 00002071
/* 010E0 80ACB000 3C0743B4 */  lui     $a3, 0x43B4                ## $a3 = 43B40000
/* 010E4 80ACB004 0C2B28FD */  jal     func_80ACA3F4              
/* 010E8 80ACB008 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 010EC 80ACB00C 50400008 */  beql    $v0, $zero, .L80ACB030     
/* 010F0 80ACB010 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 010F4 80ACB014 0C03D719 */  jal     func_800F5C64              
/* 010F8 80ACB018 2404005A */  addiu   $a0, $zero, 0x005A         ## $a0 = 0000005A
/* 010FC 80ACB01C 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 01100 80ACB020 3C0E80AD */  lui     $t6, %hi(func_80ACAF74)    ## $t6 = 80AD0000
/* 01104 80ACB024 25CEAF74 */  addiu   $t6, $t6, %lo(func_80ACAF74) ## $t6 = 80ACAF74
/* 01108 80ACB028 ADEE040C */  sw      $t6, 0x040C($t7)           ## 0000040C
/* 0110C 80ACB02C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ACB030:
/* 01110 80ACB030 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01114 80ACB034 03E00008 */  jr      $ra                        
/* 01118 80ACB038 00000000 */  nop


