glabel func_800284A4
/* A9F644 800284A4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F648 800284A8 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F64C 800284AC 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F650 800284B0 8FAF0048 */  lw    $t7, 0x48($sp)
/* A9F654 800284B4 8FB8004C */  lw    $t8, 0x4c($sp)
/* A9F658 800284B8 87B90052 */  lh    $t9, 0x52($sp)
/* A9F65C 800284BC 87A80056 */  lh    $t0, 0x56($sp)
/* A9F660 800284C0 AFA60040 */  sw    $a2, 0x40($sp)
/* A9F664 800284C4 00A03025 */  move  $a2, $a1
/* A9F668 800284C8 AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F66C 800284CC AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F670 800284D0 2409000A */  li    $t1, 10
/* A9F674 800284D4 240A0001 */  li    $t2, 1
/* A9F678 800284D8 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F67C 800284DC AFAA0028 */  sw    $t2, 0x28($sp)
/* A9F680 800284E0 AFA90024 */  sw    $t1, 0x24($sp)
/* A9F684 800284E4 00002825 */  move  $a1, $zero
/* A9F688 800284E8 AFAE0010 */  sw    $t6, 0x10($sp)
/* A9F68C 800284EC AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F690 800284F0 AFB80018 */  sw    $t8, 0x18($sp)
/* A9F694 800284F4 AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F698 800284F8 0C00A07A */  jal   func_800281E8
/* A9F69C 800284FC AFA80020 */   sw    $t0, 0x20($sp)
/* A9F6A0 80028500 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F6A4 80028504 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F6A8 80028508 03E00008 */  jr    $ra
/* A9F6AC 8002850C 00000000 */   nop   

