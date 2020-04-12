glabel func_80A1B638
/* 00C98 80A1B638 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00C9C 80A1B63C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00CA0 80A1B640 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00CA4 80A1B644 AFA50044 */  sw      $a1, 0x0044($sp)
/* 00CA8 80A1B648 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00CAC 80A1B64C 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 00CB0 80A1B650 C4800164 */  lwc1    $f0, 0x0164($a0)           ## 00000164
/* 00CB4 80A1B654 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00CB8 80A1B658 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00CBC 80A1B65C 46002032 */  c.eq.s  $f4, $f0
/* 00CC0 80A1B660 00000000 */  nop
/* 00CC4 80A1B664 45020005 */  bc1fl   .L80A1B67C
/* 00CC8 80A1B668 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
/* 00CCC 80A1B66C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00CD0 80A1B670 10000012 */  beq     $zero, $zero, .L80A1B6BC
/* 00CD4 80A1B674 E4860168 */  swc1    $f6, 0x0168($a0)           ## 00000168
/* 00CD8 80A1B678 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
.L80A1B67C:
/* 00CDC 80A1B67C 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00CE0 80A1B680 46004032 */  c.eq.s  $f8, $f0
/* 00CE4 80A1B684 00000000 */  nop
/* 00CE8 80A1B688 4502000D */  bc1fl   .L80A1B6C0
/* 00CEC 80A1B68C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CF0 80A1B690 44815000 */  mtc1    $at, $f10                  ## $f10 = -10.00
/* 00CF4 80A1B694 920E0383 */  lbu     $t6, 0x0383($s0)           ## 00000383
/* 00CF8 80A1B698 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00CFC 80A1B69C 44818000 */  mtc1    $at, $f16                  ## $f16 = 25.00
/* 00D00 80A1B6A0 E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
/* 00D04 80A1B6A4 11C00005 */  beq     $t6, $zero, .L80A1B6BC
/* 00D08 80A1B6A8 E6100060 */  swc1    $f16, 0x0060($s0)          ## 00000060
/* 00D0C 80A1B6AC A2000383 */  sb      $zero, 0x0383($s0)         ## 00000383
/* 00D10 80A1B6B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D14 80A1B6B4 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00D18 80A1B6B8 24053826 */  addiu   $a1, $zero, 0x3826         ## $a1 = 00003826
.L80A1B6BC:
/* 00D1C 80A1B6BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A1B6C0:
/* 00D20 80A1B6C0 0C286C27 */  jal     func_80A1B09C
/* 00D24 80A1B6C4 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFFC
/* 00D28 80A1B6C8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00D2C 80A1B6CC 10400015 */  beq     $v0, $zero, .L80A1B724
/* 00D30 80A1B6D0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00D34 80A1B6D4 A2000379 */  sb      $zero, 0x0379($s0)         ## 00000379
/* 00D38 80A1B6D8 E600006C */  swc1    $f0, 0x006C($s0)           ## 0000006C
/* 00D3C 80A1B6DC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00D40 80A1B6E0 248411C0 */  addiu   $a0, $a0, 0x11C0           ## $a0 = 060011C0
/* 00D44 80A1B6E4 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 00D48 80A1B6E8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00D4C 80A1B6EC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00D50 80A1B6F0 46809120 */  cvt.s.w $f4, $f18
/* 00D54 80A1B6F4 44070000 */  mfc1    $a3, $f0
/* 00D58 80A1B6F8 24A511C0 */  addiu   $a1, $a1, 0x11C0           ## $a1 = 060011C0
/* 00D5C 80A1B6FC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00D60 80A1B700 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00D64 80A1B704 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00D68 80A1B708 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 00D6C 80A1B70C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00D70 80A1B710 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00D74 80A1B714 3C0F80A2 */  lui     $t7, %hi(func_80A1B524)    ## $t7 = 80A20000
/* 00D78 80A1B718 25EFB524 */  addiu   $t7, $t7, %lo(func_80A1B524) ## $t7 = 80A1B524
/* 00D7C 80A1B71C 10000011 */  beq     $zero, $zero, .L80A1B764
/* 00D80 80A1B720 AE0F0354 */  sw      $t7, 0x0354($s0)           ## 00000354
.L80A1B724:
/* 00D84 80A1B724 C6060060 */  lwc1    $f6, 0x0060($s0)           ## 00000060
/* 00D88 80A1B728 C7A8003C */  lwc1    $f8, 0x003C($sp)
/* 00D8C 80A1B72C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00D90 80A1B730 4600303E */  c.le.s  $f6, $f0
/* 00D94 80A1B734 00000000 */  nop
/* 00D98 80A1B738 4502000B */  bc1fl   .L80A1B768
/* 00D9C 80A1B73C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00DA0 80A1B740 44815000 */  mtc1    $at, $f10                  ## $f10 = 40.00
/* 00DA4 80A1B744 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00DA8 80A1B748 460A403C */  c.lt.s  $f8, $f10
/* 00DAC 80A1B74C 00000000 */  nop
/* 00DB0 80A1B750 45020005 */  bc1fl   .L80A1B768
/* 00DB4 80A1B754 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00DB8 80A1B758 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 00DBC 80A1B75C 00000000 */  nop
/* 00DC0 80A1B760 E6100168 */  swc1    $f16, 0x0168($s0)          ## 00000168
.L80A1B764:
/* 00DC4 80A1B764 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A1B768:
/* 00DC8 80A1B768 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00DCC 80A1B76C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00DD0 80A1B770 03E00008 */  jr      $ra
/* 00DD4 80A1B774 00000000 */  nop


