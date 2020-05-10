.late_rodata
glabel D_809B4F48
    .float 0.4
glabel D_809B4F4C
    .float 0.04
glabel D_809B4F50
    .float 0.3

.text
glabel func_809B3CEC
/* 003CC 809B3CEC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 003D0 809B3CF0 AFB00018 */  sw      $s0, 0x0018($sp)
/* 003D4 809B3CF4 AFA40020 */  sw      $a0, 0x0020($sp)
/* 003D8 809B3CF8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 003DC 809B3CFC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003E0 809B3D00 AFBF001C */  sw      $ra, 0x001C($sp)
/* 003E4 809B3D04 3C05809B */  lui     $a1, %hi(func_809B4640)    ## $a1 = 809B0000
/* 003E8 809B3D08 0C26CE48 */  jal     func_809B3920
/* 003EC 809B3D0C 24A54640 */  addiu   $a1, $a1, %lo(func_809B4640) ## $a1 = 809B4640
/* 003F0 809B3D10 3C050400 */  lui     $a1, 0x0400                ## $a1 = 04000000
/* 003F4 809B3D14 24A54310 */  addiu   $a1, $a1, 0x4310           ## $a1 = 04004310
/* 003F8 809B3D18 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 003FC 809B3D1C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00400 809B3D20 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00404 809B3D24 00000000 */  nop
/* 00408 809B3D28 3C0146C0 */  lui     $at, 0x46C0                ## $at = 46C00000
/* 0040C 809B3D2C 44812000 */  mtc1    $at, $f4                   ## $f4 = 24576.00
/* 00410 809B3D30 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00414 809B3D34 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 00418 809B3D38 86180032 */  lh      $t8, 0x0032($s0)           ## 00000032
/* 0041C 809B3D3C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00420 809B3D40 46060201 */  sub.s   $f8, $f0, $f6
/* 00424 809B3D44 46082282 */  mul.s   $f10, $f4, $f8
/* 00428 809B3D48 4600540D */  trunc.w.s $f16, $f10
/* 0042C 809B3D4C 440F8000 */  mfc1    $t7, $f16
/* 00430 809B3D50 00000000 */  nop
/* 00434 809B3D54 030FC821 */  addu    $t9, $t8, $t7
/* 00438 809B3D58 03214021 */  addu    $t0, $t9, $at
/* 0043C 809B3D5C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00440 809B3D60 A6080032 */  sh      $t0, 0x0032($s0)           ## 00000032
/* 00444 809B3D64 3C01809B */  lui     $at, %hi(D_809B4F48)       ## $at = 809B0000
/* 00448 809B3D68 C4224F48 */  lwc1    $f2, %lo(D_809B4F48)($at)
/* 0044C 809B3D6C C6120068 */  lwc1    $f18, 0x0068($s0)          ## 00000068
/* 00450 809B3D70 C60A0060 */  lwc1    $f10, 0x0060($s0)          ## 00000060
/* 00454 809B3D74 46001182 */  mul.s   $f6, $f2, $f0
/* 00458 809B3D78 46061100 */  add.s   $f4, $f2, $f6
/* 0045C 809B3D7C 46049202 */  mul.s   $f8, $f18, $f4
/* 00460 809B3D80 46085400 */  add.s   $f16, $f10, $f8
/* 00464 809B3D84 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00468 809B3D88 E6100060 */  swc1    $f16, 0x0060($s0)          ## 00000060
/* 0046C 809B3D8C 3C01809B */  lui     $at, %hi(D_809B4F4C)       ## $at = 809B0000
/* 00470 809B3D90 C4264F4C */  lwc1    $f6, %lo(D_809B4F4C)($at)
/* 00474 809B3D94 3C01809B */  lui     $at, %hi(D_809B4F50)       ## $at = 809B0000
/* 00478 809B3D98 C4324F50 */  lwc1    $f18, %lo(D_809B4F50)($at)
/* 0047C 809B3D9C C6080068 */  lwc1    $f8, 0x0068($s0)           ## 00000068
/* 00480 809B3DA0 3C01BFC0 */  lui     $at, 0xBFC0                ## $at = BFC00000
/* 00484 809B3DA4 46009102 */  mul.s   $f4, $f18, $f0
/* 00488 809B3DA8 44819000 */  mtc1    $at, $f18                  ## $f18 = -1.50
/* 0048C 809B3DAC 24090032 */  addiu   $t1, $zero, 0x0032         ## $t1 = 00000032
/* 00490 809B3DB0 A2090248 */  sb      $t1, 0x0248($s0)           ## 00000248
/* 00494 809B3DB4 E612006C */  swc1    $f18, 0x006C($s0)          ## 0000006C
/* 00498 809B3DB8 46043280 */  add.s   $f10, $f6, $f4
/* 0049C 809B3DBC 460A4402 */  mul.s   $f16, $f8, $f10
/* 004A0 809B3DC0 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 004A4 809B3DC4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 004A8 809B3DC8 8FB00018 */  lw      $s0, 0x0018($sp)
/* 004AC 809B3DCC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 004B0 809B3DD0 03E00008 */  jr      $ra
/* 004B4 809B3DD4 00000000 */  nop
