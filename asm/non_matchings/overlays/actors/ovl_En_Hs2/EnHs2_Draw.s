glabel EnHs2_Draw
/* 00480 80A6F420 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00484 80A6F424 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00488 80A6F428 AFA40028 */  sw      $a0, 0x0028($sp)
/* 0048C 80A6F42C AFA5002C */  sw      $a1, 0x002C($sp)
/* 00490 80A6F430 0C0250F2 */  jal     func_800943C8
/* 00494 80A6F434 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 00498 80A6F438 8FA20028 */  lw      $v0, 0x0028($sp)
/* 0049C 80A6F43C 3C0F80A7 */  lui     $t7, %hi(func_80A6F358)    ## $t7 = 80A70000
/* 004A0 80A6F440 3C1880A7 */  lui     $t8, %hi(func_80A6F3E0)    ## $t8 = 80A70000
/* 004A4 80A6F444 8C45019C */  lw      $a1, 0x019C($v0)           ## 0000019C
/* 004A8 80A6F448 8C4601B8 */  lw      $a2, 0x01B8($v0)           ## 000001B8
/* 004AC 80A6F44C 9047019A */  lbu     $a3, 0x019A($v0)           ## 0000019A
/* 004B0 80A6F450 2718F3E0 */  addiu   $t8, $t8, %lo(func_80A6F3E0) ## $t8 = 80A6F3E0
/* 004B4 80A6F454 25EFF358 */  addiu   $t7, $t7, %lo(func_80A6F358) ## $t7 = 80A6F358
/* 004B8 80A6F458 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 004BC 80A6F45C AFB80014 */  sw      $t8, 0x0014($sp)
/* 004C0 80A6F460 8FA4002C */  lw      $a0, 0x002C($sp)
/* 004C4 80A6F464 0C0286B2 */  jal     SkelAnime_DrawSV
/* 004C8 80A6F468 AFA20018 */  sw      $v0, 0x0018($sp)
/* 004CC 80A6F46C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 004D0 80A6F470 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 004D4 80A6F474 03E00008 */  jr      $ra
/* 004D8 80A6F478 00000000 */  nop
/* 004DC 80A6F47C 00000000 */  nop
