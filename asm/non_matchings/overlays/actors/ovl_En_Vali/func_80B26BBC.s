glabel func_80B26BBC
/* 0050C 80B26BBC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00510 80B26BC0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00514 80B26BC4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00518 80B26BC8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0051C 80B26BCC 24A50B34 */  addiu   $a1, $a1, 0x0B34           ## $a1 = 06000B34
/* 00520 80B26BD0 0C02947A */  jal     SkelAnimeChangeAnimationDefaultStop              
/* 00524 80B26BD4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00528 80B26BD8 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 0052C 80B26BDC 3C0E80B2 */  lui     $t6, %hi(func_80B2742C)    ## $t6 = 80B20000
/* 00530 80B26BE0 25CE742C */  addiu   $t6, $t6, %lo(func_80B2742C) ## $t6 = 80B2742C
/* 00534 80B26BE4 ADEE0190 */  sw      $t6, 0x0190($t7)           ## 00000190
/* 00538 80B26BE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0053C 80B26BEC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00540 80B26BF0 03E00008 */  jr      $ra                        
/* 00544 80B26BF4 00000000 */  nop


