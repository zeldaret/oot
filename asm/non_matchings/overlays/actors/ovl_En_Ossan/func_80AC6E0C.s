glabel func_80AC6E0C
/* 0416C 80AC6E0C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04170 80AC6E10 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 04174 80AC6E14 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 04178 80AC6E18 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0417C 80AC6E1C 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 04180 80AC6E20 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 04184 80AC6E24 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 04188 80AC6E28 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 0418C 80AC6E2C 24E702E4 */  addiu   $a3, $a3, 0x02E4           ## $a3 = 060002E4
/* 04190 80AC6E30 24C64258 */  addiu   $a2, $a2, 0x4258           ## $a2 = 06004258
/* 04194 80AC6E34 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 04198 80AC6E38 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 0419C 80AC6E3C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 041A0 80AC6E40 0C0291BE */  jal     func_800A46F8              
/* 041A4 80AC6E44 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 041A8 80AC6E48 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 041AC 80AC6E4C 3C0E80AD */  lui     $t6, %hi(func_80AC854C)    ## $t6 = 80AD0000
/* 041B0 80AC6E50 25CE854C */  addiu   $t6, $t6, %lo(func_80AC854C) ## $t6 = 80AC854C
/* 041B4 80AC6E54 AC4E0134 */  sw      $t6, 0x0134($v0)           ## 00000134
/* 041B8 80AC6E58 AC400194 */  sw      $zero, 0x0194($v0)         ## 00000194
/* 041BC 80AC6E5C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 041C0 80AC6E60 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 041C4 80AC6E64 03E00008 */  jr      $ra                        
/* 041C8 80AC6E68 00000000 */  nop


