glabel func_809F28DC
/* 00DFC 809F28DC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00E00 809F28E0 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00E04 809F28E4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00E08 809F28E8 3C040600 */  lui     $a0, %hi(D_06000A70)                ## $a0 = 06000000
/* 00E0C 809F28EC AFA5002C */  sw      $a1, 0x002C($sp)
/* 00E10 809F28F0 0C028800 */  jal     Animation_GetLastFrame

/* 00E14 809F28F4 24840A70 */  addiu   $a0, $a0, %lo(D_06000A70)           ## $a0 = 06000A70
/* 00E18 809F28F8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00E1C 809F28FC 8FA30028 */  lw      $v1, 0x0028($sp)
/* 00E20 809F2900 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00E24 809F2904 468021A0 */  cvt.s.w $f6, $f4
/* 00E28 809F2908 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 00E2C 809F290C 3C050600 */  lui     $a1, %hi(D_06000A70)                ## $a1 = 06000000
/* 00E30 809F2910 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 00E34 809F2914 24A50A70 */  addiu   $a1, $a1, %lo(D_06000A70)           ## $a1 = 06000A70
/* 00E38 809F2918 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00E3C 809F291C 4600320D */  trunc.w.s $f8, $f6
/* 00E40 809F2920 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00E44 809F2924 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 00E48 809F2928 440F4000 */  mfc1    $t7, $f8
/* 00E4C 809F292C 00000000 */  nop
/* 00E50 809F2930 A46F0248 */  sh      $t7, 0x0248($v1)           ## 00000248
/* 00E54 809F2934 84780248 */  lh      $t8, 0x0248($v1)           ## 00000248
/* 00E58 809F2938 AFB90014 */  sw      $t9, 0x0014($sp)
/* 00E5C 809F293C E7B20018 */  swc1    $f18, 0x0018($sp)
/* 00E60 809F2940 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 00E64 809F2944 00000000 */  nop
/* 00E68 809F2948 46805420 */  cvt.s.w $f16, $f10
/* 00E6C 809F294C 0C029468 */  jal     Animation_Change

/* 00E70 809F2950 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 00E74 809F2954 8FA30028 */  lw      $v1, 0x0028($sp)
/* 00E78 809F2958 3C08809F */  lui     $t0, %hi(func_809F2974)    ## $t0 = 809F0000
/* 00E7C 809F295C 25082974 */  addiu   $t0, $t0, %lo(func_809F2974) ## $t0 = 809F2974
/* 00E80 809F2960 AC68022C */  sw      $t0, 0x022C($v1)           ## 0000022C
/* 00E84 809F2964 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00E88 809F2968 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00E8C 809F296C 03E00008 */  jr      $ra
/* 00E90 809F2970 00000000 */  nop
