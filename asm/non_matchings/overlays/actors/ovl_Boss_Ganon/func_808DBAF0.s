glabel func_808DBAF0
/* 05280 808DBAF0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05284 808DBAF4 AFBF001C */  sw      $ra, 0x001C($sp)
/* 05288 808DBAF8 AFB00018 */  sw      $s0, 0x0018($sp)
/* 0528C 808DBAFC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05290 808DBB00 0C235C4B */  jal     func_808D712C
/* 05294 808DBB04 2406017C */  addiu   $a2, $zero, 0x017C         ## $a2 = 0000017C
/* 05298 808DBB08 3C050601 */  lui     $a1, %hi(D_06009A14)                ## $a1 = 06010000
/* 0529C 808DBB0C 24A59A14 */  addiu   $a1, $a1, %lo(D_06009A14)           ## $a1 = 06009A14
/* 052A0 808DBB10 26040150 */  addiu   $a0, $s0, 0x0150           ## $a0 = 00000150
/* 052A4 808DBB14 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 052A8 808DBB18 3C06C120 */  lui     $a2, 0xC120                ## $a2 = C1200000
/* 052AC 808DBB1C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 052B0 808DBB20 3C0E808E */  lui     $t6, %hi(func_808DBB78)    ## $t6 = 808E0000
/* 052B4 808DBB24 3C014280 */  lui     $at, 0x4280                ## $at = 42800000
/* 052B8 808DBB28 25CEBB78 */  addiu   $t6, $t6, %lo(func_808DBB78) ## $t6 = 808DBB78
/* 052BC 808DBB2C 44816000 */  mtc1    $at, $f12                  ## $f12 = 64.00
/* 052C0 808DBB30 AE0E0194 */  sw      $t6, 0x0194($s0)           ## 00000194
/* 052C4 808DBB34 0C00CFBE */  jal     Rand_ZeroFloat

/* 052C8 808DBB38 E60401C8 */  swc1    $f4, 0x01C8($s0)           ## 000001C8
/* 052CC 808DBB3C 4600018D */  trunc.w.s $f6, $f0
/* 052D0 808DBB40 A60001C2 */  sh      $zero, 0x01C2($s0)         ## 000001C2
/* 052D4 808DBB44 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 052D8 808DBB48 3C0A8090 */  lui     $t2, %hi(D_808F93C0)       ## $t2 = 80900000
/* 052DC 808DBB4C 44083000 */  mfc1    $t0, $f6
/* 052E0 808DBB50 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 052E4 808DBB54 2509001E */  addiu   $t1, $t0, 0x001E           ## $t1 = 0000001E
/* 052E8 808DBB58 A60901B6 */  sh      $t1, 0x01B6($s0)           ## 000001B6
/* 052EC 808DBB5C 8D4A93C0 */  lw      $t2, %lo(D_808F93C0)($t2)
/* 052F0 808DBB60 E54816AC */  swc1    $f8, 0x16AC($t2)           ## 809016AC
/* 052F4 808DBB64 8FBF001C */  lw      $ra, 0x001C($sp)
/* 052F8 808DBB68 8FB00018 */  lw      $s0, 0x0018($sp)
/* 052FC 808DBB6C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 05300 808DBB70 03E00008 */  jr      $ra
/* 05304 808DBB74 00000000 */  nop
