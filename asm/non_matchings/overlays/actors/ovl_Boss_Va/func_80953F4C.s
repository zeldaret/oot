glabel func_80953F4C
/* 04C8C 80953F4C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04C90 80953F50 AFA40028 */  sw      $a0, 0x0028($sp)
/* 04C94 80953F54 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 04C98 80953F58 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 04C9C 80953F5C AFA5002C */  sw      $a1, 0x002C($sp)
/* 04CA0 80953F60 0C028800 */  jal     SkelAnime_GetFrameCount

/* 04CA4 80953F64 248466A8 */  addiu   $a0, $a0, 0x66A8           ## $a0 = 060166A8
/* 04CA8 80953F68 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 04CAC 80953F6C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 04CB0 80953F70 8FA40028 */  lw      $a0, 0x0028($sp)
/* 04CB4 80953F74 468021A0 */  cvt.s.w $f6, $f4
/* 04CB8 80953F78 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 04CBC 80953F7C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 04CC0 80953F80 44060000 */  mfc1    $a2, $f0
/* 04CC4 80953F84 44070000 */  mfc1    $a3, $f0
/* 04CC8 80953F88 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 04CCC 80953F8C 24A566A8 */  addiu   $a1, $a1, 0x66A8           ## $a1 = 060166A8
/* 04CD0 80953F90 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 04CD4 80953F94 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 04CD8 80953F98 0C029468 */  jal     SkelAnime_ChangeAnim

/* 04CDC 80953F9C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 04CE0 80953FA0 8FA40028 */  lw      $a0, 0x0028($sp)
/* 04CE4 80953FA4 3C058095 */  lui     $a1, %hi(func_80953FC4)    ## $a1 = 80950000
/* 04CE8 80953FA8 24A53FC4 */  addiu   $a1, $a1, %lo(func_80953FC4) ## $a1 = 80953FC4
/* 04CEC 80953FAC 0C253CB0 */  jal     func_8094F2C0
/* 04CF0 80953FB0 AC800198 */  sw      $zero, 0x0198($a0)         ## 00000198
/* 04CF4 80953FB4 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 04CF8 80953FB8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 04CFC 80953FBC 03E00008 */  jr      $ra
/* 04D00 80953FC0 00000000 */  nop


