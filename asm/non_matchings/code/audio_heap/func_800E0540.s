glabel func_800E0540
/* B576E0 800E0540 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B576E4 800E0544 3C0E8017 */  lui   $t6, %hi(D_80171EDC) # $t6, 0x8017
/* B576E8 800E0548 8DCE1EDC */  lw    $t6, %lo(D_80171EDC)($t6)
/* B576EC 800E054C AFA40020 */  sw    $a0, 0x20($sp)
/* B576F0 800E0550 AFBF0014 */  sw    $ra, 0x14($sp)
/* B576F4 800E0554 AFA50024 */  sw    $a1, 0x24($sp)
/* B576F8 800E0558 3C048017 */  lui   $a0, %hi(D_80171ED0) # $a0, 0x8017
/* B576FC 800E055C AFA60028 */  sw    $a2, 0x28($sp)
/* B57700 800E0560 24841ED0 */  addiu $a0, %lo(D_80171ED0) # addiu $a0, $a0, 0x1ed0
/* B57704 800E0564 00C02825 */  move  $a1, $a2
/* B57708 800E0568 0C0378F7 */  jal   func_800DE3DC
/* B5770C 800E056C AFAE0018 */   sw    $t6, 0x18($sp)
/* B57710 800E0570 8FAF0018 */  lw    $t7, 0x18($sp)
/* B57714 800E0574 3C198017 */  lui   $t9, %hi(gAudioContext) # $t9, 0x8017
/* B57718 800E0578 2739F180 */  addiu $t9, %lo(gAudioContext) # addiu $t9, $t9, -0xe80
/* B5771C 800E057C 000FC080 */  sll   $t8, $t7, 2
/* B57720 800E0580 030FC023 */  subu  $t8, $t8, $t7
/* B57724 800E0584 0018C080 */  sll   $t8, $t8, 2
/* B57728 800E0588 03191821 */  addu  $v1, $t8, $t9
/* B5772C 800E058C 14400003 */  bnez  $v0, .L800E059C
/* B57730 800E0590 AC622D60 */   sw    $v0, 0x2d60($v1)
/* B57734 800E0594 10000007 */  b     .L800E05B4
/* B57738 800E0598 00001025 */   move  $v0, $zero
.L800E059C:
/* B5773C 800E059C 8FA80020 */  lw    $t0, 0x20($sp)
/* B57740 800E05A0 8FA90024 */  lw    $t1, 0x24($sp)
/* B57744 800E05A4 8FAA0028 */  lw    $t2, 0x28($sp)
/* B57748 800E05A8 A4682D68 */  sh    $t0, 0x2d68($v1)
/* B5774C 800E05AC A4692D6A */  sh    $t1, 0x2d6a($v1)
/* B57750 800E05B0 AC6A2D64 */  sw    $t2, 0x2d64($v1)
.L800E05B4:
/* B57754 800E05B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B57758 800E05B8 27BD0020 */  addiu $sp, $sp, 0x20
/* B5775C 800E05BC 03E00008 */  jr    $ra
/* B57760 800E05C0 00000000 */   nop   

