glabel EnCrow_Draw
/* 013A0 809E15E0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 013A4 809E15E4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 013A8 809E15E8 AFA40028 */  sw      $a0, 0x0028($sp)
/* 013AC 809E15EC AFA5002C */  sw      $a1, 0x002C($sp)
/* 013B0 809E15F0 0C024F46 */  jal     func_80093D18
/* 013B4 809E15F4 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 013B8 809E15F8 8FA20028 */  lw      $v0, 0x0028($sp)
/* 013BC 809E15FC 3C0F809E */  lui     $t7, %hi(func_809E1434)    ## $t7 = 809E0000
/* 013C0 809E1600 3C18809E */  lui     $t8, %hi(func_809E1520)    ## $t8 = 809E0000
/* 013C4 809E1604 8C450180 */  lw      $a1, 0x0180($v0)           ## 00000180
/* 013C8 809E1608 8C46019C */  lw      $a2, 0x019C($v0)           ## 0000019C
/* 013CC 809E160C 9047017E */  lbu     $a3, 0x017E($v0)           ## 0000017E
/* 013D0 809E1610 27181520 */  addiu   $t8, $t8, %lo(func_809E1520) ## $t8 = 809E1520
/* 013D4 809E1614 25EF1434 */  addiu   $t7, $t7, %lo(func_809E1434) ## $t7 = 809E1434
/* 013D8 809E1618 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 013DC 809E161C AFB80014 */  sw      $t8, 0x0014($sp)
/* 013E0 809E1620 8FA4002C */  lw      $a0, 0x002C($sp)
/* 013E4 809E1624 0C0286B2 */  jal     SkelAnime_DrawSV
/* 013E8 809E1628 AFA20018 */  sw      $v0, 0x0018($sp)
/* 013EC 809E162C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 013F0 809E1630 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 013F4 809E1634 03E00008 */  jr      $ra
/* 013F8 809E1638 00000000 */  nop
/* 013FC 809E163C 00000000 */  nop
