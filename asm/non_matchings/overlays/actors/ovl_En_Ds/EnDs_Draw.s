glabel EnDs_Draw
/* 00A8C 809FDABC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A90 809FDAC0 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00A94 809FDAC4 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00A98 809FDAC8 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00A9C 809FDACC 0C0250F2 */  jal     func_800943C8
/* 00AA0 809FDAD0 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 00AA4 809FDAD4 8FA20028 */  lw      $v0, 0x0028($sp)
/* 00AA8 809FDAD8 3C0F80A0 */  lui     $t7, %hi(func_809FDA38)    ## $t7 = 80A00000
/* 00AAC 809FDADC 3C1880A0 */  lui     $t8, %hi(func_809FDA7C)    ## $t8 = 80A00000
/* 00AB0 809FDAE0 8C450150 */  lw      $a1, 0x0150($v0)           ## 00000150
/* 00AB4 809FDAE4 8C46016C */  lw      $a2, 0x016C($v0)           ## 0000016C
/* 00AB8 809FDAE8 9047014E */  lbu     $a3, 0x014E($v0)           ## 0000014E
/* 00ABC 809FDAEC 2718DA7C */  addiu   $t8, $t8, %lo(func_809FDA7C) ## $t8 = 809FDA7C
/* 00AC0 809FDAF0 25EFDA38 */  addiu   $t7, $t7, %lo(func_809FDA38) ## $t7 = 809FDA38
/* 00AC4 809FDAF4 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 00AC8 809FDAF8 AFB80014 */  sw      $t8, 0x0014($sp)
/* 00ACC 809FDAFC 8FA4002C */  lw      $a0, 0x002C($sp)
/* 00AD0 809FDB00 0C0286B2 */  jal     SkelAnime_DrawSV
/* 00AD4 809FDB04 AFA20018 */  sw      $v0, 0x0018($sp)
/* 00AD8 809FDB08 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00ADC 809FDB0C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00AE0 809FDB10 03E00008 */  jr      $ra
/* 00AE4 809FDB14 00000000 */  nop
/* 00AE8 809FDB18 00000000 */  nop
/* 00AEC 809FDB1C 00000000 */  nop

