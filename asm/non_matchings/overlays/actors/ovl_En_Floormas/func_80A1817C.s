glabel func_80A1817C
/* 00C6C 80A1817C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C70 80A18180 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00C74 80A18184 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00C78 80A18188 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00C7C 80A1818C 24A59DB0 */  addiu   $a1, $a1, 0x9DB0           ## $a1 = 06009DB0
/* 00C80 80A18190 AFA60018 */  sw      $a2, 0x0018($sp)
/* 00C84 80A18194 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 00C88 80A18198 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00C8C 80A1819C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00C90 80A181A0 848E019A */  lh      $t6, 0x019A($a0)           ## 0000019A
/* 00C94 80A181A4 A4800194 */  sh      $zero, 0x0194($a0)         ## 00000194
/* 00C98 80A181A8 25CF05DC */  addiu   $t7, $t6, 0x05DC           ## $t7 = 000005DC
/* 00C9C 80A181AC 0C285DD2 */  jal     func_80A17748
/* 00CA0 80A181B0 A48F019A */  sh      $t7, 0x019A($a0)           ## 0000019A
/* 00CA4 80A181B4 8FA60018 */  lw      $a2, 0x0018($sp)
/* 00CA8 80A181B8 3C1880A2 */  lui     $t8, %hi(func_80A198EC)    ## $t8 = 80A20000
/* 00CAC 80A181BC 271898EC */  addiu   $t8, $t8, %lo(func_80A198EC) ## $t8 = 80A198EC
/* 00CB0 80A181C0 ACD80190 */  sw      $t8, 0x0190($a2)           ## 00000190
/* 00CB4 80A181C4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00CB8 80A181C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CBC 80A181CC 03E00008 */  jr      $ra
/* 00CC0 80A181D0 00000000 */  nop
