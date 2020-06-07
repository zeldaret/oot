.late_rodata
glabel D_80A6D5DC
    .float 0.4

glabel D_80A6D5E0
    .float 0.8

.text
glabel func_80A6C760
/* 01510 80A6C760 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01514 80A6C764 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01518 80A6C768 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0151C 80A6C76C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01520 80A6C770 0C29AF5F */  jal     func_80A6BD7C
/* 01524 80A6C774 AFA50044 */  sw      $a1, 0x0044($sp)
/* 01528 80A6C778 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 0152C 80A6C77C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 01530 80A6C780 AFA40030 */  sw      $a0, 0x0030($sp)
/* 01534 80A6C784 50400052 */  beql    $v0, $zero, .L80A6C8D0
/* 01538 80A6C788 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0153C 80A6C78C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01540 80A6C790 00000000 */  nop
/* 01544 80A6C794 3C0180A7 */  lui     $at, %hi(D_80A6D5DC)       ## $at = 80A70000
/* 01548 80A6C798 C424D5DC */  lwc1    $f4, %lo(D_80A6D5DC)($at)
/* 0154C 80A6C79C 3C0180A7 */  lui     $at, %hi(D_80A6D5E0)       ## $at = 80A70000
/* 01550 80A6C7A0 4604003C */  c.lt.s  $f0, $f4
/* 01554 80A6C7A4 00000000 */  nop
/* 01558 80A6C7A8 45000003 */  bc1f    .L80A6C7B8
/* 0155C 80A6C7AC 00000000 */  nop
/* 01560 80A6C7B0 10000024 */  beq     $zero, $zero, .L80A6C844
/* 01564 80A6C7B4 AE000150 */  sw      $zero, 0x0150($s0)         ## 00000150
.L80A6C7B8:
/* 01568 80A6C7B8 C426D5E0 */  lwc1    $f6, %lo(D_80A6D5E0)($at)
/* 0156C 80A6C7BC 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 01570 80A6C7C0 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 01574 80A6C7C4 4606003C */  c.lt.s  $f0, $f6
/* 01578 80A6C7C8 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 0157C 80A6C7CC 24042805 */  addiu   $a0, $zero, 0x2805         ## $a0 = 00002805
/* 01580 80A6C7D0 26050204 */  addiu   $a1, $s0, 0x0204           ## $a1 = 00000204
/* 01584 80A6C7D4 45000012 */  bc1f    .L80A6C820
/* 01588 80A6C7D8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 0158C 80A6C7DC 960F01E4 */  lhu     $t7, 0x01E4($s0)           ## 000001E4
/* 01590 80A6C7E0 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 01594 80A6C7E4 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01598 80A6C7E8 3C198013 */  lui     $t9, %hi(D_801333E8)
/* 0159C 80A6C7EC 35F80020 */  ori     $t8, $t7, 0x0020           ## $t8 = 00000020
/* 015A0 80A6C7F0 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 015A4 80A6C7F4 AE0E0150 */  sw      $t6, 0x0150($s0)           ## 00000150
/* 015A8 80A6C7F8 A61801E4 */  sh      $t8, 0x01E4($s0)           ## 000001E4
/* 015AC 80A6C7FC 273933E8 */  addiu   $t9, %lo(D_801333E8)
/* 015B0 80A6C800 AFB90014 */  sw      $t9, 0x0014($sp)
/* 015B4 80A6C804 AFA70010 */  sw      $a3, 0x0010($sp)
/* 015B8 80A6C808 24042816 */  addiu   $a0, $zero, 0x2816         ## $a0 = 00002816
/* 015BC 80A6C80C 26050204 */  addiu   $a1, $s0, 0x0204           ## $a1 = 00000204
/* 015C0 80A6C810 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 015C4 80A6C814 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 015C8 80A6C818 1000000A */  beq     $zero, $zero, .L80A6C844
/* 015CC 80A6C81C 00000000 */  nop
.L80A6C820:
/* 015D0 80A6C820 960901E4 */  lhu     $t1, 0x01E4($s0)           ## 000001E4
/* 015D4 80A6C824 3C0B8013 */  lui     $t3, %hi(D_801333E8)
/* 015D8 80A6C828 AE080150 */  sw      $t0, 0x0150($s0)           ## 00000150
/* 015DC 80A6C82C 352A0020 */  ori     $t2, $t1, 0x0020           ## $t2 = 00000020
/* 015E0 80A6C830 A60A01E4 */  sh      $t2, 0x01E4($s0)           ## 000001E4
/* 015E4 80A6C834 256B33E8 */  addiu   $t3, %lo(D_801333E8)
/* 015E8 80A6C838 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 015EC 80A6C83C 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 015F0 80A6C840 AFA70010 */  sw      $a3, 0x0010($sp)
.L80A6C844:
/* 015F4 80A6C844 0C29ACC3 */  jal     func_80A6B30C
/* 015F8 80A6C848 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015FC 80A6C84C E7A00034 */  swc1    $f0, 0x0034($sp)
/* 01600 80A6C850 8E0C0150 */  lw      $t4, 0x0150($s0)           ## 00000150
/* 01604 80A6C854 3C0480A7 */  lui     $a0, %hi(D_80A6D370)       ## $a0 = 80A70000
/* 01608 80A6C858 000C6880 */  sll     $t5, $t4,  2
/* 0160C 80A6C85C 008D2021 */  addu    $a0, $a0, $t5
/* 01610 80A6C860 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01614 80A6C864 8C84D370 */  lw      $a0, %lo(D_80A6D370)($a0)
/* 01618 80A6C868 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 0161C 80A6C86C 8E0E0150 */  lw      $t6, 0x0150($s0)           ## 00000150
/* 01620 80A6C870 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01624 80A6C874 468042A0 */  cvt.s.w $f10, $f8
/* 01628 80A6C878 3C0580A7 */  lui     $a1, %hi(D_80A6D370)       ## $a1 = 80A70000
/* 0162C 80A6C87C 000E7880 */  sll     $t7, $t6,  2
/* 01630 80A6C880 00AF2821 */  addu    $a1, $a1, $t7
/* 01634 80A6C884 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 01638 80A6C888 44070000 */  mfc1    $a3, $f0
/* 0163C 80A6C88C AFB80014 */  sw      $t8, 0x0014($sp)
/* 01640 80A6C890 8CA5D370 */  lw      $a1, %lo(D_80A6D370)($a1)
/* 01644 80A6C894 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 01648 80A6C898 8FA40030 */  lw      $a0, 0x0030($sp)
/* 0164C 80A6C89C 8FA60034 */  lw      $a2, 0x0034($sp)
/* 01650 80A6C8A0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01654 80A6C8A4 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 01658 80A6C8A8 961901E4 */  lhu     $t9, 0x01E4($s0)           ## 000001E4
/* 0165C 80A6C8AC 3329FFFE */  andi    $t1, $t9, 0xFFFE           ## $t1 = 00000000
/* 01660 80A6C8B0 312BFFFD */  andi    $t3, $t1, 0xFFFD           ## $t3 = 00000000
/* 01664 80A6C8B4 A60901E4 */  sh      $t1, 0x01E4($s0)           ## 000001E4
/* 01668 80A6C8B8 316DFFF7 */  andi    $t5, $t3, 0xFFF7           ## $t5 = 00000000
/* 0166C 80A6C8BC A60B01E4 */  sh      $t3, 0x01E4($s0)           ## 000001E4
/* 01670 80A6C8C0 A60D01E4 */  sh      $t5, 0x01E4($s0)           ## 000001E4
/* 01674 80A6C8C4 31AEFFEF */  andi    $t6, $t5, 0xFFEF           ## $t6 = 00000000
/* 01678 80A6C8C8 A60E01E4 */  sh      $t6, 0x01E4($s0)           ## 000001E4
/* 0167C 80A6C8CC 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A6C8D0:
/* 01680 80A6C8D0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01684 80A6C8D4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 01688 80A6C8D8 03E00008 */  jr      $ra
/* 0168C 80A6C8DC 00000000 */  nop
