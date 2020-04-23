.late_rodata
glabel D_80A552E8
 .word 0x440EC000
glabel D_80A552EC
 .word 0xC4B9E000
glabel D_80A552F0
 .word 0x43D08000
glabel D_80A552F4
 .word 0xC486E000

.text
glabel func_80A53DF8
/* 00F58 80A53DF8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00F5C 80A53DFC AFB00028 */  sw      $s0, 0x0028($sp)
/* 00F60 80A53E00 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F64 80A53E04 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00F68 80A53E08 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00F6C 80A53E0C AFA50034 */  sw      $a1, 0x0034($sp)
/* 00F70 80A53E10 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00F74 80A53E14 24845C30 */  addiu   $a0, $a0, 0x5C30           ## $a0 = 06005C30
/* 00F78 80A53E18 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00F7C 80A53E1C 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00F80 80A53E20 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00F84 80A53E24 468021A0 */  cvt.s.w $f6, $f4
/* 00F88 80A53E28 24A55C30 */  addiu   $a1, $a1, 0x5C30           ## $a1 = 06005C30
/* 00F8C 80A53E2C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00F90 80A53E30 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00F94 80A53E34 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00F98 80A53E38 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00F9C 80A53E3C 4600320D */  trunc.w.s $f8, $f6
/* 00FA0 80A53E40 44813000 */  mtc1    $at, $f6                   ## $f6 = -10.00
/* 00FA4 80A53E44 440F4000 */  mfc1    $t7, $f8
/* 00FA8 80A53E48 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 00FAC 80A53E4C 000FC400 */  sll     $t8, $t7, 16
/* 00FB0 80A53E50 0018CC03 */  sra     $t9, $t8, 16
/* 00FB4 80A53E54 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 00FB8 80A53E58 00000000 */  nop
/* 00FBC 80A53E5C 46805120 */  cvt.s.w $f4, $f10
/* 00FC0 80A53E60 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00FC4 80A53E64 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 00FC8 80A53E68 240800C8 */  addiu   $t0, $zero, 0x00C8         ## $t0 = 000000C8
/* 00FCC 80A53E6C A60802F2 */  sh      $t0, 0x02F2($s0)           ## 000002F2
/* 00FD0 80A53E70 0C03008C */  jal     Gameplay_CreateSubCamera
/* 00FD4 80A53E74 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00FD8 80A53E78 A6020310 */  sh      $v0, 0x0310($s0)           ## 00000310
/* 00FDC 80A53E7C 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00FE0 80A53E80 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00FE4 80A53E84 0C0300C5 */  jal     Gameplay_ChangeCameraStatus
/* 00FE8 80A53E88 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00FEC 80A53E8C 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00FF0 80A53E90 86050310 */  lh      $a1, 0x0310($s0)           ## 00000310
/* 00FF4 80A53E94 0C0300C5 */  jal     Gameplay_ChangeCameraStatus
/* 00FF8 80A53E98 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00FFC 80A53E9C 3C01C28E */  lui     $at, 0xC28E                ## $at = C28E0000
/* 01000 80A53EA0 44810000 */  mtc1    $at, $f0                   ## $f0 = -71.00
/* 01004 80A53EA4 3C0180A5 */  lui     $at, %hi(D_80A552E8)       ## $at = 80A50000
/* 01008 80A53EA8 C42252E8 */  lwc1    $f2, %lo(D_80A552E8)($at)
/* 0100C 80A53EAC 3C0180A5 */  lui     $at, %hi(D_80A552EC)       ## $at = 80A50000
/* 01010 80A53EB0 C42C52EC */  lwc1    $f12, %lo(D_80A552EC)($at)
/* 01014 80A53EB4 3C014335 */  lui     $at, 0x4335                ## $at = 43350000
/* 01018 80A53EB8 44817000 */  mtc1    $at, $f14                  ## $f14 = 181.00
/* 0101C 80A53EBC 3C0180A5 */  lui     $at, %hi(D_80A552F0)       ## $at = 80A50000
/* 01020 80A53EC0 C43052F0 */  lwc1    $f16, %lo(D_80A552F0)($at)
/* 01024 80A53EC4 3C0180A5 */  lui     $at, %hi(D_80A552F4)       ## $at = 80A50000
/* 01028 80A53EC8 C43252F4 */  lwc1    $f18, %lo(D_80A552F4)($at)
/* 0102C 80A53ECC E60002BC */  swc1    $f0, 0x02BC($s0)           ## 000002BC
/* 01030 80A53ED0 E6000280 */  swc1    $f0, 0x0280($s0)           ## 00000280
/* 01034 80A53ED4 E60202C0 */  swc1    $f2, 0x02C0($s0)           ## 000002C0
/* 01038 80A53ED8 E6020284 */  swc1    $f2, 0x0284($s0)           ## 00000284
/* 0103C 80A53EDC E60C02C4 */  swc1    $f12, 0x02C4($s0)          ## 000002C4
/* 01040 80A53EE0 E60C0288 */  swc1    $f12, 0x0288($s0)          ## 00000288
/* 01044 80A53EE4 E60E0298 */  swc1    $f14, 0x0298($s0)          ## 00000298
/* 01048 80A53EE8 E60E028C */  swc1    $f14, 0x028C($s0)          ## 0000028C
/* 0104C 80A53EEC E610029C */  swc1    $f16, 0x029C($s0)          ## 0000029C
/* 01050 80A53EF0 E6100290 */  swc1    $f16, 0x0290($s0)          ## 00000290
/* 01054 80A53EF4 E61202A0 */  swc1    $f18, 0x02A0($s0)          ## 000002A0
/* 01058 80A53EF8 E6120294 */  swc1    $f18, 0x0294($s0)          ## 00000294
/* 0105C 80A53EFC 8FA40034 */  lw      $a0, 0x0034($sp)
/* 01060 80A53F00 86050310 */  lh      $a1, 0x0310($s0)           ## 00000310
/* 01064 80A53F04 26060280 */  addiu   $a2, $s0, 0x0280           ## $a2 = 00000280
/* 01068 80A53F08 0C030136 */  jal     func_800C04D8
/* 0106C 80A53F0C 2607028C */  addiu   $a3, $s0, 0x028C           ## $a3 = 0000028C
/* 01070 80A53F10 3C0980A5 */  lui     $t1, %hi(func_80A53F30)    ## $t1 = 80A50000
/* 01074 80A53F14 25293F30 */  addiu   $t1, $t1, %lo(func_80A53F30) ## $t1 = 80A53F30
/* 01078 80A53F18 AE09025C */  sw      $t1, 0x025C($s0)           ## 0000025C
/* 0107C 80A53F1C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01080 80A53F20 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01084 80A53F24 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01088 80A53F28 03E00008 */  jr      $ra
/* 0108C 80A53F2C 00000000 */  nop
