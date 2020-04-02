glabel func_80A2F7C0
/* 00640 80A2F7C0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00644 80A2F7C4 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00648 80A2F7C8 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0064C 80A2F7CC 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00650 80A2F7D0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00654 80A2F7D4 2484C8EC */  addiu   $a0, $a0, 0xC8EC           ## $a0 = 0600C8EC
/* 00658 80A2F7D8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0065C 80A2F7DC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00660 80A2F7E0 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00664 80A2F7E4 468021A0 */  cvt.s.w $f6, $f4
/* 00668 80A2F7E8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 0066C 80A2F7EC 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00670 80A2F7F0 44070000 */  mfc1    $a3, $f0
/* 00674 80A2F7F4 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00678 80A2F7F8 24A5C8EC */  addiu   $a1, $a1, 0xC8EC           ## $a1 = 0600C8EC
/* 0067C 80A2F7FC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00680 80A2F800 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00684 80A2F804 24840164 */  addiu   $a0, $a0, 0x0164           ## $a0 = 00000164
/* 00688 80A2F808 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0068C 80A2F80C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00690 80A2F810 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00694 80A2F814 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00698 80A2F818 240528B0 */  addiu   $a1, $zero, 0x28B0         ## $a1 = 000028B0
/* 0069C 80A2F81C 8FB80028 */  lw      $t8, 0x0028($sp)
/* 006A0 80A2F820 3C0F80A3 */  lui     $t7, %hi(func_80A2FC70)    ## $t7 = 80A30000
/* 006A4 80A2F824 25EFFC70 */  addiu   $t7, $t7, %lo(func_80A2FC70) ## $t7 = 80A2FC70
/* 006A8 80A2F828 AF0F0238 */  sw      $t7, 0x0238($t8)           ## 00000238
/* 006AC 80A2F82C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 006B0 80A2F830 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 006B4 80A2F834 03E00008 */  jr      $ra
/* 006B8 80A2F838 00000000 */  nop


