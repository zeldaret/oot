glabel func_809000A0
/* 03160 809000A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03164 809000A4 AFA5001C */  sw      $a1, 0x001C($sp)
/* 03168 809000A8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0316C 809000AC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 03170 809000B0 3C050602 */  lui     $a1, %hi(D_06026510)                ## $a1 = 06020000
/* 03174 809000B4 24A56510 */  addiu   $a1, $a1, %lo(D_06026510)           ## $a1 = 06026510
/* 03178 809000B8 AFA70018 */  sw      $a3, 0x0018($sp)
/* 0317C 809000BC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03180 809000C0 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 03184 809000C4 3C06C000 */  lui     $a2, 0xC000                ## $a2 = C0000000
/* 03188 809000C8 3C040602 */  lui     $a0, %hi(D_06026510)                ## $a0 = 06020000
/* 0318C 809000CC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 03190 809000D0 24846510 */  addiu   $a0, $a0, %lo(D_06026510)           ## $a0 = 06026510
/* 03194 809000D4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 03198 809000D8 8FA70018 */  lw      $a3, 0x0018($sp)
/* 0319C 809000DC 3C0E8090 */  lui     $t6, %hi(func_80900104)    ## $t6 = 80900000
/* 031A0 809000E0 468021A0 */  cvt.s.w $f6, $f4
/* 031A4 809000E4 25CE0104 */  addiu   $t6, $t6, %lo(func_80900104) ## $t6 = 80900104
/* 031A8 809000E8 A4E001AC */  sh      $zero, 0x01AC($a3)         ## 000001AC
/* 031AC 809000EC ACEE0190 */  sw      $t6, 0x0190($a3)           ## 00000190
/* 031B0 809000F0 E4E60194 */  swc1    $f6, 0x0194($a3)           ## 00000194
/* 031B4 809000F4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 031B8 809000F8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 031BC 809000FC 03E00008 */  jr      $ra
/* 031C0 80900100 00000000 */  nop
