glabel func_809BA028
/* 01D48 809BA028 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01D4C 809BA02C AFA40018 */  sw      $a0, 0x0018($sp)
/* 01D50 809BA030 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 01D54 809BA034 24A4014C */  addiu   $a0, $a1, 0x014C           ## $a0 = 0000014C
/* 01D58 809BA038 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01D5C 809BA03C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01D60 809BA040 24A50444 */  addiu   $a1, $a1, 0x0444           ## $a1 = 06000444
/* 01D64 809BA044 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 01D68 809BA048 AFA6001C */  sw      $a2, 0x001C($sp)
/* 01D6C 809BA04C 8FA6001C */  lw      $a2, 0x001C($sp)
/* 01D70 809BA050 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 01D74 809BA054 44814000 */  mtc1    $at, $f8                   ## $f8 = 60.00
/* 01D78 809BA058 C4C60028 */  lwc1    $f6, 0x0028($a2)           ## 00000028
/* 01D7C 809BA05C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01D80 809BA060 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01D84 809BA064 46083280 */  add.s   $f10, $f6, $f8
/* 01D88 809BA068 44818000 */  mtc1    $at, $f16                  ## $f16 = 100.00
/* 01D8C 809BA06C 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 01D90 809BA070 ACCE0250 */  sw      $t6, 0x0250($a2)           ## 00000250
/* 01D94 809BA074 E4CA0028 */  swc1    $f10, 0x0028($a2)          ## 00000028
/* 01D98 809BA078 A0C0029D */  sb      $zero, 0x029D($a2)         ## 0000029D
/* 01D9C 809BA07C E4C40068 */  swc1    $f4, 0x0068($a2)           ## 00000068
/* 01DA0 809BA080 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01DA4 809BA084 E4D0028C */  swc1    $f16, 0x028C($a2)          ## 0000028C
/* 01DA8 809BA088 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01DAC 809BA08C 44819000 */  mtc1    $at, $f18                  ## $f18 = 30.00
/* 01DB0 809BA090 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 01DB4 809BA094 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 01DB8 809BA098 46120102 */  mul.s   $f4, $f0, $f18
/* 01DBC 809BA09C 8FA4001C */  lw      $a0, 0x001C($sp)
/* 01DC0 809BA0A0 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 01DC4 809BA0A4 44818000 */  mtc1    $at, $f16                  ## $f16 = 7.00
/* 01DC8 809BA0A8 3C05809C */  lui     $a1, %hi(func_809BA0D8)    ## $a1 = 809C0000
/* 01DCC 809BA0AC 24A5A0D8 */  addiu   $a1, $a1, %lo(func_809BA0D8) ## $a1 = 809BA0D8
/* 01DD0 809BA0B0 E490027C */  swc1    $f16, 0x027C($a0)          ## 0000027C
/* 01DD4 809BA0B4 46062200 */  add.s   $f8, $f4, $f6
/* 01DD8 809BA0B8 4600428D */  trunc.w.s $f10, $f8
/* 01DDC 809BA0BC 44185000 */  mfc1    $t8, $f10
/* 01DE0 809BA0C0 0C26E0B8 */  jal     func_809B82E0
/* 01DE4 809BA0C4 AC980260 */  sw      $t8, 0x0260($a0)           ## 00000260
/* 01DE8 809BA0C8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01DEC 809BA0CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01DF0 809BA0D0 03E00008 */  jr      $ra
/* 01DF4 809BA0D4 00000000 */  nop


