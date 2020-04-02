glabel func_809CAE44
/* 00334 809CAE44 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00338 809CAE48 AFA5001C */  sw      $a1, 0x001C($sp)
/* 0033C 809CAE4C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00340 809CAE50 AFA40018 */  sw      $a0, 0x0018($sp)
/* 00344 809CAE54 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00348 809CAE58 24A51750 */  addiu   $a1, $a1, 0x1750           ## $a1 = 06001750
/* 0034C 809CAE5C 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 00350 809CAE60 24840164 */  addiu   $a0, $a0, 0x0164           ## $a0 = 00000164
/* 00354 809CAE64 8FA4001C */  lw      $a0, 0x001C($sp)
/* 00358 809CAE68 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 0035C 809CAE6C 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00360 809CAE70 0C00FAFE */  jal     func_8003EBF8
/* 00364 809CAE74 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00368 809CAE78 8FA20018 */  lw      $v0, 0x0018($sp)
/* 0036C 809CAE7C 3C18809D */  lui     $t8, %hi(func_809CB114)    ## $t8 = 809D0000
/* 00370 809CAE80 240F03E8 */  addiu   $t7, $zero, 0x03E8         ## $t7 = 000003E8
/* 00374 809CAE84 2718B114 */  addiu   $t8, $t8, %lo(func_809CB114) ## $t8 = 809CB114
/* 00378 809CAE88 A44F01AE */  sh      $t7, 0x01AE($v0)           ## 000001AE
/* 0037C 809CAE8C AC5801A8 */  sw      $t8, 0x01A8($v0)           ## 000001A8
/* 00380 809CAE90 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00384 809CAE94 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00388 809CAE98 03E00008 */  jr      $ra
/* 0038C 809CAE9C 00000000 */  nop


