glabel func_80AC093C
/* 002DC 80AC093C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 002E0 80AC0940 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 002E4 80AC0944 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 002E8 80AC0948 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 002EC 80AC094C AFA60030 */  sw      $a2, 0x0030($sp)           
/* 002F0 80AC0950 87B90032 */  lh      $t9, 0x0032($sp)           
/* 002F4 80AC0954 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 002F8 80AC0958 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 002FC 80AC095C 3C0E80AC */  lui     $t6, %hi(D_80AC28B4)       ## $t6 = 80AC0000
/* 00300 80AC0960 3C0F80AC */  lui     $t7, %hi(D_80AC28B8)       ## $t7 = 80AC0000
/* 00304 80AC0964 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00308 80AC0968 25EF28B8 */  addiu   $t7, $t7, %lo(D_80AC28B8)  ## $t7 = 80AC28B8
/* 0030C 80AC096C 25CE28B4 */  addiu   $t6, $t6, %lo(D_80AC28B4)  ## $t6 = 80AC28B4
/* 00310 80AC0970 3C0780AC */  lui     $a3, %hi(D_80AC28A8)       ## $a3 = 80AC0000
/* 00314 80AC0974 24180190 */  addiu   $t8, $zero, 0x0190         ## $t8 = 00000190
/* 00318 80AC0978 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 0031C 80AC097C AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00320 80AC0980 24E728A8 */  addiu   $a3, $a3, %lo(D_80AC28A8)  ## $a3 = 80AC28A8
/* 00324 80AC0984 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00328 80AC0988 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 0032C 80AC098C 0C00A0A7 */  jal     func_8002829C              
/* 00330 80AC0990 AFB9001C */  sw      $t9, 0x001C($sp)           
/* 00334 80AC0994 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00338 80AC0998 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0033C 80AC099C 03E00008 */  jr      $ra                        
/* 00340 80AC09A0 00000000 */  nop
