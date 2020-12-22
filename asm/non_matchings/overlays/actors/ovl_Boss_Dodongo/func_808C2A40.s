glabel func_808C2A40
/* 018B0 808C2A40 3C01426C */  lui     $at, 0x426C                ## $at = 426C0000
/* 018B4 808C2A44 44812000 */  mtc1    $at, $f4                   ## $f4 = 59.00
/* 018B8 808C2A48 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 018BC 808C2A4C 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 018C0 808C2A50 44813000 */  mtc1    $at, $f6                   ## $f6 = -5.00
/* 018C4 808C2A54 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 018C8 808C2A58 AFA40028 */  sw      $a0, 0x0028($sp)
/* 018CC 808C2A5C 3C050601 */  lui     $a1, %hi(D_0600DF38)                ## $a1 = 06010000
/* 018D0 808C2A60 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 018D4 808C2A64 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 018D8 808C2A68 24A5DF38 */  addiu   $a1, $a1, %lo(D_0600DF38)           ## $a1 = 0600DF38
/* 018DC 808C2A6C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 018E0 808C2A70 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 018E4 808C2A74 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 018E8 808C2A78 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 018EC 808C2A7C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 018F0 808C2A80 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 018F4 808C2A84 8FA20028 */  lw      $v0, 0x0028($sp)
/* 018F8 808C2A88 3C0F808C */  lui     $t7, %hi(func_808C3704)    ## $t7 = 808C0000
/* 018FC 808C2A8C 25EF3704 */  addiu   $t7, $t7, %lo(func_808C3704) ## $t7 = 808C3704
/* 01900 808C2A90 2418001B */  addiu   $t8, $zero, 0x001B         ## $t8 = 0000001B
/* 01904 808C2A94 AC4F0190 */  sw      $t7, 0x0190($v0)           ## 00000190
/* 01908 808C2A98 A44001A8 */  sh      $zero, 0x01A8($v0)         ## 000001A8
/* 0190C 808C2A9C A45801DA */  sh      $t8, 0x01DA($v0)           ## 000001DA
/* 01910 808C2AA0 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01914 808C2AA4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01918 808C2AA8 03E00008 */  jr      $ra
/* 0191C 808C2AAC 00000000 */  nop
