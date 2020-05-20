glabel func_8002A770
/* AA1910 8002A770 27BDFFA0 */  addiu $sp, $sp, -0x60
/* AA1914 8002A774 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA1918 8002A778 AFA40060 */  sw    $a0, 0x60($sp)
/* AA191C 8002A77C AFA60068 */  sw    $a2, 0x68($sp)
/* AA1920 8002A780 AFA7006C */  sw    $a3, 0x6c($sp)
/* AA1924 8002A784 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1928 8002A788 27A4001C */   addiu $a0, $sp, 0x1c
/* AA192C 8002A78C 27A40028 */  addiu $a0, $sp, 0x28
/* AA1930 8002A790 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1934 8002A794 8FA50068 */   lw    $a1, 0x68($sp)
/* AA1938 8002A798 27A40034 */  addiu $a0, $sp, 0x34
/* AA193C 8002A79C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1940 8002A7A0 8FA5006C */   lw    $a1, 0x6c($sp)
/* AA1944 8002A7A4 87AE0072 */  lh    $t6, 0x72($sp)
/* AA1948 8002A7A8 87AF0076 */  lh    $t7, 0x76($sp)
/* AA194C 8002A7AC 87B8007A */  lh    $t8, 0x7a($sp)
/* AA1950 8002A7B0 A7AE0040 */  sh    $t6, 0x40($sp)
/* AA1954 8002A7B4 87B9007E */  lh    $t9, 0x7e($sp)
/* AA1958 8002A7B8 87A80082 */  lh    $t0, 0x82($sp)
/* AA195C 8002A7BC 87A90086 */  lh    $t1, 0x86($sp)
/* AA1960 8002A7C0 87AA008A */  lh    $t2, 0x8a($sp)
/* AA1964 8002A7C4 87AB008E */  lh    $t3, 0x8e($sp)
/* AA1968 8002A7C8 87AC0092 */  lh    $t4, 0x92($sp)
/* AA196C 8002A7CC 87AD0096 */  lh    $t5, 0x96($sp)
/* AA1970 8002A7D0 8FAE0098 */  lw    $t6, 0x98($sp)
/* AA1974 8002A7D4 A3A0005C */  sb    $zero, 0x5c($sp)
/* AA1978 8002A7D8 8FA40060 */  lw    $a0, 0x60($sp)
/* AA197C 8002A7DC 24050021 */  li    $a1, 33
/* AA1980 8002A7E0 24060078 */  li    $a2, 120
/* AA1984 8002A7E4 27A7001C */  addiu $a3, $sp, 0x1c
/* AA1988 8002A7E8 A7AF0042 */  sh    $t7, 0x42($sp)
/* AA198C 8002A7EC A3B80044 */  sb    $t8, 0x44($sp)
/* AA1990 8002A7F0 A3B90045 */  sb    $t9, 0x45($sp)
/* AA1994 8002A7F4 A3A80046 */  sb    $t0, 0x46($sp)
/* AA1998 8002A7F8 A3A90047 */  sb    $t1, 0x47($sp)
/* AA199C 8002A7FC A3AA0048 */  sb    $t2, 0x48($sp)
/* AA19A0 8002A800 A3AB0049 */  sb    $t3, 0x49($sp)
/* AA19A4 8002A804 A3AC004A */  sb    $t4, 0x4a($sp)
/* AA19A8 8002A808 A7AD004C */  sh    $t5, 0x4c($sp)
/* AA19AC 8002A80C 0C009DE6 */  jal   EffectSs_Spawn
/* AA19B0 8002A810 AFAE0050 */   sw    $t6, 0x50($sp)
/* AA19B4 8002A814 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA19B8 8002A818 27BD0060 */  addiu $sp, $sp, 0x60
/* AA19BC 8002A81C 03E00008 */  jr    $ra
/* AA19C0 8002A820 00000000 */   nop   

