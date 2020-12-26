.late_rodata
glabel D_8013CE40
    .float 57.295776

glabel D_8013CE44
    .float 182.04167

.text
glabel func_8007C704
/* AF38A4 8007C704 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AF38A8 8007C708 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF38AC 8007C70C C48A0008 */  lwc1  $f10, 8($a0)
/* AF38B0 8007C710 C4A80008 */  lwc1  $f8, 8($a1)
/* AF38B4 8007C714 C4860000 */  lwc1  $f6, ($a0)
/* AF38B8 8007C718 C4A40000 */  lwc1  $f4, ($a1)
/* AF38BC 8007C71C 460A4381 */  sub.s $f14, $f8, $f10
/* AF38C0 8007C720 0C03F494 */  jal   Math_FAtan2F
/* AF38C4 8007C724 46062301 */   sub.s $f12, $f4, $f6
/* AF38C8 8007C728 3C018014 */  lui   $at, %hi(D_8013CE40)
/* AF38CC 8007C72C C430CE40 */  lwc1  $f16, %lo(D_8013CE40)($at)
/* AF38D0 8007C730 3C018014 */  lui   $at, %hi(D_8013CE44)
/* AF38D4 8007C734 C424CE44 */  lwc1  $f4, %lo(D_8013CE44)($at)
/* AF38D8 8007C738 46100482 */  mul.s $f18, $f0, $f16
/* AF38DC 8007C73C 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AF38E0 8007C740 44814000 */  mtc1  $at, $f8
/* AF38E4 8007C744 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF38E8 8007C748 27BD0018 */  addiu $sp, $sp, 0x18
/* AF38EC 8007C74C 46049182 */  mul.s $f6, $f18, $f4
/* AF38F0 8007C750 46083280 */  add.s $f10, $f6, $f8
/* AF38F4 8007C754 4600540D */  trunc.w.s $f16, $f10
/* AF38F8 8007C758 44028000 */  mfc1  $v0, $f16
/* AF38FC 8007C75C 00000000 */  nop   
/* AF3900 8007C760 00021400 */  sll   $v0, $v0, 0x10
/* AF3904 8007C764 03E00008 */  jr    $ra
/* AF3908 8007C768 00021403 */   sra   $v0, $v0, 0x10

