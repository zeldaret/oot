glabel func_8096D594
/* 000E4 8096D594 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000E8 8096D598 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 000EC 8096D59C AFA40018 */  sw      $a0, 0x0018($sp)
/* 000F0 8096D5A0 AFA5001C */  sw      $a1, 0x001C($sp)
/* 000F4 8096D5A4 908E0181 */  lbu     $t6, 0x0181($a0)           ## 00000181
/* 000F8 8096D5A8 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 000FC 8096D5AC 24A6014C */  addiu   $a2, $a1, 0x014C           ## $a2 = 0000014C
/* 00100 8096D5B0 35CF0003 */  ori     $t7, $t6, 0x0003           ## $t7 = 00000003
/* 00104 8096D5B4 A08F0181 */  sb      $t7, 0x0181($a0)           ## 00000181
/* 00108 8096D5B8 8FA4001C */  lw      $a0, 0x001C($sp)
/* 0010C 8096D5BC 0C028D88 */  jal     SkelAnime_LoadAnimationType5
/* 00110 8096D5C0 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00114 8096D5C4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00118 8096D5C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0011C 8096D5CC 03E00008 */  jr      $ra
/* 00120 8096D5D0 00000000 */  nop


