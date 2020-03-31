glabel func_80AD9F1C
/* 00F8C 80AD9F1C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F90 80AD9F20 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00F94 80AD9F24 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00F98 80AD9F28 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00F9C 80AD9F2C 24A50D40 */  addiu   $a1, $a1, 0x0D40           ## $a1 = 06000D40
/* 00FA0 80AD9F30 AFA70018 */  sw      $a3, 0x0018($sp)
/* 00FA4 80AD9F34 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00FA8 80AD9F38 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRepeat
/* 00FAC 80AD9F3C 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 00FB0 80AD9F40 8FA70018 */  lw      $a3, 0x0018($sp)
/* 00FB4 80AD9F44 3C0B80AE */  lui     $t3, %hi(func_80ADB770)    ## $t3 = 80AE0000
/* 00FB8 80AD9F48 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00FBC 80AD9F4C 90F90199 */  lbu     $t9, 0x0199($a3)           ## 00000199
/* 00FC0 80AD9F50 8CE90004 */  lw      $t1, 0x0004($a3)           ## 00000004
/* 00FC4 80AD9F54 240F012C */  addiu   $t7, $zero, 0x012C         ## $t7 = 0000012C
/* 00FC8 80AD9F58 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 00FCC 80AD9F5C 256BB770 */  addiu   $t3, $t3, %lo(func_80ADB770) ## $t3 = 80ADB770
/* 00FD0 80AD9F60 37280009 */  ori     $t0, $t9, 0x0009           ## $t0 = 00000009
/* 00FD4 80AD9F64 352A0001 */  ori     $t2, $t1, 0x0001           ## $t2 = 00000001
/* 00FD8 80AD9F68 A0EE0231 */  sb      $t6, 0x0231($a3)           ## 00000231
/* 00FDC 80AD9F6C A4EF019A */  sh      $t7, 0x019A($a3)           ## 0000019A
/* 00FE0 80AD9F70 A4F8019C */  sh      $t8, 0x019C($a3)           ## 0000019C
/* 00FE4 80AD9F74 A0E80199 */  sb      $t0, 0x0199($a3)           ## 00000199
/* 00FE8 80AD9F78 ACEA0004 */  sw      $t2, 0x0004($a3)           ## 00000004
/* 00FEC 80AD9F7C ACEB0190 */  sw      $t3, 0x0190($a3)           ## 00000190
/* 00FF0 80AD9F80 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00FF4 80AD9F84 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00FF8 80AD9F88 03E00008 */  jr      $ra
/* 00FFC 80AD9F8C 00000000 */  nop


