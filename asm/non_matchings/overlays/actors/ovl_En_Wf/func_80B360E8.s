glabel func_80B360E8
/* 02438 80B360E8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0243C 80B360EC AFB00028 */  sw      $s0, 0x0028($sp)
/* 02440 80B360F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02444 80B360F4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 02448 80B360F8 3C040600 */  lui     $a0, %hi(object_wf_Anim_004AD0)                ## $a0 = 06000000
/* 0244C 80B360FC 0C028800 */  jal     Animation_GetLastFrame

/* 02450 80B36100 24844AD0 */  addiu   $a0, $a0, %lo(object_wf_Anim_004AD0)           ## $a0 = 06004AD0
/* 02454 80B36104 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 02458 80B36108 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 0245C 80B3610C 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 02460 80B36110 46802120 */  cvt.s.w $f4, $f4
/* 02464 80B36114 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 02468 80B36118 3C050600 */  lui     $a1, %hi(object_wf_Anim_004AD0)                ## $a1 = 06000000
/* 0246C 80B3611C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 02470 80B36120 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 02474 80B36124 24A54AD0 */  addiu   $a1, $a1, %lo(object_wf_Anim_004AD0)           ## $a1 = 06004AD0
/* 02478 80B36128 44072000 */  mfc1    $a3, $f4
/* 0247C 80B3612C 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 02480 80B36130 3C06BF80 */  lui     $a2, 0xBF80                ## $a2 = BF800000
/* 02484 80B36134 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 02488 80B36138 0C029468 */  jal     Animation_Change

/* 0248C 80B3613C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 02490 80B36140 3C0140D0 */  lui     $at, 0x40D0                ## $at = 40D00000
/* 02494 80B36144 44815000 */  mtc1    $at, $f10                  ## $f10 = 6.50
/* 02498 80B36148 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 0249C 80B3614C 44818000 */  mtc1    $at, $f16                  ## $f16 = 15.00
/* 024A0 80B36150 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 024A4 80B36154 AE0002E8 */  sw      $zero, 0x02E8($s0)         ## 000002E8
/* 024A8 80B36158 A6000300 */  sh      $zero, 0x0300($s0)         ## 00000300
/* 024AC 80B3615C AE0F02D4 */  sw      $t7, 0x02D4($s0)           ## 000002D4
/* 024B0 80B36160 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 024B4 80B36164 2405386C */  addiu   $a1, $zero, 0x386C         ## $a1 = 0000386C
/* 024B8 80B36168 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 024BC 80B3616C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 024C0 80B36170 E6100060 */  swc1    $f16, 0x0060($s0)          ## 00000060
/* 024C4 80B36174 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 024C8 80B36178 3C0580B3 */  lui     $a1, %hi(func_80B361A0)    ## $a1 = 80B30000
/* 024CC 80B3617C 24A561A0 */  addiu   $a1, $a1, %lo(func_80B361A0) ## $a1 = 80B361A0
/* 024D0 80B36180 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 024D4 80B36184 0C2CCF2C */  jal     func_80B33CB0
/* 024D8 80B36188 A6180032 */  sh      $t8, 0x0032($s0)           ## 00000032
/* 024DC 80B3618C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 024E0 80B36190 8FB00028 */  lw      $s0, 0x0028($sp)
/* 024E4 80B36194 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 024E8 80B36198 03E00008 */  jr      $ra
/* 024EC 80B3619C 00000000 */  nop
