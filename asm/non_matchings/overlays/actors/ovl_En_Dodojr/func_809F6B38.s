.late_rodata
glabel D_809F7F80
    .float -0.8

.text
glabel func_809F6B38
/* 00778 809F6B38 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0077C 809F6B3C AFA40028 */  sw      $a0, 0x0028($sp)
/* 00780 809F6B40 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00784 809F6B44 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00788 809F6B48 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0078C 809F6B4C 24840724 */  addiu   $a0, $a0, 0x0724           ## $a0 = 06000724
/* 00790 809F6B50 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00794 809F6B54 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00798 809F6B58 8FA30028 */  lw      $v1, 0x0028($sp)
/* 0079C 809F6B5C 468021A0 */  cvt.s.w $f6, $f4
/* 007A0 809F6B60 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 007A4 809F6B64 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 007A8 809F6B68 24A50724 */  addiu   $a1, $a1, 0x0724           ## $a1 = 06000724
/* 007AC 809F6B6C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 007B0 809F6B70 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 007B4 809F6B74 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 007B8 809F6B78 AFA00014 */  sw      $zero, 0x0014($sp)
/* 007BC 809F6B7C 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 007C0 809F6B80 0C029468 */  jal     SkelAnime_ChangeAnim

/* 007C4 809F6B84 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 007C8 809F6B88 3C01809F */  lui     $at, %hi(D_809F7F80)       ## $at = 809F0000
/* 007CC 809F6B8C 8FA30028 */  lw      $v1, 0x0028($sp)
/* 007D0 809F6B90 C42A7F80 */  lwc1    $f10, %lo(D_809F7F80)($at)
/* 007D4 809F6B94 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 007D8 809F6B98 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 007DC 809F6B9C 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 007E0 809F6BA0 A46E01FC */  sh      $t6, 0x01FC($v1)           ## 000001FC
/* 007E4 809F6BA4 E46A006C */  swc1    $f10, 0x006C($v1)          ## 0000006C
/* 007E8 809F6BA8 E4700060 */  swc1    $f16, 0x0060($v1)          ## 00000060
/* 007EC 809F6BAC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 007F0 809F6BB0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 007F4 809F6BB4 03E00008 */  jr      $ra
/* 007F8 809F6BB8 00000000 */  nop
