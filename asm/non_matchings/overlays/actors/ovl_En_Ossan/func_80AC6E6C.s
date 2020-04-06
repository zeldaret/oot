glabel func_80AC6E6C
/* 041CC 80AC6E6C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 041D0 80AC6E70 AFA40028 */  sw      $a0, 0x0028($sp)
/* 041D4 80AC6E74 AFA5002C */  sw      $a1, 0x002C($sp)
/* 041D8 80AC6E78 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 041DC 80AC6E7C 8FA50028 */  lw      $a1, 0x0028($sp)
/* 041E0 80AC6E80 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 041E4 80AC6E84 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 041E8 80AC6E88 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 041EC 80AC6E8C 24E702E4 */  addiu   $a3, $a3, 0x02E4           ## $a3 = 060002E4
/* 041F0 80AC6E90 24C64658 */  addiu   $a2, $a2, 0x4658           ## $a2 = 06004658
/* 041F4 80AC6E94 AFA00010 */  sw      $zero, 0x0010($sp)
/* 041F8 80AC6E98 AFA00014 */  sw      $zero, 0x0014($sp)
/* 041FC 80AC6E9C AFA00018 */  sw      $zero, 0x0018($sp)
/* 04200 80AC6EA0 0C0291BE */  jal     SkelAnime_InitSV
/* 04204 80AC6EA4 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 04208 80AC6EA8 8FA20028 */  lw      $v0, 0x0028($sp)
/* 0420C 80AC6EAC 3C0E80AD */  lui     $t6, %hi(func_80AC8668)    ## $t6 = 80AD0000
/* 04210 80AC6EB0 25CE8668 */  addiu   $t6, $t6, %lo(func_80AC8668) ## $t6 = 80AC8668
/* 04214 80AC6EB4 AC4E0134 */  sw      $t6, 0x0134($v0)           ## 00000134
/* 04218 80AC6EB8 AC400194 */  sw      $zero, 0x0194($v0)         ## 00000194
/* 0421C 80AC6EBC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 04220 80AC6EC0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 04224 80AC6EC4 03E00008 */  jr      $ra
/* 04228 80AC6EC8 00000000 */  nop


