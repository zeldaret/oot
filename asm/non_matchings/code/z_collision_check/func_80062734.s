glabel func_80062734
/* AD98D4 80062734 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD98D8 80062738 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD98DC 8006273C AFA40020 */  sw    $a0, 0x20($sp)
/* AD98E0 80062740 AFA50024 */  sw    $a1, 0x24($sp)
/* AD98E4 80062744 AFA60028 */  sw    $a2, 0x28($sp)
/* AD98E8 80062748 00E02825 */  move  $a1, $a3
/* AD98EC 8006274C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD98F0 80062750 24840058 */   addiu $a0, $a0, 0x58
/* AD98F4 80062754 8FA40020 */  lw    $a0, 0x20($sp)
/* AD98F8 80062758 8FA50030 */  lw    $a1, 0x30($sp)
/* AD98FC 8006275C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD9900 80062760 24840064 */   addiu $a0, $a0, 0x64
/* AD9904 80062764 8FA40020 */  lw    $a0, 0x20($sp)
/* AD9908 80062768 8FA50024 */  lw    $a1, 0x24($sp)
/* AD990C 8006276C 24840040 */  addiu $a0, $a0, 0x40
/* AD9910 80062770 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD9914 80062774 AFA4001C */   sw    $a0, 0x1c($sp)
/* AD9918 80062778 8FA40020 */  lw    $a0, 0x20($sp)
/* AD991C 8006277C 8FA50028 */  lw    $a1, 0x28($sp)
/* AD9920 80062780 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD9924 80062784 2484004C */   addiu $a0, $a0, 0x4c
/* AD9928 80062788 0C0173B7 */  jal   func_8005CEDC
/* AD992C 8006278C 8FA4001C */   lw    $a0, 0x1c($sp)
/* AD9930 80062790 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD9934 80062794 27BD0020 */  addiu $sp, $sp, 0x20
/* AD9938 80062798 03E00008 */  jr    $ra
/* AD993C 8006279C 00000000 */   nop   

