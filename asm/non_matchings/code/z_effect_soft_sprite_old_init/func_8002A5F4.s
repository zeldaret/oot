glabel func_8002A5F4
/* AA1794 8002A5F4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AA1798 8002A5F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA179C 8002A5FC AFA40040 */  sw    $a0, 0x40($sp)
/* AA17A0 8002A600 AFA60048 */  sw    $a2, 0x48($sp)
/* AA17A4 8002A604 AFA7004C */  sw    $a3, 0x4c($sp)
/* AA17A8 8002A608 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA17AC 8002A60C 27A40018 */   addiu $a0, $sp, 0x18
/* AA17B0 8002A610 27A40024 */  addiu $a0, $sp, 0x24
/* AA17B4 8002A614 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA17B8 8002A618 8FA50048 */   lw    $a1, 0x48($sp)
/* AA17BC 8002A61C 27A40030 */  addiu $a0, $sp, 0x30
/* AA17C0 8002A620 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA17C4 8002A624 8FA5004C */   lw    $a1, 0x4c($sp)
/* AA17C8 8002A628 87AE0052 */  lh    $t6, 0x52($sp)
/* AA17CC 8002A62C 87AF0056 */  lh    $t7, 0x56($sp)
/* AA17D0 8002A630 8FA40040 */  lw    $a0, 0x40($sp)
/* AA17D4 8002A634 2405001E */  li    $a1, 30
/* AA17D8 8002A638 24060064 */  li    $a2, 100
/* AA17DC 8002A63C 27A70018 */  addiu $a3, $sp, 0x18
/* AA17E0 8002A640 A7AE003C */  sh    $t6, 0x3c($sp)
/* AA17E4 8002A644 0C009DE6 */  jal   func_80027798
/* AA17E8 8002A648 A7AF003E */   sh    $t7, 0x3e($sp)
/* AA17EC 8002A64C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA17F0 8002A650 27BD0040 */  addiu $sp, $sp, 0x40
/* AA17F4 8002A654 03E00008 */  jr    $ra
/* AA17F8 8002A658 00000000 */   nop   

