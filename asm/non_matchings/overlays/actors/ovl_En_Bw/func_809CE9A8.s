glabel func_809CE9A8
/* 002C8 809CE9A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002CC 809CE9AC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 002D0 809CE9B0 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 002D4 809CE9B4 3C050600 */  lui     $a1, %hi(D_06000228)                ## $a1 = 06000000
/* 002D8 809CE9B8 24A50228 */  addiu   $a1, $a1, %lo(D_06000228)           ## $a1 = 06000228
/* 002DC 809CE9BC AFA70018 */  sw      $a3, 0x0018($sp)
/* 002E0 809CE9C0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 002E4 809CE9C4 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 002E8 809CE9C8 3C06C000 */  lui     $a2, 0xC000                ## $a2 = C0000000
/* 002EC 809CE9CC 8FA70018 */  lw      $a3, 0x0018($sp)
/* 002F0 809CE9D0 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 002F4 809CE9D4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 002F8 809CE9D8 A0EE0220 */  sb      $t6, 0x0220($a3)           ## 00000220
/* 002FC 809CE9DC 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00300 809CE9E0 44811000 */  mtc1    $at, $f2                   ## $f2 = 200.00
/* 00304 809CE9E4 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00308 809CE9E8 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 0030C 809CE9EC 46020102 */  mul.s   $f4, $f0, $f2
/* 00310 809CE9F0 3C05809D */  lui     $a1, %hi(func_809CEA24)    ## $a1 = 809D0000
/* 00314 809CE9F4 24A5EA24 */  addiu   $a1, $a1, %lo(func_809CEA24) ## $a1 = 809CEA24
/* 00318 809CE9F8 A0800232 */  sb      $zero, 0x0232($a0)         ## 00000232
/* 0031C 809CE9FC E48A0068 */  swc1    $f10, 0x0068($a0)          ## 00000068
/* 00320 809CEA00 46022180 */  add.s   $f6, $f4, $f2
/* 00324 809CEA04 4600320D */  trunc.w.s $f8, $f6
/* 00328 809CEA08 44184000 */  mfc1    $t8, $f8
/* 0032C 809CEA0C 0C2739B8 */  jal     func_809CE6E0
/* 00330 809CEA10 A4980222 */  sh      $t8, 0x0222($a0)           ## 00000222
/* 00334 809CEA14 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00338 809CEA18 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0033C 809CEA1C 03E00008 */  jr      $ra
/* 00340 809CEA20 00000000 */  nop
