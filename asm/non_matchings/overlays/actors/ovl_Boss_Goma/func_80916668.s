glabel func_80916668
/* 00C58 80916668 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00C5C 8091666C AFA40028 */  sw      $a0, 0x0028($sp)
/* 00C60 80916670 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00C64 80916674 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00C68 80916678 0C028800 */  jal     SkelAnime_GetLastFrame

/* 00C6C 8091667C 2484CCD8 */  addiu   $a0, $a0, 0xCCD8           ## $a0 = 0600CCD8
/* 00C70 80916680 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00C74 80916684 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 00C78 80916688 44814000 */  mtc1    $at, $f8                   ## $f8 = -2.00
/* 00C7C 8091668C 468021A0 */  cvt.s.w $f6, $f4
/* 00C80 80916690 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00C84 80916694 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00C88 80916698 24A5CCD8 */  addiu   $a1, $a1, 0xCCD8           ## $a1 = 0600CCD8
/* 00C8C 8091669C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00C90 809166A0 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00C94 809166A4 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00C98 809166A8 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00C9C 809166AC E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00CA0 809166B0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00CA4 809166B4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00CA8 809166B8 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 00CAC 809166BC 3C0E8092 */  lui     $t6, %hi(func_80919150)    ## $t6 = 80920000
/* 00CB0 809166C0 25CE9150 */  addiu   $t6, $t6, %lo(func_80919150) ## $t6 = 80919150
/* 00CB4 809166C4 ADEE0190 */  sw      $t6, 0x0190($t7)           ## 00000190
/* 00CB8 809166C8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00CBC 809166CC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00CC0 809166D0 03E00008 */  jr      $ra
/* 00CC4 809166D4 00000000 */  nop
