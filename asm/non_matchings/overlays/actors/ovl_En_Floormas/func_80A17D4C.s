glabel func_80A17D4C
/* 0083C 80A17D4C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00840 80A17D50 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00844 80A17D54 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00848 80A17D58 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0084C 80A17D5C 24A541F4 */  addiu   $a1, $a1, 0x41F4           ## $a1 = 060041F4
/* 00850 80A17D60 AFA70018 */  sw      $a3, 0x0018($sp)
/* 00854 80A17D64 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00858 80A17D68 0C0294E1 */  jal     SkelAnime_ChangeAnimPlaybackRepeat
/* 0085C 80A17D6C 3C064090 */  lui     $a2, 0x4090                ## $a2 = 40900000
/* 00860 80A17D70 8FA70018 */  lw      $a3, 0x0018($sp)
/* 00864 80A17D74 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00868 80A17D78 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 0086C 80A17D7C 3C0E80A2 */  lui     $t6, %hi(func_80A18FD8)    ## $t6 = 80A20000
/* 00870 80A17D80 25CE8FD8 */  addiu   $t6, $t6, %lo(func_80A18FD8) ## $t6 = 80A18FD8
/* 00874 80A17D84 ACEE0190 */  sw      $t6, 0x0190($a3)           ## 00000190
/* 00878 80A17D88 E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
/* 0087C 80A17D8C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00880 80A17D90 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00884 80A17D94 03E00008 */  jr      $ra
/* 00888 80A17D98 00000000 */  nop


