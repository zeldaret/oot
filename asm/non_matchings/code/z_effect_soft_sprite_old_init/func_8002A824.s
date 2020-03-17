glabel func_8002A824
/* AA19C4 8002A824 27BDFFA0 */  addiu $sp, $sp, -0x60
/* AA19C8 8002A828 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA19CC 8002A82C AFA40060 */  sw    $a0, 0x60($sp)
/* AA19D0 8002A830 AFA60068 */  sw    $a2, 0x68($sp)
/* AA19D4 8002A834 AFA7006C */  sw    $a3, 0x6c($sp)
/* AA19D8 8002A838 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA19DC 8002A83C 27A4001C */   addiu $a0, $sp, 0x1c
/* AA19E0 8002A840 87AE006A */  lh    $t6, 0x6a($sp)
/* AA19E4 8002A844 87AF006E */  lh    $t7, 0x6e($sp)
/* AA19E8 8002A848 C7A40070 */  lwc1  $f4, 0x70($sp)
/* AA19EC 8002A84C 8FB80074 */  lw    $t8, 0x74($sp)
/* AA19F0 8002A850 8FB90078 */  lw    $t9, 0x78($sp)
/* AA19F4 8002A854 24080001 */  li    $t0, 1
/* AA19F8 8002A858 A3A8005C */  sb    $t0, 0x5c($sp)
/* AA19FC 8002A85C 8FA40060 */  lw    $a0, 0x60($sp)
/* AA1A00 8002A860 24050021 */  li    $a1, 33
/* AA1A04 8002A864 24060078 */  li    $a2, 120
/* AA1A08 8002A868 27A7001C */  addiu $a3, $sp, 0x1c
/* AA1A0C 8002A86C A7AE0040 */  sh    $t6, 0x40($sp)
/* AA1A10 8002A870 A7AF0042 */  sh    $t7, 0x42($sp)
/* AA1A14 8002A874 E7A40054 */  swc1  $f4, 0x54($sp)
/* AA1A18 8002A878 AFB80058 */  sw    $t8, 0x58($sp)
/* AA1A1C 8002A87C 0C009DE6 */  jal   func_80027798
/* AA1A20 8002A880 AFB90050 */   sw    $t9, 0x50($sp)
/* AA1A24 8002A884 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA1A28 8002A888 27BD0060 */  addiu $sp, $sp, 0x60
/* AA1A2C 8002A88C 03E00008 */  jr    $ra
/* AA1A30 8002A890 00000000 */   nop   

