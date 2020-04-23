glabel func_80A53C90
/* 00DF0 80A53C90 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00DF4 80A53C94 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00DF8 80A53C98 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00DFC 80A53C9C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00E00 80A53CA0 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00E04 80A53CA4 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00E08 80A53CA8 24845500 */  addiu   $a0, $a0, 0x5500           ## $a0 = 06005500
/* 00E0C 80A53CAC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00E10 80A53CB0 8FA30028 */  lw      $v1, 0x0028($sp)
/* 00E14 80A53CB4 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00E18 80A53CB8 46802020 */  cvt.s.w $f0, $f4
/* 00E1C 80A53CBC 44813000 */  mtc1    $at, $f6                   ## $f6 = -10.00
/* 00E20 80A53CC0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00E24 80A53CC4 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00E28 80A53CC8 24A55500 */  addiu   $a1, $a1, 0x5500           ## $a1 = 06005500
/* 00E2C 80A53CCC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00E30 80A53CD0 E46002EC */  swc1    $f0, 0x02EC($v1)           ## 000002EC
/* 00E34 80A53CD4 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00E38 80A53CD8 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00E3C 80A53CDC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00E40 80A53CE0 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 00E44 80A53CE4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00E48 80A53CE8 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 00E4C 80A53CEC 8FB80028 */  lw      $t8, 0x0028($sp)
/* 00E50 80A53CF0 3C0F80A5 */  lui     $t7, %hi(func_80A53D0C)    ## $t7 = 80A50000
/* 00E54 80A53CF4 25EF3D0C */  addiu   $t7, $t7, %lo(func_80A53D0C) ## $t7 = 80A53D0C
/* 00E58 80A53CF8 AF0F025C */  sw      $t7, 0x025C($t8)           ## 0000025C
/* 00E5C 80A53CFC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00E60 80A53D00 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00E64 80A53D04 03E00008 */  jr      $ra
/* 00E68 80A53D08 00000000 */  nop
