.late_rodata
glabel D_80B37B8C
 .word 0x3E333333

.text
glabel func_80B34F28
/* 01278 80B34F28 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0127C 80B34F2C AFB00028 */  sw      $s0, 0x0028($sp)
/* 01280 80B34F30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01284 80B34F34 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01288 80B34F38 3C040600 */  lui     $a0, %hi(D_060057A0)                ## $a0 = 06000000
/* 0128C 80B34F3C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01290 80B34F40 248457A0 */  addiu   $a0, $a0, %lo(D_060057A0)           ## $a0 = 060057A0
/* 01294 80B34F44 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01298 80B34F48 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 0129C 80B34F4C 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 012A0 80B34F50 468021A0 */  cvt.s.w $f6, $f4
/* 012A4 80B34F54 3C050600 */  lui     $a1, %hi(D_060057A0)                ## $a1 = 06000000
/* 012A8 80B34F58 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 012AC 80B34F5C AFAE0014 */  sw      $t6, 0x0014($sp)
/* 012B0 80B34F60 24A557A0 */  addiu   $a1, $a1, %lo(D_060057A0)           ## $a1 = 060057A0
/* 012B4 80B34F64 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 012B8 80B34F68 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 012BC 80B34F6C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 012C0 80B34F70 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 012C4 80B34F74 0C029468 */  jal     SkelAnime_ChangeAnim

/* 012C8 80B34F78 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 012CC 80B34F7C 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 012D0 80B34F80 00000000 */  nop
/* 012D4 80B34F84 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 012D8 80B34F88 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 012DC 80B34F8C 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 012E0 80B34F90 240F3E80 */  addiu   $t7, $zero, 0x3E80         ## $t7 = 00003E80
/* 012E4 80B34F94 4600503C */  c.lt.s  $f10, $f0
/* 012E8 80B34F98 44810000 */  mtc1    $at, $f0                   ## $f0 = 6.00
/* 012EC 80B34F9C 2418C180 */  addiu   $t8, $zero, 0xC180         ## $t8 = FFFFC180
/* 012F0 80B34FA0 3C0180B3 */  lui     $at, %hi(D_80B37B8C)       ## $at = 80B30000
/* 012F4 80B34FA4 45020004 */  bc1fl   .L80B34FB8
/* 012F8 80B34FA8 A61802FE */  sh      $t8, 0x02FE($s0)           ## 000002FE
/* 012FC 80B34FAC 10000002 */  beq     $zero, $zero, .L80B34FB8
/* 01300 80B34FB0 A60F02FE */  sh      $t7, 0x02FE($s0)           ## 000002FE
/* 01304 80B34FB4 A61802FE */  sh      $t8, 0x02FE($s0)           ## 000002FE
.L80B34FB8:
/* 01308 80B34FB8 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 0130C 80B34FBC C4307B8C */  lwc1    $f16, %lo(D_80B37B8C)($at)
/* 01310 80B34FC0 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 01314 80B34FC4 46100482 */  mul.s   $f18, $f0, $f16
/* 01318 80B34FC8 A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
/* 0131C 80B34FCC 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01320 80B34FD0 E61201A4 */  swc1    $f18, 0x01A4($s0)          ## 000001A4
/* 01324 80B34FD4 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01328 80B34FD8 44811000 */  mtc1    $at, $f2                   ## $f2 = 30.00
/* 0132C 80B34FDC 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 01330 80B34FE0 240A000B */  addiu   $t2, $zero, 0x000B         ## $t2 = 0000000B
/* 01334 80B34FE4 46020102 */  mul.s   $f4, $f0, $f2
/* 01338 80B34FE8 3C0580B3 */  lui     $a1, %hi(func_80B35024)    ## $a1 = 80B30000
/* 0133C 80B34FEC AE0A02D4 */  sw      $t2, 0x02D4($s0)           ## 000002D4
/* 01340 80B34FF0 24A55024 */  addiu   $a1, $a1, %lo(func_80B35024) ## $a1 = 80B35024
/* 01344 80B34FF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01348 80B34FF8 E60A02EC */  swc1    $f10, 0x02EC($s0)          ## 000002EC
/* 0134C 80B34FFC 46022180 */  add.s   $f6, $f4, $f2
/* 01350 80B35000 4600320D */  trunc.w.s $f8, $f6
/* 01354 80B35004 44094000 */  mfc1    $t1, $f8
/* 01358 80B35008 0C2CCF2C */  jal     func_80B33CB0
/* 0135C 80B3500C AE0902E8 */  sw      $t1, 0x02E8($s0)           ## 000002E8
/* 01360 80B35010 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01364 80B35014 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01368 80B35018 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0136C 80B3501C 03E00008 */  jr      $ra
/* 01370 80B35020 00000000 */  nop
