glabel func_8002A6B8
/* AA1858 8002A6B8 27BDFFA8 */  addiu $sp, $sp, -0x58
/* AA185C 8002A6BC AFBF0014 */  sw    $ra, 0x14($sp)
/* AA1860 8002A6C0 AFA40058 */  sw    $a0, 0x58($sp)
/* AA1864 8002A6C4 AFA60060 */  sw    $a2, 0x60($sp)
/* AA1868 8002A6C8 AFA70064 */  sw    $a3, 0x64($sp)
/* AA186C 8002A6CC 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1870 8002A6D0 27A4001C */   addiu $a0, $sp, 0x1c
/* AA1874 8002A6D4 27A40028 */  addiu $a0, $sp, 0x28
/* AA1878 8002A6D8 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA187C 8002A6DC 8FA50060 */   lw    $a1, 0x60($sp)
/* AA1880 8002A6E0 27A40034 */  addiu $a0, $sp, 0x34
/* AA1884 8002A6E4 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1888 8002A6E8 8FA50064 */   lw    $a1, 0x64($sp)
/* AA188C 8002A6EC 87AE006A */  lh    $t6, 0x6a($sp)
/* AA1890 8002A6F0 87AF006E */  lh    $t7, 0x6e($sp)
/* AA1894 8002A6F4 87B80072 */  lh    $t8, 0x72($sp)
/* AA1898 8002A6F8 A7AE0040 */  sh    $t6, 0x40($sp)
/* AA189C 8002A6FC A7AF0042 */  sh    $t7, 0x42($sp)
/* AA18A0 8002A700 87B90076 */  lh    $t9, 0x76($sp)
/* AA18A4 8002A704 87A8007A */  lh    $t0, 0x7a($sp)
/* AA18A8 8002A708 87A9007E */  lh    $t1, 0x7e($sp)
/* AA18AC 8002A70C 87AA0082 */  lh    $t2, 0x82($sp)
/* AA18B0 8002A710 87AB0086 */  lh    $t3, 0x86($sp)
/* AA18B4 8002A714 87AC008A */  lh    $t4, 0x8a($sp)
/* AA18B8 8002A718 87AD008E */  lh    $t5, 0x8e($sp)
/* AA18BC 8002A71C 8FAE0090 */  lw    $t6, 0x90($sp)
/* AA18C0 8002A720 87AF0096 */  lh    $t7, 0x96($sp)
/* AA18C4 8002A724 8FA40058 */  lw    $a0, 0x58($sp)
/* AA18C8 8002A728 24050020 */  li    $a1, 32
/* AA18CC 8002A72C 24060078 */  li    $a2, 120
/* AA18D0 8002A730 27A7001C */  addiu $a3, $sp, 0x1c
/* AA18D4 8002A734 A3B80044 */  sb    $t8, 0x44($sp)
/* AA18D8 8002A738 A3B90045 */  sb    $t9, 0x45($sp)
/* AA18DC 8002A73C A3A80046 */  sb    $t0, 0x46($sp)
/* AA18E0 8002A740 A3A90047 */  sb    $t1, 0x47($sp)
/* AA18E4 8002A744 A3AA0048 */  sb    $t2, 0x48($sp)
/* AA18E8 8002A748 A3AB0049 */  sb    $t3, 0x49($sp)
/* AA18EC 8002A74C A3AC004A */  sb    $t4, 0x4a($sp)
/* AA18F0 8002A750 A7AD004C */  sh    $t5, 0x4c($sp)
/* AA18F4 8002A754 AFAE0050 */  sw    $t6, 0x50($sp)
/* AA18F8 8002A758 0C009DE6 */  jal   func_80027798
/* AA18FC 8002A75C A7AF0054 */   sh    $t7, 0x54($sp)
/* AA1900 8002A760 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA1904 8002A764 27BD0058 */  addiu $sp, $sp, 0x58
/* AA1908 8002A768 03E00008 */  jr    $ra
/* AA190C 8002A76C 00000000 */   nop   

