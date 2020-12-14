glabel func_8096AE6C
/* 0139C 8096AE6C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 013A0 8096AE70 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 013A4 8096AE74 AFA40028 */  sw      $a0, 0x0028($sp)
/* 013A8 8096AE78 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 013AC 8096AE7C 51C0001D */  beql    $t6, $zero, .L8096AEF4
/* 013B0 8096AE80 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 013B4 8096AE84 8CA21D94 */  lw      $v0, 0x1D94($a1)           ## 00001D94
/* 013B8 8096AE88 5040001A */  beql    $v0, $zero, .L8096AEF4
/* 013BC 8096AE8C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 013C0 8096AE90 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 013C4 8096AE94 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 013C8 8096AE98 3C040600 */  lui     $a0, %hi(D_06000800)                ## $a0 = 06000000
/* 013CC 8096AE9C 51E10015 */  beql    $t7, $at, .L8096AEF4
/* 013D0 8096AEA0 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 013D4 8096AEA4 0C028800 */  jal     SkelAnime_GetFrameCount

/* 013D8 8096AEA8 24840800 */  addiu   $a0, $a0, %lo(D_06000800)           ## $a0 = 06000800
/* 013DC 8096AEAC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 013E0 8096AEB0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 013E4 8096AEB4 8FA40028 */  lw      $a0, 0x0028($sp)
/* 013E8 8096AEB8 468021A0 */  cvt.s.w $f6, $f4
/* 013EC 8096AEBC 3C050600 */  lui     $a1, %hi(D_06000800)                ## $a1 = 06000000
/* 013F0 8096AEC0 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 013F4 8096AEC4 44070000 */  mfc1    $a3, $f0
/* 013F8 8096AEC8 AFB80014 */  sw      $t8, 0x0014($sp)
/* 013FC 8096AECC 24A50800 */  addiu   $a1, $a1, %lo(D_06000800)           ## $a1 = 06000800
/* 01400 8096AED0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01404 8096AED4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01408 8096AED8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0140C 8096AEDC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01410 8096AEE0 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 01414 8096AEE4 8FA80028 */  lw      $t0, 0x0028($sp)
/* 01418 8096AEE8 24190012 */  addiu   $t9, $zero, 0x0012         ## $t9 = 00000012
/* 0141C 8096AEEC AD190198 */  sw      $t9, 0x0198($t0)           ## 00000198
/* 01420 8096AEF0 8FBF0024 */  lw      $ra, 0x0024($sp)
.L8096AEF4:
/* 01424 8096AEF4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01428 8096AEF8 03E00008 */  jr      $ra
/* 0142C 8096AEFC 00000000 */  nop
