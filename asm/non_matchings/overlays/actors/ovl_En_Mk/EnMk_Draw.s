glabel EnMk_Draw
/* 00C9C 80AAD59C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00CA0 80AAD5A0 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00CA4 80AAD5A4 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00CA8 80AAD5A8 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00CAC 80AAD5AC 0C0250F2 */  jal     func_800943C8
/* 00CB0 80AAD5B0 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 00CB4 80AAD5B4 8FA20028 */  lw      $v0, 0x0028($sp)
/* 00CB8 80AAD5B8 3C0F80AB */  lui     $t7, %hi(func_80AAD518)    ## $t7 = 80AB0000
/* 00CBC 80AAD5BC 3C1880AB */  lui     $t8, %hi(func_80AAD55C)    ## $t8 = 80AB0000
/* 00CC0 80AAD5C0 8C45019C */  lw      $a1, 0x019C($v0)           ## 0000019C
/* 00CC4 80AAD5C4 8C4601B8 */  lw      $a2, 0x01B8($v0)           ## 000001B8
/* 00CC8 80AAD5C8 9047019A */  lbu     $a3, 0x019A($v0)           ## 0000019A
/* 00CCC 80AAD5CC 2718D55C */  addiu   $t8, $t8, %lo(func_80AAD55C) ## $t8 = 80AAD55C
/* 00CD0 80AAD5D0 25EFD518 */  addiu   $t7, $t7, %lo(func_80AAD518) ## $t7 = 80AAD518
/* 00CD4 80AAD5D4 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 00CD8 80AAD5D8 AFB80014 */  sw      $t8, 0x0014($sp)
/* 00CDC 80AAD5DC 8FA4002C */  lw      $a0, 0x002C($sp)
/* 00CE0 80AAD5E0 0C0286B2 */  jal     SkelAnime_DrawSV
/* 00CE4 80AAD5E4 AFA20018 */  sw      $v0, 0x0018($sp)
/* 00CE8 80AAD5E8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00CEC 80AAD5EC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00CF0 80AAD5F0 03E00008 */  jr      $ra
/* 00CF4 80AAD5F4 00000000 */  nop
/* 00CF8 80AAD5F8 00000000 */  nop
/* 00CFC 80AAD5FC 00000000 */  nop

