.late_rodata
glabel D_808A44B4
    .float 1100.0

glabel D_808A44B8
    .float 16.384

.text
glabel func_808A3C8C
/* 004BC 808A3C8C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004C0 808A3C90 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 004C4 808A3C94 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 004C8 808A3C98 C486002C */  lwc1    $f6, 0x002C($a0)           ## 0000002C
/* 004CC 808A3C9C 3C01808A */  lui     $at, %hi(D_808A44B4)       ## $at = 808A0000
/* 004D0 808A3CA0 C444002C */  lwc1    $f4, 0x002C($v0)           ## 0000002C
/* 004D4 808A3CA4 C42A44B4 */  lwc1    $f10, %lo(D_808A44B4)($at)
/* 004D8 808A3CA8 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 004DC 808A3CAC 46062201 */  sub.s   $f8, $f4, $f6
/* 004E0 808A3CB0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 004E4 808A3CB4 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 004E8 808A3CB8 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 004EC 808A3CBC 46085001 */  sub.s   $f0, $f10, $f8
/* 004F0 808A3CC0 4602003C */  c.lt.s  $f0, $f2
/* 004F4 808A3CC4 00000000 */  nop
/* 004F8 808A3CC8 45020004 */  bc1fl   .L808A3CDC
/* 004FC 808A3CCC 44816000 */  mtc1    $at, $f12                  ## $f12 = 1000.00
/* 00500 808A3CD0 1000000B */  beq     $zero, $zero, .L808A3D00
/* 00504 808A3CD4 46001006 */  mov.s   $f0, $f2
/* 00508 808A3CD8 44816000 */  mtc1    $at, $f12                  ## $f12 = 1000.00
.L808A3CDC:
/* 0050C 808A3CDC 00000000 */  nop
/* 00510 808A3CE0 4600603C */  c.lt.s  $f12, $f0
/* 00514 808A3CE4 00000000 */  nop
/* 00518 808A3CE8 45020004 */  bc1fl   .L808A3CFC
/* 0051C 808A3CEC 46000086 */  mov.s   $f2, $f0
/* 00520 808A3CF0 10000002 */  beq     $zero, $zero, .L808A3CFC
/* 00524 808A3CF4 46006086 */  mov.s   $f2, $f12
/* 00528 808A3CF8 46000086 */  mov.s   $f2, $f0
.L808A3CFC:
/* 0052C 808A3CFC 46001006 */  mov.s   $f0, $f2
.L808A3D00:
/* 00530 808A3D00 3C01808A */  lui     $at, %hi(D_808A44B8)       ## $at = 808A0000
/* 00534 808A3D04 C43044B8 */  lwc1    $f16, %lo(D_808A44B8)($at)
/* 00538 808A3D08 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 0053C 808A3D0C 46100482 */  mul.s   $f18, $f0, $f16
/* 00540 808A3D10 4600910D */  trunc.w.s $f4, $f18
/* 00544 808A3D14 440F2000 */  mfc1    $t7, $f4
/* 00548 808A3D18 00000000 */  nop
/* 0054C 808A3D1C A4CF00B8 */  sh      $t7, 0x00B8($a2)           ## 000000B8
/* 00550 808A3D20 8CE40790 */  lw      $a0, 0x0790($a3)           ## 00000790
/* 00554 808A3D24 0C0169DF */  jal     Camera_ChangeSettingDefaultFlags
/* 00558 808A3D28 AFA60018 */  sw      $a2, 0x0018($sp)
/* 0055C 808A3D2C 8FA60018 */  lw      $a2, 0x0018($sp)
/* 00560 808A3D30 84D8001C */  lh      $t8, 0x001C($a2)           ## 0000001C
/* 00564 808A3D34 53000005 */  beql    $t8, $zero, .L808A3D4C
/* 00568 808A3D38 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0056C 808A3D3C 84D900B8 */  lh      $t9, 0x00B8($a2)           ## 000000B8
/* 00570 808A3D40 00194023 */  subu    $t0, $zero, $t9
/* 00574 808A3D44 A4C800B8 */  sh      $t0, 0x00B8($a2)           ## 000000B8
/* 00578 808A3D48 8FBF0014 */  lw      $ra, 0x0014($sp)
.L808A3D4C:
/* 0057C 808A3D4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00580 808A3D50 03E00008 */  jr      $ra
/* 00584 808A3D54 00000000 */  nop
