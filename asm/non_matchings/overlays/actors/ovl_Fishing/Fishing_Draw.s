.late_rodata
glabel D_80B7B758
    .float 3.14159274101

glabel D_80B7B75C
    .float 3.14159274101

glabel D_80B7B760
    .float 3.14159274101

glabel D_80B7B764
    .float 9.58738019108e-05

glabel D_80B7B768
    .float 1.57079637051

glabel D_80B7B76C
    .float 0.01

glabel D_80B7B770
    .float 9.58738019108e-05

glabel D_80B7B774
    .float -1.57079637051

.text
glabel Fishing_Draw
/* 0C444 80B75DE4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0C448 80B75DE8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0C44C 80B75DEC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0C450 80B75DF0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0C454 80B75DF4 AFA50034 */  sw      $a1, 0x0034($sp)
/* 0C458 80B75DF8 0C024F46 */  jal     func_80093D18
/* 0C45C 80B75DFC 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 0C460 80B75E00 C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 00000024
/* 0C464 80B75E04 C60E0028 */  lwc1    $f14, 0x0028($s0)          ## 00000028
/* 0C468 80B75E08 8E06002C */  lw      $a2, 0x002C($s0)           ## 0000002C
/* 0C46C 80B75E0C 0C034261 */  jal     Matrix_Translate
/* 0C470 80B75E10 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0C474 80B75E14 860F0162 */  lh      $t7, 0x0162($s0)           ## 00000162
/* 0C478 80B75E18 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 0C47C 80B75E1C 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 0C480 80B75E20 44814000 */  mtc1    $at, $f8                   ## $f8 = 32768.00
/* 0C484 80B75E24 01F8C821 */  addu    $t9, $t7, $t8
/* 0C488 80B75E28 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 0C48C 80B75E2C 3C0180B8 */  lui     $at, %hi(D_80B7B758)       ## $at = 80B80000
/* 0C490 80B75E30 C430B758 */  lwc1    $f16, %lo(D_80B7B758)($at)
/* 0C494 80B75E34 468021A0 */  cvt.s.w $f6, $f4
/* 0C498 80B75E38 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0C49C 80B75E3C 46083283 */  div.s   $f10, $f6, $f8
/* 0C4A0 80B75E40 46105302 */  mul.s   $f12, $f10, $f16
/* 0C4A4 80B75E44 0C034348 */  jal     Matrix_RotateY
/* 0C4A8 80B75E48 00000000 */  nop
/* 0C4AC 80B75E4C 86080160 */  lh      $t0, 0x0160($s0)           ## 00000160
/* 0C4B0 80B75E50 860900B4 */  lh      $t1, 0x00B4($s0)           ## 000000B4
/* 0C4B4 80B75E54 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 0C4B8 80B75E58 44813000 */  mtc1    $at, $f6                   ## $f6 = 32768.00
/* 0C4BC 80B75E5C 01095021 */  addu    $t2, $t0, $t1
/* 0C4C0 80B75E60 448A9000 */  mtc1    $t2, $f18                  ## $f18 = 0.00
/* 0C4C4 80B75E64 3C0180B8 */  lui     $at, %hi(D_80B7B75C)       ## $at = 80B80000
/* 0C4C8 80B75E68 C42AB75C */  lwc1    $f10, %lo(D_80B7B75C)($at)
/* 0C4CC 80B75E6C 46809120 */  cvt.s.w $f4, $f18
/* 0C4D0 80B75E70 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0C4D4 80B75E74 46062203 */  div.s   $f8, $f4, $f6
/* 0C4D8 80B75E78 460A4302 */  mul.s   $f12, $f8, $f10
/* 0C4DC 80B75E7C 0C0342DC */  jal     Matrix_RotateX
/* 0C4E0 80B75E80 00000000 */  nop
/* 0C4E4 80B75E84 860B0164 */  lh      $t3, 0x0164($s0)           ## 00000164
/* 0C4E8 80B75E88 860C00B8 */  lh      $t4, 0x00B8($s0)           ## 000000B8
/* 0C4EC 80B75E8C 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 0C4F0 80B75E90 44812000 */  mtc1    $at, $f4                   ## $f4 = 32768.00
/* 0C4F4 80B75E94 016C6821 */  addu    $t5, $t3, $t4
/* 0C4F8 80B75E98 448D8000 */  mtc1    $t5, $f16                  ## $f16 = 0.00
/* 0C4FC 80B75E9C 3C0180B8 */  lui     $at, %hi(D_80B7B760)       ## $at = 80B80000
/* 0C500 80B75EA0 C428B760 */  lwc1    $f8, %lo(D_80B7B760)($at)
/* 0C504 80B75EA4 468084A0 */  cvt.s.w $f18, $f16
/* 0C508 80B75EA8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0C50C 80B75EAC 46049183 */  div.s   $f6, $f18, $f4
/* 0C510 80B75EB0 46083302 */  mul.s   $f12, $f6, $f8
/* 0C514 80B75EB4 0C0343B5 */  jal     Matrix_RotateZ
/* 0C518 80B75EB8 00000000 */  nop
/* 0C51C 80B75EBC C60C0050 */  lwc1    $f12, 0x0050($s0)          ## 00000050
/* 0C520 80B75EC0 C60E0054 */  lwc1    $f14, 0x0054($s0)          ## 00000054
/* 0C524 80B75EC4 8E060058 */  lw      $a2, 0x0058($s0)           ## 00000058
/* 0C528 80B75EC8 0C0342A3 */  jal     Matrix_Scale
/* 0C52C 80B75ECC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0C530 80B75ED0 920E0150 */  lbu     $t6, 0x0150($s0)           ## 00000150
/* 0C534 80B75ED4 3C06453B */  lui     $a2, 0x453B                ## $a2 = 453B0000
/* 0C538 80B75ED8 34C68000 */  ori     $a2, $a2, 0x8000           ## $a2 = 453B8000
/* 0C53C 80B75EDC 55C0002B */  bnel    $t6, $zero, .L80B75F8C
/* 0C540 80B75EE0 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 0C544 80B75EE4 860F016C */  lh      $t7, 0x016C($s0)           ## 0000016C
/* 0C548 80B75EE8 3C0180B8 */  lui     $at, %hi(D_80B7B764)       ## $at = 80B80000
/* 0C54C 80B75EEC C432B764 */  lwc1    $f18, %lo(D_80B7B764)($at)
/* 0C550 80B75EF0 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 0C554 80B75EF4 3C0180B8 */  lui     $at, %hi(D_80B7B768)       ## $at = 80B80000
/* 0C558 80B75EF8 C426B768 */  lwc1    $f6, %lo(D_80B7B768)($at)
/* 0C55C 80B75EFC 46805420 */  cvt.s.w $f16, $f10
/* 0C560 80B75F00 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0C564 80B75F04 46128102 */  mul.s   $f4, $f16, $f18
/* 0C568 80B75F08 0C034348 */  jal     Matrix_RotateY
/* 0C56C 80B75F0C 46062301 */  sub.s   $f12, $f4, $f6
/* 0C570 80B75F10 8618016C */  lh      $t8, 0x016C($s0)           ## 0000016C
/* 0C574 80B75F14 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0C578 80B75F18 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 0C57C 80B75F1C 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 0C580 80B75F20 3C0180B8 */  lui     $at, %hi(D_80B7B76C)       ## $at = 80B80000
/* 0C584 80B75F24 C424B76C */  lwc1    $f4, %lo(D_80B7B76C)($at)
/* 0C588 80B75F28 468042A0 */  cvt.s.w $f10, $f8
/* 0C58C 80B75F2C 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 0C590 80B75F30 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0C594 80B75F34 46006386 */  mov.s   $f14, $f12
/* 0C598 80B75F38 46105482 */  mul.s   $f18, $f10, $f16
/* 0C59C 80B75F3C 00000000 */  nop
/* 0C5A0 80B75F40 46049182 */  mul.s   $f6, $f18, $f4
/* 0C5A4 80B75F44 44063000 */  mfc1    $a2, $f6
/* 0C5A8 80B75F48 0C034261 */  jal     Matrix_Translate
/* 0C5AC 80B75F4C 00000000 */  nop
/* 0C5B0 80B75F50 8E0501DC */  lw      $a1, 0x01DC($s0)           ## 000001DC
/* 0C5B4 80B75F54 8E0601F8 */  lw      $a2, 0x01F8($s0)           ## 000001F8
/* 0C5B8 80B75F58 920701DA */  lbu     $a3, 0x01DA($s0)           ## 000001DA
/* 0C5BC 80B75F5C 3C1980B7 */  lui     $t9, %hi(func_80B75BAC)    ## $t9 = 80B70000
/* 0C5C0 80B75F60 3C0880B7 */  lui     $t0, %hi(func_80B75CE0)    ## $t0 = 80B70000
/* 0C5C4 80B75F64 25085CE0 */  addiu   $t0, $t0, %lo(func_80B75CE0) ## $t0 = 80B75CE0
/* 0C5C8 80B75F68 27395BAC */  addiu   $t9, $t9, %lo(func_80B75BAC) ## $t9 = 80B75BAC
/* 0C5CC 80B75F6C AFB90010 */  sw      $t9, 0x0010($sp)
/* 0C5D0 80B75F70 AFA80014 */  sw      $t0, 0x0014($sp)
/* 0C5D4 80B75F74 AFB00018 */  sw      $s0, 0x0018($sp)
/* 0C5D8 80B75F78 0C0286B2 */  jal     SkelAnime_DrawFlexOpa
/* 0C5DC 80B75F7C 8FA40034 */  lw      $a0, 0x0034($sp)
/* 0C5E0 80B75F80 10000025 */  beq     $zero, $zero, .L80B76018
/* 0C5E4 80B75F84 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0C5E8 80B75F88 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
.L80B75F8C:
/* 0C5EC 80B75F8C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0C5F0 80B75F90 0C034261 */  jal     Matrix_Translate
/* 0C5F4 80B75F94 46006386 */  mov.s   $f14, $f12
/* 0C5F8 80B75F98 8609016C */  lh      $t1, 0x016C($s0)           ## 0000016C
/* 0C5FC 80B75F9C 3C0180B8 */  lui     $at, %hi(D_80B7B770)       ## $at = 80B80000
/* 0C600 80B75FA0 C430B770 */  lwc1    $f16, %lo(D_80B7B770)($at)
/* 0C604 80B75FA4 44894000 */  mtc1    $t1, $f8                   ## $f8 = 0.00
/* 0C608 80B75FA8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0C60C 80B75FAC 468042A0 */  cvt.s.w $f10, $f8
/* 0C610 80B75FB0 46105302 */  mul.s   $f12, $f10, $f16
/* 0C614 80B75FB4 0C034348 */  jal     Matrix_RotateY
/* 0C618 80B75FB8 00000000 */  nop
/* 0C61C 80B75FBC 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 0C620 80B75FC0 3C06C53B */  lui     $a2, 0xC53B                ## $a2 = C53B0000
/* 0C624 80B75FC4 34C68000 */  ori     $a2, $a2, 0x8000           ## $a2 = C53B8000
/* 0C628 80B75FC8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0C62C 80B75FCC 0C034261 */  jal     Matrix_Translate
/* 0C630 80B75FD0 46006386 */  mov.s   $f14, $f12
/* 0C634 80B75FD4 3C0180B8 */  lui     $at, %hi(D_80B7B774)       ## $at = 80B80000
/* 0C638 80B75FD8 C42CB774 */  lwc1    $f12, %lo(D_80B7B774)($at)
/* 0C63C 80B75FDC 0C034348 */  jal     Matrix_RotateY
/* 0C640 80B75FE0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0C644 80B75FE4 8E0501DC */  lw      $a1, 0x01DC($s0)           ## 000001DC
/* 0C648 80B75FE8 8E0601F8 */  lw      $a2, 0x01F8($s0)           ## 000001F8
/* 0C64C 80B75FEC 920701DA */  lbu     $a3, 0x01DA($s0)           ## 000001DA
/* 0C650 80B75FF0 3C0A80B7 */  lui     $t2, %hi(func_80B75D20)    ## $t2 = 80B70000
/* 0C654 80B75FF4 3C0B80B7 */  lui     $t3, %hi(func_80B75DA4)    ## $t3 = 80B70000
/* 0C658 80B75FF8 256B5DA4 */  addiu   $t3, $t3, %lo(func_80B75DA4) ## $t3 = 80B75DA4
/* 0C65C 80B75FFC 254A5D20 */  addiu   $t2, $t2, %lo(func_80B75D20) ## $t2 = 80B75D20
/* 0C660 80B76000 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 0C664 80B76004 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 0C668 80B76008 AFB00018 */  sw      $s0, 0x0018($sp)
/* 0C66C 80B7600C 0C0286B2 */  jal     SkelAnime_DrawFlexOpa
/* 0C670 80B76010 8FA40034 */  lw      $a0, 0x0034($sp)
/* 0C674 80B76014 8FBF002C */  lw      $ra, 0x002C($sp)
.L80B76018:
/* 0C678 80B76018 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0C67C 80B7601C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0C680 80B76020 03E00008 */  jr      $ra
/* 0C684 80B76024 00000000 */  nop
