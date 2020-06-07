glabel func_80A35B8C
/* 0087C 80A35B8C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00880 80A35B90 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00884 80A35B94 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00888 80A35B98 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0088C 80A35B9C 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00890 80A35BA0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00894 80A35BA4 2484ADF8 */  addiu   $a0, $a0, 0xADF8           ## $a0 = 0600ADF8
/* 00898 80A35BA8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0089C 80A35BAC 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 008A0 80A35BB0 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 008A4 80A35BB4 46802120 */  cvt.s.w $f4, $f4
/* 008A8 80A35BB8 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 008AC 80A35BBC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 008B0 80A35BC0 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 008B4 80A35BC4 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 008B8 80A35BC8 24A5ADF8 */  addiu   $a1, $a1, 0xADF8           ## $a1 = 0600ADF8
/* 008BC 80A35BCC 44072000 */  mfc1    $a3, $f4
/* 008C0 80A35BD0 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 008C4 80A35BD4 3C06C000 */  lui     $a2, 0xC000                ## $a2 = C0000000
/* 008C8 80A35BD8 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 008CC 80A35BDC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 008D0 80A35BE0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 008D4 80A35BE4 8602008A */  lh      $v0, 0x008A($s0)           ## 0000008A
/* 008D8 80A35BE8 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 008DC 80A35BEC 3C0580A3 */  lui     $a1, %hi(func_80A35C24)    ## $a1 = 80A30000
/* 008E0 80A35BF0 AE0F0300 */  sw      $t7, 0x0300($s0)           ## 00000300
/* 008E4 80A35BF4 A6000318 */  sh      $zero, 0x0318($s0)         ## 00000318
/* 008E8 80A35BF8 AE0002EC */  sw      $zero, 0x02EC($s0)         ## 000002EC
/* 008EC 80A35BFC 24A55C24 */  addiu   $a1, $a1, %lo(func_80A35C24) ## $a1 = 80A35C24
/* 008F0 80A35C00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008F4 80A35C04 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 008F8 80A35C08 0C28D4C4 */  jal     func_80A35310
/* 008FC 80A35C0C A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 00900 80A35C10 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00904 80A35C14 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00908 80A35C18 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0090C 80A35C1C 03E00008 */  jr      $ra
/* 00910 80A35C20 00000000 */  nop
