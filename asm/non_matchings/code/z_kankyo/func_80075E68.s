glabel func_80075E68
/* AED008 80075E68 3C0E8016 */  lui   $t6, %hi(D_8015FCF0) # $t6, 0x8016
/* AED00C 80075E6C 91CEFCF0 */  lbu   $t6, %lo(D_8015FCF0)($t6)
/* AED010 80075E70 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AED014 80075E74 AFBF0034 */  sw    $ra, 0x34($sp)
/* AED018 80075E78 11C00022 */  beqz  $t6, .L80075F04
/* AED01C 80075E7C 3C028016 */   lui   $v0, %hi(D_8015FCF8) # $v0, 0x8016
/* AED020 80075E80 2442FCF8 */  addiu $v0, %lo(D_8015FCF8) # addiu $v0, $v0, -0x308
/* AED024 80075E84 C4440000 */  lwc1  $f4, ($v0)
/* AED028 80075E88 C4460004 */  lwc1  $f6, 4($v0)
/* AED02C 80075E8C C4480008 */  lwc1  $f8, 8($v0)
/* AED030 80075E90 27AF003C */  addiu $t7, $sp, 0x3c
/* AED034 80075E94 E7A4003C */  swc1  $f4, 0x3c($sp)
/* AED038 80075E98 E7A60040 */  swc1  $f6, 0x40($sp)
/* AED03C 80075E9C E7A80044 */  swc1  $f8, 0x44($sp)
/* AED040 80075EA0 8DF90000 */  lw    $t9, ($t7)
/* AED044 80075EA4 8C870000 */  lw    $a3, ($a0)
/* AED048 80075EA8 3C010001 */  lui   $at, (0x00010A24 >> 16) # lui $at, 1
/* AED04C 80075EAC AFB90010 */  sw    $t9, 0x10($sp)
/* AED050 80075EB0 8DF80004 */  lw    $t8, 4($t7)
/* AED054 80075EB4 34210A24 */  ori   $at, (0x00010A24 & 0xFFFF) # ori $at, $at, 0xa24
/* AED058 80075EB8 00812821 */  addu  $a1, $a0, $at
/* AED05C 80075EBC AFB80014 */  sw    $t8, 0x14($sp)
/* AED060 80075EC0 8DF90008 */  lw    $t9, 8($t7)
/* AED064 80075EC4 3C018016 */  lui   $at, %hi(D_8015FD08)
/* AED068 80075EC8 3C088016 */  lui   $t0, %hi(D_8015FD04) # $t0, 0x8016
/* AED06C 80075ECC 3C098016 */  lui   $t1, %hi(D_8015FD06) # $t1, 0x8016
/* AED070 80075ED0 3C0A8016 */  lui   $t2, %hi(D_8015FD0C) # $t2, 0x8016
/* AED074 80075ED4 854AFD0C */  lh    $t2, %lo(D_8015FD0C)($t2)
/* AED078 80075ED8 8529FD06 */  lh    $t1, %lo(D_8015FD06)($t1)
/* AED07C 80075EDC 8508FD04 */  lh    $t0, %lo(D_8015FD04)($t0)
/* AED080 80075EE0 C42AFD08 */  lwc1  $f10, %lo(D_8015FD08)($at)
/* AED084 80075EE4 AFA0002C */  sw    $zero, 0x2c($sp)
/* AED088 80075EE8 248600B8 */  addiu $a2, $a0, 0xb8
/* AED08C 80075EEC AFB90018 */  sw    $t9, 0x18($sp)
/* AED090 80075EF0 AFAA0028 */  sw    $t2, 0x28($sp)
/* AED094 80075EF4 AFA90020 */  sw    $t1, 0x20($sp)
/* AED098 80075EF8 AFA8001C */  sw    $t0, 0x1c($sp)
/* AED09C 80075EFC 0C01CE97 */  jal   func_80073A5C
/* AED0A0 80075F00 E7AA0024 */   swc1  $f10, 0x24($sp)
.L80075F04:
/* AED0A4 80075F04 8FBF0034 */  lw    $ra, 0x34($sp)
/* AED0A8 80075F08 27BD0048 */  addiu $sp, $sp, 0x48
/* AED0AC 80075F0C 03E00008 */  jr    $ra
/* AED0B0 80075F10 00000000 */   nop   

