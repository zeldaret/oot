.late_rodata
glabel D_80B37BC0
 .word 0x3E333333

.text
glabel func_80B365A8
/* 028F8 80B365A8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 028FC 80B365AC AFB00028 */  sw      $s0, 0x0028($sp)
/* 02900 80B365B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02904 80B365B4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 02908 80B365B8 3C040600 */  lui     $a0, %hi(D_060057A0)                ## $a0 = 06000000
/* 0290C 80B365BC AFA5003C */  sw      $a1, 0x003C($sp)
/* 02910 80B365C0 0C028800 */  jal     Animation_LastFrame

/* 02914 80B365C4 248457A0 */  addiu   $a0, $a0, %lo(D_060057A0)           ## $a0 = 060057A0
/* 02918 80B365C8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0291C 80B365CC 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 02920 80B365D0 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 02924 80B365D4 468021A0 */  cvt.s.w $f6, $f4
/* 02928 80B365D8 3C050600 */  lui     $a1, %hi(D_060057A0)                ## $a1 = 06000000
/* 0292C 80B365DC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 02930 80B365E0 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 02934 80B365E4 24A557A0 */  addiu   $a1, $a1, %lo(D_060057A0)           ## $a1 = 060057A0
/* 02938 80B365E8 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 0293C 80B365EC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 02940 80B365F0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02944 80B365F4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02948 80B365F8 0C029468 */  jal     Animation_Change

