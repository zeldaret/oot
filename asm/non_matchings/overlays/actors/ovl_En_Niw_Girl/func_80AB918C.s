glabel func_80AB918C
/* 0020C 80AB918C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00210 80AB9190 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00214 80AB9194 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00218 80AB9198 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0021C 80AB919C AFA5002C */  sw      $a1, 0x002C($sp)
/* 00220 80AB91A0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00224 80AB91A4 24840378 */  addiu   $a0, $a0, 0x0378           ## $a0 = 06000378
/* 00228 80AB91A8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0022C 80AB91AC 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00230 80AB91B0 8FA30028 */  lw      $v1, 0x0028($sp)
/* 00234 80AB91B4 468021A0 */  cvt.s.w $f6, $f4
/* 00238 80AB91B8 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 0023C 80AB91BC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00240 80AB91C0 24A50378 */  addiu   $a1, $a1, 0x0378           ## $a1 = 06000378
/* 00244 80AB91C4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00248 80AB91C8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0024C 80AB91CC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00250 80AB91D0 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00254 80AB91D4 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 00258 80AB91D8 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0025C 80AB91DC E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00260 80AB91E0 8FA30028 */  lw      $v1, 0x0028($sp)
/* 00264 80AB91E4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00268 80AB91E8 3C1880AC */  lui     $t8, %hi(func_80AB9210)    ## $t8 = 80AC0000
/* 0026C 80AB91EC 8C6E0004 */  lw      $t6, 0x0004($v1)           ## 00000004
/* 00270 80AB91F0 27189210 */  addiu   $t8, $t8, %lo(func_80AB9210) ## $t8 = 80AB9210
/* 00274 80AB91F4 AC78025C */  sw      $t8, 0x025C($v1)           ## 0000025C
/* 00278 80AB91F8 01C17824 */  and     $t7, $t6, $at
/* 0027C 80AB91FC AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 00280 80AB9200 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00284 80AB9204 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00288 80AB9208 03E00008 */  jr      $ra
/* 0028C 80AB920C 00000000 */  nop


