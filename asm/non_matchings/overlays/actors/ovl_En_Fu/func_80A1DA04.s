glabel func_80A1DA04
/* 001F4 80A1DA04 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 001F8 80A1DA08 AFBF002C */  sw      $ra, 0x002C($sp)
/* 001FC 80A1DA0C AFB00028 */  sw      $s0, 0x0028($sp)
/* 00200 80A1DA10 0C00BCCD */  jal     func_8002F334
/* 00204 80A1DA14 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00208 80A1DA18 1040001B */  beq     $v0, $zero, .L80A1DA88
/* 0020C 80A1DA1C 3C1880A2 */  lui     $t8, %hi(func_80A1DA9C)    ## $t8 = 80A20000
/* 00210 80A1DA20 960E02A8 */  lhu     $t6, 0x02A8($s0)           ## 000002A8
/* 00214 80A1DA24 8E0801A0 */  lw      $t0, 0x01A0($s0)           ## 000001A0
/* 00218 80A1DA28 3C190600 */  lui     $t9, 0x0600                ## $t9 = 06000000
/* 0021C 80A1DA2C 2718DA9C */  addiu   $t8, $t8, %lo(func_80A1DA9C) ## $t8 = 80A1DA9C
/* 00220 80A1DA30 2739057C */  addiu   $t9, $t9, 0x057C           ## $t9 = 0600057C
/* 00224 80A1DA34 31CFFFFD */  andi    $t7, $t6, 0xFFFD           ## $t7 = 00000000
/* 00228 80A1DA38 A60F02A8 */  sh      $t7, 0x02A8($s0)           ## 000002A8
/* 0022C 80A1DA3C 17280012 */  bne     $t9, $t0, .L80A1DA88
/* 00230 80A1DA40 AE1802AC */  sw      $t8, 0x02AC($s0)           ## 000002AC
/* 00234 80A1DA44 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00238 80A1DA48 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0023C 80A1DA4C 24840B04 */  addiu   $a0, $a0, 0x0B04           ## $a0 = 06000B04
/* 00240 80A1DA50 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00244 80A1DA54 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00248 80A1DA58 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 0024C 80A1DA5C 468021A0 */  cvt.s.w $f6, $f4
/* 00250 80A1DA60 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00254 80A1DA64 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 00258 80A1DA68 AFA90014 */  sw      $t1, 0x0014($sp)
/* 0025C 80A1DA6C 24A50B04 */  addiu   $a1, $a1, 0x0B04           ## $a1 = 06000B04
/* 00260 80A1DA70 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 00264 80A1DA74 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00268 80A1DA78 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0026C 80A1DA7C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00270 80A1DA80 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00274 80A1DA84 E7A80018 */  swc1    $f8, 0x0018($sp)
.L80A1DA88:
/* 00278 80A1DA88 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0027C 80A1DA8C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00280 80A1DA90 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00284 80A1DA94 03E00008 */  jr      $ra
/* 00288 80A1DA98 00000000 */  nop
