glabel Path_CopyLastPoint
/* B057AC 8008E60C 10800022 */  beqz  $a0, .L8008E698
/* B057B0 8008E610 3C198016 */   lui   $t9, %hi(gSegments)
/* B057B4 8008E614 8C830004 */  lw    $v1, 4($a0)
/* B057B8 8008E618 908A0000 */  lbu   $t2, ($a0)
/* B057BC 8008E61C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B057C0 8008E620 00037100 */  sll   $t6, $v1, 4
/* B057C4 8008E624 000E7F02 */  srl   $t7, $t6, 0x1c
/* B057C8 8008E628 000FC080 */  sll   $t8, $t7, 2
/* B057CC 8008E62C 0338C821 */  addu  $t9, $t9, $t8
/* B057D0 8008E630 8F396FA8 */  lw    $t9, %lo(gSegments)($t9)
/* B057D4 8008E634 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B057D8 8008E638 00614024 */  and   $t0, $v1, $at
/* B057DC 8008E63C 000A5880 */  sll   $t3, $t2, 2
/* B057E0 8008E640 016A5823 */  subu  $t3, $t3, $t2
/* B057E4 8008E644 000B5840 */  sll   $t3, $t3, 1
/* B057E8 8008E648 3C017FFF */  lui   $at, (0x7FFFFFFA >> 16) # lui $at, 0x7fff
/* B057EC 8008E64C 03284821 */  addu  $t1, $t9, $t0
/* B057F0 8008E650 012B1021 */  addu  $v0, $t1, $t3
/* B057F4 8008E654 3421FFFA */  ori   $at, (0x7FFFFFFA & 0xFFFF) # ori $at, $at, 0xfffa
/* B057F8 8008E658 00411021 */  addu  $v0, $v0, $at
/* B057FC 8008E65C 844C0000 */  lh    $t4, ($v0)
/* B05800 8008E660 448C2000 */  mtc1  $t4, $f4
/* B05804 8008E664 00000000 */  nop   
/* B05808 8008E668 468021A0 */  cvt.s.w $f6, $f4
/* B0580C 8008E66C E4A60000 */  swc1  $f6, ($a1)
/* B05810 8008E670 844D0002 */  lh    $t5, 2($v0)
/* B05814 8008E674 448D4000 */  mtc1  $t5, $f8
/* B05818 8008E678 00000000 */  nop   
/* B0581C 8008E67C 468042A0 */  cvt.s.w $f10, $f8
/* B05820 8008E680 E4AA0004 */  swc1  $f10, 4($a1)
/* B05824 8008E684 844E0004 */  lh    $t6, 4($v0)
/* B05828 8008E688 448E8000 */  mtc1  $t6, $f16
/* B0582C 8008E68C 00000000 */  nop   
/* B05830 8008E690 468084A0 */  cvt.s.w $f18, $f16
/* B05834 8008E694 E4B20008 */  swc1  $f18, 8($a1)
.L8008E698:
/* B05838 8008E698 03E00008 */  jr    $ra
/* B0583C 8008E69C 00000000 */   nop   
