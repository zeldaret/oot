glabel func_80B15D90
/* 022F0 80B15D90 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 022F4 80B15D94 AFA50034 */  sw      $a1, 0x0034($sp)
/* 022F8 80B15D98 AFBF002C */  sw      $ra, 0x002C($sp)
/* 022FC 80B15D9C AFB00028 */  sw      $s0, 0x0028($sp)
/* 02300 80B15DA0 3C0580B1 */  lui     $a1, %hi(func_80B15CC8)    ## $a1 = 80B10000
/* 02304 80B15DA4 3C0680B1 */  lui     $a2, %hi(func_80B16938)    ## $a2 = 80B10000
/* 02308 80B15DA8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0230C 80B15DAC 24C66938 */  addiu   $a2, $a2, %lo(func_80B16938) ## $a2 = 80B16938
/* 02310 80B15DB0 0C2C4EA8 */  jal     func_80B13AA0
/* 02314 80B15DB4 24A55CC8 */  addiu   $a1, $a1, %lo(func_80B15CC8) ## $a1 = 80B15CC8
/* 02318 80B15DB8 960E02E0 */  lhu     $t6, 0x02E0($s0)           ## 000002E0
/* 0231C 80B15DBC 3C0141E8 */  lui     $at, 0x41E8                ## $at = 41E80000
/* 02320 80B15DC0 44812000 */  mtc1    $at, $f4                   ## $f4 = 29.00
/* 02324 80B15DC4 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 02328 80B15DC8 31CFFFEF */  andi    $t7, $t6, 0xFFEF           ## $t7 = 00000000
/* 0232C 80B15DCC 44813000 */  mtc1    $at, $f6                   ## $f6 = -10.00
/* 02330 80B15DD0 A60F02E0 */  sh      $t7, 0x02E0($s0)           ## 000002E0
/* 02334 80B15DD4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02338 80B15DD8 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 0233C 80B15DDC AFB80014 */  sw      $t8, 0x0014($sp)
/* 02340 80B15DE0 24A5BF38 */  addiu   $a1, $a1, 0xBF38           ## $a1 = 0600BF38
/* 02344 80B15DE4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02348 80B15DE8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0234C 80B15DEC 3C074100 */  lui     $a3, 0x4100                ## $a3 = 41000000
/* 02350 80B15DF0 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 02354 80B15DF4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 02358 80B15DF8 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 0235C 80B15DFC 8FA40034 */  lw      $a0, 0x0034($sp)
/* 02360 80B15E00 0C042DC8 */  jal     func_8010B720
/* 02364 80B15E04 24052080 */  addiu   $a1, $zero, 0x2080         ## $a1 = 00002080
/* 02368 80B15E08 961902E0 */  lhu     $t9, 0x02E0($s0)           ## 000002E0
/* 0236C 80B15E0C 3328FFDF */  andi    $t0, $t9, 0xFFDF           ## $t0 = 00000000
/* 02370 80B15E10 A60802E0 */  sh      $t0, 0x02E0($s0)           ## 000002E0
/* 02374 80B15E14 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02378 80B15E18 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0237C 80B15E1C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02380 80B15E20 03E00008 */  jr      $ra
/* 02384 80B15E24 00000000 */  nop


