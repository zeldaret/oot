glabel EnFish_Draw
/* 01D2C 80A16FAC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01D30 80A16FB0 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01D34 80A16FB4 AFA40028 */  sw      $a0, 0x0028($sp)
/* 01D38 80A16FB8 AFA5002C */  sw      $a1, 0x002C($sp)
/* 01D3C 80A16FBC 0C024F46 */  jal     func_80093D18
/* 01D40 80A16FC0 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 01D44 80A16FC4 8FA20028 */  lw      $v0, 0x0028($sp)
/* 01D48 80A16FC8 8FA4002C */  lw      $a0, 0x002C($sp)
/* 01D4C 80A16FCC 8C4501B0 */  lw      $a1, 0x01B0($v0)           ## 000001B0
/* 01D50 80A16FD0 8C4601CC */  lw      $a2, 0x01CC($v0)           ## 000001CC
/* 01D54 80A16FD4 904701AE */  lbu     $a3, 0x01AE($v0)           ## 000001AE
/* 01D58 80A16FD8 AFA00018 */  sw      $zero, 0x0018($sp)
/* 01D5C 80A16FDC AFA00014 */  sw      $zero, 0x0014($sp)
/* 01D60 80A16FE0 0C0286B2 */  jal     SkelAnime_DrawFlexOpa
/* 01D64 80A16FE4 AFA00010 */  sw      $zero, 0x0010($sp)
/* 01D68 80A16FE8 8FA20028 */  lw      $v0, 0x0028($sp)
/* 01D6C 80A16FEC 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 01D70 80A16FF0 0C018A29 */  jal     Collider_UpdateSpheres
/* 01D74 80A16FF4 2445014C */  addiu   $a1, $v0, 0x014C           ## $a1 = 0000014C
/* 01D78 80A16FF8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01D7C 80A16FFC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01D80 80A17000 03E00008 */  jr      $ra
/* 01D84 80A17004 00000000 */  nop
/* 01D88 80A17008 00000000 */  nop
/* 01D8C 80A1700C 00000000 */  nop
