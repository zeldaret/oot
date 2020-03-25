.rdata
glabel D_8013F2C0
    .asciz "../z_sample.c"
    .balign 4

glabel D_8013F2D0
    .asciz "../z_sample.c"
    .balign 4

.text
glabel Sample_Draw
/* B0E7A4 80097604 27BDFF90 */  addiu $sp, $sp, -0x70
/* B0E7A8 80097608 AFBF002C */  sw    $ra, 0x2c($sp)
/* B0E7AC 8009760C AFB00028 */  sw    $s0, 0x28($sp)
/* B0E7B0 80097610 AFA40070 */  sw    $a0, 0x70($sp)
/* B0E7B4 80097614 8C900000 */  lw    $s0, ($a0)
/* B0E7B8 80097618 3C068014 */  lui   $a2, %hi(D_8013F2C0) # $a2, 0x8014
/* B0E7BC 8009761C 24C6F2C0 */  addiu $a2, %lo(D_8013F2C0) # addiu $a2, $a2, -0xd40
/* B0E7C0 80097620 27A40054 */  addiu $a0, $sp, 0x54
/* B0E7C4 80097624 2407003E */  li    $a3, 62
/* B0E7C8 80097628 0C031AB1 */  jal   func_800C6AC4
/* B0E7CC 8009762C 02002825 */   move  $a1, $s0
/* B0E7D0 80097630 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B0E7D4 80097634 3C18DB06 */  lui   $t8, 0xdb06
/* B0E7D8 80097638 3C08DB06 */  lui   $t0, (0xDB060004 >> 16) # lui $t0, 0xdb06
/* B0E7DC 8009763C 244F0008 */  addiu $t7, $v0, 8
/* B0E7E0 80097640 AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B0E7E4 80097644 AC400004 */  sw    $zero, 4($v0)
/* B0E7E8 80097648 AC580000 */  sw    $t8, ($v0)
/* B0E7EC 8009764C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B0E7F0 80097650 35080004 */  ori   $t0, (0xDB060004 & 0xFFFF) # ori $t0, $t0, 4
/* B0E7F4 80097654 02002025 */  move  $a0, $s0
/* B0E7F8 80097658 24590008 */  addiu $t9, $v0, 8
/* B0E7FC 8009765C AE1902C0 */  sw    $t9, 0x2c0($s0)
/* B0E800 80097660 AC480000 */  sw    $t0, ($v0)
/* B0E804 80097664 8FA90070 */  lw    $t1, 0x70($sp)
/* B0E808 80097668 00002825 */  move  $a1, $zero
/* B0E80C 8009766C 00003025 */  move  $a2, $zero
/* B0E810 80097670 8D2A00A4 */  lw    $t2, 0xa4($t1)
/* B0E814 80097674 00003825 */  move  $a3, $zero
/* B0E818 80097678 0C025492 */  jal   func_80095248
/* B0E81C 8009767C AC4A0004 */   sw    $t2, 4($v0)
/* B0E820 80097680 8FA40070 */  lw    $a0, 0x70($sp)
/* B0E824 80097684 240B0007 */  li    $t3, 7
/* B0E828 80097688 2405000F */  li    $a1, 15
/* B0E82C 8009768C AC8B01C8 */  sw    $t3, 0x1c8($a0)
/* B0E830 80097690 0C02AA94 */  jal   func_800AAA50
/* B0E834 80097694 248400A8 */   addiu $a0, $a0, 0xa8
/* B0E838 80097698 02002025 */  move  $a0, $s0
/* B0E83C 8009769C 0C031A73 */  jal   Graph_Alloc
/* B0E840 800976A0 24050040 */   li    $a1, 64
/* B0E844 800976A4 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* B0E848 800976A8 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* B0E84C 800976AC AFA20048 */  sw    $v0, 0x48($sp)
/* B0E850 800976B0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B0E854 800976B4 44815000 */  mtc1  $at, $f10
/* B0E858 800976B8 846E0122 */  lh    $t6, 0x122($v1)
/* B0E85C 800976BC 846D0120 */  lh    $t5, 0x120($v1)
/* B0E860 800976C0 846C011E */  lh    $t4, 0x11e($v1)
/* B0E864 800976C4 E7AA0010 */  swc1  $f10, 0x10($sp)
/* B0E868 800976C8 846F0124 */  lh    $t7, 0x124($v1)
/* B0E86C 800976CC 448C2000 */  mtc1  $t4, $f4
/* B0E870 800976D0 448D3000 */  mtc1  $t5, $f6
/* B0E874 800976D4 448F8000 */  mtc1  $t7, $f16
/* B0E878 800976D8 46802120 */  cvt.s.w $f4, $f4
/* B0E87C 800976DC 448E4000 */  mtc1  $t6, $f8
/* B0E880 800976E0 00402025 */  move  $a0, $v0
/* B0E884 800976E4 468084A0 */  cvt.s.w $f18, $f16
/* B0E888 800976E8 44052000 */  mfc1  $a1, $f4
/* B0E88C 800976EC 468031A0 */  cvt.s.w $f6, $f6
/* B0E890 800976F0 E7B20014 */  swc1  $f18, 0x14($sp)
/* B0E894 800976F4 84780126 */  lh    $t8, 0x126($v1)
/* B0E898 800976F8 44982000 */  mtc1  $t8, $f4
/* B0E89C 800976FC 44063000 */  mfc1  $a2, $f6
/* B0E8A0 80097700 46804220 */  cvt.s.w $f8, $f8
/* B0E8A4 80097704 468021A0 */  cvt.s.w $f6, $f4
/* B0E8A8 80097708 44074000 */  mfc1  $a3, $f8
/* B0E8AC 8009770C E7A60018 */  swc1  $f6, 0x18($sp)
/* B0E8B0 80097710 84790128 */  lh    $t9, 0x128($v1)
/* B0E8B4 80097714 44994000 */  mtc1  $t9, $f8
/* B0E8B8 80097718 00000000 */  nop   
/* B0E8BC 8009771C 468042A0 */  cvt.s.w $f10, $f8
/* B0E8C0 80097720 0C040F56 */  jal   func_80103D58
/* B0E8C4 80097724 E7AA001C */   swc1  $f10, 0x1c($sp)
/* B0E8C8 80097728 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B0E8CC 8009772C 3C09DA38 */  lui   $t1, (0xDA380003 >> 16) # lui $t1, 0xda38
/* B0E8D0 80097730 35290003 */  ori   $t1, (0xDA380003 & 0xFFFF) # ori $t1, $t1, 3
/* B0E8D4 80097734 24480008 */  addiu $t0, $v0, 8
/* B0E8D8 80097738 AE0802C0 */  sw    $t0, 0x2c0($s0)
/* B0E8DC 8009773C AC490000 */  sw    $t1, ($v0)
/* B0E8E0 80097740 8FAA0048 */  lw    $t2, 0x48($sp)
/* B0E8E4 80097744 240500FF */  li    $a1, 255
/* B0E8E8 80097748 240600FF */  li    $a2, 255
/* B0E8EC 8009774C AC4A0004 */  sw    $t2, 4($v0)
/* B0E8F0 80097750 8E0402C0 */  lw    $a0, 0x2c0($s0)
/* B0E8F4 80097754 AFA00018 */  sw    $zero, 0x18($sp)
/* B0E8F8 80097758 AFA00014 */  sw    $zero, 0x14($sp)
/* B0E8FC 8009775C AFA00010 */  sw    $zero, 0x10($sp)
/* B0E900 80097760 0C024DC2 */  jal   func_80093708
/* B0E904 80097764 240700FF */   li    $a3, 255
/* B0E908 80097768 AE0202C0 */  sw    $v0, 0x2c0($s0)
/* B0E90C 8009776C 0C024F46 */  jal   func_80093D18
/* B0E910 80097770 02002025 */   move  $a0, $s0
/* B0E914 80097774 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B0E918 80097778 3C0CE300 */  lui   $t4, (0xE3000A01 >> 16) # lui $t4, 0xe300
/* B0E91C 8009777C 358C0A01 */  ori   $t4, (0xE3000A01 & 0xFFFF) # ori $t4, $t4, 0xa01
/* B0E920 80097780 244B0008 */  addiu $t3, $v0, 8
/* B0E924 80097784 AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B0E928 80097788 AC400004 */  sw    $zero, 4($v0)
/* B0E92C 8009778C AC4C0000 */  sw    $t4, ($v0)
/* B0E930 80097790 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B0E934 80097794 3C0EE200 */  lui   $t6, (0xE200001C >> 16) # lui $t6, 0xe200
/* B0E938 80097798 3C0F0055 */  lui   $t7, (0x00552078 >> 16) # lui $t7, 0x55
/* B0E93C 8009779C 244D0008 */  addiu $t5, $v0, 8
/* B0E940 800977A0 AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B0E944 800977A4 35EF2078 */  ori   $t7, (0x00552078 & 0xFFFF) # ori $t7, $t7, 0x2078
/* B0E948 800977A8 35CE001C */  ori   $t6, (0xE200001C & 0xFFFF) # ori $t6, $t6, 0x1c
/* B0E94C 800977AC AC4E0000 */  sw    $t6, ($v0)
/* B0E950 800977B0 AC4F0004 */  sw    $t7, 4($v0)
/* B0E954 800977B4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B0E958 800977B8 3C19FCFF */  lui   $t9, (0xFCFFFFFF >> 16) # lui $t9, 0xfcff
/* B0E95C 800977BC 3C08FFFD */  lui   $t0, (0xFFFDF6FB >> 16) # lui $t0, 0xfffd
/* B0E960 800977C0 24580008 */  addiu $t8, $v0, 8
/* B0E964 800977C4 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* B0E968 800977C8 3508F6FB */  ori   $t0, (0xFFFDF6FB & 0xFFFF) # ori $t0, $t0, 0xf6fb
/* B0E96C 800977CC 3739FFFF */  ori   $t9, (0xFCFFFFFF & 0xFFFF) # ori $t9, $t9, 0xffff
/* B0E970 800977D0 AC590000 */  sw    $t9, ($v0)
/* B0E974 800977D4 AC480004 */  sw    $t0, 4($v0)
/* B0E978 800977D8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B0E97C 800977DC 3C0BFFFF */  lui   $t3, 0xffff
/* B0E980 800977E0 3C0AFA00 */  lui   $t2, 0xfa00
/* B0E984 800977E4 24490008 */  addiu $t1, $v0, 8
/* B0E988 800977E8 AE0902C0 */  sw    $t1, 0x2c0($s0)
/* B0E98C 800977EC 3C068014 */  lui   $a2, %hi(D_8013F2D0) # $a2, 0x8014
/* B0E990 800977F0 24C6F2D0 */  addiu $a2, %lo(D_8013F2D0) # addiu $a2, $a2, -0xd30
/* B0E994 800977F4 27A40054 */  addiu $a0, $sp, 0x54
/* B0E998 800977F8 02002825 */  move  $a1, $s0
/* B0E99C 800977FC 2407006F */  li    $a3, 111
/* B0E9A0 80097800 AC4B0004 */  sw    $t3, 4($v0)
/* B0E9A4 80097804 0C031AD5 */  jal   func_800C6B54
/* B0E9A8 80097808 AC4A0000 */   sw    $t2, ($v0)
/* B0E9AC 8009780C 8FBF002C */  lw    $ra, 0x2c($sp)
/* B0E9B0 80097810 8FB00028 */  lw    $s0, 0x28($sp)
/* B0E9B4 80097814 27BD0070 */  addiu $sp, $sp, 0x70
/* B0E9B8 80097818 03E00008 */  jr    $ra
/* B0E9BC 8009781C 00000000 */   nop   

