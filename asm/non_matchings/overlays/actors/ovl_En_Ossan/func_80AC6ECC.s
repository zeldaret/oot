glabel func_80AC6ECC
/* 0422C 80AC6ECC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04230 80AC6ED0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 04234 80AC6ED4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 04238 80AC6ED8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0423C 80AC6EDC 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 04240 80AC6EE0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 04244 80AC6EE4 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 04248 80AC6EE8 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 0424C 80AC6EEC 24E7065C */  addiu   $a3, $a3, 0x065C           ## $a3 = 0600065C
/* 04250 80AC6EF0 24C64868 */  addiu   $a2, $a2, 0x4868           ## $a2 = 06004868
/* 04254 80AC6EF4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 04258 80AC6EF8 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 0425C 80AC6EFC AFA00018 */  sw      $zero, 0x0018($sp)         
/* 04260 80AC6F00 0C0291BE */  jal     func_800A46F8              
/* 04264 80AC6F04 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 04268 80AC6F08 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 0426C 80AC6F0C 3C0E80AD */  lui     $t6, %hi(func_80AC8784)    ## $t6 = 80AD0000
/* 04270 80AC6F10 25CE8784 */  addiu   $t6, $t6, %lo(func_80AC8784) ## $t6 = 80AC8784
/* 04274 80AC6F14 AC4E0134 */  sw      $t6, 0x0134($v0)           ## 00000134
/* 04278 80AC6F18 AC400194 */  sw      $zero, 0x0194($v0)         ## 00000194
/* 0427C 80AC6F1C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 04280 80AC6F20 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 04284 80AC6F24 03E00008 */  jr      $ra                        
/* 04288 80AC6F28 00000000 */  nop


