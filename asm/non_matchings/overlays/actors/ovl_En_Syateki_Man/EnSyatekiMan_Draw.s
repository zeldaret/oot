glabel EnSyatekiMan_Draw
/* 00CA8 80B11518 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00CAC 80B1151C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00CB0 80B11520 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00CB4 80B11524 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00CB8 80B11528 0C024F46 */  jal     func_80093D18
/* 00CBC 80B1152C 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 00CC0 80B11530 8FA20028 */  lw      $v0, 0x0028($sp)
/* 00CC4 80B11534 3C0F80B1 */  lui     $t7, %hi(func_80B1148C)    ## $t7 = 80B10000
/* 00CC8 80B11538 25EF148C */  addiu   $t7, $t7, %lo(func_80B1148C) ## $t7 = 80B1148C
/* 00CCC 80B1153C 8C450150 */  lw      $a1, 0x0150($v0)           ## 00000150
/* 00CD0 80B11540 8C46016C */  lw      $a2, 0x016C($v0)           ## 0000016C
/* 00CD4 80B11544 9047014E */  lbu     $a3, 0x014E($v0)           ## 0000014E
/* 00CD8 80B11548 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00CDC 80B1154C AFAF0010 */  sw      $t7, 0x0010($sp)
/* 00CE0 80B11550 8FA4002C */  lw      $a0, 0x002C($sp)
/* 00CE4 80B11554 0C0286B2 */  jal     SkelAnime_DrawSV
/* 00CE8 80B11558 AFA20018 */  sw      $v0, 0x0018($sp)
/* 00CEC 80B1155C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00CF0 80B11560 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00CF4 80B11564 03E00008 */  jr      $ra
/* 00CF8 80B11568 00000000 */  nop
