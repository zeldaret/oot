glabel EnShopnuts_Draw
/* 00D4C 80AFB46C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00D50 80AFB470 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00D54 80AFB474 8FAE0028 */  lw      $t6, 0x0028($sp)
/* 00D58 80AFB478 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00D5C 80AFB47C AFA5002C */  sw      $a1, 0x002C($sp)
/* 00D60 80AFB480 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00D64 80AFB484 3C0F80B0 */  lui     $t7, %hi(func_80AFB25C)    ## $t7 = 80B00000
/* 00D68 80AFB488 3C1880B0 */  lui     $t8, %hi(func_80AFB290)    ## $t8 = 80B00000
/* 00D6C 80AFB48C 8DC50150 */  lw      $a1, 0x0150($t6)           ## 00000150
/* 00D70 80AFB490 91C7014E */  lbu     $a3, 0x014E($t6)           ## 0000014E
/* 00D74 80AFB494 8DC6016C */  lw      $a2, 0x016C($t6)           ## 0000016C
/* 00D78 80AFB498 2718B290 */  addiu   $t8, $t8, %lo(func_80AFB290) ## $t8 = 80AFB290
/* 00D7C 80AFB49C 25EFB25C */  addiu   $t7, $t7, %lo(func_80AFB25C) ## $t7 = 80AFB25C
/* 00D80 80AFB4A0 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 00D84 80AFB4A4 AFB80014 */  sw      $t8, 0x0014($sp)
/* 00D88 80AFB4A8 0C0286B2 */  jal     SkelAnime_DrawSV
/* 00D8C 80AFB4AC AFAE0018 */  sw      $t6, 0x0018($sp)
/* 00D90 80AFB4B0 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00D94 80AFB4B4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00D98 80AFB4B8 03E00008 */  jr      $ra
/* 00D9C 80AFB4BC 00000000 */  nop
