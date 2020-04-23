.late_rodata
glabel D_809379C8
 .word 0x3C4CCCCD

.text
glabel func_8092F30C
/* 02D3C 8092F30C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02D40 8092F310 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 02D44 8092F314 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 02D48 8092F318 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02D4C 8092F31C 24A5E7B8 */  addiu   $a1, $a1, 0xE7B8           ## $a1 = 0600E7B8
/* 02D50 8092F320 AFA70018 */  sw      $a3, 0x0018($sp)
/* 02D54 8092F324 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02D58 8092F328 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 02D5C 8092F32C 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 02D60 8092F330 8FA70018 */  lw      $a3, 0x0018($sp)
/* 02D64 8092F334 240E00A0 */  addiu   $t6, $zero, 0x00A0         ## $t6 = 000000A0
/* 02D68 8092F338 3C018093 */  lui     $at, %hi(D_809379C8)       ## $at = 80930000
/* 02D6C 8092F33C 84EF00B6 */  lh      $t7, 0x00B6($a3)           ## 000000B6
/* 02D70 8092F340 A4EE0198 */  sh      $t6, 0x0198($a3)           ## 00000198
/* 02D74 8092F344 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02D78 8092F348 A4EF01A4 */  sh      $t7, 0x01A4($a3)           ## 000001A4
/* 02D7C 8092F34C 0C24BB1D */  jal     func_8092EC74
/* 02D80 8092F350 C42C79C8 */  lwc1    $f12, %lo(D_809379C8)($at)
/* 02D84 8092F354 8FA70018 */  lw      $a3, 0x0018($sp)
/* 02D88 8092F358 3C188093 */  lui     $t8, %hi(func_8092F374)    ## $t8 = 80930000
/* 02D8C 8092F35C 2718F374 */  addiu   $t8, $t8, %lo(func_8092F374) ## $t8 = 8092F374
/* 02D90 8092F360 ACF80190 */  sw      $t8, 0x0190($a3)           ## 00000190
/* 02D94 8092F364 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 02D98 8092F368 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02D9C 8092F36C 03E00008 */  jr      $ra
/* 02DA0 8092F370 00000000 */  nop
