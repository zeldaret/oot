glabel func_809D1D0C
/* 0022C 809D1D0C 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 00230 809D1D10 3C0F809D */  lui     $t7, %hi(D_809D2528)       ## $t7 = 809D0000
/* 00234 809D1D14 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00238 809D1D18 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0023C 809D1D1C AFA5006C */  sw      $a1, 0x006C($sp)           
/* 00240 809D1D20 25EF2528 */  addiu   $t7, $t7, %lo(D_809D2528)  ## $t7 = 809D2528
/* 00244 809D1D24 8DF90000 */  lw      $t9, 0x0000($t7)           ## 809D2528
/* 00248 809D1D28 27AE005C */  addiu   $t6, $sp, 0x005C           ## $t6 = FFFFFFF4
/* 0024C 809D1D2C 8DF80004 */  lw      $t8, 0x0004($t7)           ## 809D252C
/* 00250 809D1D30 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 00254 809D1D34 8DF90008 */  lw      $t9, 0x0008($t7)           ## 809D2530
/* 00258 809D1D38 3C09809D */  lui     $t1, %hi(D_809D2534)       ## $t1 = 809D0000
/* 0025C 809D1D3C 25292534 */  addiu   $t1, $t1, %lo(D_809D2534)  ## $t1 = 809D2534
/* 00260 809D1D40 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 00264 809D1D44 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 00268 809D1D48 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 809D2534
/* 0026C 809D1D4C 27A80050 */  addiu   $t0, $sp, 0x0050           ## $t0 = FFFFFFE8
/* 00270 809D1D50 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 809D2538
/* 00274 809D1D54 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE8
/* 00278 809D1D58 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 809D253C
/* 0027C 809D1D5C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00280 809D1D60 3C04809D */  lui     $a0, %hi(D_809D2540)       ## $a0 = 809D0000
/* 00284 809D1D64 24842540 */  addiu   $a0, $a0, %lo(D_809D2540)  ## $a0 = 809D2540
/* 00288 809D1D68 27A50044 */  addiu   $a1, $sp, 0x0044           ## $a1 = FFFFFFDC
/* 0028C 809D1D6C AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFEC
/* 00290 809D1D70 0C0346BD */  jal     Matrix_MultVec3f              
/* 00294 809D1D74 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFF0
/* 00298 809D1D78 3C04809D */  lui     $a0, %hi(D_809D254C)       ## $a0 = 809D0000
/* 0029C 809D1D7C 2484254C */  addiu   $a0, $a0, %lo(D_809D254C)  ## $a0 = 809D254C
/* 002A0 809D1D80 0C0346BD */  jal     Matrix_MultVec3f              
/* 002A4 809D1D84 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFD0
/* 002A8 809D1D88 26050264 */  addiu   $a1, $s0, 0x0264           ## $a1 = 00000264
/* 002AC 809D1D8C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 002B0 809D1D90 0C0346BD */  jal     Matrix_MultVec3f              
/* 002B4 809D1D94 27A4005C */  addiu   $a0, $sp, 0x005C           ## $a0 = FFFFFFF4
/* 002B8 809D1D98 26070258 */  addiu   $a3, $s0, 0x0258           ## $a3 = 00000258
/* 002BC 809D1D9C 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000258
/* 002C0 809D1DA0 AFA70030 */  sw      $a3, 0x0030($sp)           
/* 002C4 809D1DA4 0C0346BD */  jal     Matrix_MultVec3f              
/* 002C8 809D1DA8 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFE8
/* 002CC 809D1DAC 8FAC002C */  lw      $t4, 0x002C($sp)           
/* 002D0 809D1DB0 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 002D4 809D1DB4 26040218 */  addiu   $a0, $s0, 0x0218           ## $a0 = 00000218
/* 002D8 809D1DB8 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFD0
/* 002DC 809D1DBC 27A60044 */  addiu   $a2, $sp, 0x0044           ## $a2 = FFFFFFDC
/* 002E0 809D1DC0 0C0189CD */  jal     func_80062734              
/* 002E4 809D1DC4 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 002E8 809D1DC8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 002EC 809D1DCC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 002F0 809D1DD0 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 002F4 809D1DD4 03E00008 */  jr      $ra                        
/* 002F8 809D1DD8 00000000 */  nop


