glabel func_80949BFC
/* 10F2C 80949BFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 10F30 80949C00 AFA5001C */  sw      $a1, 0x001C($sp)
/* 10F34 80949C04 3C0E8095 */  lui     $t6, %hi(func_80949C4C)    ## $t6 = 80950000
/* 10F38 80949C08 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 10F3C 80949C0C 25CE9C4C */  addiu   $t6, $t6, %lo(func_80949C4C) ## $t6 = 80949C4C
/* 10F40 80949C10 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 10F44 80949C14 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 10F48 80949C18 3C050603 */  lui     $a1, 0x0603                ## $a1 = 06030000
/* 10F4C 80949C1C 24A52BF8 */  addiu   $a1, $a1, 0x2BF8           ## $a1 = 06032BF8
/* 10F50 80949C20 AFA70018 */  sw      $a3, 0x0018($sp)
/* 10F54 80949C24 24840568 */  addiu   $a0, $a0, 0x0568           ## $a0 = 00000568
/* 10F58 80949C28 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 10F5C 80949C2C 3C06C120 */  lui     $a2, 0xC120                ## $a2 = C1200000
/* 10F60 80949C30 8FA70018 */  lw      $a3, 0x0018($sp)
/* 10F64 80949C34 240F003C */  addiu   $t7, $zero, 0x003C         ## $t7 = 0000003C
/* 10F68 80949C38 A4EF017A */  sh      $t7, 0x017A($a3)           ## 0000017A
/* 10F6C 80949C3C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 10F70 80949C40 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 10F74 80949C44 03E00008 */  jr      $ra
/* 10F78 80949C48 00000000 */  nop