/* 0294C 80B365FC E7A80018 */  swc1    $f8, 0x0018($sp)
/* 02950 80B36600 8FAF003C */  lw      $t7, 0x003C($sp)
/* 02954 80B36604 861902FE */  lh      $t9, 0x02FE($s0)           ## 000002FE
/* 02958 80B36608 8608008A */  lh      $t0, 0x008A($s0)           ## 0000008A
/* 0295C 80B3660C 8DE21C44 */  lw      $v0, 0x1C44($t7)           ## 00001C44
/* 02960 80B36610 845800B6 */  lh      $t8, 0x00B6($v0)           ## 000000B6
/* 02964 80B36614 03191821 */  addu    $v1, $t8, $t9
/* 02968 80B36618 00031C00 */  sll     $v1, $v1, 16
/* 0296C 80B3661C 00031C03 */  sra     $v1, $v1, 16
/* 02970 80B36620 00682023 */  subu    $a0, $v1, $t0
/* 02974 80B36624 00042400 */  sll     $a0, $a0, 16
/* 02978 80B36628 00042403 */  sra     $a0, $a0, 16
/* 0297C 80B3662C 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 02980 80B36630 A7A30036 */  sh      $v1, 0x0036($sp)
/* 02984 80B36634 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 02988 80B36638 87A30036 */  lh      $v1, 0x0036($sp)
/* 0298C 80B3663C 24093E80 */  addiu   $t1, $zero, 0x3E80         ## $t1 = 00003E80
/* 02990 80B36640 4600503C */  c.lt.s  $f10, $f0
/* 02994 80B36644 00000000 */  nop
/* 02998 80B36648 45020004 */  bc1fl   .L80B3665C
/* 0299C 80B3664C 860A008A */  lh      $t2, 0x008A($s0)           ## 0000008A
/* 029A0 80B36650 1000001B */  beq     $zero, $zero, .L80B366C0
/* 029A4 80B36654 A60902FE */  sh      $t1, 0x02FE($s0)           ## 000002FE
/* 029A8 80B36658 860A008A */  lh      $t2, 0x008A($s0)           ## 0000008A
.L80B3665C:
/* 029AC 80B3665C 006A2023 */  subu    $a0, $v1, $t2
/* 029B0 80B36660 00042400 */  sll     $a0, $a0, 16
/* 029B4 80B36664 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 029B8 80B36668 00042403 */  sra     $a0, $a0, 16
/* 029BC 80B3666C 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 029C0 80B36670 240BC180 */  addiu   $t3, $zero, 0xC180         ## $t3 = FFFFC180
/* 029C4 80B36674 4610003C */  c.lt.s  $f0, $f16
/* 029C8 80B36678 00000000 */  nop
/* 029CC 80B3667C 45000003 */  bc1f    .L80B3668C
/* 029D0 80B36680 00000000 */  nop
/* 029D4 80B36684 1000000E */  beq     $zero, $zero, .L80B366C0
/* 029D8 80B36688 A60B02FE */  sh      $t3, 0x02FE($s0)           ## 000002FE
.L80B3668C:
/* 029DC 80B3668C 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 029E0 80B36690 00000000 */  nop
/* 029E4 80B36694 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 029E8 80B36698 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 029EC 80B3669C 240C3E80 */  addiu   $t4, $zero, 0x3E80         ## $t4 = 00003E80
/* 029F0 80B366A0 240DC180 */  addiu   $t5, $zero, 0xC180         ## $t5 = FFFFC180
/* 029F4 80B366A4 4600903C */  c.lt.s  $f18, $f0
/* 029F8 80B366A8 00000000 */  nop
/* 029FC 80B366AC 45020004 */  bc1fl   .L80B366C0
/* 02A00 80B366B0 A60D02FE */  sh      $t5, 0x02FE($s0)           ## 000002FE
/* 02A04 80B366B4 10000002 */  beq     $zero, $zero, .L80B366C0
/* 02A08 80B366B8 A60C02FE */  sh      $t4, 0x02FE($s0)           ## 000002FE
/* 02A0C 80B366BC A60D02FE */  sh      $t5, 0x02FE($s0)           ## 000002FE
.L80B366C0:
/* 02A10 80B366C0 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 02A14 80B366C4 44810000 */  mtc1    $at, $f0                   ## $f0 = 6.00
/* 02A18 80B366C8 3C0180B3 */  lui     $at, %hi(D_80B37BC0)       ## $at = 80B30000
/* 02A1C 80B366CC 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 02A20 80B366D0 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 02A24 80B366D4 C4247BC0 */  lwc1    $f4, %lo(D_80B37BC0)($at)
/* 02A28 80B366D8 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 02A2C 80B366DC A60E0032 */  sh      $t6, 0x0032($s0)           ## 00000032
/* 02A30 80B366E0 46040182 */  mul.s   $f6, $f0, $f4
/* 02A34 80B366E4 E60802EC */  swc1    $f8, 0x02EC($s0)           ## 000002EC
/* 02A38 80B366E8 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 02A3C 80B366EC E60601A4 */  swc1    $f6, 0x01A4($s0)           ## 000001A4
/* 02A40 80B366F0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 02A44 80B366F4 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 02A48 80B366F8 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02A4C 80B366FC 44819000 */  mtc1    $at, $f18                  ## $f18 = 5.00
/* 02A50 80B36700 460A0402 */  mul.s   $f16, $f0, $f10
/* 02A54 80B36704 2419000E */  addiu   $t9, $zero, 0x000E         ## $t9 = 0000000E
/* 02A58 80B36708 3C0580B3 */  lui     $a1, %hi(func_80B36740)    ## $a1 = 80B30000
/* 02A5C 80B3670C AE1902D4 */  sw      $t9, 0x02D4($s0)           ## 000002D4
/* 02A60 80B36710 24A56740 */  addiu   $a1, $a1, %lo(func_80B36740) ## $a1 = 80B36740
/* 02A64 80B36714 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A68 80B36718 46128100 */  add.s   $f4, $f16, $f18
/* 02A6C 80B3671C 4600218D */  trunc.w.s $f6, $f4
/* 02A70 80B36720 44183000 */  mfc1    $t8, $f6
/* 02A74 80B36724 0C2CCF2C */  jal     func_80B33CB0
/* 02A78 80B36728 AE1802E8 */  sw      $t8, 0x02E8($s0)           ## 000002E8
/* 02A7C 80B3672C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02A80 80B36730 8FB00028 */  lw      $s0, 0x0028($sp)
/* 02A84 80B36734 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 02A88 80B36738 03E00008 */  jr      $ra
/* 02A8C 80B3673C 00000000 */  nop
