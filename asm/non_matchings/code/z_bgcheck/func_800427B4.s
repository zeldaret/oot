glabel func_800427B4
/* AB9954 800427B4 27BDFFA8 */  addiu $sp, $sp, -0x58
/* AB9958 800427B8 AFBF0034 */  sw    $ra, 0x34($sp)
/* AB995C 800427BC AFA5005C */  sw    $a1, 0x5c($sp)
/* AB9960 800427C0 AFA60060 */  sw    $a2, 0x60($sp)
/* AB9964 800427C4 AFA70064 */  sw    $a3, 0x64($sp)
/* AB9968 800427C8 AFA40058 */  sw    $a0, 0x58($sp)
/* AB996C 800427CC 27A7004C */  addiu $a3, $sp, 0x4c
/* AB9970 800427D0 27A60050 */  addiu $a2, $sp, 0x50
/* AB9974 800427D4 0C00E275 */  jal   func_800389D4
/* AB9978 800427D8 27A50054 */   addiu $a1, $sp, 0x54
/* AB997C 800427DC 8FA4005C */  lw    $a0, 0x5c($sp)
/* AB9980 800427E0 27A50048 */  addiu $a1, $sp, 0x48
/* AB9984 800427E4 27A60044 */  addiu $a2, $sp, 0x44
/* AB9988 800427E8 0C00E275 */  jal   func_800389D4
/* AB998C 800427EC 27A70040 */   addiu $a3, $sp, 0x40
/* AB9990 800427F0 8FAE0058 */  lw    $t6, 0x58($sp)
/* AB9994 800427F4 C7A60048 */  lwc1  $f6, 0x48($sp)
/* AB9998 800427F8 C7A80044 */  lwc1  $f8, 0x44($sp)
/* AB999C 800427FC 85CF000E */  lh    $t7, 0xe($t6)
/* AB99A0 80042800 C7AA0040 */  lwc1  $f10, 0x40($sp)
/* AB99A4 80042804 8FB8005C */  lw    $t8, 0x5c($sp)
/* AB99A8 80042808 E7A60010 */  swc1  $f6, 0x10($sp)
/* AB99AC 8004280C E7A80014 */  swc1  $f8, 0x14($sp)
/* AB99B0 80042810 E7AA0018 */  swc1  $f10, 0x18($sp)
/* AB99B4 80042814 8719000E */  lh    $t9, 0xe($t8)
/* AB99B8 80042818 448F2000 */  mtc1  $t7, $f4
/* AB99BC 8004281C 8FA80060 */  lw    $t0, 0x60($sp)
/* AB99C0 80042820 44998000 */  mtc1  $t9, $f16
/* AB99C4 80042824 46802120 */  cvt.s.w $f4, $f4
/* AB99C8 80042828 8FA90064 */  lw    $t1, 0x64($sp)
/* AB99CC 8004282C 8FAA0068 */  lw    $t2, 0x68($sp)
/* AB99D0 80042830 C7AC0054 */  lwc1  $f12, 0x54($sp)
/* AB99D4 80042834 C7AE0050 */  lwc1  $f14, 0x50($sp)
/* AB99D8 80042838 468084A0 */  cvt.s.w $f18, $f16
/* AB99DC 8004283C 44072000 */  mfc1  $a3, $f4
/* AB99E0 80042840 8FA6004C */  lw    $a2, 0x4c($sp)
/* AB99E4 80042844 AFA80020 */  sw    $t0, 0x20($sp)
/* AB99E8 80042848 AFA90024 */  sw    $t1, 0x24($sp)
/* AB99EC 8004284C AFAA0028 */  sw    $t2, 0x28($sp)
/* AB99F0 80042850 0C0329F4 */  jal   func_800CA7D0
/* AB99F4 80042854 E7B2001C */   swc1  $f18, 0x1c($sp)
/* AB99F8 80042858 8FBF0034 */  lw    $ra, 0x34($sp)
/* AB99FC 8004285C 27BD0058 */  addiu $sp, $sp, 0x58
/* AB9A00 80042860 03E00008 */  jr    $ra
/* AB9A04 80042864 00000000 */   nop   

