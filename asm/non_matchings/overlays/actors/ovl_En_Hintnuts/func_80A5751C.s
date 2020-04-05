glabel func_80A5751C
/* 0031C 80A5751C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00320 80A57520 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00324 80A57524 AFA40018 */  sw      $a0, 0x0018($sp)
/* 00328 80A57528 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0032C 80A5752C 24A50168 */  addiu   $a1, $a1, 0x0168           ## $a1 = 06000168
/* 00330 80A57530 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 00334 80A57534 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00338 80A57538 8FAF0018 */  lw      $t7, 0x0018($sp)
/* 0033C 80A5753C 3C0E80A5 */  lui     $t6, %hi(func_80A57CA8)    ## $t6 = 80A50000
/* 00340 80A57540 25CE7CA8 */  addiu   $t6, $t6, %lo(func_80A57CA8) ## $t6 = 80A57CA8
/* 00344 80A57544 ADEE0190 */  sw      $t6, 0x0190($t7)           ## 00000190
/* 00348 80A57548 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0034C 80A5754C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00350 80A57550 03E00008 */  jr      $ra
/* 00354 80A57554 00000000 */  nop


