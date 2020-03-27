glabel EnKakasi3_Draw
/* 00F98 80A91CB8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00F9C 80A91CBC AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00FA0 80A91CC0 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00FA4 80A91CC4 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00FA8 80A91CC8 0C024F46 */  jal     func_80093D18
/* 00FAC 80A91CCC 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 00FB0 80A91CD0 8FA20028 */  lw      $v0, 0x0028($sp)
/* 00FB4 80A91CD4 8FA4002C */  lw      $a0, 0x002C($sp)
/* 00FB8 80A91CD8 8C450154 */  lw      $a1, 0x0154($v0)           ## 00000154
/* 00FBC 80A91CDC 8C460170 */  lw      $a2, 0x0170($v0)           ## 00000170
/* 00FC0 80A91CE0 90470152 */  lbu     $a3, 0x0152($v0)           ## 00000152
/* 00FC4 80A91CE4 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00FC8 80A91CE8 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00FCC 80A91CEC 0C0286B2 */  jal     SkelAnime_DrawSV
/* 00FD0 80A91CF0 AFA20018 */  sw      $v0, 0x0018($sp)
/* 00FD4 80A91CF4 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00FD8 80A91CF8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00FDC 80A91CFC 03E00008 */  jr      $ra
/* 00FE0 80A91D00 00000000 */  nop
/* 00FE4 80A91D04 00000000 */  nop
/* 00FE8 80A91D08 00000000 */  nop
/* 00FEC 80A91D0C 00000000 */  nop

