glabel func_809F3624
/* 00364 809F3624 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00368 809F3628 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0036C 809F362C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00370 809F3630 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00374 809F3634 3C040600 */  lui     $a0, %hi(D_060024CC)                ## $a0 = 06000000
/* 00378 809F3638 AFA50034 */  sw      $a1, 0x0034($sp)
/* 0037C 809F363C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00380 809F3640 248424CC */  addiu   $a0, $a0, %lo(D_060024CC)           ## $a0 = 060024CC
/* 00384 809F3644 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00388 809F3648 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0038C 809F364C 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00390 809F3650 468021A0 */  cvt.s.w $f6, $f4
/* 00394 809F3654 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 00398 809F3658 3C050600 */  lui     $a1, %hi(D_060024CC)                ## $a1 = 06000000
/* 0039C 809F365C 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 003A0 809F3660 44060000 */  mfc1    $a2, $f0
/* 003A4 809F3664 44070000 */  mfc1    $a3, $f0
/* 003A8 809F3668 4600320D */  trunc.w.s $f8, $f6
/* 003AC 809F366C 24A524CC */  addiu   $a1, $a1, %lo(D_060024CC)           ## $a1 = 060024CC
/* 003B0 809F3670 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 003B4 809F3674 440F4000 */  mfc1    $t7, $f8
/* 003B8 809F3678 00000000 */  nop
/* 003BC 809F367C A60F026E */  sh      $t7, 0x026E($s0)           ## 0000026E
/* 003C0 809F3680 8618026E */  lh      $t8, 0x026E($s0)           ## 0000026E
/* 003C4 809F3684 AFB90014 */  sw      $t9, 0x0014($sp)
/* 003C8 809F3688 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 003CC 809F368C 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 003D0 809F3690 00000000 */  nop
/* 003D4 809F3694 46805420 */  cvt.s.w $f16, $f10
/* 003D8 809F3698 0C029468 */  jal     SkelAnime_ChangeAnim

/* 003DC 809F369C E7B00010 */  swc1    $f16, 0x0010($sp)
/* 003E0 809F36A0 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 003E4 809F36A4 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 003E8 809F36A8 3C08809F */  lui     $t0, %hi(func_809F36CC)    ## $t0 = 809F0000
/* 003EC 809F36AC 250836CC */  addiu   $t0, $t0, %lo(func_809F36CC) ## $t0 = 809F36CC
/* 003F0 809F36B0 AE080214 */  sw      $t0, 0x0214($s0)           ## 00000214
/* 003F4 809F36B4 E6040164 */  swc1    $f4, 0x0164($s0)           ## 00000164
/* 003F8 809F36B8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 003FC 809F36BC 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00400 809F36C0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00404 809F36C4 03E00008 */  jr      $ra
/* 00408 809F36C8 00000000 */  nop
