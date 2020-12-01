glabel EnHs_Draw
/* 009B4 80A6ED54 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 009B8 80A6ED58 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 009BC 80A6ED5C AFA40028 */  sw      $a0, 0x0028($sp)
/* 009C0 80A6ED60 AFA5002C */  sw      $a1, 0x002C($sp)
/* 009C4 80A6ED64 0C0250F2 */  jal     func_800943C8
/* 009C8 80A6ED68 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 009CC 80A6ED6C 8FA20028 */  lw      $v0, 0x0028($sp)
/* 009D0 80A6ED70 3C0F80A7 */  lui     $t7, %hi(func_80A6EC58)    ## $t7 = 80A70000
/* 009D4 80A6ED74 3C1880A7 */  lui     $t8, %hi(func_80A6ED14)    ## $t8 = 80A70000
/* 009D8 80A6ED78 8C45019C */  lw      $a1, 0x019C($v0)           ## 0000019C
/* 009DC 80A6ED7C 8C4601B8 */  lw      $a2, 0x01B8($v0)           ## 000001B8
/* 009E0 80A6ED80 9047019A */  lbu     $a3, 0x019A($v0)           ## 0000019A
/* 009E4 80A6ED84 2718ED14 */  addiu   $t8, $t8, %lo(func_80A6ED14) ## $t8 = 80A6ED14
/* 009E8 80A6ED88 25EFEC58 */  addiu   $t7, $t7, %lo(func_80A6EC58) ## $t7 = 80A6EC58
/* 009EC 80A6ED8C AFAF0010 */  sw      $t7, 0x0010($sp)
/* 009F0 80A6ED90 AFB80014 */  sw      $t8, 0x0014($sp)
/* 009F4 80A6ED94 8FA4002C */  lw      $a0, 0x002C($sp)
/* 009F8 80A6ED98 0C0286B2 */  jal     SkelAnime_DrawFlexOpa
/* 009FC 80A6ED9C AFA20018 */  sw      $v0, 0x0018($sp)
/* 00A00 80A6EDA0 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00A04 80A6EDA4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00A08 80A6EDA8 03E00008 */  jr      $ra
/* 00A0C 80A6EDAC 00000000 */  nop
