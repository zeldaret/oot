glabel func_8002A65C
/* AA17FC 8002A65C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA1800 8002A660 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA1804 8002A664 AFA40030 */  sw    $a0, 0x30($sp)
/* AA1808 8002A668 AFA50034 */  sw    $a1, 0x34($sp)
/* AA180C 8002A66C AFA7003C */  sw    $a3, 0x3c($sp)
/* AA1810 8002A670 00C02825 */  move  $a1, $a2
/* AA1814 8002A674 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1818 8002A678 27A40020 */   addiu $a0, $sp, 0x20
/* AA181C 8002A67C 8FAE0034 */  lw    $t6, 0x34($sp)
/* AA1820 8002A680 87AF003E */  lh    $t7, 0x3e($sp)
/* AA1824 8002A684 87B80042 */  lh    $t8, 0x42($sp)
/* AA1828 8002A688 8FA40030 */  lw    $a0, 0x30($sp)
/* AA182C 8002A68C 2405001F */  li    $a1, 31
/* AA1830 8002A690 24060080 */  li    $a2, 128
/* AA1834 8002A694 27A7001C */  addiu $a3, $sp, 0x1c
/* AA1838 8002A698 AFAE001C */  sw    $t6, 0x1c($sp)
/* AA183C 8002A69C A7AF002C */  sh    $t7, 0x2c($sp)
/* AA1840 8002A6A0 0C009DE6 */  jal   func_80027798
/* AA1844 8002A6A4 A7B8002E */   sh    $t8, 0x2e($sp)
/* AA1848 8002A6A8 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA184C 8002A6AC 27BD0030 */  addiu $sp, $sp, 0x30
/* AA1850 8002A6B0 03E00008 */  jr    $ra
/* AA1854 8002A6B4 00000000 */   nop   

