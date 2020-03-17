.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_8008E4E0
/* B05680 8008E4E0 AFA50004 */  sw    $a1, 4($sp)
/* B05684 8008E4E4 AFA60008 */  sw    $a2, 8($sp)
/* B05688 8008E4E8 00063400 */  sll   $a2, $a2, 0x10
/* B0568C 8008E4EC 00052C00 */  sll   $a1, $a1, 0x10
/* B05690 8008E4F0 00052C03 */  sra   $a1, $a1, 0x10
/* B05694 8008E4F4 00063403 */  sra   $a2, $a2, 0x10
/* B05698 8008E4F8 10A60007 */  beq   $a1, $a2, .L8008E518
/* B0569C 8008E4FC 00001825 */   move  $v1, $zero
/* B056A0 8008E500 3C0E0001 */  lui   $t6, 1
/* B056A4 8008E504 01C47021 */  addu  $t6, $t6, $a0
/* B056A8 8008E508 8DCE1E08 */  lw    $t6, 0x1e08($t6)
/* B056AC 8008E50C 000578C0 */  sll   $t7, $a1, 3
/* B056B0 8008E510 03E00008 */  jr    $ra
/* B056B4 8008E514 01CF1021 */   addu  $v0, $t6, $t7
.L8008E518:
/* B056B8 8008E518 03E00008 */  jr    $ra
/* B056BC 8008E51C 00601025 */   move  $v0, $v1

glabel func_8008E520
/* B056C0 8008E520 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B056C4 8008E524 AFA60028 */  sw    $a2, 0x28($sp)
/* B056C8 8008E528 00063400 */  sll   $a2, $a2, 0x10
/* B056CC 8008E52C 00063403 */  sra   $a2, $a2, 0x10
/* B056D0 8008E530 AFBF0014 */  sw    $ra, 0x14($sp)
/* B056D4 8008E534 14A00005 */  bnez  $a1, .L8008E54C
/* B056D8 8008E538 AFA7002C */   sw    $a3, 0x2c($sp)
/* B056DC 8008E53C 3C01BF80 */  li    $at, 0xBF800000 # 0.000000
/* B056E0 8008E540 44810000 */  mtc1  $at, $f0
/* B056E4 8008E544 1000002E */  b     .L8008E600
/* B056E8 8008E548 8FBF0014 */   lw    $ra, 0x14($sp)
.L8008E54C:
/* B056EC 8008E54C 8CA30004 */  lw    $v1, 4($a1)
/* B056F0 8008E550 3C198016 */  lui   $t9, %hi(gSegments)
/* B056F4 8008E554 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B056F8 8008E558 00037100 */  sll   $t6, $v1, 4
/* B056FC 8008E55C 000E7F02 */  srl   $t7, $t6, 0x1c
/* B05700 8008E560 000FC080 */  sll   $t8, $t7, 2
/* B05704 8008E564 0338C821 */  addu  $t9, $t9, $t8
/* B05708 8008E568 8F396FA8 */  lw    $t9, %lo(gSegments)($t9)
/* B0570C 8008E56C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B05710 8008E570 00614024 */  and   $t0, $v1, $at
/* B05714 8008E574 00064880 */  sll   $t1, $a2, 2
/* B05718 8008E578 3C018000 */  lui   $at, 0x8000
/* B0571C 8008E57C 01264823 */  subu  $t1, $t1, $a2
/* B05720 8008E580 03281021 */  addu  $v0, $t9, $t0
/* B05724 8008E584 00411021 */  addu  $v0, $v0, $at
/* B05728 8008E588 00094840 */  sll   $t1, $t1, 1
/* B0572C 8008E58C 01221021 */  addu  $v0, $t1, $v0
/* B05730 8008E590 844A0000 */  lh    $t2, ($v0)
/* B05734 8008E594 844B0004 */  lh    $t3, 4($v0)
/* B05738 8008E598 C4880024 */  lwc1  $f8, 0x24($a0)
/* B0573C 8008E59C 448A2000 */  mtc1  $t2, $f4
/* B05740 8008E5A0 448B5000 */  mtc1  $t3, $f10
/* B05744 8008E5A4 C492002C */  lwc1  $f18, 0x2c($a0)
/* B05748 8008E5A8 468021A0 */  cvt.s.w $f6, $f4
/* B0574C 8008E5AC 46805420 */  cvt.s.w $f16, $f10
/* B05750 8008E5B0 46083301 */  sub.s $f12, $f6, $f8
/* B05754 8008E5B4 46128381 */  sub.s $f14, $f16, $f18
/* B05758 8008E5B8 E7AC001C */  swc1  $f12, 0x1c($sp)
/* B0575C 8008E5BC 0C03F494 */  jal   func_800FD250
/* B05760 8008E5C0 E7AE0018 */   swc1  $f14, 0x18($sp)
/* B05764 8008E5C4 3C018014 */  lui   $at, %hi(D_8013E760)
/* B05768 8008E5C8 C424E760 */  lwc1  $f4, %lo(D_8013E760)($at)
/* B0576C 8008E5CC C7AC001C */  lwc1  $f12, 0x1c($sp)
/* B05770 8008E5D0 C7AE0018 */  lwc1  $f14, 0x18($sp)
/* B05774 8008E5D4 46040182 */  mul.s $f6, $f0, $f4
/* B05778 8008E5D8 8FAE002C */  lw    $t6, 0x2c($sp)
/* B0577C 8008E5DC 460C6282 */  mul.s $f10, $f12, $f12
/* B05780 8008E5E0 00000000 */  nop   
/* B05784 8008E5E4 460E7402 */  mul.s $f16, $f14, $f14
/* B05788 8008E5E8 4600320D */  trunc.w.s $f8, $f6
/* B0578C 8008E5EC 46105000 */  add.s $f0, $f10, $f16
/* B05790 8008E5F0 440D4000 */  mfc1  $t5, $f8
/* B05794 8008E5F4 00000000 */  nop   
/* B05798 8008E5F8 A5CD0000 */  sh    $t5, ($t6)
/* B0579C 8008E5FC 8FBF0014 */  lw    $ra, 0x14($sp)
.L8008E600:
/* B057A0 8008E600 27BD0020 */  addiu $sp, $sp, 0x20
/* B057A4 8008E604 03E00008 */  jr    $ra
/* B057A8 8008E608 00000000 */   nop   

glabel func_8008E60C
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
